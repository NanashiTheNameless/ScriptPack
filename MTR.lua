player = game:GetService("Players").LocalPlayer
char = player.Character
mouse = player:GetMouse()
idleq = false
local skl = false
parts = {}
poses = {}
local obj3
local TARG10
local TARG11




-------------------------GENERATION OF WEAPON
















Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


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

MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
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
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
TR1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TR1",Vector3.new(0.266768694, 0.54866457, 0.548664272))
TR1weld=weld(m,MN,TR1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548826218, 0.30154109, 4.57763672e-05, -0.000205519143, -0.0001726388, -1, -4.31765802e-05, 1, -0.00017263052, 1, 4.314119e-05, -0.000205526594))
mesh("SpecialMesh",TR1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.700000048, 0.700000048))
TR2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TR2",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR2weld=weld(m,MN,TR2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, 0.741921067, 0.198978901, 1.00000405, -2.92747281e-05, -1.7457176e-05, 2.37242784e-05, 0.965939343, -0.258769363, 2.44602561e-05, 0.25876832, 0.965943277))
mesh("SpecialMesh",TR2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
TR3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TR3",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR3weld=weld(m,MN,TR3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.603546381, 0.000186920166, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TR4",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR4weld=weld(m,MN,TR4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, 0.93274045, 0.000304222107, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TR5",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR5weld=weld(m,MN,TR5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
TR6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TR6",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR6weld=weld(m,MN,TR6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR6,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
MD21=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","MD21",Vector3.new(0.266768694, 0.54866457, 0.548664272))
MD21weld=weld(m,MN,MD21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548921585, 0.301375628, 0.000118255615, -0.000262488145, -9.39509191e-05, -1.00000393, -0.000154611655, 1, -9.38984886e-05, 1.00000393, 0.000154557638, -0.000262471847))
mesh("SpecialMesh",MD21,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.900000036, 0.900000036))
MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Handle",Vector3.new(1.03740847, 2.07481742, 1.03740823))
MNweld=weld(m,Character["Right Leg"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00872802734, 0.00284510851, -0.0114479065, 0.000559218752, 0.00461495388, -0.999989212, 0.0116515048, 0.999921441, 0.00462115649, 0.999931991, -0.0116539635, 0.000505403674))
FB1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB1",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB1weld=weld(m,MN,FB1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.466812134, -0.259373605, 4.19616699e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB10",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB10weld=weld(m,MN,FB10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-05, -0.907726586, -0.0001745224, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB11",Vector3.new(0.518704236, 0.778056443, 0.252201557))
FB11weld=weld(m,MN,FB11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 0.415454417))
FB12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB12",Vector3.new(1.03740847, 0.778056443, 1.03740823))
FB12weld=weld(m,MN,FB12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-05, 0.648371816, 1.38282776e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB2",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB2weld=weld(m,MN,FB2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB3",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB3weld=weld(m,MN,FB3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000141143799, -0.907841623, 0.725996017, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB4",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB4weld=weld(m,MN,FB4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000263214111, -0.495628834, 1.08177543, -1, -0.000208274461, -0.000166981248, -2.93208286e-05, 0.707433105, -0.706780434, 0.000265331706, -0.706780314, -0.707433105))
mesh("SpecialMesh",FB4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB5",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB5weld=weld(m,MN,FB5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB6",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB6weld=weld(m,MN,FB6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, 0.129679263, 3.29017639e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB7",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB7weld=weld(m,MN,FB7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.466838837, -0.259338915, -8.58306885e-06, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB8",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB8weld=weld(m,MN,FB8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000205993652, -0.764207125, 0.546924591, -0.999995053, -0.000121198129, -0.00017335522, -0.000163274352, 0.965882957, 0.258978456, 0.000135882699, 0.258978575, -0.96587801))
mesh("SpecialMesh",FB8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","FB9",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB9weld=weld(m,MN,FB9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00023651123, 0.648379326, -0.000217437744, -0.99999994, 0.00030120369, -0.00014261005, -0.000301247928, -0.999999821, 0.000302845408, -0.000142518838, 0.000302889268, 1))
mesh("SpecialMesh",FB9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
TN1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TN1",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN1weld=weld(m,MN,TN1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))
TN2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TN2",Vector3.new(0.518704236, 0.778056443, 0.252201557))
TN2weld=weld(m,MN,TN2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.899999917, 0.899999917, 0.419567823))
TN3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Maroon","TN3",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN3weld=weld(m,MN,TN3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))
TG1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Handle",Vector3.new(0.231713057, 0.953130603, 0.953130603))
TG1weld=weld(m,Character["HumanoidRootPart"],TG1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.042350769, 2.25753069, -2.74072218, -0.0144443018, -0.00148237997, 0.999894559, 0.138804898, -0.99031961, 0.000536966661, 0.990214407, 0.138798028, 0.0145102367))
mesh("SpecialMesh",TG1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
AM1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","AM1",Vector3.new(0.953130484, 0.238282651, 0.953130603))
AM1weld=weld(m,TG1,AM1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.24249268e-05, 0.166828156, 3.09944153e-05, -0.000157195085, 1, 9.1494876e-05, -0.99999994, -0.000157169881, -0.000279594213, -0.000279579312, -9.1555652e-05, 0.99999994))
mesh("SpecialMesh",AM1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P1weld=weld(m,TG1,P1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.911342621, 0.703609467, 0.114207745, 0.706984818, 0.683136642, 0.183021277, -0.707228661, 0.682939231, 0.182815671, -0.000104348175, -0.258685827, 0.965961576))
mesh("SpecialMesh",P1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P10weld=weld(m,TG1,P10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.00679016e-05, -0.524249077, 0.166728973, 0.000105811283, -0.000137583454, -1, 0.000479714101, -0.999999821, 0.000137644194, -0.999999821, -0.000479728915, -0.000105744228))
mesh("SpecialMesh",P10,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
P11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P11weld=weld(m,TG1,P11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.731900215, 0.270252228, -0.114115238, 0.258668154, 0.93309164, -0.249861524, -0.965966165, 0.249754369, -0.0673211813, -0.000412817113, 0.258771658, 0.965938509))
mesh("SpecialMesh",P11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P12",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P12weld=weld(m,TG1,P12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.731903076, 0.27022934, 0.114096642, 0.258535415, 0.933087707, 0.250022143, -0.966005266, 0.24975659, 0.066811718, -0.000106466934, -0.258798361, 0.965934813))
mesh("SpecialMesh",P12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P13",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P13weld=weld(m,TG1,P13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000140666962, -0.333644867, 0.357366562, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P13,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P14",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P14weld=weld(m,TG1,P14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.43051147e-06, -0.333572388, -0.119208813, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P14,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P15",Vector3.new(0.231713057, 0.953130603, 0.953130603))
P15weld=weld(m,TG1,P15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, 1.16415322e-10, -9.31322575e-10, 1.16415322e-10, 1, -1.79352355e-09, -9.31322575e-10, -1.79352355e-09, 1))
mesh("SpecialMesh",P15,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
P16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P16",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P16weld=weld(m,TG1,P16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000156879425, -0.524261951, 0.166660309, 0.000348402828, -0.99999994, -0.00028672372, 1.2637116e-05, -0.000286738126, 0.99999994, -0.999999881, -0.000348406611, 1.25393271e-05))
mesh("SpecialMesh",P16,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
P2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P2weld=weld(m,TG1,P2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114342928, -1.26896286, 0.703344345, -8.68691131e-05, 0.25868696, -0.965961158, -0.706778944, -0.683370173, -0.18294476, -0.707434416, 0.682705104, 0.182893887))
mesh("SpecialMesh",P2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P3",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P3weld=weld(m,TG1,P3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.9112854, 0.703716278, -0.114027977, 0.707162201, 0.682978034, -0.182929516, -0.707051754, 0.683040321, -0.183125019, -0.000122674741, 0.258839428, 0.965920746))
mesh("SpecialMesh",P3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P4",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P4weld=weld(m,TG1,P4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04713726, -0.0560836792, 0.589748383, -0.433230519, 0.499762714, 0.750031829, 0.249949813, 0.866157889, -0.432767093, -0.865926266, -1.81881187e-05, -0.500163496))
mesh("SpecialMesh",P4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P5",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P5weld=weld(m,TG1,P5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110613346, -1.25364304, 0.687784195, 2.46139243e-05, -0.258755654, -0.96594286, -0.706809103, -0.683316648, 0.183028057, -0.707404375, 0.682732642, -0.182907671))
mesh("SpecialMesh",P5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P6",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P6weld=weld(m,TG1,P6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0552225113, -0.590129852, 1.40441322, 0.249802664, 0.865931273, -0.433314741, 0.865909696, 0.000505216594, 0.500199974, 0.433357745, -0.50016278, -0.749692082))
mesh("SpecialMesh",P6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P7",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P7weld=weld(m,TG1,P7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.76527071, 0.166690826, 0.0566182137, 0.000211901963, -0.499973178, -0.866040885, -0.999999881, -0.000433116395, 5.36441803e-06, -0.000377777033, 0.866040766, -0.499973238))
mesh("SpecialMesh",P7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P8",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P8weld=weld(m,TG1,P8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.58035278e-05, -0.333610535, 0.11908865, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","P9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P9weld=weld(m,TG1,P9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.72340393e-05, -0.333576202, -0.357462883, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG2weld=weld(m,Character["HumanoidRootPart"],TG2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.76916337, -1.09253693, -3.17651272, -0.203467354, -0.97908175, 0.000212302519, 0.014012184, -0.00312875048, -0.999896944, 0.978981495, -0.203443378, 0.0143556716))
mesh("SpecialMesh",TG2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","AM2",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM2weld=weld(m,TG2,AM2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.64780426e-05, 2.43186951e-05, -0.000192319567, -1, -0.000198441558, 0.99999994, -0.000192359177, 0.000197284782, -0.000197345667, -0.000198401511, 1))
mesh("SpecialMesh",AM2,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
R1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R1",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R1weld=weld(m,TG2,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0134754181, -0.445617676, 1.47668266, 0.865856409, -0.250035048, -0.433330387, 0.000181133975, -0.865997136, 0.500049055, -0.500292599, -0.433049113, -0.749783754))
mesh("SpecialMesh",R1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R10",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R10weld=weld(m,TG2,R10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765271187, -0.000122070312, 0.0565447211, -0.49987632, 6.51674345e-05, -0.866096556, -0.000113177681, 0.999999881, 0.000140445307, 0.866096616, 0.000168018509, -0.49987638))
mesh("SpecialMesh",R10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R11weld=weld(m,TG2,R11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775099754, 0.109127045, -0.114162922, 0.93301934, -0.258937955, -0.249852076, 0.250070184, 0.965893984, -0.0671848729, 0.258727312, 0.000204227865, 0.965950489))
mesh("SpecialMesh",R11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R12",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R12weld=weld(m,TG2,R12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.5340271e-05, -0.166751862, -0.357446432, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R12,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R13",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R13weld=weld(m,TG2,R13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775063515, 0.109107971, 0.114238739, 0.933033288, -0.258907735, 0.249831468, 0.250103503, 0.96590209, 0.0669436976, -0.258645028, 2.30353326e-05, 0.965972483))
mesh("SpecialMesh",R13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R14",Vector3.new(0.231713057, 0.953130603, 0.953130603))
R14weld=weld(m,TG2,R14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 4.8160553e-05, 5.29289246e-05, -0.000261391891, -0.999999881, -0.000371804461, 0.99999994, -0.000261496811, 0.000282098801, -0.000282215682, -0.000371729024, 0.999999881))
mesh("SpecialMesh",R14,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
R15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R15",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R15weld=weld(m,TG2,R15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000193595886, -0.524248123, -0.000160217285, -1, -1.53651927e-05, -0.000401128491, -0.000401158031, -0.000155125745, 0.999999881, -1.54274312e-05, 1, 0.000155119225))
mesh("SpecialMesh",R15,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
R16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R16",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R16weld=weld(m,TG2,R16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.10623169e-06, -0.524226427, -0.000118255615, -1.7896502e-05, 3.39159742e-05, -1, -0.99999994, -0.00018825283, 1.79418876e-05, -0.000188252423, 1, 3.39206308e-05))
mesh("SpecialMesh",R16,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
R2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R2weld=weld(m,TG2,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110644341, -1.37159348, 0.569787979, -0.25872317, 0.000103516504, -0.965960801, -0.683125854, 0.706990838, 0.183048159, 0.68293786, 0.707234144, -0.182844043))
mesh("SpecialMesh",R2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R3",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R3weld=weld(m,TG2,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.11937332, -0.014339447, 0.445285797, 0.499887019, 0.432952553, 0.75011003, 0.866090596, -0.250205398, -0.432763666, 0.000315477257, 0.865996122, -0.500050545))
mesh("SpecialMesh",R3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R4",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R4weld=weld(m,TG2,R4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114369392, -1.38692093, 0.585348129, 0.258709073, 0.00012283586, -0.965955317, -0.683140814, 0.707019031, -0.182873711, 0.682926297, 0.707194507, 0.182996109))
mesh("SpecialMesh",R4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R5",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R5weld=weld(m,TG2,R5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02929306, 0.585784912, -0.114109039, 0.682771325, -0.707353652, -0.182959229, 0.683289289, 0.706859827, -0.182934627, 0.258725971, -0.000111560337, 0.965950847))
mesh("SpecialMesh",R5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R6",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R6weld=weld(m,TG2,R6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.6321106e-05, -0.166820526, 0.357390642, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R7",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R7weld=weld(m,TG2,R7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, -0.166748047, -0.11918807, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R8weld=weld(m,TG2,R8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02933121, 0.585668564, 0.114168167, 0.682898223, -0.707234383, 0.182947412, 0.683152735, 0.706979275, 0.182982892, -0.258751839, 2.23368406e-05, 0.965943873))
mesh("SpecialMesh",R8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","R9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R9weld=weld(m,TG2,R9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33786011e-05, -0.166786194, 0.119110346, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG3weld=weld(m,Character["HumanoidRootPart"],TG3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.31476164, 0.203437805, 2.80334663, -0.128740072, -0.991682827, 0.00021147728, 0.0140880942, -0.00204598904, -0.999902606, 0.991582751, -0.128720194, 0.0142298341))
mesh("SpecialMesh",TG3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM3=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","AM3",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM3weld=weld(m,TG3,AM3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.67164612e-05, 1.04904175e-05, -0.000191303392, -1.00000393, -0.000253161415, 1.00000441, -0.000187523692, 0.000130466695, -0.000134325906, -0.000248713419, 1.00000381))
mesh("SpecialMesh",AM3,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
B1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B1weld=weld(m,TG3,B1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.70809412, 0.00481796265, -0.0214853287, 0.53710258, -0.0329185463, -0.842881262, -0.0168763734, -0.999461472, 0.0282779075, -0.843353331, -0.00096894661, -0.537363231))
mesh("SpecialMesh",B1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B10weld=weld(m,TG3,B10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, -0.166755676, -0.119180202, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B10,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B11weld=weld(m,TG3,B11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775104523, 0.109054565, -0.114163399, 0.93302691, -0.258820474, -0.249937788, 0.249989182, 0.965924561, -0.0670276657, 0.258770257, 5.44674695e-05, 0.965937078))
mesh("SpecialMesh",B11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B12",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B12weld=weld(m,TG3,B12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.2479248e-05, -0.16677475, -0.357437134, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B12,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B13",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B13weld=weld(m,TG3,B13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.6321106e-05, -0.166809082, 0.357398033, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B13,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B14",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B14weld=weld(m,TG3,B14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775089264, 0.109050751, 0.114126205, 0.933031797, -0.258863419, 0.249890804, 0.250038087, 0.965917766, 0.0670325682, -0.258728862, -5.84023073e-05, 0.965954661))
mesh("SpecialMesh",B14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B15",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B15weld=weld(m,TG3,B15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000216007233, -0.524245262, -0.000152587891, -1.00000429, -3.11442855e-05, -0.000386493775, -0.000390294503, -0.000265599228, 1.00000381, -2.74346676e-05, 1.00000393, 0.000270009041))
mesh("SpecialMesh",B15,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
B16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B16",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B16weld=weld(m,TG3,B16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977258682, -0.0517673492, 0.351222992, -0.542918801, -0.399409056, 0.738729894, 0.839790225, -0.257581204, 0.47791937, -0.000600833155, 0.879847884, 0.475267261))
mesh("SpecialMesh",B16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B2weld=weld(m,TG3,B2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110642433, -1.37159348, 0.569799423, -0.258739293, 0.00030168239, -0.965950191, -0.683101058, 0.706977069, 0.183202252, 0.682960927, 0.707241893, -0.182715356))
mesh("SpecialMesh",B2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B3",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B3weld=weld(m,TG3,B3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114408493, -1.38694382, 0.585298538, 0.258632272, 0.000245507807, -0.965980828, -0.683182418, 0.707017481, -0.182730928, 0.682920158, 0.7072016, 0.183024958))
mesh("SpecialMesh",B3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B4",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B4weld=weld(m,TG3,B4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.14712524e-05, -0.524226665, -0.000114440918, -0.000117740456, 0.000170248561, -1.00000381, -1.00000441, -0.000197534246, 0.000121528283, -0.000193700951, 1.00000393, 0.000174695626))
mesh("SpecialMesh",B4,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
B5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B5",Vector3.new(0.231713057, 0.953130603, 0.953130603))
B5weld=weld(m,TG3,B5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.67164612e-05, 1.04904175e-05, -0.000191303392, -1.00000393, -0.000253161415, 1.00000441, -0.000187523692, 0.000130466695, -0.000134325906, -0.000248713419, 1.00000381))
mesh("SpecialMesh",B5,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
B6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B6",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B6weld=weld(m,TG3,B6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0746879578, -0.356079102, 1.3260231, -0.846059859, 0.246211126, -0.472827435, 0.0127377426, -0.877367735, -0.479661644, -0.532944143, -0.411842138, 0.73916626))
mesh("SpecialMesh",B6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B7",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B7weld=weld(m,TG3,B7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02930832, 0.585767746, -0.114040375, 0.682766974, -0.707316399, -0.183130339, 0.683257401, 0.706901014, -0.182916299, 0.258831084, -0.000232725404, 0.965924442))
mesh("SpecialMesh",B7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B8weld=weld(m,TG3,B8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02937317, 0.585603714, 0.114164352, 0.682955801, -0.707211196, 0.182828441, 0.683118403, 0.707007945, 0.183033586, -0.258707404, -0.000107087195, 0.965960801))
mesh("SpecialMesh",B8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","B9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B9weld=weld(m,TG3,B9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.24249268e-05, -0.166786194, 0.11911726, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG4weld=weld(m,Character["HumanoidRootPart"],TG4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.701898575, -1.07242584, 3.10196733, 0.247876227, -0.968791723, 0.000235861822, 0.0139541421, 0.00332688913, -0.999897122, 0.968691289, 0.247854009, 0.0143433129))
mesh("SpecialMesh",TG4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM4=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","AM4",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM4weld=weld(m,TG4,AM4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 5.14984131e-05, 2.57492065e-05, -0.000262918446, -0.99999994, -0.000245724805, 1, -0.000262905785, -5.22979026e-05, 5.22422997e-05, -0.000245738775, 1))
mesh("SpecialMesh",AM4,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
Q1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q1weld=weld(m,TG4,Q1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02936554, 0.58564949, 0.114022255, 0.682914674, -0.707203865, 0.183003649, 0.683140576, 0.707009733, 0.182910576, -0.258740425, 0.000104899518, 0.965946913))
mesh("SpecialMesh",Q1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q10weld=weld(m,TG4,Q10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.91278076e-05, -0.524228096, -0.00012588501, -0.000225846947, 8.19889829e-05, -1.00000644, -1.00000012, -0.000232773818, 0.000224219271, -0.000232745646, 1.00000644, 8.20420682e-05))
mesh("SpecialMesh",Q10,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
Q11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q11",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q11weld=weld(m,TG4,Q11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0746479034, -0.356128693, 1.32600975, -0.846081793, 0.246080905, -0.472852886, 0.0128138652, -0.877419651, -0.479552537, -0.532899082, -0.411799699, 0.739215553))
mesh("SpecialMesh",Q11,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q12",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q12weld=weld(m,TG4,Q12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977277756, -0.0517272949, 0.351173401, -0.542923808, -0.399282485, 0.73878783, 0.839781821, -0.257620722, 0.477910042, -0.000494024833, 0.87988919, 0.47517857))
mesh("SpecialMesh",Q12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q13",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q13weld=weld(m,TG4,Q13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708095074, 0.00480651855, -0.0214424133, 0.537001133, -0.0329830386, -0.842936516, -0.016877139, -0.999455392, 0.0283556767, -0.843412697, -0.0010006763, -0.53726542))
mesh("SpecialMesh",Q13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q14",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q14weld=weld(m,TG4,Q14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110631943, -1.37159348, 0.569797516, -0.258814424, 0.000158959068, -0.965927124, -0.683109343, 0.706977546, 0.183151439, 0.682917833, 0.707235932, -0.182867393))
mesh("SpecialMesh",Q14,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q15",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q15weld=weld(m,TG4,Q15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114351273, -1.38692474, 0.585363388, 0.258614838, 0.000151800923, -0.965980589, -0.68317169, 0.707010865, -0.182789415, 0.682931006, 0.707202673, 0.182947218))
mesh("SpecialMesh",Q15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q16",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q16weld=weld(m,TG4,Q16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02927017, 0.585828781, -0.1140728, 0.682736814, -0.707362711, -0.183043808, 0.683264673, 0.706848323, -0.183054447, 0.258872002, -9.22912732e-05, 0.965909958))
mesh("SpecialMesh",Q16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q2",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q2weld=weld(m,TG4,Q2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.95639038e-05, -0.166786194, 0.119113445, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q3",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q3weld=weld(m,TG4,Q3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.57492065e-05, -0.166748047, -0.119185925, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q4",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q4weld=weld(m,TG4,Q4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775097847, 0.109146118, -0.114173889, 0.932992756, -0.258940458, -0.249948949, 0.250075579, 0.965893269, -0.0671743006, 0.258818179, 0.000166995451, 0.965926051))
mesh("SpecialMesh",Q4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q5",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q5weld=weld(m,TG4,Q5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.91549683e-05, -0.166755676, -0.357444286, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q6",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q6weld=weld(m,TG4,Q6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.44137573e-05, -0.166820526, 0.357393742, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q7",Vector3.new(0.231713057, 0.953130603, 0.953130603))
Q7weld=weld(m,TG4,Q7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 5.14984131e-05, 2.57492065e-05, -0.000262918446, -0.99999994, -0.000245724805, 1, -0.000262905785, -5.22979026e-05, 5.22422997e-05, -0.000245738775, 1))
mesh("SpecialMesh",Q7,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
Q8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q8weld=weld(m,TG4,Q8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.77507782, 0.109096527, 0.11418438, 0.933048368, -0.258882731, 0.249801114, 0.250101715, 0.965908766, 0.0668535084, -0.258592248, 9.8134391e-05, 0.965986609))
mesh("SpecialMesh",Q8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Q9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q9weld=weld(m,TG4,Q9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000154495239, -0.524244308, -0.000152587891, -1, -2.11830047e-05, -0.000211575112, -0.000211558785, -0.000157893635, 1, -2.12165178e-05, 0.99999994, 0.00015788991))
mesh("SpecialMesh",Q9,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))


















--------------------------------------TURN ON AND OFF 
local edit = function(name,mat,col)
name.Material = mat
name.BrickColor = BrickColor.new(col)
end

local tog = function()
edit(TR1,"Neon","Really red")
edit(TR2,"Neon","Really red")
edit(TR3,"Neon","Really red")
edit(TR4,"Neon","Really red")
edit(TR5,"Neon","Really red")
edit(TR6,"Neon","Really red")
edit(TR7,"Neon","Really red")
--
edit(TN1,"Neon","Really red")
edit(TN2,"Neon","Really red")
edit(TN3,"Neon","Really red")

end
local tofg = function()
edit(TR1,"SmoothPlastic","Maroon")
edit(TR2,"SmoothPlastic","Maroon")
edit(TR3,"SmoothPlastic","Maroon")
edit(TR4,"SmoothPlastic","Maroon")
edit(TR5,"SmoothPlastic","Maroon")
edit(TR6,"SmoothPlastic","Maroon")
edit(TR7,"SmoothPlastic","Maroon")
--
edit(TN1,"SmoothPlastic","Maroon")
edit(TN2,"SmoothPlastic","Maroon")
edit(TN3,"SmoothPlastic","Maroon")
end




----------------------------------------------------------------
stun = Instance.new("BoolValue",char)
stun.Name = "Stunned"
stun.Value = false
atk = Instance.new("NumberValue",char)
atk.Name = "Attack"
atk.Value = .9
def = Instance.new("NumberValue",char)
def.Name = "Defense"
def.Value = .8
spd = Instance.new("NumberValue",char)
spd.Name = "Speed"
spd.Value = 1.1
deft = Instance.new("NumberValue",char)
deft.Name = "DefenseTime"
deft.Value = 0
atkt = Instance.new("NumberValue",char)
atkt.Name = "AttackTime"
atkt.Value = 0
spdt = Instance.new("NumberValue",char)
spdt.Name = "SpeedTime"
spdt.Value = 0



bl = Instance.new("BoolValue",char)
bl.Name = "Blocking"
bl.Value = false

bll = Instance.new("BoolValue",char)
bll.Name = "BlockingLabel"
bll.Value = false

blt = Instance.new("NumberValue",char)
blt.Name = "BlockingLeft"
blt.Value = 50


pb = Instance.new("BoolValue",char)
pb.Name = "PauseBlock"
pb.Value = false
blm = 100

gd = Instance.new("BoolValue",char)
gd.Name = "Ground"

local TARG7
local obj
local TARG8
local obj2
for i,v in pairs (char:GetChildren())do
if v.ClassName == "Weld" then
v:destroy()
end
end
----OPEN
local tr = char:WaitForChild("Torso")
local lr = char:WaitForChild("Left Arm")
local ra = char:WaitForChild("Right Arm")

local s1 = Instance.new("Sound",char.Head)
s1.Volume = 1
s1.SoundId = "rbxassetid://419372077"
s1.Pitch = 1.0
local s2 = Instance.new("Sound",char.Head)
s2.Volume = 1
s2.SoundId = "rbxassetid://419378177"
local s3 = Instance.new("Sound",char.Head)
s3.Volume = 1
s3.SoundId = "rbxassetid://"
local s4 = Instance.new("Sound",char.Head)
s4.Volume = 1
s4.SoundId = "rbxassetid://"
local s5 = Instance.new("Sound",char.Head)
s5.Volume = 1
s5.SoundId = "rbxassetid://"
--WELDS --
local w3 = Instance.new("Weld",char)
run = game:GetService("RunService")
w3.Part0 = lr
w3.Part1 = tr
w3.C0 = CFrame.new(1.5,0,0)
 
local w4= Instance.new("Weld",char)
w4.Part0 = ra
w4.Part1 = tr
w4.C0 = CFrame.new(-1.5,0,0)

local nc = Instance.new("Weld",char)
nc.Part0 = char.Torso
nc.Part1 = char.Head
nc.C0 = CFrame.new(0,1.5,0)

local ll = Instance.new("Weld",char)
ll.Part0 = char.Torso
ll.Part1 = char["Left Leg"]
ll.C0 = CFrame.new(-.5,-2,0)

local rl = Instance.new("Weld",char)
rl.Part0 = char.Torso
rl.Part1 = char["Right Leg"]
rl.C0 = CFrame.new(.5,-2,0)

local ts = Instance.new("Weld",char)
ts.Part0 = char.HumanoidRootPart
ts.Part1 = char.Torso
ts.C0 = CFrame.new(0,0,0)* CFrame.Angles(0,0,0)
--MAKE AND UNDO WELDS

turnonwelds = function()
w3.Part1 = tr
w4.Part1 = tr
nc.Part1 = char.Head
ll.Part1 = char["Left Leg"]
rl.Part1 = char["Right Leg"]
end
turnoffwelds = function()
	w3.Part1 = nil
w4.Part1 = nil
nc.Part1 = nil
ll.Part1 = nil
rl.Part1 = nil
end

turnoffwelds()
----LERP POSES
------- CFRAMES FOR LERP

local walk = {
--Left
ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)), --  LEFT LEG
rl.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)), -- RIGHT LEG
--Right
ll.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)), --  LEFT LEG
rl.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(0)), -- RIGHT LEG
-----------------------------------------------------------------------------------------------
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-15),0,0) , -- Torso Tilt
nc.C0  * CFrame.Angles(math.rad(10),math.rad(0),0), -- HEAD TILT UP
w4.C0 * CFrame.new(0,.5,.2) * CFrame.Angles(math.rad(30),math.rad(10),math.rad(-20)), --  ARM MOVEMENT
w3.C0 * CFrame.new(0,.5,.2) * CFrame.Angles(math.rad(30),math.rad(-10),math.rad(20)) -- ARM MOVEMENT

}
local equip = {
nc.C0  * CFrame.Angles(math.rad(-10),math.rad(0),0), -- HEAD BOB EQUIP
w3.C0 * CFrame.new(-1.1,-.1,-1.2) * CFrame.Angles(math.rad(-160),0,math.rad(90)), -- LEFT ARM FOLD
w4.C0 * CFrame.new(1.1,-.2,-1.2) * CFrame.Angles(math.rad(-160),0,math.rad(-90)) -- RIGHT ARM FOLD
}
local idle = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0), -- TORSO TILT
nc.C0  * CFrame.Angles(0,math.rad(0),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(-.3,-.2,0) * CFrame.Angles(math.rad(30),math.rad(-20),math.rad(-10)),  -- LEFT ARM Idle
w4.C0 * CFrame.new(.3,0,0) * CFrame.Angles(math.rad(30),math.rad(20),math.rad(10)), -- RIGHT ARM Idle w4.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-100),math.rad(-30),math.rad(-30))
}
local PA1 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),math.rad(40),math.rad(30)), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(20),math.rad(30),math.rad(-10)), -- LEFT LEG PUNCH1
rl.C0 * CFrame.new(0,-.05,-.5) * CFrame.Angles(math.rad(20),math.rad(-30),math.rad(10)), -- RIGHT LEG PUNCH
nc.C0  * CFrame.Angles(math.rad(-7),math.rad(20),0), -- HEAD BOB PUNCH 
w3.C0 * CFrame.new(0,.6,0) * CFrame.Angles(math.rad(30),0,math.rad(20)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-100),math.rad(-20),math.rad(-30)), -- RIGHT ARM
}
local PA2 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(-35),0), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-5),math.rad(30),math.rad(-10)), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(5),math.rad(-30),math.rad(10)), -- RIGHT LEG Idle
CFrame.new(0,1.5,0)* CFrame.Angles(math.rad(20),math.rad(20),0), -- HEAD BOB PUNCH 
w4.C0 * CFrame.new(0,1,0) * CFrame.Angles(math.rad(30),0,math.rad(-40)), -- LEFT ARM Idle
w3.C0 * CFrame.new(-.5,1.5,-.3) * CFrame.Angles(math.rad(-150),0,math.rad(-10)), -- RIGHT ARM Idle
}
local PA3 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-15),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(.4,1,.7) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(-50)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(-.3,1.5,0) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(50)), -- RIGHT ARM PUNCH 3
ll.C0 * CFrame.new(-.3,0,.3) * CFrame.Angles(math.rad(-20),math.rad(30),math.rad(-10)), -- LEFT LEG 
rl.C0 * CFrame.new(0,1,-.5) * CFrame.Angles(math.rad(-40),0,math.rad(0)), -- RIGHT LEG Idle
}
local PA4 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(60),math.rad(-60),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-25),math.rad(50),0), -- HEAD BOB PUNCH 
w4.C0 * CFrame.new(.4,1,.7) * CFrame.Angles(math.rad(50),0,math.rad(-70)), -- LEFT ARM PUNCH 3	
w3.C0 * CFrame.new(-1.2,-.2,1) * CFrame.Angles(math.rad(-40),math.rad(20),math.rad(-50)), -- RIGHT ARM PUNCH 3
ll.C0 * CFrame.new(-1.0,.5,0) * CFrame.Angles(0,math.rad(0),math.rad(-30)), -- LEFT LEG 
rl.C0 * CFrame.new(1,.5,.5) * CFrame.Angles(0,math.rad(-20),math.rad(40)), -- RIGHT LEG Idle
}
local jump = {
nc.C0  * CFrame.Angles(math.rad(20),0,0), -- HEAD BOB EQUIP
w4.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(-30)), -- LEFT ARM Idle
w3.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(30)), -- RIGHT ARM Idle	
ll.C0 * CFrame.new(-.3,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.3,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
}
local stunned = {
nc.C0  * CFrame.Angles(0,math.rad(90),0), -- HEAD BOB EQUIP
w4.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(-50)), -- LEFT ARM Idle
w3.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(50)), -- RIGHT ARM Idle	
ll.C0 * CFrame.new(-.3,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.3,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
ts.C0 * CFrame.new(0,-2.5,0) * CFrame.Angles(math.rad(90),0,0), -- TORSO TILT			
}
local PA1C = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),math.rad(-40),math.rad(-30)), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(20),math.rad(30),math.rad(-10)), -- LEFT LEG PUNCH1
rl.C0 * CFrame.new(0,-.05,-.5) * CFrame.Angles(math.rad(20),math.rad(-30),math.rad(10)), -- RIGHT LEG PUNCH
nc.C0  * CFrame.Angles(math.rad(-7),math.rad(-20),0), -- HEAD BOB PUNCH 
w3.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-100),math.rad(40),math.rad(30)), -- RIGHT ARM
w4.C0 * CFrame.new(0,.6,0) * CFrame.Angles(math.rad(30),0,math.rad(-20)), -- LEFT ARM Idle
}
local Stomp = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.Angles(math.rad(-13),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
rl.C0 * CFrame.new(0,.6,-.6) * CFrame.Angles(math.rad(-0),0,math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(30)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(-30)), -- RIGHT ARM Idle	
}
local Stomp2 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.Angles(math.rad(-25),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
rl.C0 * CFrame.new(0,0,-.6) * CFrame.Angles(math.rad(-0),0,math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(35)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(-35)), -- RIGHT ARM Idle	
}
local dropkick = {
ts.C0 * CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(45),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,-.2) *  CFrame.Angles(math.rad(-30),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.2,0,-.3) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), -- LEFT LEG 
rl.C0 * CFrame.new(-.05,0,0) * CFrame.Angles(math.rad(00),math.rad(20),math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(-2.7,1.5,0) * CFrame.Angles(math.rad(0),0,math.rad(170)), -- LEFT ARM Idle
w4.C0 * CFrame.new(2.7,1.5,0) * CFrame.Angles(math.rad(0),0,math.rad(-160)), -- RIGHT ARM Idle	
}
local block  = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(math.rad(-9),math.rad(-0),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- RIGHT LEG Idle
w3.C0 * CFrame.new(-.8,1.3,-.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(.8,1.3,-.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local sjump = {
ts.C0 * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-10),0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(math.rad(-15),math.rad(-0),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,.4,.8) * CFrame.Angles(math.rad(-70),0,0), -- LEFT LEG idle
rl.C0 * CFrame.new(0,.8,-.5) * CFrame.Angles(math.rad(-10),0,0), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.5,.5) * CFrame.Angles(math.rad(-50),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local UpSideDownPunch = {
ts.C0 * CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(180),0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(0,0,0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.4,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.4,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,1.7,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,1.7,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local BackBreaker = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-15),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(0,.1,.3) * CFrame.Angles(math.rad(-90),math.rad(-00),math.rad(0)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(0,.5,.5) * CFrame.Angles(math.rad(-90),math.rad(20),math.rad(0)), -- LEFT ARM PUNCH 3
ll.C0 * CFrame.new(-.3,0,.3) * CFrame.Angles(math.rad(-20),math.rad(30),math.rad(-10)), -- LEFT LEG 
rl.C0 * CFrame.new(-.2,1,-.5) * CFrame.Angles(math.rad(-40),0,math.rad(0)), -- RIGHT LEG Idle
}
local FrontFlipKick1 = {
	ts.C0 * CFrame.new(0,2,0) * CFrame.Angles(math.rad(-8),math.rad(0),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-15),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(0,1,-.3) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(0,1,-.3) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), -- LEFT ARM PUNCH 3
ll.C0 * CFrame.new(0,1,1) * CFrame.Angles(math.rad(-110),0,math.rad(0)), -- RIGHT LEG Idle
rl.C0 * CFrame.new(0,1,-1) * CFrame.Angles(math.rad(110),0,math.rad(0)), -- RIGHT LEG Idle
}
--[[for i = 0,1,wait() do
wait()
ts.C0 = ts.C0:lerp(FrontFlipKick1[1],.4)
nc.C0 = nc.C0:lerp(FrontFlipKick1[2],.4)
ll.C0 = ll.C0:lerp(FrontFlipKick1[5],.4)
rl.C0 = rl.C0:lerp(FrontFlipKick1[6],.4)
w3.C0 = w3.C0:lerp(FrontFlipKick1[4],.4)
w4.C0 = w4.C0:lerp(FrontFlipKick1[3],.4)
end--]]

--[[
--END
ts.C0 = ts.C0:lerp(UpSideDownPunch[1],.4)
nc.C0 = nc.C0:lerp(UpSideDownPunch[2],.4)
ll.C0 = ll.C0:lerp(UpSideDownPunch[3],.4)
rl.C0 = rl.C0:lerp(UpSideDownPunch[4],.4)
w3.C0 = w3.C0:lerp(UpSideDownPunch[5],.4)
w4.C0 = w4.C0:lerp(UpSideDownPunch[6],.4)
--START
ts.C0 = ts.C0:lerp(sjump[1],.4)
nc.C0 = nc.C0:lerp(sjump[2],.4)
ll.C0 = ll.C0:lerp(sjump[3],.4)
rl.C0 = rl.C0:lerp(sjump[4],.4)
w3.C0 = w3.C0:lerp(sjump[5],.4)
w4.C0 = w4.C0:lerp(sjump[6],.4)
--]]
-- CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
------------------------------------CLASS UI  ------------------------------------



f = Instance.new("ScreenGui",player.PlayerGui)
f.Name = "UI"

f1 = Instance.new("Frame",f)
f1.BorderSizePixel = 0
f1.BackgroundColor3 = Color3.new(0,0,0)
f1.Size = UDim2.new(0.3,0,0.05,0)
f1.Position = UDim2.new(0.2,0,0.84,0)

f1f = Instance.new("Frame",f1)
f1f.BorderSizePixel = 0
f1f.BackgroundColor3 = Color3.new(255,255,255)
f1f.Size = UDim2.new(1,0,1,0)

f1l = Instance.new("TextLabel",f1)
f1l.TextScaled = true
f1l.TextStrokeTransparency = 0
f1l.BackgroundTransparency  = 1
f1l.TextColor3 = Color3.new(255,255,255)
f1l.BorderSizePixel = 0
f1l.Size = UDim2.new(1,0,1,0)
f1l.Text = "[Z] Front Blaster"


f2 = Instance.new("Frame",f)
f2.BorderSizePixel = 0
f2.BackgroundColor3 = Color3.new(0,0,0)
f2.Size = UDim2.new(0.3,0,0.05,0)
f2.Position = UDim2.new(0.52, 0,0.84, 0)

f2f = Instance.new("Frame",f2)
f2f.BorderSizePixel = 0
f2f.BackgroundColor3 = Color3.new(255,255,255)
f2f.Size = UDim2.new(1,0,1,0)

f2l = Instance.new("TextLabel",f2)
f2l.TextScaled = true
f2l.TextStrokeTransparency = 0
f2l.BackgroundTransparency  = 1
f2l.TextColor3 = Color3.new(255,255,255)
f2l.BorderSizePixel = 0
f2l.Size = UDim2.new(1,0,1,0)
f2l.Text = "[X] Gauntlet Electrocution"


f3 = Instance.new("Frame",f)
f3.BorderSizePixel = 0
f3.BackgroundColor3 = Color3.new(0,0,0)
f3.Size = UDim2.new(0.3,0,0.05,0)
f3.Position = UDim2.new(0.2,0,0.9,0)

f3f = Instance.new("Frame",f3)
f3f.BorderSizePixel = 0
f3f.BackgroundColor3 = Color3.new(255,255,255)
f3f.Size = UDim2.new(1,0,1,0)

f3l = Instance.new("TextLabel",f3)
f3l.TextScaled = true
f3l.TextStrokeTransparency = 0
f3l.BackgroundTransparency  = 1
f3l.TextColor3 = Color3.new(255,255,255)
f3l.BorderSizePixel = 0
f3l.Size = UDim2.new(1,0,1,0)
f3l.Text = "[C] Mobile Shield"


f4 = Instance.new("Frame",f)
f4.BorderSizePixel = 0
f4.BackgroundColor3 = Color3.new(0,0,0)
f4.Size = UDim2.new(0.3,0,0.05,0)
f4.Position = UDim2.new(.52,0,.9,0)

f4f = Instance.new("Frame",f4)
f4f.BorderSizePixel = 0
f4f.BackgroundColor3 = Color3.new(255,255,255)
f4f.Size = UDim2.new(1,0,1,0)

f4l = Instance.new("TextLabel",f4)
f4l.TextScaled = true
f4l.TextStrokeTransparency = 0
f4l.BackgroundTransparency  = 1
f4l.TextColor3 = Color3.new(255,255,255)
f4l.BorderSizePixel = 0
f4l.Size = UDim2.new(1,0,1,0)
f4l.Text = "[V] Bone Extractor "


---HEALTH BAR

f5 = Instance.new("Frame",f)
f5.BorderSizePixel = 0
f5.BackgroundColor3 = Color3.new(255,255,255)
f5.Size = UDim2.new(0.3,0,0.03,0)
f5.Position = UDim2.new(.52,0,.8,0)

f5f = Instance.new("Frame",f5)
f5f.BorderSizePixel = 0
f5f.BackgroundColor3 = Color3.new(0,255,0)
f5f.Size = UDim2.new(1,0,1,0)

f5l = Instance.new("TextLabel",f5)
f5l.TextScaled = true
f5l.TextStrokeTransparency = 0
f5l.BackgroundTransparency  = 1
f5l.TextColor3 = Color3.new(255,255,255)
f5l.BorderSizePixel = 0
f5l.Size = UDim2.new(1,0,1,0)
f5l.Text = "Health"


---ENERGY BAR

f6 = Instance.new("Frame",f)
f6.BorderSizePixel = 0
f6.BackgroundColor3 = Color3.new(255,255,255)
f6.Size = UDim2.new(0.3,0,0.03,0)
f6.Position = UDim2.new(.2,0,.8,0)

f6f = Instance.new("Frame",f6)
f6f.BorderSizePixel = 0
f6f.BackgroundColor3 = BrickColor.new("Bright bluish green").Color
f6f.Size = UDim2.new(1,0,1,0)

f6l = Instance.new("TextLabel",f6)
f6l.TextScaled = true
f6l.TextStrokeTransparency = 0
f6l.BackgroundTransparency  = 1
f6l.TextColor3 = Color3.new(255,255,255)
f6l.BorderSizePixel = 0
f6l.Size = UDim2.new(1,0,1,0)
f6l.Text = "Tech"

------------ATK 
fa = Instance.new("TextLabel",f)
fa.TextScaled = true
fa.TextStrokeTransparency = 0
fa.BackgroundTransparency  = .5
fa.BackgroundColor3 = Color3.new(0,0,0)
fa.TextColor3 = Color3.new(255,0,0)
fa.BorderSizePixel = 0
fa.Size = UDim2.new(.2,0,0.05,0)
fa.Position = UDim2.new(0.2,0,0.74,0)
fa.Text = "Attack : 1"
------------SPD 
fa2 = Instance.new("TextLabel",f)
fa2.TextScaled = true
fa2.TextStrokeTransparency = 0
fa2.BackgroundTransparency  = .5
fa2.BackgroundColor3 = Color3.new(0,0,0)
fa2.TextColor3 = Color3.new(0,255,0)
fa2.BorderSizePixel = 0
fa2.Size = UDim2.new(.2,0,0.05,0)
fa2.Position = UDim2.new(0.41,0,0.74,0)
fa2.Text = "Speed : 1"
------------DEF 
fa3 = Instance.new("TextLabel",f)
fa3.TextScaled = true
fa3.TextStrokeTransparency = 0
fa3.BackgroundTransparency  = .5
fa3.BackgroundColor3 = Color3.new(0,0,0)
fa3.TextColor3 = Color3.new(0,0,255)
fa3.BorderSizePixel = 0
fa3.Size = UDim2.new(.2,0,0.05,0)
fa3.Position = UDim2.new(0.62,0,0.74,0)
fa3.Text = "Defense : 1"
-------------------CLASS VARS--------------------------
S1 = true
S1T = 0
S1TF = 7
S2 = true
S2T = 0
S2TF = 15
S3 = true
S3T = 0
S3TF = 12
S4 = true
S4T = 0
S4TF = 30
energy = 0
------------------------------------EXTRA WELDS AREA ------------------------------------





----EQUIP FUNCTION
local Close1 = CFrame.new(1.5,0,0)
local Close2 = CFrame.new(-1.5,0,0)
local Speed = 0.3
local Open4 = w4.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(-30))
local h1 = nc.C0  * CFrame.Angles(math.rad(20),math.rad(-30),0)
local h2 = CFrame.new(0,1.5,0)
local h3 = nc.C0  * CFrame.Angles(math.rad(-20),math.rad(30),0)
--leg anims
local opend = false
local current = true




	turnonwelds()
	tog()
opend = true


---------------------------------------------------------------------------------------
----DAMAGE UI N DMG
local DGU = function(p,txt)
s2:Play()
local par = Instance.new("Part",game.Workspace)
par.Transparency = 1
par.Anchored = true
par.CFrame = p.CFrame
par.CanCollide = false
game.Debris:AddItem(par,10)
local f = Instance.new("BillboardGui",par)
f.Size = UDim2.new(1.2,0,1.2,0)
f.AlwaysOnTop = true
f.StudsOffset = Vector3.new(0,2,0)
local fr = Instance.new("Frame",f)
fr.BackgroundTransparency = 1
fr.Size = UDim2.new(1,0,1,0)
fr.ClipsDescendants = true
local fe = Instance.new("TextLabel",fr)
fe.Size = UDim2.new(1,0,1,0)
fe.BackgroundTransparency = 1
fe.TextColor3 = BrickColor.new("Bright yellow").Color
fe.TextStrokeTransparency = 0
fe.Text = txt
fe.TextScaled = true
fe.Font = "Legacy"
fe.Position = UDim2.new(0,0,1,0)
fe:TweenPosition(UDim2.new(0,0,0,0),"In","Linear",.5)
wait(2)
fe:TweenPosition(UDim2.new(0,0,-1,0),"In","Linear",.4)
for i = 0,10 do
wait()
fe.TextTransparency = fe.TextTransparency + .1
end
end



makeui = function(color,txt)
	local par = Instance.new("Part",game.Workspace)
par.Transparency = 1
par.Anchored = true
par.CFrame = char.Head.CFrame
par.CanCollide = false
game.Debris:AddItem(par,10)
local f = Instance.new("BillboardGui",par)
f.Size = UDim2.new(1.2,0,1.2,0)
f.AlwaysOnTop = true
f.StudsOffset = Vector3.new(0,4,0)
local fr = Instance.new("Frame",f)
fr.BackgroundTransparency = 1
fr.Size = UDim2.new(2,0,2,0)
fr.ClipsDescendants = true
local fe = Instance.new("TextLabel",fr)
fe.Size = UDim2.new(1,0,1,0)
fe.BackgroundTransparency = 1
fe.TextColor3 = Color3.new(255,255,255)
fe.TextStrokeTransparency = 0
fe.Text = txt
fe.TextScaled = true
fe.Font = "SourceSansBold"
game.Debris:AddItem(f,4)
fe.Position = UDim2.new(0,0,1,0)
fe:TweenPosition(UDim2.new(0,0,0,0),"In","Linear",.5)
wait(2)
fe:TweenPosition(UDim2.new(0,0,-1,0),"In","Linear",.4)
for i = 0,10 do
wait()
fe.TextTransparency = fe.TextTransparency + .1
end
end
----TARG
local TARG1
local TARG2
local TARG3
local TARG4
local TARG5
local TARG6
local IdleAndWalk = false


--------------SKILL/KEY EVENTS
--------------MOUSE EVENTS , ATTACKS
local wpb = true
local num = 1
mouse.Button1Down:connect(function()
if current == true and idleq == false and opend == true and wpb == true and stun.Value == false and bl.Value == false then
local fs 

if num == 1 then
wpb = false
current = false
fr = true
char["Right Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(5,11) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(5,11) * atk.Value)
end

if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait()  wait() hit.Parent.BlockingLeft.Value = 5 wait()  wait() hit.Parent.PauseBlock.Value = false
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
s1.Pitch = 1
s1:Play()
wait(.1)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.1)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.1)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.1)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num = num +1 
return 
end
if num == 2 then
wpb = false
current = false
fr = true
char["Left Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(5,11) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(5,11) * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
end
end)
s1.Pitch = 1.2
s1:Play()
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num = num + 1
return 
end
if num == 3 then
wpb = false
current = false
fr = true
char["Right Leg"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(5,11) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(5,11) * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
s1.Pitch = 1.35
s1:Play()
wait(.1)
TARG1 = PA3[3]
TARG2 = PA3[4]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.1)
TARG1 = PA3[3]
TARG2 = PA3[4]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.1)
TARG1 = PA3[3]
TARG2 = PA3[4]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.1)
TARG1 = PA3[3]
TARG2 = PA3[4]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num = num +1
return 
end
if num == 4 then
wpb = false
current = false
fr = true
char["Left Leg"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(7,15) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(7,15) * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
s1.Pitch = .8
s1:Play()
wait(.1)
TARG1 = PA4[4]
TARG2 = PA4[3]
TARG3 = PA4[2]
TARG4 = PA4[6]
TARG5 = PA4[5]
TARG6 = PA4[1]
wait(.1)
TARG1 = PA4[4]
TARG2 = PA4[3]
TARG3 = PA4[2]
TARG4 = PA4[6]
TARG5 = PA4[5]
TARG6 = PA4[1]
wait(.1)
TARG1 = PA4[4]
TARG2 = PA4[3]
TARG3 = PA4[2]
TARG4 = PA4[6]
TARG5 = PA4[5]
TARG6 = PA4[1]
wait(.1)
TARG1 = PA4[4]
TARG2 = PA4[3]
TARG3 = PA4[2]
TARG4 = PA4[6]
TARG5 = PA4[5]
TARG6 = PA4[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num = 1
return 
end
end
end) 
local rtb = true
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "e" then
if current == true and opend == true and stun.Value == false  and blt.Value > 20  and rtb == true then
local sub
if bl.Value == false then
rtb = false
bl.Value = true
skl = true
TARG1 = block[5]
TARG2 = block[6]
TARG3 = block[2]
TARG4 = block[4]
TARG5 = block[3]
TARG6 = block[1]
wait(.05)
TARG1 = block[5]
TARG2 = block[6]
TARG3 = block[2]
TARG4 = block[4]
TARG5 = block[3]
TARG6 = block[1]
wait(.05)
TARG1 = block[5]
TARG2 = block[6]
TARG3 = block[2]
TARG4 = block[4]
TARG5 = block[3]
TARG6 = block[1]
wait(.05)
TARG1 = block[5]
TARG2 = block[6]
TARG3 = block[2]
TARG4 = block[4]
TARG5 = block[3]
TARG6 = block[1]
wait(.05)
bl.Value = true
skl = true
char.Humanoid.WalkSpeed = 5
wait(1)
rtb = true
else
rtb = false
skl = false
bl.Value = false
current = true
wait(1)
rtb = true
end
end
end
end)
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "z" then
if current == true and opend == true and stun.Value == false and energy > 19 and S1 == true  then
energy = energy - 20
S1T = 0
current = false
local num = 0
repeat
fr = true
local fs 
s1.Pitch = 1.2
s1:Play()
char["Right Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent.Name == player.Name then return end
if hit.Parent:FindFirstChild("Defense") and hit.Parent.Name ~= player.Name then


hit.Parent:FindFirstChild("Defense").Value = hit.Parent:FindFirstChild("Defense").Value -.02
 fs = math.floor(4 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)


else
 fs = math.floor(4 * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.11)
fr = false
wait(.11)
fr = true
local fs 
s1.Pitch = 1.2
s1:Play()
char["Left Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent.Name == player.Name then return end
if hit.Parent:FindFirstChild("Defense")and hit.Parent.Name ~= player.Name then
hit.Parent:FindFirstChild("Defense").Value = hit.Parent:FindFirstChild("Defense").Value -.02
 fs = math.floor(4 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(4 * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
TARG1 = PA1C[5]
TARG2 = PA1C[6]
TARG3 = PA1C[4]
TARG4 = PA1C[3]
TARG5 = PA1C[2]
TARG6 = PA1C[1]
wait(.11)
fr = false
wait(.11)
num = num + 2
until num == 10
current = true 
wait(3) 
end
end
end)
--- KEYDOWN 2
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "x" then
if current == true and opend == true and stun.Value == false and energy > 24  and S2 == true then
energy = energy - 25
S2T = 0
skl = true
char.Humanoid.WalkSpeed = 0
f = Instance.new("Part",game.Workspace)
f.Position = char.Torso.Position + Vector3.new(0, -2, -12)
f.CanCollide = false
f.Transparency = 1
local asdf
local cf
f.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
else
cf = f.CFrame
asdf = hit.BrickColor	
end
end)
current = false
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
local fs = Instance.new("Part",char)
fs.BrickColor = asdf
fs.Size = Vector3.new(1,1,1)
fs.CanCollide = false
fs.Anchored = true
fs.Transparency = 1
fs.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0)
local fr = Instance.new("Part",char)
fr.BrickColor = asdf
fr.Size = Vector3.new(1,1,1)
fr.CanCollide = false
fr.Anchored = true
fr.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) * CFrame.Angles(math.rad(90),0,0)
local fms = Instance.new("SpecialMesh",fr)
fms.MeshId = "http://www.roblox.com/asset/?id=3270017"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(40,40,10)
obj = fms
obj2 = fs
TARG8 = Vector3.new(50,5,50)
local dmg = true
fs.Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") then
if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Speed")then
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(22 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(22 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end
end
end)--]]
wait(.3)
game.Debris:AddItem(fr,8)
game.Debris:AddItem(fs,8)
skl = false
current = true 
for i = 1,10 do
wait()
fr.Transparency = fr.Transparency + .1
end
wait(.4)
dmg = false
wait(3) 
end
end
end)



mouse.KeyDown:connect(function(key)key = key:lower()
if key == "c" then
if current == true and opend == true and stun.Value == false and energy > 34  and S3 == true then
energy = energy - 35
S3T = 0
current = false
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
local dmg = true
char["Right Leg"].Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= player.Name then
local fn = Instance.new("Part",char)
fn.BrickColor = BrickColor.new("Medium stone grey")
fn.Size = Vector3.new(1,1,1)
fn.CanCollide = false
fn.Anchored = true
s2.Pitch = .9
s2:Play()
game.Debris:AddItem(fn,8)
fn.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) 
local fms = Instance.new("SpecialMesh",fn)
fms.MeshId = "http://www.roblox.com/asset/?id=20329976"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(10,5,10)
obj = fms
if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Stunned")then
	hit.Parent:FindFirstChild("Stunned").Value = true
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(13 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
--[[
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
--
end
--]]
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(13 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end

for i = 1,10 do
wait()
fn.Transparency = fn.Transparency + .1
end
end
end)--]]
wait(.1)
skl = false
current = true 
wait(.2)
dmg = false
wait(3) 
end
end
end)




