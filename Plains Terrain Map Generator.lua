math.randomseed(tick() * math.random())

map = {}

gradualCreation = true

size = 100
frequency = 1
raiseFactor = math.random()/4

chunkBreadth = 20
maxHeight = 150

waterLevel = 0.1

sand = 1
grass = 2
earth = 3
bland = 4

holder = Instance.new("Model", workspace)
holder.Name = "map_holder"

ranges = {
	[sand] = {
		color = "Cashmere",
		range = 0.2,
	},
	[grass] = {
		color = "Camo",
		range = 0.3
	},
	[earth] = {
		color = "Dirt brown",
		range = 0.5
	},
	[bland] = {
		color = "Dark stone grey",
		range = 1
	};
}

function getColorFromRange(h)
	local overall = 0
	for _, field in ipairs(ranges) do
		overall = overall + field.range
		if h <= overall then
			return field.color
		end
	end
	return ranges[#ranges].color
end

function get_noise(x, y)
	local nx = frequency * x/size - 0.5
	local ny = frequency * y/size - 0.5
	return math.pow(math.abs(
		math.noise(nx, ny) +
		math.noise(2 * nx, 2 * ny) * 0.5 +
		math.noise(4 * nx, 4 * ny) * 0.25
	), 1 - raiseFactor)
end

function placeChunk(atpx, atpy, atpz, color, name)
	local p = Instance.new("Part", holder)
	p.TopSurface, p.BottomSurface = "Smooth", "Smooth"
	p.Anchored = true
	p.BrickColor = BrickColor.new(color)
	p.Size = Vector3.new(chunkBreadth, 50, chunkBreadth)
	p.CFrame = CFrame.new(atpx, atpy, atpz)
end

for x = 1, size do
	for z = 1, size do
		local h = get_noise(x, z)
		if h > waterLevel then
			placeChunk(
				x * chunkBreadth - (size * chunkBreadth)/2, 
				10 + h * maxHeight,
				z * chunkBreadth - (size * chunkBreadth)/2,
				getColorFromRange(h),
				string.format("chunk_%s_%s", x, z)
			)
			if gradualCreation then
				coroutine.yield()
			end
		end
	end
end

for i, player in pairs(game.Players:GetChildren()) do
	player.Character.Torso.CFrame = CFrame.new(-100, 150, 0)
end