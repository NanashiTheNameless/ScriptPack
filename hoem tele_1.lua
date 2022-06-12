vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

use = no

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Home Tele" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil and use == no then 
use = yes 
plyr.Character.Humanoid.WalkSpeed = 0 
plyr.Character.Humanoid.Sit = true 
plyr.Character.Torso.Anchored = true 
plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame - Vector3.new(0, 2, 0)
wait(1) 
part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(1, 1, 1) 
part.BrickColor = BrickColor.new("Bright violate") 
part.Transparency = 0.2
part.Anchored = true 
part.CFrame = plyr.Character.Torso.CFrame 
mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1, 1, 1)
mesh.Parent = part 
for i = 1, 50 do 
mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
end 
part.Parent = nil 
plyr.Character.Torso.CFrame = CFrame.new(0, 3, 0) 
plyr.Character.Humanoid.WalkSpeed = 16
plyr.Character.Humanoid.Jump = true 
plyr.Character.Torso.Anchored = false 
use = no
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 