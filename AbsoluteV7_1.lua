Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)
        m.Name="CryogenArm"


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

MN=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
MNweld=weld(m,Character["Right Arm"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0323486328, -0.0509860516, -0.00120401382, -0.00500982394, 0.00520668458, 0.999973893, -0.00739898486, 0.999958873, -0.00524367485, -0.999960065, -0.00742506143, -0.0049710935))
TR7=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","TR7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR7weld=weld(m,MN,TR7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",TR7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
MD9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD9",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD9weld=weld(m,MN,MD9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.741846681, 0.199262142, 1.00000405, -6.92205504e-06, 0.000154254027, 4.65649646e-05, 0.965939224, -0.25876984, -0.000147186685, 0.258768767, 0.965943158))
mesh("SpecialMesh",MD9,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD1",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD1weld=weld(m,MN,MD1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402763367, -0.974855185, 0.682875633, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD10",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD10weld=weld(m,MN,MD10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD11",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD11weld=weld(m,MN,MD11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493839264, -0.274354219, 4.24385071e-05, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD12",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD12weld=weld(m,MN,MD12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.493812561, -0.274300575, -0.000376224518, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD13",Vector3.new(1.09732866, 0.822996795, 1.09732854))
MD13weld=weld(m,MN,MD13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.68582201, 0.000464439392, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD14",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD14weld=weld(m,MN,MD14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.603547096, 0.000416755676, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD15",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD15weld=weld(m,MN,MD15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-05, 0.137180567, -4.529953e-05, -1.0000037, -0.000862163957, 0.000179466791, -0.000862103421, 0.999999523, 0.000520790287, -0.000179945491, 0.000520619913, -1.00000381))
mesh("SpecialMesh",MD15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD16",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD16weld=weld(m,MN,MD16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-05, 0.932742357, 0.000658988953, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD19=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD19",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD19weld=weld(m,MN,MD19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD19,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD18=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD18",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD18weld=weld(m,MN,MD18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD18,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD2",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD2weld=weld(m,MN,MD2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392555237, -0.573539257, 1.09872949, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD3",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD3weld=weld(m,MN,MD3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397964478, -0.817667723, 0.487944126, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD4",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD4weld=weld(m,MN,MD4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.422103882, -0.82026124, 0.507567406, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD5",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD5weld=weld(m,MN,MD5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427509308, -0.557831764, 1.11046171, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD6",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD6weld=weld(m,MN,MD6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417263031, -0.972257376, 0.702233315, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD7weld=weld(m,MN,MD7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD8",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD8weld=weld(m,MN,MD8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD21=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","MD21",Vector3.new(0.266768694, 0.54866457, 0.548664272))
MD21weld=weld(m,MN,MD21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548921585, 0.301375628, 0.000118255615, -0.000262488145, -9.39509191e-05, -1.00000393, -0.000154611655, 1, -9.38984886e-05, 1.00000393, 0.000154557638, -0.000262471847))
mesh("SpecialMesh",MD21,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.900000036, 0.900000036))
--opoop you found me
AM2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","AM2",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM2weld=weld(m,TG2,AM2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.64780426e-05, 2.43186951e-05, -0.000192319567, -1, -0.000198441558, 0.99999994, -0.000192359177, 0.000197284782, -0.000197345667, -0.000198401511, 1))
mesh("SpecialMesh",AM2,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
--pls stop
AM3=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","AM3",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM3weld=weld(m,TG3,AM3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.67164612e-05, 1.04904175e-05, -0.000191303392, -1.00000393, -0.000253161415, 1.00000441, -0.000187523692, 0.000130466695, -0.000134325906, -0.000248713419, 1.00000381))
mesh("SpecialMesh",AM3,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))


--[[MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
MNweld=weld(m,Character["Right Arm"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0323486328, -0.0509860516, -0.00120401382, -0.00500982394, 0.00520668458, 0.999973893, -0.00739898486, 0.999958873, -0.00524367485, -0.999960065, -0.00742506143, -0.0049710935))
TR7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TR7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR7weld=weld(m,MN,TR7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",TR7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
MD9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD9",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD9weld=weld(m,MN,MD9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.741846681, 0.199262142, 1.00000405, -6.92205504e-06, 0.000154254027, 4.65649646e-05, 0.965939224, -0.25876984, -0.000147186685, 0.258768767, 0.965943158))
mesh("SpecialMesh",MD9,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD1",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD1weld=weld(m,MN,MD1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402763367, -0.974855185, 0.682875633, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD10",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD10weld=weld(m,MN,MD10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD11",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD11weld=weld(m,MN,MD11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493839264, -0.274354219, 4.24385071e-05, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD12",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD12weld=weld(m,MN,MD12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.493812561, -0.274300575, -0.000376224518, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD13",Vector3.new(1.09732866, 0.822996795, 1.09732854))
MD13weld=weld(m,MN,MD13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.68582201, 0.000464439392, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD14",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD14weld=weld(m,MN,MD14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.603547096, 0.000416755676, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD15",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD15weld=weld(m,MN,MD15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-05, 0.137180567, -4.529953e-05, -1.0000037, -0.000862163957, 0.000179466791, -0.000862103421, 0.999999523, 0.000520790287, -0.000179945491, 0.000520619913, -1.00000381))
mesh("SpecialMesh",MD15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD16",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD16weld=weld(m,MN,MD16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-05, 0.932742357, 0.000658988953, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD19=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD19",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD19weld=weld(m,MN,MD19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD19,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD18=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD18",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD18weld=weld(m,MN,MD18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD18,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD2",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD2weld=weld(m,MN,MD2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392555237, -0.573539257, 1.09872949, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD3",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD3weld=weld(m,MN,MD3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397964478, -0.817667723, 0.487944126, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD4",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD4weld=weld(m,MN,MD4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.422103882, -0.82026124, 0.507567406, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD5",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD5weld=weld(m,MN,MD5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427509308, -0.557831764, 1.11046171, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD6",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD6weld=weld(m,MN,MD6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417263031, -0.972257376, 0.702233315, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","MD7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD7weld=weld(m,MN,MD7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD8",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD8weld=weld(m,MN,MD8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998)) ]]
-----------------------
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local stanceToggle = "Normal"
local laststanceToggle = "Normal"
local l = game:GetService("Lighting")
local debris=game:service"Debris"
local rs = game:GetService("RunService").RenderStepped
math.randomseed(os.time())
hum.MaxHealth = 9001
wait(1)
hum.Health = 9001
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://345371561"
char.Pants.PantsTemplate = "rbxassetid://345372241"
end)
----------------------------------------------------
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Slapping = false;
Slapped = false;
ks = false;
Shewt = false;
}
local Touche = {char.Name, }
----------------------------------------------------
function Tween(a,b,c)
return a+(b-a)*c
end
----------------------------------------------------
function nwPrt(prnt,siz,cf,col)
local prt=Instance.new("Part")
prt.Parent=prnt
prt.FormFactor=3
prt.Name="Part"
prt.Size=siz
prt.CanCollide=false
prt.Anchored=true
prt.Locked=true
prt.TopSurface=10
prt.BottomSurface=10
prt.FrontSurface=10
prt.BackSurface=10
prt.LeftSurface=10
prt.RightSurface=10
prt:BreakJoints()
prt.CFrame=cf or CFrame.new(30,10,30)
prt.Material="Neon"
prt.BrickColor=BrickColor.new(col)
m=Instance.new("SpecialMesh",prt)
m.MeshType=6
return prt
end
----------------------------------------------------
function nwSnd(prnt,pch,vol,id)
        local s=Instance.new("Sound",prnt)
        s.Pitch=pch
        s.Volume=vol
        s.SoundId="rbxassetid://"..id
        s.PlayOnRemove=true
        return s
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function newRay(start,face,range,wat)
        local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
        hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
        return rey,hit,pos
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
mod=Instance.new('Model',char)

function Burst()
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)
    part2=part:clone()
    part2.Parent=mod
    part2.BrickColor=BrickColor.new('Bright red')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(5,2.5,5)
    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,1,1)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function Slam()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2.8,-1.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-2.4,-1.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Royal purple')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",char)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(.1)
    x1 = Instance.new("Sound",char)
    x1.SoundId = "http://www.roblox.com/asset/?id=206082327"
    x1.Pitch = ptez[math.random(1,#ptez)]
    x1.Volume = 1
    wait(.1)
	x:Play()
    x1:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(30,45))
        end
    end
    coroutine.resume(coroutine.create(function() 
        for i=0,0.62,0.13 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
        x:Destroy()
    end))
end
----------------------------------------------------
GroundWave = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Royal purple", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 14, 1 do
		wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/14
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------
Magik = function()
	Spawn(function()
		if stanceToggle == "Normal" or stanceToggle == "Melee" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik = Instance.new("Part", larm)
		local Colors = {"Royal purple", "Really black"}
		magik.Anchored = true
		magik.Locked = true
		magik.FormFactor = "Custom"
		magik.Size = Vector3.new(1.2, 1.2, 1.2)
		magik.TopSurface = "Smooth"
		magik.BottomSurface = "Smooth"
		magik.Transparency = 0
		magik.CanCollide = false
		magik.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = larm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik.Transparency = newTrans
			magik.Size = Vector3.new(ns,ns,ns)
			magik.CFrame = cf
			rs:wait()
	    end
		magik:Destroy()
		elseif stanceToggle ~= "Normal" or stanceToggle ~= "Melee" then
		wait()
                end
    end)
end
----------------------------------------------------
Magik2 = function()
	Spawn(function()
		if stanceToggle == "Melee" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik2 = Instance.new("Part", rarm)
		local Colors = {"Royal purple", "Really black"}
		magik2.Anchored = true
		magik2.Locked = true
		magik2.FormFactor = "Custom"
		magik2.Size = Vector3.new(1.2, 1.2, 1.2)
		magik2.TopSurface = "Smooth"
		magik2.BottomSurface = "Smooth"
		magik2.Transparency = 0
		magik2.CanCollide = false
		magik2.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = rarm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik2.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik2.Transparency = newTrans
			magik2.Size = Vector3.new(ns,ns,ns)
			magik2.CFrame = cf
			rs:wait()
	    end
		magik2:Destroy()
		elseif stanceToggle ~= "Melee" then
		wait()
		end
    end)
end
----------------------------------------------------
Magik3 = function()
	Spawn(function()
		if stanceToggle == "Devil" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik3 = Instance.new("Part", rarm)
		local Colors = {"Really red", "Really black"}
		magik3.Anchored = true
		magik3.Locked = true
		magik3.FormFactor = "Custom"
		magik3.Size = Vector3.new(1.2, 1.2, 1.2)
		magik3.TopSurface = "Smooth"
		magik3.BottomSurface = "Smooth"
		magik3.Transparency = 0
		magik3.CanCollide = false
		magik3.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = rarm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik3.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik3.Transparency = newTrans
			magik3.Size = Vector3.new(ns,ns,ns)
			magik3.CFrame = cf
			rs:wait()
	    end
		magik3:Destroy()
		elseif stanceToggle ~= "Devil" then
		wait()
		end
    end)
end
----------------------------------------------------
Magik4 = function()
	Spawn(function()
		if stanceToggle == "Devil" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik4 = Instance.new("Part", larm)
		local Colors = {"Really red", "Really black"}
		magik4.Anchored = true
		magik4.Locked = true
		magik4.FormFactor = "Custom"
		magik4.Size = Vector3.new(1.2, 1.2, 1.2)
		magik4.TopSurface = "Smooth"
		magik4.BottomSurface = "Smooth"
		magik4.Transparency = 0
		magik4.CanCollide = false
		magik4.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = larm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik4.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik4.Transparency = newTrans
			magik4.Size = Vector3.new(ns,ns,ns)
			magik4.CFrame = cf
			rs:wait()
	    end
		magik4:Destroy()
		elseif stanceToggle ~= "Devil" then
		wait()
		end
    end)
end
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
	return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
	end
end
 
function matrixInterpolate(a, b, t)
	local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
	local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
	local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
	local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
	local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
	local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
	local t = v1:Dot(v2)
	if not (t < 0 or t == 0 or t > 0) then 	-- Failsafe
		return CFrame.new()
	end
	return CFrame.new(
	v0.x, v0.y, v0.z,
	v1.x, v1.y, v1.z,
	v2.x, v2.y, v2.z,
	v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
--local SIDz = {"167985102"}--181449739, 167161785, 148274436, 167985102
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://148274436"--..SIDz[math.random(1,#SIDz)]
z.Looped = true
z.Volume = 1
z.Pitch = .72
wait(1)
z:Play()
hum.WalkSpeed = 16
lite = Instance.new("PointLight",torso)
lite.Brightness = 16
lite.Range = 12
lite.Color = Color3.new(255/255,0,0)
----------------------------------------------------
l = game.Lighting
rb = Color3.new(0,0,0)
nb = Color3.new(0.1,0.1,0.1)
--l.TimeOfDay = 0
--[[l.Ambient = rb
l.OutdoorAmbient = rb
l.FogColor = rb
l.FogEnd = 100
s = Instance.new("Sky",l)
s.CelestialBodiesShown = false
workspace.Base.Material = "Plastic"
workspace.Base.BrickColor = BrickColor.new("Really black")]]--
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Genkadda"
p1 = Instance.new("Part", m)
p1.Material = "Metal"
p1.BrickColor = BrickColor.new("Really black")
p1.Name = "BladePart"
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(103.003883, 10.755723, -7.61905956, 5.61699271e-005, -7.1823597e-006, 0.999998987, -0.984785616, -0.173714966, 3.55839729e-005, 0.173720747, -0.984761655, 5.9530139e-006)
p1.CanCollide = false
p1.Locked = true
p1.Elasticity = 0
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p2 = Instance.new("Part", m)
p2.Material = "Metal"
p2.BrickColor = BrickColor.new("Really black")
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1, 1, 1)
p2.CFrame = CFrame.new(103.00399, 10.7255898, -6.52608919, 0.00135809346, 0.00169118668, -0.999996662, 0.965820193, 0.259168088, 0.0017684648, 0.259154975, -0.965800881, -0.00130418094)
p2.CanCollide = false
p2.Locked = true
p2.Elasticity = 0
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.099999927, 0.699999928, 0.099999927)
p3 = Instance.new("Part", m)
p3.Material = "Metal"
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(1, 2, 1)
p3.CFrame = CFrame.new(103.004028, 11.1456547, -6.819067, 1.43263023e-005, -2.88564479e-006, 0.999998987, -0.882936299, -0.469471544, -7.18829688e-006, 0.469469696, -0.882911503, 1.35099981e-005)
p3.CanCollide = false
p3.Locked = true
p3.Elasticity = 0
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.099999927, 0.699999928, 0.099999927)
p4 = Instance.new("Part", m)
p4.Material = "Metal"
p4.BrickColor = BrickColor.new("Really black")
p4.Name = "BladePart"
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(103.003372, 10.965373, -6.66876507, 1.57370523e-005, -6.04354591e-006, 0.999996603, -0.965898931, -0.25886938, -7.14969246e-006, 0.258875549, -0.965874314, 1.58735529e-005)
p4.CanCollide = false
p4.Locked = true
p4.Elasticity = 0
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p5 = Instance.new("Part", m)
p5.Material = "Metal"
p5.BrickColor = BrickColor.new("Really black")
p5.Name = "Hilt"
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 0.400000006, 1.60000014)
p5.CFrame = CFrame.new(103.003395, 11.0653381, -6.1687479, -0.99999404, 5.54991711e-005, -0.000617815298, -0.000594727404, -0.000124425016, 0.999983907, 2.66434654e-005, 0.999962509, 0.000109782166)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.299999923, 0.399999917, 0.799999952)
p6 = Instance.new("Part", m)
p6.Material = "Metal"
p6.BrickColor = BrickColor.new("Really black")
p6.Name = "Handle"
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.29999995, 1, 1)
p6.CFrame = CFrame.new(103.000061, 11.0688219, -5.5480547, -1.23393656e-005, -1.36360759e-005, 0.999994218, 5.37017331e-006, 0.999984086, -9.45257489e-006, -0.999962509, -9.28580994e-006, 1.64470257e-005)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Cylinder
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 0.200000003, 0.200000003)
p7 = Instance.new("Part", m)
p7.Material = "Metal"
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(103.000099, 11.0688391, -4.79808855, -0.000332629686, 0.00429873355, -0.99998492, -4.5920292e-006, 0.999974728, 0.00432178052, 0.999962449, -8.49941443e-006, -0.000361445156)
p7.CanCollide = false
p7.Locked = true
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p8 = Instance.new("Part", m)
p8.Material = "Metal"
p8.BrickColor = BrickColor.new("Really black")
p8.Name = "BladePart"
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(103.003326, 10.6254845, -8.59870911, -2.92104669e-005, -1.10579058e-005, 0.999994218, -0.996175766, -0.0871899351, -5.3152442e-005, 0.0872026458, -0.996152997, 2.03179661e-005)
p8.CanCollide = false
p8.Locked = true
p8.Elasticity = 0
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p9 = Instance.new("Part", m)
p9.Material = "Metal"
p9.BrickColor = BrickColor.new("Really black")
p9.Name = "BladePart"
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(1, 1, 1)
p9.CFrame = CFrame.new(103.003311, 10.625597, -9.51878738, -2.59891603e-005, -1.34348729e-005, 0.999994218, -0.996185422, 0.087079078, -4.78096408e-005, -0.0870626047, -0.996165276, 1.31400229e-005)
p9.CanCollide = false
p9.Locked = true
p9.Elasticity = 0
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p10 = Instance.new("Part", m)
p10.Material = "Metal"
p10.BrickColor = BrickColor.new("Really black")
p10.Name = "BladeTip"
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 2)
p10.CFrame = CFrame.new(103.00309, 11.1081867, -11.6109829, -0.999994099, -0.000455793255, 4.643387e-005, 0.00045133481, -0.965918779, -0.25878337, 0.000134008093, -0.258763671, 0.965901971)
p10.CanCollide = false
p10.Locked = true
p10.Elasticity = 0
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Wedge
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.119999997, 0.299999923, 0.699999928)
p11 = Instance.new("Part", m)
p11.Material = "Metal"
p11.BrickColor = BrickColor.new("Really black")
p11.Name = "BladePart"
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.CFrame = CFrame.new(103.003296, 10.7956495, -10.4587727, 2.83485351e-005, -1.54050977e-005, 0.999994218, -0.96592474, 0.258761972, 8.27970416e-006, -0.258742362, -0.965907693, 2.1241216e-005)
p11.CanCollide = false
p11.Locked = true
p11.Elasticity = 0
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p12 = Instance.new("Part", m)
p12.Material = "Metal"
p12.BrickColor = BrickColor.new("Really black")
p12.Name = "BladeTip2"
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 1, 2.4000001)
p12.CFrame = CFrame.new(102.999977, 10.6319504, -10.4398403, -0.999994218, -5.5769262e-005, 6.55075928e-005, 4.61044419e-006, 0.882887006, 0.469551951, -0.000112806956, 0.469529003, -0.882874727)
p12.CanCollide = false
p12.Locked = true
p12.Elasticity = 0
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Wedge
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.119999997, 0.239999995, 0.699999928)
p13 = Instance.new("Part", m)
p13.Material = "Metal"
p13.BrickColor = BrickColor.new("Medium stone grey")
p13.Transparency = 1
p13.Name = "HitBox"
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(6.0999999, 0.400000006, 1.5999999)
p13.CFrame = CFrame.new(103.009995, 10.9988394, -9.2679081, 1.22519814e-005, -0.999994218, 1.36361559e-005, -5.27501106e-006, 9.45320426e-006, -0.999984264, 0.999962687, -1.65344682e-005, 9.20891762e-006)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(11.9124546, -5.63626003, -103.00383, 4.33940659e-005, -0.984795153, 0.173719674, 1.85460614e-009, -0.173719659, -0.984795094, 1, 4.27345876e-005, -7.53657105e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(-8.80891991, -9.26009178, 102.975845, 0.00136663229, 0.965830803, 0.259170175, 0.00170310249, 0.25916782, -0.965830863, -0.999997616, 0.00176132878, -0.00129072159)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-8.80891991, -9.26009178, 102.975845, 0.00136663229, 0.965830803, 0.259170175, 0.00170310249, 0.25916782, -0.965830863, -0.999997616, 0.00176132878, -0.00129072159)
w2.Part1 = p3
w2.C1 = CFrame.new(13.0439634, -0.78926897, -103.003448, -4.37113883e-008, -0.88294369, 0.469478935, 0, -0.469478935, -0.88294369, 1, -3.85946954e-008, 2.05215755e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "BladePart_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(13.0439634, -0.78926897, -103.003448, -4.37113883e-008, -0.88294369, 0.469478935, 0, -0.469478935, -0.88294369, 1, -3.85946954e-008, 2.05215755e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(12.3193283, -3.60437131, -103.003067, 2.38418579e-006, -0.965907753, 0.258877277, 0, -0.258874893, -0.965907753, 0.999997616, 0, 2.38418579e-006)
w4 = Instance.new("Weld", p4)
w4.Name = "Hilt_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(12.3193283, -3.60437131, -103.003067, 2.38418579e-006, -0.965907753, 0.258877277, 0, -0.258874893, -0.965907753, 0.999997616, 0, 2.38418579e-006)
w4.Part1 = p5
w4.C1 = CFrame.new(103.010277, 6.16758585, -11.003541, -0.999999821, -0.00060418935, 4.31301851e-005, 4.32021443e-005, -0.000119086159, 1, -0.000604184228, 0.999999821, 0.000119112243)
w5 = Instance.new("Weld", p5)
w5.Name = "Handle_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(103.010277, 6.16758585, -11.003541, -0.999999821, -0.00060418935, 4.31301851e-005, 4.32021443e-005, -0.000119086159, 1, -0.000604184228, 0.999999821, 0.000119112243)
w5.Part1 = p6
w5.C1 = CFrame.new(-5.54999733, -11.0699978, -103, -4.37113883e-008, 2.98366913e-008, -1, 0, 1, 2.98366913e-008, 1, 1.3042032e-015, -4.37113883e-008)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-5.54999733, -11.0699978, -103, -4.37113883e-008, 2.98366913e-008, -1, 0, 1, 2.98366913e-008, 1, 1.3042032e-015, -4.37113883e-008)
w6.Part1 = p7
w6.C1 = CFrame.new(4.83552647, -11.5140886, 102.949669, -0.000344927335, 7.4505806e-007, 0.99999994, 0.00431239465, 0.999990702, 7.4505806e-007, -0.999990642, 0.00431239465, -0.000344927335)
w7 = Instance.new("Weld", p7)
w7.Name = "BladePart_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(4.83552647, -11.5140886, 102.949669, -0.000344927335, 7.4505806e-007, 0.99999994, 0.00431239465, 0.999990702, 7.4505806e-007, -0.999990642, 0.00431239465, -0.000344927335)
w7.Part1 = p8
w7.C1 = CFrame.new(11.3406382, -7.6414094, -103.0028, -4.38670977e-005, -0.996191144, 0.0871966407, 1.91451011e-009, -0.0871966407, -0.996191144, 1, -4.36998489e-005, 3.82696771e-006)
w8 = Instance.new("Weld", p8)
w8.Name = "BladePart_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(11.3406382, -7.6414094, -103.0028, -4.38670977e-005, -0.996191144, 0.0871966407, 1.91451011e-009, -0.0871966407, -0.996191144, 1, -4.36998489e-005, 3.82696771e-006)
w8.Part1 = p9
w8.C1 = CFrame.new(9.76131344, -10.4100504, -103.002922, -3.85031162e-005, -0.996201694, -0.0870751292, 1.47589729e-009, 0.0870751366, -0.996201754, 1, -3.83570004e-005, -3.35119148e-006)
w9 = Instance.new("Weld", p9)
w9.Name = "BladeTip_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(9.76131344, -10.4100504, -103.002922, -3.85031162e-005, -0.996201694, -0.0870751292, 1.47589729e-009, 0.0870751366, -0.996201754, 1, -3.83570004e-005, -3.35119148e-006)
w9.Part1 = p10
w9.C1 = CFrame.new(102.999939, 7.7735939, 14.0892649, -0.999999881, 0.000441889424, 0.000150508567, -0.000465785735, -0.965935588, -0.258782327, 3.10284122e-005, -0.258782327, 0.965935647)
w10 = Instance.new("Weld", p10)
w10.Name = "BladePart_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(102.999939, 7.7735939, 14.0892649, -0.999999881, 0.000441889424, 0.000150508567, -0.000465785735, -0.965935588, -0.258782327, 3.10284122e-005, -0.258782327, 0.965935647)
w10.Part1 = p11
w10.C1 = CFrame.new(7.72030354, -12.8984127, -103.003448, 1.83585671e-005, -0.965941429, -0.258760989, 3.25545535e-010, 0.258760959, -0.96594137, 1, 1.77332167e-005, 4.7507956e-006)
w11 = Instance.new("Weld", p11)
w11.Name = "BladeTip2_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(7.72030354, -12.8984127, -103.003448, 1.83585671e-005, -0.965941429, -0.258760989, 3.25545535e-010, 0.258760959, -0.96594137, 1, 1.77332167e-005, 4.7507956e-006)
w11.Part1 = p12
w11.C1 = CFrame.new(102.999031, -4.47981405, -14.2206001, -1, -4.84334305e-006, -9.63198472e-005, -4.95036402e-005, 0.882903397, 0.469554722, 8.27668991e-005, 0.469554722, -0.882903397)
w12 = Instance.new("Weld", p12)
w12.Name = "HitBox_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(102.999031, -4.47981405, -14.2206001, -1, -4.84334305e-006, -9.63198472e-005, -4.95036402e-005, 0.882903397, 0.469554722, 8.27668991e-005, 0.469554722, -0.882903397)
w12.Part1 = p13
w12.C1 = CFrame.new(9.27000427, 103.009995, 10.9999933, -4.37113883e-008, -4.37113883e-008, 1, -1, 1.91068547e-015, -4.37113883e-008, 0, -1, -4.37113883e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(9.27000427, 103.009995, 10.9999933, -4.37113883e-008, -4.37113883e-008, 1, -1, 1.91068547e-015, -4.37113883e-008, 0, -1, -4.37113883e-008)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Genkadda)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Genkadda)
weld1.Part0 = cor
weld1.Part1 = char.Genkadda.Handle
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
----------------------------------------------------
function Vanish()
	for i = 1, 10 do wait()
		for i,v in pairs(char.Genkadda:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" or v.Name ~= "Thingy" then
					v.Transparency = v.Transparency + 0.1
				end
			end
		end
	end
end
----------------------------------------------------
function Appear()
	for i = 1, 10 do wait()
		for i,v in pairs(char.Genkadda:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" or v.Name ~= "Thingy" then
					v.Transparency = v.Transparency - 0.1
				end
			end
		end
	end
end
----------------------------------------------------
function devilcr()
	for i = 1, 10 do wait()
		for i,v in pairs(char.CryogenArm:GetChildren()) do
if v:IsA("Part") or v:IsA("WedgePart") then
if v.BrickColor==BrickColor.new("Royal purple") then
v.BrickColor=BrickColor.new("Bright red") --("Really red")
	end
      end
    end
  end
end
----------------------------------------------------
function normalcr()
	for i = 1, 10 do wait()
		for i,v in pairs(char.CryogenArm:GetChildren()) do
if v:IsA("Part") or v:IsA("WedgePart") then
if v.BrickColor==BrickColor.new("Bright red") then --("Really red") then
v.BrickColor=BrickColor.new("Royal purple")
	end
      end
    end
  end
end
----------------------------------------------------
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 50

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
	keysDown[key] = true
	
	if key == "f" then
		flyToggled = not flyToggled
		
	if not flyToggled then
		stanceToggle = "Normal"
		floatBP.Parent = nil
		flyBV.Parent = nil
		turnBG.Parent = nil
		root.Velocity = Vector3.new()
		pchar.Humanoid.PlatformStand = false
	end
end
	
end)
mouse.KeyUp:connect(function(key)
	keysDown[key] = nil
end)

local function updateFly()

	if not flyToggled then return end
	
	lastForward = forward
	lastSide = side
	
	forward = 0
	side = 0
	
	if keysDown.w then
		forward = forward + 1
	end
	if keysDown.s then
		forward = forward - 1
	end
	if keysDown.a then
		side = side - 1
	end
	if keysDown.d then
		side = side + 1
	end
	
	canFly = (forward ~= 0 or side ~= 0)
	
	if canFly then
		stanceToggle = "Floating"
		turnBG.Parent = root
		floatBP.Parent = nil
		flyBV.Parent = root
		
		flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
		if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
	else
		floatBP.position = root.Position
		floatBP.Parent = root
		
		flySpeed = flySpeed - 1
		if flySpeed < 0 then flySpeed = 0 end
	end
	
	local camCF = cam.CoordinateFrame
	local in_forward = canFly and forward or lastForward
	local in_side = canFly and side or lastSide
	
	flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side, 
in_forward * 0.2, 0).p) - camCF.p) * flySpeed
	
	turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0, 
0)
end

game:service'RunService'.RenderStepped:connect(function()
	if flyToggled then
		pchar.Humanoid.PlatformStand = true
	end
	updateFly()
end)
----------------------------------------------------
p13.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.Slashing == true and Debounces.Slashed == false then
                            Debounces.Slashed = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(8,10))
                            wait(.3)
                            Debounces.Slashed = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.Slashing == true and Debounces.Slashed == false then
                            Debounces.Slashed = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(8,10))
                            wait(.3)
                Debounces.Slashed = false
				end
            end
        end
    end    
