par = Instance.new("Part") 
par.Anchored = true 
par.Parent = workspace 
par.Size = Vector3.new(5, 5, 5)
par.Transparency = 1 
par.CFrame = CFrame.new(0, 2, 15)

f = Instance.new("Fire") 
f.Parent = par
f.Heat = 0 
f.Size = 8 
f.Color = Color3.new(1, 0, 0) 
f.SecondaryColor = Color3.new(1, 0, 0) 

f = Instance.new("Fire") 
f.Parent = par
f.Heat = 0 
f.Size = 2 
f.Color = Color3.new(1, 1, 0) 
f.SecondaryColor = Color3.new(1, 1, 0) 

f = Instance.new("Fire") 
f.Parent = par
f.Heat = 0 
f.Size = 4 
f.Color = Color3.new(1, 1, 1) 
f.SecondaryColor = Color3.new(1, 1, 1) 

f = Instance.new("Fire") 
f.Parent = par
f.Heat = 0 
f.Size = 6 
f.Color = Color3.new(1, 2, 1) 
f.SecondaryColor = Color3.new(1, 2, 1) 

function onTouched(hit) 
if hit.Name ~= "Base" or hit.Parent.Name ~= "acb227" then 
hit:remove() 
end 
end 
par.Touched:connect(onTouched)