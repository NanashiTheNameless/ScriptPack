local lord1 = game.Players.Nilliland --you 
lord2 = lord1.Character 
local me = game.Players.Damo999 --victum 
local char = me.Character 

for i,p in pairs(char.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
for i,p in pairs(char.Head:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
for i,p in pairs(char:GetChildren()) do 
if p.Name == "Body Colors" then 
p:Remove() 
end 
if p.className == "CharacterMesh" then 
p:Remove() 
end 
if p.className == "Hat" then 
p:Remove() 
end 
if p.className == "Shirt" then 
p:Remove() 
end 
if p.className == "Pants" then 
p:Remove() 
end 
if p.className == "ShirtGraphic" then 
p:Remove() 
end 
end 

for i,p in pairs(lord2.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Clone().Parent=char.Torso 
end 
end 
for i,p in pairs(lord2.Head:GetChildren()) do 
if p.className == "Decal" then 
p:Clone().Parent=char.Head 
end 
end 
for i,p in pairs(lord2:GetChildren()) do 
if p.Name == "Body Colors" then 
p:Clone().Parent=char 
end 
if p.className == "CharacterMesh" then 
p:Clone().Parent = char 
end 
if p.className == "Hat" then 
p:Clone().Parent = char 
end 
if p.className == "Shirt" then 
p:Clone().Parent = char 
end 
if p.className == "Pants" then 
p:Clone().Parent = char 
end 
if p.className == "ShirtGraphic" then 
p:Clone().Parent = char 
end 
end 