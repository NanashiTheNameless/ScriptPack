function onClicked()
	if doorOpen == false then
		doorOpen = true
		Children = house:GetChildren()
		for i = 1, #Children do
			if Children[i].Name == "Door" then
				Children[i].Transparency = 1
				Children[i].CanCollide = false
			end
		end
		delay(1, function()
		Children = house:GetChildren()
		for i = 1, #Children do
			if Children[i].Name == "Door" then
				Children[i].Transparency = 0
				Children[i].CanCollide = true
			end
		end
		doorOpen = false
		end)
	end
end


function Weld(source, targetDir, targetPart)
	if source == nil then return false end
	if targetPart ~= nil then
		local Weld = Instance.new("Weld")
		Weld.Name = "Easy Weld"
		Weld.Part0 = source
		Weld.Part1 = targetPart
		Weld.C0 = source.CFrame:inverse()
		Weld.C1 = targetPart.CFrame:inverse()
		Weld.Parent = source
	elseif targetDir ~= nil then
		local targetDirChildren = targetDir:GetChildren()
		for i = 1, #targetDirChildren do
			if targetDirChildren[i].ClassName == "Part" then
				local Weld = Instance.new("Weld")
				Weld.Name = "Easy Weld"
				Weld.Part0 = source
				Weld.Part1 = targetDirChildren[i]
				Weld.C0 = source.CFrame:inverse()
				Weld.C1 = targetDirChildren[i].CFrame:inverse()
				Weld.Parent = source
			end
		end
	else
		return false
	end
	return true
end


xOffset = 0
yOffset = 100
zOffset = 50
spacing = 4
xScale = 25
yScale = 10
zScale = 25
anchored = false
doorOpen = false
house = Instance.new("Model")
house.Name = "House"
house.Parent = game.Workspace
p = Instance.new("Part")
p.Name = "Floor"
p.Size = Vector3.new((xScale * 2) + 1, 1, (zScale * 2) + 1)
p.CFrame = CFrame.new(Vector3.new(xOffset, yOffset - (yScale / 2), zOffset))
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.BrickColor = BrickColor.new("Dark stone grey")
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Parent = p
p.Parent = house
for i = 0, 345, 1 * spacing do
	p = Instance.new("Part")
	p.Name = "Wall"
	p.Size = Vector3.new(math.ceil(spacing / 2), yScale, 1)
	p.CFrame = CFrame.new(Vector3.new(xOffset + math.sin(math.rad(i)) * xScale, yOffset, zOffset + math.cos(math.rad(i)) * zScale)) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
	p.Anchored = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.BrickColor = BrickColor.new("Really black")
	p.Parent = house
end
for i = 346, 360, 1 * spacing do
	p = Instance.new("Part")
	p.Name = "Door"
	p.Size = Vector3.new(math.ceil(spacing / 2), yScale, 1)
	p.CFrame = CFrame.new(Vector3.new(xOffset + math.sin(math.rad(i)) * xScale, yOffset, zOffset + math.cos(math.rad(i)) * zScale)) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
	p.Anchored = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.BrickColor = BrickColor.new("Dark stone grey")
	m = Instance.new("SpecialMesh")
	m.Scale = Vector3.new(1, 0.99, 0.75)
	m.MeshType = "Brick"
	m.Parent = p
	p.Parent = house
	Instance.new("ClickDetector").Parent = p
	p.ClickDetector.MouseClick:connect(onClicked)
	p.ClickDetector.MaxActivationDistance = 10
end
p = Instance.new("Part")
p.Name = "Ceiling"
p.Size = Vector3.new((xScale * 2) + 1, 1, (zScale * 2) + 1)
p.CFrame = CFrame.new(Vector3.new(xOffset, yOffset + (yScale / 2), zOffset))
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.BrickColor = BrickColor.new("Dark stone grey")
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Parent = p
p.Parent = house
Weld(house.Floor, house)
if anchored == false then
	Children = house:GetChildren()
	for i = 1, #Children do
		Children[i].Anchored = false
	end
end