end)
----------------------------------------------------
blocks = {}
last_block = nil
function ezBlock(type, name, cframe, size, rotation, material, parent, BrickColor, transparency, 

weldToThis, formFactor)
    block = Instance.new(type, parent)
    block.Name = name
    block.FormFactor=formFactor
    block.Size = size
    block.CanCollide = false
    block.Anchored = false
    block.BrickColor = BrickColor
    block.Transparency=transparency
    block.TopSurface = 'SmoothNoOutlines'
    block.BottomSurface = 'SmoothNoOutlines'
    block.FrontSurface = 'SmoothNoOutlines'
    block.BackSurface = 'SmoothNoOutlines'
    block.LeftSurface = 'SmoothNoOutlines'
    block.RightSurface = 'SmoothNoOutlines'
    block.Material = material
    block.formFactor = 'Custom'
    block.CFrame = cframe
 
    if weldToThis then
        stick(weldToThis, block)
    elseif last_block ~= nil then
        stick(block, last_block)
        last_block = block
    else
        last_block = block
    end
    table.insert(blocks, block)
   
    return #blocks
end
----------------------------------------------------
    for i, v in pairs(blocks) do
            v.Parent = char.Genkadda
    end
----------------------------------------------------
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = char.Genkadda.BladeTip --blocks[test]
local number = 0
local num2 = 1
game:GetService("RunService").RenderStepped:connect(function()
	local start = nil
	for i = num2,number do
		local v = Trail[i]
		if v ~= nil then
			local cfr = v.CFrame
			local Amount = v.Size.Y/4
			v.Size = v.Size-Vector3.new(0,Amount,0)
			v.Transparency = v.Transparency+0.05
			v.CFrame = cfr*CFrame.new(0,Amount/2,0)
			if v.Size.Y <= 0.205 or v.Transparency > 0.95 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end
	if Debounces.Slashing then
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.5,(LastCFr.p-cfr.p).Magnitude,0.5)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]
			T.BrickColor = BrickColor.new("Really black")
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
	else
		if LastCFr ~= nil then LastCFr = nil Trails:ClearAllChildren() Trail = {} end
	end
