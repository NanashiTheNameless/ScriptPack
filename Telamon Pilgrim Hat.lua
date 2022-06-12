for i,me in pairs(game.Players:GetChildren()) do 
for i=1, 5 do 
h = Instance.new("Hat")
p = Instance.new("Part")
h.Name = "PilgrimHat"..i
p.Parent = h
p.Position = me.Character.Head.Position 
p.Name = "Handle" 
p.formFactor = 0
p.Size = Vector3.new(0,-0.25,0) 
p.BottomSurface = 0 
p.TopSurface = 0 
p.Locked = true 
m = Instance.new("SpecialMesh")
m.Parent= p
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1223118"
m.TextureId = "http://www.roblox.com/asset/?id=18336701"
m.Scale = Vector3.new(1.7,1.7,1.7)
h.Parent = me.Character 
h.AttachmentPos = Vector3.new(0, -0.25, -0.05)
h.AttachmentUp = Vector3.new(0, 0.981, -0.196)
h.AttachmentRight = Vector3.new(1, 0, 0)
h.AttachmentForward = Vector3.new(0, -0.196, -0.681)
end 
end 