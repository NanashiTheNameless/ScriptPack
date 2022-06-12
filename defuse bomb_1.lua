local time = {15, 60*2, 60*4, 60*6} 
local mode = rlyhard 
local bombtime = hi 
if mode == easy then 
bombtime = time[4] 
end 
if mode == med then 
bombtime = time[3] 
end
if mode == hard then 
bombtime = time[2] 
end
if mode == rlyhard then 
bombtime = time[1] 
end 
me = game.Players.LocalPlayer 
char = me.Character 
pcall(function() workspace.Base.BOMB:remove() end) 
pcall(function() me.PlayerGui["Defuse me"]:remove() end) 
local bomb = Instance.new("Model") 
bomb.Parent = workspace.Base 
bomb.Name = "BOMB" 
script.Parent = bomb 
--case 
local basem = Instance.new("Model", bomb) 
basem.Name = "Time = : " ..bombtime.. " " 
local hum = Instance.new("Humanoid", basem) 
hum.Health = 0 
hum.MaxHealth = 0 
local base = Instance.new("Part", basem) 
base.formFactor = "Custom" 
base.BrickColor = BrickColor.new("Light blue") 
base.Transparency = 0.5 
base.TopSurface = "Smooth" 
base.BottomSurface = "Smooth" 
base.Name = "Head" 
base.Size = Vector3.new(4, 0.2, 4) 
base.Anchored = true 
base.CanCollide = true 
base.CFrame = CFrame.new(0, 0.75, 3)  
local base2 = Instance.new("Part", bomb) 
base2.formFactor = "Custom" 
base2.BrickColor = BrickColor.new("Light blue") 
base2.Transparency = 0.5 
base2.TopSurface = "Smooth" 
base2.BottomSurface = "Smooth" 
base2.Size = Vector3.new(4, 2, 0.2) 
base2.Anchored = true 
base2.CanCollide = true 
base2.CFrame = base.CFrame + Vector3.new(0, 1, 2) 
local base3 = Instance.new("Part", bomb) 
base3.formFactor = "Custom" 
base3.BrickColor = BrickColor.new("Light blue") 
base3.Transparency = 0.5 
base3.TopSurface = "Smooth" 
base3.BottomSurface = "Smooth" 
base3.Size = Vector3.new(4, 2, 0.2) 
base3.Anchored = true 
base3.CanCollide = true 
base3.CFrame = base.CFrame + Vector3.new(0, 1, -2) 
local base4 = Instance.new("Part", bomb) 
base4.formFactor = "Custom" 
base4.BrickColor = BrickColor.new("Light blue") 
base4.Transparency = 0.5 
base4.TopSurface = "Smooth" 
base4.BottomSurface = "Smooth" 
base4.Size = Vector3.new(0.2, 2, 4) 
base4.Anchored = true 
base4.CanCollide = true 
base4.CFrame = base.CFrame + Vector3.new(2, 1, 0) 
local base5 = Instance.new("Part", bomb) 
base5.formFactor = "Custom" 
base5.BrickColor = BrickColor.new("Light blue") 
base5.Transparency = 0.5 
base5.TopSurface = "Smooth" 
base5.BottomSurface = "Smooth" 
base5.Size = Vector3.new(0.2, 2, 4) 
base5.Anchored = true 
base5.CanCollide = true 
base5.CFrame = base.CFrame + Vector3.new(-2, 1, 0) 
local base6 = Instance.new("Part", bomb) 
base6.formFactor = "Custom" 
base6.BrickColor = BrickColor.new("Light blue") 
base6.Transparency = 0.5 
base6.TopSurface = "Smooth" 
base6.BottomSurface = "Smooth" 
base6.Size = Vector3.new(4, 0.2, 4) 
base6.Anchored = true 
base6.CanCollide = true 
base6.CFrame = base.CFrame + Vector3.new(0, 1.85, 0)  
--bomb 
local bom = Instance.new("Part", bomb) 
bom.formFactor = "Custom" 
bom.BrickColor = BrickColor.new("Bright blue") 
bom.Transparency = 0.25 
bom.TopSurface = "Smooth" 
bom.BottomSurface = "Smooth" 
bom.Size = Vector3.new(1.5, 0.2, 1.5) 
bom.Anchored = true 
bom.CanCollide = true 
bom.CFrame = base.CFrame + Vector3.new(0, 0.75, 0) 
bomm = Instance.new("SpecialMesh") 
bomm.Parent = bom 
bomm.Scale = Vector3.new(1, 1, 1) 
bomm.MeshType = "Sphere" 
--[[ local bom2 = Instance.new("Part", bomb) 
bom2.formFactor = "Custom" 
bom2.BrickColor = BrickColor.new("Bright blue") 
bom2.Transparency = 0.5 
bom2.TopSurface = "Smooth" 
bom2.BottomSurface = "Smooth" 
bom2.Size = Vector3.new(0.2, 0.2, 0.2) 
bom2.Anchored = true 
bom2.CanCollide = true 
bom2.CFrame = base.CFrame + Vector3.new(0, 0.75, 0) 
bom2m = Instance.new("CylinderMesh") 
bom2m.Parent = bom 
bom2m.Scale = Vector3.new(1, 1, 1) ]] 
local p = Instance.new("FloorWire", bomb)
p.From = base
p.To = base6 
p.Visible = true
p.WireRadius = 0.1
p.Color = BrickColor.new("Really red")
p.CycleOffset = 0
p.Transparency = 0.5
local p2 = Instance.new("FloorWire", bomb)
p2.From = base4
p2.To = base5 
p2.Visible = true
p2.WireRadius = 0.1
p2.Color = BrickColor.new("Really blue")
p2.CycleOffset = 0
p2.Transparency = 0.5
local p3 = Instance.new("FloorWire", bomb)
p3.From = base2
p3.To = base3 
p3.Visible = true
p3.WireRadius = 0.1
p3.Color = BrickColor.new("Really black")
p3.CycleOffset = 0
p3.Transparency = 0.5
local p4 = Instance.new("FloorWire", bomb)
p4.From = base6
p4.To = base4 
p4.Visible = true
p4.WireRadius = 0.1
p4.Color = BrickColor.new("Bright green")
p4.CycleOffset = 0
p4.Transparency = 0.5
local p5 = Instance.new("FloorWire", bomb)
p5.From = base5
p5.To = base6 
p5.Visible = true
p5.WireRadius = 0.1
p5.Color = BrickColor.new("Bright yellow")
p5.CycleOffset = 0
p5.Transparency = 0.5
local p6 = Instance.new("FloorWire", bomb)
p6.From = base2
p6.To = base4 
p6.Visible = true
p6.WireRadius = 0.1
p6.Color = BrickColor.new("Bright indigo")
p6.CycleOffset = 0
p6.Transparency = 0.5
local p7 = Instance.new("FloorWire", bomb)
p7.From = base2
p7.To = base5 
p7.Visible = true
p7.WireRadius = 0.1
p7.Color = BrickColor.new("Bright indigo")
p7.CycleOffset = 0
p7.Transparency = 0.5
local p8 = Instance.new("FloorWire", bomb)
p8.From = base3
p8.To = base4 
p8.Visible = true
p8.WireRadius = 0.1
p8.Color = BrickColor.new("Bright indigo")
p8.CycleOffset = 0
p8.Transparency = 0.5 
local p9 = Instance.new("FloorWire", bomb)
p9.From = base3
p9.To = base5 
p9.Visible = true
p9.WireRadius = 0.1
p9.Color = BrickColor.new("Bright indigo")
p9.CycleOffset = 0
p9.Transparency = 0.5
local gui = Instance.new("GuiMain") 
gui.Parent = me.PlayerGui
gui.Name = "Defuse me" 
local guif = Instance.new("Frame", gui) 
guif.Position = UDim2.new(0.1, 0, 0.3, 0) 
guif.Size = UDim2.new(0.5, 0, 0.5, 0) 
local guit = Instance.new("TextLabel", guif) 
guit.Size = UDim2.new(0, 565, 0, 10) 
guit.Position = UDim2.new(0, 0, 0, -25) 
guit.Text = "Time = : " ..bombtime.. " " 
local guib = Instance.new("TextButton", guif) 
guib.Size = UDim2.new(0, 525, 0, 5) 
guib.Position = UDim2.new(0, 25, 0, 25) 
guib.Text = " " 
guib.BackgroundColor = BrickColor.new("Bright red") 
local guib2 = Instance.new("TextButton", guif) 
guib2.Size = UDim2.new(0, 525, 0, 5) 
guib2.Position = UDim2.new(0, 25, 0, 50) 
guib2.Text = " " 
guib2.BackgroundColor = BrickColor.new("Bright blue") 
local guib3 = Instance.new("TextButton", guif) 
guib3.Size = UDim2.new(0, 525, 0, 5) 
guib3.Position = UDim2.new(0, 25, 0, 75) 
guib3.Text = " " 
guib3.BackgroundColor = BrickColor.new("Bright yellow") 
while true do 
if bombtime > 0 then 
guit.Text = "Time = : " ..bombtime.. " " 
basem.Name = "Time = : " ..bombtime.. " "  
bombtime = bombtime - 1 
else if bombtime == 0 then 
base.Anchored = false 
base2.Anchored = false 
base3.Anchored = false 
base4.Anchored = false 
base5.Anchored = false 
base6.Anchored = false 
bom.Anchored = false 
ex = Instance.new("Explosion", bomb) 
ex.Position = base.Position 
ex.BlastRadius = 250 
ex.BlastPressure = 2500 
wait() 
pcall(function() bomb:remove() end) 
script:remove() 
end 
end 
wait(1) 
end 
