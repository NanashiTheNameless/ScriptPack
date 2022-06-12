
game.Workspace:BreakJoints() 
wait(1.5) 
local bricks = game.Workspace:getChildren()
for i=1,#bricks do
if (bricks[i].Name ~= "RotateP") then 
bricks[i]:remove()
end
end

m3 = Instance.new("Model") 
m3.Parent = Workspace 
m3.Name = "Floor" 

for i=1, 11 do 
local p = Instance.new("SpawnLocation") 
p.Parent = m3
p.FormFactor = "Symmetric" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(90,1,2) 
p.Anchored = true 
p.BrickColor = BrickColor.new() 
p.CFrame = CFrame.new(40,,0)*CFrame.fromEulerAnglesXYZ(0,i*2,0)--+mp 
print(p.Position.Y)
end  
for i=1, 44 do 
local p = Instance.new("SpawnLocation") 
p.Parent = m3 
p.FormFactor = "Symmetric" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(90,1,4) 
p.Anchored = true 
p.BrickColor = BrickColor.new(1) 
p.CFrame = CFrame.new(40,0.8,0)*CFrame.fromEulerAnglesXYZ(0,i*1.5,0)--+mp 
print("("..p.Position.X..","..p.Position.Y..","..p.Position.Z..")")
end  
