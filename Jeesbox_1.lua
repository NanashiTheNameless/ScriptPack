colours = {"Really black", "Medium stone grey", "Dark grey", "Institutional white"}
coroutine.resume(coroutine.create(function()
for i=1, 10, 0.1 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(30,2,5)
p.Anchored = true
p.CFrame = CFrame.new(30,0,0)
p.CFrame = p.CFrame * CFrame.new(0,0,0) * CFrame.Angles(i,i,0)
p.TopSurface = 0
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
end
end))
pos = Vector3.new(0,0,0)
coroutine.resume(coroutine.create(function()
for i=1, 30, 0.5 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(5,5,5)
p.Anchored = true
p.CFrame = CFrame.new(30,4,0)
p.TopSurface = 0
p.CFrame = p.CFrame * CFrame.new(0,i,0) * CFrame.Angles(math.random(-3.2,3.2),math.random(-3.2,3.2),math.random(-3.2,3.2))
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
pos = p.Position
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 7, 0.05 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(30,2,3)
p.Anchored = true
p.CFrame = CFrame.new(pos)
p.CFrame = p.CFrame * CFrame.new(0,i,0) * CFrame.Angles(0,i,0)
p.BottomSurface = 0
p.TopSurface = 0
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 38, 0.8 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(pos) * CFrame.new(10,3,0)
p.CFrame = p.CFrame * CFrame.new(i,-i,0) * CFrame.Angles(0,0,i)
p.BottomSurface = 0
p.TopSurface = 0
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 38, 0.8 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(pos) * CFrame.new(-10,3,0)
p.CFrame = p.CFrame * CFrame.new(-i,-i,0) * CFrame.Angles(0,0,i)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
p.TopSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 38, 0.8 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(pos) * CFrame.new(0,3,10)
p.CFrame = p.CFrame * CFrame.new(0,-i,i) * CFrame.Angles(i,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
p.TopSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 38, 0.8 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(pos) * CFrame.new(0,3,-10)
p.CFrame = p.CFrame * CFrame.new(0,-i,-i) * CFrame.Angles(i,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
p.TopSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 8, 0.1 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(30,15,0)
p.CFrame = p.CFrame * CFrame.Angles(0,i,0) * CFrame.new(30,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.TopSurface = 0
p.BottomSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 8, 0.07 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(5,5,5)
p.Anchored = true
p.CFrame = CFrame.new(30,15,0)
p.CFrame = p.CFrame * CFrame.Angles(0,i,i) * CFrame.new(30,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.TopSurface = 0
p.BottomSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 8, 0.07 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(5,5,5)
p.Anchored = true
p.CFrame = CFrame.new(30,15,0)
p.CFrame = p.CFrame * CFrame.Angles(0,-i,-i) * CFrame.new(-30,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.TopSurface = 0
p.BottomSurface = 0
end
end))