mouse.KeyDown:connect(function(key)key = key:lower()
if key == "v" then
if current == true and opend == true and stun.Value == false and energy > 49 and S4 == true then
current = false
wait(0.05)
S4T = 0
energy = energy - 59
wait()
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
wait(0.05)
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
wait(0.05)
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
wait(0.05)
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
wait(0.05)
local dmg = true
char["Right Leg"].Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= player.Name then
dmg = false
TARG1 = FrontFlipKick1[4] -- LEFT ARM
TARG2 = FrontFlipKick1[3]-- RIGHT ARM
TARG3 = FrontFlipKick1[2] -- NECK
TARG4 = FrontFlipKick1[6] -- RIGHT LEG
TARG5 = FrontFlipKick1[5] -- LEFT LEG
TARG6 = FrontFlipKick1[1] -- TORSO
local fn = Instance.new("Part",char)
fn.BrickColor = BrickColor.new("Medium stone grey")
fn.Size = Vector3.new(1,1,1)
fn.CanCollide = false
fn.Anchored = true
local fn = Instance.new("Part",char)
fn.BrickColor = BrickColor.new("Medium stone grey")
fn.Size = Vector3.new(1,1,1)
fn.CanCollide = false
fn.Anchored = true
s2.Pitch = .9
s2:Play()
game.Debris:AddItem(fn,8)
fn.CFrame = char["Right Leg"].CFrame
local fms = Instance.new("SpecialMesh",fn)
fms.MeshId = "http://www.roblox.com/asset/?id=20329976"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(5,1,5)
obj = fms

if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Stunned")then
	hit.Parent:FindFirstChild("Stunned").Value = true
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(13 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
--[[
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
--
end
--]]
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(13 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end

for i = 0,10 do
wait()
fn.Transparency = fn.Transparency + .1
end
end
end)
--[[
ts.C0 = ts.C0:lerp(FrontFlipKick1[1],.4)
nc.C0 = nc.C0:lerp(FrontFlipKick1[2],.4)
ll.C0 = ll.C0:lerp(FrontFlipKick1[5],.4)
rl.C0 = rl.C0:lerp(FrontFlipKick1[6],.4)
w3.C0 = w3.C0:lerp(FrontFlipKick1[4],.4)
w4.C0 = w4.C0:lerp(FrontFlipKick1[3],.4)
--]]


wait(.1)
dmg = false
current = true
end
end
end)
--[[
--END
ts.C0 = ts.C0:lerp(UpSideDownPunch[1],.4)
nc.C0 = nc.C0:lerp(UpSideDownPunch[2],.4)
ll.C0 = ll.C0:lerp(UpSideDownPunch[3],.4)
rl.C0 = rl.C0:lerp(UpSideDownPunch[4],.4)
w3.C0 = w3.C0:lerp(UpSideDownPunch[5],.4)
w4.C0 = w4.C0:lerp(UpSideDownPunch[6],.4)
--START
ts.C0 = ts.C0:lerp(sjump[1],.4)
nc.C0 = nc.C0:lerp(sjump[2],.4)
ll.C0 = ll.C0:lerp(sjump[3],.4)
rl.C0 = rl.C0:lerp(sjump[4],.4)
w3.C0 = w3.C0:lerp(sjump[5],.4)
w4.C0 = w4.C0:lerp(sjump[6],.4)
--OTHER
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[] -- RIGHT LEG
TARG5 = walk[] -- LEFT LEG
TARG6 = walk[5] -- TORSO
--]]
local Speed = .4
local lspeed = .2
game:GetService("RunService").RenderStepped:connect(function()
if Vector3.new(char.Torso.Velocity.X,0,char.Torso.Velocity.Z).magnitude > 2 then 
IdleAndWalk = true
else
IdleAndWalk = false
end
if TARG4 ~= nil then
rl.C0 = rl.C0:lerp(TARG4,lspeed)
end
if TARG5 ~= nil then
ll.C0 = ll.C0:lerp(TARG5,lspeed)
end
if TARG3 ~= nil then
nc.C0 = nc.C0:lerp(TARG3,lspeed)
end
if TARG1 ~= nil then
w3.C0 = w3.C0:lerp(TARG1,Speed)
end
if TARG2 ~= nil then
w4.C0 = w4.C0:lerp(TARG2,Speed)
end
if TARG6 ~= nil then
ts.C0 = ts.C0:lerp(TARG6,Speed)
end
if TARG7 ~= nil and obj ~= nil then
obj.Scale = obj.Scale:lerp(TARG7,.05)
end
if TARG8 ~= nil and obj2 ~= nil then
obj2.Size = obj2.Size:lerp(TARG8,.05)
obj2.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0)
end
if TARG10 ~= nil and obj3 ~= nil and TARG11 ~= nil then
obj3.Size = obj3.Size:lerp(TARG10,.05)
obj3.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) * TARG11
end
if TARG10 ~= nil and obj3 ~= nil and obj3.Transparency ~= 1 then
obj2.Transparency = obj2.Transparency + .05
obj3.Transparency = obj3.Transparency + .05
wait(.1)
end
if char.Humanoid.Jump == true then
gd.Value = true	
else
gd.Value = false
end
if energy < 100 and current == true then
energy = energy + .05
end
for i=1,#parts do
	local Part = parts[i]
	Part.Size = Part.Size:lerp(Vector3.new(6, 32, 7),.05)
	for x=1,#poses do
	Part.CFrame = poses[i]	
	end
