person = "yfc" 
me = game.Workspace[person] 
admin = "yfc" 
player = game:GetService("Players")[admin] 
char = player.Character 

--[[Parts]]-- 

a = Instance.new("Part") 
a.Size = Vector3.new(1,2,1) 
a.Position = Vector3.new(0,0,0) 
a.Anchored = false 
a.Locked = true 
a.BrickColor = BrickColor.new("White") 
a.Parent = me["Right Leg"] 

--[[Hood]]-- 

for i,v in pairs(char:GetChildren()) do 
if v.className == "Hat" then 
v:remove() 
end 
end 
ht = Instance.new("Part") 
ht.Size = Vector3.new(1,1,1) 
ht.Name = "Handle" 
ht.Parent = char 
hod = Instance.new("SpecialMesh") 
hod.Parent = ht 
hod.MeshId = "http://www.roblox.com/asset/?id=16952952" 
hod.TextureId = "http://www.roblox.com/asset/?id=37102731" 
hod.VertexColor = Vector3.new(1,1,1) 
hod.Scale = Vector3.new(1.05,1.05,1.05) 

--[[Meshes]]-- 

m = Instance.new("SpecialMesh") 
m.Parent = a 
m.MeshType = ("Brick") 
m.Scale = Vector3.new(1.15,1,1.15) 

--[[Welds]]-- 

w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = ht 
w.Part1 = char.Head 
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.3, 0) 


w = Instance.new("Weld") 
w.Parent = a 
w.Part0 = char["Right Leg"] 
w.Part1 = a 
w.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
