--FlowPad Gifted by TheRedAngel, Regular Script!

local name = "SergeantSmokey" 

local p = Instance.new("Part") 
p.Parent = workspace 
p.Locked = true 
p.BrickColor = BrickColor.new("White") 
p.BrickColor = BrickColor.new(255) 
p.Size = Vector3.new(8, 1.2, 8) 
p.Anchored = true 
local m = Instance.new("CylinderMesh") 
m.Scale = Vector3.new(1, 0.5, 1) 
m.Parent = p 
while true do 
p.CFrame = CFrame.new(game.Players:findFirstChild(name).Character.Torso.CFrame.x, game.Players:findFirstChild(name).Character.Torso.CFrame.y - 4, game.Players:findFirstChild(name).Character.Torso.CFrame.z) 
wait() 
end
