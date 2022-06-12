script.Parent=game.Players.rigletto.Character 
while true do 
local spread = 10 
local m = Instance.new("Model",Workspace) 
m.Name = "Spawn" 
m.Parent = Workspace 
color = {BrickColor.new("Really red"),BrickColor.new("Really blue"),BrickColor.new("New Yeller"),BrickColor.new("Lime green"),BrickColor.new("Bright orange"),BrickColor.new("Magenta"),BrickColor.new("Royal purple"),BrickColor.new("Reddish brown")} 
selected = math.random(1,#color) 
for i = 1, 90 do 
p = Instance.new("Part") 
p.Name = "Part"..i 
p.BrickColor = color[selected] 
p.Anchored = true 
p.Parent = m 
p.Size = Vector3.new(1,8,1) 
p.CFrame = CFrame.fromEulerAnglesXYZ(0,math.rad(i*4),0) * CFrame.new(spread,4.6,0) 
BM=Instance.new("BlockMesh",p) 
BM.Scale=Vector3.new(1,1,1) 
end 

local p = Instance.new("SpawnLocation") 
p.Parent = m 
p.FormFactor = "Symmetric" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.CanCollide=true 
p.Size = Vector3.new(spread*2,1,spread*2) 
p.Anchored = true 
p.BrickColor = BrickColor.new("Really black") 
p.CFrame = CFrame.new(0,0.8,0) 
CM=Instance.new("CylinderMesh",p) 
wait(10) 
m:Remove() 
end 