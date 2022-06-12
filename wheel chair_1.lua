vip = game.Players.acb227 
char = vip.Character 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(2,1,2) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Pastel brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.5, 0.2, 1.5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char.Torso 
w1.Part0 = h 
w1.Part1 = char.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1.5, 0) 
