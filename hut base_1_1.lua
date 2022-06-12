-------Sky School house-----------------------------------------------------------------------------------------------------------------------
-------Commands-----------------------------------------------------------------------------------------------------------------------
local admin = game.Players.ScriptTyper 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(0, 11005, 0) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(50, 3, 0) 
end 
end 
end 
end 



admin.Chatted:connect(onChatted) ------------------------------

--------------------------------------------------------------------------

if script.Parent.className ~= "Model" then 

Y = 11000.5 

Model0 = Instance.new("Script") 
Model0.Name = "acbazor" 
Model0.Parent = game.Workspace.ScriptTyper 

Model1 = Instance.new("Model") 
Model1.Name = "Model1" 
Model1.Parent = Model0 

Model5 = Instance.new("Model") 
Model5.Name = "Model5" 
Model5.Parent = Model0 

Model6 = Instance.new("Model") 
Model6.Name = "Model6" 
Model6.Parent = Model0 

Model7 = Instance.new("Model") 
Model7.Name = "Model7" 
Model7.Parent = Model0 

Part1 = Instance.new("Part") 
Part1.BrickColor = BrickColor.new("White") 
Part1.Anchored = true 
Part1.Locked = true 
Part1.TopSurface = 0 
Part1.BottomSurface = 0 
Part1.Size = Vector3.new(83,3,83) 
Part1.Parent = Model1 
Part1.CFrame = CFrame.new(0,0+Y,0) 
Mesh1 = Instance.new("CylinderMesh") 
Mesh1.Parent = Part1 

Part1 = Instance.new("Part") 
Part1.BrickColor = BrickColor.new("White") 
Part1.Anchored = true 
Part1.Locked = true 
Part1.TopSurface = 0 
Part1.BottomSurface = 0 
Part1.Size = Vector3.new(83,3,83) 
Part1.Parent = Model1 
Part1.CFrame = CFrame.new(0,-1+Y,0) 
Mesh1 = Instance.new("CylinderMesh") 
Mesh1.Parent = Part1 

Part3 = Instance.new("Part") 
Part3.BrickColor = BrickColor.new("White") 
Part3.Anchored = true 
Part3.Locked = true 
Part3.TopSurface = 0 
Part3.BottomSurface = 0 
Part3.Size = Vector3.new(80,1,80) 
Part3.Parent = Model1 
Part3.CFrame = CFrame.new(0,12+Y,0) 
Mesh3 = Instance.new("CylinderMesh") 
Mesh3.Parent = Part3 

Part3 = Instance.new("Part") 
Part3.BrickColor = BrickColor.new("White") 
Part3.Anchored = true 
Part3.Locked = true 
Part3.TopSurface = 0 
Part3.BottomSurface = 0 
Part3.Size = Vector3.new(80,1,80) 
Part3.Parent = Model1 
Part3.CFrame = CFrame.new(0,13.5+Y,0) 
Mesh3 = Instance.new("SpecialMesh") 
Mesh3.MeshType = "Sphere" 
Mesh3.Scale = Vector3.new(1,4,1) 
Mesh3.Parent = Part3 

Part4 = Instance.new("Part") 
Part4.BrickColor = BrickColor.new("White") 
Part4.Anchored = true 
Part4.Locked = true 
Part4.TopSurface = 0 
Part4.BottomSurface = 0 
Part4.Size = Vector3.new(80,1,80) 
Part4.Parent = Model1 
Part4.CFrame = CFrame.new(0,13.5+Y,0) 
Mesh3 = Instance.new("SpecialMesh") 
Mesh3.MeshType = "Sphere" 
Mesh3.Scale = Vector3.new(1,4,1) 
Mesh3.Parent = Part4 

Part7 = Instance.new("Part") 
Part7.Locked = true 
Part7.BrickColor = BrickColor.new("Bright green") 
Part7.Anchored = true 
Part7.CanCollide = true 
Part7.TopSurface = 0 
Part7.BottomSurface = 0 
Part7.Size = Vector3.new(3,30,4) 
Part7.CFrame = CFrame.new(0,0+Y,40) 

