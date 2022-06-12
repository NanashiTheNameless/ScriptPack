local xSize = 100
local ySizeMin = 20
local ySizeMax = 200
local zSize = 100
local xScale = 25
local zScale = 25


xScale = xScale * xSize
zScale = zScale * zSize


local Grid = Instance.new("Model")
Grid.Name = "City Grid"
Grid.Parent = Workspace


for x = -xScale / 2, xScale / 2, xSize do
	for z = -zScale / 2, zScale / 2, zSize do
		local size = math.ceil(math.random(ySizeMin, ySizeMax))
		local p = Instance.new("Part")
		p.Locked = true
		p.Name = "(" ..x.. ", " ..z.. ") Building"
		p.Anchored = true
		p.FormFactor = 0
		p.Size = Vector3.new(xSize, size, zSize)
		p.CFrame = CFrame.new(x, 2 + (size / 2), z)
		p.BrickColor = BrickColor.random()
		p.Parent = Grid
		wait()
	end
end


for x = -xScale / 2, xScale / 2, xSize do
	if math.random(1, 3) == 1 then
		for z = -zScale / 2, zScale / 2, zSize do
			for _, p in pairs(Grid:GetChildren()) do
				if p.Name == "(" ..x.. ", " ..z.. ") Building" then
					p:Remove()
				end
			end
			local p = Instance.new("Part")
			p.Locked = true
			p.Name = "(" ..x.. ", " ..z.. ") Road"
			p.Anchored = true
			p.FormFactor = 0
			p.Size = Vector3.new(xSize, 1, zSize)
			p.CFrame = CFrame.new(x, 2, z)
			p.BrickColor = BrickColor.new("Really black")
			p.Parent = Grid
			wait()
		end
	end
end


for z = -zScale / 2, zScale / 2, zSize do
	if math.random(1, 3) == 1 then
		for x = -xScale / 2, xScale / 2, xSize do
			for _, p in pairs(Grid:GetChildren()) do
				if p.Name == "(" ..x.. ", " ..z.. ") Building" or p.Name == "(" ..x.. ", " ..z.. ") Road" then
					p:Remove()
				end
			end
			local p = Instance.new("Part")
			p.Locked = true
			p.Name = "(" ..x.. ", " ..z.. ") Road"
			p.Anchored = true
			p.FormFactor = 0
			p.Size = Vector3.new(xSize, 1, zSize)
			p.CFrame = CFrame.new(x, 2, z)
			p.BrickColor = BrickColor.new("Really black")
			p.Parent = Grid
			wait()
		end
	end
end