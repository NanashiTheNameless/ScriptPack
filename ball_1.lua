me = Game.Players.acbalt
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
prop(pa, "Really black", me.Character, 7, 7, 7) 
mesh(pa, "Sphere", 1, 1, 1)
weld(pa, pa, me.Character.Torso, CFrame.new(), CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) ) 

me.Character.Torso.CFrame = me.Character.Torso.CFrame + Vector3.new(0, 5, 0)