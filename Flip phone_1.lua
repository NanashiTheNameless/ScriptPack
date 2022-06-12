hop = Instance.new("HopperBin") 
hop.Name = "Phone" 
hop.Parent = Game.Players.yfc.Backpack 
script.Parent = Game.Players.yfc.Character 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Game.Players.yfc.Character  
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.8, 0.8, 0.2) 
w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character.Torso 
w1.Part0 = h 
w1.Part1 = Game.Players.yfc.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0.3, 0, 0) + Vector3.new(0, -1, 2) 

local ha = Instance.new("Part") 
ha.Name = "Handlee" 
ha.Parent = Game.Players.yfc.Character  
ha.Size = Vector3.new(1,1,1) 
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new("Black") 
ha.TopSurface = "Smooth" 
ha.BottomSurface = "Smooth" 
ha.Transparency = 0 
ha.Reflectance = 0 
m = Instance.new("BlockMesh") 
m.Parent = ha 
m.Scale = Vector3.new(0.8, 0.8, 0.1) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = ha 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, -0.15) 

local hai = Instance.new("Part") 
hai.Name = "Handlee" 
hai.Parent = Game.Players.yfc.Character  
hai.Size = Vector3.new(1,1,1) 
hai.formFactor = "Brick" 
hai.BrickColor = BrickColor.new("Black") 
hai.TopSurface = "Smooth" 
hai.BottomSurface = "Smooth" 
hai.Transparency = 1 
hai.Reflectance = 0 
m = Instance.new("BlockMesh") 
m.Parent = hai 
m.Scale = Vector3.new(0.8, 0.8, 0.1) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = hai 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(3, 0, 0) + Vector3.new(0, 0.9, 0) 

local hais = Instance.new("Part") 
hais.Name = "Handlee" 
hais.Parent = Game.Players.yfc.Character  
hais.Size = Vector3.new(1,1,1) 
hais.formFactor = "Brick" 
hais.BrickColor = BrickColor.new("Mid grey") 
hais.TopSurface = "Smooth" 
hais.BottomSurface = "Smooth" 
hais.Transparency = 1 
hais.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = hais 
m.Scale = Vector3.new(0.5, 0.5, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = hai 
w1.Part0 = hais 
w1.Part1 = hai 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0.08) 

local haisy = Instance.new("Part") 
haisy.Name = "Handlee" 
haisy.Parent = Game.Players.yfc.Character  
haisy.Size = Vector3.new(1,1,1) 
haisy.formFactor = "Brick" 
haisy.BrickColor = BrickColor.new("Mid grey") 
haisy.TopSurface = "Smooth" 
haisy.BottomSurface = "Smooth" 
haisy.Transparency = 1 
haisy.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisy 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisy 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.14, -0.08) 

local haisys = Instance.new("Part") 
haisys.Name = "Handlee" 
haisys.Parent = Game.Players.yfc.Character  
haisys.Size = Vector3.new(1,1,1) 
haisys.formFactor = "Brick" 
haisys.BrickColor = BrickColor.new("Mid grey") 
haisys.TopSurface = "Smooth" 
haisys.BottomSurface = "Smooth" 
haisys.Transparency = 1 
haisys.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisys 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisys 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.2, 0.14, -0.08) 

local haisyss = Instance.new("Part") 
haisyss.Name = "Handlee" 
haisyss.Parent = Game.Players.yfc.Character  
haisyss.Size = Vector3.new(1,1,1) 
haisyss.formFactor = "Brick" 
haisyss.BrickColor = BrickColor.new("Mid grey") 
haisyss.TopSurface = "Smooth" 
haisyss.BottomSurface = "Smooth" 
haisyss.Transparency = 1 
haisyss.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyss 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyss 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.2, 0.14, -0.08) 

local haisyssssys = Instance.new("Part") 
haisyssssys.Name = "Handlee" 
haisyssssys.Parent = Game.Players.yfc.Character  
haisyssssys.Size = Vector3.new(1,1,1) 
haisyssssys.formFactor = "Brick" 
haisyssssys.BrickColor = BrickColor.new("Mid grey") 
haisyssssys.TopSurface = "Smooth" 
haisyssssys.BottomSurface = "Smooth" 
haisyssssys.Transparency = 1 
haisyssssys.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssys 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssys 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.2, -0.14, -0.08) 

local haisyssssysss = Instance.new("Part") 
haisyssssysss.Name = "Handlee" 
haisyssssysss.Parent = Game.Players.yfc.Character  
haisyssssysss.Size = Vector3.new(1,1,1) 
haisyssssysss.formFactor = "Brick" 
haisyssssysss.BrickColor = BrickColor.new("Mid grey") 
haisyssssysss.TopSurface = "Smooth" 
haisyssssysss.BottomSurface = "Smooth" 
haisyssssysss.Transparency = 1 
haisyssssysss.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssysss 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssysss 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.2, -0.14, -0.08) 