for i = 1,240 do 
Part2 = Part7:Clone() 
Part2.Parent = Model1 
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
Part7.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
Part2.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part7.CFrame = Part2.CFrame 
wait() 
end 

Part7.Size = Vector3.new(2,29,1) 
Part7.BrickColor = BrickColor.new("Bright green") 

for i = 5,6 do 
Part2 = Part7:Clone() 
Part2.Parent = Model5 
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
Part7.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
Part2.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part7.CFrame = Part2.CFrame 
wait() 
end 

for i = 5,5 do 
Part2 = Part7:Clone() 
Part2.Parent = Model6 
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
Part7.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
Part2.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part7.CFrame = Part2.CFrame 
wait() 
end 

Part7.BrickColor = BrickColor.new("Bright green") 
Part7.Size = Vector3.new(3,5,4) 

for i = 5,11 do 
Part2 = Part7:Clone() 
Part2.Parent = Model1 
Part7.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0) 
Part2.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0) 
Part2.CFrame = Part2.CFrame + Vector3.new(0,12.6,0) 
Part7.CFrame = Part2.CFrame 
Part7.CFrame = Part7.CFrame - Vector3.new(0,12.6,0) 
wait() 
end 

Part7.Size = Vector3.new(3,29,3) 

for i = 5,11 do 
Part2 = Part7:Clone() 
Part2.Parent = Model7 
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
Part7.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
Part2.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part7.CFrame = Part2.CFrame 
wait() 
end 

Part7.Size = Vector3.new(3,4,4) 

for i = 5,11 do 
Part2 = Part7:Clone() 
Part2.Parent = Model1 
Part7.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0) 
Part2.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0) 
Part7.CFrame = Part2.CFrame 
wait() 
end 

Part7.Size = Vector3.new(200,20,500) 
Z = 30 
X = 10990.5 

for i = 5,11 do 
Part2 = Part7:Clone() 
Part2.Parent = Model1 
Part2.CFrame = CFrame.new(-0.5,X,Z) 
X = X - 1 
Z = Z + 1 
Part7.Size = Part7.Size + Vector3.new(0,0,1) 
wait() 
end 

Buttonz = Instance.new("Part") 
Buttonz.formFactor = "Symmetric" 
Buttonz.Anchored = true 
Buttonz.Locked = true 
Buttonz.CanCollide = true 
Buttonz.BrickColor = BrickColor.new("Really red") 
Buttonz.Size = Vector3.new(4,4,4) 
Buttonz.Shape = "Ball" 
Buttonz.Material = "Ice" 
Buttonz.TopSurface = 0 
Buttonz.BottomSurface = 0 
Buttonz.Parent = Model1 
Buttonz.CFrame = CFrame.new(2,1+Y,38) 

Buttons = Instance.new("Part") 
Buttons.formFactor = "Symmetric" 
Buttons.Anchored = true 
Buttons.Locked = true 
Buttons.CanCollide = true 
Buttons.Transparency = 0.75 
Buttons.BrickColor = BrickColor.new("Really red") 
Buttons.Size = Vector3.new(5,5,5) 
Buttons.Shape = "Ball" 
Buttons.TopSurface = 0 
Buttons.BottomSurface = 0 
Buttons.Parent = Model1 
Buttons.CFrame = CFrame.new(2,1+Y,38) 

Buttona = Instance.new("Part") 
Buttona.formFactor = "Symmetric" 
Buttona.Anchored = true 
Buttona.Locked = true 
Buttona.CanCollide = true 
Buttona.BrickColor = BrickColor.new("Really red") 
Buttona.Size = Vector3.new(4,4,4) 
Buttona.Material = "Ice" 
Buttona.Shape = "Ball" 
Buttona.TopSurface = 0 
Buttona.BottomSurface = 0 
Buttona.Parent = Model1 
Buttona.CFrame = CFrame.new(2,-1+Y,42) 

