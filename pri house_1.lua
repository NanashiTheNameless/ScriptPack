permission = {"acb227", "benningtonguy", "Visualist", "Flasket", "acbalt", "bob371", "DarkShadow6", "FlamedSkull"} 

tele = Instance.new("Part")
tele.Parent = workspace
tele.Name = "Tele"
tele.Size = Vector3.new(4, 1, 4)
tele.BrickColor = BrickColor.new("Really black")
tele.CFrame = CFrame.new(-40, 1, 20)
tele.TopSurface = "Smooth"
tele.Anchored = true

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = tele 
guimain2.Adornee = tele 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 5, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(1, 0, 0, 30) 
T3.Position = UDim2.new(-0.43, 0, 0, 0) 
T3.Text = "Acb227's Private House tele, Allowed : " 
T3.BackgroundTransparency = 1
T3.BackgroundColor = BrickColor.new(1003)
T3.TextColor = BrickColor.new(1003) 
T3.FontSize = "Size12"

function onTouched(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
for i, v in pairs(permission) do 
if hit.Parent.Name == v then 
hit.Parent.Torso.CFrame = CFrame.new(45, 205, 45) 
end 
end 
end 
end 


a = Instance.new("Part")
a.Parent = workspace 
a.BrickColor = BrickColor.new("Black")
a.Size = Vector3.new(45, 1, 45)
a.CFrame = CFrame.new(45, 201, 45)
a.Anchored = true 

b = Instance.new("Part")
b.Parent = workspace 
b.BrickColor = BrickColor.new("Black")
b.Size = Vector3.new(1, 20, 45)
b.CFrame = CFrame.new(18, 210, 45)
b.Anchored = true 

c = Instance.new("Part")
c.Parent = workspace 
c.BrickColor = BrickColor.new("Black")
c.Size = Vector3.new(1, 20, 45)
c.CFrame = CFrame.new(72, 210, 45)
c.Anchored = true 

d = Instance.new("Part")
d.Parent = workspace 
d.BrickColor = BrickColor.new("Black")
d.Size = Vector3.new(45, 20, 1)
d.CFrame = CFrame.new(45, 210, 72)
d.Anchored = true 

e = Instance.new("Part")
e.Parent = workspace 
e.BrickColor = BrickColor.new("Black")
e.Size = Vector3.new(17.5, 20, 1)
e.CFrame = CFrame.new(35, 210, 18)
e.Anchored = true 

f = Instance.new("Part")
f.Parent = workspace 
f.BrickColor = BrickColor.new("Black")
f.Size = Vector3.new(17.5, 20, 1)
f.CFrame = CFrame.new(55, 210, 28)
f.Anchored = true 

g = Instance.new("Part")
g.Parent = workspace 
g.BrickColor = BrickColor.new("Black")
g.Size = Vector3.new(5, 10, 1)
g.CFrame = CFrame.new(45, 205, 28)
g.Anchored = true 

h = Instance.new("Part")
h.Parent = workspace 
h.BrickColor = BrickColor.new("Black")
h.Size = Vector3.new(5, 11, 1)
h.CFrame = CFrame.new(45, 215, 28)
h.Anchored = true 

pat = Instance.new("Part")
pat.Parent = workspace 
pat.BrickColor = BrickColor.new("Black")
pat.Size = Vector3.new(23, 1, 45)
pat.CFrame = CFrame.new(45, 200.99, 26)
pat.Anchored = true 

i = Instance.new("Part")
i.Parent = workspace 
i.BrickColor = BrickColor.new("Black")
i.Size = Vector3.new(45, 1, 45)
i.CFrame = CFrame.new(45, 221, 45)
i.Anchored = true 

function onChatted(msg) 
if msg == "open" then 
b.Transparency = 0.7 
c.Transparency = 0.7 
d.Transparency = 0.7 
e.Transparency = 0.7 
f.Transparency = 0.7 
end 
if msg == "close" then 
b.Transparency = 0 
c.Transparency = 0 
d.Transparency = 0 
e.Transparency = 0 
f.Transparency = 0 
end 
if msg == "pathn" then 
for i = 1, 45 do 
wait(0.2) 
pat.Size = pat.Size - Vector3.new(0, 0, 1) 
pat.CFrame = CFrame.new(45, 200.99, 26)
end 
end 
if msg == "pathy" then 
for i = 1, 45 do 
wait(0.2) 
pat.Size = pat.Size + Vector3.new(0, 0, 1) 
pat.CFrame = CFrame.new(45, 200.99, 26)
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
for _, v in pairs(permission) do 
pp = Game.Players:FindFirstChild(v) 
if pp ~= nil then 
pp.Chatted:connect(onChatted) 
end 
end 

for _, v in pairs(permission) do 
T3.Text = "Acb227's Private House Tele, Allowed : " ..v 
wait(0.75) 
end 

tele.Touched:connect(onTouched)