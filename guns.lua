me = workspace.yfc
mod = Instance.new("Model") 
mod.Parent = me 
mod.Name = "Gun" 

--/[arms]\--
w1 = Instance.new("Weld") 
w1.Parent = me 
w1.Part0 = me["Right Arm"] 
w1.Part1 = me.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0) + Vector3.new(-1.35, 0.5, 0.5) 
w2 = Instance.new("Weld") 
w2.Parent = me 
w2.Part0 = me["Left Arm"] 
w2.Part1 = me.Torso 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.6, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
--/[gun]\--
part = Instance.new("Part")
part.Parent = mod 
part.Size = Vector3.new(1, 1, 1)
part.BrickColor = BrickColor.new("Mid grey")
part.Name = "Handle" 
part.CanCollide = false 
mesha = Instance.new("BlockMesh") 
mesha.Parent = part
mesha.Scale = Vector3.new(0.2, 0.2, 0.7)
local w = Instance.new("Weld") 
w.Part0 = part 
w.Part1 = me:FindFirstChild("Right Arm") 
w.C0 = CFrame.new(0, 1, 0) 
w.C1 = CFrame.new() 
w.Parent = part 

partb = Instance.new("Part")
partb.Parent = mod 
partb.Size = Vector3.new(1, 2, 1)
partb.BrickColor = BrickColor.new("Mid grey")
partb.Name = "Handle" 
partb.CanCollide = false 
meshb = Instance.new("BlockMesh") 
meshb.Parent = partb
meshb.Scale = Vector3.new(0.2, 0.5, 0.2)
local w = Instance.new("Weld") 
w.Part0 = partb 
w.Part1 = part 
w.C0 = CFrame.new(0, 0.5, 0.45) 
w.C1 = CFrame.new() 
w.Parent = partb 

partc = Instance.new("Part")
partc.Parent = mod 
partc.Size = Vector3.new(1, 1, 1)
partc.BrickColor = BrickColor.new("Mid grey")
partc.Name = "Handle" 
partc.CanCollide = false 
meshc = Instance.new("BlockMesh") 
meshc.Parent = partc
meshc.Scale = Vector3.new(0.15, 0.25, 0.05)
local w = Instance.new("Weld") 
w.Part0 = partc 
w.Part1 = part 
w.C0 = CFrame.new(0, 0.25, 0.1) 
w.C1 = CFrame.new() 
w.Parent = partc 

partd = Instance.new("Part")
partd.Parent = mod 
partd.Size = Vector3.new(1, 1, 1)
partd.BrickColor = BrickColor.new("Mid grey")
partd.Name = "Handle" 
partd.CanCollide = false 
meshd = Instance.new("BlockMesh") 
meshd.Parent = partd
meshd.Scale = Vector3.new(0.15, 0.05, 0.3)
local w = Instance.new("Weld") 
w.Part0 = partd 
w.Part1 = part 
w.C0 = CFrame.new(0, 0.4, 0.25) 
w.C1 = CFrame.new() 
w.Parent = partd 

parte = Instance.new("Part")
parte.Parent = mod 
parte.Size = Vector3.new(1, 1, 1)
parte.BrickColor = BrickColor.new("Mid grey")
parte.Name = "Handle" 
parte.CanCollide = false 
meshe = Instance.new("BlockMesh") 
meshe.Parent = parte
meshe.Scale = Vector3.new(0.05, 0.01, 0.2)
local w = Instance.new("Weld") 
w.Part0 = parte 
w.Part1 = part 
w.C0 = CFrame.new(0, 0.2, 0.3) 
w.C1 = CFrame.new() 
w.Parent = parte 

partf = Instance.new("Part")
partf.Parent = mod 
partf.Size = Vector3.new(1, 1, 1)
partf.BrickColor = BrickColor.new("Mid grey")
partf.Name = "Handle" 
partf.CanCollide = false 
meshf = Instance.new("CylinderMesh") 
meshf.Parent = partf
meshf.Scale = Vector3.new(0.15, 0.5, 0.15)
local w = Instance.new("Weld") 
w.Part0 = partf 
w.Part1 = partb 
w.C0 = CFrame.new(0, 0.22, 0) 
w.C1 = CFrame.new() 
w.Parent = partf 

partg = Instance.new("Part")
partg.Parent = mod 
partg.Size = Vector3.new(1, 1, 1)
partg.BrickColor = BrickColor.new("Dark stone grey")
partg.Name = "Handle" 
partg.CanCollide = false 
partg.Transparency = 1 
meshg = Instance.new("CylinderMesh") 
meshg.Parent = partg
meshg.Scale = Vector3.new(0.2, 0.5, 0.2)
local w = Instance.new("Weld") 
w.Part0 = partg
w.Part1 = partb 
w.C0 = CFrame.new(0, 0.82, 0) 
w.C1 = CFrame.new() 
w.Parent = partg 

