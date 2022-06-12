Player = game.Players.LocalPlayer

for i,v in pairs (Player.Character:GetChildren()) do
        if v:IsA("Accessory") then
                v:Destroy()
        end
end
		
o1 = Instance.new("Part")
o1.Name = "thing"
o1.Anchored = true
o1.FormFactor = Enum.FormFactor.Custom
o1.Size = Vector3.new(2, 0.4, 1)
o1.BottomSurface = Enum.SurfaceType.Smooth
o1.TopSurface = Enum.SurfaceType.Smooth
o2 = Instance.new("SpecialMesh")
o2.Parent = o1
o2.MeshId = "http://www.roblox.com/asset/?id=12305010"
o2.Scale = Vector3.new(1,1,1)
o2.Offset = Vector3.new(0,-.55,0)
o2.TextureId = "http://www.roblox.com/asset/?id=21729264"
o2.MeshType = Enum.MeshType.FileMesh
		h = Instance.new("Hat")
		p = Instance.new("Part")
		h.Name = "SWAT Helm"
		p.Parent = h
		p.Position = game.Players.LocalPlayer.Character:findFirstChild("Head").Position
		p.Name = "Handle" 
		p.formFactor = 0
		p.Size = Vector3.new(0,-0.25,0) 
		p.BottomSurface = 0 
		p.TopSurface = 0 
		p.Locked = true 
		o1.Mesh:clone().Parent = p
		h.Parent = Player.Character
		h.AttachmentPos = Vector3.new(0,-.15,-0)	
Player.Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=17788953"
Player.Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=17788960"
Player.Character.Humanoid.MaxHealth = 300
Player.Character.Humanoid.Health = 300