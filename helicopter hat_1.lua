me = Game.Players.yfc 
char = me.Character 


a = Instance.new("Part") 
a.Parent = char 
a.Size = Vector3.new(1, 1, 1) 
a.BrickColor = BrickColor.new("Really black")
a.Position = Vector3.new(0, 0, 0) 
a:BreakJoints() 
am = Instance.new("CylinderMesh")
am.Parent = a 
am.Scale = Vector3.new(0.15, 1.2, 0.15) 
aw = Instance.new("Weld") 
aw.Parent = char 
aw.Part0 = a 
aw.Part1 = char.Head 
aw.C0 = CFrame.new(0, -1.1, 0) 
aw.C1 = CFrame.new() 

b = Instance.new("Part") 
b.Parent = char 
b.Size = Vector3.new(1, 1, 1) 
b.BrickColor = BrickColor.new("Really black")
b.Position = Vector3.new(0, 0, 0) 
b:BreakJoints() 
bm = Instance.new("BlockMesh")
bm.Parent = b 
bm.Scale = Vector3.new(1, 0.15, 0.15) 
bw = Instance.new("Weld") 
bw.Parent = char 
bw.Part0 = b 
bw.Part1 = a 
bw.C0 = CFrame.new(0.5, -0.75, 0) 
bw.C1 = CFrame.new() 

c = Instance.new("Part") 
c.Parent = char 
c.Size = Vector3.new(1, 1, 1) 
c.BrickColor = BrickColor.new("Really black")
c.Position = Vector3.new(0, 0, 0) 
c:BreakJoints() 
cm = Instance.new("BlockMesh")
cm.Parent = c 
cm.Scale = Vector3.new(1, 0.15, 0.15) 
cw = Instance.new("Weld") 
cw.Parent = char 
cw.Part0 = c 
cw.Part1 = a 
cw.C0 = CFrame.new(-0.5, -0.75, 0) 
cw.C1 = CFrame.new() 

d = Instance.new("Part") 
d.Parent = char 
d.Size = Vector3.new(1, 1, 1) 
d.BrickColor = BrickColor.new("Really black")
d.Position = Vector3.new(0, 0, 0) 
d:BreakJoints() 
dm = Instance.new("BlockMesh")
dm.Parent = d 
dm.Scale = Vector3.new(0.15, 0.15, 1) 
dw = Instance.new("Weld") 
dw.Parent = char 
dw.Part0 = d 
dw.Part1 = a 
dw.C0 = CFrame.new(0, -0.75, 0.5) 
dw.C1 = CFrame.new() 

e = Instance.new("Part") 
e.Parent = char 
e.Size = Vector3.new(1, 1, 1) 
e.BrickColor = BrickColor.new("Really black")
e.Position = Vector3.new(0, 0, 0) 
e:BreakJoints() 
em = Instance.new("BlockMesh")
em.Parent = e 
em.Scale = Vector3.new(0.15, 0.15, 1) 
ew = Instance.new("Weld") 
ew.Parent = char 
ew.Part0 = e 
ew.Part1 = a 
ew.C0 = CFrame.new(0, -0.75, -0.5) 
ew.C1 = CFrame.new() 

while true do 
b.Transparency = 1 
c.Transparency = 1 
d.Transparency = 0 
e.Transparency = 0 
wait(0.1) 
b.Transparency = 0 
c.Transparency = 0 
d.Transparency = 1 
e.Transparency = 1
wait(0.1)  
end 