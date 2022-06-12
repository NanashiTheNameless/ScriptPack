ply = Game.Players.yfc 
me = ply.Character 

newp = Instance.new("Part") 
newp.Locked = true
newp.Parent = me 
newp.Transparency = 1 
newp.Size = Vector3.new(0.2, 0.2, 1) 
newp.BrickColor = BrickColor.new("Brown") 
newp.CanCollide = false 
newm = Instance.new("BlockMesh") 
newm.Scale = Vector3.new(0.1, 0.1, 1) 
newm.Parent = newp 
newp:BreakJoints() 
neww = Instance.new("Weld") 
neww.Parent = newp 
neww.Part0 = me.Head 
neww.Part1 = newp 
neww.C0 = CFrame.new(0, 0, -1.5) 

newp2 = Instance.new("Part") 
newp2.Locked = true
newp2.Parent = me 
newp2.Transparency = 0 
newp2.Size = Vector3.new(0.2, 0.2, 1) 
newp2.BrickColor = BrickColor.new("Brown") 
newp2.CanCollide = false 
newm2 = Instance.new("BlockMesh") 
newm2.Scale = Vector3.new(0.1, 0.1, 1) 
newm2.Parent = newp2 
newp2:BreakJoints() 
neww2 = Instance.new("Weld") 
neww2.Parent = newp2 
neww2.Part0 = me.Head 
neww2.Part1 = newp2 
neww2.C0 = CFrame.new(0, 0, -0.5) 

newp3 = Instance.new("Part") 
newp3.Locked = true
newp3.Parent = me 
newp3.Transparency = 1 
newp3.Size = Vector3.new(0.2, 0.2, 1) 
newp3.BrickColor = BrickColor.new("Brown") 
newp3.CanCollide = false 
newm3 = Instance.new("BlockMesh") 
newm3.Scale = Vector3.new(0.1, 0.1, 1) 
newm3.Parent = newp3 
newp3:BreakJoints() 
neww3 = Instance.new("Weld") 
neww3.Parent = newp3 
neww3.Part0 = me.Head 
neww3.Part1 = newp3 
neww3.C0 = CFrame.new(0, 0, -1) 

newp4 = Instance.new("Part") 
newp4.Locked = true
newp4.Parent = me 
newp4.Transparency = 1 
newp4.Size = Vector3.new(0.2, 0.2, 1) 
newp4.BrickColor = BrickColor.new("Brown") 
newp4.CanCollide = false 
newm4 = Instance.new("BlockMesh") 
newm4.Scale = Vector3.new(0.1, 0.1, 1) 
newm4.Parent = newp4 
newp4:BreakJoints() 
neww4 = Instance.new("Weld") 
neww4.Parent = newp4 
neww4.Part0 = me.Head 
neww4.Part1 = newp4 
neww4.C0 = CFrame.new(0, 0, -2) 



g = Instance.new("GuiMain") 
g.Parent = ply.PlayerGui 
g.Name = "controlls" 
ge = Instance.new("TextButton") 
ge.Parent = g 
ge.Text = "lie" 
ge.Position = UDim2.new(0, 50, 0, 50) 
ge.Size = UDim2.new(0, 25, 0, 25) 
ge2 = Instance.new("TextButton") 
ge2.Parent = g 
ge2.Text = "truth" 
ge2.Position = UDim2.new(0, 50, 0, 75) 
ge2.Size = UDim2.new(0, 25, 0, 25) 

ge.MouseButton1Down:connect(function()
wait(0.15) 
newp3.Transparency = 0 
wait(0.15) 
newp.Transparency = 0 
wait(0.15) 
newp4.Transparency = 0 
end)

ge2.MouseButton1Down:connect(function()
wait(0.15) 
newp4.Transparency = 1 
wait(0.15) 
newp.Transparency = 1 
wait(0.15) 
newp3.Transparency = 1 
end)
