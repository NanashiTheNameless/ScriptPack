script.Parent = workspace.acb227

Game.Lighting.Ambient = Color3.new(7, 5, 7)

local sno = Instance.new("IntValue") 
sno.Parent = script.Parent 
sno.Value = 0 
local color = "White" 

trunk = Instance.new("Part")
trunk.Parent = workspace 
trunk.Size = Vector3.new(3, 4, 3) 
trunk.BrickColor = BrickColor.new("Reddish brown") 
trunk.CFrame = CFrame.new(25, 2, 0) 
le1 = Instance.new("Part")
le1.Parent = workspace 
le1.Size = Vector3.new(7, 2, 7) 
le1.BrickColor = BrickColor.new("Bright green") 
le1.CFrame = CFrame.new(25, 4, 0) 
le2 = Instance.new("Part")
le2.Parent = workspace 
le2.Size = Vector3.new(6, 2, 6) 
le2.BrickColor = BrickColor.new("Bright green") 
le2.CFrame = CFrame.new(25, 6, 0) 
le3 = Instance.new("Part")
le3.Parent = workspace 
le3.Size = Vector3.new(5, 2, 5) 
le3.BrickColor = BrickColor.new("Bright green") 
le3.CFrame = CFrame.new(25, 8, 0) 
le4 = Instance.new("Part")
le4.Parent = workspace 
le4.Size = Vector3.new(4, 2, 4) 
le4.BrickColor = BrickColor.new("Bright green") 
le4.CFrame = CFrame.new(25, 10, 0) 
le5 = Instance.new("Part")
le5.Parent = workspace 
le5.Size = Vector3.new(3, 2, 3) 
le5.BrickColor = BrickColor.new("Bright green") 
le5.CFrame = CFrame.new(25, 12, 0) 
le6 = Instance.new("Part")
le6.Parent = workspace 
le6.Size = Vector3.new(1, 2, 1) 
le6.BrickColor = BrickColor.new("Bright green") 
le6.CFrame = CFrame.new(25, 14, 0) 

function snowing() 
m = math.random(1, 2) 
if m == 1 then 
color = "White" 
end 
if m == 2 then 
color = "Dark blue" 
end 

sno.Value = sno.Value + 1 
local exp = Instance.new("Explosion") 
exp.Parent = workspace 
exp.Position = Vector3.new(math.random(-200, 200), math.random(100, 200), math.random(-200, 200))
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new(color) 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 
--damn 
for i = 1, 75 do 
wait(0.1) 
local cloud = Instance.new("Part") 
cloud.Parent = workspace 
cloud.Size = Vector3.new(math.random(45, 75), math.random(3, 10), math.random(55, 75)) 
cloud.BrickColor = BrickColor.new("Mid grey") 
cloud.Anchored = true 
cloud.CanCollide = false 
cloud.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = cloud 
mesh.MeshType = "Sphere" 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-100, 100), math.random(100, 101), math.random(-100, 100)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 

while true do 
wait(0.1) 
snowing() 
script.Parent = workspace.acb227

Game.Lighting.Ambient = Color3.new(7, 5, 7)

local sno = Instance.new("IntValue") 
sno.Parent = script.Parent 
sno.Value = 0 

function snowing() 
sno.Value = sno.Value + 1 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 
--damn 
for i = 1, 75 do 
wait(0.1) 
local cloud = Instance.new("Part") 
cloud.Parent = workspace 
cloud.Size = Vector3.new(math.random(45, 75), math.random(3, 10), math.random(55, 75)) 
cloud.BrickColor = BrickColor.new("Mid grey") 
cloud.Anchored = true 
cloud.CanCollide = false 
cloud.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = cloud 
mesh.MeshType = "Sphere" 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-100, 100), math.random(100, 101), math.random(-100, 100)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 

while true do 
wait(0.1) 
snowing() 
if sno.Value == 100 then 
workspace.Base.BrickColor = BrickColor.new("White") 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(math.random(5, 10), math.random(5, 10), math.random(5, 10)) 
snow.BrickColor = BrickColor.new("White") 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(1, 2), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Brick" 
end 
end script.Parent = workspace.acb227

Game.Lighting.Ambient = Color3.new(7, 5, 7)

local sno = Instance.new("IntValue") 
sno.Parent = script.Parent 
sno.Value = 0 

