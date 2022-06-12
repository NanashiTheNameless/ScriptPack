me = Game.Players.acb227

function prop(part, color, Parent, x, y, z) 
local pp = part 
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
pa.CFrame = me.Character.Torso.CFrame 
pa:BreakJoints() 
pa.formFactor = "Symmetric" 
pa.CanCollide = false 
prop(pa, "Brown", me.Character, 1, 4, 1) 
mesh(pa, "Head", 0.45, 1.01, 0.45) 
ww = Instance.new("Weld") 
ww.Parent = pa 
ww.Part0 = pa 
ww.Part1 = me.Character.Torso 
ww.C0 = CFrame.new() 
ww.C1 = CFrame.new(0, 0, 0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 2.5)  

p = Instance.new("Part") 
p.CFrame = me.Character.Torso.CFrame 
p:BreakJoints() 
p.formFactor = "Symmetric" 
p.CanCollide = false 
prop(p, "Mid grey", me.Character, 1, 1, 1) 
mesh(p, "Head", 0.55, 0.9, 0.55) 
ww = Instance.new("Weld") 
ww.Parent = p 
ww.Part0 = p 
ww.Part1 = pa 
ww.C0 = CFrame.new() 
ww.C1 = CFrame.new(0, 1.35, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)  

ps = Instance.new("Part") 
ps.CFrame = me.Character.Torso.CFrame 
ps:BreakJoints() 
ps.formFactor = "Symmetric" 
ps.CanCollide = false 
prop(ps, "Mid grey", me.Character, 1, 1, 1) 
meshp(ps, 0.85, 0.16, 0.85) 
ww = Instance.new("Weld") 
ww.Parent = ps 
ww.Part0 = ps 
ww.Part1 = p 
ww.C0 = CFrame.new() 
ww.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 1.55, 1.55)  

psn = Instance.new("Part") 
psn.CFrame = me.Character.Torso.CFrame 
psn:BreakJoints() 
psn.formFactor = "Symmetric" 
psn.CanCollide = false 
prop(psn, "Dark stone grey", me.Character, 3, 1, 1) 
mesh(psn, "Brick", 0.85, 0.15, 0.85) 
ww = Instance.new("Weld") 
ww.Parent = psn 
ww.Part0 = psn 
ww.Part1 = ps 
ww.C0 = CFrame.new() 
ww.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 1.55, 0)  

psr = Instance.new("Part") 
psr.CFrame = me.Character.Torso.CFrame 
psr:BreakJoints() 
psr.formFactor = "Symmetric" 
psr.CanCollide = false 
prop(psr, "Dark stone grey", me.Character, 3, 1, 1) 
mesh(psr, "Brick", 0.85, 0.15, 0.85) 
ww = Instance.new("Weld") 
ww.Parent = psr 
ww.Part0 = psr 
ww.Part1 = ps 
ww.C0 = CFrame.new() 
ww.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 2.2, 0)  

psrn = Instance.new("Part") 
psrn.CFrame = me.Character.Torso.CFrame 
psrn:BreakJoints() 
psrn.formFactor = "Symmetric" 
psrn.CanCollide = false 
prop(psrn, "Dark stone grey", me.Character, 3, 1, 1) 
mesh(psrn, "Brick", 0.85, 0.15, 0.85) 
ww = Instance.new("Weld") 
ww.Parent = psrn 
ww.Part0 = psrn 
ww.Part1 = ps 
ww.C0 = CFrame.new() 
ww.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0.9, 0)  