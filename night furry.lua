me = Game.Players.acb227 
char = me.Character 

asdf = workspace.Base:FindFirstChild("Night Furry") 

if asdf ~= nil then 
asdf:remove() 
end 

mo = Instance.new("Model") 
mo.Parent = workspace.Base 
mo.Name = "Night Furry" 

bo = Instance.new("Part") 
bo.Parent = mo 
bo.CanCollide = true 
bo.Name = "Torso" 
bo.BrickColor = BrickColor.new("Really black") 
bo.formFactor = "Symmetric" 
bo.Size = Vector3.new(7, 5, 15) 
bo.CFrame = char.Head.CFrame + Vector3.new(0, 5, 0) 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = bo 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
part = Instance.new("Seat") 
part.Parent = mo 
part.CanCollide = true 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Really black") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(2, 1, 2) 
part:BreakJoints() 
part.CFrame = char.Torso.CFrame 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = bo 
weld.C0 = CFrame.new(0, -2.5, 5) * CFrame.Angles(0, 0, 0) 
part3 = Instance.new("Part") 
part3.Parent = mo 
part3.CanCollide = true 
part3.Name = "Torso" 
part3.BrickColor = BrickColor.new("Really black") 
part3.formFactor = "Symmetric" 
part3.Size = Vector3.new(2, 2, 10) 
part3:BreakJoints() 
part3.CFrame = char.Torso.CFrame 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part3 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
weld3 = Instance.new("Weld") 
weld3.Parent = mo 
weld3.Part0 = part3 
weld3.Part1 = bo 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0, 0, 0) 
--wings--
--wings middle
part1 = Instance.new("Part") 
part1.Parent = mo 
part1.CanCollide = true 
part1.Name = "Torso" 
part1.BrickColor = BrickColor.new("Really black") 
part1.formFactor = "Symmetric" 
part1.Size = Vector3.new(10, 6, 1) 
part1:BreakJoints() 
part1.CFrame = char.Torso.CFrame 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part1 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
weldc = Instance.new("Weld") 
weldc.Parent = mo 
weldc.Part0 = part1 
weldc.Part1 = bo 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.75) 

part2 = Instance.new("Part") 
part2.Parent = mo 
part2.CanCollide = true 
part2.Name = "Torso" 
part2.BrickColor = BrickColor.new("Really black") 
part2.formFactor = "Symmetric" 
part2.Size = Vector3.new(10, 6, 1) 
part2:BreakJoints() 
part2.CFrame = char.Torso.CFrame 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part2 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
weldd = Instance.new("Weld") 
weldd.Parent = mo 
weldd.Part0 = part2 
weldd.Part1 = bo 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.75) 
--end of middle
--base
part = Instance.new("Part") 
part.Parent = mo 
part.CanCollide = true 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Really black") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(10, 1, 1) 
part:BreakJoints() 
part.CFrame = char.Torso.CFrame 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = part1 
weld.C0 = CFrame.new(0, 3.35, 0) * CFrame.Angles(0, 0, 0) 

part = Instance.new("Part") 
part.Parent = mo 
part.CanCollide = true 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Really black") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(10, 1, 1) 
part:BreakJoints() 
part.CFrame = char.Torso.CFrame 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = part2 
weld.C0 = CFrame.new(0, 3.35, 0) * CFrame.Angles(0, 0, 0) 
--end of base 

--end of wings--


gyro = Instance.new("BodyGyro") 
gyro.Parent = bo 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
position = Instance.new("BodyPosition") 
position.maxForce = Vector3.new(0, math.huge, 0) 
position.Parent = bo 
position.position = Vector3.new(0.1, 10.5, 0) 

function ms(msg) 
if msg == "fly" then 
for i = 1, 25 do 
bo.CFrame = bo.CFrame * CFrame.new(0, 0, 0.5) 
wait() 
end 
end 
if msg == "do circles" then 
for i = 1, 25 do 
bo.CFrame = bo.CFrame * CFrame.Angles(0.5, 0, 0.5) 
wait() 
end 
end 
if msg == "level" then 
for i = 1, 25 do 
bo.CFrame * CFrame.Angles(0, 0, 0) 
wait() 
end 
end 
if msg == "remove" then 
mo:remove() 
script:remove() 
end 
end 

me.Chatted:connect(ms) 

while true do 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.75) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.75) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.1, 0, 0.1) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.85) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.85) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.2) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.95) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.95) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.3) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.05) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.05) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.4) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.15) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.15) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.5) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.25) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.25) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.6) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.35) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.35) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.7) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.45) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.45) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.8) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.9) 
position.position = Vector3.new(0.1, 10.5, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.8) 
position.position = Vector3.new(0.1, 10, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.9) 
position.position = Vector3.new(0.1, 9.5, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.8) 
position.position = Vector3.new(0.1, 9, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.7) 
position.position = Vector3.new(0.1, 8.5, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.8) 
position.position = Vector3.new(0.1, 9, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.9) 
position.position = Vector3.new(0.1, 9.5, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.8) 
position.position = Vector3.new(0.1, 10, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.9) 
position.position = Vector3.new(0.1, 10.5, 0) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.8) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.7) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.45) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.45) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.6) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.35) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.35) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.5) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.25) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.25) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.4) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.15) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.15) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.3) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 1.05) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -1.05) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.2) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.95) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.95) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.3) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.85) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.85) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.4) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.75) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.75) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.3) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.65) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.65) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.2) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.3) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.45) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.45) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.4) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.35) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.35) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.5) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.25) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.25) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.4) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.15) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.15) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.3) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.25) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.25) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.2) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.35) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.35) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.3, 0, 0.3) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.45) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.45) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.2, 0, 0.2) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.55) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.55) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0.1, 0, 0.1) 
wait(0.1) 
weldc.C0 = CFrame.new(7, -1, -2) * CFrame.Angles(-1.57, 0, 0.65) 
weldd.C0 = CFrame.new(-7, -1, -2) * CFrame.Angles(-1.57, 0, -0.65) 
weld3.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(0, 0, 0) 
end 