function snowing() 
sno.Value = sno.Value + 1 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 
--damn 
for i = 1, 75 do 
wait(0.1) 
local cloud = Instance.new("Part") 
cloud.Parent = workspace 
cloud.Size = Vector3.new(math.random(45, 75), math.random(3, 10), math.random(55, 75)) 
cloud.BrickColor = BrickColor.new("Mid grey") 
cloud.Anchored = true 
cloud.CanCollide = false 
cloud.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = cloud 
mesh.MeshType = "Sphere" 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-100, 100), math.random(100, 101), math.random(-100, 100)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 

while true do 
wait(0.1) 
snowing() 
if sno.Value == 100 then 
workspace.Base.BrickColor = BrickColor.new("White") 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(math.random(5, 10), math.random(5, 10), math.random(5, 10)) 
snow.BrickColor = BrickColor.new("White") 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(1, 2), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Brick" 
end 
end script.Parent = workspace.acb227

Game.Lighting.Ambient = Color3.new(7, 5, 7)

local sno = Instance.new("IntValue") 
sno.Parent = script.Parent 
sno.Value = 0 

function snowing() 
sno.Value = sno.Value + 1 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 
--damn 
for i = 1, 75 do 
wait(0.1) 
local cloud = Instance.new("Part") 
cloud.Parent = workspace 
cloud.Size = Vector3.new(math.random(45, 75), math.random(3, 10), math.random(55, 75)) 
cloud.BrickColor = BrickColor.new("Mid grey") 
cloud.Anchored = true 
cloud.CanCollide = false 
cloud.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = cloud 
mesh.MeshType = "Sphere" 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-100, 100), math.random(100, 101), math.random(-100, 100)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 

while true do 
wait(0.1) 
snowing() 
script.Parent = workspace.acb227

Game.Lighting.Ambient = Color3.new(7, 5, 7)

local sno = Instance.new("IntValue") 
sno.Parent = script.Parent 
sno.Value = 0 

function snowing() 
sno.Value = sno.Value + 1 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 101), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 
--damn 
for i = 1, 75 do 
wait(0.1) 
local cloud = Instance.new("Part") 
cloud.Parent = workspace 
cloud.Size = Vector3.new(math.random(45, 75), math.random(3, 10), math.random(55, 75)) 
cloud.BrickColor = BrickColor.new("Mid grey") 
cloud.Anchored = true 
cloud.CanCollide = false 
cloud.CFrame = CFrame.new(math.random(-200, 200), math.random(100, 121), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = cloud 
mesh.MeshType = "Sphere" 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(1, 1, 1) 
snow.BrickColor = BrickColor.new("White") 
snow.Shape = "Ball" 
snow.CFrame = CFrame.new(math.random(-100, 100), math.random(100, 101), math.random(-100, 100)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Sphere" 
end 

while true do 
wait(0.1) 
snowing() 
if sno.Value == 100 then 
workspace.Base.BrickColor = BrickColor.new("White") 
le1.BrickColor = BrickColor.new("White") 
le2.BrickColor = BrickColor.new("White") 
le3.BrickColor = BrickColor.new("White") 
le4.BrickColor = BrickColor.new("White") 
le5.BrickColor = BrickColor.new("White") 
le6.BrickColor = BrickColor.new("White") 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(math.random(5, 10), math.random(5, 10), math.random(5, 10)) 
snow.BrickColor = BrickColor.new("White") 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(1, 2), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Brick" 
end 
if sno.Value == 200 then 
workspace.Base.BrickColor = BrickColor.new("White") 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(math.random(5, 10), math.random(5, 10), math.random(5, 10)) 
snow.BrickColor = BrickColor.new("White") 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(1, 2), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Brick" 
end 
if sno.Value == 300 then 
workspace.Base.BrickColor = BrickColor.new("White") 
local snow = Instance.new("Part") 
snow.Parent = workspace 
snow.Size = Vector3.new(math.random(5, 10), math.random(5, 10), math.random(5, 10)) 
snow.BrickColor = BrickColor.new("White") 
snow.CFrame = CFrame.new(math.random(-200, 200), math.random(1, 2), math.random(-200, 200)) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = snow 
mesh.MeshType = "Brick" 
end 
end 
end 
end 