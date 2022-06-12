function new(part, x, y, z, parent, color) 
local brick = part 
brick.formFactor = "Custom" 
brick.Shape = "Ball" 
brick:BreakJoints() 
brick.Anchored = true 
brick.CanCollide = false 
brick.Size = Vector3.new(x, y, z) 
brick.Parent = parent 
brick.CFrame = workspace.yfc.Head.CFrame + Vector3.new(0, 15, 0) 
brick.BrickColor = BrickColor.new(color) 
end 

b = Instance.new("Part") 
new(b, 5, 5, 5, workspace, "Bright yellow") 