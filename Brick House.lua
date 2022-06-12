function _G.MakeBrickHouse(xOffset, yOffset, zOffset, xScale, yScale, zScale, anchored)
	xScale = xScale * 4
	yScale = yScale * 2
	zScale = zScale * 4
	house = Instance.new("Model")
	house.Name = "House"
	house.Parent = Workspace
	p = Instance.new("Part")
	p.Name = "Floor"
	p.FormFactor = 0
	p.Size = Vector3.new(xScale + 2, 1, zScale + 2)
	p.CFrame = CFrame.new(Vector3.new(xOffset, yOffset, zOffset))
	p.Anchored = true
	p.BrickColor = BrickColor.new("Pastel brown")
	p.Parent = house
	p:MakeJoints()
	local p1 = nil
	local p2 = nil
	for x = 2 - 0.5, yScale - 0.5, 2 do
		for i = 1, xScale - 2, 4 do
			p2 = p1
			p1 = Instance.new("Part")
			p1.Name = "Wall"
			p1.FormFactor = 0
			p1.Size = Vector3.new(4, 2, 2)
			p1.CFrame = CFrame.new(Vector3.new(xOffset + (i - (xScale / 2)), yOffset + x, zOffset + (zScale / 2)))
			p1.Anchored = true
			p1.BrickColor = BrickColor.new("Pastel brown")
			p1.Parent = house
			p1:MakeJoints()
			if (x == 1.5 or x == 3.5 or x == 5.5) and i == ((xScale - 2) / 2) then p1:Remove() end
		end
		for i = zScale - 1, 1, -4 do
			p2 = p1
			p1 = Instance.new("Part")
			p1.Name = "Wall"
			p1.FormFactor = 0
			p1.Size = Vector3.new(2, 2, 4)
			p1.CFrame = CFrame.new(Vector3.new(xOffset + (xScale / 2), yOffset + x, zOffset + (i - (zScale / 2))))
			p1.Anchored = true
			p1.BrickColor = BrickColor.new("Pastel brown")
			p1.Parent = house
			p1:MakeJoints()
		end
		for i = xScale - 1, 1, -4 do
			p2 = p1
			p1 = Instance.new("Part")
			p1.Name = "Wall"
			p1.FormFactor = 0
			p1.Size = Vector3.new(4, 2, 2)
			p1.CFrame = CFrame.new(Vector3.new(xOffset + (i - (xScale / 2)), yOffset + x, zOffset - (zScale / 2)))
			p1.Anchored = true
			p1.BrickColor = BrickColor.new("Pastel brown")
			p1.Parent = house
			p1:MakeJoints()
		end
		for i = 1, zScale - 2, 4 do
			p2 = p1
			p1 = Instance.new("Part")
			p1.Name = "Wall"
			p1.FormFactor = 0
			p1.Size = Vector3.new(2, 2, 4)
			p1.CFrame = CFrame.new(Vector3.new(xOffset - (xScale / 2), yOffset + x, zOffset + (i - (zScale / 2))))
			p1.Anchored = true
			p1.BrickColor = BrickColor.new("Pastel brown")
			p1.Parent = house
			p1:MakeJoints()
		end
	end
	p = Instance.new("Part")
	p.Name = "Ceiling"
	p.Size = Vector3.new(xScale + 2, 1, zScale + 2)
	p.CFrame = CFrame.new(Vector3.new(xOffset, yOffset + yScale + 1.1, zOffset))
	p.Anchored = true
	p.BrickColor = BrickColor.new("Bright red")
	p.Parent = house
	p:MakeJoints()
	if anchored == false then
		Children = house:GetChildren()
		for i = 1, #Children do
			Children[i].Anchored = false
		end
	end
	return house
end


_G.MakeBrickHouse(100, 1, 0, 7, 5, 7, false)