end

if atkt.Value > 0 then
atkt.Value = atkt.Value - .02
else
atk.Value = .9
end
if deft.Value > 0 then
deft.Value = deft.Value - .02
else
def.Value = .8
end
if spdt.Value > 0 then
spdt.Value = spdt.Value - .02
else
wait()
if spdt.Value < 1 then
spd.Value = 1.1
end
end

--Skill 1
local DV2 = S1T  / S1TF
local initX6 = f1.Size.X.Scale
f1f:TweenSize( UDim2.new( initX6*DV2* 1.665, 0, 1, 0),"In","Linear",1 )



if S1T <  14  then
S1T = S1T + .02
S1 = false
else
S1 = true
end
if S1T == 14 then
S1 = true
end


--Skill 2
local DV2 = S2T  / S2TF
local initX6 = f2.Size.X.Scale
f2f:TweenSize( UDim2.new( initX6*DV2* 3.566, 0, 1, 0),"In","Linear",1 )



if S2T <  14  then
S2T = S2T + .01
S2 = false
else
S2 = true
end
if S2T == 15 then
S2 = true
end


--Skill 3
local DV2 = S3T  / S3TF
local initX6 = f3.Size.X.Scale
f3f:TweenSize( UDim2.new( initX6*DV2* 2.855, 0, 1, 0),"In","Linear",1 )



