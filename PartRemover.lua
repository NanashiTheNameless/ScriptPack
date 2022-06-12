function Clean(Brick)
if Brick.className == "NewBrick" then
wait()
if Brick.Anchored or Brick.Locked then
return
end
Brick.Parent = Instance.new("Part":(FindFirstChild("Nothing") -- Returns nil, right?
end
end
local Bricks = game.Workspace:GetChildren()
for X = 1, # Bricks do
Clean(Bricks[X])
end
game.Workspace.ChildAdded:connect(Clean)
