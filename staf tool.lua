me = game.Players.acb227

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Staff" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 

sp = script.Parent

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.Size = Vector3.new(x, y, z)
pp.BrickColor = BrickColor.new(color) 
pp.Parent = Parent 
end 

--[[ function weld(parent, a, b, c, d) 
ww = Instance.new("Weld") 
ww.Parent = parent 
ww.Part0 = a 
ww.Part1 = b 
ww.C0 = c 
ww.C1 = d 
end ]] 

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
paw = Instance.new("Weld") 
paw.Parent = pa 
paw.Part0 = pa 
paw.Part1 = me.Character.Torso 
paw.C0 = CFrame.new() 
paw.C1 = CFrame.new(0, 0, 0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 2.5)  

p = Instance.new("Part") 
p.CFrame = me.Character.Torso.CFrame 
p:BreakJoints() 
p.formFactor = "Symmetric" 
p.CanCollide = false 
prop(p, "Mid grey", me.Character, 1, 1, 1) 
mesh(p, "Head", 0.55, 0.9, 0.55) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Part0 = p 
pw.Part1 = pa 
pw.C0 = CFrame.new() 
pw.C1 = CFrame.new(0, 1.35, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)  

ps = Instance.new("Part") 
ps.CFrame = me.Character.Torso.CFrame 
ps:BreakJoints() 
ps.formFactor = "Symmetric" 
ps.CanCollide = false 
prop(ps, "Mid grey", me.Character, 1, 1, 1) 
meshp(ps, 0.85, 0.16, 0.85) 
psw = Instance.new("Weld") 
psw.Parent = ps 
psw.Part0 = ps 
psw.Part1 = p 
psw.C0 = CFrame.new() 
psw.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 1.55, 1.55)  

psn = Instance.new("Part") 
psn.CFrame = me.Character.Torso.CFrame 
psn:BreakJoints() 
psn.formFactor = "Symmetric" 
psn.CanCollide = false 
prop(psn, "Dark stone grey", me.Character, 3, 1, 1) 
mesh(psn, "Brick", 0.85, 0.15, 0.85) 
psnw = Instance.new("Weld") 
psnw.Parent = psn 
psnw.Part0 = psn 
psnw.Part1 = ps 
psnw.C0 = CFrame.new() 
psnw.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 1.55, 0)  

psr = Instance.new("Part") 
psr.CFrame = me.Character.Torso.CFrame 
psr:BreakJoints() 
psr.formFactor = "Symmetric" 
psr.CanCollide = false 
prop(psr, "Dark stone grey", me.Character, 3, 1, 1) 
mesh(psr, "Brick", 0.85, 0.15, 0.85) 
psrw = Instance.new("Weld") 
psrw.Parent = psr 
psrw.Part0 = psr 
psrw.Part1 = ps 
psrw.C0 = CFrame.new() 
psrw.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 2.2, 0)  

psrn = Instance.new("Part") 
psrn.CFrame = me.Character.Torso.CFrame 
psrn:BreakJoints() 
psrn.formFactor = "Symmetric" 
psrn.CanCollide = false 
prop(psrn, "Dark stone grey", me.Character, 3, 1, 1) 
mesh(psrn, "Brick", 0.85, 0.15, 0.85) 
psrnw = Instance.new("Weld") 
psrnw.Parent = psrn 
psrnw.Part0 = psrn 
psrnw.Part1 = ps 
psrnw.C0 = CFrame.new() 
psrnw.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0.9, 0)  


function selected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
paw.Part1 = me.Character["Right Arm"] 
paw.C1 = CFrame.fromEulerAnglesXYZ(-1.55, 0, 0) + Vector3.new(0, -0.8, 0) 
as = Instance.new("Weld") 
as.Parent = me.Character  
as.Part0 = me.Character["Right Arm"] 
as.Part1 = me.Character.Torso 
as.C0 = CFrame.new() 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.55, 0, 0)  
end 

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if key=="q" then 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.55, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.6, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.65, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.75, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.75, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.65, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.6, 0, 0)  
wait(0.1) 
as.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.55, 0, 0)  
wait(0.1) 
end 
if key=="t" then 

end 
end 
end 

function deselected()
paw.Part1 = me.Character["Torso"] 
paw.C1 = CFrame.new(0, 0, 0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 2.5)  
as.Part0 = nil 
as.Part1 = nil 
end

sp.Selected:connect(selected)
sp.Deselected:connect(deselected)