parth = Instance.new("Part")
parth.Parent = mod 
parth.Size = Vector3.new(1, 1, 1)
parth.BrickColor = BrickColor.new("Mid grey")
parth.Name = "Handle" 
parth.CanCollide = false 
parth.Transparency = 1 
meshh = Instance.new("BlockMesh") 
meshh.Parent = parth
meshh.Scale = Vector3.new(0.2, 0.2, 0.7)
local w = Instance.new("Weld") 
w.Part0 = parth
w.Part1 = me["Left Arm"]
w.C0 = CFrame.new(0, 1.1, 0) 
w.C1 = CFrame.new() 
w.Parent = parth 

parti = Instance.new("Part")
parti.Parent = mod 
parti.Size = Vector3.new(1, 1, 1)
parti.BrickColor = BrickColor.new("Mid grey")
parti.Name = "Handle" 
parti.CanCollide = false 
parti.Transparency = 1 
meshi = Instance.new("CylinderMesh") 
meshi.Parent = parti
meshi.Scale = Vector3.new(0.2, 0.7, 0.2)
local w = Instance.new("Weld") 
w.Part0 = parti
w.Part1 = me["Left Arm"]
w.C0 = CFrame.new(0, 0.8, 0) 
w.C1 = CFrame.new() 
w.Parent = parti 

partj = Instance.new("Part")
partj.Parent = mod 
partj.Size = Vector3.new(1, 1, 1)
partj.BrickColor = BrickColor.new("Mid grey")
partj.Name = "Handle" 
partj.CanCollide = false 
partj.Transparency = 1 
meshj = Instance.new("BlockMesh") 
meshj.Parent = partj
meshj.Scale = Vector3.new(0.1, 0.7, 0.1)
local w = Instance.new("Weld") 
w.Part0 = partj
w.Part1 = me["Left Arm"]
w.C0 = CFrame.new(0, 1.1, 0) 
w.C1 = CFrame.new() 
w.Parent = partj 

partk = Instance.new("Part")
partk.Parent = mod 
partk.Size = Vector3.new(1, 1, 1)
partk.BrickColor = BrickColor.new("Really red")
partk.Name = "Handle" 
partk.CanCollide = false 
partk.Transparency = 1 
meshk = Instance.new("CylinderMesh") 
meshk.Parent = partk
meshk.Scale = Vector3.new(0.01, 50, 0.01)
meshk.Offset = Vector3.new(0, -29, 0)
local w = Instance.new("Weld") 
w.Part0 = partk
w.Part1 = partb 
w.C0 = CFrame.new(0, 0.82, 0) 
w.C1 = CFrame.new() 
w.Parent = partk 


--Gui------------------------------------------------------------------------------------------------------------ 
vip = me.Name 
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
tx.Text = "Silencer" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
partg.Transparency = 0
wait(0.2) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 145)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Silencer off" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
partg.Transparency = 1
wait(0.2) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 165)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Reload" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.6, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.5, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.2, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
cl = part:clone() 
cl.Parent = workspace 
cl.Anchored = false 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.9, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.1) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.2) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.7, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
parth.Transparency = 0
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.3) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.4) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.9, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.5) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.6) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.5) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.2, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.4) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.3) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.2) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0) + Vector3.new(-1.35, 0.5, 0.5) 
parth.Transparency = 1
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.5, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.6, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 185)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Melle" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.6, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.5, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.2, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.9, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.1) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.2) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.7, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
parti.Transparency = 0
partj.Transparency = 0
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.3) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.8, 0.7, -0.1) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.4) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-0.9, 0.6, -0.3) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.5) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1, 0.5, -0.5) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.6) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.1, 0.4, -0.7) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.5) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.2, 0.3, -0.9) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.4) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, 0.4, -0.7) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.3) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.3, 0.5, -0.5) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0.2) + Vector3.new(-1.35, 0.5, 0.5) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.4, 0.6, -0.2) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.4, 0) + Vector3.new(-1.35, 0.5, 0.5) 
parti.Transparency = 1
partj.Transparency = 1
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.5, 0.7, -0.1) + Vector3.new(1.2, 0.6, 0.5) 
wait(0.1) 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.6, 0.8, 0) + Vector3.new(1.2, 0.6, 0.5) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 205)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "red dot off" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
partk.Transparency = 1
wait(0.2) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 225)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "red dot" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.3, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
partk.Transparency = 0
wait(0.2) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2.1, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
wait(0.1) 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.6, -0.2, 0) + Vector3.new(-1.5, 0.5, 0.5) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 245)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "1 shot" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
bullet = Instance.new("Part")
bullet.Parent = game.Workspace
bullet.Size = Vector3.new(1, 1, 1)
bullet.CFrame = partg.CFrame*CFrame.new(Vector3.new(0, 0, 0.1))
bullet.Name = "OING"
a = Instance.new("SpecialMesh")
a.Parent = bullet
a.MeshType = "Brick"
a.Scale = Vector3.new(0.3, 0.3, 0.3)
bullet.Locked = true
bullet.TopSurface = "Smooth"
bullet.BottomSurface = "Smooth"
bullet.Anchored = false

b = Instance.new("BodyVelocity")
b.Parent = bullet
b.maxForce = Vector3.new(math.huge, math.huge, math.huge)
b.velocity = partg.CFrame.lookVector * 500 + Vector3.new(math.random(-1, 1)/30, math.random(-1, 1)/30, math.random(-1, 1)/30)
wait(1) 
bullet:remove()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 