end)
----------------------------------------------------
local orbt={}
local stlt={}
local chot={}
local cfxt={}
local pfxt={}
local cns=0
local cnOrb=nil
mouse.KeyDown:connect(function(key)
	if key == "j" and stanceToggle == "Devil" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
                        orbt={}
                        stlt={}
                        chot={}
                        cfxt={}
--lol
                for i = 1, 20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(170),math.rad(-20),math.rad(-30)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-40),0), 0.2)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(40), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0.15) * CFrame.Angles(math.rad(-20), math.rad(20), math.rad(-10)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, -0.15) * CFrame.Angles(math.rad(20), math.rad(-10), math.rad(10)), 0.2)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://170053944"
                z.Pitch = 1.07
                z.Volume = 1
                wait(0.1)
                z:Play()
                cnOrb=nwPrt(char,Vector3.new(1,1,1),larm.CFrame*CFrame.new(0,-3.4,-0.1),"Really black")
                debris:AddItem(cnOrb,50)
                cnOrb.Mesh.MeshType=3
                table.insert(orbt,cnOrb)
                table.insert(stlt,cnOrb)
                local nt=0
                for i=0,5,0.02 do
                        nt=nt+1
                        cns=i
                        if nt>=2 then
                                nt=0
                                local cho=nwPrt(mod3,Vector3.new(2,2,2),cnOrb.CFrame*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))*CFrame.new(0,5+cns,0),"Really black")
                                debris:AddItem(cho,1)
                                cho.Mesh.MeshType=3
                                table.insert(chot,cho)
                        end
                        cnOrb.CFrame=larm.CFrame*CFrame.new(0,-3.4-(cns/2),-0.1)
                        cnOrb.Mesh.Scale=Vector3.new(i,i,i)
                        wait()
                end

