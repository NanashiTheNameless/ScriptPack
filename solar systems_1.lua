game.Lighting.TimeOfDay = 0
game.Lighting.Brightness = 0.3
game.Lighting.ColorShift_Bottom = Color3.new(0.1,0.1,0.8)
game.Lighting.ColorShift_Top = Color3.new(0.8,1,0.8)
game.Lighting.Ambient = Color3.new(0.4,0.4,0.4)

function prop(part, parent, shape, collide, tran, ref, x, y, z, color, anchor)
part.Parent = parent
part.Shape = shape
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

sc = {"Light blue", "Brick yellow", "New Yeller", "Institutional white", "Bright yellow", "White", "Paster yellow", "Neon orange"}
pc = {"Bright green", "Brown", "Dark green", "CGA brown", "Black", "Really black", "Sand green", "Camo", "Br. yellowish green", "Nougat", "Earth green"}

for i=1, math.random(20,50) do
	local siz = math.random(300,500)
	local star = Instance.new("Part")
	prop(star,workspace,"Ball",true,0,0,1,1,1,sc[math.random(1,#sc)],true,"Symmetric")
	star.CFrame = CFrame.new(math.random(-20000,20000),math.random(1000,25000),math.random(-20000,20000))
	local sp = Instance.new("SpecialMesh",star)
	sp.MeshType = "Sphere"
	sp.Scale = Vector3.new(siz,siz,siz)
	for o=1, math.random(1,9) do
		wait()
		local si = math.random(60,160)
		local planet = Instance.new("Part")
		prop(planet,workspace,"Ball",false,0,0,1,1,1,pc[math.random(1,#pc)],true,"Symmetric")
		planet.CFrame = star.CFrame * CFrame.Angles(0,math.random(-320,320)/100,0) * CFrame.new(math.random(-20,20),math.random(-100,100),math.random(siz/2,siz*2))
		local sp = Instance.new("SpecialMesh",planet)
		sp.MeshType = "Sphere"
		sp.Scale = Vector3.new(si,si,si)
	end
end
--lego