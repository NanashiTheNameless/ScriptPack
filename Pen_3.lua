local player = game.Players.ic3w0lf589
local Me = player.Character 
function dic() 
local p1 = Instance.new("Part") 
local p2 = Instance.new("Part") 
local p3 = Instance.new("Part") 
local p4 = Instance.new("Part") 
local m = Instance.new("Model") 
m.Parent = Me 
m.Name = "sineP" 
p1.Name = "Part" 
p1.formFactor = "Symmetric" 
p1.Size = Vector3.new(2,2,1) 
p1.BrickColor = Me.Head.BrickColor 
p1.Reflectance = 0 
p1.Transparency = 0 
p1.TopSurface = "Smooth" 
p1.BottomSurface = "Smooth" 
p1.CanCollide = true 
p1.Parent = m 
p1.Locked = true 
local mesh1 = Instance.new("SpecialMesh") 
mesh1.MeshType = "Head" 
mesh1.Parent = p1 
mesh1.Scale = Vector3.new(1,1,1) 
weld1 = Instance.new("Weld") 
weld1.Part0 = Me["Torso"] 
weld1.Part1 = p1 
weld1.Parent = m 
weld1.C0 = CFrame.new(0,-1,-1)*CFrame.fromEulerAnglesXYZ(-1,0,0) 
p2.Name = "Part" 
p2.formFactor = "Plate" 
p2.Size = Vector3.new(1,0.4,1) 
p2.BrickColor = BrickColor.new("Pink") 
p2.Reflectance = 0 
p2.Transparency = 0 
p2.TopSurface = "Smooth" 
p2.BottomSurface = "Smooth" 
p2.CanCollide = true 
p2.Parent = m 
p2.Locked = true 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.MeshType = "Head" 
mesh2.Parent = p2 
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Part0 = Me["Torso"] 
weld2.Part1 = p2 
weld2.Parent = m 
weld2.C0 = CFrame.new(0,-.4,-1.9)*CFrame.fromEulerAnglesXYZ(-1,0,0) 
p3.Name = "Part" 
p3.Locked = true 
p3.formFactor = "Plate" 
p3.Size = Vector3.new(0.4,1,0.4) 
p3.BrickColor = BrickColor.new("Pink") 
p3.Reflectance = 0 
p3.Transparency = 0 
p3.TopSurface = "Smooth" 
p3.BottomSurface = "Smooth" 
p3.CanCollide = true 
p3.Parent = m 
local mesh3= Instance.new("SpecialMesh") 
mesh3.MeshType = "Head" 
mesh3.Parent = p3 
mesh3.Scale = Vector3.new(1,1,1) 
weld3 = Instance.new("Weld") 
weld3.Part0 = Me["Torso"] 
weld3.Part1 = p3 
weld3.Parent = m 
weld3.C0 = CFrame.new(0,-0.4,-1.9)*CFrame.fromEulerAnglesXYZ(-1,0,0) 
function onTouched(hit) 
p = Instance.new("Part") 
p.Parent = game.Workspace 
p.Name = "C/um" 
p.Size = Vector3.new(1,1,1) 
p.Position = p3.Position 
p.BrickColor = BrickColor.new("Institutional white") 
p.Anchored = false 
p.Locked = true 
p.Transparency = .2 
p.formFactor = "Symmetric" 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
meshp = Instance.new("SpecialMesh") 
meshp.Parent = p 
meshp.MeshType = "Sphere" 
meshp.Scale = Vector3.new(0.3,0.3,0.3) 
game:service("Debris"):AddItem(p, 10) 
end 
p3.Touched:connect(onTouched) 
p4.Name = "Part" 
p4.formFactor = "Plate" 
p4.Size = Vector3.new(1.4,1,1.4) 
p4.BrickColor = Me.Head.BrickColor 
p4.Reflectance = 0 
p4.Transparency = 0 
p4.TopSurface = "Smooth" 
p4.BottomSurface = "Smooth" 
p4.CanCollide = true 
p4.Parent = m 
p4.Locked = true 
local mesh4 = Instance.new("SpecialMesh") 
mesh4.MeshType = "Sphere" 
mesh4.Parent = p4 
mesh4.Scale = Vector3.new(1,1,1) 
weld4 = Instance.new("Weld") 
weld4.Part0 = Me["Torso"] 
weld4.Part1 = p4 
weld4.Parent = m 
weld4.C0 = CFrame.new(0,-1.5,-.5)*CFrame.fromEulerAnglesXYZ(-1,0,0) 
end 
gm = Instance.new("GuiMain") 
gm.Parent = player.PlayerGui 
gm.Name = "sineP" 
tb = Instance.new("TextButton") 
tb.Parent = gm 
tb.Size = UDim2.new(0,50,0,50) 
tb.Position = UDim2.new(0,400,0,80) 
tb.Text = "Pen" 
tb.BackgroundTransparency = .5 
tb.TextTransparency = .5 
tb.BackgroundColor3 = Color3.new(100,255,255) 
tb.BorderColor3 = Color3.new(50,255,255) 
function onClick() 
dic() 
tb1.Visible = true 
tb.Visible = false 
end 
tb.MouseButton1Click:connect(onClick) 
tb1 = Instance.new("TextButton") 
tb1.Parent = gm 
tb1.Size = UDim2.new(0,50,0,50) 
tb1.Position = UDim2.new(0,400,0,80) 
tb1.Text = "No Pen" 
tb1.BackgroundTransparency = .5 
tb1.TextTransparency = .5 
tb1.Visible = false 
tb1.BackgroundColor3 = Color3.new(100,255,255) 
tb1.BorderColor3 = Color3.new(50,255,255) 
function onClick() 
Me.sineP:Remove() 
tb.Visible = true 
tb1.Visible = false 
end 
tb1.MouseButton1Click:connect(onClick)