local haisyssssyss = Instance.new("Part") 
haisyssssyss.Name = "Handlee" 
haisyssssyss.Parent = Game.Players.yfc.Character  
haisyssssyss.Size = Vector3.new(1,1,1) 
haisyssssyss.formFactor = "Brick" 
haisyssssyss.BrickColor = BrickColor.new("Mid grey") 
haisyssssyss.TopSurface = "Smooth" 
haisyssssyss.BottomSurface = "Smooth" 
haisyssssyss.Transparency = 1 
haisyssssyss.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssyss 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssyss 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.14, -0.08) 

local haisyssssyd = Instance.new("Part") 
haisyssssyd.Name = "Handlee" 
haisyssssyd.Parent = Game.Players.yfc.Character  
haisyssssyd.Size = Vector3.new(1,1,1) 
haisyssssyd.formFactor = "Brick" 
haisyssssyd.BrickColor = BrickColor.new("Mid grey") 
haisyssssyd.TopSurface = "Smooth" 
haisyssssyd.BottomSurface = "Smooth" 
haisyssssyd.Transparency = 1 
haisyssssyd.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssyd 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssyd 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.2, 0.28, -0.08) 

local haisyssssye = Instance.new("Part") 
haisyssssye.Name = "Handlee" 
haisyssssye.Parent = Game.Players.yfc.Character  
haisyssssye.Size = Vector3.new(1,1,1) 
haisyssssye.formFactor = "Brick" 
haisyssssye.BrickColor = BrickColor.new("Mid grey") 
haisyssssye.TopSurface = "Smooth" 
haisyssssye.BottomSurface = "Smooth" 
haisyssssye.Transparency = 1 
haisyssssye.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssye 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssye 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.2, 0.28, -0.08) 

local haisyssssyf = Instance.new("Part") 
haisyssssyf.Name = "Handlee" 
haisyssssyf.Parent = Game.Players.yfc.Character  
haisyssssyf.Size = Vector3.new(1,1,1) 
haisyssssyf.formFactor = "Brick" 
haisyssssyf.BrickColor = BrickColor.new("Mid grey") 
haisyssssyf.TopSurface = "Smooth" 
haisyssssyf.BottomSurface = "Smooth" 
haisyssssyf.Transparency = 1 
haisyssssyf.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssyf 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssyf 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.28, -0.08) 

local haisyssssya = Instance.new("Part") 
haisyssssya.Name = "Handlee" 
haisyssssya.Parent = Game.Players.yfc.Character  
haisyssssya.Size = Vector3.new(1,1,1) 
haisyssssya.formFactor = "Brick" 
haisyssssya.BrickColor = BrickColor.new("Mid grey") 
haisyssssya.TopSurface = "Smooth" 
haisyssssya.BottomSurface = "Smooth" 
haisyssssya.Transparency = 1 
haisyssssya.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssya 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssya 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.2, -0.28, -0.08) 

local haisyssssyb = Instance.new("Part") 
haisyssssyb.Name = "Handlee" 
haisyssssyb.Parent = Game.Players.yfc.Character  
haisyssssyb.Size = Vector3.new(1,1,1) 
haisyssssyb.formFactor = "Brick" 
haisyssssyb.BrickColor = BrickColor.new("Mid grey") 
haisyssssyb.TopSurface = "Smooth" 
haisyssssyb.BottomSurface = "Smooth" 
haisyssssyb.Transparency = 1 
haisyssssyb.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssyb 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssyb 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.2, -0.28, -0.08) 

local haisyssssyc = Instance.new("Part") 
haisyssssyc.Name = "Handlee" 
haisyssssyc.Parent = Game.Players.yfc.Character  
haisyssssyc.Size = Vector3.new(1,1,1) 
haisyssssyc.formFactor = "Brick" 
haisyssssyc.BrickColor = BrickColor.new("Mid grey") 
haisyssssyc.TopSurface = "Smooth" 
haisyssssyc.BottomSurface = "Smooth" 
haisyssssyc.Transparency = 1 
haisyssssyc.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssssyc 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssssyc 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.28, -0.08) 

local haisysssss = Instance.new("Part") 
haisysssss.Name = "Handlee" 
haisysssss.Parent = Game.Players.yfc.Character  
haisysssss.Size = Vector3.new(1,1,1) 
haisysssss.formFactor = "Brick" 
haisysssss.BrickColor = BrickColor.new("Mid grey") 
haisysssss.TopSurface = "Smooth" 
haisysssss.BottomSurface = "Smooth" 
haisysssss.Transparency = 1 
haisysssss.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisysssss 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisysssss 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.2, 0, -0.08) 

