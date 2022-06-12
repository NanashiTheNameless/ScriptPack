function armor(player) 
part = Instance.new("Part") 
part.Parent = player.Character 
part.Size = Vector3.new(2, 2, 1) 
part:BreakJoints() 
part.BrickColor = BrickColor.new("Bright red") 
mesh = Instance.new("BlockMesh")
mesh.Parent = part 
mesh.Scale = Vector3.new(1.01,1.01,1.01) 
weld = Instance.new("Weld") 
weld.Parent = part 
weld.Part0 = part 
weld.Part1 = player.Character.Torso 
weld.C0 = CFrame.new(0, 0, 0) 
weld.C1 = CFrame.new() 
par = Instance.new("Part") 
par.Parent = player.Character 
par.Size = Vector3.new(2, 1, 1) 
par:BreakJoints() 
par.BrickColor = BrickColor.new("Dark stone grey") 
mes = Instance.new("BlockMesh")
mes.Parent = par 
mes.Scale = Vector3.new(1.015,0.5,1.015) 
wel = Instance.new("Weld") 
wel.Parent = par 
wel.Part0 = par 
wel.Part1 = part 
wel.C0 = CFrame.new(0, -0.5, 0) 
wel.C1 = CFrame.new() 
pa = Instance.new("Part") 
pa.Parent = player.Character 
pa.Size = Vector3.new(2, 1, 1) 
pa:BreakJoints() 
pa.BrickColor = BrickColor.new("Dark stone grey") 
me = Instance.new("BlockMesh")
me.Parent = pa 
me.Scale = Vector3.new(1.015,0.5,1.015) 
we = Instance.new("Weld") 
we.Parent = pa 
we.Part0 = pa 
we.Part1 = part 
we.C0 = CFrame.new(0, 0.5, 0) 
we.C1 = CFrame.new() 
end 

for _, v in pairs(Game.Players:GetChildren()) do 
armor(v)
end 