--lol
			function FindNearestTorso(Position,Distance,SinglePlayer)
				if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
					local List = {}
					for i,v in pairs(workspace:GetChildren())do
						if v:IsA("Model")then
							if v:findFirstChild("Torso")then
								if v ~= char then
									if(v.Torso.Position -Position).magnitude <= Distance then
										table.insert(List,v)
									end
								end
							end
						end
					end
				return List
			end
--[[	z = Instance.new("Sound",hed)
	z.SoundId = "rbxassetid://232213955"
	z.Pitch = 1
	z.Volume = 1
	wait(0.2)
	z:Play()
	sp = Instance.new("Part",rarm)
	sp.Anchored = true
	sp.CanCollide = false
	sp.Locked = true
	sp.Transparency = 0
	sp.Material = "Neon"
	sp.Size = Vector3.new(1,1,1)
	sp.TopSurface = "SmoothNoOutlines"
	sp.BottomSurface = "SmoothNoOutlines"
	sp.BrickColor = BrickColor.new("Royal purple")
	spm = Instance.new("SpecialMesh",sp)
	spm.MeshType = "Sphere"
	spm.Scale = Vector3.new(21,21,21)
	sp2 = Instance.new("Part", rarm)
	sp2.Name = "Energy"
	sp2.BrickColor = BrickColor.new("Royal purple")
	sp2.Size = Vector3.new(1, 1, 1)
	sp2.Shape = "Ball"
	sp2.CanCollide = false
	sp2.Anchored = true
	sp2.Locked = true
	sp2.TopSurface = 0
	sp2.BottomSurface = 0
	sp2.Transparency = 1
	spm2 = Instance.new("SpecialMesh",sp2)
	spm2.MeshId = "rbxassetid://9982590"
	spm2.Scale = Vector3.new(2,2,2)
	for i = 1, 20 do
		spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 100, 20 do rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
	end
	for i = 1, 20 do
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(10),math.rad(-30),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	sp.Transparency = 1
	for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-50), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	wait(1)
	sp.Transparency = 0
	sp2.Transparency = 0.84 ]]
	for i = 1, 20 do
		--spm.Scale = spm.Scale - Vector3.new(1,1,1)
		--sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		--sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
		if Debounces.on == false then break end
		rs:wait()
	end
	--[[for i = 1, 2880, 50 do
		rs:wait()
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = rarm.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
		rs:wait()
	end
	sp:Destroy()
	sp2:Destroy() ]]
