me = Game.Players.acb227 
char = me.Character 

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp:BreakJoints() 
pp.Size = Vector3.new(x, y, z)
pp.BrickColor = BrickColor.new(color) 
pp.Parent = Parent 
end 

function weld(parent, a, b, c, d) 
local ww = Instance.new("Weld") 
ww.Parent = parent 
ww.Part0 = a 
ww.Part1 = b 
ww.C0 = c 
ww.C1 = d 
end 

function meshp(part, x, y, z) 
local mesh = Instance.new("CylinderMesh") 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

function mesh(part, type, x, y, z) 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = type 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

pa = Instance.new("Part") 
prop(pa, "White", char, 3, 4, 3) 
mesh(pa, "Sphere", 1, 1, 1) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Bright green", char, 3, 2, 3) 
mesh(pa, "Sphere", 1, 1, 1) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
pa.CanCollide = false 
prop(pa, "Bright green", char, 2, 4, 2) 
mesh(pa, "Sphere", 1, 1, 1) 
weld(pa, pa, char["Left Leg"], CFrame.new(), CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
pa.CanCollide = false 
prop(pa, "Bright green", char, 2, 4, 2) 
mesh(pa, "Sphere", 1, 1, 1) 
weld(pa, pa, char["Right Leg"], CFrame.new(), CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Really black", char, 3, 1, 3) 
mesh(pa, "Sphere", 1.015, 1, 1.015) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, -0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "New Yeller", char, 1, 1, 2) 
mesh(pa, "Sphere", 1.035, 1, 1.015) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, -0.75, -0.6) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "White", char, 2, 2, 2) 
mesh(pa, "Sphere", 1, 1, 1) 
weld(pa, pa, char["Right Arm"], CFrame.new(), CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "White", char, 2, 2, 2) 
mesh(pa, "Sphere", 1, 1, 1) 
weld(pa, pa, char["Right Arm"], CFrame.new(), CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Pastel brown", char, 2, 4, 2) 
mesh(pa, "Sphere", 0.95, 1, 0.95) 
weld(pa, pa, char["Right Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "White", char, 2, 2, 2) 
mesh(pa, "Sphere", 1, 1, 1) 
weld(pa, pa, char["Left Arm"], CFrame.new(), CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Pastel brown", char, 2, 4, 2) 
mesh(pa, "Sphere", 0.95, 1, 0.95) 
weld(pa, pa, char["Left Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Pastel brown", char, 2, 2, 2) 
mesh(pa, "Sphere", 0.95, 1, 0.95) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Pastel brown", char, 2, 2, 2) 
mesh(pa, "Sphere", 0.95, 1, 0.95) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Reddish brown", char, 2, 1, 2) 
mesh(pa, "Sphere", 0.65, 0.45, 0.65) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, 3, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "White", char, 1, 2, 1) 
meshp(pa, 0.45, 0.45, 0.45) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0.2, 2.5, -0.25) * CFrame.Angles(1.97, 0, 0.25) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "White", char, 1, 2, 1) 
meshp(pa, 0.45, 0.45, 0.45) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(-0.2, 2.5, -0.25) * CFrame.Angles(1.97, 0, -0.25) + Vector3.new(0, 0, 0)) 

e1 = Instance.new("Part") 
prop(e1, "Really black", char, 1, 2, 1) 
meshp(e1, 0.15, 0.46, 0.15) 
weld(e1, e1, char.Head, CFrame.new(), CFrame.new(0.2, 2.5, -0.25) * CFrame.Angles(1.97, 0, 0.25) + Vector3.new(0, 0, 0)) 

e2 = Instance.new("Part") 
prop(e2, "Really black", char, 1, 2, 1) 
meshp(e2, 0.15, 0.46, 0.15) 
weld(e2, e2, char.Head, CFrame.new(), CFrame.new(-0.2, 2.5, -0.25) * CFrame.Angles(1.97, 0, -0.25) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Pastel brown", char, 1, 1, 1) 
mesh(pa, "Sphere", 0.45, 0.45, 0.65) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, 2.2, -0.75) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Pastel brown", char, 1, 1, 1) 
mesh(pa, "Sphere", 0.45, 0.45, 0.65) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0.14, 1.6, -0.75) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
pa.Transparency = 0.95
prop(pa, "Really black", char, 1, 1, 1) 
mesh(pa, "Sphere", 0.45, 0.45, 0.65) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0.14, 1.6, -0.75) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
prop(pa, "Pastel brown", char, 1, 1, 1) 
mesh(pa, "Sphere", 0.45, 0.45, 0.65) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(-0.14, 1.6, -0.75) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
pa.Transparency = 0.95
prop(pa, "Really black", char, 1, 1, 1) 
mesh(pa, "Sphere", 0.45, 0.45, 0.65) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(-0.14, 1.6, -0.75) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
pa.Transparency = 0
prop(pa, "Really black", char, 1, 1, 1) 
mesh(pa, "Sphere", 1, 0.15, 0.45) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, 1.9, -0.75) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pa = Instance.new("Part") 
pa.Transparency = 1
prop(pa, "Really black", char, 1, 1, 1) 
mesh(pa, "Sphere", 1, 0.15, 0.45) 
weld(pa, pa, char.Head, CFrame.new(), CFrame.new(0, 1.9, -0.75) * CFrame.Angles(0, 0, 0.25) + Vector3.new(0, 0, 0)) 

g1 = Instance.new("Part") 
g1.Transparency = 0.7 
prop(g1, "Really black", char, 1, 2, 1) 
meshp(g1, 0.19, 0.465, 0.19) 
weld(g1, g1, char.Head, CFrame.new(), CFrame.new(0.2, 2.5, -0.25) * CFrame.Angles(1.97, 0, 0.25) + Vector3.new(0, 0, 0)) 

g2 = Instance.new("Part") 
g2.Transparency = 0.7 
prop(g2, "Really black", char, 1, 2, 1) 
meshp(g2, 0.19, 0.465, 0.19) 
weld(g2, g2, char.Head, CFrame.new(), CFrame.new(-0.2, 2.5, -0.25) * CFrame.Angles(1.97, 0, -0.25) + Vector3.new(0, 0, 0)) 