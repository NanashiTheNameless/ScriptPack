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


function meteor(pos,size)
	local p = CFrame.new(pos, Vector3.new(math.random(-400,400),math.random(900,1600),math.random(-400,400))) * CFrame.new(0,0,-math.random(800,1300))
	local mod = Instance.new("Model",workspace)
	mod.Name = "xS meteor"
	local bewm = Instance.new("Part")
	prop(bewm,mod,false,0,0,size,size,size,"Dark grey",false,"Custom")
	bewm.CFrame = p
	for i=1,math.random(7,18) do
		local o = bewm:clone()
		o.Parent = mod
		local w = Instance.new("Weld",bewm)
		w.Part0 = w.Parent
		w.Part1 = o
		w.C1 = CFrame.new(math.random(-150,150)/10,math.random(-150,150)/10,math.random(-150,150)/10) * CFrame.Angles(math.random(-32,32)/10,math.random(-32,32)/10,math.random(-32,32)/10)
	end
	bewm.CFrame = p
	local bv = Instance.new("BodyVelocity",bewm)
	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	bv.P = 6500
	bv.velocity = p.lookVector * -280
	repeat wait() until bewm.Position.Y < pos.Y+(size/1.8)
	bv:remove()
	wait()
	bewm.Anchored = true
end

meteor(Vector3.new(10,10,10), 40)
