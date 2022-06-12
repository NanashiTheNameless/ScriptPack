baseplate = game.Workspace.Base
sizex = baseplate.Size.X
sizey = baseplate.Size.Z

model = Instance.new("Model")
model.Name = "Model"
model.Parent = game.Workspace

--How many bricks x
platex = 15
--How many bricks y
platey = 15


for newx = 1, platex do
	for newy = 1, platey do
		base = Instance.new("Part")
		base.Parent = model
		base.Size = Vector3.new((sizex/platex), 1, (sizey/platey))
		base.BrickColor = baseplate.BrickColor
		base.Name = "base" .. newx .. newy
		base.CanCollide = true
		base.CFrame = baseplate.CFrame * CFrame.new(Vector3.new(-((sizex/platex)*math.floor(((platex/2)-0.5)))+((sizex/platex)*(newx-1)), 0, -((sizey/platey)*math.floor(((platex/2)-0.5)))+((sizey/platey)*(newy-1))))
		base.Anchored = true
	end
end

baseplate.Transparency = 1
baseplate.CanCollide = false

function rotate()
	for rot, child in pairs(model:getChildren()) do
		randomx = math.random(0, 25)/1000
		randomy = math.random(0, 25)/1000
		randomz = math.random(0, 25)/1000
		randomx2 = -math.random(0, 25)/1000
		randomy2 = -math.random(0, 25)/1000
		randomz2 = -math.random(0, 25)/1000
		child.CFrame = child.CFrame * CFrame.fromEulerAnglesXYZ(randomx, randomy, randomz)
		child.CFrame = child.CFrame * CFrame.fromEulerAnglesXYZ(randomx2, randomy2, randomz2)
	end
end

while true do
	thread = coroutine.create(rotate)
	assert(coroutine.resume(thread))
	wait()
end