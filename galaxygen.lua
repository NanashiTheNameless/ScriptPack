pcall(function() workspace.acb27.SpaceGame:remove() end) 

local color = {"Bright blue", "Bright yellow", "bright green", "Bright red", "Dark stone grey", "New Yeller", "Really black"}

local planets = Instance.new("Model") 
planets.Parent = workspace.acb227 
planets.Name = "SpaceGame" 
--lego 
--[[for _, v in pairs(game.Players:GetChildren()) do 
v.Character = nil 
end ]] 

--suns
for i = 0, 10, 1 do 
t = math.random(1, 3) 
if t == 1 then 
local sun = Instance.new("Part", planets) 
sun.BrickColor = BrickColor.new(color[6]) 
sun.Size = Vector3.new(14, 14, 14) 
sun.Name = "Sun" 
sun.Anchored = true 
sun.CFrame = CFrame.new(math.random(-40*i, 40*i), math.random(5.5, 7.5),math.random(-40*i, 40*i)) 
sun.Shape = "Ball" 
sun.CanCollide = false 
sun.TopSurface = "Smooth" 
sun.BottomSurface = "Smooth" 
local life = Instance.new("IntValue", sun) 
life.Name = "starlife" 
life.Value = 75 
elseif t == 2 then 
local sun = Instance.new("Part", planets) 
sun.BrickColor = BrickColor.new(color[1]) 
sun.Size = Vector3.new(16, 16, 16) 
sun.Name = "Sun" 
sun.Anchored = true 
sun.CFrame = CFrame.new(math.random(-40*i, 40*i), math.random(5.5, 7.5),math.random(-40*i, 40*i)) 
sun.Shape = "Ball" 
sun.CanCollide = false 
sun.TopSurface = "Smooth" 
sun.BottomSurface = "Smooth" 
local life = Instance.new("IntValue", sun) 
life.Name = "starlife" 
life.Value = 50 
elseif t == 3 then 
local sun = Instance.new("Part", planets) 
sun.BrickColor = BrickColor.new(color[4]) 
sun.Size = Vector3.new(18, 18, 18) 
sun.Name = "Sun" 
sun.Anchored = true 
sun.CFrame = CFrame.new(math.random(-40*i, 40*i), math.random(5.5, 7.5),math.random(-40*i, 40*i)) 
sun.Shape = "Ball" 
sun.CanCollide = false 
sun.TopSurface = "Smooth" 
sun.BottomSurface = "Smooth" 
local life = Instance.new("IntValue", sun) 
life.Name = "starlife" 
life.Value = 25 
wait() 
end 
end 

--planets
for _, v in pairs(planets:GetChildren()) do 
if v.Name == "Sun" then 
for i = 0, 8, 1 do 
local planet = Instance.new("Part", planets) 
planet.BrickColor = BrickColor.new(color[math.random(1, 5)]) 
planet.Size = Vector3.new(math.random(2, 3), math.random(2, 3), math.random(2, 3)) 
planet.Anchored = true 
planet.CFrame = v.CFrame + Vector3.new(math.random(-75, 75*i), math.random(-2.5, 2.5),math.random(-75, 75*i)) 
planet.Shape = "Ball" 
planet.Name = "Planet" 
planet.CanCollide = false 
planet.TopSurface = "Smooth" 
planet.BottomSurface = "Smooth" 
wait() 
end 
end 
end 
--//bh\\--
local bh = Instance.new("Part", planets) 
bh.BrickColor = BrickColor.new(color[7]) 
bh.Size = Vector3.new(4, 4, 4) 
bh.Anchored = true 
bh.CFrame = CFrame.new(math.random(-80, 80), math.random(5.5, 7.5),math.random(-80, 80)) 
bh.CanCollide = false 
bh.TopSurface = "Smooth" 
bh.Transparency = 0
bh.Name = "BlackHole" 
bh.BottomSurface = "Smooth" 
local bhm = Instance.new("SpecialMesh") 
bhm.MeshType = "Sphere" 
bhm.Parent = bh 
local bh2 = Instance.new("Part", planets) 
bh2.BrickColor = BrickColor.new(color[7]) 
bh2.Size = Vector3.new(4, 4, 4) 
bh2.Anchored = true 
bh2.CFrame = bh.CFrame + Vector3.new(0, 0, 0) 
bh2.CanCollide = false 
bh2.TopSurface = "Smooth" 
bh2.Name = "BlackHole" 
bh2.BottomSurface = "Smooth" 
local bhm2 = Instance.new("SpecialMesh") 
bhm2.MeshType = "Sphere" 
bhm2.Parent = bh2 
--moons :D--

for _, v in pairs(planets:GetChildren()) do 
if v.Name == "Planet" then 
for i = 1, math.random(1, 3) do 
local moon = Instance.new("Part", planets) 
moon.BrickColor = BrickColor.new(color[5]) 
moon.formFactor = "Custom" 
moon.Size = Vector3.new(0.5, 0.5, 0.5) 
moon.Anchored = true 
moon.CFrame = v.CFrame + Vector3.new(math.random(-5, 5), math.random(-0.5, 0.5),math.random(-5*i, 5*i)) 
moon.Shape = "Ball" 
moon.Name = "moon" 
moon.CanCollide = false 
moon.TopSurface = "Smooth" 
moon.BottomSurface = "Smooth" 
local mm = Instance.new("SpecialMesh") 
mm.MeshType = "Sphere" 
mm.Scale = Vector3.new(0.5, 0.5, 0.5) 
mm.Parent = moon 
end 
end 
end 

local dist = 4 

while true do 
bhm.Scale = bhm.Scale + Vector3.new(0.1, 0.1, 0.1) 
dist = dist + 0.25 
for _, v in pairs(planets:GetChildren()) do 
if v.Name == "Sun" and (v.Position - bh.Position).magnitude < dist or v.Name == "Planet" and (v.Position - bh.Position).magnitude < dist or v.Name == "moon" and (v.Position - bh.Position).magnitude < dist then 
v.Transparency = v.Transparency + 0.01
end 
end 
wait(1) 
end 


--[[ for _, v in pairs(planets:GetChildren()) do 
if v.Name == "Sun" and v.Live.Value > 0 then 
v.Life.Value = v.Life.Value - 1 
v.Transparency = v.Transparency + 0.001 
end 
end 
wait() 
for _, v in pairs(planets:GetChildren()) do 
if v.Name == "Sun" and v.Life.Value == 0 then 
v:remove() 
end 
end ]] 