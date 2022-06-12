me = Game.Players.acb227 

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "build" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 

bin = script.Parent 

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp:BreakJoints() 
pp.CanCollide = false 
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
prop(pa, "Light blue", me.Character, 1, 2, 1) 
mesh(pa, "Brick", 0.85, 1, 0.2) 
local ws = Instance.new("Weld") 
ws.Parent = pa 
ws.Part0 = pa 
ws.Part1 = me.Character.Torso 
ws.C0 = CFrame.new()  
ws.C1 = CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, 0.75) 

ps = Instance.new("Part") 
prop(ps, "Light blue", me.Character, 1, 1, 1) 
meshp(ps, 0.25, 1, 0.25) 
weld(ps, ps, pa, CFrame.new(), CFrame.new(0, 1.8, 0) * CFrame.Angles(0, 0, 0)) 

ps = Instance.new("Part") 
prop(ps, "Light blue", me.Character, 1, 1, 1) 
mesh(ps, "Brick", 1, 0.75, 0.2) 
weld(ps, ps, pa, CFrame.new(), CFrame.new(0, 0.7, 0) * CFrame.Angles(0, 0, 0.65)) 

bin.Selected(function(mouse) 
ws.Part1 = me.Character["Right Arm"] 
end) 