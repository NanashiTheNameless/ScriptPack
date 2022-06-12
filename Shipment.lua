--[[
	-- M2S by Coolbob44, fixed by mustardfoot. --
	Current Version: 0.4.1
	
	Model: Shipment
	You can use this script to generate your model!
	
	Objects Parsed: 196
		StringValue: 2
		IntValue: 1
		Model: 1
		Part: 162
		Smoke: 27
		BlockMesh: 3
		
	Objects Skipped: 4
		Script: 3
		UnionOperation: 1
		
	Total: 200
	
--]]
	

-- 1 - Shipment
obj1 = Instance.new("Model")
obj1.Name = "Shipment"
obj1.Parent = Workspace

-- 2 - Part
obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(133.47699, 24.4449539, -0.30726999)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj2.FormFactor = Enum.FormFactor.Symmetric
obj2.Transparency = 1
obj2.TopSurface = Enum.SurfaceType.Smooth
obj2.BottomSurface = Enum.SurfaceType.Smooth
obj2.Material = Enum.Material.Metal
obj2.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj2.Anchored = true
obj2.BrickColor = BrickColor.new("Medium red")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.Parent = obj1

-- 3 - Smoke
obj3 = Instance.new("Smoke")
obj3.Opacity = 1
obj3.RiseVelocity = 25
obj3.Size = 30
obj3.Parent = obj2

-- 4 - Part
obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(40.9610291, 44.1200256, -34.8038254)) * CFrame.Angles(-0, -0.19172738492489, -0)
obj4.FormFactor = Enum.FormFactor.Symmetric
obj4.TopSurface = Enum.SurfaceType.Smooth
obj4.BottomSurface = Enum.SurfaceType.Smooth
obj4.Material = Enum.Material.Wood
obj4.Size = Vector3.new(11.3400164, 10.0799999, 13.439991)
obj4.Anchored = true
obj4.BrickColor = BrickColor.new("Reddish brown")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Block
obj4.Parent = obj1

-- 5 - Part
obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(-91.3210373, 24.3467674, -30.0068893)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj5.FormFactor = Enum.FormFactor.Symmetric
obj5.Transparency = 1
obj5.TopSurface = Enum.SurfaceType.Smooth
obj5.BottomSurface = Enum.SurfaceType.Smooth
obj5.Material = Enum.Material.Metal
obj5.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj5.Anchored = true
obj5.BrickColor = BrickColor.new("Medium red")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.Parent = obj1

-- 6 - Smoke
obj6 = Instance.new("Smoke")
obj6.Opacity = 1
obj6.RiseVelocity = 25
obj6.Size = 30
obj6.Parent = obj5

-- 7 - Part
obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(-85.8800201, 24.3467331, -90.9935989)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj7.FormFactor = Enum.FormFactor.Symmetric
obj7.Transparency = 1
obj7.TopSurface = Enum.SurfaceType.Smooth
obj7.BottomSurface = Enum.SurfaceType.Smooth
obj7.Material = Enum.Material.Metal
obj7.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj7.Anchored = true
obj7.BrickColor = BrickColor.new("Medium red")
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Block
obj7.Parent = obj1

-- 8 - Smoke
obj8 = Instance.new("Smoke")
obj8.Opacity = 1
obj8.RiseVelocity = 25
obj8.Size = 30
obj8.Parent = obj7

