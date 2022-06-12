script/--------------------------Clayton1247 Productions I------------------------------------------------------------ 
local tool = Instance.new("Tool") 
tool.Parent = game.Players.acb227.Backpack 
tool.Name = "Lol Mine Worke" 

p5 = Instance.new("Part") 
p5.Parent = tool 
p5.Name = "Handle" 
p5.Size = Vector3.new(1, 1.2, 1) 
p5.Shape = 0 
p5.TopSurface = 0 
p5.BottomSurface = 0 
p5.Transparency = 1
p5.BrickColor = BrickColor.new("Black") 
-------------------------------------- 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.3,1,0.3) 
m.Parent = p5 
--------------------------------- 
p = Instance.new("Part") 
p.Parent = tool 
p.Name = "111" 
p.Size = Vector3.new(1, 1.2, 1) 
p.TopSurface = 0 
p.BottomSurface = 0 
p.BrickColor = BrickColor.new("Black") 
----------------------------------- 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.3,1,0.3) 
m.Parent = p 
---------------------------- 
w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = p5 
w.Parent = p 
w.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.25, 0, 0) 
--------------------------------- 
p1 = Instance.new("Part") 
p1.Parent = tool 
p1.Name = "112" 
p1.Size = Vector3.new(1, 1, 1) 
p1.TopSurface = 0 
p1.BottomSurface = 0 
p1.BrickColor = BrickColor.new("Institutional white") 
----------------------------------- 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(1,0.3,0.3) 
m.Parent = p1 
---------------------------- 
w1 = Instance.new("Weld") 
w1.Part0 = p1 
w1.Part1 = p 
w1.Parent = p1 
w1.C0 = CFrame.new(0, -0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
--------------------------------- 
p2 = Instance.new("Part") 
p2.Parent = tool 
p2.Name = "113" 
p2.Size = Vector3.new(1, 3, 1) 
p2.TopSurface = 0 
p2.BottomSurface = 0 
p2.BrickColor = BrickColor.new("Institutional white") 
----------------------------------- 
m2 = Instance.new("BlockMesh") 
m2.Scale = Vector3.new(0.6,1,0.25) 
m2.Parent = p2 
---------------------------- 
w2 = Instance.new("Weld") 
w2.Part0 = p2 
w2.Part1 = p 
w2.Parent = p2 
w2.C0 = CFrame.new(0, -1.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

function c(hit) if hit.Parent.Name ~= "Workspace" and hit.Parent.Name ~= "acb227" then hit:BreakJoints() end end p.Touched:connect(c)  
