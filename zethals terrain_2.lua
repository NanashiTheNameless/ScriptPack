
mod = Instance.new("Model") 
mod.Parent = game.Workspace.Base 
mod.Name = "GenScip" 
scale = 10 
char1 = {"Dark green", "part", 0, true, scale/2.5} 
char2 = {"Reddish brown", "clif", 0, true, scale*1.5,scale*2} 
char3 = {"23", "wate", 0.6, false, scale/2.5} 
char4 = {"Pastel brown", "sand", 0, true, scale/2.5} 
x = 0 
z = -100 
n1 = 0 
n2 = 0 
n3 = 0 
zonlay = math.random(1,3) 
if zonlay == 1 then 
n1 = math.random(1,30) 
n2 = math.random(40,50) 
n3 = math.random(60,100) 
end 
if zonlay == 2 then 
n1 = math.random(60,100) 
n2 = math.random(40,50) 
n3 = math.random(10, 30) 
end 
if zonlay == 3 then 
n1 = math.random(30,60) 
n2 = math.random(1,20) 
n3 = math.random(70,100) 
end 
spawns = 0 
trees = 0 

function decs(p) 
m = Instance.new("SpawnLocation") 
m.Parent = mod 
m.Size = Vector3.new(scale/2,char1[5],scale/2) 
m.BrickColor = BrickColor.new("Really black") 
m.Anchored = true 
m.CFrame = p.CFrame * CFrame.new(0,char1[5]/2,0) 
spawns = spawns + 1 
end 

function dect(p) 
if p.BrickColor.Name == char1[1] then else return end 
m = Instance.new("Part") 
m.Parent = mod 
m.Name = "Tree" 
m.Size = Vector3.new(scale/2,char1[5],scale/2) 
m.BrickColor = BrickColor.new("Dark green") 
m.Anchored = true 
m.CFrame = p.CFrame * CFrame.new(0,p.Size.Y/3,0) 
msh = Instance.new("SpecialMesh") 
msh.Parent = m 
msh.MeshId = "ff54d21ba63ff3073f34fda5cd1be3f1" 
msh.TextureId = "http://www.roblox.com/asset/?id=37476561" 
msh.Scale = Vector3.new(0.1,0.1,0.1) 
trees = trees + 1 
end 



function decor(par, tab, xb, zb) 
number = string.sub(par.Name:lower(), 5) 
par.Size = Vector3.new(scale,tab[math.random(5,#tab)],scale) 
par.BrickColor = BrickColor.new(tab[1]) 
par.Transparency = tab[3] 
par.CanCollide = tab[4] 
if tab[1] == "Reddish brown" then 
local variation = math.random(1,100)*-0.04 
par.CFrame = CFrame.new(xb,par.Size.Y/1.8+variation,zb) 
par.Friction = 0.6 
end 
if tab[1] == "Dark green" then 
local variation = math.random(1,100)*-0.004 
par.CFrame = CFrame.new(xb,par.Size.Y/1.5+variation,zb) 
par.Friction = 0.6 
end 
if tab[1] == "23" or tab[1] == "Pastel brown" then 
par.CFrame = CFrame.new(xb,par.Size.Y/1.5,zb) 
if tab[1] == "23" then 
par.Friction = 0.9 
end 
end 
end 

function scan(part, char, type) 
if type == "land" then 
tri = mod:GetChildren() 
for i = 1, #tri do 
if math.ceil((tri[i].Position - part.Position).magnitude) <= 15 then 
decor(tri[i], char, tri[i].CFrame.X, tri[i].CFrame.Z) 
end 
end 
elseif type == "water" then 
tri = mod:GetChildren() 
for i = 1, #tri do 
if math.ceil((tri[i].Position - part.Position).magnitude) > 0 and math.ceil((tri[i].Position - part.Position).magnitude) < 20 then 
if string.sub(tri[i].Name:lower(), 1, 4) == "part" then else return end 
decor(tri[i], char, tri[i].CFrame.X, tri[i].CFrame.Z) 
end 
if math.ceil((tri[i].Position - part.Position).magnitude) > 20 and math.ceil((tri[i].Position - part.Position).magnitude) < 30 then 
if string.sub(tri[i].Name:lower(), 1, 4) == "part" then else return end 
decor(tri[i], char4, tri[i].CFrame.X, tri[i].CFrame.Z) 
end 
end 
end 
end 

function forestscan(part) 
tri = mod:GetChildren() 
for i = 1, #tri do 
if math.ceil((tri[i].Position - part.Position).magnitude) < 20 then 
if string.sub(tri[i].Name:lower(), 1, 4) == "part" then else return end 
dect(tri[i]) 
end 
end 
end 

function createtile(number) 
p = Instance.new("Part") 
p.Parent = mod 
p.Name = "Part" ..tostring(number) 
if number == n1 or number == n2 then 
p.Name = "Clif" ..tostring(number) 
decor(p, char2, x, z) 
else 
if number == n3 then 
p.Name = "Wate" ..tostring(number) 
decor(p, char3, x, z) 
else 
decor(p, char1, x, z) 
end 
end 
p.BottomSurface = "Smooth" 
p.TopSurface = "Smooth" 
p.Anchored = true 
if x >= scale*25 then 
x = 0 
z = z + scale 
elseif x < scale*25 then 
x = x + scale 
end 
end 

for i = 1, 208 do 
wait() 
createtile(i) 
end 
t = mod:GetChildren() 
for i = 1, #t do 
if string.sub(t[i].Name:lower(), 1, 4) == "clif" then 
scan(t[i], char2, "land") 
end 
if string.sub(t[i].Name:lower(), 1, 4) == "wate" then 
scan(t[i], char3, "water") 
end 
if string.sub(t[i].Name:lower(), 1, 4) == "part" then 
local lol = math.random(1,25) 
if spawns == 0 and lol == 10 then 
decs(t[i]) 
end 
local lol2 = math.random(1,25) 
if trees == 0 and lol2 == 20 then 
dect(t[i]) 
forestscan(t[i]) 
end 
end 
end 


 