if S3T <  14  then
S3T = S3T + .01
S3 = false
else
S3 = true
end
if S3T == 15 then
S3 = true
end

--Skill 4
local DV2 = S4T  / S4TF
local initX6 = f4.Size.X.Scale
f4f:TweenSize( UDim2.new( initX6*DV2*3.45, 0, 1, 0),"In","Linear",1 )


if S4T <  29  then
S4T = S4T + .01
S4 = false
else
S4= true
end
if S4T == 30 then
S4 = true
end

end)
--SEC HANDLER
--[[
S1 = true
S1T = 7
S1TF = 7
S2 = true
S2T = 15
S2TF = 15
S3 = true
S3T = 12
S3TF = 12
S4 = true
S4T = 30
S4TF = 30
energy = 0
--]]




--makeui(Color3.new(0,255,0),"+Speed")
--makeui(Color3.new(255,0,0),"+Damage")
--makeui(Color3.new(0,0,255),"+Defense")
---VALUE CHANGERS 
satk = atk.Value
sdef = def.Value
sspd = spd.Value
atk.Changed:connect(function()
if satk > atk.Value then
atkt.Value = atkt.Value + 4
makeui(Color3.new(255,0,0),"-Damage")
satk = atk.Value
else
atkt.Value = atkt.Value + 4
makeui(Color3.new(255,0,0),"+Damage")
satk = atk.Value
end	
end)
def.Changed:connect(function()
if sdef > def.Value then
deft.Value = deft.Value + 4
makeui(Color3.new(0,0,255),"-Defense")
sdef = def.Value
else
deft.Value = deft.Value + 4
makeui(Color3.new(0,0,255),"+Defense")
sdef = def.Value
end	
end)
spd.Changed:connect(function()
if sspd > spd.Value then
spdt.Value = spdt.Value + 4
makeui(Color3.new(0,255,0),"-Speed")
sspd = spd.Value
else
spdt.Value = spdt.Value + 4
makeui(Color3.new(0,255,0),"+Speed")
sspd = spd.Value
end	
end)
bll.Changed:connect(function()
	if bll.Value == true then
	
		local c = Instance.new("Part",game.Workspace)
c.Anchored = true
c.CanCollide = false
c.BrickColor = BrickColor.new("Medium stone grey")
c.Shape = "Ball"
c.Size = Vector3.new(1,1,1)
c.CFrame = char.Torso.CFrame
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Transparency = .1
		local v = Instance.new("Part",game.Workspace)
v.Anchored = true
v.CanCollide = false
v.BrickColor = BrickColor.new("Medium stone grey")
v.Size = Vector3.new(1,1,1)
v.CFrame = char.Torso.CFrame
v.TopSurface = "Smooth"
v.BottomSurface = "Smooth"
v.Transparency = .1
obj2 = c 
TARG8 = Vector3.new(30,30,30) 
obj3 = v 
TARG10 = Vector3.new(15,21,15) 
TARG11 = CFrame.new(0,0,0)
makeui(BrickColor.new("Bright bluish green").Color,"Blocked!")	
bll.Value = false
end
end)
stun.Changed:connect(function()
if stun.Value == true then
makeui(Color3.new(255,255,0),"+Stunned")
wait(4)
if opend == true then
stun.Value = false
end
end
if stun.Value == false then
makeui(Color3.new(255,255,0),"-Stunned")
end
end)
-------------------
while wait() do
wait()
fa.Text = "Attack : "..atk.Value
fa2.Text = "Speed : "..spd.Value
fa3.Text = "Defense : "..def.Value
----HP
local initX5 = f5.Size.X.Scale
local maxhp = char.Humanoid.MaxHealth
local hp = char.Humanoid.Health
local Pie = (hp / maxhp)
f5f:TweenSize( UDim2.new( initX5*Pie*3.33, 0, 1, 0),"In","Linear",1 )
---Energy
local DV1 = energy / 100
local initX6 = f6.Size.X.Scale
f6f:TweenSize( UDim2.new( initX6*DV1*3.33, 0, 1, 0),"In","Linear",1 )

