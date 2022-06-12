me = Game.Players.acb227

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


p = Instance.new("Part") 
prop(p, "Really black", me.Character, 1, 2, 1) 
mesh(p, "Brick", 0.5, 0.5, 0.7) 
weld(p, p, me.Character["Torso"], CFrame.new(0, 0,0), CFrame.new(0, 0.5, -1.2) * CFrame.fromEulerAnglesXYZ(0, 0, 0))