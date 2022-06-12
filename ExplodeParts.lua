function ExplodePart(Part)
	Part.Anchored = true
	Part.Transparency = 0.5
	local Fragment = Instance.new("Part")
	Fragment.Anchored = true
	Fragment.TopSurface = 0
	Fragment.BottomSurface = 0
	Fragment.BrickColor = Part.BrickColor
	Fragment.Transparency = 0.8
	Fragment.FormFactor = "Custom"
	Fragment.Size = Vector3.new(1, 1, 1)
	for x = math.ceil(-Part.Size.x / 2), math.ceil(Part.Size.x / 2) do
		for y = math.ceil(-Part.Size.y / 2), math.ceil(Part.Size.y / 2) do
			for z = math.ceil(-Part.Size.z / 2), math.ceil(Part.Size.z / 2) do
				local Fragment2 = Fragment:Clone()
				Fragment2.CFrame = Part.CFrame * CFrame.new(x, y, z)
				Fragment2.Parent = Workspace
			end
		end
	end
	--Part:Remove()
end

local DERP = Instance.new("Part", Workspace)
for _, p in pairs(game.Players:GetChildren()) do
	if p.Character ~= nil then
		for _, z in pairs(p.Character:GetChildren()) do
			pcall(function() ExplodePart(z) end)
		end
	end
end