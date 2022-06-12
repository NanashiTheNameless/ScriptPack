--lordsheen's Dog Morph Script---------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
local me = game.Players.lordsheen
local char = me.Character 

for i,p in pairs(char.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "CharacterMesh" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Hat" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Shirt" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Pants" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "ShirtGraphic" then 
p:Remove() 
end 
end 
wait() 

char["Body Colors"].HeadColor = BrickColor.new("Reddish brown") 
char["Body Colors"].LeftArmColor = BrickColor.new("Reddish brown") 
char["Body Colors"].RightArmColor = BrickColor.new("Reddish brown") 
char["Body Colors"].LeftLegColor = BrickColor.new("Reddish brown") 
char["Body Colors"].RightLegColor = BrickColor.new("Reddish brown") 
char["Body Colors"].TorsoColor = BrickColor.new("Brown") 

local t = char.Torso 
local h = char.Head 
local ra = char["Right Arm"] 
local rl = char["Right Leg"] 
local la = char["Left Arm"] 
local ll = char["Left Leg"] 

h.formFactor = "Symmetric"
h.BrickColor = BrickColor.new("Reddish brown")
h.Size = Vector3.new(2,2,2)
h.Shape = "Ball" 
for i,p in pairs(h:GetChildren()) do 
if p.className == "SpecialMesh" then 
h.Mesh:Remove() 
end 
end 
wait() 

t.formFactor = "Symmetric"
t.BrickColor = BrickColor.new("Brown")
t.Size = Vector3.new(3,1,4)

h.BrickColor = BrickColor.new("Reddish brown")
ra.BrickColor = BrickColor.new("Reddish brown")
la.BrickColor = BrickColor.new("Reddish brown")
rl.BrickColor = BrickColor.new("Reddish brown")
ll.BrickColor = BrickColor.new("Reddish brown")

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = h 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(0,1,-2) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = ra 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(1,-1.4,-1.5) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = la 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(-1,-1.4,-1.5) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = rl 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(1,-1.4,1.5) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = ll 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(-1,-1.4,1.5) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

h = Instance.new("Hat")
p = Instance.new("Part")
h.Name = "Hat"
p.Parent = h
p.Position = char.Head.Position 
p.Name = "Handle" 
p.formFactor = 0
p.Size = Vector3.new(0,-0.25,0) 
p.BottomSurface = 0 
p.TopSurface = 0 
p.Locked = true 
m = Instance.new("SpecialMesh")
m.Parent= p
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1028713"
m.TextureId = "http://www.roblox.com/asset/?id=51495000"
m.Scale = Vector3.new(1.5,1.5,1.5)
h.Parent = char 
h.AttachmentPos = Vector3.new(0, -0.25, -0.05)
h.AttachmentUp = Vector3.new(0, 0.981, -0.196)
h.AttachmentRight = Vector3.new(1, 0, 0)
h.AttachmentForward = Vector3.new(0, -0.196, -0.681)
wait() 