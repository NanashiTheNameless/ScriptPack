if script.Parent.className ~= "Model" then 
offset = Vector3.new(-300, 500, 100) 
color = "Black" 
color2 = "Black" 
on = true 
roof = true 
hatch = true 
ele = true 
sweep = true 
openpath = true 
beds = false 
amountopen = 2 
me = game.Players. lordsheen 
model = Instance.new("Model") 
model.Parent = workspace 
model.Name = "ShitHouse" 
path = Instance.new("Part") 
path.Parent = model 
path.Anchored = true 
path.Size = Vector3.new(60, 1, 55) 
path.CFrame = CFrame.new(Vector3.new(355, 0.6, 0) + offset) 
path.BrickColor = BrickColor.new(color2) 
pathmesh = Instance.new("BlockMesh") 
pathmesh.Parent = path 
wall1 = Instance.new("Part") 
wall1.Parent = model 
wall1.Size = Vector3.new(1, 30, 49) 
wall1.CFrame = CFrame.new(Vector3.new(424.5, 16.1, 0.5) + offset) 
wall1.Anchored = true 
wall1.BrickColor = BrickColor.new(color) 
wall1mesh = Instance.new("BlockMesh") 
wall1mesh.Parent = wall1 
wall2 = Instance.new("Part") 
wall2.Parent = model 
wall2.Size = Vector3.new(49, 30, 1) 
wall2.CFrame = CFrame.new(Vector3.new(400.5, 16.1, -24.5) + offset) 
wall2.Anchored = true 
wall2.BrickColor = BrickColor.new(color) 
wall2mesh = Instance.new("BlockMesh") 
wall2mesh.Parent = wall2 
wall3 = Instance.new("Part") 
wall3.Parent = model 
wall3.Size = Vector3.new(49, 30, 1) 
wall3.CFrame = CFrame.new(Vector3.new(399.5, 16.1, 24.5) + offset) 
wall3.Anchored = true 
wall3.BrickColor = BrickColor.new(color) 
wall3mesh = Instance.new("BlockMesh") 
wall3mesh.Parent = wall3 
wall4 = Instance.new("Part") 
wall4.Parent = model 
wall4.Size = Vector3.new(1, 30, 19.5) 
wall4.CFrame = CFrame.new(Vector3.new(375.5, 16.1, -15) + offset) 
wall4.Anchored = true 
wall4.BrickColor = BrickColor.new(color) 
wall4mesh = Instance.new("BlockMesh") 
wall4mesh.Parent = wall4 
wall5 = Instance.new("Part") 
wall5.Parent = model 
wall5.Size = Vector3.new(1, 30, 19.5) 
wall5.CFrame = CFrame.new(Vector3.new(375.5, 16.1, 15) + offset) 
wall5.Anchored = true 
wall5.BrickColor = BrickColor.new(color) 
wall5mesh = Instance.new("BlockMesh") 
wall5mesh.Parent = wall5 
wall6 = Instance.new("Part") 
wall6.Parent = model 
wall6.Size = Vector3.new(1, 20, 10) 
wall6.CFrame = CFrame.new(Vector3.new(375.5, 20.9, 0) + offset) 
wall6.Anchored = true 
wall6.BrickColor = BrickColor.new(color) 
wall6mesh = Instance.new("BlockMesh") 
wall6mesh.Parent = wall6 
door = Instance.new("Part") 
door.Size = Vector3.new(1, 10, 10) 
door.Parent = model 
door.Anchored = true 
door.CFrame = CFrame.new(Vector3.new(375.5, 15.9, 0) + offset) 
door.BrickColor = BrickColor.new(color) 
doormesh = Instance.new("BlockMesh") 
doormesh.Parent = door 
roof1 = Instance.new("Part") 
roof1.Parent = model 
roof1.Size = Vector3.new(20, 1, 35) 
roof1.CFrame = CFrame.new(Vector3.new(415, 31.6, 7.5) + offset) 
roof1.Anchored = true 
roof1.BrickColor = BrickColor.new(color2) 
roof1mesh = Instance.new("BlockMesh") 
roof1mesh.Parent = roof1 
roof2 = Instance.new("Part") 
roof2.Parent = model 
roof2.Size = Vector3.new(20, 1, 35) 
roof2.CFrame = CFrame.new(Vector3.new(385, 31.6, -7.5) + offset) 
roof2.Anchored = true 
roof2.BrickColor = BrickColor.new(color2) 
roof2mesh = Instance.new("BlockMesh") 
roof2mesh.Parent = roof2 
roof3 = Instance.new("Part") 
roof3.Parent = model 
roof3.Size = Vector3.new(35, 1, 20) 
roof3.CFrame = CFrame.new(Vector3.new(407.5, 31.6, -15) + offset) 
roof3.Anchored = true 
roof3.BrickColor = BrickColor.new(color2) 
roof3mesh = Instance.new("BlockMesh") 
roof3mesh.Parent = roof3 
roof4 = Instance.new("Part") 
roof4.Parent = model 
roof4.Size = Vector3.new(35, 1, 20) 
roof4.CFrame = CFrame.new(Vector3.new(392.5, 31.6, 15) + offset) 
roof4.Anchored = true 
roof4.BrickColor = BrickColor.new(color2) 
roof4mesh = Instance.new("BlockMesh") 
roof4mesh.Parent = roof4 
roofdoor1 = Instance.new("Part") 
roofdoor1.Parent = model 
roofdoor1.Size = Vector3.new(10, 1, 5) 
roofdoor1.CFrame = CFrame.new(Vector3.new(400, 31.6, 2.5) + offset) 
roofdoor1.Anchored = true 
roofdoor1.BrickColor = BrickColor.new(color2) 
roofdoor1mesh = Instance.new("BlockMesh") 
roofdoor1mesh.Parent = roofdoor1 
roofdoor2 = Instance.new("Part") 
roofdoor2.Parent = model 
roofdoor2.Size = Vector3.new(10, 1, 5) 
roofdoor2.CFrame = CFrame.new(Vector3.new(400, 31.6, -2.5) + offset) 
roofdoor2.Anchored = true 
roofdoor2.BrickColor = BrickColor.new(color2) 
roofdoor2mesh = Instance.new("BlockMesh") 
roofdoor2mesh.Parent = roofdoor2 
floor1 = Instance.new("Part") 
floor1.Parent = model 
floor1.Size = Vector3.new(40, 1, 50) 
floor1.CFrame = CFrame.new(Vector3.new(395, 0.6, 0) + offset) 
floor1.Anchored = true 
floor1.BrickColor = BrickColor.new(color2) 
floor1mesh = Instance.new("BlockMesh") 
floor1mesh.Parent = floor1 
floor2 = Instance.new("Part") 
floor2.Parent = model 
floor2.Size = Vector3.new(10, 1, 40) 
floor2.CFrame = CFrame.new(Vector3.new(419, 0.6, -5) + offset) 
floor2.Anchored = true 
floor2.BrickColor = BrickColor.new(color2) 
floor2mesh = Instance.new("BlockMesh") 
floor2mesh.Parent = floor2 
floordoor1 = Instance.new("Part") 
floordoor1.Parent = model 
floordoor1.Size = Vector3.new(10, 1, 5) 
floordoor1.CFrame = CFrame.new(Vector3.new(419, 0.6, 17.5) + offset) 
floordoor1.Anchored = true 
floordoor1.BrickColor = BrickColor.new(color2) 
floordoor1mesh = Instance.new("BlockMesh") 
floordoor1mesh.Parent = floordoor1 
floordoor2 = Instance.new("Part") 
floordoor2.Parent = model 
floordoor2.Size = Vector3.new(10, 1, 5) 
floordoor2.CFrame = CFrame.new(Vector3.new(419, 0.6, 22.5) + offset) 
floordoor2.Anchored = true 
floordoor2.BrickColor = BrickColor.new(color2) 
floordoor2mesh = Instance.new("BlockMesh") 
floordoor2mesh.Parent = floordoor2 
elevator = Instance.new("Part") 
elevator.Parent = model 
elevator.Size = Vector3.new(10, 1, 10) 
elevator.CFrame = CFrame.new(Vector3.new(400, 0.6, 0) + offset) 
elevator.Anchored = true 
elevator.BrickColor = BrickColor.new(color2) 
elevatormesh = Instance.new("BlockMesh") 
elevatormesh.Parent = elevator 
me.Chatted:connect(function(msg) 
if string.find(string.lower(msg), "close") ~= nil and string.find(string.lower(msg), "door") ~= nil or string.find(string.lower(msg), "cold") ~= nil then 
if on == true then 
on = "lol" 
for i = 1, 100 do 
path.CFrame = CFrame.new(path.Position + Vector3.new(0.5, 0, 0)) 
wait () 
end 
for i = 1, 100 do 
door.CFrame = CFrame.new(door.Position + Vector3.new(0, -0.1, 0)) 
wait () 
end 
on = false 
end 
end 
if string.find(string.lower(msg), "open") ~= nil and string.find(string.lower(msg), "door") ~= nil or string.find(string.lower(msg), "hot") ~= nil then 
if on == false then 
on = "lol" 
for i = 1, 100 do 
door.CFrame = CFrame.new(door.Position + Vector3.new(0, 0.1, 0)) 
wait () 
end 
for i = 1, 100 do 
path.CFrame = CFrame.new(path.Position + Vector3.new(-0.5, 0, 0)) 
wait () 
end 
on = true 
end 
end 
if string.find(string.lower(msg), "open") ~= nil and string.find(string.lower(msg), "roof") ~= nil or string.find(string.lower(msg), "hot") ~= nil then 
if roof == true then 
roof = "lol" 
for i = 1, 50 do 
roofdoor1.CFrame = CFrame.new(roofdoor1.Position + Vector3.new(0.2, 0, 0)) 
roofdoor2.CFrame = CFrame.new(roofdoor2.Position + Vector3.new(-0.2, 0, 0)) 
wait () 
end 
roof = false 
end 
end 
if string.find(string.lower(msg), "close") ~= nil and string.find(string.lower(msg), "roof") ~= nil or string.find(string.lower(msg), "cold") ~= nil then 
if roof == false then 
roof = "lol" 
for i = 1, 50 do 
roofdoor1.CFrame = CFrame.new(roofdoor1.Position + Vector3.new(-0.2, 0, 0)) 
roofdoor2.CFrame = CFrame.new(roofdoor2.Position + Vector3.new(0.2, 0, 0)) 
wait () 
end 
roof = true 
end 
end 
if string.find(string.lower(msg), "open") ~= nil and string.find(string.lower(msg), "hatch") ~= nil or string.find(string.lower(msg), "hot") ~= nil then 
if hatch == true then 
hatch = "lol" 
for i = 1, 50 do 
floordoor1.CFrame = CFrame.new(floordoor1.Position + Vector3.new(0, 0, 0.2)) 
floordoor2.CFrame = CFrame.new(floordoor2.Position + Vector3.new(0, 0, -0.2)) 
wait () 
end 
hatch = false 
end 
end 
if string.find(string.lower(msg), "close") ~= nil and string.find(string.lower(msg), "hatch") ~= nil or string.find(string.lower(msg), "cold") ~= nil then 
if hatch == false then 
hatch = "lol" 
for i = 1, 50 do 
floordoor1.CFrame = CFrame.new(floordoor1.Position + Vector3.new(0, 0, -0.2)) 
floordoor2.CFrame = CFrame.new(floordoor2.Position + Vector3.new(0, 0, 0.2)) 
wait () 
end 
hatch = true 
end 
end 
if string.find(string.lower(msg), "elevator") ~= nil or string.find(string.lower(msg), "lift") ~= nil then 
if ele == true then 
ele = false 
elevator.Velocity = Vector3.new(0, 5, 0) 
elevator.BrickColor = BrickColor.new("Bright green") 
for i = 1, 155 do 
elevator.CFrame = CFrame.new(elevator.Position + Vector3.new(0, 0.2, 0)) 
wait () 
end 
elevator.Velocity = Vector3.new(0, 0, 0) 
elevator.BrickColor = BrickColor.new("Bright red") 
wait (4) 
elevator.BrickColor = BrickColor.new("Bright green") 
for i = 1, 155 do 
elevator.CFrame = CFrame.new(elevator.Position + Vector3.new(0, -0.2, 0)) 
wait () 
end 
elevator.BrickColor = BrickColor.new(color2) 
ele = true 
end 
end 
if string.find(string.lower(msg), "clean") ~= nil and string.find(string.lower(msg), "out") ~= nil then 
if sweep == true then 
sweep = false 
sweeper1 = Instance.new("Part") 
sweeper1.Parent = model 
sweeper1.Size = Vector3.new(3, 30, 50) 
sweeper1.CFrame = CFrame.new(Vector3.new(375.5, 15.9, 0) + offset) 
sweeper1.Anchored = true 
sweeper1.BrickColor = BrickColor.new(color) 
sweeper1mesh = Instance.new("BlockMesh") 
sweeper1mesh.Parent = sweeper1 
sweeper2 = Instance.new("Part") 
sweeper2.Parent = model 
sweeper2.Size = Vector3.new(50, 30, 3) 
sweeper2.CFrame = CFrame.new(Vector3.new(400.5, 15.9, -24.5) + offset) 
sweeper2.Anchored = true 
sweeper2.BrickColor = BrickColor.new(color) 
sweeper2mesh = Instance.new("BlockMesh") 
sweeper2mesh.Parent = sweeper2 
for i = 1, 400 do 
sweeper1.CFrame = CFrame.new(sweeper1.Position + Vector3.new(0.1, 0, 0)) 
sweeper2.CFrame = CFrame.new(sweeper2.Position + Vector3.new(0, 0, 0.1)) 
wait () 
end 
sweeper1:Remove() 
sweeper2:Remove() 
sweep = true 
end 
end 
if string.lower(string.sub(msg, 1, 2)) == "in" then 
for i, v in pairs(game.Players:GetChildren()) do 
if v.Character ~= nil then 
if string.lower(string.sub(v.Name, 1, string.len(string.sub(msg, 4)))) == string.lower(string.sub(msg, 4)) then 
if v.Character:FindFirstChild("Torso") ~= nil then 
v.Character.Torso.CFrame = CFrame.new(door.Position + Vector3.new(25, 0, 0)) 
end 
end 
end 
end 
end 
if string.lower(string.sub(msg, 1, 3)) == "out" then 
for i, v in pairs(game.Players:GetChildren()) do 
if v.Character ~= nil then 
if string.lower(string.sub(v.Name, 1, string.len(string.sub(msg, 5)))) == string.lower(string.sub(msg, 5)) then 
if v.Character:FindFirstChild("Torso") ~= nil then 
v.Character.Torso.CFrame = CFrame.new(0, 5, 0) 
end 
end 
end 
end 
end 
if string.find(string.lower(msg), "fall") ~= nil then 
for i, v in pairs(model:GetChildren()) do 
v.Anchored = false 
ex = Instance.new("Explosion") 
ex.Parent = v 
ex.Position = v.Position 
ex.BlastPressure = 2000000 
wait () 
end 
end 
if string.find(string.lower(msg), "windows") ~= nil and string.find(string.lower(msg), "not") == nil or string.find(string.lower(msg), "view") ~= nil and string.find(string.lower(msg), "not") == nil or string.find(string.lower(msg), "hot") ~= nil and string.find(string.lower(msg), "not") == nil or string.find(string.lower(msg), "not") == nil and string.find(string.lower(msg), "view") ~= nil and string.find(string.lower(msg), "not") ~= nil or string.find(string.lower(msg), "view") ~= nil and string.find(string.lower(msg), "don't") ~= nil then 
wall1.Transparency = 0.5 
wall2.Transparency = 0.5 
wall3.Transparency = 0.5 
wall4.Transparency = 0.5 
wall5.Transparency = 0.5 
wall6.Transparency = 0.5 
door.Transparency = 0.5 
end 
if string.find(string.lower(msg), "walls") ~= nil and string.find(string.lower(msg), "not") == nil or string.find(string.lower(msg), "cold") ~= nil and string.find(string.lower(msg), "not") == nil or string.find(string.lower(msg), "view") ~= nil and string.find(string.lower(msg), "not") ~= nil then 
wall1.Transparency = 0 
wall2.Transparency = 0 
wall3.Transparency = 0 
wall4.Transparency = 0 
wall5.Transparency = 0 
wall6.Transparency = 0 
door.Transparency = 0 
end 
if string.sub(string.lower(msg), 1, 8) == "openpath" then 
if tonumber(string.sub(string.lower(msg), 10)) ~= nil then 
if openpath == true then 
openpath = false 
path3 = Instance.new("Part") 
path3.Parent = model 
path3.Size = Vector3.new(1, 1, 5) 
path3.CFrame = CFrame.new(Vector3.new(427, -6, 20) + offset) 
path3.Anchored = true 
path3.BrickColor = BrickColor.new(color2) 
for i = amountopen, tonumber(string.sub(msg, 10)) do 
path3.Size = Vector3.new(i, 1, 5) 
path3.CFrame = CFrame.new(Vector3.new((path3.Position.X + -0.5), -6 + offset.Y, 20 + offset.Z)) 
wait () 
end 
amountopen = tonumber(string.sub(string.lower(msg), 10)) 
openpath = true 
end 
end 
end 
if string.sub(string.lower(msg), 1, 9) == "closepath" then 
if tonumber(string.sub(string.lower(msg), 11)) ~= nil then 
if tonumber(string.sub(string.lower(msg), 11)) < amountopen then 
if openpath == true then 
openpath = false 
for i = amountopen, amountopen - tonumber(string.sub(string.lower(msg), 11)), -1 do 
path3.Size = Vector3.new(i, 1, 5) 
path3.CFrame = CFrame.new(Vector3.new((path3.Position.X + 0.5), -6 + offset.Y, 20 + offset.Z)) 
wait () 
end 
openpath = true 
amountopen = path3.Size.X 
end 
end 
if tonumber(string.sub(string.lower(msg), 11)) == amountopen then 
if openpath == true then 
for i = amountopen, amountopen - tonumber(string.sub(string.lower(msg), 11)), -1 do 
path3.Size = Vector3.new(i, 1, 5) 
path3.CFrame = CFrame.new(Vector3.new((path3.Position.X + 0.5), -6 + offset.Y, 20 + offset.Z)) 
wait () 
end 
path3:Remove() 
end 
end 
end 
end 
if string.find(string.lower(msg), "open") ~= nil and string.find(string.lower(msg), "beds") ~= nil or string.find(string.lower(msg), "tired") ~= nil or string.find(string.lower(msg), "rest") ~= nil or string.find(string.lower(msg), "yawn") ~= nil then 
if beds == false then 
beds = true 
bedp1 = Instance.new("Part") 
bedp1.Parent = model 
bedp1.Size = Vector3.new(10, 1, 1) 
bedp1.CFrame = CFrame.new(Vector3.new(400.5, 6.1, -23.5) + offset) 
bedp1.Anchored = true 
bedp1.BrickColor = BrickColor.new(color2) 
bedp1.Friction = math.huge 
bedp1mesh = Instance.new("BlockMesh") 
bedp1mesh.Parent = bedp1 
bedp12 = Instance.new("Part") 
bedp12.Parent = model 
bedp12.Size = Vector3.new(10, 1, 1) 
bedp12.CFrame = CFrame.new(Vector3.new(400.5, 6.1, 23.5) + offset) 
bedp12.Anchored = true 
bedp12.BrickColor = BrickColor.new(color2) 
bedp12.Friction = math.huge 
bedp12mesh = Instance.new("BlockMesh") 
bedp12mesh.Parent = bedp12 
for i = 1, 5 do 
bedp1.Size = bedp1.Size + Vector3.new(0, 0, 1) 
bedp1.CFrame = CFrame.new(400.5 + offset.X, 6.1 + offset.Y, bedp1.Position.Z + 0.5) 
bedp12.Size = bedp12.Size + Vector3.new(0, 0, 1) 
bedp12.CFrame = CFrame.new(400.5 + offset.X, 6.1 + offset.Y, bedp12.Position.Z + -0.5) 
wait (0.05) 
end 
bedp2 = Instance.new("Part") 
bedp2.Parent = model 
bedp2.Size = Vector3.new(2, 1, 3) 
bedp2.CFrame = CFrame.new(Vector3.new(404.5, 6.1, -21) + offset) 
bedp2.Anchored = true 
bedp2.CanCollide = false 
bedp2.BrickColor = BrickColor.new("Bright white") 
bedp2mesh = Instance.new("SpecialMesh") 
bedp2mesh.Parent = bedp2 
bedp2mesh.MeshType = "Sphere" 
bedp22 = Instance.new("Part") 
bedp22.Parent = model 
bedp22.Size = Vector3.new(2, 1, 3) 
bedp22.CFrame = CFrame.new(Vector3.new(404.5, 6.1, 21) + offset) 
bedp22.Anchored = true 
bedp22.CanCollide = false 
bedp22.BrickColor = BrickColor.new("Bright white") 
bedp22mesh = Instance.new("SpecialMesh") 
bedp22mesh.Parent = bedp22 
bedp22mesh.MeshType = "Sphere" 
for i = 0, 0.6, 0.2 do 
bedp2.CFrame = CFrame.new(bedp2.Position + Vector3.new(0, 0.2, 0)) 
bedp22.CFrame = CFrame.new(bedp22.Position + Vector3.new(0, 0.2, 0)) 
wait (0.05) 
end 
fallp = Instance.new("Part") 
fallp.Parent = model 
fallp.Size = Vector3.new(1, 1, 5) 
fallp.CFrame = CFrame.new(Vector3.new(398, 7.3, -21) + offset) 
fallp.Anchored = true 
fallp.Transparency = 1 
fallp.CanCollide = false 
fallp.Touched:connect(function(hit) 
if hit.Parent:FindFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.PlatformStand = true 
end 
end) 
fallp2 = Instance.new("Part") 
fallp2.Parent = model 
fallp2.Size = Vector3.new(1, 1, 5) 
fallp2.CFrame = CFrame.new(Vector3.new(398, 7.3, 21) + offset) 
fallp2.Anchored = true 
fallp2.Transparency = 1 
fallp2.CanCollide = false 
fallp2.Touched:connect(function(hit) 
if hit.Parent:FindFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.PlatformStand = true 
end 
end) 
end 
end 
if string.find(string.lower(msg), "close") ~= nil and string.find(string.lower(msg), "beds") ~= nil or string.find(string.lower(msg), "awake") ~= nil then 
if beds == true then 
beds = false 
fallp:Remove() 
fallp2:Remove() 
for i = 0, 0.6, 0.2 do 
bedp2.CFrame = CFrame.new(bedp2.Position + Vector3.new(0, -0.2, 0)) 
bedp22.CFrame = CFrame.new(bedp22.Position + Vector3.new(0, -0.2, 0)) 
wait (0.05) 
end 
bedp2:Remove() 
bedp22:Remove() 
for i = 1, 5 do 
bedp1.Size = bedp1.Size + Vector3.new(0, 0, -1) 
bedp1.CFrame = CFrame.new(400.5 + offset.X, 6.1 + offset.Y, bedp1.Position.Z + -0.5) 
bedp12.Size = bedp12.Size + Vector3.new(0, 0, -1) 
bedp12.CFrame = CFrame.new(400.5 + offset.X, 6.1 + offset.Y, bedp12.Position.Z + 0.5) 
wait (0.05) 
end 
bedp1:Remove() 
bedp12:Remove() 
end 
end 
if string.find(string.lower(msg), "remove") ~= nil or string.find(string.lower(msg), "die") ~= nil then 
model:Remove() 
end 
end) 
script.Parent = model 
model:MakeJoints() 
end 
