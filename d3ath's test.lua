local t = Instance.new("Tool") 
t.Parent = game.Players.d3athwish87.Backpack 
t.Name = "Staff" 
script.Parent = t.Parent.Parent.Character 


local b = Instance.new("Part") 
b.Parent = t 
b.Size = Vector3.new(1,6,1) 
b.BrickColor = BrickColor.new("Really black") 
b.Anchored = false 
b.Locked = true 
b.Name = "Handle" 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

a = Instance.new("Part") 
a.Parent = t 
a.Size = Vector3.new(1,1,1) 
a.BrickColor = BrickColor.new("White") 
a.Anchored = false 
a.Locked = true 
a.Name = "Handlee" 
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth" 

w2 = Instance.new("Weld")
w2.Parent = b
w2.Part0 = a
w2.Part1 = b
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -3, 0)

m1 = Instance.new("CylinderMesh") 
m1.Scale = Vector3.new(0.2,1,0.2) 
m1.Parent = b 

m2 = Instance.new("CylinderMesh") 
m2.Scale = Vector3.new(0.19,1,0.19) 
m2.Parent = a 

local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = a 
SPL.Humanoid = t.Parent.Parent.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = a 