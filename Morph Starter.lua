local me = "lordsheen" 
local char = Workspace[me] 

Instance.new("ForceField", char)

for i,e in pairs(char:GetChildren()) do 
local r = e
if r.className == "Hat" then 
local w = Instance.new("Weld") 
w.Part1 = h 
w.Part0 = e 
local C1 = h.CFrame 
local C0 = h.CFrame - Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 
end 
end 

local t = char.Torso 
local h = char.Head 
local ra = char["Right Arm"] 
local rl = char["Right Leg"] 
local la = char["Left Arm"] 
local ll = char["Left Leg"] 

h.formFactor = "Symmetric"
h.BrickColor = BrickColor.new("Brown")
h.Shape = "Ball" 
h.Size = Vector3.new(2,2,2)
r.Handle.Mesh.Scale = Vector3.new(h.Size.X,h.Size.Y,h.Size.Z)
h.Mesh:Remove() 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = h 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(0,(h.Size.Y-0.1),0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 
