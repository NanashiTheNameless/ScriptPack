size = 240

CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Wood = {"Brown", "Reddish brown"}
Leaves = {"Earth green", "Bright green", "Dark green", "Camo"}
LeafMeshes = {{"http://www.roblox.com/asset/?id=16659363", V3(2.05,-1.6,2.05)},
{"http://www.roblox.com/asset/?id=1091940", V3(1.2,0.6,1.2)}}

Rock = {"Medium grey", "Dark grey"}

Add = {
	Mesh = function(P, Id, Id2, scale)
		local m = Instance.new("SpecialMesh", P)
		m.Scale = scale
		m.MeshId = Id
		m.TextureId = Id2
	end
}

function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = V3(X,Y,Z)
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

Mod = Instance.new("Model",workspace)
Mod.Name = "Jungle"

Models = {
	function(cf, siz)
		local m = Instance.new("Model",Mod)
		local cen = cf * CN(0, 0, -38*siz)
		local wo = Wood[MRA(1,#Wood)]
		local le = Leaves[MRA(1,#Leaves)]
		local last = nil
		for i = 0, 1, 0.2 do
			local p = Part(m, true, true, 0, 0, wo, 3*siz, 5.7*siz, 3*siz)
			Instance.new("SpecialMesh",p)
			p.CFrame = cen * CA(MR(-40*i), 0, 0) * CN(0, 0, 38*siz)
			if wo == Wood[1] then wo = Wood[2] else wo = Wood[1] end
			last = p
		end
		local messa = LeafMeshes[MRA(1,#LeafMeshes)]
		local a = -3
		if messa == LeafMeshes[1] then
			a = 0.4
		end
		last.BrickColor = BrickColor.new(le)
		local p = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)
		local m = Add.Mesh(p, messa[1], "", V3((messa[2].X*10)*siz,(messa[2].Y*10)*siz,(messa[2].Z*10)*siz))
		p.CFrame = last.CFrame * CN(0, a*siz, 0) * CA(MP+MR(20), 0, 0)
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)
		local ro1, ro2 = Rock[MRA(1,#Rock)], Rock[MRA(1,#Rock)]
		local p = Part(m, true, true, 0, 0, ro1, 7.5*siz, 7.5*siz, 7.5*siz)
		p.CFrame = cf * CN(0, 1.8*siz, 4*siz) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))
		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1290033", "", V3(5*siz, 5*siz, 5*siz))

		local p2 = Part(m, true, true, 0, 0, ro2, 5.5*siz, 5.5*siz, 5.5*siz)
		p2.CFrame = cf * CN(7*siz, 1.5*siz, -6*siz) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))
		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=1290033", "", V3(3.8*siz, 3.8*siz, 3.8*siz))
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)
		local le = Leaves[MRA(1,#Leaves)]

		local p = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)
		p.CFrame = cf * CN(2*siz, 1.6*siz, -4*siz) * CA(0, 0, 0)
		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1095708", "", V3(12*siz, 11*siz, 10*siz))

		local p2 = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)
		p2.CFrame = cf * CN(-4*siz, 1.1*siz, -1*siz) * CA(0, MR(-34), 0)
		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=1095708", "", V3(10*siz, 7.5*siz, 8*siz))
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)

		local p = Part(m, true, false, 0, 0, "Bright green", 0.2, 0.2, 0.2)
		p.CFrame = cf * CN(2*siz, 1.1*siz, -4*siz) * CA(0, 0, 0)
		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=16659363", "http://www.roblox.com/asset/?id=16659355", V3(10*siz, 14*siz, 10*siz))

		local p2 = Part(m, true, false, 0, 0, "Bright green", 0.2, 0.2, 0.2)
		p2.CFrame = cf * CN(-4*siz, 0.7*siz, 1*siz) * CA(MR(MRA(-15,15)), MR(MRA(-180,180)), MR(MRA(-15,15)))
		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=16659363", "http://www.roblox.com/asset/?id=16659355", V3(7*siz, 11*siz, 6*siz))
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)

		local p = Part(m, true, true, 0, 0, "White", 1.2*siz, 6*siz, 1.2*siz)
		p.CFrame = cf * CN((MRA(-4*100,4*100)/100)*siz, 3.2*siz, (MRA(-4*100,4*100)/100)*siz) * CA(0, MR(MRA(-180,180)), 0)
		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1090398", "http://www.roblox.com/asset/?id=1090399", V3(3.5*siz, 5*siz, 3.5*siz))
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)
		local col = Wood[MRA(1,#Wood)]
		local p = Part(m, true, true, 0, 0, col, 2.8*siz, 22*siz, 2.8*siz)
		Instance.new("SpecialMesh",p)
		p.CFrame = cf * CN((MRA(-4*100,4*100)/100)*siz, 11*siz, (MRA(-4*100,4*100)/100)*siz) * CA(0, MR(MRA(-180,180)), 0)
		local leave = Leaves[MRA(1, #Leaves)]
		local mes = LeafMeshes[MRA(1, #LeafMeshes)]
		local a = 3
		local ca = CA(MR(MRA(-30, 30)), MR(MRA(-180, 180)), MR(MRA(-30, 30)))
		if mes == LeafMeshes[1] then
			a = -0.5
			ca = ca * CA(MP, 0, 0)
		end
		for i = 1, MRA(1,5) do
			local cf2 = p.CFrame * CA(0, MR(MRA(-180,180)), 0) * CN(0, (MRA(2*100, 14*100)/100)*siz, -1.4*siz)
			local center = cf2 * CN(0, 0, -8*siz) * CA(0, 0, 0)
			local first = nil
			for x = 0, 45, 15 do
				local p2 = Part(m, true, true, 0, 0, col, 2.5*siz, 4*siz, 2.5*siz)
				Instance.new("SpecialMesh", p2)
				p2.CFrame = center * CN(0, 0, 4*siz) * CA(MR(x), 0, 0) * CN(0, 0, 10*siz) * CA(0, 0, 0)
				if first == nil then first = p2 end
			end
			local p3 = Part(m, true, false, 0, 0, leave, 0.2, 0.2, 0.2)
			Add.Mesh(p3, mes[1], "", (mes[2]*7)*siz)
			local ca2 = CA(MR(MRA(-30, 30)), MR(MRA(-180, 180)), MR(MRA(-30, 30)))
			if mes == LeafMeshes[1] then
				ca2 = ca2 * CA(MP, 0, 0)
			end
			p3.CFrame = first.CFrame * CN(0, a*siz, 0) * ca2
		end
		local p3 = Part(m, true, false, 0, 0, leave, 0.2, 0.2, 0.2)
		Add.Mesh(p3, mes[1], "", (mes[2]*9)*siz)
		local cn = p.CFrame * CN(0, 11*siz, 0)
		p3.CFrame = cn * CN(0, a*siz, 0) * ca
	end,
}

pos = CN(0, 0, 0)


local base = Part(Mod, true, true, 0, 0, Leaves[MRA(1,#Leaves)], size, 1, size)
base.CFrame = pos * CN(0, 1, 0)
base.Material = "Grass"

for x = -size/2, size/2, 20 do
	for z = -size/2, size/2, 20 do
		Models[MRA(1, #Models)](pos * CN(x+(MRA(-4*1000, 4*1000)/1000), 1.2, z+(MRA(-4*1000, 4*1000)/1000)) * CA(0, MR(MRA(-180,180)), 0), MRA(1.1*100, 2.4*100)/100)
	end
	wait(0.2)
end
