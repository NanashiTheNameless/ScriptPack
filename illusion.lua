me = game.Players.xSoulStealerx
gs = 25

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

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

function grid(xp,zp,bp,mod)
	local p = Instance.new("Part")
	prop(p,mod,true,0,0,gs,0.1,gs,"Really black",true,"Custom")
	p.CFrame = CFrame.new(bp) * CFrame.new(xp,workspace.Base.Size.Y/2,zp)
	Instance.new("BlockMesh",p).Scale = Vector3.new(1,0.08,1)
	for i=0, math.pi/2, math.pi/2 do
		local o = Instance.new("Part")
		prop(o,mod,true,0,0,gs/8,0.1,gs,"Dark grey",true,"Custom")
		o.CFrame = p.CFrame * CFrame.Angles(0,i,0)
		Instance.new("BlockMesh",o).Scale = Vector3.new(1,0.09,1)
	end
	local c = Instance.new("Part")
	prop(c,mod,true,0,0,gs/3.5,0.1,gs/3.5,"Institutional white",true,"Custom")
	c.CFrame = p.CFrame
	Instance.new("CylinderMesh",c).Scale = Vector3.new(1,0.1,1)
end

me.Chatted:connect(function(msg)
	if string.sub(msg,1,4) == "grid" then
		local model = Instance.new("Model",workspace)
		model.Name = "lol"
		local basepos = workspace.Base.Position
		local x = -workspace.Base.Size.Z/4
		local z = -workspace.Base.Size.Z/4
		repeat
			grid(x,z,basepos,model)
			x = x + gs
			if x > workspace.Base.Size.X/4 then
				x = -workspace.Base.Size.X/4
				z = z + gs
			end
			wait()
		until z > workspace.Base.Size.Z/4
	elseif string.sub(msg,1,3) == "gs/" then
		gs = string.sub(msg,4)
	elseif string.sub(msg,1,8) == "remogrid" then
		for _,v in pairs(workspace:children()) do
			if v.Name == "lol" then
				v:remove()
			end
		end
	end
end)



