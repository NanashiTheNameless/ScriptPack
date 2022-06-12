local top = 500 * 2
local width = 100

for i = 0, top, 2 do
	if i ~= top and i ~= top - 2 then
		local p = Instance.new("Part", Workspace)
		p.FormFactor = "Custom"
		p.Size = Vector3.new(width, 2, 2)
		p.Anchored = true
		p.CFrame = CFrame.new(0, i, i)
		--p.BrickColor = BrickColor.new(Color3.new(math.random(1, 255) / 255, math.random(1, 255) / 255, math.random(1, 255) / 255))
		p.BrickColor = BrickColor.new(Color3.new(i / top, 0, 0))
		p.BrickColor = BrickColor.new("Really black")
		p.TopSurface = 0
		p.BottomSurface = 0
		if math.random(1, 25) == 1 then
			coroutine.resume(coroutine.create(function()
				while p.Parent ~= nil do
					p.BrickColor = BrickColor.new("Really red")
					wait(0.05)
					p.BrickColor = BrickColor.new("Really black")
					wait(0.05)
				end
			end))
			p.Touched:connect(function(hit) hit:BreakJoints() end)
		end
	else
		local p = Instance.new("SpawnLocation", Workspace)
		p.Size = Vector3.new(width / 2, 4, 4)
		p.Anchored = true
		p.CFrame = CFrame.new(width / 4, i, i)
		p.BrickColor = BrickColor.new("Bright green")
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Touched:connect(function(hit) pcall(function() hit.Parent.Torso.Velocity = Vector3.new(0, 0, -25) hit.Parent.Humanoid.PlatformStand = true end) end)
		local m = Instance.new("SpecialMesh", p)
		m.MeshType = "Brick"
		m.Scale = Vector3.new((width / 2) / p.Size.x, 1, 1)
		local p = Instance.new("SpawnLocation", Workspace)
		p.Size = Vector3.new(width / 2, 4, 4)
		p.Anchored = true
		p.CFrame = CFrame.new(-width / 4, i, i)
		p.BrickColor = BrickColor.new("Bright green")
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Touched:connect(function(hit) pcall(function() hit.Parent.Torso.Velocity = Vector3.new(0, 0, -25) hit.Parent.Humanoid.PlatformStand = true end) end)
		local m = Instance.new("SpecialMesh", p)
		m.MeshType = "Brick"
		m.Scale = Vector3.new((width / 2) / p.Size.x, 1, 1)
		break
	end
	wait()
end

local p = Instance.new("Part", Workspace)
p.FormFactor = "Custom"
p.Size = Vector3.new(2, top * 2, top + 2)
p.Anchored = true
p.Transparency = 0.5
p.CFrame = CFrame.new(width / 2, top, top / 2)
p.BrickColor = BrickColor.new("Institutional white")

local p = Instance.new("Part", Workspace)
p.FormFactor = "Custom"
p.Size = Vector3.new(2, top * 2, top + 2)
p.Anchored = true
p.Transparency = 0.5
p.CFrame = CFrame.new(-width / 2, top, top / 2)
p.BrickColor = BrickColor.new("Institutional white")

local p = Instance.new("Part", Workspace)
p.FormFactor = "Custom"
p.Size = Vector3.new(width + 2, top * 2, 2)
p.Anchored = true
p.Transparency = 0.5
p.CFrame = CFrame.new(0, top, top + 2)
p.BrickColor = BrickColor.new("Institutional white")

Workspace:BreakJoints()