cnOrb:Destroy()
	local X = Instance.new("Part",char)
	local O = Instance.new("ObjectValue",X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 0
	X.Reflectance = 0
	X.BottomSurface = 0
	X.TopSurface = 0
	X.Shape = 0
	local V = Instance.new("ObjectValue",X)
	V.Value = char
	V.Name = "creator"
	--X.BrickColor = BrickColor.new("Royal purple")
X.BrickColor = BrickColor.new("Really black")
	X.Size = Vector3.new(2,2,2)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(0.5,0.5,1)
	X.CFrame = rarm.CFrame*CFrame.new(-3,0,0)
	local bv = Instance.new("BodyVelocity",X)
	bv.maxForce = Vector3.new(99999,99999,99999)
	X.CFrame = CFrame.new(X.Position,mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector*65

	Explode = X.Touched:connect(function(hit)
		if hit ~= char and hit.Name ~= "Shell" then
			local cf = X.CFrame
			bv:Destroy()
			X.Anchored = true
			Z:Remove()
			Explode:disconnect()
			X.Size = Vector3.new(3,3,3)
			X.Touched:connect(function(hit) end)
			X.CanCollide = false
			local part3 = Instance.new("Part", rarm)
			part3.Anchored=true
			part3.CanCollide=false
			part3.Locked = true
			part3.TopSurface = "SmoothNoOutlines"
			part3.BottomSurface = "SmoothNoOutlines"
			part3.FormFactor='Custom'
			part3.Size=Vector3.new(1,1, 1)
			part3.CFrame=X.CFrame
			part3.Transparency=0
			--part3.BrickColor=BrickColor.new("Royal purple")
			part3.BrickColor=BrickColor.new("Really black")
                        local mesh3 = Instance.new("SpecialMesh",part3)
			mesh3.MeshType = "Sphere"
			mesh3.Scale = Vector3.new(1,1,1)
			--debris:AddItem(X,8)
			local part4 = Instance.new("Part", rarm)
			part4.Material = "Neon"
			part4.Anchored=true
			part4.CanCollide=false
			part4.Locked = true
			part4.TopSurface = "SmoothNoOutlines"
			part4.BottomSurface = "SmoothNoOutlines"
			part4.FormFactor='Custom'
			part4.Size=Vector3.new(1,1, 1)
			part4.CFrame=X.CFrame
			part4.Transparency=0
			--part4.BrickColor=BrickColor.new("Hot pink")
			part4.BrickColor=BrickColor.new("Really black")
			local mesh4 = Instance.new("SpecialMesh",part4)
			mesh4.MeshType = "Sphere"
			mesh4.Scale = Vector3.new(.5,.5,.5)
			local part7 = Instance.new("Part", rarm)
			part7.Material = "Neon"
			part7.Anchored=true
			part7.CanCollide=false
			part7.Locked = true
			part7.TopSurface = "SmoothNoOutlines"
			part7.BottomSurface = "SmoothNoOutlines"
			part7.FormFactor='Custom'
			part7.Size=Vector3.new(1,1, 1)
			part7.CFrame=X.CFrame
			part7.Transparency=0
			part7.BrickColor=BrickColor.new("Really black")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshType = "Sphere"
			mesh7.Scale = Vector3.new(0.1, 0.1, 0.1)
		--[[X.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)
		part3.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)]]--
		for i,v in pairs(FindNearestTorso(X.CFrame.p,140))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(60,90))
				v.Humanoid.PlatformStand = true
				v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
			end
		end

		local acos = math.acos
		local sqrt = math.sqrt
		local Vec3 = Vector3.new
		local fromAxisAngle = CFrame.fromAxisAngle

		local function toAxisAngle(CFr)
			local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
			local Angle = math.acos((R00+R11+R22-1)/2)
			local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			A = A == 0 and 0.00001 or A
			local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			B = B == 0 and 0.00001 or B
			local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			C = C == 0 and 0.00001 or C
			local x = (R21-R12)/sqrt(A)
			local y = (R02-R20)/sqrt(B)
			local z = (R10-R01)/sqrt(C)
			return Vec3(x,y,z),Angle
		end

		function ApplyTrig(Num,Func)
			local Min,Max = Func(0),Func(1)
			local i = Func(Num)
			return (i-Min)/(Max-Min)
		end

		function LerpCFrame(CFrame1,CFrame2,Num)
			local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
			return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
		end

		function Crater(Torso,Radius)
			Spawn(function()
				local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
				local Ignore = {}
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character ~= nil then
						Ignore[#Ignore+1] = v.Character
					end
				end
				local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
				if Hit == nil then return end
					local Parts = {}
					for i = 1,360,10 do
						local P = Instance.new("Part",Torso.Parent)
						P.Anchored = true
						P.FormFactor = "Custom"
						P.BrickColor = Hit.BrickColor
						P.Material = Hit.Material
						P.TopSurface = "Smooth"
						P.BottomSurface = "Smooth"
						P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
						P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
						Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
						if math.random(0,5) == 0 then -- rubble
							local P = Instance.new("Part",Torso.Parent)
							P.Anchored = true
							P.FormFactor = "Custom"
							P.BrickColor = Hit.BrickColor
							P.Material = Hit.Material
							P.TopSurface = "Smooth"
							P.BottomSurface = "Smooth"
							P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
							P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
							Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
							end
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
							end
							wait(0.02)
						end
						for i,v in pairs(Parts) do
							if v[1].Size.X > 2.1 then
								v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
							end
							v[1].Anchored = false
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].Transparency = i
								if i == 1 then
									v[1]:Destroy()
								elseif i >= 0.25 then
									v[1].CanCollide = false
								end
							end
						wait(0.02)
						end
					Parts = nil
					end)
				end

				ROW = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(X.CFrame.x,0,X.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,15)
					end
				end

				Part = function(x,y,z,color,tr,cc,an,parent)
					local p = Instance.new('Part',parent or Weapon)
					p.formFactor = 'Custom'
					p.Size = Vector3.new(x,y,z)
					p.BrickColor = BrickColor.new(color)
					p.CanCollide = cc
					p.Transparency = tr
					p.Anchored = an
					p.TopSurface,p.BottomSurface = 0,0
					p.Locked=true
					p:BreakJoints()
				return p end

			Mesh = function(par,num,x,y,z)
			local msh = _
			if num == 1 then msh = Instance.new("CylinderMesh",par)
			elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
			elseif num == 3 then msh = Instance.new("BlockMesh",par)
			elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
			elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
			end msh.Scale = Vector3.new(x,y,z)
			return msh end

			function explosion(col1,col2,cfr,sz,rng,dmg)
				local a= Part(1,1,1,col1,.5,false,true,workspace)
				local a2= Part(1,1,1,col2,.5,false,true,workspace)
				local a3= Part(1,1,1,col2,.5,false,true,workspace)
				v1,v2,v3=sz.x,sz.y,sz.z
				local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
				local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
				local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
				a.CFrame=cfr
				a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
				a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())

				Spawn(function()
					while wait() do
						if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
							m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
							m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
							m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
							a.Transparency=a.Transparency+0.05
							a2.Transparency=a2.Transparency+0.05
							a3.Transparency=a3.Transparency+0.05
						end
					end)
				end

				Crater(X,20)
				ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
				z = Instance.new("Sound",X)
				z.SoundId = "rbxassetid://231917744"
				z.Pitch = .5
				z.Volume = 10
				z1 = Instance.new("Sound",X)
				z1.SoundId = "rbxassetid://231917744"
				z1.Pitch = .5
				z1.Volume = 10
				z2 = Instance.new("Sound",X)
				z2.SoundId = "rbxassetid://231917744"
				z2.Pitch = .5
				z2.Volume = 10
				z3 = Instance.new("Sound",X)
				z3.SoundId = "rbxassetid://245537790"
				z3.Pitch = .7
				z3.Volume = 1
				z4 = Instance.new("Sound",X)
				z4.SoundId = "rbxassetid://245537790"
				z4.Pitch = .7
				z4.Volume = 1
				wait(0.1)
				z:Play()
				z1:Play()
				z2:Play()
				z3:Play()
				z4:Play()

				local part=Instance.new('Part',rarm)
				part.Anchored=true
				part.CanCollide=false
				part.Locked = true
				part.FormFactor='Custom'
				part.Size=Vector3.new(1,1,1)
				part.CFrame=X.CFrame*CFrame.new(0,0,0)
				part.Transparency=0
				part.BrickColor=BrickColor.new('Really black')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(2,2,2)
				local part2=part:clone()
				part2.Parent = rarm
				--part2.BrickColor=BrickColor.new("Royal purple")
				part2.BrickColor=BrickColor.new("Really black")
				local part5=part:clone()
				part5.Parent = rarm
				--part5.BrickColor=BrickColor.new("Magenta")
				part5.BrickColor=BrickColor.new("Really black")
				local part6=part:clone()
				part6.Parent = rarm
				--part6.BrickColor=BrickColor.new("Black")
				part6.BrickColor=BrickColor.new("Really black")
				local mesh2=mesh:clone()
				mesh2.Parent=part2
				mesh2.Scale=Vector3.new(3, 3, 3)
				local mesh5=mesh:clone()
				mesh5.Parent=part5
				mesh5.Scale=Vector3.new(3, 3, 3)
				local mesh6=mesh:clone()
				mesh6.Parent=part6
				mesh6.Scale=Vector3.new(3, 3, 3)
				local blast = Instance.new("Part", rarm)
				blast.BrickColor = BrickColor.new("Really black")
				blast.Anchored = true
				blast.CanCollide = false
				blast.Locked = true
				blast.Size = Vector3.new(1, 1, 1)
				blast.TopSurface = "Smooth"
				blast.BottomSurface = "Smooth"
				blast.Transparency = 0
				blast.CFrame = HandCF
				local bm = Instance.new("SpecialMesh", blast)
				bm.Scale = Vector3.new(5,1,5)
				bm.MeshId = "rbxassetid://3270017"
				local blast2 = Instance.new("Part", rarm)
				blast2.BrickColor = BrickColor.new("Really black")
				blast2.Anchored = true
				blast2.CanCollide = false
				blast2.Locked = true
				blast2.Size = Vector3.new(1, 1, 1)
				blast2.TopSurface = "Smooth"
				blast2.BottomSurface = "Smooth"
				blast2.Transparency = 0
				blast2.CFrame = HandCF
				local bm2 = Instance.new("SpecialMesh", blast2)
				bm2.Scale = Vector3.new(3,1,3)
				bm2.MeshId = "rbxassetid://3270017"
				local blast3 = Instance.new("Part", rarm)
				blast3.BrickColor = BrickColor.new("Really black")
				blast3.Anchored = true
				blast3.CanCollide = false
				blast3.Locked = true
				blast3.Size = Vector3.new(1, 1, 1)
				blast3.TopSurface = "Smooth"
				blast3.BottomSurface = "Smooth"
				blast3.Transparency = 0
				blast3.CFrame = HandCF
				local bm3 = Instance.new("SpecialMesh", blast3)
				bm3.Scale = Vector3.new(3,1,3)
				bm3.MeshId = "rbxassetid://3270017"
				for i = 1,120 do rs:wait()
					X.Transparency = X.Transparency + (1/120)
					part.Transparency = part.Transparency + (1/120)
					part2.Transparency = part2.Transparency + (1/120)
					part3.Transparency = part3.Transparency + (1/120)
					part4.Transparency = part4.Transparency + (1/120)
					part5.Transparency = part5.Transparency + (1/120)
					part6.Transparency = part6.Transparency + (1/120)
					part7.Transparency = part7.Transparency + (1/120)
					blast.Transparency = blast.Transparency + (1/120)
					blast2.Transparency = blast2.Transparency + (1/120)
					blast3.Transparency = blast3.Transparency + (1/120)
					X.Size = X.Size + Vector3.new(.8,.8,.8)
					--part3.Size = part3.Size + Vector3.new(3,3,3)
					mesh.Scale = mesh.Scale + Vector3.new(1,.2,1)
					mesh2.Scale = mesh2.Scale + Vector3.new(1.1,.2,1.1)
					mesh3.Scale = mesh3.Scale + Vector3.new(3,3,3)
					mesh4.Scale = mesh4.Scale + Vector3.new(1.7,1.7,1.7)
					mesh5.Scale = mesh5.Scale + Vector3.new(1.6,.2,1.6)
					mesh6.Scale = mesh6.Scale + Vector3.new(2,.2,2)
					mesh7.Scale = mesh7.Scale + Vector3.new(4,4,4)
					bm.Scale = bm.Scale + Vector3.new(6,6,.2)
					bm2.Scale = bm2.Scale + Vector3.new(4,4,.2)
					bm3.Scale = bm3.Scale + Vector3.new(4,4,.2)
					X.CFrame = cf
					part.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2),0)
					part2.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2),0)
					part3.CFrame=X.CFrame
					part4.CFrame=X.CFrame
					part7.CFrame=X.CFrame
					part5.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2.6),0)
					part6.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2.4),0)
					blast.CFrame=X.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
					blast2.CFrame=X.CFrame * CFrame.Angles(math.rad(-i*4), math.rad(i*4), math.rad(0))
					blast3.CFrame=X.CFrame * CFrame.Angles(math.rad(180+i*4), math.rad(90-i*4), math.rad(0))
					rs:wait()
					end
					X:Destroy()
					part:Destroy()
					part2:Destroy()
					part3:Destroy()
					part4:Destroy()
					part5:Destroy()
					part6:Destroy()
					blast:Destroy()
					blast2:Destroy()
					blast3:Destroy()
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					z4:Destroy()
				end
			end)
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
				if Debounces.on == false then break end
				rs:wait()
			end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
