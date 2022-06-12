me = game.Players.LocalPlayer
char = me.Character
local par = char.Parent
cam = workspace.CurrentCamera

parts = {{}, {}}


for i = 5, 105, 10 do
	local p = Instance.new("Part")
	p.Anchored = true
	p.formFactor = "Custom"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.BrickColor = BrickColor.new("White")
	p.Size = Vector3.new(0.2, 0.2, 0.2)
	p.Transparency = 0.65
	p.Parent = cam
	local m = Instance.new("BlockMesh",p)
	m.Scale = Vector3.new(5000*5, 5000*5, 5)
	table.insert(parts[1], {p, i})
end

for i = -95, 105, 10 do
	local p = Instance.new("Part")
	p.Anchored = true
	p.formFactor = "Custom"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.BrickColor = BrickColor.new("White")
	p.Size = Vector3.new(0.2, 0.2, 0.2)
	p.Transparency = 0.65
	p.Parent = cam
	local m = Instance.new("BlockMesh",p)
	m.Scale = Vector3.new(5, 5000*5, 5000*5)
	table.insert(parts[2], {p, i})
end

char.Changed:connect(function()
	if char.Parent ~= par then
		for _,v in pairs(parts) do
			v[1]:remove()
		end
	end
end)

while true do
	wait()
	for _,v in pairs(parts[1]) do
		v[1].CFrame = cam.CoordinateFrame * CFrame.new(0, 0, -v[2])
	end
	for _,v in pairs(parts[2]) do
		v[1].CFrame = cam.CoordinateFrame * CFrame.new(-v[2], 0, 0)
	end
end
