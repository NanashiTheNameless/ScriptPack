mo = Instance.new("Model") 
mo.Parent = workspace.acb227 
mo.Name = "House" 

pa = Instance.new("Part") 
pa.Parent = mo 
pa.Size = Vector3.new(50, 1, 50)
pa.BrickColor = BrickColor.new("Dark blue")
pa.Anchored = true 
pa.CFrame = CFrame.new(0, 50, 250) 
ma = Instance.new("BlockMesh") 
ma.Parent = pa 

pb = Instance.new("Part") 
pb.Parent = mo 
pb.Size = Vector3.new(50, 25, 1)
pb.BrickColor = BrickColor.new("Hot pink")
pb.Anchored = true 
pb.CFrame = CFrame.new(0, 70, 275) 
mb = Instance.new("BlockMesh") 
mb.Parent = pb 

pc = Instance.new("Part") 
pc.Parent = mo 
pc.Size = Vector3.new(50, 25, 1)
pc.BrickColor = BrickColor.new("Bright red")
pc.Anchored = true 
pc.CFrame = CFrame.new(0, 70, 225) 
mc = Instance.new("BlockMesh") 
mc.Parent = pc 

pd = Instance.new("Part") 
pd.Parent = mo 
pd.Size = Vector3.new(1, 25, 50)
pd.BrickColor = BrickColor.new("Bright yellow")
pd.Anchored = true 
pd.CFrame = CFrame.new(25, 70, 250) 
md = Instance.new("BlockMesh") 
md.Parent = pd 

pe = Instance.new("Part") 
pe.Parent = mo 
pe.Size = Vector3.new(1, 25, 50)
pe.BrickColor = BrickColor.new("Bright blue")
pe.Anchored = true 
pe.CFrame = CFrame.new(-25, 70, 250) 
me = Instance.new("BlockMesh") 
me.Parent = pe 

pea = Instance.new("Part") 
pea.Parent = mo 
pea.Size = Vector3.new(1, 25, 50)
pea.BrickColor = BrickColor.new("Bright blue")
pea.Anchored = true 
pea.CFrame = CFrame.new(-25, 75, 240) 
mea = Instance.new("BlockMesh") 
mea.Parent = pea 