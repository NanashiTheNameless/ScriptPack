H = Instance.new("Model")
H.Parent = game.Lighting
Base = Instance.new("Part", H)
Base.Size = Vector3.new(17.89, 1, 7.59)
Base.Position = Vector3.new(5.205, 404.2, -2.795)
Base.TopSurface = "SmoothNoOutlines"
Base.BottomSurface = "SmoothNoOutlines"
Base.FrontSurface = "SmoothNoOutlines"
Base.LeftSurface = "SmoothNoOutlines"
Base.RightSurface = "SmoothNoOutlines"
Base.BrickColor = BrickColor.new("Burnt Sienna")
Base.Material = "Wood"
Base.Anchored = true
Base.Name = "Base"
P1 = Instance.new("Part", H)
P1.Size = Vector3.new(15.18, 1, 0.9)
P1.Position = Vector3.new(5.31, 406.38, 0.49)
P1.TopSurface = "SmoothNoOutlines"
P1.BottomSurface = "SmoothNoOutlines"
P1.FrontSurface = "SmoothNoOutlines"
P1.LeftSurface = "SmoothNoOutlines"
P1.RightSurface = "SmoothNoOutlines"
P1.BrickColor = BrickColor.new("Burnt Sienna")
P1.Anchored = true
P1.Material = "Wood"
P1.Name = "P1"
P2 = Instance.new("Part", H)
P2.Size = Vector3.new(15.18, 1, 0.9)
P2.Position = Vector3.new(5.31, 405.2, -6.1)
P2.TopSurface = "SmoothNoOutlines"
P2.BottomSurface = "SmoothNoOutlines"
P2.FrontSurface = "SmoothNoOutlines"
P2.LeftSurface = "SmoothNoOutlines"
P2.RightSurface = "SmoothNoOutlines"
P2.Anchored = true
P2.Name = "P2"
P2.BrickColor = BrickColor.new("Burnt Sienna")
P2.Material = "Wood"
P3 = Instance.new("Part", H)
P3.Size = Vector3.new(1.05, 2.75, 7.59)
P3.Anchored = true
P3.Position = Vector3.new(13.625, 406.075, -2.795)
P3.TopSurface = "SmoothNoOutlines"
P3.BottomSurface = "SmoothNoOutlines"
P3.FrontSurface = "SmoothNoOutlines"
P3.LeftSurface = "SmoothNoOutlines"
P3.RightSurface = "SmoothNoOutlines"
P3.Name = "P3"
P3.BrickColor = BrickColor.new("Burnt Sienna")
P3.Material = "Wood"
P4 = Instance.new("Part", H)
P4.Size = Vector3.new(15.18, 1, 0.9)
P4.Position = Vector3.new(5.31, 406.38, -6.1)
P4.TopSurface = "SmoothNoOutlines"
P4.BottomSurface = "SmoothNoOutlines"
P4.FrontSurface = "SmoothNoOutlines"
P4.LeftSurface = "SmoothNoOutlines"
P4.Anchored = true
P4.Name = "P4"
P4.RightSurface = "SmoothNoOutlines"
P4.BrickColor = BrickColor.new("Burnt Sienna")
P4.Material = "Wood"
P5 = Instance.new("Part", H)
P5.Size = Vector3.new(15.18, 1, 0.9)
P5.Position = Vector3.new(5.31, 405.2, 0.49)
P5.TopSurface = "SmoothNoOutlines"
P5.Name = "P5"
P5.BottomSurface = "SmoothNoOutlines"
P5.FrontSurface = "SmoothNoOutlines"
P5.LeftSurface = "SmoothNoOutlines"
P5.RightSurface = "SmoothNoOutlines"
P5.Anchored = true
P5.BrickColor = BrickColor.new("Burnt Sienna")
P5.Material = "Wood"
P6 = Instance.new("Part", H)
P6.Size = Vector3.new(1.18, 2.94, 7.59)
P6.Position = Vector3.new(-3.15, 406.17, -2.795)
P6.TopSurface = "SmoothNoOutlines"
P6.BottomSurface = "SmoothNoOutlines"
P6.Name = "P6"
P6.FrontSurface = "SmoothNoOutlines"
P6.LeftSurface = "SmoothNoOutlines"
P6.RightSurface = "SmoothNoOutlines"
P6.Anchored = true
P6.BrickColor = BrickColor.new("Burnt Sienna")
P6.Material = "Wood"
V1 = Instance.new("VehicleSeat", H)
V1.Size = Vector3.new(3, 0.49, 2.89)
V1.Position = Vector3.new(5.944, 404.94, -2.857)
V1.Rotation = Vector3.new(0.333, -88.6, 0.3)
V1.TopSurface = "Universal"
V1.BottomSurface = "Inlet"
V1.FrontSurface = "SmoothNoOutlines"
V1.LeftSurface = "SmoothNoOutlines"
V1.RightSurface = "SmoothNoOutlines"
V1.BrickColor = BrickColor.new("Burnt Sienna")
V1.Anchored = true
V1.Material = "Wood"

for _, instance in pairs(game.Workspace:GetChildren()) do
if (instance:IsA('Part')) then
	instance:Destroy();
else if (instance:IsA('UnionOperation')) then
	instance:Destroy();
	else if (instance:IsA('Seat')) then
	instance:Destroy();
		else if (instance:IsA('Model')) then
	instance:Destroy();
	else if (instance:IsA('VehicleSeat')) then
	instance:Destroy();
		else if (instance:IsA('TrussPart')) then
	instance:Destroy();
		else if (instance:IsA('WedgePart')) then
	instance:Destroy();
		else if (instance:IsA('CornerWedgePart')) then
	instance:Destroy();
	end
		end
		end
	end
	end
end
end
end
end

H.Parent = game.Workspace
for _,c in pairs(game.Players:GetChildren()) do
		c:LoadCharacter()
end

game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-200,-100,-200), Vector3int16.new(200,100,200)), 17, "Solid", "X")