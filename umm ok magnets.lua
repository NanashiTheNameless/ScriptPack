me = Game.workspace.olefson 
local a = Instance.new("Part") 
a.Parent = me 
a.Position = Vector3.new(0,0,0) 
a.Size = Vector3.new(1,1,1) 
a.BrickColor = BrickColor.new("Really blue") 
a.Transparency = 0 
a.Reflectance = 0.3 
a.Anchored = false 
a.CanCollide = false 
a.Name = "brick" 
a.Locked = true 
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth" 
m = Instance.new("SpecialMesh") 
m.MeshType = "Sphere" 
m.Scale = Vector3.new(1, 0.8, 1) 
m.Parent = a 
w1 = Instance.new("Weld") 
w1.Parent = me 
w1.Part0 = a 
w1.Part1 = me["Left Arm"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1.3, 0) 
local b = Instance.new("Part") 
b.Parent = me 
b.Position = Vector3.new(0,0,0) 
b.Size = Vector3.new(1,1,1) 
b.BrickColor = BrickColor.new("Really red") 
b.Transparency = 0 
b.Reflectance = 0.3 
b.Anchored = false 
b.CanCollide = false 
b.Name = "brick" 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
m = Instance.new("SpecialMesh") 
m.MeshType = "Sphere" 
m.Scale = Vector3.new(1, 0.8, 1) 
m.Parent = b 
w1 = Instance.new("Weld") 
w1.Parent = me 
w1.Part0 = b 
w1.Part1 = me["Right Arm"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1.3, 0) 
w2 = Instance.new("Weld") 
w2.Parent = me 
w2.Part0 = me["Right Arm"] 
w2.Part1 = me["Torso"]
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.5, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3 = Instance.new("Weld") 
w3.Parent = me 
w3.Part0 = me["Left Arm"] 
w3.Part1 = me["Torso"]
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.5, 0, 0) + Vector3.new(1.5, 0, 0.2) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "olefson" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Cast" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.6, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.6, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.7, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.7, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.9, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.9, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-1.1, 0, 0) + Vector3.new(1.5, 0, 0.2) 
ex = Instance.new("Explosion") 
ex.Parent = workspace 
ex.position = plyr.Torso.Position * Vector3.new(0, 0, 10) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.6, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.6, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.4, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.4, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.2, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.2, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1.5, 0, 0.2) 
ex = Instance.new("Explosion") 
ex.Parent = workspace 
ex.position = plyr.Torso.Position * Vector3.new(0, 0, 10) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.2, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.2, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.4, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.4, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.6, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.6, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 0) + Vector3.new(-1.5, 0, 0.2) 
w3.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 0) + Vector3.new(1.5, 0, 0.2) 
wait(0.1) 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end)
