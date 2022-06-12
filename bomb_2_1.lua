me = workspace 
script.Parent = me 

mo = Instance.new("Model") 
mo.Parent = me 
mo.Name = "60:60:60" 
hum = Instance.new("Humanoid") 
hum.Parent = mo 
hum.MaxHealth = 0 
hum.Health = 0 

a = Instance.new("IntValue") 
a.Parent = mo 
a.Value = 0 

b = Instance.new("IntValue") 
b.Parent = mo 
b.Value = 0 

c = Instance.new("IntValue") 
c.Parent = mo 
c.Value = 1 

part = Instance.new("Part")
part.Parent = mo 
part.BrickColor = BrickColor.new("Really black") 
part.Size = Vector3.new(7, 3, 5) 
part.CFrame = CFrame.new(25, 1, 0) 
part.Anchored = true 
partm = Instance.new("BlockMesh") 
partm.Parent = part 
partm.Scale = Vector3.new(1, 1, 1)

par = Instance.new("Part")
par.Parent = mo 
par.BrickColor = BrickColor.new("Really red") 
par.Size = Vector3.new(3, 4, 1) 
par.CFrame = CFrame.new(25, 1, 0) 
par.Anchored = true 
par.Name = "Head" 
parm = Instance.new("BlockMesh") 
parm.Parent = par 
parm.Scale = Vector3.new(1, 1, 1)



while true do 
wait() 
a.Value = a.Value - 1 
mo.Name = c.Value.. ":" ..b.Value.. ":" ..a.Value 
if a.Value == 0 then 
b.Value = b.Value - 1 
a.Value = 60 
end 
if b.Value == 0 then 
c.Value = c.Value - 1 
b.Value = 60
end 
if c.Value == 0 and b.Value == 0 and a.Value == 0 then 
a.Value = 0 
b.Value = 0 
c.Value = 0 
exp = Instance.new("Explosion") 
exp.Parent = mo 
exp.Position = par.Position
wait(1) 
mo:remove() 
end 
end 