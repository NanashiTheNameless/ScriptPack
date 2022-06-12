center = workspace.Base.Position + Vector3.new(70,0,0)

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
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

pool = Instance.new("Model")
pool.Name = "Pool"

for i=0,math.pi*2,math.pi/2 do
	local wall = Instance.new("Part")
	prop(wall,pool,true,0,0,67,9,7,"Medium grey",true,"Custom")
	wall.CFrame = CFrame.new(center) * CFrame.Angles(0,i,0) * CFrame.new(0,wall.Size.Y/2,-30)
end

touch = nil
for i=0,8,0.3 do
	local water = Instance.new("Part")
	prop(water,pool,false,0.8,0.02,60,0.3,60,"Bright blue",true,"Custom")
	water.CFrame = CFrame.new(center) * CFrame.new(0,i,0)
	touch = water
end

touch.Touched:connect(function(hit)
	local lolpos = Vector3.new(hit.Position.X,touch.Position.Y,hit.Position.Z)
	for i=1, math.random(7,20) do
		local siz = math.random(20,70)/100
		local wat = Instance.new("Part")
		prop(wat,pool,false,0.4,0.05,siz,siz,siz,"Bright blue",false,"Custom")
		wat.CFrame = CFrame.new(lolpos) * CFrame.new(math.random(-25,25)/10,0,math.random(-25,25)/10)
		wat.Velocity = Vector3.new(math.random(-200,200)/10,math.random(30,230)/10,math.random(-200,200)/10)
	end
end)
pool.Parent = workspace