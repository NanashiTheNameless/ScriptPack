local name = "acb227"
local players = game:GetService("Players")
local me = players:FindFirstChild(name)
local char = me.Character 

for _, v in pairs(char:GetChildren()) do 
if v.className == "Hat" then 
v:remove() 
end 
end 

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.Size = Vector3.new(x, y, z) 
pp.formFactor = "Symmetric" 
pp.CanCollide = false 
pp.BrickColor = BrickColor.new(color) 
pp.Parent = Parent 
pp:BreakJoints() 
end 

function weld(parent, a, b, c) 
local ww = Instance.new("Weld") 
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

function mesh(part, type, x, y, z) 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = type 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

pcall(function() char.Gaara:remove() end) 

local mode = Instance.new("Model", char) 
mode.Name = "Gaara" 

local torso = Instance.new("Part") 
prop(torso, "Bright red", mode, 2, 2, 1) 
local torsom = Instance.new("BlockMesh") 
meshp(torsom, torso, 1.1, 1.1, 1.1) 
weld(torso, torso, char.Torso, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

for i = 1, 50 do 
local head = Instance.new("Part") 
prop(head, "Bright red", mode, 1, 1, 1) 
local headm = Instance.new("BlockMesh") 
meshp(headm, head, 1.25, 0.15, 0.15) 
headm.Bevel = 0 
weld(head, head, char.Head, CFrame.new(-0.01*i, 0.5, -0.01*i) * CFrame.Angles(0, 0, i/-i))
local head = Instance.new("Part") 
prop(head, "Bright red", mode, 1, 1, 1) 
local headm = Instance.new("BlockMesh") 
meshp(headm, head, 1.25, 0.15, 0.15) 
headm.Bevel = 0 
weld(head, head, char.Head, CFrame.new(0.01*i, 0.5, 0.01*i) * CFrame.Angles(0, 0, i/-i))
wait() 
end 

local torso1 = Instance.new("Part") 
prop(torso1, "Pastel orange", mode, 2, 1, 1) 
local torso1m = Instance.new("BlockMesh") 
meshp(torso1m, torso1, 1, 1.15, 1.15) 
weld(torso1, torso1, char.Torso, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local torso2 = Instance.new("Part") 
prop(torso2, "Pastel orange", mode, 1, 1, 1) 
local torso2m = Instance.new("BlockMesh") 
meshp(torso2m, torso2, 0.25, 0.25, 1.35) 
weld(torso2, torso2, char.Torso, CFrame.new(1, 0.25, 0) * CFrame.Angles(0, 0, 0)) 

local torso3 = Instance.new("Part") 
prop(torso3, "Pastel orange", mode, 1, 1, 1) 
local torso3m = Instance.new("BlockMesh") 
meshp(torso3m, torso3, 0.25, 0.25, 1.35) 
weld(torso3, torso3, char.Torso, CFrame.new(1, -0.25, 0) * CFrame.Angles(0, 0, 0)) 

local torso4 = Instance.new("Part") 
prop(torso4, "Pastel orange", mode, 1, 1, 1) 
local torso4m = Instance.new("BlockMesh") 
meshp(torso4m, torso4, 0.25, 0.25, 1.35) 
weld(torso4, torso4, char.Torso, CFrame.new(-1, -0.25, 0) * CFrame.Angles(0, 0, 0)) 

local torso5 = Instance.new("Part") 
prop(torso5, "Pastel orange", mode, 1, 1, 1) 
local torso5m = Instance.new("BlockMesh") 
meshp(torso5m, torso5, 0.25, 0.25, 1.35) 
weld(torso5, torso5, char.Torso, CFrame.new(-1, 0.25, 0) * CFrame.Angles(0, 0, 0)) 

local torso6 = Instance.new("WedgePart") 
prop(torso6, "Pastel orange", mode, 1, 1, 1) 
mesh(torso6, "Wedge", 1.15, 1.15, 1.45) 
weld(torso6, torso6, char.Torso, CFrame.new(-0.2, 0.6, 0) * CFrame.Angles(0, -1.6, 0)) 

local torso7 = Instance.new("Part") 
prop(torso7, "Pastel orange", mode, 2, 1, 1) 
local torso7m = Instance.new("BlockMesh") 
meshp(torso7m, torso7, 1.15, 0.35, 1.15) 
weld(torso7, torso7, char.Torso, CFrame.new(0, -0.8, 0) * CFrame.Angles(0, 0, 0.15)) 

local torso8 = Instance.new("Part") 
prop(torso8, "Pastel orange", mode, 2, 1, 1) 
local torso8m = Instance.new("BlockMesh") 
meshp(torso8m, torso8, 1.15, 0.35, 1.15) 
weld(torso8, torso8, char.Torso, CFrame.new(0, -1.05, 0) * CFrame.Angles(0, 0, 0)) 

local rrarm = Instance.new("Part") 
prop(rrarm, "Bright red", mode, 1, 2, 1) 
local rrarmm = Instance.new("BlockMesh") 
meshp(rrarmm, rrarm, 1.1, 0.76, 1.1) 
weld(rrarm, rrarm, char["Right Arm"], CFrame.new(0, 0.25, 0) * CFrame.Angles(0, 0, 0)) 

local rrarm2 = Instance.new("Part") 
prop(rrarm2, "Pastel brown", mode, 1, 2, 1) 
local rrarmm2 = Instance.new("BlockMesh") 
meshp(rrarmm2, rrarm2, 1.05, 1, 1.05) 
weld(rrarm2, rrarm2, char["Right Arm"], CFrame.new(0, -0.1, 0) * CFrame.Angles(0, 0, 0)) 

local lrarm = Instance.new("Part") 
prop(lrarm, "Bright red", mode, 1, 2, 1) 
local lrarmm = Instance.new("BlockMesh") 
meshp(lrarmm, lrarm, 1.1, 0.76, 1.1) 
weld(lrarm, lrarm, char["Left Arm"], CFrame.new(0, 0.25, 0) * CFrame.Angles(0, 0, 0)) 

local lrarm2 = Instance.new("Part") 
prop(lrarm2, "Pastel brown", mode, 1, 2, 1) 
local lrarmm2 = Instance.new("BlockMesh") 
meshp(lrarmm2, lrarm2, 1.05, 1, 1.05) 
weld(lrarm2, lrarm2, char["Left Arm"], CFrame.new(0, -0.1, 0) * CFrame.Angles(0, 0, 0)) 

local llarm = Instance.new("Part") 
prop(llarm, "Bright red", mode, 1, 2, 1) 
local llarmm = Instance.new("BlockMesh") 
meshp(llarmm, llarm, 1.1, 0.86, 1.1) 
weld(llarm, llarm, char["Left Leg"], CFrame.new(0, 0.15, 0) * CFrame.Angles(0, 0, 0)) 

local llarm2 = Instance.new("Part") 
prop(llarm2, "Pastel brown", mode, 1, 1, 1) 
local llarmm2 = Instance.new("BlockMesh") 
meshp(llarmm2, llarm2, 1.15, 0.25, 1.15) 
weld(llarm2, llarm2, char["Left Leg"], CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)) 

local rlarm3 = Instance.new("Part") 
prop(rlarm3, "Pastel brown", mode, 1, 1, 1) 
local rlarmm3 = Instance.new("BlockMesh") 
meshp(rlarmm3, rlarm3, 1.15, 0.25, 1.15) 
weld(rlarm3, rlarm3, char["Right Leg"], CFrame.new(0, 0.25, 0) * CFrame.Angles(0, 0, 0)) 

local rlarm4 = Instance.new("Part") 
prop(rlarm4, "Pastel brown", mode, 1, 1, 1) 
local rlarmm4 = Instance.new("BlockMesh") 
meshp(rlarmm4, rlarm4, 1.15, 0.25, 1.15) 
weld(rlarm4, rlarm4, char["Right Leg"], CFrame.new(0, -0.25, 0) * CFrame.Angles(0, 0, 0)) 

local llarm2 = Instance.new("Part") 
prop(llarm2, "Really black", mode, 1, 2, 1) 
local llarmm2 = Instance.new("BlockMesh") 
meshp(llarmm2, llarm2, 1.05, 1, 1.05) 
weld(llarm2, llarm2, char["Left Leg"], CFrame.new(0, -0.1, 0) * CFrame.Angles(0, 0, 0)) 

local rlarm2 = Instance.new("Part") 
prop(rlarm2, "Really black", mode, 1, 2, 1) 
local rlarmm2 = Instance.new("BlockMesh") 
meshp(rlarmm2, rlarm2, 1.05, 1, 1.05) 
weld(rlarm2, rlarm2, char["Right Leg"], CFrame.new(0, -0.1, 0) * CFrame.Angles(0, 0, 0)) 

local rlarm = Instance.new("Part") 
prop(rlarm, "Bright red", mode, 1, 2, 1) 
local rlarmm = Instance.new("BlockMesh") 
meshp(rlarmm, rlarm, 1.1, 0.86, 1.1) 
weld(rlarm, rlarm, char["Right Leg"], CFrame.new(0, 0.15, 0) * CFrame.Angles(0, 0, 0)) 