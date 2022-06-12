ParentName = "yfc" 
ChildName = "The Troller" 
ChildColor = "Pastel yellow" 
ChildSize = 10, 10, 10 
ChildTransparency = 0.5
ChildReflectance = 0.5 
ChildShape = "Ball" 
 
 
 
--[[

--]]




















cert = Instance.new("Message") 
cert.Text = "Anaminus has given a Troller to "..ParentName..", the Troller's name is "..ChildName..". Welcome to the World, "..ChildName.."."
cert.Parent = game.Workspace 
wait(4) 
cert:Remove() 
a = game.Players:FindFirstChild(ParentName) 
b = Instance.new("Model") 
b.Name = ChildName 
b.Parent = game.Workspace 
c = Instance.new("Humanoid") 
c.Parent = b 
c.Health = 100 
d = Instance.new("Part") 
d.Name = "Head" 
d.Parent = b 
d.Size = Vector3.new(ChildSize) 
d.BrickColor = BrickColor.new(ChildColor) 
d.Anchored = true 
d.Locked = true 
d.TopSurface = "Smooth" 
d.Transparency = ChildTransparency 
d.BottomSurface = "Smooth" 
d.Position = a.Character.Torso.Position 
d.Shape = ChildShape 
d.Reflectance = ChildReflectance 
function Chat(Text) 
if Text == "Remove Child" then 
b:Remove() 
end 
if (string.sub(Text,1,8) == "Ref/") then 
d.Reflectance = string.sub(Text,9) 
end 
if (string.sub(Text,1,8) == "Tra/") then 
d.Transparency = string.sub(Text,9) 
end 
if (string.sub(Text,1,8) == "Col/") then 
d.BrickColor = BrickColor.new(string.sub(Text,9)) 
end 
if (string.sub(Text,1,8) == "Say/") then 
b.Name = ChildName..": "..string.sub(Text,9) 
wait(2) 
b.Name = ChildName 
end 
end 
a.Chatted:connect(Chat) 
while true do 
wait() 
d.Position = a.Character.Torso.Position 
c.Torso = d 
c.LeftLeg = d 
c.RightLeg = d 
c.Health = c.MaxHealth 
c.WalkSpeed = 16
end 
