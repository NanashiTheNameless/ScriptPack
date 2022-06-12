me = Game.Players.yfc
char = me.Character 

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.CanCollide = false 
pp.formFactor = "Symmetric" 
pp.Size = Vector3.new(x, y, z)
pp:BreakJoints() 
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

--//torso\\--
pa = Instance.new("Part") 
prop(pa, "Dark stone grey", char, 2, 2, 1) 
mesh(pa, "Brick", 1.01, 1.01, 1.01) 
weld(pa, pa, char.Torso, CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0,0, 0)) 

pb = Instance.new("Part") 
prop(pb, "Really black", char, 3, 2, 1) 
mesh(pb, "Brick", 0.75, 0.05, 1.02) 
weld(pb, pb, char.Torso, CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 1.75/2) + Vector3.new(0, 0, 0)) 

pc = Instance.new("Part") 
prop(pc, "Really black", char, 3, 2, 1) 
mesh(pc, "Brick", 0.75, 0.05, 1.02) 
weld(pc, pc, char.Torso, CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.75/2) + Vector3.new(0, 0, 0)) 

pd = Instance.new("Part") 
prop(pd, "Really black", char, 1, 1, 1) 
meshp(pd, 0.5, 1.025, 0.5) 
weld(pd, pd, char.Torso, CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(1.57, 0, 0) + Vector3.new(0, 0, 0)) 