Buttonb = Instance.new("Part") 
Buttonb.formFactor = "Symmetric" 
Buttonb.Anchored = true 
Buttonb.Locked = true 
Buttonb.CanCollide = true 
Buttonb.Transparency = 0.75 
Buttonb.BrickColor = BrickColor.new("Really red") 
Buttonb.Size = Vector3.new(5,5,5) 
Buttonb.Shape = "Ball" 
Buttonb.TopSurface = 0 
Buttonb.BottomSurface = 0 
Buttonb.Parent = Model1 
Buttonb.CFrame = CFrame.new(2,-1+Y,42) 

script.Parent = Model1 

end 

function Closea() 
for i = 4,8 do 
for i,v in pairs(script.Parent.Parent.Model6:GetChildren()) do 
if v.className == "Part" then 
v.CFrame = v.CFrame * CFrame.new(-.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.05,0) 
end 
end 
for i,v in pairs(script.Parent.Parent.Model5:GetChildren()) do 
if v.className == "Part" then 
v.CFrame = v.CFrame * CFrame.new(.59, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0) 
end 
end 
wait() 
end 
end 

function Opena() 
for i = 6.5,8 do 
for i,v in pairs(script.Parent.Parent.Model6:GetChildren()) do 
if v.className == "Part" then 
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0) 
v.CFrame = v.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
end 
for i,v in pairs(script.Parent.Parent.Model5:GetChildren()) do 
if v.className == "Part" then 
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.05,0) 
v.CFrame = v.CFrame * CFrame.new(-.59, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
end 
wait() 
end 
end 

function Openb() 
Buttonz.BrickColor = BrickColor.new("Bright red") 
Buttons.BrickColor = BrickColor.new("Bright red") 
Buttona.BrickColor = BrickColor.new("Bright red") 
Buttonb.BrickColor = BrickColor.new("Bright red") 
for i = 6,11 do 
for i,v in pairs(script.Parent.Parent.Model7:GetChildren()) do 
if v.className == "Part" then 
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0) 
v.CFrame = v.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
end 
wait() 
end 
end 

function Closeb() 
Buttonz.BrickColor = BrickColor.new("Hot pink") 
Buttons.BrickColor = BrickColor.new("Hot pink") 
Buttona.BrickColor = BrickColor.new("Hot pink") 
Buttonb.BrickColor = BrickColor.new("Hot pink") 
for i = 6,11 do 
for i,v in pairs(script.Parent.Parent.Model7:GetChildren()) do 
if v.className == "Part" then 
v.CFrame = v.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0) 
end 
end 
wait() 
end 
end 

Blaha = true 
Blahb = true 

EndBlahb = true 

function Toucheda(hit) 
if Blaha == true then 
Blaha = false 
Opena() 
wait(4) 
Closea() 
Blaha = true 
end 
end 

Openb() 
EndBlahb = false 

function Touchedb(hit) 
if hit.Parent.Name == "acb227" or hit.Parent.Name == "crusher12555" or hit.Parent.Name == "ImInABlox" or hit.Parent.Name == "cool12309" or hit.Parent.Name == "Scriptaxor" then 
if Blahb == true then 
Blahb = false 
if EndBlahb == true then 
Openb() 
EndBlahb = false 
wait(2) 
Blahb = true 
return 
end 
if EndBlahb == false then 
Closeb() 
EndBlahb = true 
wait(2) 
Blahb = true 
return 
end 
Blahb = true 
end 
end 
end 

for i,v in pairs(script.Parent.Parent.Model5:GetChildren()) do if v.className == "Part" then v.Touched:connect(Toucheda) end end 
for i,v in pairs(script.Parent.Parent.Model6:GetChildren()) do if v.className == "Part" then v.Touched:connect(Toucheda) end end 

Buttonz.Touched:connect(Touchedb) 
Buttons.Touched:connect(Touchedb) 
Buttona.Touched:connect(Touchedb) 
Buttonb.Touched:connect(Touchedb) 

for i,v in pairs(game.Players:GetChildren()) do 
if v.className == "Player" then 
if v.Character:findFirstChild("Torso") ~= nil then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,0) 
end 
end 
end