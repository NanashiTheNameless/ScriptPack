deca = "http://www.roblox.com/asset/?id=57861132" 

for _, v in pairs(workspace:GetChildren()) do 
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = v 
dec.Texture = deca 
dec.Face = i 
end 
end 

for _, v in pairs(game.Players:GetChildren()) do 
vc = v.Character
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = vc.Torso 
dec.Texture = deca 
dec.Face = i 
end 
end 

for _, v in pairs(game.Players:GetChildren()) do 
vc = v.Character
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = vc.Head 
dec.Texture = deca 
dec.Face = i 
end 
end 

for _, v in pairs(game.Players:GetChildren()) do 
vc = v.Character
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = vc["Right Arm"] 
dec.Texture = deca 
dec.Face = i 
end 
end 

for _, v in pairs(game.Players:GetChildren()) do 
vc = v.Character
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = vc["Right Leg"] 
dec.Texture = deca 
dec.Face = i 
end 
end 

for _, v in pairs(game.Players:GetChildren()) do 
vc = v.Character
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = vc["Left Arm"] 
dec.Texture = deca 
dec.Face = i 
end 
end 

for _, v in pairs(game.Players:GetChildren()) do 
vc = v.Character
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = vc["Left Leg"] 
dec.Texture = deca 
dec.Face = i 
end 
end 