-- 9 - Part
obj9 = Instance.new("Part")
obj9.CFrame = CFrame.new(Vector3.new(-91.0815506, 24.4467087, 115.645332)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj9.FormFactor = Enum.FormFactor.Symmetric
obj9.Transparency = 1
obj9.TopSurface = Enum.SurfaceType.Smooth
obj9.BottomSurface = Enum.SurfaceType.Smooth
obj9.Material = Enum.Material.Metal
obj9.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj9.Anchored = true
obj9.BrickColor = BrickColor.new("Medium red")
obj9.Friction = 0.30000001192093
obj9.Shape = Enum.PartType.Block
obj9.Parent = obj1

-- 10 - Smoke
obj10 = Instance.new("Smoke")
obj10.Opacity = 1
obj10.RiseVelocity = 25
obj10.Size = 30
obj10.Parent = obj9

-- 11 - Part
obj11 = Instance.new("Part")
obj11.CFrame = CFrame.new(Vector3.new(-76.0524521, 24.4467087, 34.5606461)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj11.FormFactor = Enum.FormFactor.Symmetric
obj11.Transparency = 1
obj11.TopSurface = Enum.SurfaceType.Smooth
obj11.BottomSurface = Enum.SurfaceType.Smooth
obj11.Material = Enum.Material.Metal
obj11.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj11.Anchored = true
obj11.BrickColor = BrickColor.new("Medium red")
obj11.Friction = 0.30000001192093
obj11.Shape = Enum.PartType.Block
obj11.Parent = obj1

-- 12 - Smoke
obj12 = Instance.new("Smoke")
obj12.Opacity = 1
obj12.RiseVelocity = 25
obj12.Size = 30
obj12.Parent = obj11

-- 13 - Part
obj13 = Instance.new("Part")
obj13.CFrame = CFrame.new(Vector3.new(-79.2036667, 24.4467087, 198.874695)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj13.FormFactor = Enum.FormFactor.Symmetric
obj13.Transparency = 1
obj13.TopSurface = Enum.SurfaceType.Smooth
obj13.BottomSurface = Enum.SurfaceType.Smooth
obj13.Material = Enum.Material.Metal
obj13.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj13.Anchored = true
obj13.BrickColor = BrickColor.new("Medium red")
obj13.Friction = 0.30000001192093
obj13.Shape = Enum.PartType.Block
obj13.Parent = obj1

-- 14 - Smoke
obj14 = Instance.new("Smoke")
obj14.Opacity = 1
obj14.RiseVelocity = 25
obj14.Size = 30
obj14.Parent = obj13

-- 15 - Part
obj15 = Instance.new("Part")
obj15.CFrame = CFrame.new(Vector3.new(125.166328, 24.4467087, 361.454773)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj15.FormFactor = Enum.FormFactor.Symmetric
obj15.Transparency = 1
obj15.TopSurface = Enum.SurfaceType.Smooth
obj15.BottomSurface = Enum.SurfaceType.Smooth
obj15.Material = Enum.Material.Metal
obj15.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj15.Anchored = true
obj15.BrickColor = BrickColor.new("Medium red")
obj15.Friction = 0.30000001192093
obj15.Shape = Enum.PartType.Block
obj15.Parent = obj1

-- 16 - Smoke
obj16 = Instance.new("Smoke")
obj16.Opacity = 1
obj16.RiseVelocity = 25
obj16.Size = 30
obj16.Parent = obj15

-- 17 - Part
obj17 = Instance.new("Part")
obj17.CFrame = CFrame.new(Vector3.new(114.538368, 24.4467087, 443.976044)) * CFrame.Angles(-3.1415927410126, 1.4116796255112, 1.5707963705063)
obj17.FormFactor = Enum.FormFactor.Symmetric
obj17.Transparency = 1
obj17.TopSurface = Enum.SurfaceType.Smooth
obj17.BottomSurface = Enum.SurfaceType.Smooth
obj17.Material = Enum.Material.Metal
obj17.Size = Vector3.new(8.69000053, 20.289999, 9.30998993)
obj17.Anchored = true
obj17.BrickColor = BrickColor.new("Medium red")
obj17.Friction = 0.30000001192093
obj17.Shape = Enum.PartType.Block
obj17.Parent = obj1

-- 18 - Smoke
obj18 = Instance.new("Smoke")
obj18.Opacity = 1
obj18.RiseVelocity = 25
obj18.Size = 30
obj18.Parent = obj17

-- 19 - Part
obj19 = Instance.new("Part")
obj19.CFrame = CFrame.new(Vector3.new(-79.2036667, 24.4467087, 361.454773)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj19.FormFactor = Enum.FormFactor.Symmetric
obj19.Transparency = 1
obj19.TopSurface = Enum.SurfaceType.Smooth
obj19.BottomSurface = Enum.SurfaceType.Smooth
obj19.Material = Enum.Material.Metal
obj19.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj19.Anchored = true
obj19.BrickColor = BrickColor.new("Medium red")
obj19.Friction = 0.30000001192093
obj19.Shape = Enum.PartType.Block
obj19.Parent = obj1

-- 20 - Smoke
obj20 = Instance.new("Smoke")
obj20.Opacity = 1
obj20.RiseVelocity = 25
obj20.Size = 30
obj20.Parent = obj19

-- 21 - Part
obj21 = Instance.new("Part")
obj21.CFrame = CFrame.new(Vector3.new(-89.8316269, 24.4467087, 443.976044)) * CFrame.Angles(-3.1415927410126, 1.4116796255112, 1.5707963705063)
obj21.FormFactor = Enum.FormFactor.Symmetric
obj21.Transparency = 1
obj21.TopSurface = Enum.SurfaceType.Smooth
obj21.BottomSurface = Enum.SurfaceType.Smooth
obj21.Material = Enum.Material.Metal
obj21.Size = Vector3.new(8.69000053, 20.289999, 9.30998993)
obj21.Anchored = true
obj21.BrickColor = BrickColor.new("Medium red")
obj21.Friction = 0.30000001192093
obj21.Shape = Enum.PartType.Block
obj21.Parent = obj1

-- 22 - Smoke
obj22 = Instance.new("Smoke")
obj22.Opacity = 1
obj22.RiseVelocity = 25
obj22.Size = 30
obj22.Parent = obj21

-- 23 - Part
obj23 = Instance.new("Part")
obj23.CFrame = CFrame.new(Vector3.new(36.8435364, 49.5700188, 242.059296)) * CFrame.Angles(-0, 0, -0)
obj23.FormFactor = Enum.FormFactor.Symmetric
obj23.TopSurface = Enum.SurfaceType.Smooth
obj23.BottomSurface = Enum.SurfaceType.Smooth
obj23.Material = Enum.Material.Metal
obj23.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj23.Anchored = true
obj23.BrickColor = BrickColor.new("Medium blue")
obj23.Friction = 0.30000001192093
obj23.Shape = Enum.PartType.Block
obj23.Parent = obj1

-- 24 - Part
obj24 = Instance.new("Part")
obj24.CFrame = CFrame.new(Vector3.new(68.953537, 49.5700188, 242.059296)) * CFrame.Angles(-0, 0, -0)
obj24.FormFactor = Enum.FormFactor.Symmetric
obj24.TopSurface = Enum.SurfaceType.Smooth
obj24.BottomSurface = Enum.SurfaceType.Smooth
obj24.Material = Enum.Material.Metal
obj24.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj24.Anchored = true
obj24.BrickColor = BrickColor.new("Medium blue")
obj24.Friction = 0.30000001192093
obj24.Shape = Enum.PartType.Block
obj24.Parent = obj1

-- 25 - Part
obj25 = Instance.new("Part")
obj25.CFrame = CFrame.new(Vector3.new(10.9316177, 49.6875916, 209.125885)) * CFrame.Angles(-3.1415927410126, 0.86897075176239, -3.1415927410126)
obj25.FormFactor = Enum.FormFactor.Symmetric
obj25.TopSurface = Enum.SurfaceType.Smooth
obj25.BottomSurface = Enum.SurfaceType.Smooth
obj25.Material = Enum.Material.Metal
obj25.Size = Vector3.new(1, 20.289999, 9.30998993)
obj25.Anchored = true
obj25.BrickColor = BrickColor.new("Medium blue")
obj25.Friction = 0.30000001192093
obj25.Shape = Enum.PartType.Block
obj25.Parent = obj1

-- 26 - Part
obj26 = Instance.new("Part")
obj26.CFrame = CFrame.new(Vector3.new(49.0216141, 72.5176315, 209.385834)) * CFrame.Angles(-3.1415927410126, 0.86897075176239, -3.1415927410126)
obj26.FormFactor = Enum.FormFactor.Symmetric
obj26.TopSurface = Enum.SurfaceType.Smooth
obj26.BottomSurface = Enum.SurfaceType.Smooth
obj26.Material = Enum.Material.Metal
obj26.Size = Vector3.new(1, 20.289999, 9.30998993)
obj26.Anchored = true
obj26.BrickColor = BrickColor.new("Medium red")
obj26.Friction = 0.30000001192093
obj26.Shape = Enum.PartType.Block
obj26.Parent = obj1

-- 27 - Part
obj27 = Instance.new("Part")
obj27.CFrame = CFrame.new(Vector3.new(-37.5064621, 50.7300224, 239.749298)) * CFrame.Angles(-0, 0, -0)
obj27.FormFactor = Enum.FormFactor.Symmetric
obj27.TopSurface = Enum.SurfaceType.Smooth
obj27.BottomSurface = Enum.SurfaceType.Smooth
obj27.Material = Enum.Material.Metal
obj27.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj27.Anchored = true
obj27.BrickColor = BrickColor.new("Medium red")
obj27.Friction = 0.30000001192093
obj27.Shape = Enum.PartType.Block
obj27.Parent = obj1

-- 28 - Part
obj28 = Instance.new("Part")
obj28.CFrame = CFrame.new(Vector3.new(-1.69646394, 72.3600159, 159.509308)) * CFrame.Angles(-0, 0, -0)
obj28.FormFactor = Enum.FormFactor.Symmetric
obj28.TopSurface = Enum.SurfaceType.Smooth
obj28.BottomSurface = Enum.SurfaceType.Smooth
obj28.Material = Enum.Material.Metal
obj28.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj28.Anchored = true
obj28.BrickColor = BrickColor.new("Medium blue")
obj28.Friction = 0.30000001192093
obj28.Shape = Enum.PartType.Block
obj28.Parent = obj1

-- 29 - Part
obj29 = Instance.new("Part")
obj29.CFrame = CFrame.new(Vector3.new(-37.5064621, 50.7300224, 159.509308)) * CFrame.Angles(-0, 0, -0)
obj29.FormFactor = Enum.FormFactor.Symmetric
obj29.TopSurface = Enum.SurfaceType.Smooth
obj29.BottomSurface = Enum.SurfaceType.Smooth
obj29.Material = Enum.Material.Metal
obj29.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj29.Anchored = true
obj29.BrickColor = BrickColor.new("Medium red")
obj29.Friction = 0.30000001192093
obj29.Shape = Enum.PartType.Block
obj29.Parent = obj1

-- 30 - Part
obj30 = Instance.new("Part")
obj30.CFrame = CFrame.new(Vector3.new(10.9316177, 49.6875916, 126.735802)) * CFrame.Angles(-3.1415927410126, 0.86897075176239, -3.1415927410126)
obj30.FormFactor = Enum.FormFactor.Symmetric
obj30.TopSurface = Enum.SurfaceType.Smooth
obj30.BottomSurface = Enum.SurfaceType.Smooth
obj30.Material = Enum.Material.Metal
obj30.Size = Vector3.new(1, 20.289999, 9.30998993)
obj30.Anchored = true
obj30.BrickColor = BrickColor.new("Medium red")
obj30.Friction = 0.30000001192093
obj30.Shape = Enum.PartType.Block
obj30.Parent = obj1

-- 31 - Part
obj31 = Instance.new("Part")
obj31.CFrame = CFrame.new(Vector3.new(68.953537, 72.8600235, 159.509308)) * CFrame.Angles(-0, 0, -0)
obj31.FormFactor = Enum.FormFactor.Symmetric
obj31.TopSurface = Enum.SurfaceType.Smooth
obj31.BottomSurface = Enum.SurfaceType.Smooth
obj31.Material = Enum.Material.Metal
obj31.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj31.Anchored = true
obj31.BrickColor = BrickColor.new("Medium red")
obj31.Friction = 0.30000001192093
obj31.Shape = Enum.PartType.Block
obj31.Parent = obj1

-- 32 - Part
obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(68.953537, 49.5700188, 159.509308)) * CFrame.Angles(-0, 0, -0)
obj32.FormFactor = Enum.FormFactor.Symmetric
obj32.TopSurface = Enum.SurfaceType.Smooth
obj32.BottomSurface = Enum.SurfaceType.Smooth
obj32.Material = Enum.Material.Metal
obj32.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj32.Anchored = true
obj32.BrickColor = BrickColor.new("Medium blue")
obj32.Friction = 0.30000001192093
obj32.Shape = Enum.PartType.Block
obj32.Parent = obj1

-- 33 - Part
obj33 = Instance.new("Part")
obj33.CFrame = CFrame.new(Vector3.new(32.1335373, 50.7300224, 159.509308)) * CFrame.Angles(-0, 0, -0)
obj33.FormFactor = Enum.FormFactor.Symmetric
obj33.TopSurface = Enum.SurfaceType.Smooth
obj33.BottomSurface = Enum.SurfaceType.Smooth
obj33.Material = Enum.Material.Metal
obj33.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj33.Anchored = true
obj33.BrickColor = BrickColor.new("Medium red")
obj33.Friction = 0.30000001192093
obj33.Shape = Enum.PartType.Block
obj33.Parent = obj1

-- 34 - Part
obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(32.1335373, 74.0300217, 159.509308)) * CFrame.Angles(-0, 0, -0)
obj34.FormFactor = Enum.FormFactor.Symmetric
obj34.TopSurface = Enum.SurfaceType.Smooth
obj34.BottomSurface = Enum.SurfaceType.Smooth
obj34.Material = Enum.Material.Metal
obj34.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj34.Anchored = true
obj34.BrickColor = BrickColor.new("Medium blue")
obj34.Friction = 0.30000001192093
obj34.Shape = Enum.PartType.Block
obj34.Parent = obj1

-- 35 - Part
obj35 = Instance.new("Part")
obj35.CFrame = CFrame.new(Vector3.new(44.1907043, 17.2500114, 63.2079086)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj35.FormFactor = Enum.FormFactor.Symmetric
obj35.CanCollide = false
obj35.Transparency = 0.19999998807907
obj35.TopSurface = Enum.SurfaceType.Smooth
obj35.BottomSurface = Enum.SurfaceType.Smooth
obj35.Material = Enum.Material.SmoothPlastic
obj35.Size = Vector3.new(644.98999, 20, 204.589966)
obj35.Anchored = true
obj35.BrickColor = BrickColor.new("Bright blue")
obj35.Friction = 0.30000001192093
obj35.Shape = Enum.PartType.Block
obj35.Parent = obj1

-- 36 - Mesh
obj36 = Instance.new("BlockMesh")
obj36.Scale = Vector3.new(100, 1, 100)
obj36.Parent = obj35

-- 37 - Part
obj37 = Instance.new("Part")
obj37.CFrame = CFrame.new(Vector3.new(44.1907043, 20.510006, 63.2079086)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj37.FormFactor = Enum.FormFactor.Symmetric
obj37.CanCollide = false
obj37.Transparency = 0.60000002384186
obj37.TopSurface = Enum.SurfaceType.Smooth
obj37.BottomSurface = Enum.SurfaceType.Smooth
obj37.Material = Enum.Material.Granite
obj37.Size = Vector3.new(644.98999, 20, 204.589966)
obj37.Anchored = true
obj37.BrickColor = BrickColor.new("Storm blue")
obj37.Friction = 0.30000001192093
obj37.Shape = Enum.PartType.Block
obj37.Parent = obj1

-- 38 - Mesh
obj38 = Instance.new("BlockMesh")
obj38.Scale = Vector3.new(100, 1, 100)
obj38.Parent = obj37

-- 39 - Part
obj39 = Instance.new("Part")
obj39.CFrame = CFrame.new(Vector3.new(-76.5740051, 24.4449768, -278.31308)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj39.FormFactor = Enum.FormFactor.Symmetric
obj39.Transparency = 1
obj39.TopSurface = Enum.SurfaceType.Smooth
obj39.BottomSurface = Enum.SurfaceType.Smooth
obj39.Material = Enum.Material.Metal
obj39.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj39.Anchored = true
obj39.BrickColor = BrickColor.new("Medium red")
obj39.Friction = 0.30000001192093
obj39.Shape = Enum.PartType.Block
obj39.Parent = obj1

-- 40 - Smoke
obj40 = Instance.new("Smoke")
obj40.Opacity = 1
obj40.RiseVelocity = 25
obj40.Size = 30
obj40.Parent = obj39

-- 41 - Part
obj41 = Instance.new("Part")
obj41.CFrame = CFrame.new(Vector3.new(-90.3311539, 24.3450127, -368.222565)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj41.FormFactor = Enum.FormFactor.Symmetric
obj41.Transparency = 1
obj41.TopSurface = Enum.SurfaceType.Smooth
obj41.BottomSurface = Enum.SurfaceType.Smooth
obj41.Material = Enum.Material.Metal
obj41.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj41.Anchored = true
obj41.BrickColor = BrickColor.new("Medium red")
obj41.Friction = 0.30000001192093
obj41.Shape = Enum.PartType.Block
obj41.Parent = obj1

-- 42 - Smoke
obj42 = Instance.new("Smoke")
obj42.Opacity = 1
obj42.RiseVelocity = 25
obj42.Size = 30
obj42.Parent = obj41

-- 43 - Part
obj43 = Instance.new("Part")
obj43.CFrame = CFrame.new(Vector3.new(-71.1329803, 24.4449539, -217.327225)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj43.FormFactor = Enum.FormFactor.Symmetric
obj43.Transparency = 1
obj43.TopSurface = Enum.SurfaceType.Smooth
obj43.BottomSurface = Enum.SurfaceType.Smooth
obj43.Material = Enum.Material.Metal
obj43.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj43.Anchored = true
obj43.BrickColor = BrickColor.new("Medium red")
obj43.Friction = 0.30000001192093
obj43.Shape = Enum.PartType.Block
obj43.Parent = obj1

-- 44 - Smoke
obj44 = Instance.new("Smoke")
obj44.Opacity = 1
obj44.RiseVelocity = 25
obj44.Size = 30
obj44.Parent = obj43

-- 45 - Part
obj45 = Instance.new("Part")
obj45.CFrame = CFrame.new(Vector3.new(128.03595, 24.4449768, -278.31308)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj45.FormFactor = Enum.FormFactor.Symmetric
obj45.Transparency = 1
obj45.TopSurface = Enum.SurfaceType.Smooth
obj45.BottomSurface = Enum.SurfaceType.Smooth
obj45.Material = Enum.Material.Metal
obj45.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj45.Anchored = true
obj45.BrickColor = BrickColor.new("Medium red")
obj45.Friction = 0.30000001192093
obj45.Shape = Enum.PartType.Block
obj45.Parent = obj1

-- 46 - Smoke
obj46 = Instance.new("Smoke")
obj46.Opacity = 1
obj46.RiseVelocity = 25
obj46.Size = 30
obj46.Parent = obj45

-- 47 - Part
obj47 = Instance.new("Part")
obj47.CFrame = CFrame.new(Vector3.new(114.278816, 24.3450127, -368.222565)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj47.FormFactor = Enum.FormFactor.Symmetric
obj47.Transparency = 1
obj47.TopSurface = Enum.SurfaceType.Smooth
obj47.BottomSurface = Enum.SurfaceType.Smooth
obj47.Material = Enum.Material.Metal
obj47.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj47.Anchored = true
obj47.BrickColor = BrickColor.new("Medium red")
obj47.Friction = 0.30000001192093
obj47.Shape = Enum.PartType.Block
obj47.Parent = obj1

-- 48 - Smoke
obj48 = Instance.new("Smoke")
obj48.Opacity = 1
obj48.RiseVelocity = 25
obj48.Size = 30
obj48.Parent = obj47

-- 49 - Part
obj49 = Instance.new("Part")
obj49.CFrame = CFrame.new(Vector3.new(133.47699, 24.4449539, -217.327225)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj49.FormFactor = Enum.FormFactor.Symmetric
obj49.Transparency = 1
obj49.TopSurface = Enum.SurfaceType.Smooth
obj49.BottomSurface = Enum.SurfaceType.Smooth
obj49.Material = Enum.Material.Metal
obj49.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj49.Anchored = true
obj49.BrickColor = BrickColor.new("Medium red")
obj49.Friction = 0.30000001192093
obj49.Shape = Enum.PartType.Block
obj49.Parent = obj1

-- 50 - Smoke
obj50 = Instance.new("Smoke")
obj50.Opacity = 1
obj50.RiseVelocity = 25
obj50.Size = 30
obj50.Parent = obj49

-- 51 - Part
obj51 = Instance.new("Part")
obj51.CFrame = CFrame.new(Vector3.new(-6.67037201, 24.3450012, 546.963257)) * CFrame.Angles(1.5707963705063, 0, 2.4623770713806)
obj51.FormFactor = Enum.FormFactor.Symmetric
obj51.Transparency = 1
obj51.TopSurface = Enum.SurfaceType.Smooth
obj51.BottomSurface = Enum.SurfaceType.Smooth
obj51.Material = Enum.Material.Metal
obj51.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj51.Anchored = true
obj51.BrickColor = BrickColor.new("Medium red")
obj51.Friction = 0.30000001192093
obj51.Shape = Enum.PartType.Block
obj51.Parent = obj1

-- 52 - Smoke
obj52 = Instance.new("Smoke")
obj52.Opacity = 1
obj52.RiseVelocity = 25
obj52.Size = 30
obj52.Parent = obj51

-- 53 - Part
obj53 = Instance.new("Part")
obj53.CFrame = CFrame.new(Vector3.new(48.1296463, 24.3450012, 549.053345)) * CFrame.Angles(-3.1415927410126, -0.67921549081802, -1.5707963705063)
obj53.FormFactor = Enum.FormFactor.Symmetric
obj53.Transparency = 1
obj53.TopSurface = Enum.SurfaceType.Smooth
obj53.BottomSurface = Enum.SurfaceType.Smooth
obj53.Material = Enum.Material.Metal
obj53.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj53.Anchored = true
obj53.BrickColor = BrickColor.new("Medium red")
obj53.Friction = 0.30000001192093
obj53.Shape = Enum.PartType.Block
obj53.Parent = obj1

-- 54 - Smoke
obj54 = Instance.new("Smoke")
obj54.Opacity = 1
obj54.RiseVelocity = 25
obj54.Size = 30
obj54.Parent = obj53

-- 55 - Part
obj55 = Instance.new("Part")
obj55.CFrame = CFrame.new(Vector3.new(-29.5831451, 50.3855362, -107.10778)) * CFrame.Angles(-3.1415927410126, 0.23296344280243, -3.1415927410126)
obj55.FormFactor = Enum.FormFactor.Symmetric
obj55.TopSurface = Enum.SurfaceType.Smooth
obj55.BottomSurface = Enum.SurfaceType.Smooth
obj55.Material = Enum.Material.Metal
obj55.Size = Vector3.new(1, 20.289999, 9.30998993)
obj55.Anchored = true
obj55.BrickColor = BrickColor.new("Sand blue")
obj55.Friction = 0.30000001192093
obj55.Shape = Enum.PartType.Block
obj55.Parent = obj1

-- 56 - Part
obj56 = Instance.new("Part")
obj56.CFrame = CFrame.new(Vector3.new(18.4307022, 148.195023, -290.05188)) * CFrame.Angles(0, 1.5707963705063, 0)
obj56.FormFactor = Enum.FormFactor.Symmetric
obj56.TopSurface = Enum.SurfaceType.Smooth
obj56.BottomSurface = Enum.SurfaceType.Smooth
obj56.Material = Enum.Material.Metal
obj56.Size = Vector3.new(141.050018, 8.17001343, 106.529999)
obj56.Anchored = true
obj56.BrickColor = BrickColor.new("Dark stone grey")
obj56.Friction = 0.30000001192093
obj56.Shape = Enum.PartType.Block
obj56.Parent = obj1

-- 57 - Part
obj57 = Instance.new("Part")
obj57.CFrame = CFrame.new(Vector3.new(18.5457001, 115.712776, -248.005463)) * CFrame.Angles(-0.048616126179695, -1.5707963705063, 0)
obj57.FormFactor = Enum.FormFactor.Symmetric
obj57.TopSurface = Enum.SurfaceType.Smooth
obj57.BottomSurface = Enum.SurfaceType.Smooth
obj57.Material = Enum.Material.Metal
obj57.Size = Vector3.new(61.3000145, 26.7200012, 104.879997)
obj57.Anchored = true
obj57.BrickColor = BrickColor.new("Really black")
obj57.Friction = 0.30000001192093
obj57.Shape = Enum.PartType.Block
obj57.Parent = obj1

-- 58 - Part
obj58 = Instance.new("Part")
obj58.CFrame = CFrame.new(Vector3.new(18.440712, 82.780014, -296.666901)) * CFrame.Angles(0, 1.5707963705063, 0)
obj58.FormFactor = Enum.FormFactor.Symmetric
obj58.TopSurface = Enum.SurfaceType.Smooth
obj58.BottomSurface = Enum.SurfaceType.Smooth
obj58.Material = Enum.Material.Metal
obj58.Size = Vector3.new(127.820023, 125.560013, 106.550003)
obj58.Anchored = true
obj58.BrickColor = BrickColor.new("Dark stone grey")
obj58.Friction = 0.30000001192093
obj58.Shape = Enum.PartType.Block
obj58.Parent = obj1

-- 59 - Part
obj59 = Instance.new("Part")
obj59.CFrame = CFrame.new(Vector3.new(19.5406876, 38.560009, -375.730408)) * CFrame.Angles(0, 1.5707963705063, 0)
obj59.FormFactor = Enum.FormFactor.Symmetric
obj59.TopSurface = Enum.SurfaceType.Smooth
obj59.BottomSurface = Enum.SurfaceType.Smooth
obj59.Material = Enum.Material.DiamondPlate
obj59.Size = Vector3.new(1.10000372, 37.1199989, 154.790009)
obj59.Anchored = true
obj59.BrickColor = BrickColor.new("Sand blue")
obj59.Friction = 0.30000001192093
obj59.Shape = Enum.PartType.Block
obj59.Parent = obj1

-- 60 - Part
obj60 = Instance.new("Part")
obj60.CFrame = CFrame.new(Vector3.new(-58.0043144, 38.5800095, -293.650421)) * CFrame.Angles(0, 1.5707963705063, 0)
obj60.FormFactor = Enum.FormFactor.Symmetric
obj60.TopSurface = Enum.SurfaceType.Smooth
obj60.BottomSurface = Enum.SurfaceType.Smooth
obj60.Material = Enum.Material.DiamondPlate
obj60.Size = Vector3.new(165.52002, 37.1599998, 0.73999995)
obj60.Anchored = true
obj60.BrickColor = BrickColor.new("Sand blue")
obj60.Friction = 0.30000001192093
obj60.Shape = Enum.PartType.Block
obj60.Parent = obj1

-- 61 - Part
obj61 = Instance.new("Part")
obj61.CFrame = CFrame.new(Vector3.new(96.5656967, 38.560009, -293.325409)) * CFrame.Angles(0, 1.5707963705063, 0)
obj61.FormFactor = Enum.FormFactor.Symmetric
obj61.TopSurface = Enum.SurfaceType.Smooth
obj61.BottomSurface = Enum.SurfaceType.Smooth
obj61.Material = Enum.Material.DiamondPlate
obj61.Size = Vector3.new(164.869995, 37.1199989, 0.73999995)
obj61.Anchored = true
obj61.BrickColor = BrickColor.new("Sand blue")
obj61.Friction = 0.30000001192093
obj61.Shape = Enum.PartType.Block
obj61.Parent = obj1

-- 62 - Part
obj62 = Instance.new("Part")
obj62.CFrame = CFrame.new(Vector3.new(96.5606842, 29.4135284, -176.65976)) * CFrame.Angles(0.23284430801868, 1.5707963705063, 0)
obj62.FormFactor = Enum.FormFactor.Symmetric
obj62.TopSurface = Enum.SurfaceType.Smooth
obj62.BottomSurface = Enum.SurfaceType.Smooth
obj62.Material = Enum.Material.DiamondPlate
obj62.Size = Vector3.new(79.4100189, 38.1300011, 0.74999696)
obj62.Anchored = true
obj62.BrickColor = BrickColor.new("Sand blue")
obj62.Friction = 0.30000001192093
obj62.Shape = Enum.PartType.Block
obj62.Parent = obj1

-- 63 - Part
obj63 = Instance.new("Part")
obj63.CFrame = CFrame.new(Vector3.new(-57.9992943, 29.4135284, -176.65976)) * CFrame.Angles(0.23284430801868, 1.5707963705063, 0)
obj63.FormFactor = Enum.FormFactor.Symmetric
obj63.TopSurface = Enum.SurfaceType.Smooth
obj63.BottomSurface = Enum.SurfaceType.Smooth
obj63.Material = Enum.Material.DiamondPlate
obj63.Size = Vector3.new(79.4100189, 38.1300011, 0.74999696)
obj63.Anchored = true
obj63.BrickColor = BrickColor.new("Sand blue")
obj63.Friction = 0.30000001192093
obj63.Shape = Enum.PartType.Block
obj63.Parent = obj1

-- 64 - Part
obj64 = Instance.new("Part")
obj64.CFrame = CFrame.new(Vector3.new(-58.0042992, 21.5900154, 117.407951)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj64.FormFactor = Enum.FormFactor.Symmetric
obj64.TopSurface = Enum.SurfaceType.Smooth
obj64.BottomSurface = Enum.SurfaceType.Smooth
obj64.Material = Enum.Material.DiamondPlate
obj64.Size = Vector3.new(522.550049, 37.1199989, 0.73999995)
obj64.Anchored = true
obj64.BrickColor = BrickColor.new("Sand blue")
obj64.Friction = 0.30000001192093
obj64.Shape = Enum.PartType.Block
obj64.Parent = obj1

-- 65 - Part
obj65 = Instance.new("Part")
obj65.CFrame = CFrame.new(Vector3.new(96.5656967, 21.6100121, 84.3779373)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj65.FormFactor = Enum.FormFactor.Symmetric
obj65.TopSurface = Enum.SurfaceType.Smooth
obj65.BottomSurface = Enum.SurfaceType.Smooth
obj65.Material = Enum.Material.DiamondPlate
obj65.Size = Vector3.new(458.110016, 37.1599998, 0.73999995)
obj65.Anchored = true
obj65.BrickColor = BrickColor.new("Sand blue")
obj65.Friction = 0.30000001192093
obj65.Shape = Enum.PartType.Block
obj65.Parent = obj1

-- 66 - Part
obj66 = Instance.new("Part")
obj66.CFrame = CFrame.new(Vector3.new(96.5606766, 29.4135284, 342.252228)) * CFrame.Angles(-0.23284430801868, -1.5707963705063, 0)
obj66.FormFactor = Enum.FormFactor.Symmetric
obj66.TopSurface = Enum.SurfaceType.Smooth
obj66.BottomSurface = Enum.SurfaceType.Smooth
obj66.Material = Enum.Material.DiamondPlate
obj66.Size = Vector3.new(79.4100189, 38.1300011, 0.74999696)
obj66.Anchored = true
obj66.BrickColor = BrickColor.new("Sand blue")
obj66.Friction = 0.30000001192093
obj66.Shape = Enum.PartType.Block
obj66.Parent = obj1

-- 67 - Part
obj67 = Instance.new("Part")
obj67.CFrame = CFrame.new(Vector3.new(-57.9993095, 29.4135284, 342.252228)) * CFrame.Angles(-0.23284430801868, -1.5707963705063, 0)
obj67.FormFactor = Enum.FormFactor.Symmetric
obj67.TopSurface = Enum.SurfaceType.Smooth
obj67.BottomSurface = Enum.SurfaceType.Smooth
obj67.Material = Enum.Material.DiamondPlate
obj67.Size = Vector3.new(79.4100189, 38.1300011, 0.74999696)
obj67.Anchored = true
obj67.BrickColor = BrickColor.new("Sand blue")
obj67.Friction = 0.30000001192093
obj67.Shape = Enum.PartType.Block
obj67.Parent = obj1

-- 68 - Part
obj68 = Instance.new("Part")
obj68.CFrame = CFrame.new(Vector3.new(81.1715164, 95.9859009, -27.8739471)) * CFrame.Angles(-3.1415927410126, 0.86897075176239, -3.1415927410126)
obj68.FormFactor = Enum.FormFactor.Symmetric
obj68.TopSurface = Enum.SurfaceType.Smooth
obj68.BottomSurface = Enum.SurfaceType.Smooth
obj68.Material = Enum.Material.Metal
obj68.Size = Vector3.new(1, 20.289999, 9.30998993)
obj68.Anchored = true
obj68.BrickColor = BrickColor.new("Medium red")
obj68.Friction = 0.30000001192093
obj68.Shape = Enum.PartType.Block
obj68.Parent = obj1

-- 69 - Part
obj69 = Instance.new("Part")
obj69.CFrame = CFrame.new(Vector3.new(-58.0042992, 38.560009, 425.193024)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj69.FormFactor = Enum.FormFactor.Symmetric
obj69.TopSurface = Enum.SurfaceType.Smooth
obj69.BottomSurface = Enum.SurfaceType.Smooth
obj69.Material = Enum.Material.DiamondPlate
obj69.Size = Vector3.new(97.4200134, 37.1199989, 0.73999995)
obj69.Anchored = true
obj69.BrickColor = BrickColor.new("Sand blue")
obj69.Friction = 0.30000001192093
obj69.Shape = Enum.PartType.Block
obj69.Parent = obj1

-- 70 - Part
obj70 = Instance.new("Part")
obj70.CFrame = CFrame.new(Vector3.new(96.5656967, 38.5800095, 425.193024)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj70.FormFactor = Enum.FormFactor.Symmetric
obj70.TopSurface = Enum.SurfaceType.Smooth
obj70.BottomSurface = Enum.SurfaceType.Smooth
obj70.Material = Enum.Material.DiamondPlate
obj70.Size = Vector3.new(97.4200134, 37.1599998, 0.73999995)
obj70.Anchored = true
obj70.BrickColor = BrickColor.new("Sand blue")
obj70.Friction = 0.30000001192093
obj70.Shape = Enum.PartType.Block
obj70.Parent = obj1

-- 71 - Part
obj71 = Instance.new("Part")
obj71.CFrame = CFrame.new(Vector3.new(58.0340347, 38.5899963, 512.386902)) * CFrame.Angles(-0, -0.7814878821373, -0)
obj71.FormFactor = Enum.FormFactor.Symmetric
obj71.TopSurface = Enum.SurfaceType.Smooth
obj71.BottomSurface = Enum.SurfaceType.Smooth
obj71.Material = Enum.Material.DiamondPlate
obj71.Size = Vector3.new(0.860001206, 37, 109.229996)
obj71.Anchored = true
obj71.BrickColor = BrickColor.new("Sand blue")
obj71.Friction = 0.30000001192093
obj71.Shape = Enum.PartType.Block
obj71.Parent = obj1

-- 72 - Part
obj72 = Instance.new("Part")
obj72.CFrame = CFrame.new(Vector3.new(-19.1294174, 38.5899963, 512.430481)) * CFrame.Angles(-0, -0.7814878821373, -0)
obj72.FormFactor = Enum.FormFactor.Symmetric
obj72.TopSurface = Enum.SurfaceType.Smooth
obj72.BottomSurface = Enum.SurfaceType.Smooth
obj72.Material = Enum.Material.DiamondPlate
obj72.Size = Vector3.new(110.07, 37, 0.610000134)
obj72.Anchored = true
obj72.BrickColor = BrickColor.new("Sand blue")
obj72.Friction = 0.30000001192093
obj72.Shape = Enum.PartType.Block
obj72.Parent = obj1

-- 73 - Part
obj73 = Instance.new("Part")
obj73.CFrame = CFrame.new(Vector3.new(19.1014328, 37.6799965, 473.764618)) * CFrame.Angles(-0, -0.7814878821373, -0)
obj73.FormFactor = Enum.FormFactor.Symmetric
obj73.TopSurface = Enum.SurfaceType.Smooth
obj73.BottomSurface = Enum.SurfaceType.Smooth
obj73.Material = Enum.Material.DiamondPlate
obj73.Size = Vector3.new(109.239998, 35.1800003, 108.540001)
obj73.Anchored = true
obj73.BrickColor = BrickColor.new("Dark stone grey")
obj73.Friction = 0.30000001192093
obj73.Shape = Enum.PartType.Block
obj73.Parent = obj1

-- 74 - Part
obj74 = Instance.new("Part")
obj74.CFrame = CFrame.new(Vector3.new(19.0707092, 37.6250076, -293.006897)) * CFrame.Angles(0, 1.5707963705063, 0)
obj74.FormFactor = Enum.FormFactor.Symmetric
obj74.TopSurface = Enum.SurfaceType.Smooth
obj74.BottomSurface = Enum.SurfaceType.Smooth
obj74.Material = Enum.Material.DiamondPlate
obj74.Size = Vector3.new(165.460022, 35.25, 154.649994)
obj74.Anchored = true
obj74.BrickColor = BrickColor.new("Dark stone grey")
obj74.Friction = 0.30000001192093
obj74.Shape = Enum.PartType.Block
obj74.Parent = obj1

-- 75 - Part
obj75 = Instance.new("Part")
obj75.CFrame = CFrame.new(Vector3.new(19.0707092, 37.7359543, -173.913391)) * CFrame.Angles(0.23284430801868, 1.5707963705063, 0)
obj75.FormFactor = Enum.FormFactor.Symmetric
obj75.TopSurface = Enum.SurfaceType.Smooth
obj75.BottomSurface = Enum.SurfaceType.Smooth
obj75.Material = Enum.Material.DiamondPlate
obj75.Size = Vector3.new(79.1000137, 17.4900017, 154.649994)
obj75.Anchored = true
obj75.BrickColor = BrickColor.new("Dark stone grey")
obj75.Friction = 0.30000001192093
obj75.Shape = Enum.PartType.Block
obj75.Parent = obj1

-- 76 - Part
obj76 = Instance.new("Part")
obj76.CFrame = CFrame.new(Vector3.new(46.5738068, 44.1200256, 62.2052155)) * CFrame.Angles(-0, -0.55249071121216, -0)
obj76.FormFactor = Enum.FormFactor.Symmetric
obj76.TopSurface = Enum.SurfaceType.Smooth
obj76.BottomSurface = Enum.SurfaceType.Smooth
obj76.Material = Enum.Material.Wood
obj76.Size = Vector3.new(11.3400164, 10.0799999, 13.439991)
obj76.Anchored = true
obj76.BrickColor = BrickColor.new("Reddish brown")
obj76.Friction = 0.30000001192093
obj76.Shape = Enum.PartType.Block
obj76.Parent = obj1

-- 77 - Part
obj77 = Instance.new("Part")
obj77.CFrame = CFrame.new(Vector3.new(57.9366455, 44.1200485, 68.7829056)) * CFrame.Angles(-0, -0.74421948194504, -0)
obj77.FormFactor = Enum.FormFactor.Symmetric
obj77.TopSurface = Enum.SurfaceType.Smooth
obj77.BottomSurface = Enum.SurfaceType.Smooth
obj77.Material = Enum.Material.Wood
obj77.Size = Vector3.new(11.3400164, 10.0799999, 13.439991)
obj77.Anchored = true
obj77.BrickColor = BrickColor.new("Reddish brown")
obj77.Friction = 0.30000001192093
obj77.Shape = Enum.PartType.Block
obj77.Parent = obj1

-- 78 - Part
obj78 = Instance.new("Part")
obj78.CFrame = CFrame.new(Vector3.new(49.1175003, 54.2200546, 64.7485428)) * CFrame.Angles(-0, -0.20381724834442, -0)
obj78.FormFactor = Enum.FormFactor.Symmetric
obj78.TopSurface = Enum.SurfaceType.Smooth
obj78.BottomSurface = Enum.SurfaceType.Smooth
obj78.Material = Enum.Material.Wood
obj78.Size = Vector3.new(11.3400164, 10.0799999, 13.439991)
obj78.Anchored = true
obj78.BrickColor = BrickColor.new("Reddish brown")
obj78.Friction = 0.30000001192093
obj78.Shape = Enum.PartType.Block
obj78.Parent = obj1

-- 79 - Part
obj79 = Instance.new("Part")
obj79.CFrame = CFrame.new(Vector3.new(-19.0382957, 50.3850136, 119.183403)) * CFrame.Angles(-0, -0.56047350168228, -0)
obj79.FormFactor = Enum.FormFactor.Symmetric
obj79.TopSurface = Enum.SurfaceType.Smooth
obj79.BottomSurface = Enum.SurfaceType.Smooth
obj79.Material = Enum.Material.Metal
obj79.Size = Vector3.new(1, 20.289999, 9.30998993)
obj79.Anchored = true
obj79.BrickColor = BrickColor.new("Medium red")
obj79.Friction = 0.30000001192093
obj79.Shape = Enum.PartType.Block
obj79.Parent = obj1

-- 80 - Part
obj80 = Instance.new("Part")
obj80.CFrame = CFrame.new(Vector3.new(5.54086685, 50.7550201, 111.809898)) * CFrame.Angles(-3.1415927410126, -1.0103228092194, -3.1415927410126)
obj80.FormFactor = Enum.FormFactor.Symmetric
obj80.TopSurface = Enum.SurfaceType.Smooth
obj80.BottomSurface = Enum.SurfaceType.Smooth
obj80.Material = Enum.Material.Metal
obj80.Size = Vector3.new(1, 20.289999, 9.30998993)
obj80.Anchored = true
obj80.BrickColor = BrickColor.new("Medium red")
obj80.Friction = 0.30000001192093
obj80.Shape = Enum.PartType.Block
obj80.Parent = obj1

-- 81 - Part
obj81 = Instance.new("Part")
obj81.CFrame = CFrame.new(Vector3.new(-14.1256857, 50.3837128, 51.1851006)) * CFrame.Angles(-3.1415927410126, 0.56047350168228, -3.1415927410126)
obj81.FormFactor = Enum.FormFactor.Symmetric
obj81.TopSurface = Enum.SurfaceType.Smooth
obj81.BottomSurface = Enum.SurfaceType.Smooth
obj81.Material = Enum.Material.Metal
obj81.Size = Vector3.new(1, 20.289999, 9.30998993)
obj81.Anchored = true
obj81.BrickColor = BrickColor.new("Medium red")
obj81.Friction = 0.30000001192093
obj81.Shape = Enum.PartType.Block
obj81.Parent = obj1

-- 82 - Part
obj82 = Instance.new("Part")
obj82.CFrame = CFrame.new(Vector3.new(-38.7048187, 50.7537384, 58.5585861)) * CFrame.Angles(-0, 1.0103228092194, -0)
obj82.FormFactor = Enum.FormFactor.Symmetric
obj82.TopSurface = Enum.SurfaceType.Smooth
obj82.BottomSurface = Enum.SurfaceType.Smooth
obj82.Material = Enum.Material.Metal
obj82.Size = Vector3.new(1, 20.289999, 9.30998993)
obj82.Anchored = true
obj82.BrickColor = BrickColor.new("Medium red")
obj82.Friction = 0.30000001192093
obj82.Shape = Enum.PartType.Block
obj82.Parent = obj1

-- 83 - Part
obj83 = Instance.new("Part")
obj83.CFrame = CFrame.new(Vector3.new(-25.8642044, 50.1550407, 88.2471619)) * CFrame.Angles(-3.1415927410126, -0.31462618708611, -3.1415927410126)
obj83.FormFactor = Enum.FormFactor.Symmetric
obj83.TopSurface = Enum.SurfaceType.Smooth
obj83.BottomSurface = Enum.SurfaceType.Smooth
obj83.Material = Enum.Material.Metal
obj83.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj83.Anchored = true
obj83.BrickColor = BrickColor.new("Medium red")
obj83.Friction = 0.30000001192093
obj83.Shape = Enum.PartType.Block
obj83.Parent = obj1

-- 84 - Part
obj84 = Instance.new("Part")
obj84.CFrame = CFrame.new(Vector3.new(-16.6213455, 39.5800247, 85.239212)) * CFrame.Angles(-3.1415927410126, -0.31462618708611, -3.1415927410126)
obj84.FormFactor = Enum.FormFactor.Symmetric
obj84.TopSurface = Enum.SurfaceType.Smooth
obj84.BottomSurface = Enum.SurfaceType.Smooth
obj84.Material = Enum.Material.Metal
obj84.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj84.Anchored = true
obj84.BrickColor = BrickColor.new("Medium red")
obj84.Friction = 0.30000001192093
obj84.Shape = Enum.PartType.Block
obj84.Parent = obj1

-- 85 - Part
obj85 = Instance.new("Part")
obj85.CFrame = CFrame.new(Vector3.new(-7.378479, 50.2250175, 82.2312469)) * CFrame.Angles(-3.1415927410126, -0.31462618708611, -3.1415927410126)
obj85.FormFactor = Enum.FormFactor.Symmetric
obj85.TopSurface = Enum.SurfaceType.Smooth
obj85.BottomSurface = Enum.SurfaceType.Smooth
obj85.Material = Enum.Material.Metal
obj85.Size = Vector3.new(1, 20.289999, 57.6099892)
obj85.Anchored = true
obj85.BrickColor = BrickColor.new("Medium red")
obj85.Friction = 0.30000001192093
obj85.Shape = Enum.PartType.Block
obj85.Parent = obj1

-- 86 - Part
obj86 = Instance.new("Part")
obj86.CFrame = CFrame.new(Vector3.new(-16.6213455, 60.8800392, 85.239212)) * CFrame.Angles(-3.1415927410126, -0.31462618708611, -3.1415927410126)
obj86.FormFactor = Enum.FormFactor.Symmetric
obj86.TopSurface = Enum.SurfaceType.Smooth
obj86.BottomSurface = Enum.SurfaceType.Smooth
obj86.Material = Enum.Material.Metal
obj86.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj86.Anchored = true
obj86.BrickColor = BrickColor.new("Medium red")
obj86.Friction = 0.30000001192093
obj86.Shape = Enum.PartType.Block
obj86.Parent = obj1

-- 87 - Part
obj87 = Instance.new("Part")
obj87.CFrame = CFrame.new(Vector3.new(19.0707016, 37.7359543, 340.119293)) * CFrame.Angles(-0.23284430801868, -1.5707963705063, 0)
obj87.FormFactor = Enum.FormFactor.Symmetric
obj87.TopSurface = Enum.SurfaceType.Smooth
obj87.BottomSurface = Enum.SurfaceType.Smooth
obj87.Material = Enum.Material.DiamondPlate
obj87.Size = Vector3.new(79.1000137, 17.4900017, 154.649994)
obj87.Anchored = true
obj87.BrickColor = BrickColor.new("Dark stone grey")
obj87.Friction = 0.30000001192093
obj87.Shape = Enum.PartType.Block
obj87.Parent = obj1

-- 88 - Part
obj88 = Instance.new("Part")
obj88.CFrame = CFrame.new(Vector3.new(19.0707016, 37.6250076, 425.193024)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj88.FormFactor = Enum.FormFactor.Symmetric
obj88.TopSurface = Enum.SurfaceType.Smooth
obj88.BottomSurface = Enum.SurfaceType.Smooth
obj88.Material = Enum.Material.DiamondPlate
obj88.Size = Vector3.new(97.4200134, 35.25, 154.649994)
obj88.Anchored = true
obj88.BrickColor = BrickColor.new("Dark stone grey")
obj88.Friction = 0.30000001192093
obj88.Shape = Enum.PartType.Block
obj88.Parent = obj1

-- 89 - Part
obj89 = Instance.new("Part")
obj89.CFrame = CFrame.new(Vector3.new(-36.93647, 50.7300224, 3.62932992)) * CFrame.Angles(-0, 0, -0)
obj89.FormFactor = Enum.FormFactor.Symmetric
obj89.TopSurface = Enum.SurfaceType.Smooth
obj89.BottomSurface = Enum.SurfaceType.Smooth
obj89.Material = Enum.Material.Metal
obj89.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj89.Anchored = true
obj89.BrickColor = BrickColor.new("Medium red")
obj89.Friction = 0.30000001192093
obj89.Shape = Enum.PartType.Block
obj89.Parent = obj1

-- 90 - Part
obj90 = Instance.new("Part")
obj90.CFrame = CFrame.new(Vector3.new(31.3367386, 54.2200394, -33.6095963)) * CFrame.Angles(-0, 0.34867212176323, -0)
obj90.FormFactor = Enum.FormFactor.Symmetric
obj90.TopSurface = Enum.SurfaceType.Smooth
obj90.BottomSurface = Enum.SurfaceType.Smooth
obj90.Material = Enum.Material.Wood
obj90.Size = Vector3.new(11.3400164, 10.0799999, 13.439991)
obj90.Anchored = true
obj90.BrickColor = BrickColor.new("Reddish brown")
obj90.Friction = 0.30000001192093
obj90.Shape = Enum.PartType.Block
obj90.Parent = obj1

-- 91 - Part
obj91 = Instance.new("Part")
obj91.CFrame = CFrame.new(Vector3.new(8.51368237, 50.7537384, 76.477623)) * CFrame.Angles(-3.1415927410126, 1.5080062150955, -3.1415927410126)
obj91.FormFactor = Enum.FormFactor.Symmetric
obj91.TopSurface = Enum.SurfaceType.Smooth
obj91.BottomSurface = Enum.SurfaceType.Smooth
obj91.Material = Enum.Material.Metal
obj91.Size = Vector3.new(1, 20.289999, 9.30998993)
obj91.Anchored = true
obj91.BrickColor = BrickColor.new("Medium red")
obj91.Friction = 0.30000001192093
obj91.Shape = Enum.PartType.Block
obj91.Parent = obj1

-- 92 - Part
obj92 = Instance.new("Part")
obj92.CFrame = CFrame.new(Vector3.new(68.5379562, 73.0331116, 3.8120079)) * CFrame.Angles(-0, 0.0061280396766961, -0)
obj92.FormFactor = Enum.FormFactor.Symmetric
obj92.TopSurface = Enum.SurfaceType.Smooth
obj92.BottomSurface = Enum.SurfaceType.Smooth
obj92.Material = Enum.Material.Metal
obj92.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj92.Anchored = true
obj92.BrickColor = BrickColor.new("Medium blue")
obj92.Friction = 0.30000001192093
obj92.Shape = Enum.PartType.Block
obj92.Parent = obj1

-- 93 - Part
obj93 = Instance.new("Part")
obj93.CFrame = CFrame.new(Vector3.new(42.0181351, 39.5800247, 85.2518539)) * CFrame.Angles(-3.1415927410126, -0.93788981437683, -3.1415927410126)
obj93.FormFactor = Enum.FormFactor.Symmetric
obj93.TopSurface = Enum.SurfaceType.Smooth
obj93.BottomSurface = Enum.SurfaceType.Smooth
obj93.Material = Enum.Material.Metal
obj93.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj93.Anchored = true
obj93.BrickColor = BrickColor.new("Medium red")
obj93.Friction = 0.30000001192093
obj93.Shape = Enum.PartType.Block
obj93.Parent = obj1

-- 94 - Part
obj94 = Instance.new("Part")
obj94.CFrame = CFrame.new(Vector3.new(42.0181351, 60.8800392, 85.2518539)) * CFrame.Angles(-3.1415927410126, -0.93788981437683, -3.1415927410126)
obj94.FormFactor = Enum.FormFactor.Symmetric
obj94.TopSurface = Enum.SurfaceType.Smooth
obj94.BottomSurface = Enum.SurfaceType.Smooth
obj94.Material = Enum.Material.Metal
obj94.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj94.Anchored = true
obj94.BrickColor = BrickColor.new("Medium red")
obj94.Friction = 0.30000001192093
obj94.Shape = Enum.PartType.Block
obj94.Parent = obj1

-- 95 - Part
obj95 = Instance.new("Part")
obj95.CFrame = CFrame.new(Vector3.new(24.1676025, 50.3837128, 56.1439705)) * CFrame.Angles(-3.1415927410126, -0.062790274620056, -3.1415927410126)
obj95.FormFactor = Enum.FormFactor.Symmetric
obj95.TopSurface = Enum.SurfaceType.Smooth
obj95.BottomSurface = Enum.SurfaceType.Smooth
obj95.Material = Enum.Material.Metal
obj95.Size = Vector3.new(1, 20.289999, 9.30998993)
obj95.Anchored = true
obj95.BrickColor = BrickColor.new("Medium red")
obj95.Friction = 0.30000001192093
obj95.Shape = Enum.PartType.Block
obj95.Parent = obj1

-- 96 - Part
obj96 = Instance.new("Part")
obj96.CFrame = CFrame.new(Vector3.new(59.8684311, 50.3850136, 114.224548)) * CFrame.Angles(-0, 0.062790274620056, -0)
obj96.FormFactor = Enum.FormFactor.Symmetric
obj96.TopSurface = Enum.SurfaceType.Smooth
obj96.BottomSurface = Enum.SurfaceType.Smooth
obj96.Material = Enum.Material.Metal
obj96.Size = Vector3.new(1, 20.289999, 9.30998993)
obj96.Anchored = true
obj96.BrickColor = BrickColor.new("Medium red")
obj96.Friction = 0.30000001192093
obj96.Shape = Enum.PartType.Block
obj96.Parent = obj1

-- 97 - Part
obj97 = Instance.new("Part")
obj97.CFrame = CFrame.new(Vector3.new(36.268837, 50.1550407, 93.0892029)) * CFrame.Angles(-3.1415927410126, -0.93788981437683, -3.1415927410126)
obj97.FormFactor = Enum.FormFactor.Symmetric
obj97.TopSurface = Enum.SurfaceType.Smooth
obj97.BottomSurface = Enum.SurfaceType.Smooth
obj97.Material = Enum.Material.Metal
obj97.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj97.Anchored = true
obj97.BrickColor = BrickColor.new("Medium red")
obj97.Friction = 0.30000001192093
obj97.Shape = Enum.PartType.Block
obj97.Parent = obj1

-- 98 - Part
obj98 = Instance.new("Part")
obj98.CFrame = CFrame.new(Vector3.new(30.213789, 50.7300224, 3.66688108)) * CFrame.Angles(-0, 0, -0)
obj98.FormFactor = Enum.FormFactor.Symmetric
obj98.TopSurface = Enum.SurfaceType.Smooth
obj98.BottomSurface = Enum.SurfaceType.Smooth
obj98.Material = Enum.Material.Metal
obj98.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj98.Anchored = true
obj98.BrickColor = BrickColor.new("Medium red")
obj98.Friction = 0.30000001192093
obj98.Shape = Enum.PartType.Block
obj98.Parent = obj1

-- 99 - Part
obj99 = Instance.new("Part")
obj99.CFrame = CFrame.new(Vector3.new(-8.60645962, 50.7300224, 3.62932992)) * CFrame.Angles(-0, 0, -0)
obj99.FormFactor = Enum.FormFactor.Symmetric
obj99.TopSurface = Enum.SurfaceType.Smooth
obj99.BottomSurface = Enum.SurfaceType.Smooth
obj99.Material = Enum.Material.Metal
obj99.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj99.Anchored = true
obj99.BrickColor = BrickColor.new("Medium red")
obj99.Friction = 0.30000001192093
obj99.Shape = Enum.PartType.Block
obj99.Parent = obj1

-- 100 - Part
obj100 = Instance.new("Part")
obj100.CFrame = CFrame.new(Vector3.new(30.3514557, 44.1200104, -48.1394272)) * CFrame.Angles(-0, 0, -0)
obj100.FormFactor = Enum.FormFactor.Symmetric
obj100.TopSurface = Enum.SurfaceType.Smooth
obj100.BottomSurface = Enum.SurfaceType.Smooth
obj100.Material = Enum.Material.Wood
obj100.Size = Vector3.new(11.3400164, 10.0799999, 13.439991)
obj100.Anchored = true
obj100.BrickColor = BrickColor.new("Reddish brown")
obj100.Friction = 0.30000001192093
obj100.Shape = Enum.PartType.Block
obj100.Parent = obj1

-- 101 - Part
obj101 = Instance.new("Part")
obj101.CFrame = CFrame.new(Vector3.new(41.8716049, 73.6875916, -28.0741806)) * CFrame.Angles(-3.1415927410126, 0.86897075176239, -3.1415927410126)
obj101.FormFactor = Enum.FormFactor.Symmetric
obj101.TopSurface = Enum.SurfaceType.Smooth
obj101.BottomSurface = Enum.SurfaceType.Smooth
obj101.Material = Enum.Material.Metal
obj101.Size = Vector3.new(1, 20.289999, 9.30998993)
obj101.Anchored = true
obj101.BrickColor = BrickColor.new("Medium red")
obj101.Friction = 0.30000001192093
obj101.Shape = Enum.PartType.Block
obj101.Parent = obj1

-- 102 - Part
obj102 = Instance.new("Part")
obj102.CFrame = CFrame.new(Vector3.new(-8.60645962, 74.0300217, 3.62932992)) * CFrame.Angles(-0, 0, -0)
obj102.FormFactor = Enum.FormFactor.Symmetric
obj102.TopSurface = Enum.SurfaceType.Smooth
obj102.BottomSurface = Enum.SurfaceType.Smooth
obj102.Material = Enum.Material.Metal
obj102.Size = Vector3.new(20.4400158, 23.2999992, 57.6099892)
obj102.Anchored = true
obj102.BrickColor = BrickColor.new("Medium blue")
obj102.Friction = 0.30000001192093
obj102.Shape = Enum.PartType.Block
obj102.Parent = obj1

-- 103 - Part
obj103 = Instance.new("Part")
obj103.CFrame = CFrame.new(Vector3.new(47.7674332, 50.2250175, 77.414505)) * CFrame.Angles(-3.1415927410126, -0.93788981437683, -3.1415927410126)
obj103.FormFactor = Enum.FormFactor.Symmetric
obj103.TopSurface = Enum.SurfaceType.Smooth
obj103.BottomSurface = Enum.SurfaceType.Smooth
obj103.Material = Enum.Material.Metal
obj103.Size = Vector3.new(1, 20.289999, 57.6099892)
obj103.Anchored = true
obj103.BrickColor = BrickColor.new("Medium red")
obj103.Friction = 0.30000001192093
obj103.Shape = Enum.PartType.Block
obj103.Parent = obj1

-- 104 - Part
obj104 = Instance.new("Part")
obj104.CFrame = CFrame.new(Vector3.new(3.2949059, 50.3855286, -118.380409)) * CFrame.Angles(-3.1415927410126, -0.1573728621006, -3.1415927410126)
obj104.FormFactor = Enum.FormFactor.Symmetric
obj104.TopSurface = Enum.SurfaceType.Smooth
obj104.BottomSurface = Enum.SurfaceType.Smooth
obj104.Material = Enum.Material.Metal
obj104.Size = Vector3.new(1, 20.289999, 9.30998993)
obj104.Anchored = true
obj104.BrickColor = BrickColor.new("Sand blue")
obj104.Friction = 0.30000001192093
obj104.Shape = Enum.PartType.Block
obj104.Parent = obj1

-- 105 - Part
obj105 = Instance.new("Part")
obj105.CFrame = CFrame.new(Vector3.new(75.5223465, 50.7550201, 93.8908691)) * CFrame.Angles(-0, -1.5080062150955, -0)
obj105.FormFactor = Enum.FormFactor.Symmetric
obj105.TopSurface = Enum.SurfaceType.Smooth
obj105.BottomSurface = Enum.SurfaceType.Smooth
obj105.Material = Enum.Material.Metal
obj105.Size = Vector3.new(1, 20.289999, 9.30998993)
obj105.Anchored = true
obj105.BrickColor = BrickColor.new("Medium red")
obj105.Friction = 0.30000001192093
obj105.Shape = Enum.PartType.Block
obj105.Parent = obj1

-- 106 - Part
obj106 = Instance.new("Part")
obj106.CFrame = CFrame.new(Vector3.new(27.8367386, 44.1200104, -34.4395828)) * CFrame.Angles(-0, 0, -0)
obj106.FormFactor = Enum.FormFactor.Symmetric
obj106.TopSurface = Enum.SurfaceType.Smooth
obj106.BottomSurface = Enum.SurfaceType.Smooth
obj106.Material = Enum.Material.Wood
obj106.Size = Vector3.new(11.3400164, 10.0799999, 13.439991)
obj106.Anchored = true
obj106.BrickColor = BrickColor.new("Reddish brown")
obj106.Friction = 0.30000001192093
obj106.Shape = Enum.PartType.Block
obj106.Parent = obj1

-- 107 - Part
obj107 = Instance.new("Part")
obj107.CFrame = CFrame.new(Vector3.new(19.0707016, 29.5400066, 57.3979111)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj107.FormFactor = Enum.FormFactor.Symmetric
obj107.TopSurface = Enum.SurfaceType.Smooth
obj107.BottomSurface = Enum.SurfaceType.Smooth
obj107.Material = Enum.Material.DiamondPlate
obj107.Size = Vector3.new(563.630005, 19.0799999, 154.649994)
obj107.Anchored = true
obj107.BrickColor = BrickColor.new("Dark stone grey")
obj107.Friction = 0.30000001192093
obj107.Shape = Enum.PartType.Block
obj107.Parent = obj1

-- 108 - Part
obj108 = Instance.new("Part")
obj108.CFrame = CFrame.new(Vector3.new(111.367638, 24.3450127, 474.794403)) * CFrame.Angles(-3.1415927410126, -1.4116796255112, -1.5707963705063)
obj108.FormFactor = Enum.FormFactor.Symmetric
obj108.Transparency = 1
obj108.TopSurface = Enum.SurfaceType.Smooth
obj108.BottomSurface = Enum.SurfaceType.Smooth
obj108.Material = Enum.Material.Metal
obj108.Size = Vector3.new(8.69000053, 20.289999, 9.30998993)
obj108.Anchored = true
obj108.BrickColor = BrickColor.new("Medium red")
obj108.Friction = 0.30000001192093
obj108.Shape = Enum.PartType.Block
obj108.Parent = obj1

-- 109 - Smoke
obj109 = Instance.new("Smoke")
obj109.Opacity = 1
obj109.RiseVelocity = 25
obj109.Size = 30
obj109.Parent = obj108

-- 110 - Part
obj110 = Instance.new("Part")
obj110.CFrame = CFrame.new(Vector3.new(124.049644, 24.3450012, 228.573151)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj110.FormFactor = Enum.FormFactor.Symmetric
obj110.Transparency = 1
obj110.TopSurface = Enum.SurfaceType.Smooth
obj110.BottomSurface = Enum.SurfaceType.Smooth
obj110.Material = Enum.Material.Metal
obj110.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj110.Anchored = true
obj110.BrickColor = BrickColor.new("Medium red")
obj110.Friction = 0.30000001192093
obj110.Shape = Enum.PartType.Block
obj110.Parent = obj1

-- 111 - Smoke
obj111 = Instance.new("Smoke")
obj111.Opacity = 1
obj111.RiseVelocity = 25
obj111.Size = 30
obj111.Parent = obj110

-- 112 - Part
obj112 = Instance.new("Part")
obj112.CFrame = CFrame.new(Vector3.new(120.727577, 24.345005, 145.343597)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj112.FormFactor = Enum.FormFactor.Symmetric
obj112.Transparency = 1
obj112.TopSurface = Enum.SurfaceType.Smooth
obj112.BottomSurface = Enum.SurfaceType.Smooth
obj112.Material = Enum.Material.Metal
obj112.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj112.Anchored = true
obj112.BrickColor = BrickColor.new("Medium red")
obj112.Friction = 0.30000001192093
obj112.Shape = Enum.PartType.Block
obj112.Parent = obj1

-- 113 - Smoke
obj113 = Instance.new("Smoke")
obj113.Opacity = 1
obj113.RiseVelocity = 25
obj113.Size = 30
obj113.Parent = obj112

-- 114 - Part
obj114 = Instance.new("Part")
obj114.CFrame = CFrame.new(Vector3.new(118.208412, 24.345005, 64.2590103)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj114.FormFactor = Enum.FormFactor.Symmetric
obj114.Transparency = 1
obj114.TopSurface = Enum.SurfaceType.Smooth
obj114.BottomSurface = Enum.SurfaceType.Smooth
obj114.Material = Enum.Material.Metal
obj114.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj114.Anchored = true
obj114.BrickColor = BrickColor.new("Medium red")
obj114.Friction = 0.30000001192093
obj114.Shape = Enum.PartType.Block
obj114.Parent = obj1

-- 115 - Smoke
obj115 = Instance.new("Smoke")
obj115.Opacity = 1
obj115.RiseVelocity = 25
obj115.Size = 30
obj115.Parent = obj114

-- 116 - Part
obj116 = Instance.new("Part")
obj116.CFrame = CFrame.new(Vector3.new(128.03595, 24.4449768, -61.2930679)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj116.FormFactor = Enum.FormFactor.Symmetric
obj116.Transparency = 1
obj116.TopSurface = Enum.SurfaceType.Smooth
obj116.BottomSurface = Enum.SurfaceType.Smooth
obj116.Material = Enum.Material.Metal
obj116.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj116.Anchored = true
obj116.BrickColor = BrickColor.new("Medium red")
obj116.Friction = 0.30000001192093
obj116.Shape = Enum.PartType.Block
obj116.Parent = obj1

-- 117 - Smoke
obj117 = Instance.new("Smoke")
obj117.Opacity = 1
obj117.RiseVelocity = 25
obj117.Size = 30
obj117.Parent = obj116

-- 118 - Part
obj118 = Instance.new("Part")
obj118.CFrame = CFrame.new(Vector3.new(114.278816, 24.3450127, -151.202545)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj118.FormFactor = Enum.FormFactor.Symmetric
obj118.Transparency = 1
obj118.TopSurface = Enum.SurfaceType.Smooth
obj118.BottomSurface = Enum.SurfaceType.Smooth
obj118.Material = Enum.Material.Metal
obj118.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj118.Anchored = true
obj118.BrickColor = BrickColor.new("Medium red")
obj118.Friction = 0.30000001192093
obj118.Shape = Enum.PartType.Block
obj118.Parent = obj1

-- 119 - Smoke
obj119 = Instance.new("Smoke")
obj119.Opacity = 1
obj119.RiseVelocity = 25
obj119.Size = 30
obj119.Parent = obj118

-- 120 - Part
obj120 = Instance.new("Part")
obj120.CFrame = CFrame.new(Vector3.new(122.08419, -1.08003998, -265.893219)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj120.FormFactor = Enum.FormFactor.Symmetric
obj120.Transparency = 1
obj120.TopSurface = Enum.SurfaceType.Smooth
obj120.BottomSurface = Enum.SurfaceType.Smooth
obj120.Material = Enum.Material.Metal
obj120.Size = Vector3.new(59.7399979, 39.0299988, 9.30998993)
obj120.Anchored = true
obj120.BrickColor = BrickColor.new("Medium red")
obj120.Friction = 0.30000001192093
obj120.Shape = Enum.PartType.Block
obj120.Parent = obj1

-- 121 - Smoke
obj121 = Instance.new("Smoke")
obj121.Opacity = 1
obj121.RiseVelocity = 25
obj121.Size = 30
obj121.Parent = obj120

-- 122 - Part
obj122 = Instance.new("Part")
obj122.CFrame = CFrame.new(Vector3.new(80.8715134, 50.3859024, -28.1739578)) * CFrame.Angles(-3.1415927410126, 0.86897075176239, -3.1415927410126)
obj122.FormFactor = Enum.FormFactor.Symmetric
obj122.TopSurface = Enum.SurfaceType.Smooth
obj122.BottomSurface = Enum.SurfaceType.Smooth
obj122.Material = Enum.Material.Metal
obj122.Size = Vector3.new(1, 20.289999, 9.30998993)
obj122.Anchored = true
obj122.BrickColor = BrickColor.new("Medium red")
obj122.Friction = 0.30000001192093
obj122.Shape = Enum.PartType.Block
obj122.Parent = obj1

-- 123 - Part
obj123 = Instance.new("Part")
obj123.CFrame = CFrame.new(Vector3.new(44.1907043, 14.6600037, 63.2079086)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj123.FormFactor = Enum.FormFactor.Symmetric
obj123.CanCollide = false
obj123.TopSurface = Enum.SurfaceType.Smooth
obj123.BottomSurface = Enum.SurfaceType.Smooth
obj123.Material = Enum.Material.Granite
obj123.Size = Vector3.new(644.98999, 20, 204.589966)
obj123.Anchored = true
obj123.BrickColor = BrickColor.new("Bright blue")
obj123.Friction = 0.30000001192093
obj123.Shape = Enum.PartType.Block
obj123.Parent = obj1

-- 124 - Mesh
obj124 = Instance.new("BlockMesh")
obj124.Scale = Vector3.new(100, 1, 100)
obj124.Parent = obj123

-- 125 - SpawnPoint9
obj125 = Instance.new("Part")
obj125.CFrame = CFrame.new(Vector3.new(68.7980728, 46.4750977, -117.637184)) * CFrame.Angles(-1.5707963705063, 0, -1.5646673440933)
obj125.FormFactor = Enum.FormFactor.Symmetric
obj125.CanCollide = false
obj125.Transparency = 1
obj125.TopSurface = Enum.SurfaceType.Smooth
obj125.BottomSurface = Enum.SurfaceType.Smooth
obj125.Material = Enum.Material.Slate
obj125.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj125.Anchored = true
obj125.BrickColor = BrickColor.new("Dark stone grey")
obj125.Friction = 0.30000001192093
obj125.Shape = Enum.PartType.Block
obj125.Name = "SpawnPoint9"
obj125.Parent = obj1

-- 126 - SpawnPoint8
obj126 = Instance.new("Part")
obj126.CFrame = CFrame.new(Vector3.new(-21.4194851, 45.4750175, 232.420868)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj126.FormFactor = Enum.FormFactor.Symmetric
obj126.CanCollide = false
obj126.Transparency = 1
obj126.TopSurface = Enum.SurfaceType.Smooth
obj126.BottomSurface = Enum.SurfaceType.Smooth
obj126.Material = Enum.Material.Slate
obj126.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj126.Anchored = true
obj126.BrickColor = BrickColor.new("Dark stone grey")
obj126.Friction = 0.30000001192093
obj126.Shape = Enum.PartType.Block
obj126.Name = "SpawnPoint8"
obj126.Parent = obj1

-- 127 - SpawnPoint7
obj127 = Instance.new("Part")
obj127.CFrame = CFrame.new(Vector3.new(89.553566, 45.4750175, 295.11441)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj127.FormFactor = Enum.FormFactor.Symmetric
obj127.CanCollide = false
obj127.Transparency = 1
obj127.TopSurface = Enum.SurfaceType.Smooth
obj127.BottomSurface = Enum.SurfaceType.Smooth
obj127.Material = Enum.Material.Slate
obj127.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj127.Anchored = true
obj127.BrickColor = BrickColor.new("Dark stone grey")
obj127.Friction = 0.30000001192093
obj127.Shape = Enum.PartType.Block
obj127.Name = "SpawnPoint7"
obj127.Parent = obj1

-- 128 - SpawnPoint6
obj128 = Instance.new("Part")
obj128.CFrame = CFrame.new(Vector3.new(72.6066589, 45.4749985, 199.198212)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj128.FormFactor = Enum.FormFactor.Symmetric
obj128.CanCollide = false
obj128.Transparency = 1
obj128.TopSurface = Enum.SurfaceType.Smooth
obj128.BottomSurface = Enum.SurfaceType.Smooth
obj128.Material = Enum.Material.Slate
obj128.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj128.Anchored = true
obj128.BrickColor = BrickColor.new("Dark stone grey")
obj128.Friction = 0.30000001192093
obj128.Shape = Enum.PartType.Block
obj128.Name = "SpawnPoint6"
obj128.Parent = obj1

-- 129 - SpawnPoint5
obj129 = Instance.new("Part")
obj129.CFrame = CFrame.new(Vector3.new(0.907607973, 45.4750175, 88.2322006)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj129.FormFactor = Enum.FormFactor.Symmetric
obj129.CanCollide = false
obj129.Transparency = 1
obj129.TopSurface = Enum.SurfaceType.Smooth
obj129.BottomSurface = Enum.SurfaceType.Smooth
obj129.Material = Enum.Material.Slate
obj129.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj129.Anchored = true
obj129.BrickColor = BrickColor.new("Dark stone grey")
obj129.Friction = 0.30000001192093
obj129.Shape = Enum.PartType.Block
obj129.Name = "SpawnPoint5"
obj129.Parent = obj1

-- 130 - SpawnPoint4
obj130 = Instance.new("Part")
obj130.CFrame = CFrame.new(Vector3.new(25.1914139, 45.4750175, 41.0684929)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj130.FormFactor = Enum.FormFactor.Symmetric
obj130.CanCollide = false
obj130.Transparency = 1
obj130.TopSurface = Enum.SurfaceType.Smooth
obj130.BottomSurface = Enum.SurfaceType.Smooth
obj130.Material = Enum.Material.Slate
obj130.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj130.Anchored = true
obj130.BrickColor = BrickColor.new("Dark stone grey")
obj130.Friction = 0.30000001192093
obj130.Shape = Enum.PartType.Block
obj130.Name = "SpawnPoint4"
obj130.Parent = obj1

-- 131 - SpawnPoint3
obj131 = Instance.new("Part")
obj131.CFrame = CFrame.new(Vector3.new(-22.4258385, 45.4750175, -18.2975998)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj131.FormFactor = Enum.FormFactor.Symmetric
obj131.CanCollide = false
obj131.Transparency = 1
obj131.TopSurface = Enum.SurfaceType.Smooth
obj131.BottomSurface = Enum.SurfaceType.Smooth
obj131.Material = Enum.Material.Slate
obj131.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj131.Anchored = true
obj131.BrickColor = BrickColor.new("Dark stone grey")
obj131.Friction = 0.30000001192093
obj131.Shape = Enum.PartType.Block
obj131.Name = "SpawnPoint3"
obj131.Parent = obj1

-- 132 - SpawnPoint2
obj132 = Instance.new("Part")
obj132.CFrame = CFrame.new(Vector3.new(14.3439178, 45.4750175, -61.9425735)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj132.FormFactor = Enum.FormFactor.Symmetric
obj132.CanCollide = false
obj132.Transparency = 1
obj132.TopSurface = Enum.SurfaceType.Smooth
obj132.BottomSurface = Enum.SurfaceType.Smooth
obj132.Material = Enum.Material.Slate
obj132.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj132.Anchored = true
obj132.BrickColor = BrickColor.new("Dark stone grey")
obj132.Friction = 0.30000001192093
obj132.Shape = Enum.PartType.Block
obj132.Name = "SpawnPoint2"
obj132.Parent = obj1

-- 133 - SpawnPoint1
obj133 = Instance.new("Part")
obj133.CFrame = CFrame.new(Vector3.new(50.4720993, 45.4750175, -122.356239)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj133.FormFactor = Enum.FormFactor.Symmetric
obj133.CanCollide = false
obj133.Transparency = 1
obj133.TopSurface = Enum.SurfaceType.Smooth
obj133.BottomSurface = Enum.SurfaceType.Smooth
obj133.Material = Enum.Material.Slate
obj133.Size = Vector3.new(4.21002769, 5.78999996, 12.7899914)
obj133.Anchored = true
obj133.BrickColor = BrickColor.new("Dark stone grey")
obj133.Friction = 0.30000001192093
obj133.Shape = Enum.PartType.Block
obj133.Name = "SpawnPoint1"
obj133.Parent = obj1

-- 134 - Part
obj134 = Instance.new("Part")
obj134.CFrame = CFrame.new(Vector3.new(-89.8316269, 24.4467087, 281.395966)) * CFrame.Angles(-3.1415927410126, 1.4116796255112, 1.5707963705063)
obj134.FormFactor = Enum.FormFactor.Symmetric
obj134.Transparency = 1
obj134.TopSurface = Enum.SurfaceType.Smooth
obj134.BottomSurface = Enum.SurfaceType.Smooth
obj134.Material = Enum.Material.Metal
obj134.Size = Vector3.new(8.69000053, 20.289999, 9.30998993)
obj134.Anchored = true
obj134.BrickColor = BrickColor.new("Medium red")
obj134.Friction = 0.30000001192093
obj134.Shape = Enum.PartType.Block
obj134.Parent = obj1

-- 135 - Smoke
obj135 = Instance.new("Smoke")
obj135.Opacity = 1
obj135.RiseVelocity = 25
obj135.Size = 30
obj135.Parent = obj134

-- 136 - Part
obj136 = Instance.new("Part")
obj136.CFrame = CFrame.new(Vector3.new(-72.1228561, 24.4467087, -180.904205)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj136.FormFactor = Enum.FormFactor.Symmetric
obj136.Transparency = 1
obj136.TopSurface = Enum.SurfaceType.Smooth
obj136.BottomSurface = Enum.SurfaceType.Smooth
obj136.Material = Enum.Material.Metal
obj136.Size = Vector3.new(8.69000053, 39.0299988, 9.30998993)
obj136.Anchored = true
obj136.BrickColor = BrickColor.new("Medium red")
obj136.Friction = 0.30000001192093
obj136.Shape = Enum.PartType.Block
obj136.Parent = obj1

-- 137 - Smoke
obj137 = Instance.new("Smoke")
obj137.Opacity = 1
obj137.RiseVelocity = 25
obj137.Size = 30
obj137.Parent = obj136

-- 138 - Part
obj138 = Instance.new("Part")
obj138.CFrame = CFrame.new(Vector3.new(-14.7259979, 50.0575943, 208.688263)) * CFrame.Angles(-0, 0.70182549953461, -0)
obj138.FormFactor = Enum.FormFactor.Symmetric
obj138.TopSurface = Enum.SurfaceType.Smooth
obj138.BottomSurface = Enum.SurfaceType.Smooth
obj138.Material = Enum.Material.Metal
obj138.Size = Vector3.new(1, 20.289999, 9.30998993)
obj138.Anchored = true
obj138.BrickColor = BrickColor.new("Medium blue")
obj138.Friction = 0.30000001192093
obj138.Shape = Enum.PartType.Block
obj138.Parent = obj1

-- 139 - Part
obj139 = Instance.new("Part")
obj139.CFrame = CFrame.new(Vector3.new(-14.3953075, 49.6863022, 272.422424)) * CFrame.Angles(-0, -0.86897075176239, -0)
obj139.FormFactor = Enum.FormFactor.Symmetric
obj139.TopSurface = Enum.SurfaceType.Smooth
obj139.BottomSurface = Enum.SurfaceType.Smooth
obj139.Material = Enum.Material.Metal
obj139.Size = Vector3.new(1, 20.289999, 9.30998993)
obj139.Anchored = true
obj139.BrickColor = BrickColor.new("Medium blue")
obj139.Friction = 0.30000001192093
obj139.Shape = Enum.PartType.Block
obj139.Parent = obj1

-- 140 - Part
obj140 = Instance.new("Part")
obj140.CFrame = CFrame.new(Vector3.new(11.2623358, 50.0563126, 272.859985)) * CFrame.Angles(-3.1415927410126, -0.70182549953461, -3.1415927410126)
obj140.FormFactor = Enum.FormFactor.Symmetric
obj140.TopSurface = Enum.SurfaceType.Smooth
obj140.BottomSurface = Enum.SurfaceType.Smooth
obj140.Material = Enum.Material.Metal
obj140.Size = Vector3.new(1, 20.289999, 9.30998993)
obj140.Anchored = true
obj140.BrickColor = BrickColor.new("Medium blue")
obj140.Friction = 0.30000001192093
obj140.Shape = Enum.PartType.Block
obj140.Parent = obj1

-- 141 - Part
obj141 = Instance.new("Part")
obj141.CFrame = CFrame.new(Vector3.new(-1.67762005, 60.1843414, 240.733795)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj141.FormFactor = Enum.FormFactor.Symmetric
obj141.TopSurface = Enum.SurfaceType.Smooth
obj141.BottomSurface = Enum.SurfaceType.Smooth
obj141.Material = Enum.Material.Metal
obj141.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj141.Anchored = true
obj141.BrickColor = BrickColor.new("Medium blue")
obj141.Friction = 0.30000001192093
obj141.Shape = Enum.PartType.Block
obj141.Parent = obj1

-- 142 - Part
obj142 = Instance.new("Part")
obj142.CFrame = CFrame.new(Vector3.new(8.04222107, 49.4576111, 240.674194)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj142.FormFactor = Enum.FormFactor.Symmetric
obj142.TopSurface = Enum.SurfaceType.Smooth
obj142.BottomSurface = Enum.SurfaceType.Smooth
obj142.Material = Enum.Material.Metal
obj142.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj142.Anchored = true
obj142.BrickColor = BrickColor.new("Medium blue")
obj142.Friction = 0.30000001192093
obj142.Shape = Enum.PartType.Block
obj142.Parent = obj1

-- 143 - Part
obj143 = Instance.new("Part")
obj143.CFrame = CFrame.new(Vector3.new(-11.3975058, 49.5276031, 240.793427)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj143.FormFactor = Enum.FormFactor.Symmetric
obj143.TopSurface = Enum.SurfaceType.Smooth
obj143.BottomSurface = Enum.SurfaceType.Smooth
obj143.Material = Enum.Material.Metal
obj143.Size = Vector3.new(1, 20.289999, 57.6099892)
obj143.Anchored = true
obj143.BrickColor = BrickColor.new("Medium blue")
obj143.Friction = 0.30000001192093
obj143.Shape = Enum.PartType.Block
obj143.Parent = obj1

-- 144 - Part
obj144 = Instance.new("Part")
obj144.CFrame = CFrame.new(Vector3.new(-1.67762005, 38.8818398, 240.733795)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj144.FormFactor = Enum.FormFactor.Symmetric
obj144.TopSurface = Enum.SurfaceType.Smooth
obj144.BottomSurface = Enum.SurfaceType.Smooth
obj144.Material = Enum.Material.Metal
obj144.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj144.Anchored = true
obj144.BrickColor = BrickColor.new("Medium blue")
obj144.Friction = 0.30000001192093
obj144.Shape = Enum.PartType.Block
obj144.Parent = obj1

-- 145 - Part
obj145 = Instance.new("Part")
obj145.CFrame = CFrame.new(Vector3.new(23.364006, 72.8876343, 208.948212)) * CFrame.Angles(-0, 0.70182549953461, -0)
obj145.FormFactor = Enum.FormFactor.Symmetric
obj145.TopSurface = Enum.SurfaceType.Smooth
obj145.BottomSurface = Enum.SurfaceType.Smooth
obj145.Material = Enum.Material.Metal
obj145.Size = Vector3.new(1, 20.289999, 9.30998993)
obj145.Anchored = true
obj145.BrickColor = BrickColor.new("Medium red")
obj145.Friction = 0.30000001192093
obj145.Shape = Enum.PartType.Block
obj145.Parent = obj1

-- 146 - Part
obj146 = Instance.new("Part")
obj146.CFrame = CFrame.new(Vector3.new(23.6946945, 72.5163422, 272.682343)) * CFrame.Angles(-0, -0.86897075176239, -0)
obj146.FormFactor = Enum.FormFactor.Symmetric
obj146.TopSurface = Enum.SurfaceType.Smooth
obj146.BottomSurface = Enum.SurfaceType.Smooth
obj146.Material = Enum.Material.Metal
obj146.Size = Vector3.new(1, 20.289999, 9.30998993)
obj146.Anchored = true
obj146.BrickColor = BrickColor.new("Medium red")
obj146.Friction = 0.30000001192093
obj146.Shape = Enum.PartType.Block
obj146.Parent = obj1

-- 147 - Part
obj147 = Instance.new("Part")
obj147.CFrame = CFrame.new(Vector3.new(49.3523254, 72.8863525, 273.119904)) * CFrame.Angles(-3.1415927410126, -0.70182549953461, -3.1415927410126)
obj147.FormFactor = Enum.FormFactor.Symmetric
obj147.TopSurface = Enum.SurfaceType.Smooth
obj147.BottomSurface = Enum.SurfaceType.Smooth
obj147.Material = Enum.Material.Metal
obj147.Size = Vector3.new(1, 20.289999, 9.30998993)
obj147.Anchored = true
obj147.BrickColor = BrickColor.new("Medium red")
obj147.Friction = 0.30000001192093
obj147.Shape = Enum.PartType.Block
obj147.Parent = obj1

-- 148 - Part
obj148 = Instance.new("Part")
obj148.CFrame = CFrame.new(Vector3.new(36.4123611, 83.0143814, 240.993713)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj148.FormFactor = Enum.FormFactor.Symmetric
obj148.TopSurface = Enum.SurfaceType.Smooth
obj148.BottomSurface = Enum.SurfaceType.Smooth
obj148.Material = Enum.Material.Metal
obj148.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj148.Anchored = true
obj148.BrickColor = BrickColor.new("Medium red")
obj148.Friction = 0.30000001192093
obj148.Shape = Enum.PartType.Block
obj148.Parent = obj1

-- 149 - Part
obj149 = Instance.new("Part")
obj149.CFrame = CFrame.new(Vector3.new(46.1322021, 72.2876511, 240.934143)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj149.FormFactor = Enum.FormFactor.Symmetric
obj149.TopSurface = Enum.SurfaceType.Smooth
obj149.BottomSurface = Enum.SurfaceType.Smooth
obj149.Material = Enum.Material.Metal
obj149.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj149.Anchored = true
obj149.BrickColor = BrickColor.new("Medium red")
obj149.Friction = 0.30000001192093
obj149.Shape = Enum.PartType.Block
obj149.Parent = obj1

-- 150 - Part
obj150 = Instance.new("Part")
obj150.CFrame = CFrame.new(Vector3.new(26.6924973, 72.3576431, 241.053375)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj150.FormFactor = Enum.FormFactor.Symmetric
obj150.TopSurface = Enum.SurfaceType.Smooth
obj150.BottomSurface = Enum.SurfaceType.Smooth
obj150.Material = Enum.Material.Metal
obj150.Size = Vector3.new(1, 20.289999, 57.6099892)
obj150.Anchored = true
obj150.BrickColor = BrickColor.new("Medium red")
obj150.Friction = 0.30000001192093
obj150.Shape = Enum.PartType.Block
obj150.Parent = obj1

-- 151 - Part
obj151 = Instance.new("Part")
obj151.CFrame = CFrame.new(Vector3.new(36.4123611, 61.7118492, 240.993713)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj151.FormFactor = Enum.FormFactor.Symmetric
obj151.TopSurface = Enum.SurfaceType.Smooth
obj151.BottomSurface = Enum.SurfaceType.Smooth
obj151.Material = Enum.Material.Metal
obj151.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj151.Anchored = true
obj151.BrickColor = BrickColor.new("Medium red")
obj151.Friction = 0.30000001192093
obj151.Shape = Enum.PartType.Block
obj151.Parent = obj1

-- 152 - Part
obj152 = Instance.new("Part")
obj152.CFrame = CFrame.new(Vector3.new(-14.7259979, 50.0575943, 126.298172)) * CFrame.Angles(-0, 0.70182549953461, -0)
obj152.FormFactor = Enum.FormFactor.Symmetric
obj152.TopSurface = Enum.SurfaceType.Smooth
obj152.BottomSurface = Enum.SurfaceType.Smooth
obj152.Material = Enum.Material.Metal
obj152.Size = Vector3.new(1, 20.289999, 9.30998993)
obj152.Anchored = true
obj152.BrickColor = BrickColor.new("Medium red")
obj152.Friction = 0.30000001192093
obj152.Shape = Enum.PartType.Block
obj152.Parent = obj1

-- 153 - Part
obj153 = Instance.new("Part")
obj153.CFrame = CFrame.new(Vector3.new(-14.3953075, 49.6863022, 190.032349)) * CFrame.Angles(-0, -0.86897075176239, -0)
obj153.FormFactor = Enum.FormFactor.Symmetric
obj153.TopSurface = Enum.SurfaceType.Smooth
obj153.BottomSurface = Enum.SurfaceType.Smooth
obj153.Material = Enum.Material.Metal
obj153.Size = Vector3.new(1, 20.289999, 9.30998993)
obj153.Anchored = true
obj153.BrickColor = BrickColor.new("Medium red")
obj153.Friction = 0.30000001192093
obj153.Shape = Enum.PartType.Block
obj153.Parent = obj1

-- 154 - Part
obj154 = Instance.new("Part")
obj154.CFrame = CFrame.new(Vector3.new(11.2623358, 50.0563126, 190.46991)) * CFrame.Angles(-3.1415927410126, -0.70182549953461, -3.1415927410126)
obj154.FormFactor = Enum.FormFactor.Symmetric
obj154.TopSurface = Enum.SurfaceType.Smooth
obj154.BottomSurface = Enum.SurfaceType.Smooth
obj154.Material = Enum.Material.Metal
obj154.Size = Vector3.new(1, 20.289999, 9.30998993)
obj154.Anchored = true
obj154.BrickColor = BrickColor.new("Medium red")
obj154.Friction = 0.30000001192093
obj154.Shape = Enum.PartType.Block
obj154.Parent = obj1

-- 155 - Part
obj155 = Instance.new("Part")
obj155.CFrame = CFrame.new(Vector3.new(-1.67762005, 60.1843414, 158.343704)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj155.FormFactor = Enum.FormFactor.Symmetric
obj155.TopSurface = Enum.SurfaceType.Smooth
obj155.BottomSurface = Enum.SurfaceType.Smooth
obj155.Material = Enum.Material.Metal
obj155.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj155.Anchored = true
obj155.BrickColor = BrickColor.new("Medium red")
obj155.Friction = 0.30000001192093
obj155.Shape = Enum.PartType.Block
obj155.Parent = obj1

-- 156 - Part
obj156 = Instance.new("Part")
obj156.CFrame = CFrame.new(Vector3.new(8.04222107, 49.4576111, 158.284119)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj156.FormFactor = Enum.FormFactor.Symmetric
obj156.TopSurface = Enum.SurfaceType.Smooth
obj156.BottomSurface = Enum.SurfaceType.Smooth
obj156.Material = Enum.Material.Metal
obj156.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj156.Anchored = true
obj156.BrickColor = BrickColor.new("Medium red")
obj156.Friction = 0.30000001192093
obj156.Shape = Enum.PartType.Block
obj156.Parent = obj1

-- 157 - Part
obj157 = Instance.new("Part")
obj157.CFrame = CFrame.new(Vector3.new(-11.3975058, 49.5276031, 158.403351)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj157.FormFactor = Enum.FormFactor.Symmetric
obj157.TopSurface = Enum.SurfaceType.Smooth
obj157.BottomSurface = Enum.SurfaceType.Smooth
obj157.Material = Enum.Material.Metal
obj157.Size = Vector3.new(1, 20.289999, 57.6099892)
obj157.Anchored = true
obj157.BrickColor = BrickColor.new("Medium red")
obj157.Friction = 0.30000001192093
obj157.Shape = Enum.PartType.Block
obj157.Parent = obj1

-- 158 - Part
obj158 = Instance.new("Part")
obj158.CFrame = CFrame.new(Vector3.new(-1.67762005, 38.8818398, 158.343704)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj158.FormFactor = Enum.FormFactor.Symmetric
obj158.TopSurface = Enum.SurfaceType.Smooth
obj158.BottomSurface = Enum.SurfaceType.Smooth
obj158.Material = Enum.Material.Metal
obj158.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj158.Anchored = true
obj158.BrickColor = BrickColor.new("Medium red")
obj158.Friction = 0.30000001192093
obj158.Shape = Enum.PartType.Block
obj158.Parent = obj1

-- 159 - Part
obj159 = Instance.new("Part")
obj159.CFrame = CFrame.new(Vector3.new(-50.4839401, 50.7555542, -92.2195358)) * CFrame.Angles(-0, 1.3378329277039, -0)
obj159.FormFactor = Enum.FormFactor.Symmetric
obj159.TopSurface = Enum.SurfaceType.Smooth
obj159.BottomSurface = Enum.SurfaceType.Smooth
obj159.Material = Enum.Material.Metal
obj159.Size = Vector3.new(1, 20.289999, 9.30998993)
obj159.Anchored = true
obj159.BrickColor = BrickColor.new("Sand blue")
obj159.Friction = 0.30000001192093
obj159.Shape = Enum.PartType.Block
obj159.Parent = obj1

-- 160 - Part
obj160 = Instance.new("Part")
obj160.CFrame = CFrame.new(Vector3.new(-12.3605957, 50.3842316, -41.1436501)) * CFrame.Angles(-0, -0.23296344280243, -0)
obj160.FormFactor = Enum.FormFactor.Symmetric
obj160.TopSurface = Enum.SurfaceType.Smooth
obj160.BottomSurface = Enum.SurfaceType.Smooth
obj160.Material = Enum.Material.Metal
obj160.Size = Vector3.new(1, 20.289999, 9.30998993)
obj160.Anchored = true
obj160.BrickColor = BrickColor.new("Sand blue")
obj160.Friction = 0.30000001192093
obj160.Shape = Enum.PartType.Block
obj160.Parent = obj1

-- 161 - Part
obj161 = Instance.new("Part")
obj161.CFrame = CFrame.new(Vector3.new(8.54017162, 50.754261, -56.031868)) * CFrame.Angles(-3.1415927410126, -1.3378329277039, -3.1415927410126)
obj161.FormFactor = Enum.FormFactor.Symmetric
obj161.TopSurface = Enum.SurfaceType.Smooth
obj161.BottomSurface = Enum.SurfaceType.Smooth
obj161.Material = Enum.Material.Metal
obj161.Size = Vector3.new(1, 20.289999, 9.30998993)
obj161.Anchored = true
obj161.BrickColor = BrickColor.new("Sand blue")
obj161.Friction = 0.30000001192093
obj161.Shape = Enum.PartType.Block
obj161.Parent = obj1

-- 162 - Part
obj162 = Instance.new("Part")
obj162.CFrame = CFrame.new(Vector3.new(-20.9522324, 60.8857841, -74.1903458)) * CFrame.Angles(-0, 0.64213818311691, -0)
obj162.FormFactor = Enum.FormFactor.Symmetric
obj162.TopSurface = Enum.SurfaceType.Smooth
obj162.BottomSurface = Enum.SurfaceType.Smooth
obj162.Material = Enum.Material.Metal
obj162.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj162.Anchored = true
obj162.BrickColor = BrickColor.new("Sand blue")
obj162.Friction = 0.30000001192093
obj162.Shape = Enum.PartType.Block
obj162.Parent = obj1

-- 163 - Part
obj163 = Instance.new("Part")
obj163.CFrame = CFrame.new(Vector3.new(-13.1683121, 50.1555672, -80.0117569)) * CFrame.Angles(-0, 0.64213818311691, -0)
obj163.FormFactor = Enum.FormFactor.Symmetric
obj163.TopSurface = Enum.SurfaceType.Smooth
obj163.BottomSurface = Enum.SurfaceType.Smooth
obj163.Material = Enum.Material.Metal
obj163.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj163.Anchored = true
obj163.BrickColor = BrickColor.new("Sand blue")
obj163.Friction = 0.30000001192093
obj163.Shape = Enum.PartType.Block
obj163.Parent = obj1

-- 164 - Part
obj164 = Instance.new("Part")
obj164.CFrame = CFrame.new(Vector3.new(-28.7361679, 50.2255402, -68.3689194)) * CFrame.Angles(-0, 0.64213818311691, -0)
obj164.FormFactor = Enum.FormFactor.Symmetric
obj164.TopSurface = Enum.SurfaceType.Smooth
obj164.BottomSurface = Enum.SurfaceType.Smooth
obj164.Material = Enum.Material.Metal
obj164.Size = Vector3.new(1, 20.289999, 57.6099892)
obj164.Anchored = true
obj164.BrickColor = BrickColor.new("Sand blue")
obj164.Friction = 0.30000001192093
obj164.Shape = Enum.PartType.Block
obj164.Parent = obj1

-- 165 - Part
obj165 = Instance.new("Part")
obj165.CFrame = CFrame.new(Vector3.new(-20.9522324, 39.5797272, -74.1903458)) * CFrame.Angles(-0, 0.64213818311691, -0)
obj165.FormFactor = Enum.FormFactor.Symmetric
obj165.TopSurface = Enum.SurfaceType.Smooth
obj165.BottomSurface = Enum.SurfaceType.Smooth
obj165.Material = Enum.Material.Metal
obj165.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj165.Anchored = true
obj165.BrickColor = BrickColor.new("Sand blue")
obj165.Friction = 0.30000001192093
obj165.Shape = Enum.PartType.Block
obj165.Parent = obj1

-- 166 - Part
obj166 = Instance.new("Part")
obj166.CFrame = CFrame.new(Vector3.new(55.5139236, 96.3559265, -28.3115768)) * CFrame.Angles(-0, 0.70182549953461, -0)
obj166.FormFactor = Enum.FormFactor.Symmetric
obj166.TopSurface = Enum.SurfaceType.Smooth
obj166.BottomSurface = Enum.SurfaceType.Smooth
obj166.Material = Enum.Material.Metal
obj166.Size = Vector3.new(1, 20.289999, 9.30998993)
obj166.Anchored = true
obj166.BrickColor = BrickColor.new("Medium red")
obj166.Friction = 0.30000001192093
obj166.Shape = Enum.PartType.Block
obj166.Parent = obj1

-- 167 - Part
obj167 = Instance.new("Part")
obj167.CFrame = CFrame.new(Vector3.new(55.8446121, 95.9845963, 35.4225502)) * CFrame.Angles(-0, -0.86897075176239, -0)
obj167.FormFactor = Enum.FormFactor.Symmetric
obj167.TopSurface = Enum.SurfaceType.Smooth
obj167.BottomSurface = Enum.SurfaceType.Smooth
obj167.Material = Enum.Material.Metal
obj167.Size = Vector3.new(1, 20.289999, 9.30998993)
obj167.Anchored = true
obj167.BrickColor = BrickColor.new("Medium red")
obj167.Friction = 0.30000001192093
obj167.Shape = Enum.PartType.Block
obj167.Parent = obj1

-- 168 - Part
obj168 = Instance.new("Part")
obj168.CFrame = CFrame.new(Vector3.new(81.5022354, 96.3546219, 35.8601112)) * CFrame.Angles(-3.1415927410126, -0.70182549953461, -3.1415927410126)
obj168.FormFactor = Enum.FormFactor.Symmetric
obj168.TopSurface = Enum.SurfaceType.Smooth
obj168.BottomSurface = Enum.SurfaceType.Smooth
obj168.Material = Enum.Material.Metal
obj168.Size = Vector3.new(1, 20.289999, 9.30998993)
obj168.Anchored = true
obj168.BrickColor = BrickColor.new("Medium red")
obj168.Friction = 0.30000001192093
obj168.Shape = Enum.PartType.Block
obj168.Parent = obj1

-- 169 - Part
obj169 = Instance.new("Part")
obj169.CFrame = CFrame.new(Vector3.new(68.5622787, 106.483139, 3.73392105)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj169.FormFactor = Enum.FormFactor.Symmetric
obj169.TopSurface = Enum.SurfaceType.Smooth
obj169.BottomSurface = Enum.SurfaceType.Smooth
obj169.Material = Enum.Material.Metal
obj169.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj169.Anchored = true
obj169.BrickColor = BrickColor.new("Medium red")
obj169.Friction = 0.30000001192093
obj169.Shape = Enum.PartType.Block
obj169.Parent = obj1

-- 170 - Part
obj170 = Instance.new("Part")
obj170.CFrame = CFrame.new(Vector3.new(78.2821274, 95.7559357, 3.67432809)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj170.FormFactor = Enum.FormFactor.Symmetric
obj170.TopSurface = Enum.SurfaceType.Smooth
obj170.BottomSurface = Enum.SurfaceType.Smooth
obj170.Material = Enum.Material.Metal
obj170.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj170.Anchored = true
obj170.BrickColor = BrickColor.new("Medium red")
obj170.Friction = 0.30000001192093
obj170.Shape = Enum.PartType.Block
obj170.Parent = obj1

-- 171 - Part
obj171 = Instance.new("Part")
obj171.CFrame = CFrame.new(Vector3.new(58.8424149, 95.8259125, 3.79355192)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj171.FormFactor = Enum.FormFactor.Symmetric
obj171.TopSurface = Enum.SurfaceType.Smooth
obj171.BottomSurface = Enum.SurfaceType.Smooth
obj171.Material = Enum.Material.Metal
obj171.Size = Vector3.new(1, 20.289999, 57.6099892)
obj171.Anchored = true
obj171.BrickColor = BrickColor.new("Medium red")
obj171.Friction = 0.30000001192093
obj171.Shape = Enum.PartType.Block
obj171.Parent = obj1

-- 172 - Part
obj172 = Instance.new("Part")
obj172.CFrame = CFrame.new(Vector3.new(68.5622787, 85.1801224, 3.73392105)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj172.FormFactor = Enum.FormFactor.Symmetric
obj172.TopSurface = Enum.SurfaceType.Smooth
obj172.BottomSurface = Enum.SurfaceType.Smooth
obj172.Material = Enum.Material.Metal
obj172.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj172.Anchored = true
obj172.BrickColor = BrickColor.new("Medium red")
obj172.Friction = 0.30000001192093
obj172.Shape = Enum.PartType.Block
obj172.Parent = obj1

-- 173 - Part
obj173 = Instance.new("Part")
obj173.CFrame = CFrame.new(Vector3.new(16.2140198, 74.0575943, -28.511795)) * CFrame.Angles(-0, 0.70182549953461, -0)
obj173.FormFactor = Enum.FormFactor.Symmetric
obj173.TopSurface = Enum.SurfaceType.Smooth
obj173.BottomSurface = Enum.SurfaceType.Smooth
obj173.Material = Enum.Material.Metal
obj173.Size = Vector3.new(1, 20.289999, 9.30998993)
obj173.Anchored = true
obj173.BrickColor = BrickColor.new("Medium red")
obj173.Friction = 0.30000001192093
obj173.Shape = Enum.PartType.Block
obj173.Parent = obj1

-- 174 - Part
obj174 = Instance.new("Part")
obj174.CFrame = CFrame.new(Vector3.new(16.5447083, 73.6863022, 35.222393)) * CFrame.Angles(-0, -0.86897075176239, -0)
obj174.FormFactor = Enum.FormFactor.Symmetric
obj174.TopSurface = Enum.SurfaceType.Smooth
obj174.BottomSurface = Enum.SurfaceType.Smooth
obj174.Material = Enum.Material.Metal
obj174.Size = Vector3.new(1, 20.289999, 9.30998993)
obj174.Anchored = true
obj174.BrickColor = BrickColor.new("Medium red")
obj174.Friction = 0.30000001192093
obj174.Shape = Enum.PartType.Block
obj174.Parent = obj1

-- 175 - Part
obj175 = Instance.new("Part")
obj175.CFrame = CFrame.new(Vector3.new(42.2023239, 74.0563126, 35.6599541)) * CFrame.Angles(-3.1415927410126, -0.70182549953461, -3.1415927410126)
obj175.FormFactor = Enum.FormFactor.Symmetric
obj175.TopSurface = Enum.SurfaceType.Smooth
obj175.BottomSurface = Enum.SurfaceType.Smooth
obj175.Material = Enum.Material.Metal
obj175.Size = Vector3.new(1, 20.289999, 9.30998993)
obj175.Anchored = true
obj175.BrickColor = BrickColor.new("Medium red")
obj175.Friction = 0.30000001192093
obj175.Shape = Enum.PartType.Block
obj175.Parent = obj1

-- 176 - Part
obj176 = Instance.new("Part")
obj176.CFrame = CFrame.new(Vector3.new(29.2623749, 84.1843262, 3.5337491)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj176.FormFactor = Enum.FormFactor.Symmetric
obj176.TopSurface = Enum.SurfaceType.Smooth
obj176.BottomSurface = Enum.SurfaceType.Smooth
obj176.Material = Enum.Material.Metal
obj176.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj176.Anchored = true
obj176.BrickColor = BrickColor.new("Medium red")
obj176.Friction = 0.30000001192093
obj176.Shape = Enum.PartType.Block
obj176.Parent = obj1

-- 177 - Part
obj177 = Instance.new("Part")
obj177.CFrame = CFrame.new(Vector3.new(38.9822159, 73.4576111, 3.47415495)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj177.FormFactor = Enum.FormFactor.Symmetric
obj177.TopSurface = Enum.SurfaceType.Smooth
obj177.BottomSurface = Enum.SurfaceType.Smooth
obj177.Material = Enum.Material.Metal
obj177.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj177.Anchored = true
obj177.BrickColor = BrickColor.new("Medium red")
obj177.Friction = 0.30000001192093
obj177.Shape = Enum.PartType.Block
obj177.Parent = obj1

-- 178 - Part
obj178 = Instance.new("Part")
obj178.CFrame = CFrame.new(Vector3.new(19.5425091, 73.5276031, 3.59337997)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj178.FormFactor = Enum.FormFactor.Symmetric
obj178.TopSurface = Enum.SurfaceType.Smooth
obj178.BottomSurface = Enum.SurfaceType.Smooth
obj178.Material = Enum.Material.Metal
obj178.Size = Vector3.new(1, 20.289999, 57.6099892)
obj178.Anchored = true
obj178.BrickColor = BrickColor.new("Medium red")
obj178.Friction = 0.30000001192093
obj178.Shape = Enum.PartType.Block
obj178.Parent = obj1

-- 179 - Part
obj179 = Instance.new("Part")
obj179.CFrame = CFrame.new(Vector3.new(29.2623749, 62.8818321, 3.5337491)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj179.FormFactor = Enum.FormFactor.Symmetric
obj179.TopSurface = Enum.SurfaceType.Smooth
obj179.BottomSurface = Enum.SurfaceType.Smooth
obj179.Material = Enum.Material.Metal
obj179.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj179.Anchored = true
obj179.BrickColor = BrickColor.new("Medium red")
obj179.Friction = 0.30000001192093
obj179.Shape = Enum.PartType.Block
obj179.Parent = obj1

-- 180 - Part
obj180 = Instance.new("Part")
obj180.CFrame = CFrame.new(Vector3.new(-10.3687744, 50.7555466, -96.6592941)) * CFrame.Angles(-3.1415927410126, 1.4134237766266, -3.1415927410126)
obj180.FormFactor = Enum.FormFactor.Symmetric
obj180.TopSurface = Enum.SurfaceType.Smooth
obj180.BottomSurface = Enum.SurfaceType.Smooth
obj180.Material = Enum.Material.Metal
obj180.Size = Vector3.new(1, 20.289999, 9.30998993)
obj180.Anchored = true
obj180.BrickColor = BrickColor.new("Sand blue")
obj180.Friction = 0.30000001192093
obj180.Shape = Enum.PartType.Block
obj180.Parent = obj1

-- 181 - Part
obj181 = Instance.new("Part")
obj181.CFrame = CFrame.new(Vector3.new(44.3213196, 50.3842392, -63.9311295)) * CFrame.Angles(-0, 0.1573728621006, -0)
obj181.FormFactor = Enum.FormFactor.Symmetric
obj181.TopSurface = Enum.SurfaceType.Smooth
obj181.BottomSurface = Enum.SurfaceType.Smooth
obj181.Material = Enum.Material.Metal
obj181.Size = Vector3.new(1, 20.289999, 9.30998993)
obj181.Anchored = true
obj181.BrickColor = BrickColor.new("Sand blue")
obj181.Friction = 0.30000001192093
obj181.Shape = Enum.PartType.Block
obj181.Parent = obj1

-- 182 - Part
obj182 = Instance.new("Part")
obj182.CFrame = CFrame.new(Vector3.new(57.9849854, 50.7542686, -85.6521835)) * CFrame.Angles(-0, -1.4134237766266, -0)
obj182.FormFactor = Enum.FormFactor.Symmetric
obj182.TopSurface = Enum.SurfaceType.Smooth
obj182.BottomSurface = Enum.SurfaceType.Smooth
obj182.Material = Enum.Material.Metal
obj182.Size = Vector3.new(1, 20.289999, 9.30998993)
obj182.Anchored = true
obj182.BrickColor = BrickColor.new("Sand blue")
obj182.Friction = 0.30000001192093
obj182.Shape = Enum.PartType.Block
obj182.Parent = obj1

-- 183 - Part
obj183 = Instance.new("Part")
obj183.CFrame = CFrame.new(Vector3.new(23.8016739, 60.8857841, -91.2229996)) * CFrame.Angles(-0, 1.0324720144272, -0)
obj183.FormFactor = Enum.FormFactor.Symmetric
obj183.TopSurface = Enum.SurfaceType.Smooth
obj183.BottomSurface = Enum.SurfaceType.Smooth
obj183.Material = Enum.Material.Metal
obj183.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj183.Anchored = true
obj183.BrickColor = BrickColor.new("Sand blue")
obj183.Friction = 0.30000001192093
obj183.Shape = Enum.PartType.Block
obj183.Parent = obj1

-- 184 - Part
obj184 = Instance.new("Part")
obj184.CFrame = CFrame.new(Vector3.new(28.7850876, 50.1555672, -99.5683365)) * CFrame.Angles(-0, 1.0324720144272, -0)
obj184.FormFactor = Enum.FormFactor.Symmetric
obj184.TopSurface = Enum.SurfaceType.Smooth
obj184.BottomSurface = Enum.SurfaceType.Smooth
obj184.Material = Enum.Material.Metal
obj184.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj184.Anchored = true
obj184.BrickColor = BrickColor.new("Sand blue")
obj184.Friction = 0.30000001192093
obj184.Shape = Enum.PartType.Block
obj184.Parent = obj1

-- 185 - Part
obj185 = Instance.new("Part")
obj185.CFrame = CFrame.new(Vector3.new(18.8182831, 50.2255402, -82.8776627)) * CFrame.Angles(-0, 1.0324720144272, -0)
obj185.FormFactor = Enum.FormFactor.Symmetric
obj185.TopSurface = Enum.SurfaceType.Smooth
obj185.BottomSurface = Enum.SurfaceType.Smooth
obj185.Material = Enum.Material.Metal
obj185.Size = Vector3.new(1, 20.289999, 57.6099892)
obj185.Anchored = true
obj185.BrickColor = BrickColor.new("Sand blue")
obj185.Friction = 0.30000001192093
obj185.Shape = Enum.PartType.Block
obj185.Parent = obj1

-- 186 - Part
obj186 = Instance.new("Part")
obj186.CFrame = CFrame.new(Vector3.new(23.8016739, 39.5797272, -91.2229996)) * CFrame.Angles(-0, 1.0324720144272, -0)
obj186.FormFactor = Enum.FormFactor.Symmetric
obj186.TopSurface = Enum.SurfaceType.Smooth
obj186.BottomSurface = Enum.SurfaceType.Smooth
obj186.Material = Enum.Material.Metal
obj186.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj186.Anchored = true
obj186.BrickColor = BrickColor.new("Sand blue")
obj186.Friction = 0.30000001192093
obj186.Shape = Enum.PartType.Block
obj186.Parent = obj1

-- 187 - Part
obj187 = Instance.new("Part")
obj187.CFrame = CFrame.new(Vector3.new(55.2139282, 50.7559166, -28.6115799)) * CFrame.Angles(-0, 0.70182549953461, -0)
obj187.FormFactor = Enum.FormFactor.Symmetric
obj187.TopSurface = Enum.SurfaceType.Smooth
obj187.BottomSurface = Enum.SurfaceType.Smooth
obj187.Material = Enum.Material.Metal
obj187.Size = Vector3.new(1, 20.289999, 9.30998993)
obj187.Anchored = true
obj187.BrickColor = BrickColor.new("Medium red")
obj187.Friction = 0.30000001192093
obj187.Shape = Enum.PartType.Block
obj187.Parent = obj1

-- 188 - Part
obj188 = Instance.new("Part")
obj188.CFrame = CFrame.new(Vector3.new(55.5446167, 50.3846016, 35.1225548)) * CFrame.Angles(-0, -0.86897075176239, -0)
obj188.FormFactor = Enum.FormFactor.Symmetric
obj188.TopSurface = Enum.SurfaceType.Smooth
obj188.BottomSurface = Enum.SurfaceType.Smooth
obj188.Material = Enum.Material.Metal
obj188.Size = Vector3.new(1, 20.289999, 9.30998993)
obj188.Anchored = true
obj188.BrickColor = BrickColor.new("Medium red")
obj188.Friction = 0.30000001192093
obj188.Shape = Enum.PartType.Block
obj188.Parent = obj1

-- 189 - Part
obj189 = Instance.new("Part")
obj189.CFrame = CFrame.new(Vector3.new(81.2022324, 50.7546272, 35.5601158)) * CFrame.Angles(-3.1415927410126, -0.70182549953461, -3.1415927410126)
obj189.FormFactor = Enum.FormFactor.Symmetric
obj189.TopSurface = Enum.SurfaceType.Smooth
obj189.BottomSurface = Enum.SurfaceType.Smooth
obj189.Material = Enum.Material.Metal
obj189.Size = Vector3.new(1, 20.289999, 9.30998993)
obj189.Anchored = true
obj189.BrickColor = BrickColor.new("Medium red")
obj189.Friction = 0.30000001192093
obj189.Shape = Enum.PartType.Block
obj189.Parent = obj1

-- 190 - Part
obj190 = Instance.new("Part")
obj190.CFrame = CFrame.new(Vector3.new(68.2622833, 60.8831367, 3.43392611)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj190.FormFactor = Enum.FormFactor.Symmetric
obj190.TopSurface = Enum.SurfaceType.Smooth
obj190.BottomSurface = Enum.SurfaceType.Smooth
obj190.Material = Enum.Material.Metal
obj190.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj190.Anchored = true
obj190.BrickColor = BrickColor.new("Medium red")
obj190.Friction = 0.30000001192093
obj190.Shape = Enum.PartType.Block
obj190.Parent = obj1

-- 191 - Part
obj191 = Instance.new("Part")
obj191.CFrame = CFrame.new(Vector3.new(77.9821243, 50.1559296, 3.37432504)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj191.FormFactor = Enum.FormFactor.Symmetric
obj191.TopSurface = Enum.SurfaceType.Smooth
obj191.BottomSurface = Enum.SurfaceType.Smooth
obj191.Material = Enum.Material.Metal
obj191.Size = Vector3.new(1, 20.4899998, 57.6099892)
obj191.Anchored = true
obj191.BrickColor = BrickColor.new("Medium red")
obj191.Friction = 0.30000001192093
obj191.Shape = Enum.PartType.Block
obj191.Parent = obj1

-- 192 - Part
obj192 = Instance.new("Part")
obj192.CFrame = CFrame.new(Vector3.new(58.5424194, 50.2259064, 3.49355698)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj192.FormFactor = Enum.FormFactor.Symmetric
obj192.TopSurface = Enum.SurfaceType.Smooth
obj192.BottomSurface = Enum.SurfaceType.Smooth
obj192.Material = Enum.Material.Metal
obj192.Size = Vector3.new(1, 20.289999, 57.6099892)
obj192.Anchored = true
obj192.BrickColor = BrickColor.new("Medium red")
obj192.Friction = 0.30000001192093
obj192.Shape = Enum.PartType.Block
obj192.Parent = obj1

-- 193 - Part
obj193 = Instance.new("Part")
obj193.CFrame = CFrame.new(Vector3.new(68.2622833, 39.5801201, 3.43392611)) * CFrame.Angles(-0, 0.0061290394514799, -0)
obj193.FormFactor = Enum.FormFactor.Symmetric
obj193.TopSurface = Enum.SurfaceType.Smooth
obj193.BottomSurface = Enum.SurfaceType.Smooth
obj193.Material = Enum.Material.Metal
obj193.Size = Vector3.new(20.4400158, 1, 57.6099892)
obj193.Anchored = true
obj193.BrickColor = BrickColor.new("Medium red")
obj193.Friction = 0.30000001192093
obj193.Shape = Enum.PartType.Block
obj193.Parent = obj1

-- 194 - Skytype
obj194 = Instance.new("StringValue")
obj194.Name = "Skytype"
obj194.Parent = obj1

-- 195 - AllowFlare
obj195 = Instance.new("IntValue")
obj195.Name = "AllowFlare"
obj195.Parent = obj1

-- 196 - Creator
obj196 = Instance.new("StringValue")
obj196.Name = "Creator"
obj196.Parent = obj1


obj1:MakeJoints()


--Made by uSukDude


amount=16
speeds={30,61}
limits={
	Vector3.new(-3000,600,-3000),
	Vector3.new(3000,700,3000)
}
cloudname="Cumulus"				--put a cloud that you want it to clone into lighting and enter it's name here, or this script will generate one for you.
cloudsgroupname="Clouds"
releasecooldown=5
rotatedclouds=true		--If you want the clouds all facing the same direction, set this to false. True will randomly rotate them.





rate=1/30
lastrelease=0
debris=game:GetService("Debris")

local clouds=script.Parent:FindFirstChild(cloudsgroupname) or Instance.new("Model",script.Parent)
clouds.Name=cloudsgroupname



function generatecloud()
	local p=Instance.new("Part")
	p.Name=cloudname
	p.Transparency=.7
	p.BrickColor=BrickColor.new("Institutional white")
	p.formFactor="Custom"
	p.Size=Vector3.new(0,0,0)
	p.TopSurface="Smooth"
	p.BottomSurface="Smooth"
	p.Anchored=true
	p.CanCollide=false
	local m=Instance.new("SpecialMesh")
	m.MeshId="http://www.roblox.com/asset/?id=111820358"
	m.TextureId=""
	m.Scale=Vector3.new(math.random(1000,1300),math.random(500,700),math.random(1000,1300))
	m.Parent=p
	return p
end
function createcloud(pos)
	local clonecloud=game.Lighting:FindFirstChild(cloudname)
	local newcloud=(clonecloud and clonecloud:clone()) or generatecloud()
	newcloud.CFrame=CFrame.new(pos)
	if rotatedclouds then
		newcloud.CFrame=newcloud.CFrame*CFrame.Angles(0,math.pi*2*math.random(),0)
	end
	newcloud.Name="CloudSpeed"..tostring(math.random(speeds[1],speeds[2]))
	debris:AddItem(newcloud,7*60)
	newcloud.Transparency=1
	newcloud.Parent=clouds
end


local gc=clouds:GetChildren()	--creates initial population
local missing=amount-#gc
if missing>0 then
	for i=1,missing do
		createcloud(Vector3.new(math.random(limits[1].x,limits[2].x),math.random(limits[1].y,limits[2].y),math.random(limits[1].z,limits[2].z)))
	end
end


while true do
	local t1,t2=wait(rate)
	local gc=clouds:GetChildren()
	if #gc<amount and lastrelease<t2 then
		lastrelease=t2+releasecooldown
		createcloud(Vector3.new(math.random(limits[1].x,limits[2].x),math.random(limits[1].y,limits[2].y),limits[2].z))
	end
	for i,v in pairs(gc) do
		local speed=string.sub(v.Name,11)
		v.CFrame=v.CFrame+Vector3.new(0,0,-speed*rate)
		if v.Position.z<limits[1].z then
			v.Transparency=v.Transparency+(rate/3)
			if v.Transparency>1 then
				v:remove()
			end
		elseif v.Transparency>0.5 then
			v.Transparency=v.Transparency-(rate/3)
			if v.Transparency<0.5 then
				v.Transparency=0.5
			end
		end
	end
end