x = game.Workspace:GetChildren()
for i = 1, #x do
if x[i].className == "Part" then
u = Instance.new("Decal") u.Parent = x[i] u.Texture = "http://www.roblox.com/asset/?id=65013561" u.Face = "Top"
m = Instance.new("Decal") m.Parent = x[i] m.Texture = "http://www.roblox.com/asset/?id=65013561" m.Face = "Bottom"
a = Instance.new("Decal") a.Parent = x[i] a.Texture = "http://www.roblox.com/asset/?id=65013561" a.Face = "Back"
d = Instance.new("Decal") d.Parent = x[i] d.Texture = "http://www.roblox.com/asset/?id=65013561" d.Face = "Front"
o = Instance.new("Decal") o.Parent = x[i] o.Texture = "http://www.roblox.com/asset/?id=65013561" o.Face = "Right"
k = Instance.new("Decal") k.Parent = x[i] k.Texture = "http://www.roblox.com/asset/?id=65013561" k.Face = "Left"
elseif x[i].className == "Model" then
z = x[i]:GetChildren()
for l = 1, #z do
if x[i].className == "Part" then
u = Instance.new("Decal") u.Parent = x[i] u.Texture = "http://www.roblox.com/asset/?id=65013561" u.Face = "Top"
m = Instance.new("Decal") m.Parent = x[i] m.Texture = "http://www.roblox.com/asset/?id=65013561" m.Face = "Bottom"
a = Instance.new("Decal") a.Parent = x[i] a.Texture = "http://www.roblox.com/asset/?id=65013561" a.Face = "Back"
d = Instance.new("Decal") d.Parent = x[i] d.Texture = "http://www.roblox.com/asset/?id=65013561" d.Face = "Front"
o = Instance.new("Decal") o.Parent = x[i] o.Texture = "http://www.roblox.com/asset/?id=65013561" o.Face = "Right"
k = Instance.new("Decal") k.Parent = x[i] k.Texture = "http://www.roblox.com/asset/?id=65013561" k.Face = "Left"
end
end
end
end 
