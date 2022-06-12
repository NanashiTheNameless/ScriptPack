floors = 5

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

main = Vector3.new(0,0,-50)
y = workspace.Base.Position.Y + (workspace.Base.Size.Y/2)

local ele = Instance.new("Model",workspace)
ele.Name = "xSElevator"

function floor()
	local f = Instance.new("Part")
	prop(f,ele,true,0,0,70,1,70,"Dark grey",true,"Custom")
	f.CFrame = CFrame.new(main) * CFrame.new(0,y,0)
	for i=-90,90,180 do
		local w = Instance.new("Part")
		prop(w,ele,true,0,0,70,30,2,"Dark grey",true,"Custom")
		w.CFrame = CFrame.new(f.Position) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,w.Size.Y/2,-35)
	end
	local r = Instance.new("Part")
	prop(r,ele,true,0,0,69,5,69,"Dark grey",true,"Custom")
	r.CFrame = CFrame.new(main) * CFrame.new(0,y+28,0)
	for i=-20,20,40 do
		local w2 = Instance.new("Part")
		prop(w2,ele,true,0,0,28,30,2,"Dark grey",true,"Custom")
		w2.CFrame = CFrame.new(main) * CFrame.new(i,y+15,34)
	end
	local w3 = Instance.new("Part")
	prop(w3,ele,true,0,0,12,18,2,"Dark grey",true,"Custom")
	w3.CFrame = CFrame.new(main) * CFrame.new(0,y+20.5,34)
end

for i=1,floors do
	floor()
	y = y + 30
end
