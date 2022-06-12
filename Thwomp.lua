admin = "polo1716"
m = Instance.new("Hint")
m.Parent = game.workspace
m.Text = "Thwomp script loaded V1337"
a = Instance.new("Model")
b = Instance.new("Humanoid")
c = Instance.new("Part")
w = Instance.new("Decal")
w.Texture = "http://www.roblox.com/asset/?id=2285349"
w.Parent = c
a.Parent = game.workspace
b.Parent = a
b.MaxHealth = 0
c.Parent = a
c.CanCollide = true
c.BottomSurface = "Smooth"
c.TopSurface = "Smooth"
c.Anchored = true
c.Size = Vector3.new(20,20,20)
a.Name = "Thwomp"
c.Name = "Head"
a:BreakJoints()
game:GetService("Players")[admin].Chatted:connect(function(m)
if string.sub(m,1,7) == "thwomp/" then
pcall(function() local char = game:GetService("Players")[string.sub(m,8)]
a:MoveTo(char.Character.Head.Position + Vector3.new(0,30,0))
c.Anchored = false
end)
end
end)
c.Touched:connect(function(part)
c.Anchored = true
part:BreakJoints()
end)