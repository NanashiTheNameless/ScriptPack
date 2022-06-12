--[[ Sword Fights In A Giant Cube ]]--
 
Radi = 100
Obstacles = Radi*0.5
Spin = 0.0025
 
Creator = "ask4kingbily"
Cocreator = "bigbadbob234"
 
Admins = {"rigletto"}
 
WS = game:GetService("Workspace")
LT = game:GetService("Lighting")
PS = game:GetService("Players")
DB = game:GetService("Debris")
 
--[[ CUBE ]]--
 
Cube = Instance.new("Model")
Cube.Parent = WS
Cube.Name = "Cube"
 
Control = Instance.new("SpawnLocation")
Control.Parent = Cube
Control.Name = "Control Part"
Control.TopSurface = "Smooth"
Control.BottomSurface = "Smooth"
Control.Shape = "Block"
Control.FormFactor = "Symmetric"
Control.Anchored = true
Control.BrickColor = BrickColor.new("Really red")
Control.CanCollide = true
Control.Material = "Plastic"
Control.Reflectance = 0
Control.Size = Vector3.new(10, 10, 10)
Control.Transparency = 1
Control.CFrame = CFrame.new(0, Radi, 0) * CFrame.Angles(0, 0, 0)
 
function ballpit()
pcall(function () Cube["BP"]:Remove() end)
 
M = Instance.new("Model")
M.Parent = Cube
M.Name = "Ball Pit"
 
for i = 1, 500 do
wait()
Ball = Instance.new("SpawnLocation")
Ball.Parent = Cube
Ball.Name = "Ball  Part"
Ball.TopSurface = "Smooth"
Ball.BottomSurface = "Smooth"
Ball.Shape = "Ball"
Ball.FormFactor = "Symmetric"
Ball.Anchored = false
Ball.Color = Color3.new(math.random(), math.random(), math.random())
Ball.CanCollide = true
Ball.Material = "Plastic"
Ball.Reflectance = 0
Ball.Size = Vector3.new(3, 3, 3)
Ball.Transparency = 0
Ball.CFrame = CFrame.new(math.random(-20,20), Radi, math.random(-20,20)) * CFrame.Angles(0, 0, 0)
end
 
end
 
function chatted(msg, spkr)
 
if string.sub(msg, 1, 2) == "bp" then
ballpit()
end
 
end
 
for i, v in pairs(PS:GetChildren()) do
for j = 1, #Admins do
if v.Name == Admins[j] then
v.Chatted:connect(function () chatted(msg, v) end)
end
end
end
 