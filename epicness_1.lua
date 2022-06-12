--[[epic blox]]--
name="masterepico"
nm=game.Workspace:FindFirstChild(name)
--[[parts]]--
z=Instance.new("Part",nm)
x=Instance.new("Part",nm)
--[[part settings]]--
z.Transparency=0.3
z.Reflectance=0
z.Size=Vector3.new(1.5,1.5,1.5)
z.Anchored=false
z.BrickColor=BrickColor.Random()
x.Transparency=0.3
x.Reflectance=0
x.Size=Vector3.new(1.5,1.5,1.5)
x.Anchored=false
x.BrickColor=BrickColor.Random()
--[[Random bits]]--
zf=Instance.new("Fire",z)
zf.Color1=BrickColor.Random()
xf=Instance.new("Fire",x)
xf.Color1=BrickColor.Random()
xf.Color2=BrickColor.Random()
zb=Instance.new("SelectionBox",z)
zb.Adornee=z
zb.Transparency=0.3
zb.Color=BrickColor.Random()
xb=Instance.new("SelectionBox",x)
xb.Adornee=x
xb.Transparency=0.3
xb.Color=BrickColor.Random()