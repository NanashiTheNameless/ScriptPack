m = Instance.new("Model") 
m.Parent = game.Workspace 
m.Name = "Oozles" 
m.Controller = 7 
b = Instance.new("Part") 
b.Parent = m 
b.Locked = true 
b.Position = Vector3.new(900,96,900) 
h = Instance.new("Humanoid") 
h.Parent = m 

c = b:clone() 
c.Position = Vector3.new(-72, 7.3, -6.5) 
c.Name = "Head" 
c.BrickColor = BrickColor.new(28) 
c.Size = Vector3.new(6, 4.8, 5) 
c.Parent = m 
c2 = b:clone() 
c2.Position = Vector3.new(-67, 4.9, -5.9) 
c2.Size = Vector3.new(4, 1.2, 2) 
c2.Parent = m 
c2.LeftSurface = 2 
c2.Name = "Left Arm" 
c2.BrickColor = BrickColor.new(105) 
c3 = b:clone() 
c3.Position = Vector3.new(-72, 3.1, -3.5) 
c3.Size = Vector3.new(6, 1.2, 3) 
c3.Parent = m 
c3.BrickColor = BrickColor.new(105) 
c3.Name = "Left Leg" 
c4 = b:clone() 
c4.Position = Vector3.new(-72, 1.9, -2.9) 
c4.Size = Vector3.new(6, 1.2, 4) 
c4.Parent = m 
c4.BrickColor = BrickColor.new(105) 
c4.Name = "Right Leg" 
c5 = b:clone() 
c5.Position = Vector3.new(-72, 4.3, -3.9) 
c5.Size = Vector3.new(6, 1.2, 2) 
c5.BrickColor = BrickColor.new(105) 
c5.Parent = m 
c6 = b:clone() 
c6.Position = Vector3.new(-77, 4.9, -5.9) 
c6.BrickColor = BrickColor.new(105) 
c6.Parent = m 
c6.RightSurface = 2 
c6.Size = Vector3.new(4, 1.2, 2) 
c6.Name = "Right Arm" 
c7 = b:clone() 
c7.Position = Vector3.new(-72, 3.1, -6.9) 
c7.Size = Vector3.new(6, 3.6, 4) 
c7.BrickColor = BrickColor.new(105) 
c7.Parent = m 
c7.Name = "Torso" 

f = Instance.new("Decal") 
f.Parent = c 
f.Face = 5 
f.Texture = "17bbd48d3a32ea7fd58de39b48bab1" 

c:makeJoints(); m.Torso:makeJoints() 
c2:makeJoints(); m.Torso:makeJoints() 
c3:makeJoints(); m.Torso:makeJoints() 
c4:makeJoints(); m.Torso:makeJoints() 
c5:makeJoints(); m.Torso:makeJoints() 
c6:makeJoints(); m.Torso:makeJoints() 
c7:makeJoints(); m.Torso:makeJoints()

game.Players.ic3w0lf589.Character = game.Workspace.Oozles