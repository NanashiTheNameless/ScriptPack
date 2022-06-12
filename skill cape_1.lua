me = Game.Players.yfc

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.CanCollide = false 
pp:BreakJoints() 
pp.formFactor = "Symmetric" 
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
prop(pa, "White", me.Character, 4, 4, 1) 
mesh(pa, "Brick", 0.7, 0.85, 0.15) 
weld(pa, pa, me.Character.Torso, CFrame.new(), CFrame.new(0, -0.5, 0.55) * CFrame.Angles(0, 0, 0)) 

pb = Instance.new("Part") 
prop(pb, "White", me.Character, 1, 1, 1) 
mesh(pb, "Brick", 0.7, 0.25, 1.1) 
weld(pb, pb, me.Character.Torso, CFrame.new(), CFrame.new(1.1,  1.15, 0) * CFrame.Angles(0, 0, 0)) 

pc = Instance.new("Part") 
prop(pc, "White", me.Character, 1, 1, 1) 
mesh(pc, "Brick", 0.7, 0.25, 1.1) 
weld(pc, pc, me.Character.Torso, CFrame.new(), CFrame.new(-1.1,  1.15, 0) * CFrame.Angles(0, 0, 0)) 

pd = Instance.new("Part") 
prop(pd, "White", me.Character, 1, 2, 1) 
mesh(pd, "Brick", 0.7, 0.75, 0.15) 
weld(pd, pd, me.Character.Torso, CFrame.new(), CFrame.new(-1.1,  0.54, -0.55) * CFrame.Angles(0, 0, 0)) 

pe = Instance.new("Part") 
prop(pe, "White", me.Character, 1, 2, 1) 
mesh(pe, "Brick", 0.7, 0.75, 0.15) 
weld(pe, pe, me.Character.Torso, CFrame.new(), CFrame.new(1.1,  0.54, -0.55) * CFrame.Angles(0, 0, 0)) 

pf = Instance.new("Part") 
prop(pf, "White", me.Character, 2, 2, 1) 
mesh(pf, "Brick", 0.7, 0.85, 0.15) 
weld(pf, pf, me.Character.Torso, CFrame.new(), CFrame.new(0, -0.5, 0.6) * CFrame.Angles(0, 0, 0)) 

pg = Instance.new("Part") 
prop(pg, "White", me.Character, 1, 4, 1) 
mesh(pg, "Brick", 0.7, 0.85, 0.15) 
weld(pg, pg, me.Character.Torso, CFrame.new(), CFrame.new(1.1,  -0.5, 0.6) * CFrame.Angles(0, 0, 0)) 

ph = Instance.new("Part") 
prop(ph, "White", me.Character, 1, 4, 1) 
mesh(ph, "Brick", 0.7, 0.85, 0.15) 
weld(ph, ph, me.Character.Torso, CFrame.new(), CFrame.new(-1.1,  -0.5, 0.6) * CFrame.Angles(0, 0, 0)) 

de = Instance.new("Decal") 
de.Parent = pf 
de.Name = "Defence" 
de.Face = "Back" 
de.Texture = "http://www.roblox.com/asset/?id=9939622" 

if de.Name == "HP" then 
pb.BrickColor = BrickColor.new("Bright red") 
pc.BrickColor = BrickColor.new("Bright red") 
pd.BrickColor = BrickColor.new("Bright red") 
pe.BrickColor = BrickColor.new("Bright red") 
pg.BrickColor = BrickColor.new("Bright red") 
ph.BrickColor = BrickColor.new("Bright red") 
end 
if de.Name == "Attack" then 
pb.BrickColor = BrickColor.new("Bright red") 
pc.BrickColor = BrickColor.new("Bright red") 
pd.BrickColor = BrickColor.new("Bright red") 
pe.BrickColor = BrickColor.new("Bright red") 
pg.BrickColor = BrickColor.new("Bright red") 
ph.BrickColor = BrickColor.new("Bright red") 
end  
if de.Name == "Defence" then 
pb.BrickColor = BrickColor.new("Bright blue") 
pc.BrickColor = BrickColor.new("Bright blue") 
pd.BrickColor = BrickColor.new("Bright blue") 
pe.BrickColor = BrickColor.new("Bright blue") 
pg.BrickColor = BrickColor.new("Bright blue") 
ph.BrickColor = BrickColor.new("Bright blue") 
end  
if de.Name == "Range" then 
pb.BrickColor = BrickColor.new("Bright green") 
pc.BrickColor = BrickColor.new("Bright green") 
pd.BrickColor = BrickColor.new("Bright green") 
pe.BrickColor = BrickColor.new("Bright green") 
pg.BrickColor = BrickColor.new("Bright green") 
ph.BrickColor = BrickColor.new("Bright green") 
end  

--attack: http://www.roblox.com/asset/?id=38335733
--range: http://www.roblox.com/asset/?id=3188114
--defence: http://www.roblox.com/asset/?id=9939622
--hp: http://www.roblox.com/asset/?id=38952209