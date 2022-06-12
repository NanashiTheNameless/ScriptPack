me = Game.Players.yfc
char = me.Character 
suit = 3 

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.CanCollide = false 
pp.formFactor = "Symmetric" 
pp.Size = Vector3.new(x, y, z)
pp:BreakJoints() 
pp.BrickColor = BrickColor.new(color) 
pp.Parent = Parent 
end 

function weld(weld, parent, a, b, c) 
local ww = weld 
ww.Parent = parent 
ww.Part0 = a 
ww.Part1 = b 
ww.C1 = c 
end 

function meshp(mes, part, x, y, z) 
local mesh = mes 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z) 
if mesh.className == "BlockMesh" then 
mesh.Bevel = 0.1 
end 
end 

function mesh(mes, part, type, x, y, z) 
local mesh = mes 
mesh.MeshType = type 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

if suit == 1 then 

pcall(function() char.Mage:remove() end)
pcall(function() char.Night:remove() end)
pcall(function() char.Warrior:remove() end)

local model = Instance.new("Model", char) 
model.Name = "Night" 

local torso = Instance.new("Part") 
prop(torso, "Mid stone grey", model, 2, 2, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.1, 1.1, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 
local rights = Instance.new("Part") 
prop(rights, "Mid stone grey", model, 1, 1, 1) 
local rightsm = Instance.new("SpecialMesh") 
mesh(rightsm, rights, "Sphere",1.5, 1.5, 1.5) 
local rightsw = Instance.new("Weld") 
weld(rightsw, rights, rights, char["Right Arm"], CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0)) 
local righta = Instance.new("Part") 
prop(righta, "Mid stone grey", model, 1, 2, 1) 
local rightam = Instance.new("BlockMesh") 
meshp(rightam, righta,1.1, 1.1, 1.1) 
local rightaw = Instance.new("Weld") 
weld(rightaw, righta, righta, char["Right Arm"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 
local lefts = Instance.new("Part") 
prop(lefts, "Mid stone grey", model, 1, 1, 1) 
local leftsm = Instance.new("SpecialMesh") 
mesh(leftsm, lefts, "Sphere",1.5, 1.5, 1.5) 
local leftsw = Instance.new("Weld") 
weld(leftsw, lefts, lefts, char["Left Arm"], CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0)) 
local lefta = Instance.new("Part") 
prop(lefta, "Mid stone grey", model, 1, 2, 1) 
local leftam = Instance.new("BlockMesh") 
meshp(leftam, lefta,1.1, 1.1, 1.1) 
local leftaw = Instance.new("Weld") 
weld(leftaw, lefta, lefta, char["Left Arm"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 
local leftl = Instance.new("Part") 
prop(leftl, "Mid stone grey", model, 1, 2, 1) 
local leftlm = Instance.new("BlockMesh") 
meshp(leftlm, leftl,1.1, 1.1, 1.1) 
local leftlw = Instance.new("Weld") 
weld(leftlw, leftl, leftl, char["Left Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 
local rightl = Instance.new("Part") 
prop(rightl, "Mid stone grey", model, 1, 2, 1) 
local rightlm = Instance.new("BlockMesh") 
meshp(rightlm, rightl,1.1, 1.1, 1.1) 
local rightlw = Instance.new("Weld") 
weld(rightlw, rightl, rightl, char["Right Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 
local leftn = Instance.new("Part") 
prop(leftn, "Mid stone grey", model, 1, 1, 1) 
local leftnm = Instance.new("SpecialMesh") 
mesh(leftnm, leftn, "Sphere",1.5, 1.5, 1.5) 
local leftnw = Instance.new("Weld") 
weld(leftnw, leftn, leftn, char["Left Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 
local rightn = Instance.new("Part") 
prop(rightn, "Mid stone grey", model, 1, 1, 1) 
local rightnm = Instance.new("SpecialMesh") 
mesh(rightnm, rightn, "Sphere",1.5, 1.5, 1.5) 
local rightnw = Instance.new("Weld") 
weld(rightnw, rightn, rightn, char["Right Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

end 
if suit == 2 then 

pcall(function() char.Mage:remove() end)
pcall(function() char.Night:remove() end)
pcall(function() char.Warrior:remove() end)

local model = Instance.new("Model", char) 
model.Name = "Mage" 

local torso = Instance.new("Part") 
prop(torso, "Bright blue", model, 2, 2, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.1, 1.1, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local rarm = Instance.new("Part") 
prop(rarm, "Bright blue", model, 1, 2, 1) 
local rarmm = Instance.new("BlockMesh") 
meshp(rarmm, rarm, 1.1, 1.1, 1.1) 
local rarmw = Instance.new("Weld") 
weld(rarmw, rarm, rarm, char["Right Arm"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local larm = Instance.new("Part") 
prop(larm, "Bright blue", model, 1, 2, 1) 
local larmm = Instance.new("BlockMesh") 
meshp(larmm, larm, 1.1, 1.1, 1.1) 
local larmw = Instance.new("Weld") 
weld(larmw, larm, larm, char["Left Arm"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local rleg = Instance.new("Part") 
prop(rleg, "Bright blue", model, 1, 2, 1) 
local rlegm = Instance.new("BlockMesh") 
meshp(rlegm, rleg, 1.1, 1.1, 1.1) 
local rlegw = Instance.new("Weld") 
weld(rlegw, rleg, rleg, char["Right Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local lleg = Instance.new("Part") 
prop(lleg, "Bright blue", model, 1, 2, 1) 
local llegm = Instance.new("BlockMesh") 
meshp(llegm, lleg, 1.1, 1.1, 1.1) 
local llegw = Instance.new("Weld") 
weld(llegw, lleg, lleg, char["Left Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 
end 
if suit == 3 then 

pcall(function() char.Mage:remove() end)
pcall(function() char.Night:remove() end)
pcall(function() char.Warrior:remove() end)

local model = Instance.new("Model", char) 
model.Name = "Mage" 

local torso = Instance.new("Part") 
prop(torso, "Pastel brown", model, 2, 2, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.1, 1.1, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local torso = Instance.new("Part") 
prop(torso, "Pastel brown", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.65, 0.45, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(0.25, -0.25, -0.05) * CFrame.Angles(0, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Pastel brown", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.65, 0.45, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(0.25, -0.85, -0.05) * CFrame.Angles(0, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Pastel brown", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.65, 0.45, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(0.25, -0.55, -0.05) * CFrame.Angles(0, 0, 0)) 

local torso = Instance.new("Part") 
prop(torso, "Pastel brown", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.65, 0.45, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(-0.25, -0.25, -0.05) * CFrame.Angles(0, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Pastel brown", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.65, 0.45, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(-0.25, -0.85, -0.05) * CFrame.Angles(0, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Pastel brown", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.65, 0.45, 1.1) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(-0.25, -0.55, -0.05) * CFrame.Angles(0, 0, 0)) 

local strap = Instance.new("Part") 
prop(strap, "Brown", model, 1, 2, 1) 
local strapm = Instance.new("BlockMesh") 
meshp(strapm, strap, 0.5, 1.5, 1.45) 
local strapw = Instance.new("Weld") 
weld(strapw, strap, strap, char.Torso, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 7)) 

local rarm = Instance.new("Part") 
prop(rarm, "Pastel brown", model, 1, 2, 1) 
local rarmm = Instance.new("BlockMesh") 
meshp(rarmm, rarm, 1.1, 1.1, 1.1) 
local rarmw = Instance.new("Weld") 
weld(rarmw, rarm, rarm, char["Right Arm"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local larm = Instance.new("Part") 
prop(larm, "Pastel brown", model, 1, 2, 1) 
local larmm = Instance.new("BlockMesh") 
meshp(larmm, larm, 1.1, 1.1, 1.1) 
local larmw = Instance.new("Weld") 
weld(larmw, larm, larm, char["Left Arm"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local rleg = Instance.new("Part") 
prop(rleg, "Pastel brown", model, 1, 2, 1) 
local rlegm = Instance.new("BlockMesh") 
meshp(rlegm, rleg, 1.1, 1.1, 1.1) 
local rlegw = Instance.new("Weld") 
weld(rlegw, rleg, rleg, char["Right Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local lleg = Instance.new("Part") 
prop(lleg, "Pastel brown", model, 1, 2, 1) 
local llegm = Instance.new("BlockMesh") 
meshp(llegm, lleg, 1.1, 1.1, 1.1) 
local llegw = Instance.new("Weld") 
weld(llegw, lleg, lleg, char["Left Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local torso = Instance.new("Part") 
prop(torso, "Black", model, 2, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.15, 0.2, 1.3) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char.Torso, CFrame.new(0, -0.95, 0) * CFrame.Angles(0, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.15, 0.75, 1.15) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Right Leg"], CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.15, 0.75, 1.15) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Left Leg"], CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.5, 0.75, 1.15) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Right Leg"], CFrame.new(0.15, 0.5, 0) * CFrame.Angles(0, 0, 7)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.5, 0.75, 1.15) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Right Leg"], CFrame.new(-0.15, 0.5, 0) * CFrame.Angles(0, 0, -7)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.15, 0.75, 0.5) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Right Leg"], CFrame.new(0, 0.6, 0) * CFrame.Angles(7, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.15, 0.75, 0.5) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Right Leg"], CFrame.new(0, 0.6, 0) * CFrame.Angles(-7, 0, 0)) 

local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.5, 0.75, 1.15) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Left Leg"], CFrame.new(0.15, 0.5, 0) * CFrame.Angles(0, 0, 7)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 0.5, 0.75, 1.15) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Left Leg"], CFrame.new(-0.15, 0.5, 0) * CFrame.Angles(0, 0, -7)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.15, 0.75, 0.5) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Left Leg"], CFrame.new(0, 0.6, 0) * CFrame.Angles(7, 0, 0)) 
local torso = Instance.new("Part") 
prop(torso, "Dark orange", model, 1, 1, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.15, 0.75, 0.5) 
local torsow = Instance.new("Weld") 
weld(torsow, torso, torso, char["Left Leg"], CFrame.new(0, 0.6, 0) * CFrame.Angles(-7, 0, 0)) 

end 