ptz = {0.7, 0.8, 0.9, 1}
idz = {"161006212", "161006195"}
mouse.KeyDown:connect(function(key)
    if key == "q" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad  (60),math.rad(70),math.rad(70)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0) *CFrame.Angles(math.rad(-20),math.rad(0),math.rad  (-40)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-50), math.rad(0)),   0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(-.4, -1, 0) * CFrame.Angles(math.rad(0), math.rad(70),   math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(-10), 0, math.rad(-10)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(10), 0, math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait(2)
			end
				z = Instance.new("Sound", hed)
				z.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
				z.Pitch = ptz[math.random(1,#ptz)]
				z.Volume = 1
				wait(.01)
				z:Play()
				Debounces.Slashing = true
			for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(-40),math.rad(-20),math.rad(40)), 0.3)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.65, -.3) * CFrame.Angles(math.rad(65),math.rad(-20),math.rad(30)), 0.3)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-9),math.rad(35), math.rad(0)), 0.3)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 1) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)), 0.3)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-10)), 0.3)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.3)
			if Debounces.on == false then break end
			rs:wait(2)
			end
                z1 = Instance.new("Sound", hed)
                z1.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
                z1.Pitch = ptz[math.random(1,#ptz)]
                z1.Volume = 1
                wait(.01)
				z1:Play()
				Debounces.Slashing = true
			for i = 1, 26 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad  (90),math.rad(-40),math.rad(80)), 0.35)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad (- 70)), 0.35)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-90), math.rad(0)),   0.35)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(0), math.rad(90),   math.rad(0)), 0.35)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(-10), 0, math.rad(-10)), 0.35)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(10), 0, math.rad(10)), 0.35)
            cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles (math.rad(0), math.rad(-30), math.rad(0)), 0.35)
			if Debounces.on == false then break end
			rs:wait(2)
			end
			Debounces.Slashing = false
			z:Destroy()
			z1:Destroy()
			cor.Weld.C1 = CFrame.Angles(0,0,0)
		if Debounces.CanAttack == false then
			Debounces.CanAttack = true
			Debounces.NoIdl = false
			Debounces.on = false
			end
		end
	end
end)
-------------------------------
pts = {4, 4.2, 4.4, 4.6, 4.8, 5, 5.2, 5.4}
mouse.KeyDown:connect(function(key)
    if key == "e" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.ks = true
	larm.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        if Debounces.Slapping == true and Debounces.Slapped == false then
                                Debounces.Slapped = true
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    z1 = Instance.new("Sound",char)
                                    z1.SoundId = "rbxassetid://261010715"
									z1.Pitch = pts[math.random(1,#pts)]
                                    z1.Volume = 1
                                    z2 = Instance.new("Sound",char)
                                    z2.SoundId = "rbxassetid://261010715"
									z2.Pitch = z1.Pitch
                                    z2.Volume = 1
                                    z3 = Instance.new("Sound",char)
                                    z3.SoundId = "rbxassetid://261010715"
									z3.Pitch = z1.Pitch
                                    z3.Volume = 1
                                    z1:Play()
                                    z2:Play()
                                    z3:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(10)
									hit:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 90
                                wait(.5)
                                Debounces.Slapped = false
								z:Destroy()
								z1:Destroy()
								z2:Destroy()
								z3:Destroy()
                        end
                    end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                       if Debounces.Slapping == true and Debounces.Slapped == false then
                                Debounces.Slapped = true
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    z1 = Instance.new("Sound",char)
                                    z1.SoundId = "rbxassetid://261010715"
									z1.Pitch = pts[math.random(1,#pts)]
                                    z1.Volume = 1
                                    z2 = Instance.new("Sound",char)
                                    z2.SoundId = "rbxassetid://261010715"
									z2.Pitch = z1.Pitch
                                    z2.Volume = 1
                                    z3 = Instance.new("Sound",char)
                                    z3.SoundId = "rbxassetid://261010715"
									z3.Pitch = z1.Pitch
                                    z3.Volume = 1
                                    z1:Play()
                                    z2:Play()
                                    z3:Play()
                                    Debounces.ks=false
                                    end
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
                                wait(.5)
                    Debounces.Slapped = false
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					end
                end
            end
        end    
    end)
				for i = 1, 14 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.5, -.3) * CFrame.Angles(math.rad(50), 0, math.rad(40)), 0.5)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(40)), 0.5)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.5)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.5)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				Debounces.Slapping = true
				for i = 1, 20 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.7, .3) * CFrame.Angles(math.rad(50), 0, math.rad(-110)), 0.6)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(40)), 0.6)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.6)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				Debounces.Slapping = false
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
--[[for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("Part") then
                v.Transparency=0
        end
end
for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("WedgePart") then
                v.Transparency=0
        end
end ]]
				for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(2.7)
                end
				x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://228343271"
				x.Pitch = 1
				x.Volume = .8
				wait(.1)
				x:Play()
				Debounces.on = false
				Debounces.Here = false
				shot = shot + 1
local rng = Instance.new("Part", larm)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Crimson")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
rng2 = rng:clone()
rng3 = rng2:clone()
rng4 = rng2:clone()
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(10, 10, 1)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(5, 5, 3)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(8, 8, 1)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(6, 6, 1)
local bem = Instance.new("Part", larm)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Really black")
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1, 1, 1)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 4, 4)
local out = Instance.new("Part", larm)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(4, 4, 4)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(6, 4, 6)
local bnd = Instance.new("Part", larm)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really red")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "Bend"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(8, 8, 8)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(0, -.5, 0)
rng4.CFrame = rng.CFrame * CFrame.new(0, -1, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rngm3.Scale = Vector3.new(8 + i*3, 8 + i*3, 1)
rngm4.Scale = Vector3.new(6 + i*4, 6 + i*4, 1)
rng.Transparency = i/20
rng3.Transparency = 1/24
rng4.Transparency = i/26
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
larm:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24,73))
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
wait(1)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Parent.Name)
deb = false
for i, v in pairs(Touche) do
print(v)
end
end
end
end)
end
for i = 0, 260, 8 do
bem.Size = Vector3.new(i, 3, 3)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(1,1,1)
bndm.Scale = Vector3.new(8,8,8)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = larm
newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(8 + i*2, 8 + i*2, 3)
newRng.Transparency = i/10
wait()
end
wait()
newRng:Destroy()
end)()
end
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
--[[for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("Part") then
                v.Transparency=1
        end
end
for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("WedgePart") then
                v.Transparency=1
        end
end ]]
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
    if key == "u" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 20 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(130), 0, math.rad(40)), 0.3)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(130), 0, math.rad(-40)), 0.3)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), 0, 0), 0.3)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(50), 0, 0), 0.3)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, 0), 0.3)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.2, -.5) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
					cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, -.2, 0) * CFrame.Angles (math.rad(40), math.rad(0), math.rad(0)), 0.35)
            if Debounces.on == false then break end
            wait()
        end
        Spawn(function()
            local Parts = {}
            for Y = -5,5 do
                local P = Instance.new("Part",char)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.CanCollide = false
                P.Size = Vector3.new(1,2,1)
                P.TopSurface = "SmoothNoOutlines"
                P.BottomSurface = "SmoothNoOutlines"
                P.BrickColor = BrickColor.new("Really black")
                P.Name = tostring(Y)
                local i = (Y+5)/(10)
                i = 1-math.cos(math.pi*i-(math.pi/2))
                P.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,Y,-15+(i*1.5))*CFrame.Angles(math.rad(Y*5),0,0)
                --[[P.Touched:connect(function(ht)
                    local hit = ht.Parent
                    if hit:FindFirstChild("Humanoid") then
                        hit.Humanoid:TakeDamage(math.random(20,50))
                    end
                end)]]--
        s = Instance.new("Sound",P)
        s.SoundId = "rbxassetid://228343271"
        s.Volume = .7
        s.Pitch = 0.9
        s:Play()
P.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(1,3))
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random (1,3))
                                hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                    --Debounces.Slashed = false
                --end
            end
        end
    end