local haisyssss = Instance.new("Part") 
haisyssss.Name = "Handlee" 
haisyssss.Parent = Game.Players.yfc.Character  
haisyssss.Size = Vector3.new(1,1,1) 
haisyssss.formFactor = "Brick" 
haisyssss.BrickColor = BrickColor.new("Mid grey") 
haisyssss.TopSurface = "Smooth" 
haisyssss.BottomSurface = "Smooth" 
haisyssss.Transparency = 1 
haisyssss.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisyssss 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisyssss 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, -0.08) 

local haisysss = Instance.new("Part") 
haisysss.Name = "Handlee" 
haisysss.Parent = Game.Players.yfc.Character  
haisysss.Size = Vector3.new(1,1,1) 
haisysss.formFactor = "Brick" 
haisysss.BrickColor = BrickColor.new("Mid grey") 
haisysss.TopSurface = "Smooth" 
haisysss.BottomSurface = "Smooth" 
haisysss.Transparency = 1 
haisysss.Reflectance = 0.2 
m = Instance.new("BlockMesh") 
m.Parent = haisysss 
m.Scale = Vector3.new(0.1, 0.1, 0.05) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = haisysss 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.2, 0, -0.08) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character["Right Arm"] 
w1.Part0 = Game.Players.yfc.Character["Right Arm"] 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, -1) + Vector3.new(1, -1, 0) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character["Left Arm"] 
w1.Part0 = Game.Players.yfc.Character["Left Arm"] 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 1) + Vector3.new(-1, -1, 0) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character.Torso 
w1.Part0 = Game.Players.yfc.Character.Head 
w1.Part1 = Game.Players.yfc.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0.2, 0, 0) + Vector3.new(0, -1, 0) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Phone" 
sc.Parent = pg 

txl = Instance.new("TextLabel") 
txl.BackgroundTransparency = 0.3 
txl.Name = "Text - Reset" 
txl.Parent = sc 
txl.Position = UDim2.new(0, 400, 0, 20) 
txl.Size = UDim2.new(0, 200, 0, 300) 
txl.Text = "" 

txoa = Instance.new("TextButton") 
txoa.BackgroundTransparency = 0.3 
txoa.Name = "Text - Reset" 
txoa.Parent = sc 
txoa.Position = UDim2.new(0, 400, 0, 20) 
txoa.Size = UDim2.new(0, 99, 0, 20) 
txoa.Text = "On" 

txoa.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txoc.Visible = true 
txod.Visible = false
ha.Transparency = 1 
hai.Transparency = 0 
hais.Transparency = 0 
haisy.Transparency = 0 
haisys.Transparency = 0 
haisyss.Transparency = 0 
haisysss.Transparency = 0 
haisyssssys.Transparency = 0 
haisysssss.Transparency = 0 
haisyssss.Transparency = 0 
haisyssssyss.Transparency = 0 
haisyssssysss.Transparency = 0 
haisyssssya.Transparency = 0 
haisyssssyb.Transparency = 0 
haisyssssyc.Transparency = 0 
haisyssssyd.Transparency = 0 
haisyssssye.Transparency = 0 
haisyssssyf.Transparency = 0 
end 
end) 

txob = Instance.new("TextButton") 
txob.BackgroundTransparency = 0.3 
txob.Name = "Text - Reset" 
txob.Parent = sc 
txob.Position = UDim2.new(0, 400, 0, 40) 
txob.Size = UDim2.new(0, 99, 0, 20) 
txob.Text = "Off" 

txob.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txoc.Visible = false 
txod.Visible = false
ha.Transparency = 0 
hai.Transparency = 1 
hais.Transparency = 1 
haisy.Transparency = 1 
haisys.Transparency = 1 
haisyss.Transparency = 1 
haisysss.Transparency = 1 
haisyssssys.Transparency = 1 
haisysssss.Transparency = 1 
haisyssss.Transparency = 1 
haisyssssyss.Transparency = 1 
haisyssssysss.Transparency = 1 
haisyssssya.Transparency = 1 
haisyssssyb.Transparency = 1 
haisyssssyc.Transparency = 1 
haisyssssyd.Transparency = 1 
haisyssssye.Transparency = 1 
haisyssssyf.Transparency = 1 
end 
end) 

txoc = Instance.new("TextButton") 
txoc.BackgroundTransparency = 0.3 
txoc.Name = "Text - Reset" 
txoc.Parent = sc 
txoc.Position = UDim2.new(0, 400, 0, 60) 
txoc.Size = UDim2.new(0, 99, 0, 20) 
txoc.Text = "Options" 
txoc.Visible = false

txoc.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txoa.Visible = false 
txob.Visible = false 
txod.Visible = true 
txoc.Visible = false
end 
end) 

txod = Instance.new("TextButton") 
txod.BackgroundTransparency = 0.3 
txod.Name = "Text - Reset" 
txod.Parent = sc 
txod.Position = UDim2.new(0, 400, 0, 80) 
txod.Size = UDim2.new(0, 99, 0, 20) 
txod.Text = "Back" 
txod.Visible = false

txod.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txoa.Visible = true 
txob.Visible = true 
txoc.Visible = false 
txod.Visible = false
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

