tool = Instance.new("Tool", Game.Players.acb227.Backpack) 
tool.Name = "Condo" 
a = Instance.new("Part") 
a.Name = "Handle"
a.Locked = true 
a.Parent = tool 
a.Size = Vector3.new(1, 1, 1) 
a.formFactor = "Plate" 
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth" 
a.BrickColor = BrickColor.new("White")
m = Instance.new("BlockMesh")
m.Parent = a
m.Scale = Vector3.new(0.7, 0.2, 0.1)
b = Instance.new("Part") 
b.Name = "Handlee"
b.Parent = a 
b.Locked = true 
b.Size = Vector3.new(1, 1, 1) 
b.formFactor = "Plate" 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.BrickColor = BrickColor.new("White")
m = Instance.new("CylinderMesh")
m.Parent = b
m.Scale = Vector3.new(0.1, 1.1, 0.2)
w1 = Instance.new("Weld") 
w1.Parent = tool 
w1.Part0 = b
w1.Part1 = a 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.3, 0.25, 0) 
c = Instance.new("Part") 
c.Name = "Handlee"
c.Parent = a 
c.Locked = true 
c.Size = Vector3.new(1, 1, 1) 
c.formFactor = "Plate" 
c.TopSurface = "Smooth" 
c.BottomSurface = "Smooth" 
c.BrickColor = BrickColor.new("White")
m = Instance.new("CylinderMesh")
m.Parent = c
m.Scale = Vector3.new(0.1, 1.1, 0.2)
w1 = Instance.new("Weld") 
w1.Parent = tool 
w1.Part0 = c
w1.Part1 = a 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.3, 0.25, 0) 
d = Instance.new("Part") 
d.Name = "Handlee"
d.Parent = a 
d.Size = Vector3.new(2, 4, 1) 
d.formFactor = "Plate" 
d.Locked = true 
d.TopSurface = "Smooth" 
d.BottomSurface = "Smooth" 
d.BrickColor = BrickColor.new("Black")
mi = Instance.new("BlockMesh")
mi.Parent = d
mi.Scale = Vector3.new(1, 1, 0.35)
w1 = Instance.new("Weld") 
w1.Parent = tool 
w1.Part0 = d
w1.Part1 = a 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1.3, 0) 
e = Instance.new("Part") 
e.Name = "Handlee"
e.Parent = a 
e.Locked = true 
e.Size = Vector3.new(1, 1, 1) 
e.formFactor = "Plate" 
e.TopSurface = "Smooth" 
e.BottomSurface = "Smooth" 
e.BrickColor = BrickColor.new("White")
m = Instance.new("BlockMesh")
m.Parent = e
m.Scale = Vector3.new(1, 1, 0.4)
w1 = Instance.new("Weld") 
w1.Parent = tool 
w1.Part0 = e
w1.Part1 = a 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.65, 0) 
f = Instance.new("Part") 
f.Name = "Handlee"
f.Parent = a 
f.Size = Vector3.new(1, 1, 1) 
f.formFactor = "Plate" 
f.TopSurface = "Smooth" 
f.Locked = true 
f.BottomSurface = "Smooth" 
f.BrickColor = BrickColor.new("Mid grey")
m2 = Instance.new("BlockMesh")
m2.Parent = f
m2.Scale = Vector3.new(0.2, 0.4, 0.2)
w1 = Instance.new("Weld") 
w1.Parent = tool 
w1.Part0 = f
w1.Part1 = a 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.12, 0.5, 0) 
g = Instance.new("Part") 
g.Name = "Handlee"
g.Parent = a 
g.Locked = true 
g.Size = Vector3.new(1, 1, 1) 
g.formFactor = "Plate" 
g.TopSurface = "Smooth" 
g.BottomSurface = "Smooth" 
g.BrickColor = BrickColor.new("Mid grey")
m1 = Instance.new("BlockMesh")
m1.Parent = g
m1.Scale = Vector3.new(0.2, 0.4, 0.2)
w1 = Instance.new("Weld") 
w1.Parent = tool 
w1.Part0 = g
w1.Part1 = a 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.12, 0.5, 0) 
h = Instance.new("Part") 
h.Name = "Handlee"
h.Parent = a 
h.Size = Vector3.new(2, 1, 4) 
h.formFactor = "Plate" 
h.Transparency = 1 
h.Locked = true 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.BrickColor = BrickColor.new("Black")
m = Instance.new("BlockMesh")
m.Parent = h
m.Scale = Vector3.new(1, 0.35, 0.35)
w1 = Instance.new("Weld") 
w1.Parent = tool 
w1.Part0 = h
w1.Part1 = a 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 2.1, 0.7) 
base = Instance.new("Part") 
base.Name = "Handlee"
base.Size = Vector3.new(25, 1, 25) 
base.formFactor = "Plate" 
base.TopSurface = "Smooth" 
base.Anchored = true 
base.BottomSurface = "Smooth" 
base.Locked = true 
base.BrickColor = BrickColor.new("Really black")
ma = Instance.new("BlockMesh")
ma.Parent = base
ma.Scale = Vector3.new(0.1, 0.1, 0.1)
bas = Instance.new("Part") 
bas.Name = "Handlee"
bas.Size = Vector3.new(25, 25, 1) 
bas.formFactor = "Plate" 
bas.TopSurface = "Smooth" 
bas.Anchored = true 
bas.BottomSurface = "Smooth" 
bas.Locked = true 
bas.BrickColor = BrickColor.new("Really blue")
me = Instance.new("BlockMesh")
me.Parent = bas
me.Scale = Vector3.new(0.1, 0.1, 0.1)
ba = Instance.new("Part") 
ba.Name = "Handlee"
ba.Size = Vector3.new(25, 25, 1) 
ba.formFactor = "Plate" 
ba.TopSurface = "Smooth" 
ba.Anchored = true 
ba.BottomSurface = "Smooth" 
ba.Locked = true 
ba.BrickColor = BrickColor.new("Really black")
men = Instance.new("BlockMesh")
men.Parent = ba
men.Scale = Vector3.new(0.1, 0.1, 0.1)
ban = Instance.new("Part") 
ban.Name = "Handlee"
ban.Size = Vector3.new(1, 25, 25) 
ban.formFactor = "Plate" 
ban.TopSurface = "Smooth" 
ban.Anchored = true 
ban.BottomSurface = "Smooth" 
ban.Locked = true 
ban.BrickColor = BrickColor.new("Really blue")
mq = Instance.new("BlockMesh")
mq.Parent = ban
mq.Scale = Vector3.new(0.1, 0.1, 0.1)
bany = Instance.new("Part") 
bany.Name = "Handlee"
bany.Size = Vector3.new(1, 25, 7.5) 
bany.formFactor = "Plate" 
bany.TopSurface = "Smooth" 
bany.Anchored = true 
bany.BottomSurface = "Smooth" 
bany.Locked = true 
bany.BrickColor = BrickColor.new("Really black")
mqa = Instance.new("BlockMesh")
mqa.Parent = bany
mqa.Scale = Vector3.new(0.1, 0.1, 0.1)
banya = Instance.new("Part") 
banya.Name = "Handlee"
banya.Size = Vector3.new(1, 25, 7.5) 
banya.formFactor = "Plate" 
banya.TopSurface = "Smooth" 
banya.Anchored = true 
banya.BottomSurface = "Smooth" 
banya.Locked = true 
banya.BrickColor = BrickColor.new("Really blue")
mqap = Instance.new("BlockMesh")
mqap.Parent = banya
mqap.Scale = Vector3.new(0.1, 0.1, 0.1)
base2 = Instance.new("Part") 
base2.Name = "Handlee"
base2.Size = Vector3.new(25, 1, 25) 
base2.formFactor = "Plate" 
base2.TopSurface = "Smooth" 
base2.Anchored = true 
base2.BottomSurface = "Smooth" 
base2.Locked = true 
base2.BrickColor = BrickColor.new("Really black")
mans = Instance.new("BlockMesh")
mans.Parent = base2
mans.Scale = Vector3.new(0.1, 0.1, 0.1)
tele = Instance.new("Part") 
tele.Name = "Handlee"
tele.Size = Vector3.new(4, 1, 4) 
tele.formFactor = "Plate" 
tele.TopSurface = "Smooth" 
tele.Anchored = true 
tele.BottomSurface = "Smooth" 
tele.Locked = true 
tele.BrickColor = BrickColor.new("Really blue")
tel = Instance.new("BlockMesh")
tel.Parent = tele
tel.Scale = Vector3.new(0.1, 0.1, 0.1)
--gui
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Condo gui" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "unlock" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "unlock" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
m1.Scale = Vector3.new(0.1, 0.4, 0.3)
wait(0.5)
m2.Scale = Vector3.new(0.1, 0.4, 0.3)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "lock" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 145)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "lock" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
m1.Scale = Vector3.new(0.2, 0.4, 0.2)
wait(0.5)
m2.Scale = Vector3.new(0.2, 0.4, 0.2)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "open" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 165)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "open" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
base.Parent = a 
base.CFrame = h.CFrame + Vector3.new(0, -1, 0)
mi.Scale = Vector3.new(1, 1, 0.15)
h.Transparency = 0
ma.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.1) 
ma.Scale = Vector3.new(0.3, 0.2, 0.3)
wait(0.1) 
ma.Scale = Vector3.new(0.4, 0.2, 0.4)
wait(0.1) 
ma.Scale = Vector3.new(0.5, 0.2, 0.5)
wait(0.1) 
ma.Scale = Vector3.new(0.6, 0.2, 0.6)
wait(0.1) 
ma.Scale = Vector3.new(0.7, 0.2, 0.7)
wait(0.1) 
ma.Scale = Vector3.new(0.8, 0.2, 0.8)
wait(0.1) 
ma.Scale = Vector3.new(0.9, 0.2, 0.9)
wait(0.1) 
ma.Scale = Vector3.new(1, 0.2, 1)
wait(0.1) 
bas.Parent = a 
bas.CFrame = base.CFrame * CFrame.new(0, 5, 12)
wait(0.1) 
me.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.1) 
me.Scale = Vector3.new(0.25, 0.25, 0.25)
wait(0.1) 
me.Scale = Vector3.new(0.3, 0.3, 0.3)
wait(0.1) 
me.Scale = Vector3.new(0.35, 0.35, 0.35)
wait(0.1) 
me.Scale = Vector3.new(0.4, 0.4, 0.4)
wait(0.1) 
me.Scale = Vector3.new(0.45, 0.45, 0.45)
wait(0.1) 
me.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.1) 
me.Scale = Vector3.new(0.55, 0.55, 0.55)
wait(0.1) 
me.Scale = Vector3.new(0.6, 0.6, 0.6)
wait(0.1) 
me.Scale = Vector3.new(0.65, 0.65, 0.65)
wait(0.1) 
me.Scale = Vector3.new(0.7, 0.7, 0.7)
wait(0.1) 
me.Scale = Vector3.new(0.75, 0.75, 0.75)
wait(0.1) 
me.Scale = Vector3.new(0.8, 0.8, 0.8)
wait(0.1) 
me.Scale = Vector3.new(0.85, 0.85, 0.85)
wait(0.1) 
me.Scale = Vector3.new(0.9, 0.9, 0.9)
wait(0.1) 
me.Scale = Vector3.new(0.95, 0.95, 0.95)
wait(0.1) 
me.Scale = Vector3.new(1, 1, 1)
wait(0.1) 
ba.Parent = a 
ba.CFrame = base.CFrame * CFrame.new(0, 5, -12)
wait(0.1) 
men.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.1) 
men.Scale = Vector3.new(0.25, 0.25, 0.25)
wait(0.1) 
men.Scale = Vector3.new(0.3, 0.3, 0.3)
wait(0.1) 
men.Scale = Vector3.new(0.35, 0.35, 0.35)
wait(0.1) 
men.Scale = Vector3.new(0.4, 0.4, 0.4)
wait(0.1) 
men.Scale = Vector3.new(0.45, 0.45, 0.45)
wait(0.1) 
men.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.1) 
men.Scale = Vector3.new(0.55, 0.55, 0.55)
wait(0.1) 
men.Scale = Vector3.new(0.6, 0.6, 0.6)
wait(0.1) 
men.Scale = Vector3.new(0.65, 0.65, 0.65)
wait(0.1) 
men.Scale = Vector3.new(0.7, 0.7, 0.7)
wait(0.1) 
men.Scale = Vector3.new(0.75, 0.75, 0.75)
wait(0.1) 
men.Scale = Vector3.new(0.8, 0.8, 0.8)
wait(0.1) 
men.Scale = Vector3.new(0.85, 0.85, 0.85)
wait(0.1) 
men.Scale = Vector3.new(0.9, 0.9, 0.9)
wait(0.1) 
men.Scale = Vector3.new(0.95, 0.95, 0.95)
wait(0.1) 
men.Scale = Vector3.new(1, 1, 1)
wait(0.1)
ban.Parent = a 
ban.CFrame = base.CFrame * CFrame.new(12, 5, 0)
wait(0.1) 
mq.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.1) 
mq.Scale = Vector3.new(0.25, 0.25, 0.25)
wait(0.1) 
mq.Scale = Vector3.new(0.3, 0.3, 0.3)
wait(0.1) 
mq.Scale = Vector3.new(0.35, 0.35, 0.35)
wait(0.1) 
mq.Scale = Vector3.new(0.4, 0.4, 0.4)
wait(0.1) 
mq.Scale = Vector3.new(0.45, 0.45, 0.45)
wait(0.1) 
mq.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.1) 
mq.Scale = Vector3.new(0.55, 0.55, 0.55)
wait(0.1) 
mq.Scale = Vector3.new(0.6, 0.6, 0.6)
wait(0.1) 
mq.Scale = Vector3.new(0.65, 0.65, 0.65)
wait(0.1) 
mq.Scale = Vector3.new(0.7, 0.7, 0.7)
wait(0.1) 
mq.Scale = Vector3.new(0.75, 0.75, 0.75)
wait(0.1) 
mq.Scale = Vector3.new(0.8, 0.8, 0.8)
wait(0.1) 
mq.Scale = Vector3.new(0.85, 0.85, 0.85)
wait(0.1) 
mq.Scale = Vector3.new(0.9, 0.9, 0.9)
wait(0.1) 
mq.Scale = Vector3.new(0.95, 0.95, 0.95)
wait(0.1) 
mq.Scale = Vector3.new(1, 1, 1)
wait(0.1)
bany.Parent = a 
bany.CFrame = base.CFrame * CFrame.new(-12, 5, 8.5)
wait(0.1) 
mqa.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.1) 
mqa.Scale = Vector3.new(0.25, 0.25, 0.25)
wait(0.1) 
mqa.Scale = Vector3.new(0.3, 0.3, 0.3)
wait(0.1) 
mqa.Scale = Vector3.new(0.35, 0.35, 0.35)
wait(0.5) 
mqa.Scale = Vector3.new(0.4, 0.4, 0.4)
wait(0.5) 
mqa.Scale = Vector3.new(0.45, 0.45, 0.45)
wait(0.1) 
mqa.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.1) 
mqa.Scale = Vector3.new(0.55, 0.55, 0.55)
wait(0.1) 
mqa.Scale = Vector3.new(0.6, 0.6, 0.6)
wait(0.1) 
mqa.Scale = Vector3.new(0.65, 0.65, 0.65)
wait(0.1) 
mqa.Scale = Vector3.new(0.7, 0.7, 0.7)
wait(0.1) 
mqa.Scale = Vector3.new(0.75, 0.75, 0.75)
wait(0.1) 
mqa.Scale = Vector3.new(0.8, 0.8, 0.8)
wait(0.1) 
mqa.Scale = Vector3.new(0.85, 0.85, 0.85)
wait(0.1) 
mqa.Scale = Vector3.new(0.9, 0.9, 0.9)
wait(0.1) 
mqa.Scale = Vector3.new(0.95, 0.95, 0.95)
wait(0.1) 
mqa.Scale = Vector3.new(1, 1, 1)
wait(0.1)
banya.Parent = a 
banya.CFrame = base.CFrame * CFrame.new(-12, 5, -8.5)
wait(0.1) 
mqap.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.1) 
mqap.Scale = Vector3.new(0.25, 0.25, 0.25)
wait(0.1) 
mqap.Scale = Vector3.new(0.3, 0.3, 0.3)
wait(0.1) 
mqap.Scale = Vector3.new(0.35, 0.35, 0.35)
wait(0.1) 
mqap.Scale = Vector3.new(0.4, 0.4, 0.4)
wait(0.1) 
mqap.Scale = Vector3.new(0.45, 0.45, 0.45)
wait(0.1) 
mqap.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.1) 
mqap.Scale = Vector3.new(0.55, 0.55, 0.55)
wait(0.1) 
mqap.Scale = Vector3.new(0.6, 0.6, 0.6)
wait(0.1) 
mqap.Scale = Vector3.new(0.65, 0.65, 0.65)
wait(0.1) 
mqap.Scale = Vector3.new(0.7, 0.7, 0.7)
wait(0.1) 
mqap.Scale = Vector3.new(0.75, 0.75, 0.75)
wait(0.1) 
mqap.Scale = Vector3.new(0.8, 0.8, 0.8)
wait(0.1) 
mqap.Scale = Vector3.new(0.85, 0.85, 0.85)
wait(0.1) 
mqap.Scale = Vector3.new(0.9, 0.9, 0.9)
wait(0.1) 
mqap.Scale = Vector3.new(0.95, 0.95, 0.95)
wait(0.1) 
mqap.Scale = Vector3.new(1, 1, 1)
wait(0.1) 
base2.Parent = a 
base2.CFrame = base.CFrame * CFrame.new(0, 10, 0)
wait(0.1) 
mans.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.1) 
mans.Scale = Vector3.new(0.25, 0.25, 0.25)
wait(0.1) 
mans.Scale = Vector3.new(0.3, 0.3, 0.3)
wait(0.1) 
mans.Scale = Vector3.new(0.35, 0.35, 0.35)
wait(0.1) 
mans.Scale = Vector3.new(0.4, 0.4, 0.4)
wait(0.1) 
mans.Scale = Vector3.new(0.45, 0.45, 0.45)
wait(0.1) 
mans.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.1) 
mans.Scale = Vector3.new(0.55, 0.55, 0.55)
wait(0.1) 
mans.Scale = Vector3.new(0.6, 0.6, 0.6)
wait(0.1) 
mans.Scale = Vector3.new(0.65, 0.65, 0.65)
wait(0.1) 
mans.Scale = Vector3.new(0.7, 0.7, 0.7)
wait(0.1) 
mans.Scale = Vector3.new(0.75, 0.75, 0.75)
wait(0.1) 
mans.Scale = Vector3.new(0.8, 0.8, 0.8)
wait(0.1) 
mans.Scale = Vector3.new(0.85, 0.85, 0.85)
wait(0.1) 
mans.Scale = Vector3.new(0.9, 0.9, 0.9)
wait(0.1) 
mans.Scale = Vector3.new(0.95, 0.95, 0.95)
wait(0.1) 
mans.Scale = Vector3.new(1, 1, 1)
wait(0.1) 
tele.Parent = a 
tele.CFrame = base.CFrame * CFrame.new(0, 1, 0)
wait(0.1) 
tel.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.1) 
tel.Scale = Vector3.new(0.25, 0.25, 0.25)
wait(0.1) 
tel.Scale = Vector3.new(0.3, 0.3, 0.3)
wait(0.1) 
tel.Scale = Vector3.new(0.35, 0.35, 0.35)
wait(0.1) 
tel.Scale = Vector3.new(0.4, 0.4, 0.4)
wait(0.1) 
tel.Scale = Vector3.new(0.45, 0.45, 0.45)
wait(0.1) 
tel.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.1) 
tel.Scale = Vector3.new(0.55, 0.55, 0.55)
wait(0.1) 
tel.Scale = Vector3.new(0.6, 0.6, 0.6)
wait(0.1) 
tel.Scale = Vector3.new(0.65, 0.65, 0.65)
wait(0.1) 
tel.Scale = Vector3.new(0.7, 0.7, 0.7)
wait(0.1) 
tel.Scale = Vector3.new(0.75, 0.75, 0.75)
wait(0.1) 
tel.Scale = Vector3.new(0.8, 0.8, 0.8)
wait(0.1) 
tel.Scale = Vector3.new(0.85, 0.85, 0.85)
wait(0.1) 
tel.Scale = Vector3.new(0.9, 0.9, 0.9)
wait(0.1) 
tel.Scale = Vector3.new(0.95, 0.95, 0.95)
wait(0.1) 
tel.Scale = Vector3.new(1, 1, 1)
wait(0.1)
function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
hit.Parent.Torso.CFrame = CFrame.new(0, 5, 0)
end 
end
tele.Touched:connect(onTouched)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "close" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 185)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "close" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
h.Transparency = 1
mi.Scale = Vector3.new(1, 1, 0.35)
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "remove" then 
sc:Remove() 
end 
end) 
