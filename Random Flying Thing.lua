Owners = script.Name
Player = game.Players:findFirstChild(Owners) 
if Player.Character:findFirstChild(script.Name.."'s Defender") then
Player.Character[script.Name.."'s Defender"]:remove()
end
local above = 5 
local come = true 
local M = Instance.new("Model") 
local H = Instance.new("Humanoid") 
M.Parent = Player.Character 
H.Parent = M 
H.MaxHealth = 0 
H.Health = 0 
M.Name = script.Name.."'s Defender" 
local p = Instance.new("Part") 
local bodyposxyz = Instance.new("BodyPosition") 
local bodygyroxyz = Instance.new("BodyGyro") 
bodyposxyz.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
p.BrickColor = BrickColor.new("White") 
f=Instance.new("SpecialMesh")
f.Parent=p 
f.MeshId = "http://www.roblox.com/asset/?id=2806162" 
f.MeshType = "FileMesh"
f.Scale = Vector3.new(0.5,0.5,0.5)
f.TextureId = "http://www.roblox.com/asset/?id=34795697" 
p.Name = "Head" 
p.Parent = M 
p.Shape = "Ball" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(0.5, 0.5, 0.5) 
p.TopSurface = 0 
p.Locked = true
bodyposxyz.Parent = p 
 
while true do wait() 
pcall(function() 

M.Parent = Player.Character 

if (come == true) then 
bodyposxyz.position = (Player.Character.Torso.CFrame * CFrame.new(5, above, -2.5)).p + Vector3.new(0, 0, 0) 
end
end)

if Player.Character:findFirstChild(script.Name.."'s Defender") then
if not Player.Character[script.Name.."'s Defender"]:findFirstChild("Head") then

local M = Player.Character:findFirstChild(script.Name.."'s Defender")
local H =  Player.Character[script.Name.."'s Defender"]:findFirstChild("Humanoid")
H.MaxHealth = 0 
H.Health = 0 
local p = Instance.new("Part") 
local bodyposxyz = Instance.new("BodyPosition") 
local bodygyroxyz = Instance.new("BodyGyro") 
bodyposxyz.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
p.BrickColor = BrickColor.new("White") 
f=Instance.new("SpecialMesh")
f.Parent=p 
f.MeshId = "http://www.roblox.com/asset/?id=2806162"
f.MeshType = "FileMesh"
f.Scale = Vector3.new(0.5,0.5,0.5)
f.TextureId = "http://www.roblox.com/asset/?id=34795697" 
p.Name = "Head" 
p.Parent = M 
p.Shape = "Ball" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(0.5, 0.5, 0.5) 
p.TopSurface = 0 
p.Locked = true
bodyposxyz.Parent = p 
end
end
end

Game.JointsService.DescendantAdded:connect()
Workspace.DescendantAdded:connect()
