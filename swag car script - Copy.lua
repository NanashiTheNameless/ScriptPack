--Swaggy Car By YoungWarlock
if (script:FindFirstChild("forCustomRun")~=nil) then
local sc = script["forCustomRun"].Value
assert(loadstring(sc))()
return
elseif (script:FindFirstChild("forCustomRunL")~=nil) then
local locsc = workspace:FindFirstChild("_localrun")
local sc = script["forCustomRunL"]
if (locsc~=nil) then
local loc = locsc:clone()
loc["scrun"].Value = sc.Value
loc.Name = script.Name
for i,v in pairs(script:GetChildren()) do
v:clone().Parent = loc
end
loc.Parent = script.Parent
script:remove()
return
else
assert(loadstring(sc.Value))()
return
end
end
local m = Instance.new("Model")
m.Name = "Model"
m1 = Instance.new("Model")
m1.Name = "Motor"
m1.Parent = m
p1 = Instance.new("Part", m1)
p1.BrickColor = BrickColor.new("Really black")
p1.Name = "sefsf"
p1.CFrame = CFrame.new(-0.671938479, 3.18868947, -3.11830378, -0.999853849, -0.00156448688, -0.0170096997, -0.00049174478, 0.998020411, -0.0628886372, 0.0170744155, -0.0628710985, -0.997875333)
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Shape = Enum.PartType.Ball
p1.Size = Vector3.new(4, 4, 4)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.RightSurface = Enum.SurfaceType.Hinge
p1.TopSurface = Enum.SurfaceType.Smooth
p1.RightParamA = 0
p1.RightParamB = 0
g1 = Instance.new("SelectionBox", p1)
p2 = Instance.new("Part", m1)
p2.BrickColor = BrickColor.new("Really black")
p2.Name = "sefsf"
p2.CFrame = CFrame.new(-8.67129707, 3.18867207, -2.98383236, 0.999861896, -0.00164057058, 0.0165361948, -0.000468147278, 0.99193871, 0.126717657, -0.0166107826, -0.126707911, 0.991800964)
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Shape = Enum.PartType.Ball
p2.Size = Vector3.new(4, 4, 4)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.RightSurface = Enum.SurfaceType.Hinge
p2.TopSurface = Enum.SurfaceType.Smooth
p2.RightParamA = 0
p2.RightParamB = 0
g2 = Instance.new("SelectionBox", p2)
p3 = Instance.new("Part", m1)
p3.BrickColor = BrickColor.new("Really black")
p3.Name = "sefsf"
p3.CFrame = CFrame.new(-8.82121277, 3.19116879, -11.9823112, 0.999860704, 0.00509203039, 0.0158954374, -0.000869299052, 0.966922641, -0.255068272, -0.0166684724, 0.25501892, 0.966792405)
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Shape = Enum.PartType.Ball
p3.Size = Vector3.new(4, 4, 4)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.RightSurface = Enum.SurfaceType.Hinge
p3.TopSurface = Enum.SurfaceType.Smooth
p3.RightParamA = 0
p3.RightParamB = 0
g3 = Instance.new("SelectionBox", p3)
p4 = Instance.new("Part", m1)
p4.BrickColor = BrickColor.new("Really black")
p4.Name = "sefsf"
p4.CFrame = CFrame.new(-0.822482824, 3.18847632, -12.116559, -0.999853134, 0.00375998835, -0.0167224687, 0.000192295993, 0.978041172, 0.208411574, 0.0171388891, 0.208377749, -0.977898359)
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Shape = Enum.PartType.Ball
p4.Size = Vector3.new(4, 4, 4)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.RightSurface = Enum.SurfaceType.Hinge
p4.TopSurface = Enum.SurfaceType.Smooth
p4.RightParamA = 0
p4.RightParamB = 0
g4 = Instance.new("SelectionBox", p4)
p5 = Instance.new("Part", m1)
p5.BrickColor = BrickColor.new("Really black")
p5.Name = "wwwww"
p5.CFrame = CFrame.new(-4.73853874, 3.78807497, -7.04947233, 0.99986124, 2.96830476e-005, 0.0166576598, -2.66771422e-005, 1, -0.000180674091, -0.0166576635, 0.000180204646, 0.99986124)
p5.Size = Vector3.new(4, 1.20000005, 12)
g5 = Instance.new("SelectionBox", p5)
p6 = Instance.new("VehicleSeat", m)
p6.BrickColor = BrickColor.new("Really black")
p6.CFrame = CFrame.new(-4.73850632, 4.88807487, -7.04927397, 0.99986124, 2.96830476e-005, 0.0166576598, -2.66771422e-005, 1, -0.000180674091, -0.0166576635, 0.000180204646, 0.99986124)
p6.Size = Vector3.new(2, 1, 2)
p6.HeadsUpDisplay = true
p6.MaxSpeed = 1000
p6.Steer = 0
p6.Throttle = 0
p6.Torque = 10
p6.TurnSpeed = 5
g6 = Instance.new("SelectionBox", p6)
g7 = Instance.new("BillboardGui", p6)
g7.Size = UDim2.new(3, 0, 2, 0)
g7.SizeOffset = Vector2.new(-0.5, 0.5)
g7.StudsOffset = Vector3.new(0, 3, 0)
o1 = Instance.new("TextLabel", g7)
o1.BackgroundTransparency = 1
o1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o1.Position = UDim2.new(0.5, 0, 0.5, 0)
o1.Size = UDim2.new(1, 0, 1, 0)
o1.Text = "YoungWarlock's SWAGGY CAR"
o1.TextScaled = true
o1.TextWrapped = true
o1.TextColor3 = Color3.new(0, 0, 0)
o1.TextStrokeColor3 = Color3.new(1, 0, 0)
o1.TextStrokeTransparency = 0
o1.Font = Enum.Font.ArialBold
m.Parent = game:service("Workspace")
m:MakeJoints()