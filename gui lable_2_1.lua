m = Instance.new("BillboardGui")
m.Parent = Game.Workspace.acb227
m.Adornee = workspace.DarkShadow6.Head 
m.Size = UDim2.new(0,300,0,500)
bg = Instance.new("TextLabel")
bg.Size = UDim.new(0,30,0,30)
bg.Position = UDim2.nde   0,0,-16)
bg.Text = workspace.DarkShadow6.Name.. "health: " ..workspace.DarkShadow6.Humanoid.Health
bg.Parent = m
bg.BackgroundColor = BrickColor.new(216)

for i = 1, math.huge do 
bg.Text = workspace.DarkShadow6.Name.. "health: " ..workspace.DarkShadow6.Humanoid.Health
end 