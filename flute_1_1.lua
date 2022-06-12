--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1.9,2,1) 
h.CanCollide = false
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Mid grey")
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.2, 1.2, 0.2) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 1.6) + Vector3.new(1.3, 0.8, 1) 
--Torso-- 
local ha = Instance.new("Part") 
ha.Name = "H" 
ha.Parent = Workspace.acb227 
ha.Size = Vector3.new(1,1,1) 
ha.CanCollide = false
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new("Bright blue")
ha.BottomSurface = "Smooth" 
ha.Transparency = 1 
ha.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.MeshType = "Sphere" 
m.Parent = ha 
m.Scale = Vector3.new(0.5, 0.5, 0.5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = ha 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.3, 1.5, 0) 
--Torso-- 
local ha = Instance.new("Part") 
ha.Name = "Ha" 
ha.Parent = Workspace.acb227 
ha.Size = Vector3.new(1,1,1) 
ha.CanCollide = false
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new("Bright blue")
ha.BottomSurface = "Smooth" 
ha.Transparency = 1 
ha.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.MeshType = "Sphere" 
m.Parent = ha 
m.Scale = Vector3.new(0.5, 0.5, 0.5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = ha 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.7, 2, 0) 
--Torso-- 
local ha = Instance.new("Part") 
ha.Name = "Han" 
ha.Parent = Workspace.acb227 
ha.Size = Vector3.new(1,1,1) 
ha.CanCollide = false
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new("Bright blue")
ha.BottomSurface = "Smooth" 
ha.Transparency = 1 
ha.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.MeshType = "Sphere" 
m.Parent = ha 
m.Scale = Vector3.new(0.5, 0.5, 0.5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = ha 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1.1, 2.5, 0) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = Workspace.acb227["Right Arm"]  
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.4, -1.6) + Vector3.new(-1.35, -1.45, 0) 
w1 = Instance.new("Weld") 
w1.Parent = h
w1.Part0 = Workspace.acb227["Left Arm"]  
w1.Part1 = h
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.3, 0.2, -1.6) + Vector3.new(0.55, -1, 0) 
script.Parent = workspace.acb227
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "ffon" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 175) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "ff+" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
ff = Instance.new("ForceField") 
ff.Parent = Game.Workspace.acb227 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "select" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 215) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "select+" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
f = Instance.new("SelectionBox") 
f.Parent = Game.Workspace.acb227 
f.Adornee = Game.Workspace.acb227 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "ffoff" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 195) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "ff-" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227.ForceField:remove() 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "deselect" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 235) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "select-" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227.SelectionBox:remove() 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "tele" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 255) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "send" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227.Torso.CFrame = CFrame.new(0, 5, 0)
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
Game.Workspace.acb227.Torso.Name = "Fred" 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "bubbles" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 295) 
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "Bubbles" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.workspace.acb227.H.Transparency = 0.3 
wait(0.2) 
Game.workspace.acb227.H.Transparency = 1 
Game.workspace.acb227.Ha.Transparency = 0.3 
wait(0.2) 
Game.workspace.acb227.Ha.Transparency = 1 
Game.workspace.acb227.Han.Transparency = 0.3 
wait(0.2) 
Game.workspace.acb227.H.Transparency = 1 
Game.workspace.acb227.Ha.Transparency = 1 
Game.workspace.acb227.Han.Transparency = 1 
wait(0.2) 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 
