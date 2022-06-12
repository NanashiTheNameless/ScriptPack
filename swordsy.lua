plyr = Game.Players.yfc
Tool = Instance.new("HopperBin") 
Tool.Parent = plyr.Backpack
Tool.Name = "Sword" 
script.Parent = plyr.Character 
Owner = plyr.Character
Color2 = BrickColor.new("Mid grey")
nameo = "yfc"
part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.size = Vector3.new(1, 4, 1) 
part1.Name = "Handle" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(0.25, 1, 0.4) 
mesh1.Parent = part1 

w2 = Instance.new("Weld") 
w2.Parent = script.Parent 
w2.Part0 = part1 
w2.Part1 = script.Parent["Right Arm"] 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, 0, 0) + Vector3.new(0, 2.5, -1) 

part2 = Instance.new("Part") 
part2.Parent = script.Parent 
part2.size = Vector3.new(1, 1, 2) 
part2.Name = "Handle" 
part2.TopSurface = "Smooth" 
part2.BottomSurface = "Smooth" 
part2.BrickColor = BrickColor.new("Reddish brown")
part2.Locked = true 

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(0.51, 0.25, 0.7) 
mesh1.Parent = part2 

weld1 = Instance.new("Weld") 
weld1.Parent = script.Parent 
weld1.Part0 = part2 
weld1.Part1 = part1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -1.7, 0) 

part3 = Instance.new("Part") 
part3.Parent = script.Parent 
part3.size = Vector3.new(1, 1, 1) 
part3.Name = "Handle" 
part3.TopSurface = "Smooth" 
part3.BottomSurface = "Smooth" 
part3.BrickColor = BrickColor.new("Reddish brown")
part3.Locked = true 

mesh1 = Instance.new("CylinderMesh") 
mesh1.Scale = Vector3.new(0.51, 1.2, 0.51) 
mesh1.Parent = part3 

weld1 = Instance.new("Weld") 
weld1.Parent = script.Parent 
weld1.Part0 = part3 
weld1.Part1 = part2 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.5, 0) 

part4 = Instance.new("Part") 
part4.Parent = script.Parent 
part4.size = Vector3.new(1, 1, 1) 
part4.Name = "Handle" 
part4.TopSurface = "Smooth" 
part4.BottomSurface = "Smooth" 
part4.Locked = true 

m = Instance.new("SpecialMesh") 
m.Parent = part4 
m.Scale = Vector3.new(0.25, 1, 0.4) 
m.MeshType = "Wedge"

weld1 = Instance.new("Weld") 
weld1.Parent = script.Parent 
weld1.Part0 = part4 
weld1.Part1 = part1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(3.1, 0, 0) + Vector3.new(0, -2.56, 0.07) 

part5 = Instance.new("Part") 
part5.Parent = script.Parent 
part5.size = Vector3.new(1, 1, 1) 
part5.Name = "Handle" 
part5.TopSurface = "Smooth" 
part5.BottomSurface = "Smooth" 
part5.Locked = true 
part5.Color = Color3.new("Really black")
part5.Transparency = 1

m = Instance.new("SpecialMesh") 
m.Parent = part5 
m.Scale = Vector3.new(1.2, 1.2, 1.2) 
m.MeshType = "Sphere"

weld1 = Instance.new("Weld") 
weld1.Parent = script.Parent 
weld1.Part0 = part5 
weld1.Part1 = part1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(3.1, 0, 0) + Vector3.new(0, -2.56, 0.07) 

weld2 = Instance.new("Weld") 
weld2.Parent = script.Parent 
weld2.Part0 = script.Parent["Right Arm"] 
weld2.Part1 = script.Parent.Torso 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 

weld1 = Instance.new("Weld") 
weld1.Parent = script.Parent 
weld1.Part0 = script.Parent["Left Arm"] 
weld1.Part1 = part1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-1.55, 2, 0) + Vector3.new(0, -1, 2.5)

--Gui------------------------------------------------------------------------------------------------------------ 
vip = nameo 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Slash" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 175) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "Slash" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "dark" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 215) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "Darkness" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Lighting.Ambient = Color3.new("Really black")
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "swish" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 195) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "swish" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-0.6, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-0.4, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-0.6, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Light" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 235) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "Light" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Lighting.Ambient = Color3.new(75, 75, 75)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "God power" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 255) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "God" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
for _, v in pairs(Workspace:GetChildren()) do 
if v:IsA("Model") then 
if v.Name ~= nameo then 
v.Torso.Name = "yfc rules"  
end 
end 
end
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 275) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "reset" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Owner.Torso.Name = "Fred" 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "rule" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 295) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "ruler" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
for _, v in pairs(Workspace:GetChildren()) do 
if v:IsA("Script") then 
if v.Name ~= nameo then 
v.Name = "yfc's minnion" 
end 
end 
end
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "secret" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 315) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "Secret" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.5, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.6, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.5, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-2.0, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.9
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.8
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.7
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.6
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.5
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.5, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.6
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.7
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.5, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.8
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 0.9
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
part5.Transparency = 1
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.2, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.0, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.2, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.5, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.2, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
weld2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, -0.2, 0) + Vector3.new(-1, 0.2, 0.4) 
wait(0.1) 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

part1.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner.Name then 
human:TakeDamage(math.random(5, 45))
end 
end 
end) 