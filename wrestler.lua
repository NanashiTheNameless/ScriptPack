me = Game.Players.LocalPlayer
function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.Size = Vector3.new(x, y, z)
pp:BreakJoints() 
pp.formFactor = "Symmetric" 
pp.CanCollide = false 
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
prop(pa, "Really black", me.Character, 2, 1, 1) 
mesh(pa, "Head", 1.4, 1.65, 1.4) 
weld(pa, pa, me.Character.Head, CFrame.new(), CFrame.new(0, 0.15, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) ) 

p = Instance.new("Part") 
prop(p, "Light stone grey", me.Character, 1, 1, 1) 
meshp(p, 0.25, 0.25, 0.25) 
weld(p, p, pa, CFrame.new(), CFrame.new(0.15, 0.15, -0.55) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) ) 

ps = Instance.new("Part") 
prop(ps, "Light stone grey", me.Character, 1, 1, 1) 
meshp(ps, 0.25, 0.25, 0.25) 
weld(ps, ps, pa, CFrame.new(), CFrame.new(-0.15, 0.15, -0.55) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) ) 

pn = Instance.new("Part") 
prop(pn, "Really black", me.Character, 1, 1, 1) 
meshp(pn, 0.05, 0.05, 0.05) 
weld(pn, pn, pa, CFrame.new(), CFrame.new(0.15, 0.15, -0.68) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) ) 

psn = Instance.new("Part") 
prop(psn, "Really black", me.Character, 1, 1, 1) 
meshp(psn, 0.05, 0.05, 0.05) 
weld(psn, psn, pa, CFrame.new(), CFrame.new(-0.15, 0.15, -0.68) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) ) 

psr = Instance.new("Part") 
prop(psr, "White", me.Character, 1, 1, 1) 
mesh(psr, "Head", 0.15, 0.55, 0.15) 
weld(psr, psr, pa, CFrame.new(), CFrame.new(0, -0.4, -0.675) * CFrame.fromEulerAnglesXYZ(0, 0, 1.57) ) 

psrn = Instance.new("Part") 
prop(psrn, "White", me.Character, 1, 1, 1) 
meshp(psrn, 0.15, 0.55, 0.15) 
weld(psrn, psrn, pa, CFrame.new(), CFrame.new(0, -0.4, -0.675) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) ) 

while true do 
m = math.random(1, 3) 
wait(math.random(2, 2.5)) 
p.Transparency = 1
ps.Transparency = 1
pn.Transparency = 1
psn.Transparency = 1
wait(math.random(0.5, 1)) 
p.Transparency = 0
ps.Transparency = 0
pn.Transparency = 0
psn.Transparency = 0
if m == 1 then 
psr.Transparency = 1 
psrn.Transparency = 1 
end 
if m == 2 then 
psr.Transparency = 0 
psrn.Transparency = 1 
end 
if m == 3 then 
psr.Transparency = 0.5
psrn.Transparency = 1 
end 
end 