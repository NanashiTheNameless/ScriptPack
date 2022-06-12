me = game.Players.acb227 

if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin",me.Backpack) 
h.Name = "Wand" 
script.Parent = h 
end 

sp = script.Parent 
eq = false 

bricka = Instance.new("Part",me.Character) 
bricka.formFactor = 0 
bricka.Size = Vector3.new(1,1,1) 
bricka.CanCollide = false 
bricka.Transparency = 1 
bricka:BreakJoints() 
weld = Instance.new("Weld",me.Character.Torso) 
weld.Part0 = weld.Parent 
weld.Part1 = bricka 
weld.C1 = CFrame.new(-1.5,-0.5,0) 

rarm = Instance.new("Weld",bricka) 
rarm.Part0 = nil 
rarm.Part1 = nil 
rarm.C1 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0,0,0.5) 

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
ws.C0 = CFrame.new() 
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


function select(mouse) 
ws.Part1 = me.Character["Right Arm"] 
s.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 2.5)  
rarm.Part0 = rarm.Parent 
rarm.Part1 = me.Character["Right Arm"] 
mouse.Button1Down:connect(function() 
for i=1, 6, 0.2 do 
wait() 
local p = Instance.new("Part") 
prop(p, wand, false, 0.2, 0, 1, 1, 1, math.random(1, 100)) 
p.Anchored = true 
p.TopSurface = 0 
p.BottomSurface = 0 
local a1 = math.random(-100,100) 
local a2 = math.random(-100,100) 
local a3 = math.random(-100,100) 
p.CFrame = CFrame.new(pa.Position) * CFrame.Angles(a1,a2,a3) * CFrame.new(0,5,0) 
coroutine.resume(coroutine.create(function() 
for i=1, 8 do 
wait() 
p.CFrame = p.CFrame * CFrame.new(0,-0.6,0) 
end 
p:remove() 
end)) 
end 
wait(0.4) 
end) 
end 

function desel() 
rarm.Part0 = nil 
rarm.Part1 = nil 
end 

sp.Selected:connect(select) 
sp.Deselected:connect(desel) 

 
