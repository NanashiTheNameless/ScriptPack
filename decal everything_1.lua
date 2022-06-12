deca = "http://www.roblox.com/item?id=57872257" --obviouslly change to ur decal 
--[[ for _, v in pairs(workspace:GetChildren()) do 
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = v 
dec.Texture = deca 
dec.Face = i 
end 
end ]]
for _, v in pairs(Workspace:GetChildren()) do 
if v.className == "Part" then
for i = 0, 5 do 
dec = Instance.new("Decal") 
dec.Parent = v 
dec.Texture = deca 
dec.Face = i 
end 
end
end