
a = Instance.new("Part")
a.Parent = workspace 
a.BrickColor = BrickColor.new("Black")
a.Size = Vector3.new(35, 1, 35)
a.CFrame = CFrame.new(45, 1, 45)
a.Anchored = true 

b = Instance.new("Part")
b.Parent = workspace 
b.BrickColor = BrickColor.new("Black")
b.Size = Vector3.new(1, 20, 35)
b.CFrame = CFrame.new(28, 10, 45)
b.Anchored = true 

c = Instance.new("Part")
c.Parent = workspace 
c.BrickColor = BrickColor.new("Black")
c.Size = Vector3.new(1, 20, 35)
c.CFrame = CFrame.new(62, 10, 45)
c.Anchored = true 

d = Instance.new("Part")
d.Parent = workspace 
d.BrickColor = BrickColor.new("Black")
d.Size = Vector3.new(35, 20, 1)
d.CFrame = CFrame.new(45, 10, 62)
d.Anchored = true 

e = Instance.new("Part")
e.Parent = workspace 
e.BrickColor = BrickColor.new("Black")
e.Size = Vector3.new(35/2-2.5, 20, 1)
e.CFrame = CFrame.new(35, 10, 28)
e.Anchored = true 

f = Instance.new("Part")
f.Parent = workspace 
f.BrickColor = BrickColor.new("Black")
f.Size = Vector3.new(35/2-2.5, 20, 1)
f.CFrame = CFrame.new(55, 10, 28)
f.Anchored = true 

g = Instance.new("Part")
g.Parent = workspace 
g.BrickColor = BrickColor.new("Black")
g.Size = Vector3.new(5, 10, 1)
g.CFrame = CFrame.new(45, 5, 28)
g.Anchored = true 

h = Instance.new("Part")
h.Parent = workspace 
h.BrickColor = BrickColor.new("Black")
h.Size = Vector3.new(5, 11, 1)
h.CFrame = CFrame.new(45, 15, 28)
h.Anchored = true 

pat = Instance.new("Part")
pat.Parent = workspace 
pat.BrickColor = BrickColor.new("Black")
pat.Size = Vector3.new(23, 1, 35)
pat.CFrame = CFrame.new(45, 0.99, 27)
pat.Anchored = true 

i = Instance.new("Part")
i.Parent = workspace 
i.BrickColor = BrickColor.new("Black")
i.Size = Vector3.new(35, 1, 35)
i.CFrame = CFrame.new(45, 1, 45)
i.Anchored = true 

function onChatted(msg) 
if msg == "pathn" then 
for i = 1, 35 do 
wait(0.2) 
pat.Size = pat.Size - Vector3.new(0, 0, 1) 
pat.CFrame = CFrame.new(45, 0.99, 27)
end 
end 
if msg == "pathy" then 
for i = 1, 35 do 
wait(0.2) 
pat.Size = pat.Size + Vector3.new(0, 0, 1) 
pat.CFrame = CFrame.new(45, 0.99, 27)
end 
end 
if msg == "doory" then 
for i = 1, 10 do 
wait(0.2) 
g.CFrame = g.CFrame * CFrame.new(0, 1, 0)
end 
end 
if msg == "doorn" then 
for i = 1, 10 do 
wait(0.2) 
g.CFrame = g.CFrame * CFrame.new(0, -1, 0)
end 
end 
end 
Game.Players.acb227.Chatted:connect(onChatted) 