if opend == true and current == true and idleq == false then
if  stun.Value == true then
TARG1 = stunned[3] -- LEFT ARM
TARG2 = stunned[2]-- RIGHT ARM
TARG3 = stunned[1] -- NECK
TARG4 = stunned[5] -- RIGHT LEG
TARG5 = stunned[4] -- LEFT LEG
TARG6 = stunned[6] -- TORSO TILT
char.Humanoid.WalkSpeed = 0 
end
if stun.Value == false and skl == false then
char.Humanoid.WalkSpeed = 16 * spd.Value
end
if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then
TARG1 = jump[3] -- LEFT ARM
TARG2 = jump[2]-- RIGHT ARM
TARG3 = jump[1] -- NECK
TARG4 = jump[5] -- RIGHT LEG
TARG5 = jump[4] -- LEFT LEG
TARG6 = CFrame.new(0,0,0)
end
--ts.C0 = ts.C0:lerp(stunned[6],.4)
--nc.C0 = nc.C0:lerp(stunned[1],.4)
--ll.C0 = ll.C0:lerp(stunned[4],.4)
--rl.C0 = rl.C0:lerp(stunned[5],.4)
--w3.C0 = w3.C0:lerp(stunned[3],.4)
--w4.C0 = w4.C0:lerp(stunned[2],.4)
local lilwl = ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0))
local lirwl = rl.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0))
 
