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
ws = Instance.new("Weld") 
ws.Parent = pa 
ws.Part0 = pa 
ws.Part1 = me.Character.Torso 
ws.C1 = CFrame.new(0, 0, 0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 2.5)  

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
ww.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0.9, 0)  

local wes = Instance.new("Weld") 

function onButton1Down(mouse) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.87, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.97, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.07, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.17, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.27, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.37, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.47, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.47, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.37, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.27, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.17, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.07, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.97, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.87, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.47, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.37, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.27, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.17, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.07, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.97, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.87, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.47, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.37, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.27, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.17, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.07, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.17, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.27, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.37, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.47, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.87, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.97, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.07, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.17, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.27, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.37, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.47, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.87, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
wait(0.1) 
end 

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "q" then 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0.1, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.67, 0.2, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.77, 0.3, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.87, 0.4, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.97, 0.5, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.07, 0.6, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.17, 0.7, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.27, 0.8, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.37, 0.9, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.47, 1, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.57, 0.9, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.47, 0.8, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.37, 0.7, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.27, 0.6, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.17, 0.5, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2.07, 0.4, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.97, 0.3, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.87, 0.2, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.77, 0.1, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.67, -0.1, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, -0.2, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, -0.3, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.47, -0.4, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.37, -0.5, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.27, -0.6, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.17, -0.7, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.07, -0.8, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.97, -0.9, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.87, -0.8, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.77, -0.7, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.67, -0.6, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.57, -0.5, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.47, -0.4, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.37, -0.3, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.27, -0.2, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.17, -0.1, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.07, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.17, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.27, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.37, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.47, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.87, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0.97, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.07, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.17, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.27, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.37, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.47, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.87, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.77, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.67, 0, 0)  
wait(0.1) 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
wait(0.1) 
end 
end 
end 

function sele(mouse) 
ws.Part1 = me.Character["Right Arm"] 
ws.C1 = CFrame.new(0, -1, -1) * CFrame.fromEulerAnglesXYZ(-1.57, 1.57, 0)  

wes.Parent = me.Character["Right Arm"] 
wes.Part0 = me.Character["Right Arm"] 
wes.Part1 = me.Character.Torso 
wes.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end 

function dele() 
ws.Part1 = me.Character["Torso"] 
ws.C0 = CFrame.new() 
ws.C1 = CFrame.new(0, 0, 0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 2.5)  

wes:remove() 
me.Character:MakeJoints() 
end 

bin.Selected:connect(sele) 
bin.Deselected:connect(dele) 