end)
                Parts[#Parts+1] = P
            end
            local BREAKIT = false
            local CParts = {}
            local Rocks = {}
            local LastPos = nil
            for i = 1,70 do
                for i2,v in pairs(Parts) do
                    v.CFrame = v.CFrame*CFrame.new(0,0,-4)
                    local cf = v.CFrame
                    v.Size = v.Size+Vector3.new(0.4,0.35,0)
                    v.CFrame = cf
                    v.Transparency = v.Transparency+0.02
                    if v.Transparency >= 0.975 then BREAKIT = true end
                    if v.Name == "0" then
                        local Ignore = {}
                        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                            if v.Character ~= nil then
                                Ignore[#Ignore+1] = v.Character
                            end
                        end
                        local ray = Ray.new(v.Position+Vector3.new(0,20,0),Vector3.new(0,-200,0))
                        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(ray,Ignore)
                        if Hit ~= nil then
                            if #Rocks == 0 then
                                for i = 1,5 do
                                    local P = Instance.new("Part",char)
                                    Rocks[#Rocks+1] = P
                                    P.Anchored = true
                                    P.FormFactor = "Custom"
                                    P.BrickColor = Hit.BrickColor
                                    P.Material = Hit.Material
                                    P.TopSurface = "Smooth"
                                    P.BottomSurface = "Smooth"
                                    P.Size = Vector3.new(1,1,1)*(math.random(500,900)/100)
                                end
                            end
                            for i,P in pairs(Rocks) do
                                P.CFrame = ((CFrame.new(Pos)*(v.CFrame-v.Position))*CFrame.new(math.random(-math.ceil(v.Size.X/2),math.ceil(v.Size.X/2)),0,-math.random(5,8))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            end
                            local P = Instance.new("Part",char)
                            CParts[#CParts+1] = {P,tick()}
                            P.Anchored = true
                            P.FormFactor = "Custom"
                            P.BrickColor = Hit.BrickColor
                            P.Material = Hit.Material
                            P.TopSurface = "Smooth"
                            P.BottomSurface = "Smooth"
                            P.Size = Vector3.new(1,1,1)*(math.random(100,300)/100)
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            local P = P:Clone()
                            CParts[#CParts+1] = {P,tick()}
                            P.Parent = char
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(-v.Size.X,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,-20)))
                            if LastPos ~= nil then
                                local P = P:Clone()
                                CParts[#CParts+1] = {P,tick()}
                                P.Parent = char
                                P.BrickColor = BrickColor.new("Really black")
                                Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                                Pos = Pos.p
                                local CFr = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                                P.Size = Vector3.new(v.Size.X-0.25,1,(CFr.p-LastPos.p).Magnitude+0.25)
                                --P.Velocity = Vector3.new(0,-1000,0)
                                P.CFrame = CFrame.new(CFr.p,LastPos.p)*CFrame.new(0,0,-((CFr.p-LastPos.p).Magnitude+0.25)/2)
                            end
                            LastPos = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                        end
                    end
                end
                if BREAKIT then break end
                wait(0.002)
            end
            for i,v in pairs(Rocks) do
                CParts[#CParts+1] = {v,tick()}
            end
            for i,v in pairs(Parts) do
                v:Destroy()
            end
            Parts = nil
            while true do
                local t = tick()
                local p = nil
                for i,v in pairs(CParts) do
                    if t-v[2] > 4 then
                        v[1].Transparency = v[1].Transparency+0.05
                        if v[1].Transparency >= 1 then
                            v[1]:Destroy()
                            CParts[i] = nil
                        end
                    end
                    p = v
                end
                if p == nil then break end
                wait(0.002)
            end
            for i,v in pairs(CParts) do
                v:Destroy()
            end
            CParts = {}
        end)
        for i = 1, 20 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(50), 0, math.rad(40)), 0.3)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(50), 0, math.rad(-40)), 0.3)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-30), 0, 0), 0.3)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -.7) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-40), 0, 0), 0.3)
					cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, -.2, 0) * CFrame.Angles (math.rad(40), math.rad(-20), math.rad(20)), 0.35)
            if Debounces.on == false then break end
            wait()
        end
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
-------------------------------
function Landing()
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)

    for i,v in pairs(FindNearestTorso(torso.CFrame.p,40))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,30))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,0.2,1)
            end
        part.Parent = nil
    end))
end
-------------------------------
mouse.KeyDown:connect(function(key)
    if key == "x" and stanceToggle=="Devil" then
hum.WalkSpeed = 0
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
            --[[x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445572"
            x.Looped = false
            x.Pitch = 1.1
            x.Volume = 1
            x:Play()
            x2 = Instance.new("Sound",char)
            x2.SoundId = "http://www.roblox.com/asset/?id=169380495"
            x2.Looped = false
            x2.Pitch = .7
            x2.Volume = 1
            wait(.1)
            x:Play()
            x2:Play()
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.3,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.4)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -1.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
            --cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.4)
            if Debounces.on == false then break end
                wait()
            x:Destroy()
            x2:Destroy()
            end
            wait(1)]]--
        local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.35
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = torso.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
            x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 1
            x:Play()
                coroutine.wrap(function()
                for i = 1, 60, 2 do
                rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
            hum.WalkSpeed = 50
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0,200000,0)
        BV.P = 50000
        BV.velocity = Vector3.new(0,800,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.6) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        --cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
x:Destroy()
BV:Destroy()
    --[[for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-10)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(10)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.2, -1) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.4, -.6) * CFrame.Angles(math.rad(-30), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end]]--
if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0), math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -0.8, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        --cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
end
Debounces.on = false
Debounces.NoIdl = false
local ry,ht,ps=nil,nil,nil
while ht==nil do
	ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-3,0),4.1,{char})
	wait()
end
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://142070127"
z.Volume = 1
wait(.1)
z:Play()
Landing()
hum.WalkSpeed = 16
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
    if key == "r" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				for i = 1, 20 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(130), 0, math.rad(40)), 0.3)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(130), 0, math.rad(-40)), 0.3)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), 0, 0), 0.3)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(50), 0, 0), 0.3)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, 0), 0.3)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.2, -.5) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
					cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, -.2, 0) * CFrame.Angles (math.rad(40), math.rad(0), math.rad(0)), 0.35)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				Debounces.Slashing = true
				z = Instance.new("Sound",hed)
				z.SoundId = "rbxassetid://206083107"
				z.Pitch = .75
				z.Volume = .65
				wait(0.1)
				z:Play()
				z1 = Instance.new("Sound", hed)
				z1.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
				z1.Pitch = ptz[math.random(1,#ptz)]
				z1.Volume = 1
				wait(.01)
				z1:Play()
				for i = 1, 20 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(50), 0, math.rad(40)), 0.3)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(50), 0, math.rad(-40)), 0.3)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-30), 0, 0), 0.3)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -.7) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-40), 0, 0), 0.3)
					cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, -.2, 0) * CFrame.Angles (math.rad(40), math.rad(-20), math.rad(20)), 0.35)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				Debounces.Slashing = false
				cor.Weld.C1 = CFrame.Angles(0,0,0)
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
    if key == "t" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.on = true
			Debounces.NoIdl = true
		for i = 1,20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(0)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(0)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, .4) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on==false then break end
			rs:wait(2)
		end
		for i = 1,20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(0)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(0)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -.4) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on==false then break end
			rs:wait(2)
		end
        if Debounces.CanAttack == false then
			Debounces.CanAttack = true
			Debounces.on = false
			Debounces.NoIdl = false
            end
        end
    end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
    if key == "g" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.Slashing = true
				for i = 1, 8 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-90)), 0.8)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(90)), 0.8)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 0), 0.8)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0), 0.8)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.8)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.8)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				for i = 1, 1440, 48 do
            		torso.Weld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(i), math.rad(0))
					rs:wait(4)
				end
				torso.Weld.C1 = CFrame.new(0, -1, 0)
				Debounces.Slashing = false
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
pt = {6.6, 6.8, 7, 7.2, 7.4}
mouse.KeyDown:connect(function(key)
    if key == "h" then
        if Debounces.CanJoke == true then
            Debounces.CanJoke = false
            u = Instance.new("Sound",char)
            u.SoundId = "http://www.roblox.com/asset/?id=261303790"
            u.Pitch = pt[math.random(1,#pt)]
            u.Volume = 1
            u2 = Instance.new("Sound",char)
            u2.SoundId = "http://www.roblox.com/asset/?id=261303790"
            u2.Pitch = u.Pitch
            u2.Volume = 1
            u3 = Instance.new("Sound",char)
            u3.SoundId = "http://www.roblox.com/asset/?id=261303790"
            u3.Pitch = u.Pitch
            u3.Volume = 1
            wait(.01)
            u:Play()
            u2:Play()
            u3:Play()
            wait(1.5)
            u:Destroy()
            u2:Destroy()
            u3:Destroy()
            if Debounces.CanJoke == false then
                Debounces.CanJoke = true
            end
        end
    end
end)
----------------------------------------------------
Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
        Debounces.on = true
        Debounces.NoIdl = true
		Debounces.ks = true
        if Grab == false then
        gp = nil
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-80)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-70),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
			    if Debounces.ks==true then
                z = Instance.new("Sound",hed)
                z.SoundId = "rbxassetid://169380525"
                z.Volume = 1
                z:Play()
                Debounces.ks=false
				end
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-1,1.5),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(-90),math.rad(180),0)
				stanceToggle = "Grabbed"
            --[[elseif hum1 == nil then
                con1:disconnect()
                wait() return]]--
            end
        end)
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(30),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-30), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
    con1:disconnect()
    Debounces.on = false
    Debounces.NoIdl = false
    elseif Grab == true then
        Grab = false
			--[[for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(60)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.5)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-60)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(70),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), 0), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end]]--
			for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(-50)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(-60),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
		Slam()
		if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
			end
		for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.4)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(20),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-60), math.rad(-30), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(80), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(70), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
		stanceToggle = "Normal"
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        ht=nil
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
-------------------------------
Sit = false
mouse.KeyDown:connect(function(key)
    if key == "v" then
        if Sit == false then
            Sit = true
            hum.WalkSpeed = 0.1
        stanceToggle = "Sitting"
    elseif Sit == true then
        Sit = false
            hum.WalkSpeed = 7
        stanceToggle = "Normal"
        end
    end
end)
-------------------------------
Melee = false
mouse.KeyDown:connect(function(key)
    if key == "m" then
        if Melee == false then
            Melee = true
			Vanish()
        stanceToggle = "Melee"
    elseif Melee == true then
        Melee = false
		Appear()
        stanceToggle = "Normal"
        end
    end
end)
-------------------------------
smashso = function(parent, pitch)
smash = Instance.new("Sound")
smash.Parent=parent
smash.SoundId="rbxassetid://193444173"
smash.Volume=100
smash.Pitch=pitch
wait(0.001)
smash:Play()
end
-------------------------------
devil = false
devilform = false
-------------------------------
Vanish()
-------------------------------
local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "SmoothPlastic"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Royal purple")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end
-------------------------------
hum.WalkSpeed=16
-------------------------------
wavesdev = function()
        if devilform == true then
                local wave = Instance.new("Part", torso)
                wave.BrickColor = BrickColor.new("Really red")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                wm.Scale = Vector3.new(2 + i*2, 2 + i*2, 2 + i*2)
                --wave.Size = wm.Scale
                fx.CFrame=char.Torso.CFrame
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                wait()
                end
                wait()
                wave:Destroy()
        end)()
        elseif devilform == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = torso.CFrame
end

Spawn(function()
	while wait(1) do
if devilform==true then
		wavesdev()
	end
end
end)

wait(4)