--RIGHT
local lilwr = ll.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0))
local lirwr = rl.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0))


--
if bl.Value == false then
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false  then
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[4] -- RIGHT LEG
TARG5 = walk[3] -- LEFT LEG
TARG6 = walk[5] -- TORSO
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[2] -- RIGHT LEG
TARG5 = walk[1] -- LEFT LEG
TARG6 = walk[5] -- TORSO
end	
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
else
if IdleAndWalk == false and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then	
TARG1 = idle[5]
TARG2 = idle[6]
TARG3 = idle[2]
TARG4 = idle[4]
TARG5 = idle[3]
TARG6 = idle[1]
end
end
end
--
end
end

--[[




	ts.C0 = ts.C0:lerp(idle[1],.4)
nc.C0 = nc.C0:lerp(idle[2],.4)
ll.C0 = ll.C0:lerp(idle[3],.4)
rl.C0 = rl.C0:lerp(idle[4],.4)
w3.C0 = w3.C0:lerp(idle[5],.4)
w4.C0 = w4.C0:lerp(idle[6],.4)
 
TARG1 = idle[5]
TARG2 = idle[6]
TARG3 = idle[2]
TARG4 = idle[5]
TARG5 = idle[3]
TARG6 = idle[2]
if TARG4 ~= nil then
rl.C0 = rl.C0:lerp(TARG4,lspeed)
end
if TARG5 ~= nil then
ll.C0 = ll.C0:lerp(TARG5,lspeed)
end
if TARG3 ~= nil then
nc.C0 = nc.C0:lerp(TARG3,lspeed)
end
if TARG1 ~= nil then
w3.C0 = w3.C0:lerp(TARG1,Speed)
end
if TARG2 ~= nil then
w4.C0 = w4.C0:lerp(TARG2,Speed)
end

ll.C0 = ll.C0:lerp(walk[3],.4)
rl.C0 = rl.C0:lerp(walk[4],.4)
---OTHER ANIMS
ts.C0 = ts.C0:lerp(walk[5],.4)
nc.C0 = nc.C0:lerp(walk[6],.4)
w4.C0 = w4.C0:lerp(walk[7],.4)
w3.C0 = w3.C0:lerp(walk[8],.4)

TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[] -- RIGHT LEG
TARG5 = walk[] -- LEFT LEG
TARG6 = walk[5] -- TORSO

for i = 0,1,wait() do
wait()
ll.C0 = ll.C0:lerp(walk[3],.4)
rl.C0 = rl.C0:lerp(walk[4],.4)
---OTHER ANIMS
ts.C0 = ts.C0:lerp(walk[5],.4)
nc.C0 = nc.C0:lerp(walk[6],.4)
w4.C0 = w4.C0:lerp(walk[7],.4)
w3.C0 = w3.C0:lerp(walk[8],.4)
end--]]