pe = Instance.new("Part") 
prop(pe, "Really black", char, 2, 2, 1) 
mesh(pe, "Brick", 0.05, 0.9, 1.015) 
weld(pe, pe, char.Torso, CFrame.new(), CFrame.new(0.7, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pf = Instance.new("Part") 
prop(pf, "Really black", char, 2, 2, 1) 
mesh(pf, "Brick", 0.05, 0.9, 1.015) 
weld(pf, pf, char.Torso, CFrame.new(), CFrame.new(-0.7, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pg = Instance.new("Part") 
prop(pg, "Really black", char, 2, 2, 1) 
mesh(pg, "Brick", 0.75, 0.05, 1.015) 
weld(pg, pg, char.Torso, CFrame.new(), CFrame.new(0, 0.9, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

ph = Instance.new("Part") 
prop(ph, "Really black", char, 2, 2, 1) 
mesh(ph, "Brick", 0.75, 0.05, 1.015) 
weld(ph, ph, char.Torso, CFrame.new(), CFrame.new(0, -0.9, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pi = Instance.new("Part") 
prop(pi, "Really black", char, 2, 2, 1) 
mesh(pi, "Brick", 0.75, 0.05, 1.015) 
weld(pi, pi, char.Torso, CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pj = Instance.new("Part") 
prop(pj, "Really black", char, 2, 2, 1) 
mesh(pj, "Brick", 0.05, 0.85, 1.015) 
weld(pj, pj, char.Torso, CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

--//Right Arm\\--
pk = Instance.new("Part") 
prop(pk, "Dark stone grey", char, 1, 2, 1) 
mesh(pk, "Brick", 1.01, 1.01, 1.01) 
weld(pk, pk, char["Right Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pl = Instance.new("Part") 
prop(pl, "Really black", char, 1, 2, 1) 
mesh(pl, "Brick", 0.1, 0.785, 1.015) 
weld(pl, pl, char["Right Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pm = Instance.new("Part") 
prop(pm, "Really black", char, 1, 1, 1) 
mesh(pm, "Brick", 0.785, 0.1, 1.015) 
weld(pm, pm, char["Right Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pn = Instance.new("Part") 
prop(pn, "Really black", char, 1, 2, 1) 
mesh(pn, "Brick", 0.1, 0.85, 1.015) 
weld(pn, pn, char["Right Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.87/2) + Vector3.new(0, 0, 0)) 

po = Instance.new("Part") 
prop(po, "Really black", char, 1, 2, 1) 
mesh(po, "Brick", 0.1, 0.85, 1.015) 
weld(po, po, char["Right Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -0.87/2) + Vector3.new(0, 0, 0)) 

pp = Instance.new("Part") 
prop(pp, "Really black", char, 1, 1, 1) 
mesh(pp, "Brick", 0.785, 0.1, 1.015) 
weld(pp, pp, char["Right Arm"], CFrame.new(), CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pq = Instance.new("Part") 
prop(pq, "Really black", char, 1, 1, 1) 
mesh(pq, "Brick", 0.785, 0.1, 1.015) 
weld(pq, pq, char["Right Arm"], CFrame.new(), CFrame.new(0, -0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pr = Instance.new("Part") 
prop(pr, "Really black", char, 1, 2, 1) 
mesh(pr, "Brick", 0.1, 0.785, 1.015) 
weld(pr, pr, char["Right Arm"], CFrame.new(), CFrame.new(0.35, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

ps = Instance.new("Part") 
prop(ps, "Really black", char, 1, 2, 1) 
mesh(ps, "Brick", 0.1, 0.785, 1.015) 
weld(ps, ps, char["Right Arm"], CFrame.new(), CFrame.new(-0.35, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pt = Instance.new("Part") 
prop(pt, "Really black", char, 1, 1, 1) 
meshp(pt, 0.5, 1.015, 0.5) 
weld(pt, pt, char["Right Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(1.57, 0, 0) + Vector3.new(0, 0, 0)) 

--//Left Arm\\--
pk = Instance.new("Part") 
prop(pk, "Dark stone grey", char, 1, 2, 1) 
mesh(pk, "Brick", 1.01, 1.01, 1.01) 
weld(pk, pk, char["Left Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pl = Instance.new("Part") 
prop(pl, "Really black", char, 1, 2, 1) 
mesh(pl, "Brick", 0.1, 0.785, 1.015) 
weld(pl, pl, char["Left Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pm = Instance.new("Part") 
prop(pm, "Really black", char, 1, 1, 1) 
mesh(pm, "Brick", 0.785, 0.1, 1.015) 
weld(pm, pm, char["Left Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pn = Instance.new("Part") 
prop(pn, "Really black", char, 1, 2, 1) 
mesh(pn, "Brick", 0.1, 0.85, 1.015) 
weld(pn, pn, char["Left Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.87/2) + Vector3.new(0, 0, 0)) 

po = Instance.new("Part") 
prop(po, "Really black", char, 1, 2, 1) 
mesh(po, "Brick", 0.1, 0.85, 1.015) 
weld(po, po, char["Left Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -0.87/2) + Vector3.new(0, 0, 0)) 

pp = Instance.new("Part") 
prop(pp, "Really black", char, 1, 1, 1) 
mesh(pp, "Brick", 0.785, 0.1, 1.015) 
weld(pp, pp, char["Left Arm"], CFrame.new(), CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pq = Instance.new("Part") 
prop(pq, "Really black", char, 1, 1, 1) 
mesh(pq, "Brick", 0.785, 0.1, 1.015) 
weld(pq, pq, char["Left Arm"], CFrame.new(), CFrame.new(0, -0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pr = Instance.new("Part") 
prop(pr, "Really black", char, 1, 2, 1) 
mesh(pr, "Brick", 0.1, 0.785, 1.015) 
weld(pr, pr, char["Left Arm"], CFrame.new(), CFrame.new(0.35, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

ps = Instance.new("Part") 
prop(ps, "Really black", char, 1, 2, 1) 
mesh(ps, "Brick", 0.1, 0.785, 1.015) 
weld(ps, ps, char["Left Arm"], CFrame.new(), CFrame.new(-0.35, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pt = Instance.new("Part") 
prop(pt, "Really black", char, 1, 1, 1) 
meshp(pt, 0.5, 1.015, 0.5) 
weld(pt, pt, char["Left Arm"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(1.57, 0, 0) + Vector3.new(0, 0, 0)) 

--//Left Leg\\--
pk = Instance.new("Part") 
prop(pk, "Dark stone grey", char, 1, 2, 1) 
mesh(pk, "Brick", 1.01, 1.01, 1.01) 
weld(pk, pk, char["Left Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pl = Instance.new("Part") 
prop(pl, "Really black", char, 1, 2, 1) 
mesh(pl, "Brick", 0.1, 0.785, 1.015) 
weld(pl, pl, char["Left Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pm = Instance.new("Part") 
prop(pm, "Really black", char, 1, 1, 1) 
mesh(pm, "Brick", 0.785, 0.1, 1.015) 
weld(pm, pm, char["Left Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pn = Instance.new("Part") 
prop(pn, "Really black", char, 1, 2, 1) 
mesh(pn, "Brick", 0.1, 0.85, 1.015) 
weld(pn, pn, char["Left Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.87/2) + Vector3.new(0, 0, 0)) 

po = Instance.new("Part") 
prop(po, "Really black", char, 1, 2, 1) 
mesh(po, "Brick", 0.1, 0.85, 1.015) 
weld(po, po, char["Left Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -0.87/2) + Vector3.new(0, 0, 0)) 

pp = Instance.new("Part") 
prop(pp, "Really black", char, 1, 1, 1) 
mesh(pp, "Brick", 0.785, 0.1, 1.015) 
weld(pp, pp, char["Left Leg"], CFrame.new(), CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pq = Instance.new("Part") 
prop(pq, "Really black", char, 1, 1, 1) 
mesh(pq, "Brick", 0.785, 0.1, 1.015) 
weld(pq, pq, char["Left Leg"], CFrame.new(), CFrame.new(0, -0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pr = Instance.new("Part") 
prop(pr, "Really black", char, 1, 2, 1) 
mesh(pr, "Brick", 0.1, 0.785, 1.015) 
weld(pr, pr, char["Left Leg"], CFrame.new(), CFrame.new(0.35, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

ps = Instance.new("Part") 
prop(ps, "Really black", char, 1, 2, 1) 
mesh(ps, "Brick", 0.1, 0.785, 1.015) 
weld(ps, ps, char["Left Leg"], CFrame.new(), CFrame.new(-0.35, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pt = Instance.new("Part") 
prop(pt, "Really black", char, 1, 1, 1) 
meshp(pt, 0.5, 1.015, 0.5) 
weld(pt, pt, char["Left Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(1.57, 0, 0) + Vector3.new(0, 0, 0)) 

--/Right Leg\\--
pk = Instance.new("Part") 
prop(pk, "Dark stone grey", char, 1, 2, 1) 
mesh(pk, "Brick", 1.01, 1.01, 1.01) 
weld(pk, pk, char["Right Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pl = Instance.new("Part") 
prop(pl, "Really black", char, 1, 2, 1) 
mesh(pl, "Brick", 0.1, 0.785, 1.015) 
weld(pl, pl, char["Right Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pm = Instance.new("Part") 
prop(pm, "Really black", char, 1, 1, 1) 
mesh(pm, "Brick", 0.785, 0.1, 1.015) 
weld(pm, pm, char["Right Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pn = Instance.new("Part") 
prop(pn, "Really black", char, 1, 2, 1) 
mesh(pn, "Brick", 0.1, 0.85, 1.015) 
weld(pn, pn, char["Right Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.87/2) + Vector3.new(0, 0, 0)) 

po = Instance.new("Part") 
prop(po, "Really black", char, 1, 2, 1) 
mesh(po, "Brick", 0.1, 0.85, 1.015) 
weld(po, po, char["Right Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -0.87/2) + Vector3.new(0, 0, 0)) 

pp = Instance.new("Part") 
prop(pp, "Really black", char, 1, 1, 1) 
mesh(pp, "Brick", 0.785, 0.1, 1.015) 
weld(pp, pp, char["Right Leg"], CFrame.new(), CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pq = Instance.new("Part") 
prop(pq, "Really black", char, 1, 1, 1) 
mesh(pq, "Brick", 0.785, 0.1, 1.015) 
weld(pq, pq, char["Right Leg"], CFrame.new(), CFrame.new(0, -0.75, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pr = Instance.new("Part") 
prop(pr, "Really black", char, 1, 2, 1) 
mesh(pr, "Brick", 0.1, 0.785, 1.015) 
weld(pr, pr, char["Right Leg"], CFrame.new(), CFrame.new(0.35, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

ps = Instance.new("Part") 
prop(ps, "Really black", char, 1, 2, 1) 
mesh(ps, "Brick", 0.1, 0.785, 1.015) 
weld(ps, ps, char["Right Leg"], CFrame.new(), CFrame.new(-0.35, 0, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, 0)) 

pt = Instance.new("Part") 
prop(pt, "Really black", char, 1, 1, 1) 
meshp(pt, 0.5, 1.015, 0.5) 
weld(pt, pt, char["Right Leg"], CFrame.new(), CFrame.new(0, 0, 0) * CFrame.Angles(1.57, 0, 0) + Vector3.new(0, 0, 0)) 