for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new("Institutional white")
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
end)()
-------------------------------
mouse.KeyDown:connect(function(key)
    if key == "n" then
        if devilform == false then
            devilform = true
                        devilcr()
			Vanish()
        stanceToggle = "Devil"
    elseif devilform == true then
        devilform = false
		Appear()
                normalcr()
        stanceToggle = "Normal"
        end
    end
end)
-------------------------------
Appear()
-------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
    	if Debounces.CanAttack == true then
			if stanceToggle ~= "Floating" then
				char.Humanoid.WalkSpeed = 60
				Burst()
				elseif Debounces.CanAttack == false then
					elseif stanceToggle == "Floating" then
				wait()
			end
        end
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 16
    end
end)
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local grab = false
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
--[[if stanceToggle == "Sitting" then
	if wait(math.random(1,2)) == 1 then
		stanceToggle = "Sitting2"
		wait(8)
		stanceToggle = "Sitting"
	end
end]]--
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if stanceToggle == "Normal" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(20)), 0.2)
cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/30),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20+2*math.cos(sine/30))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -.54) * CFrame.Angles(math.rad(88), 0, math.rad(48)), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-20), math.sin(sine/60)/3, 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(-6), 0, 0), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56), 0, 0), 0.3)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Normal" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(50),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(20)), 0.2)
elseif stanceToggle == "Melee" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -.54) * CFrame.Angles(math.rad(88), 0, math.rad(48)), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5-0.06*math.cos(sine/25), -.2) * CFrame.Angles(math.rad(0-20*math.cos(sine/25)/2), math.sin(sine/50)/2.4, 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(-6), 0, 0), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56), 0, 0), 0.3)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
elseif stanceToggle == "Devil" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
elseif stanceToggle == "Grabbed" then
grab = true
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),-.5)*CFrame.Angles(math.rad(130+4*math.cos(sine/14)),math.rad(0),math.rad(-60+4*math.cos(sine/14))), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(sine/14)),math.rad(70-4*math.cos(sine/14)),0), 0.3)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6, -math.sin(sine/8)/2.8)*CFrame.Angles(math.sin(sine/8)/4, -math.sin(sine/8)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Melee" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/4), math.sin(sine/8)/4) * CFrame.Angles(-math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(10+2*math.cos(sine/4))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/4), -math.sin(sine/8)/4)*CFrame.Angles(math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(-10-2*math.cos(sine/4))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Devil" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(sine/14)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(sine/13)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.2*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
elseif stanceToggle == "Grabbed" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-30)), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
end
elseif animpose == "Running" then
if stanceToggle == "Normal" then
change = 1
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles  (math.rad(44), math.rad (0), math.rad(0)), 0.15)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(sine/14), -1) * CFrame.Angles(math.rad(-  80),  math.rad(0), 0), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad  (0), math.rad(50),  math.rad(-40)), 0.15)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),   math.rad(-50),  math.rad(40)), 0.15)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(- 10)), .15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(10)),  .15)
cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles (math.rad(0), math.rad(-50), math.rad(0)), 0.35)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(sine/14), -.2) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
elseif stanceToggle == "Melee" then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles  (math.rad(44), math.rad (0), math.rad(0)), 0.15)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(sine/14), -1) * CFrame.Angles(math.rad(-  80),  math.rad(0), 0), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad  (0), math.rad(50),  math.rad(-40)), 0.15)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),   math.rad(-50),  math.rad(40)), 0.15)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(- 10)), .15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(10)),  .15)
cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles (math.rad(0), math.rad(-50), math.rad(0)), 0.35)
elseif stanceToggle == "Devil" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end
end)

hed.face.Texture = "rbxassetid://257837512"
----------------------------------------------------
p1 = Instance.new("Part",char)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(2, 2, 2)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p1)
SMesh.MeshId = "http://www.roblox.com/asset/?id=16627529"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p1
w1.C1 = CFrame.new(1.75514506e-005, -2.06990719, 0.00210596342, -0.999966383, -1.62210035e-005, -0.00820016116, -9.25059425e-008, 0.999998093, -0.00196684781, 0.00820017792, -0.00196678098, -0.999964535)
p2 = Instance.new("Part",char)
p2.BrickColor = BrickColor.new("Really black")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 1, 1)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p2)
SMesh.MeshId = "http://www.roblox.com/asset/?id=45916884"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 0.9, 1)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p2
w1.C1 = CFrame.new(0.00981426239, -1.86002111, 0.000148773193, 1, 4.98469959e-008, 4.58955765e-006, -4.98459833e-008, 1, -2.23582518e-007, -4.58955765e-006, 2.23582191e-007, 1)
p3 = Instance.new("Part",char)
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 1, 1)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p3)
SMesh.MeshId = "http://www.roblox.com/asset/?id=62246019"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1, 1)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p3
w1.C1 = CFrame.new(0.059677124, -1.98001814, -0.199489594, 0.99999994, 1.02864064e-008, 4.82797577e-006, -1.02842179e-008, 1, -4.61996478e-007, -4.82797577e-006, 4.61996365e-007, 0.99999994)
p4 = Instance.new("Part",char)
p4.BrickColor = BrickColor.new("Really black")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 1, 1)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p4)
SMesh.MeshId = "http://www.roblox.com/asset/?id=12259089"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1.02, 1.05, 1.05)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p4
w1.C1 = CFrame.new(0.0104255676, -1.94979095, 0.129776001, 0.99999994, -2.00533847e-008, 5.2192072e-006, -3.74953743e-007, 0.995037675, 0.0995008945, -4.8863717e-006, -0.0995009243, 0.995037436)
p5 = Instance.new("Part",char)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 1, 1)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p5)
SMesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1.6, 1.3)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p5
w1.C1 = CFrame.new(0.00938796997, -2.00957298, 1.44282532, 1, -1.34962974e-007, 5.35256595e-006, -3.26552458e-006, 0.729885638, 0.683569431, -3.88335775e-006, -0.68356967, 0.729885519)
p6 = Instance.new("Part",char)
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 1, 1)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p6)
SMesh.MeshId = "http://www.roblox.com/asset/?id=19326912"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1, 1)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p6
w1.C1 = CFrame.new(0.00993537903, -2.2400105, -0.079624176, 1.00000012, -2.98023064e-008, -1.54972145e-006, 2.980231e-008, 1, -4.94502617e-009, 1.54972145e-006, 4.94494401e-009, 1.00000012)
p7 = Instance.new("Part",char)
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 1, 1)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p7)
SMesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1.6, 1.3)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p7
w1.C1 = CFrame.new(0.0106649399, -0.774772644, 2.08788228, 1.00000012, -2.8618183e-007, 5.6622157e-006, -5.14644034e-006, 0.144699067, 0.989475727, -1.28374143e-006, -0.989476085, 0.144699216)
p8 = Instance.new("Part",char)
p8.BrickColor = BrickColor.new("Really black")
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 1, 1)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p8)
SMesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1.6, 1.3)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p8
w1.C1 = CFrame.new(0.0106649399, -0.774772644, 2.08788228, 1.00000012, -2.8618183e-007, 5.6622157e-006, -5.14644034e-006, 0.144699067, 0.989475727, -1.28374143e-006, -0.989476085, 0.144699216)
p9 = Instance.new("Part",char)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 1, 1)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p9)
SMesh.MeshId = "http://www.roblox.com/asset/?id=76056263"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1, 1)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p9
w1.C1 = CFrame.new(0.110746384, -1.71002722, -0.198999405, 0.999999881, 1.02863646e-008, 4.70876603e-006, -1.02842392e-008, 1, -4.61996422e-007, -4.70876603e-006, 4.61996336e-007, 0.999999881)
p10 = Instance.new("Part",char)
p10.BrickColor = BrickColor.new("Really black")
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 1, 1)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p10)
SMesh.MeshId = "http://www.roblox.com/asset/?id=16627529"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1.05, 1.05, 1.05)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p10
w1.C1 = CFrame.new(0.00981426239, -2.11002183, 0.000148773193, 1.00000012, 2.98023295e-008, 1.66892983e-006, -2.98023295e-008, 1, 4.94492847e-009, -1.66892983e-006, -4.94500441e-009, 1.00000012)

print"Absolute v7 loaded"

Spawn(function()
	while wait() do
		updateFly()
	end
end)

Spawn(function()
	while wait(.1) do
		Magik()	
	end
end)

Spawn(function()
	while wait(.1) do
		Magik2()	
	end
end)

Spawn(function()
	while wait(.1) do
		Magik3()	
	end
end)

Spawn(function()
	while wait(.1) do
		Magik4()	
	end
end)

Spawn(function()
	while wait(4) do
if stanceToggle==("Normal" or "Normal2") then
		GroundWave()
	end
end
end)

-----------------------------------------------------------------------------

function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    --[[Part0 = Vector3 (Start pos)
		Part1 = Vector3 (End pos)
		Times = number (Amount of lightning parts)
		Offset = number (Offset)
		Color = color (brickcolor value)
		Thickness = number (thickness)
		Trans = number (transparency)
    ]]--
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.BrickColor = BrickColor.new(Color)
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end

BodyParts = {} -- Parts to emit lightning effects from
for _, v in pairs(char.Genkadda:GetChildren()) do
    if v:IsA("Part") then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 15
	temp.Y = v.Size.Y/2 * 15
	temp.Z = v.Size.Z/2 * 15
	Bounding[v.Name] = temp
	--table.insert(Bounding, v.Name, temp)
end

while wait(0.001) do if stanceToggle=="Normal" then -- Emit the Lightning effects randomly, (math.random(1,10)/10) if you want original
        local ArmColor = MN.Color
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		--[[math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10 ]]
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/1000,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/1000,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/1000
)
	local Pos2 = Vector3.new(
		--[[math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10 ]]
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/1000,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/1000,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/1000
)
	local SPos1 = Body1.Position --Body1.Position + Pos1
	local SPos2 = Body2.Position --Body2.Position + Pos2
	--Lightning(SPos1, SPos2, 1, .5, ArmColor, .3, .56)
	Lightning(SPos1, SPos2, 1, .5, "Royal purple", .3, .56)
        --Lightning(SPos1, SPos2, 4, 3, "Really red", .3, .56)
end
end