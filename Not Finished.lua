plr = game.Players.LocalPlayer

b = Instance.new("Part",Workspace)
b.Name = "Brick"
b.Anchored = false
b.TopSurface,hdl.BottomSurface = 0,0
b.formFactor = "Custom"
b.Parent = Workspace
b.Size = Vector3.new(0,0,0)
b.CanCollide = false
b.Color = Color3.new(0,0.3,0)
Instance.new("CylinderMesh",b)