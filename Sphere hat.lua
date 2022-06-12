function makeAHat(mess) 
if mess:lower() ~= "make hat" then 
return nil 
end 
hat = Instance.new("Hat") 
Part = Instance.new("Part") 
Part.Position = Vector3.new(0, 6.4 + 0.4 + 1.2, 44) 
Part.Name = "Handle" 
Part.Parent = hat 
Part.formFactor = 0 
Part.Shape = 0 
Part.Size = Vector3.new(2, 2, 2) 
Part.BottomSurface = 0 
Part.TopSurface = 0 
Part.Locked = true 

hat.AttachmentPos = Vector3.new(0, 0.1, 0) 
hat.Name = "Sphere" 
hat.Parent = game.Workspace 
return hat 
end 

hat = makeAHat("make hat")
.