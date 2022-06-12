for _,n in pairs (game.Players.LocalPlayer.Character:GetChildren()) do if n:IsA("Accoutrement") then n:Destroy() end end

Character = game:GetService("Players").localPlayer.Character
Reaper = Instance.new("Model", Character.Head)
Reaper.Name = "Eyes"
e1 = Instance.new("Part")
e1.Parent = Reaper
e1.Locked = true
e1.CanCollide = false
e1.formFactor = "Symmetric"
e1.Size = Vector3.new(-3.05,-5.05, -3.05)
e1.Material = "Neon"
e1.BrickColor = BrickColor.new("Really red")
e1.Shape = "Ball"
local weld = Instance.new("Weld")
weld.Parent = e1
weld.Part0 = e1
weld.Part1 = Character.Head
weld.C0 = CFrame.new(0.17, 0.01, 0.76)*CFrame.Angles(0, 0, 0)
local Lite = Instance.new("PointLight",e1)
Lite.Color = Lite.Parent.BrickColor.Color
Lite.Range = 8
Lite.Brightness = 5
Lite.Shadows = true
e2 = Instance.new("Part")
e2.Parent = Reaper
e2.Locked = true
e2.CanCollide = false
e2.formFactor = "Symmetric"
e2.Size = Vector3.new(-3.05,-5.05, -3.05)
e2.Material = "Neon"
e2.BrickColor = BrickColor.new("Really red")
e2.Shape = "Ball"
local weld = Instance.new("Weld")
weld.Parent = e2
weld.Part0 = e2
weld.Part1 = Character.Head
weld.C0 = CFrame.new(-0.17, 0.01, 0.76)*CFrame.Angles(0, 0, 0)
local Lite2 = Instance.new("PointLight",e2)
Lite2.Color = Lite2.Parent.BrickColor.Color
Lite2.Range = 8
Lite2.Brightness = 5
Lite2.Shadows = true
rh = Instance.new("Part")
rh.Parent = Reaper
rh.Locked = true
rh.CanCollide = false
msh = Instance.new("SpecialMesh")
rh.formFactor =  "Symmetric"
msh.MeshType = "FileMesh"
msh.MeshId = "http://www.roblox.com/asset/?id=16150814"
msh.TextureId = "http://www.roblox.com/asset/?id=16150799"
msh.Parent = rh
msh.Scale = Vector3.new(1.025, 1.025, 1.025)
local weld = Instance.new("Weld")
weld.Parent = rh
rh.Transparency = 0
weld.Part0 = rh
weld.Part1 = Character.Head
weld.C0 = CFrame.new(0, -0.045, 0)*CFrame.Angles(0, 0, 0)
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

WIngs=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Maroon","Handle",Vector3.new(0.526163042, 0.373031557, 0.931079745))
WIngsweld=weld(m,Character["Torso"],WIngs,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0159111, -1.20853615, -6.0207634, 0.866024971, 0.250001013, -0.433012992, -0.326577812, 0.938599944, -0.111252062, 0.378612816, 0.237759501, 0.894495845))
mesh("BlockMesh",WIngs,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.429282606, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0145301819, -1.5309906, 1.12540245, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012840271, -2.20268631, 1.11525655, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 1.69621086, 2.74610329, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128326416, 3.14628506, 2.63505173, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.757224739, -0.653154373, 2.98023224e-008, -0.653154373, 0.757224917))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 1.01108551, 2.51173878, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.0735907629, -0.997288585, 0, -0.997288525, 0.0735907704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 0.396331787, 2.11554885, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.187033802, -0.982353449, -7.4505806e-009, -0.982353449, -0.187033832))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, -0.0868225098, 1.57054901, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.434913546, -0.900472343, 0, -0.900472283, -0.434913576))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128173828, 2.42856979, 2.78783226, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, -0.826882541, 0.562374532))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128173828, -0.416015625, 0.917181015, -1, 1.86264515e-008, 5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, 0.159194946, -1.12555099, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140304565, -3.38129997, -2.7243309, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.329198927, 0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140457153, 1.33783531, 2.71401596, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Maroon","Part",Vector3.new(0.526163042, 0.373031557, 0.931079745))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.78812122, 1.92715263, -2.28927612, 0.49999845, -0.565649092, 0.655776381, 0.565651298, 0.786692977, 0.24729073, -0.655774534, 0.247295752, 0.713305533))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.429282606, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80215645, 2.86511993, 0.140659332, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80046654, -4.2369194, -0.140804291, -0.49999845, 0.565649092, -0.655776381, -0.433012724, 0.492487878, 0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80215645, -4.90860367, -0.150947571, -0.49999845, 0.565649092, -0.655776381, -0.433012724, 0.492487878, 0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80265999, -4.14035034, -0.33956337, 0.49999845, -0.565649092, 0.655776381, -0.750000596, 0.0957893208, 0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095482, 3.22347641, 0.17275238, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, -4.81201553, -0.349707603, 0.49999845, -0.565649092, 0.655776381, -0.750000596, 0.0957893208, 0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 2.76852798, 0.339404106, 0.49999845, -0.565649092, 0.655776381, 0.750000596, -0.0957893208, -0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095482, 3.18227959, -0.357192993, -0.49999845, 0.565649092, -0.655776381, -2.98023224e-007, -0.757224619, -0.653154492, -0.866026402, -0.326576054, 0.378611445))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094719, 3.23778915, -0.0931434631, -0.49999845, 0.565649092, -0.655776381, 0.224142939, -0.646899283, -0.728890419, -0.836517453, -0.511431754, 0.196662545))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80093193, 3.15235138, 0.421354294, -0.49999845, 0.565649092, -0.655776381, 0.612372398, -0.304515153, -0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095387, 3.00566101, 0.650568962, -0.49999845, 0.565649092, -0.655776381, 0.749999642, -0.0957909003, -0.654465079, -0.433014959, -0.819063544, -0.376341343))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094147, 2.81278229, 0.830840111, -0.49999845, 0.565649092, -0.655776381, 0.836516857, 0.119463086, -0.534760058, -0.224145442, -0.815947115, -0.532906353))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094433, 2.57622147, 0.953166008, -0.49999845, 0.565649092, -0.655776381, 0.866026282, 0.326575905, -0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 0.963986397, 2.83012009, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, -3.00747108, -2.84039688, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128250122, 3.25563431, 2.63391113, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.757224739, 0.653154373, 2.98023224e-008, -0.653154373, 0.757224917))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128440857, 2.53445959, 2.8150177, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.900472701, 0.434912592, 0, -0.434912592, 0.90047276))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 1.79145408, 2.79978943, 1, -1.86264515e-008, -5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, -0.187033504, 0.982353628))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128364563, -0.414859772, 1.02649212, 1, -1.86264515e-008, -5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, -1.49011612e-008, 0.757224798, 0.653154254))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 0.451953888, 2.2096405, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.94426012, -0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128364563, 1.08917046, 2.58826447, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, -0.057434082, 1.67582893, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.826882601, -0.562374711, 0, 0.562374711, 0.82688272))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140419006, -1.82085991, 1.02886391, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014541626, -2.33579445, -2.83024597, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123214722, -1.149189, 1.03900719, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.01404953, -0.222623825, -1.03916359, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80045509, -4.03017044, 0.229810715, -0.49999845, 0.565649092, -0.655776381, -0.836517692, -0.511431158, 0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094051, 3.2564106, 0.190433502, 0.49999845, -0.565649092, 0.655776381, 0.433015227, 0.819063604, 0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093765, 3.05438042, 0.688827515, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093765, 3.21963882, -0.358337402, 0.49999845, -0.565649092, 0.655776381, 2.98023224e-007, 0.757224619, 0.653154492, -0.866026402, -0.326576054, 0.378611445))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80095196, 3.27416515, -0.0845680237, 0.49999845, -0.565649092, 0.655776381, 0.224145487, 0.815947115, 0.532906294, -0.836516857, -0.119463041, 0.534760058))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094719, 2.57737732, 0.990515709, 0.49999845, -0.565649092, 0.655776381, 0.866026282, 0.326575905, -0.378611505, 4.32133675e-007, 0.757224679, 0.653154492))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 3.0253334, 0.682353973, 0.49999845, -0.565649092, 0.655776381, 0.75000155, 0.66143465, -0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.8026638, -4.42617226, -0.68901062, 0.49999845, -0.565649092, 0.655776381, -0.612375081, -0.766361952, -0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093575, -5.09785843, -0.699146271, 0.49999845, -0.565649092, 0.655776381, -0.612375081, -0.766361952, -0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 2.8235321, 0.866632462, 0.49999845, -0.565649092, 0.655776381, 0.836517394, 0.511432052, -0.196662098, -0.224143416, 0.646898985, 0.728890657))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80217552, -4.70182419, 0.219669342, -0.49999845, 0.565649092, -0.655776381, -0.836517692, -0.511431158, 0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80096149, 3.17957115, 0.446971893, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216312, 2.65835953, -0.229951859, -0.49999845, 0.565649092, -0.655776381, 0.836517692, 0.511431158, -0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123329163, -2.7096405, -2.71417046, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.329198927, 0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.DiamondPlate,0,0,"Bright red","Part",Vector3.new(2.33570647, 0.518153846, 1.07062769))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000423431396, 0.000568389893, 0.0205516815, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.397033691, 0.00685501099, 0.361976624, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.502140284, 1.85872841))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000408172607, 0.000564575195, 0.0234174728, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(2.33570647, 0.507859409, 1.26050401))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.00227355957, 0.0205459595, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(2.33570647, 0.497564912, 2.28537822))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000438690186, 0.00173950195, 0.0229845047, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146331787, -3.40140152, -1.11369061, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, 1.63386917, 1.11945939, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122375488, -6.76598835, 0.57843399, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.608101726, 0.793859124, 0, -0.793859184, 0.608101785))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.385643005, 0.0125732422, -0.371212006, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0115966797, -0.543251038, 1.7864542, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.434913546, 0.900472343, 0, -0.900472283, -0.434913576))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0116043091, -1.59219742, 2.67541885, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, -0.997288525, 0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0115814209, -2.22006989, 2.7550087, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.011592865, -1.02312088, 2.25215411, 1, -1.86264515e-008, -5.96046448e-008, 0, -0.187033802, 0.982353449, -7.4505806e-009, -0.982353449, -0.187033832))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.67227566, 1.70316744))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0116004944, -0.851036072, 0.823085785, 1, -1.86264515e-008, -5.96046448e-008, 5.96046448e-008, -0.653154254, 0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 2.33112097, 0.885326684))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116004944, -4.12805939, 3.14675999, -1, 1.86264515e-008, 5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146331787, -1.75381827, 0.0856170654, 1, -1.86264515e-008, -5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, -0.187033504, 0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146331787, -1.7653625, 1.58002472, -1, 1.86264515e-008, 5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, 0.187033504, -0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146217346, 1.84269714, 2.61419201, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, 0.484992713, -0.874518216, 0, -0.874518156, -0.484992743))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -1.39143753, -1.12134099, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, -4.44521141, -2.69960213, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.484992713, 0.874518216, 0, 0.874518156, 0.484992743))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146102905, -1.24437332, -1.12705016, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012260437, 2.08576965, -1.09300995, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, 2.07419205, 2.7586441, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, -2.98023224e-008, -0.329200208, -0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, 2.81254005, -2.72010994, 1, -1.86264515e-008, -5.96046448e-008, 0, -0.329198927, -0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0122528076, -0.0657215118, 2.71253204, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, -4.58002281, 2.72588158, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122489929, -2.57005119, 2.71822929, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122451782, 4.16341972, -0.663871765, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, -0.608101726, -0.793859124, 0, 0.793859184, -0.608101785))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.76950121, 0.741203785))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0115814209, -4.30217743, 3.24400997, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.627695382, -0.778459072, -1.49011612e-008, -0.778458953, -0.627695441))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.DiamondPlate,0,0,"Bright red","Part",Vector3.new(2.33570647, 0.518153846, 1.07062769))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99267197, 4.78870678, -0.0154352188, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.59518433, 4.79498959, 0.32599926, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.502140284, 1.85872841))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99268341, 4.7886982, -0.0125761032, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(2.33570647, 0.507859409, 1.26050401))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99270248, 4.79042339, -0.0154447556, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(2.33570647, 0.497564912, 2.28537822))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99266815, 4.78983879, -0.0129785538, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80036545, 4.80890846, 2.25815582, 0.49999845, -0.565649092, 0.655776381, 0.176621437, -0.674706042, -0.716642678, 0.847824514, 0.474144399, -0.237446278))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037117, -4.09732819, 0.144859314, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -6.10728073, 0.152519226, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037498, -0.499183655, 4.28593826, 0.49999845, -0.565649092, 0.655776381, -0.75000155, -0.66143465, 0.00131103396, 0.433011711, -0.492488772, -0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.802742, 1.36500931, 0.337909698, 0.49999845, -0.565649092, 0.655776381, 0.750000596, -0.0957893208, -0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80034828, 1.46158218, 0.139152527, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037212, -0.487609863, -2.62030792, -0.49999845, 0.565649092, -0.655776381, -0.75000155, -0.66143465, 0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80035973, 4.33980179, -0.146759033, 0.49999845, -0.565649092, 0.655776381, 0.433012724, -0.492487878, -0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -7.41146851, -2.34357452, 0.49999845, -0.565649092, 0.655776381, -0.176621437, 0.674706042, 0.716642678, -0.847824514, -0.474144399, 0.237446278))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.8027401, 4.77935791, 2.0391655, -0.49999845, 0.565649092, -0.655776381, 0.847824097, 0.16527845, -0.50386256, -0.176623657, -0.807913423, -0.562209845))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274773, -0.288840294, -2.52373123, 0.49999845, -0.565649092, 0.655776381, 0.433015227, 0.819063604, 0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.60663605, 4.80071163, -0.407197952, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274963, -0.300402641, 4.18932724, -0.49999845, 0.565649092, -0.655776381, 0.433015227, 0.819063604, 0.376341105, 0.749999583, -0.0957911685, -0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80271721, -4.00077438, 0.34360981, -0.49999845, 0.565649092, -0.655776381, -0.750000596, 0.0957893208, 0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.802742, 4.24324417, -0.345514297, -0.49999845, 0.565649092, -0.655776381, 0.750000596, -0.0957893208, -0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274391, -7.38192749, -2.1245718, -0.49999845, 0.565649092, -0.655776381, -0.847824097, -0.16527845, 0.50386256, 0.176623657, 0.807913423, 0.562209845))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971504, -3.44285583, 1.04676247, 0.49999845, -0.565649092, 0.655776381, -0.836516857, -0.119463086, 0.534760058, -0.224145442, -0.815947115, -0.532906353))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971695, -3.73348618, 0.58502388, 0.49999845, -0.565649092, 0.655776381, -0.612372398, 0.304515153, 0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.802742, -6.01073456, 0.351270676, -0.49999845, 0.565649092, -0.655776381, -0.750000596, 0.0957893208, 0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79972649, -3.63246918, 0.787195206, 0.49999845, -0.565649092, 0.655776381, -0.749999642, 0.0957909003, 0.654465079, -0.433014959, -0.819063544, -0.376341343))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.76950121, 0.741203785))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.79971886, -1.31037903, 3.18079185, -0.49999845, 0.565649092, -0.655776381, 0.865550399, 0.301296592, -0.400053799, -0.0287068337, -0.767633677, -0.640245616))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 2.33112097, 0.885326684))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.79972172, -1.1358223, 3.18273926, -0.49999845, 0.565649092, -0.655776381, 0.866026282, 0.326575905, -0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.7997303, -3.74736404, 0.181629181, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.67227566, 1.70316744))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971409, -3.84326553, 0.859061241, 0.49999845, -0.565649092, 0.655776381, -0.866026282, -0.326575905, 0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146179199, -0.439552307, 2.82862473, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, 2.43866539, -2.83621216, -1, 1.86264515e-008, 5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, 2.19028473, 2.38479328, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, 0.997288525, -0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146331787, 2.20183945, -0.719162941, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, -0.997288525, 0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140457153, -2.31531954, 2.80868149, -1, 1.86264515e-008, 5.96046448e-008, -5.58793545e-009, -0.982353508, -0.187033504, 0, -0.187033504, 0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -1.67030334, 2.75189209, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0145950317, -6.44722939, 0.805679321, -1, 1.86264515e-008, 5.96046448e-008, 1.11758709e-008, -0.970244586, -0.242127106, 0, -0.242127106, 0.970244527))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140609741, -0.572654724, 1.89173317, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.826882601, 0.562374711, 0, 0.562374711, 0.82688272))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -1.07876587, 2.34624863, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -4.20618105, 2.84195328, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -2.19620895, 2.83431244, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, 3.84465933, -0.891094208, -1, 1.86264515e-008, 5.96046448e-008, -1.11758709e-008, 0.970244586, 0.242127106, 0, 0.242127106, -0.970244527))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012260437, 1.25204659, 1.03306961, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122413635, -3.0195713, -1.02729225, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0122451782, -1.66742134, 0.467433929, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, -0.826882541, 0.562374532))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122451782, -1.67897987, 1.19819832, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, 0.826882541, -0.562374532))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122489929, 1.50705338, 2.41267586, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.609420419, -0.792847335, 0, 0.792847276, 0.609420419))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012260437, -1.00959778, -1.03495979, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, -4.10961151, -2.49808693, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.609420419, 0.792847335, 0, -0.792847276, -0.609420419))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012260437, -1.6261673, -1.04066467, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.67227566, 1.75463974))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -0.852184296, 0.906645775, -1, 1.86264515e-008, 5.96046448e-008, 5.96046448e-008, -0.653154254, 0.757224917, -1.49011612e-008, 0.757224798, 0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80034447, -0.86977005, 4.07917023, 0.49999845, -0.565649092, 0.655776381, 0.224142939, -0.646899283, -0.728890419, 0.836517453, 0.511431754, -0.196662545))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038261, -7.09912872, -2.63088512, 0.49999845, -0.565649092, 0.655776381, -0.864648581, -0.283361614, 0.414836287, -0.0488298535, -0.774433494, -0.630768061))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -3.89056778, -0.225765228, 0.49999845, -0.565649092, 0.655776381, -0.836517692, -0.511431158, 0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038261, -5.9005394, -0.218101501, 0.49999845, -0.565649092, 0.655776381, -0.836517692, -0.511431158, 0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037498, -0.858222961, -2.41352463, -0.49999845, 0.565649092, -0.655776381, 0.224142939, -0.646899283, -0.728890419, -0.836517453, -0.511431754, 0.196662545))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037594, 4.49656296, 2.54547501, 0.49999845, -0.565649092, 0.655776381, 0.864648581, 0.283361614, -0.414836287, 0.0488298535, 0.774433494, 0.630768061))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.8027277, 0.0490112305, 4.47517967, -0.49999845, 0.565649092, -0.655776381, -0.612372398, 0.304515153, 0.729568839, 0.61237365, 0.766362667, 0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274391, 0.0605697632, -2.80956078, 0.49999845, -0.565649092, 0.655776381, -0.612372398, 0.304515153, 0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274677, 4.52905464, -0.69493866, -0.49999845, 0.565649092, -0.655776381, 0.612375081, 0.766361952, 0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274773, 1.65083885, 0.687343597, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80273438, 5.16016769, 1.79669189, -0.49999845, 0.565649092, -0.655776381, 0.390038431, 0.823161662, 0.412643731, 0.773221493, -0.0494567379, -0.632204533))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038166, 4.13302612, 0.223876953, 0.49999845, -0.565649092, 0.655776381, 0.836517692, 0.511431158, -0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80273819, -4.28659248, 0.693054199, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80276012, -6.29656792, 0.700717926, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216217, -3.78028393, 0.199310303, -0.49999845, 0.565649092, -0.655776381, -0.433015227, -0.819063604, -0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216694, -3.76069069, 0.610641479, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80275726, -7.76274252, -1.88209915, -0.49999845, 0.565649092, -0.655776381, -0.390038431, -0.823161662, -0.412643731, -0.773221493, 0.0494567379, 0.632204533))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.67227566, 1.75463974))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216217, -3.84443283, 0.870663643, -0.49999845, 0.565649092, -0.655776381, -0.866026282, -0.326575905, 0.378611505, 4.32133675e-007, 0.757224679, 0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80217838, -3.45362091, 1.0825386, -0.49999845, 0.565649092, -0.655776381, -0.836517394, -0.511432052, 0.196662098, -0.224143416, 0.646898985, 0.728890657))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216312, -3.65211487, 0.818996429, -0.49999845, 0.565649092, -0.655776381, -0.75000155, -0.66143465, 0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037689, 1.2548027, -0.231477737, -0.49999845, 0.565649092, -0.655776381, 0.836517692, 0.511431158, -0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.44351673, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.37387466, 0.0131607056, 3.24288177, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904559135, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45108032, -0.324279785, 3.24173164, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(1.28909934, 0.543318033, 1.14497685))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45108795, 0.0165786743, 3.23201942, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45106888, 0.370029449, 3.24633598, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458839417, 5.15813541, 3.2103529, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458843231, 4.46384811, 3.20575047, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(1.28909934, 0.543318033, 1.14497685))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458824158, 4.80470562, 3.19602489, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.44351673, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.381649017, 4.80128193, 3.20690632, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904559135, 1))

local ArtificiaLeftHipB = Instance.new("BindableEvent", script)
ArtificiaLeftHipB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

HandleB = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Really red", "HandleB", Vector3.new(1.01999998, 0.410000026, 1.01999998))
HandleBweld = weld(m, Character["Left Arm"], HandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617e-005, 0.00579214096, -0.000717163086, -0.99999702, 1.30612687e-009, 2.74129752e-006, 1.1281549e-009, 1.00000882, -9.4532792e-005, -2.29434954e-006, -9.45326028e-005, -1.00000536))
FConnectorB1 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Really red", "FConnectorB1", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB1weld = weld(m, HandleB, FConnectorB1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410011292, -1.09512377, -0.40996933, -0.999990344, 9.75173589e-006, -4.76017885e-006, -9.75114472e-006, -1.00001204, 2.27628334e-007, -4.34698632e-006, 2.29010766e-007, 1.00000203))
FConnectorB2 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Really red", "FConnectorB2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB2weld = weld(m, HandleB, FConnectorB2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410003662, -1.09513116, -0.129657745, -0.999986649, 9.75185594e-006, -5.20708772e-006, -9.75106377e-006, -1.00000668, 5.36027073e-007, -3.48685307e-006, 5.38973836e-007, 0.999993324))
FConnectorB3 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Really red", "FConnectorB3", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB3weld = weld(m, HandleB, FConnectorB3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409965515, -1.08497524, 0.140300751, -0.999993324, 9.75177409e-006, -3.97838994e-006, -9.75137755e-006, -1.00000334, 5.61856723e-007, -3.11826261e-006, 5.63341018e-007, 0.999996662))
FConnectorB4 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Really red", "FConnectorB4", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB4weld = weld(m, HandleB, FConnectorB4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409957886, -1.08498001, 0.410175323, -0.999991894, 9.75470903e-006, -3.12404359e-006, -9.75422699e-006, -1.00000405, 5.46198862e-007, -2.07960943e-006, 5.47988748e-007, 0.999995947))
FConnectorB5 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Really red", "FConnectorB5", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB5weld = weld(m, HandleB, FConnectorB5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409980774, -1.09494543, -0.409542084, -0.999974728, 9.75853163e-006, -6.0076236e-006, -9.75704006e-006, -1.00001264, 6.99823431e-007, -2.75148182e-006, 7.05331331e-007, 0.999987364))
HitboxB = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Really black", "HitboxB", Vector3.new(1.22000003, 1.00999999, 1.01999998))
HitboxBweld = weld(m, HandleB, HitboxB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100006104, 0.889988422, -8.01086426e-005, 0.999965847, -7.24100557e-010, 3.32365107e-006, -7.63507535e-010, 1.00002456, 3.05735739e-008, 3.58721138e-007, -2.40979716e-008, 0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410049438, 0.714781284, 0.405288696, 0.999982476, 1.32186387e-010, 7.77321588e-007, 5.98021299e-010, -1.00001609, -0.000257281994, -1.25018551e-006, 0.00025728374, -0.99999851))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.200000003, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.28881836e-005, 0.285013676, -0.000282287598, 0.999967337, -1.5549535e-009, 5.20209369e-006, 1.61488642e-010, 1.00001812, 7.64994184e-008, -1.3707679e-006, -6.97400537e-008, 0.999985218))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409980774, -0.0147089958, -0.000305175781, 0.999965847, -2.17003437e-009, 4.9788764e-006, 3.62124303e-010, 1.00002444, 0.000246998534, -1.29649527e-006, -0.000247000571, 0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410041809, -0.714772701, -0.000305175781, 0.999984264, 5.30370525e-010, 7.77336254e-007, -9.50127754e-010, 1.00000787, 0.00022139927, 1.25007e-006, -0.000221399358, 0.999992192))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410003662, 0.0146970749, 0.40537262, 0.999965847, -2.17019336e-009, 4.97882229e-006, -3.70234204e-010, -1.00002444, -0.000240876077, 1.29644116e-006, 0.00024087794, -0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.200000003, 0.819999993))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-005, 0.904989719, 0.000244140625, 0.999978065, -7.79672504e-009, 3.02157605e-006, 6.82267665e-009, 1.00001097, -1.16917363e-007, -1.95484972e-007, 1.21617632e-007, 0.999989033))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.620000005, 0.200000003, 0.819999993))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-005, 0.914862633, 0.000553131104, 0.999978065, -2.87229418e-009, 2.06913091e-006, 1.8980213e-009, 1.00001097, -5.95959136e-007, 7.56950044e-007, 6.00666681e-007, 0.999989033))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 1))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685016155, 0.60004425, -0.000576019287, 1.07880278e-005, 1.0000155, 0.000307261536, -0.999969006, 1.0787875e-005, 2.61563605e-006, 6.60559135e-006, -0.000307264534, 0.999984682))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.684755325, 0.600059509, -0.400756836, 1.0788599e-005, 1.00000787, 0.000307488954, -0.999984264, 1.07877813e-005, 3.72219597e-006, 5.74624983e-006, -0.000307490496, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685072899, 0.600067139, 0.399261475, 1.07872711e-005, 1.0000155, 0.00030746602, -0.999969006, 1.07870783e-005, 2.73933233e-006, 6.729284e-006, -0.000307469018, 0.999984682))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399326324, 0.684971809, 0.599990845, -4.03382401e-005, 9.44945641e-005, 0.999991834, -9.62037007e-007, 1.00000787, -9.44897838e-005, -0.999983966, -9.65175104e-007, -4.23658821e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.202000037, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, -0.714713573, 0.404712677, 0.999982774, 2.57471877e-010, 7.7719352e-007, -7.87075238e-010, 1.00001347, 0.000235129759, 1.25028396e-006, -0.000235130938, 0.999996126))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, -0.0146975517, 0.4047966, 0.999982774, 6.53486099e-010, 7.77193463e-007, -1.11419485e-009, 1.00001299, 0.000259818073, 1.25028328e-006, -0.000259819906, 0.99999553))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400676727, 0.684971809, 0.600036621, -4.03382401e-005, 9.44945641e-005, 0.999991834, -9.62037007e-007, 1.00000787, -9.44897838e-005, -0.999983966, -9.65175104e-007, -4.23658821e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.19600004, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000675201416, 0.684971809, 0.600013733, -4.03382401e-005, 9.44945641e-005, 0.999991834, -9.62037007e-007, 1.00000787, -9.44897838e-005, -0.999983966, -9.65175104e-007, -4.23658821e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.646000028, 0.638000011, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.714962482, 0.599998474, -0.400279999, 1.07917776e-005, 1.00000787, 0.000307536626, -0.999984264, 1.07909609e-005, 3.72180239e-006, 5.74585465e-006, -0.000307538168, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0853996277, 0.600074768, 0.399375916, 1.07918922e-005, 1.00001574, 0.000307276874, -0.999968529, 1.07916239e-005, 3.00816009e-006, 7.05953335e-006, -0.000307279872, 0.999984324))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602294922, -0.221727371, -0.222377777, 0.999968529, -2.77844325e-008, 1.5804543e-006, -1.73086164e-006, 0.707148612, -0.707064986, 1.76833453e-006, 0.707087159, 0.707126319))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0850524902, 0.600036621, -0.400672913, 1.07914002e-005, 1.00001574, 0.0003071838, -0.999968529, 1.07914666e-005, 1.92046173e-006, 5.97185317e-006, -0.000307186769, 0.999984324))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221570969, 0.602279663, -0.532333374, -9.16450119e-007, 0.707201421, -0.707024872, -0.99998188, -4.39811004e-007, -1.23922871e-006, 3.05380581e-007, 0.707037866, 0.707188487))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221664429, 0.602294922, 0.0677280426, -5.32410468e-007, 0.707169592, -0.707043946, -0.999968529, 4.26314045e-007, -2.87682087e-006, 1.1334331e-006, 0.707066119, 0.707147479))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602279663, -0.222204208, 0.221616745, 0.999968529, -2.7891728e-008, 1.5804543e-006, 1.76886238e-006, 0.706902444, 0.707310975, 1.7303239e-006, -0.707333207, 0.706880331))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.71464777, 0.599990845, 0.399719238, 1.07905635e-005, 1.00000787, 0.000307468435, -0.999984264, 1.07897467e-005, 3.7218565e-006, 5.74590968e-006, -0.000307469978, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.222238541, 0.602272034, 0.531747818, 3.61345883e-006, 0.706890404, 0.707323194, -0.999984264, 2.18690184e-006, 8.96424808e-007, 5.20473066e-007, -0.70733428, 0.706879318))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.222442627, 0.602287292, -0.0682048798, 2.74106606e-006, 0.706903875, 0.707309544, -0.999968529, 1.72691671e-006, -1.90388391e-006, 3.00002284e-007, -0.707331777, 0.706881762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949707031, 0.014693737, 0.405315399, 0.999965847, -2.00778438e-009, 5.06809101e-006, -1.86809165e-010, -1.00002444, -0.000240532332, 1.38570761e-006, 0.000240534195, -0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.99999994, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599967957, -0.314879894, -0.000305175781, 0.999968529, -1.52550794e-009, 3.47273135e-006, 2.76023454e-010, 1.00001574, 0.000246752985, 5.82059499e-007, -0.000246754033, 0.999984324))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, 0.71477747, 0.405269623, 0.999983668, 2.62990379e-010, 7.77281798e-007, 6.87050083e-010, -1.00001037, -0.00025712885, -1.25016015e-006, 0.000257130014, -0.99999398))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.610000014, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-005, 0.690003395, 0, 0.999978065, -3.37791017e-009, 2.19185767e-006, 2.40435716e-009, 1.00001097, 5.20303729e-008, 6.34224364e-007, -4.73301043e-008, 0.999989033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410049438, -0.714709282, 0.404720306, 0.999984264, 2.45380903e-011, 7.7730283e-007, -4.26871205e-010, 1.00000787, 0.000235340878, 1.25010342e-006, -0.000235341198, 0.999992192))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410041809, -0.0147390366, 0.404838562, 0.999983072, 5.45701151e-010, 7.77317439e-007, -1.05576647e-009, 1.0000155, 0.000272982696, 1.25019938e-006, -0.000272984529, 0.999998391))
FHandleB1 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "FHandleB1", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB1weld = weld(m, FConnectorB1, FHandleB1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, -0.100004435, 3.81469727e-006, 0.999987125, 9.48046641e-010, -8.29304327e-007, -1.90026062e-009, 1.00000644, -2.25118129e-008, -8.29517148e-007, 1.97178451e-008, 0.999993563))
FHandleB2 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "FHandleB2", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB2weld = weld(m, FConnectorB2, FHandleB2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0999953747, -1.90734863e-005, 0.999986887, 1.7767473e-009, -8.2923782e-007, -2.74682477e-009, 1.00000656, -3.37167876e-008, -8.60301839e-007, 3.08791641e-008, 0.999993443))
FHandleB3 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "FHandleB3", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB3weld = weld(m, FConnectorB3, FHandleB3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-005, -0.110008478, -6.48498535e-005, 0.999993801, 1.65772562e-009, -1.46104639e-007, -2.11578732e-009, 1.0000031, -3.14466888e-008, -6.52590643e-007, 3.01006366e-008, 0.999996901))
FHandleB4 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "FHandleB4", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB4weld = weld(m, FConnectorB4, FHandleB4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-005, -0.110030413, -4.57763672e-005, 0.999992371, -3.29658301e-010, -1.30871194e-006, -2.33423003e-010, 1.00000381, -5.04951458e-009, 3.25705969e-007, 3.39059625e-009, 0.999996185))
FHandleB5 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "FHandleB5", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB5weld = weld(m, FConnectorB5, FHandleB5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -0.0900087357, -0.000114440918, 0.999993801, 3.53735596e-009, -1.22842721e-006, -3.99611277e-009, 1.0000031, -1.37908501e-007, 4.29716692e-007, 1.36555173e-007, 0.999996901))


frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)


--[[
User: KingAbsalom
Script: Death Claws
]]
Value = game.Players.LocalPlayer
local p = Value
script.Parent = p.PlayerGui
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
local rs = game:GetService("RunService").RenderStepped
local hb = game:GetService("RunService").Heartbeat
--math.randomseed(os.time())
hum.JumpPower = 100
pts = {
  0.8,
  0.85,
  0.9,
  0.95,
  1,
  1.05,
  1.1
}
ptz = {
  0.7,
  0.8,
  0.9,
  1
}
idz = {"161006212", "161006195"}
for i, v in pairs(hed:GetChildren()) do
  if v:IsA("Sound") then
    v:Destroy()
  end
end
Debounces = {
  CanAttack = true,
  CanJoke = true,
  NoIdl = false,
  Slashing = false,
  Slashed = false,
  Slashing2 = false,
  Slashed2 = false,
  RKick = false,
  RKicked = false,
  LKick = false,
  LKicked = false,
  ks = false,
  ks2 = false
}
function weld5(part0, part1, c0, c1)
  weeld = Instance.new("Weld", part0)
  weeld.Part0 = part0
  weeld.Part1 = part1
  weeld.C0 = c0
  weeld.C1 = c1
  return weeld
end
function lerp(a, b, t)
  return a + (b - a) * t
end
function slerp(a, b, t)
  dot = a:Dot(b)
  if dot > 0.99999 or dot < -0.99999 then
    return t <= 0.5 and a or b
  else
    r = math.acos(dot)
    return (a * math.sin((1 - t) * r) + b * math.sin(t * r)) / math.sin(r)
  end
end
function matrixInterpolate(a, b, t)
  local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
  local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
  local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx, by, bz), t)
  local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t)
  local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t)
  local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t)
  local t = v1:Dot(v2)
  if not (t < 0) and t ~= 0 and not (t > 0) then
    return CFrame.new()
  end
  return CFrame.new(v0.x, v0.y, v0.z, v1.x, v1.y, v1.z, v2.x, v2.y, v2.z, v3.x, v3.y, v3.z)
end
function genWeld(a, b)
  local w = Instance.new("Weld", a)
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
  return weld
end
function NewPart(prnt, siz, cf, trans, anc, mat, col)
  local prt = Instance.new("Part")
  prt.Parent = prnt
  prt.FormFactor = 3
  prt.Name = "Part"
  prt.Size = siz
  prt.CanCollide = false
  prt.Anchored = anc
  prt.Locked = true
  prt.Transparency = trans
  prt.TopSurface = 10
  prt.BottomSurface = 10
  prt.FrontSurface = 10
  prt.BackSurface = 10
  prt.LeftSurface = 10
  prt.RightSurface = 10
  prt:BreakJoints()
  prt.CFrame = cf or CFrame.new(30, 10, 30)
  prt.Material = mat
  prt.BrickColor = BrickColor.new(col)
  m = Instance.new("SpecialMesh", prt)
  m.MeshType = 6
  return prt
end
function Lerp(c1, c2, al)
  local com1 = {
    c1.X,
    c1.Y,
    c1.Z,
    c1:toEulerAnglesXYZ()
  }
  local com2 = {
    c2.X,
    c2.Y,
    c2.Z,
    c2:toEulerAnglesXYZ()
  }
  for i, v in pairs(com1) do
    com1[i] = v + (com2[i] - v) * al
  end
  return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
  local wld = Instance.new("Weld", wp1)
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
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
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://426433404"
z.Looped = true
z.Volume = 0.1
z.MaxDistance = 45
z.Pitch = 0.46
wait(0.1)
local m = Instance.new("Model")
m.Name = "ClawR"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.SmoothPlastic
p1.CFrame = CFrame.new(-4.99999987E-6, 4.89385986, 22.5165577, -1, -1.50995803E-7, -3.19147107E-15, -9.79170765E-15, 4.37113883E-8, 1, -1.50995803E-7, 1, -4.37113883E-8)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1.39999974, 0.400000006, 0.200000003)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Dark stone grey")
p2.Material = Enum.Material.SmoothPlastic
p2.CFrame = CFrame.new(0.599969983, 6.29396057, 22.1166859, -1, -1.50995803E-7, -3.19147064E-15, -9.79170765E-15, 4.37113883E-8, 1, -1.50995803E-7, 1, -4.37113883E-8)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Dark stone grey")
p3.Material = Enum.Material.SmoothPlastic
p3.CFrame = CFrame.new(-0.600018978, 6.2938385, 21.2167225, -1, -1.50995803E-7, -3.21085626E-15, -9.81109284E-15, 4.37113883E-8, 1, -1.50995803E-7, 1, -4.37113883E-8)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Dark stone grey")
p4.Material = Enum.Material.SmoothPlastic
p4.CFrame = CFrame.new(0.399987936, 5.19413757, 22.6266346, 7.54979084E-8, 1, -2.90844433E-16, 4.37113883E-8, -3.00927449E-15, 1, 1, -7.54979084E-8, -4.37113883E-8)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p4)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Dark stone grey")
p5.Material = Enum.Material.SmoothPlastic
p5.CFrame = CFrame.new(0.399987936, 5.79408264, 22.6266193, -4.37113954E-8, 1, -6.93846136E-9, 4.37113883E-8, -6.93846003E-9, -1, -1, -4.37113954E-8, -4.37113883E-8)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p5)
b2.MeshType = Enum.MeshType.Wedge
b2.Name = "Mesh"
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Dark stone grey")
p6.Material = Enum.Material.SmoothPlastic
p6.CFrame = CFrame.new(0.599969923, 6.09387207, 22.2166615, -1, -1.50995788E-7, -3.55271368E-15, -9.32587341E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 1, 0.200000003)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Dark stone grey")
p7.Material = Enum.Material.SmoothPlastic
p7.CFrame = CFrame.new(0.599969983, 5.5940094, 21.2165241, 1, -1.48949937E-8, -3.29016819E-16, -1.14913995E-15, -4.37113883E-8, 1, -1.48949937E-8, -1, -4.37113883E-8)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.200000003, 1.20000005)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p7)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.SmoothPlastic
p8.CFrame = CFrame.new(-0.600018978, 6.19389343, 21.6167164, -1, -1.50995788E-7, -3.57165122E-15, -9.34481137E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(-5.00679016E-6, 6.19387817, 21.4166737, -1, -1.50995788E-7, -3.57196504E-15, -9.34512477E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1.39999974, 0.200000003, 0.400000006)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.SmoothPlastic
p10.CFrame = CFrame.new(0.199975997, 4.19387817, 22.516283, -1, 1.50995817E-7, -3.60255394E-16, 7.06705804E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.400000036, 1.20000005)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p10)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.SmoothPlastic
p11.CFrame = CFrame.new(0.600000978, 4.19389343, 22.516283, -1, 1.50995817E-7, -3.60255394E-16, 7.06705804E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000003, 0.400000036, 1.20000005)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p11)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.SmoothPlastic
p12.CFrame = CFrame.new(-0.600018978, 4.19384766, 22.5162983, -1, 1.50995817E-7, -3.60255394E-16, 7.06705804E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000003, 0.400000036, 1.20000005)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p12)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Dark stone grey")
p13.Material = Enum.Material.SmoothPlastic
p13.CFrame = CFrame.new(-0.200017989, 6.19396973, 22.8164539, -1, 1.50995817E-7, -3.5985136E-16, 7.06746207E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p13)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Dark stone grey")
p14.Material = Enum.Material.SmoothPlastic
p14.CFrame = CFrame.new(0.199976027, 6.19396973, 22.8164539, -1, 1.50995817E-7, -3.5985136E-16, 7.06746207E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p14)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Dark stone grey")
p15.Material = Enum.Material.SmoothPlastic
p15.CFrame = CFrame.new(-0.600018978, 6.19395447, 22.8164692, -1, 1.50995817E-7, -3.5985136E-16, 7.06746207E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p15)
b9.MeshType = Enum.MeshType.Wedge
b9.Name = "Mesh"
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Dark stone grey")
p16.Material = Enum.Material.SmoothPlastic
p16.CFrame = CFrame.new(-0.600018978, 6.29393005, 22.1167316, -1, -1.50995788E-7, -3.55249006E-15, -9.32564894E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Dark stone grey")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(-5.00679016E-6, 6.29388428, 22.6165791, -1, -1.50995788E-7, -3.55231007E-15, -9.32547022E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.39999974, 0.200000003, 0.200000003)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(0.199975982, 3.38136244, 21.9094734, -1, 1.50995817E-7, -3.22820628E-13, -7.54981926E-8, -0.50000006, 0.866025388, 1.30766068E-7, 0.866025388, 0.50000006)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.200000003, 0.200000033, 2)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p18)
b10.MeshType = Enum.MeshType.Wedge
b10.Name = "Mesh"
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.SmoothPlastic
p19.CFrame = CFrame.new(-0.600019097, 3.78135633, 22.3094673, -1, 1.50995817E-7, -2.30108359E-13, -3.90808097E-8, -0.258819073, 0.965925813, 1.4585072E-7, 0.965925813, 0.258819073)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.200000003, 0.200000033, 2)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p19)
b11.MeshType = Enum.MeshType.Wedge
b11.Name = "Mesh"
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.SmoothPlastic
p20.CFrame = CFrame.new(-0.200018048, 3.78135633, 22.3094673, -1, 1.50995817E-7, -2.30108359E-13, -3.90808097E-8, -0.258819073, 0.965925813, 1.4585072E-7, 0.965925813, 0.258819073)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.200000003, 0.200000033, 2)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p20)
b12.MeshType = Enum.MeshType.Wedge
b12.Name = "Mesh"
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.Material = Enum.Material.SmoothPlastic
p21.CFrame = CFrame.new(-5.05149364E-6, 5.49386597, 21.4166775, -1, -1.50995803E-7, -1.97629185E-14, -1.0658141E-14, 2.98023224E-8, 1, -1.50995788E-7, 1, -2.98023224E-8)
p21.CanCollide = false
p21.Locked = true
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.999999642, 0.200000003, 1)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.SmoothPlastic
p22.CFrame = CFrame.new(-0.200018048, 4.19386292, 22.5163021, -1, 1.50995803E-7, -1.65511187E-14, 1.55371042E-15, 2.98023224E-8, 1, 1.50995817E-7, 1, -2.98023224E-8)
p22.CanCollide = false
p22.Locked = true
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.200000003, 0.400000036, 1.20000005)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p22)
b13.MeshType = Enum.MeshType.Wedge
b13.Name = "Mesh"
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.Material = Enum.Material.SmoothPlastic
p23.CFrame = CFrame.new(0.600000918, 5.49391174, 22.1166744, -1, -1.50995803E-7, -1.97435774E-14, -1.06387999E-14, 2.98023224E-8, 1, -1.50995788E-7, 1, -2.98023224E-8)
p23.CanCollide = false
p23.Locked = true
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.200000003, 1.20000005, 1)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Dark stone grey")
p24.Material = Enum.Material.SmoothPlastic
p24.CFrame = CFrame.new(-5.06639481E-6, 6.09391785, 22.6166592, -1, -1.50995803E-7, -1.97434876E-14, -1.06387101E-14, 2.98023224E-8, 1, -1.50995788E-7, 1, -2.98023224E-8)
p24.CanCollide = false
p24.Locked = true
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.999999642, 0.200000003, 0.200000003)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Really black")
p25.Material = Enum.Material.SmoothPlastic
p25.CFrame = CFrame.new(-5.06639481E-6, 5.49403381, 22.6166592, -1, -1.50995803E-7, -1.97433182E-14, -1.06385407E-14, 2.98023224E-8, 1, -1.50995788E-7, 1, -2.98023224E-8)
p25.CanCollide = false
p25.Locked = true
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(1, 0.200000003, 1)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Dark stone grey")
p26.Material = Enum.Material.SmoothPlastic
p26.CFrame = CFrame.new(-0.600018978, 5.59402466, 21.2165279, 1, -1.48945674E-8, -1.65198818E-14, 2.47118601E-15, -2.98023224E-8, 1, -1.48945816E-8, -1, -2.98023224E-8)
p26.CanCollide = false
p26.Locked = true
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 0.200000003, 1.20000005)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p26)
b14.MeshType = Enum.MeshType.Wedge
b14.Name = "Mesh"
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Really black")
p27.Material = Enum.Material.SmoothPlastic
p27.CFrame = CFrame.new(-0.200018048, 3.38136244, 21.9094772, -1, 1.50995831E-7, -3.3138634E-13, -7.54981926E-8, -0.500000119, 0.866025388, 1.30766054E-7, 0.866025388, 0.500000119)
p27.CanCollide = false
p27.Locked = true
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.200000003, 0.200000033, 2)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p27)
b15.MeshType = Enum.MeshType.Wedge
b15.Name = "Mesh"
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Dark stone grey")
p28.Material = Enum.Material.SmoothPlastic
p28.CFrame = CFrame.new(-0.400030017, 5.19416857, 22.6266098, -4.37114132E-8, -1, -3.11936078E-14, 0, 1.77635684E-15, 1.00000012, -1.00000012, 4.37114096E-8, 0)
p28.CanCollide = false
p28.Locked = true
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p28)
b16.MeshType = Enum.MeshType.Wedge
b16.Name = "Mesh"
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Dark stone grey")
p29.Material = Enum.Material.SmoothPlastic
p29.CFrame = CFrame.new(-0.200018033, 5.79418993, 22.6265945, -4.37113634E-8, -1, 6.93751812E-9, -8.74227837E-8, -6.93748303E-9, -1.00000012, 1.00000012, -4.37113741E-8, -8.74227837E-8)
p29.CanCollide = false
p29.Locked = true
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p29)
b17.MeshType = Enum.MeshType.Wedge
b17.Name = "Mesh"
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Dark stone grey")
p30.Material = Enum.Material.SmoothPlastic
p30.CFrame = CFrame.new(0.199975982, 5.79412842, 22.6266098, -4.37114132E-8, 1, -5.01085538E-7, -3.17864988E-8, -5.01085594E-7, -1.00000012, -1.00000012, -4.37113989E-8, 3.17865201E-8)
p30.CanCollide = false
p30.Locked = true
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p30)
b18.MeshType = Enum.MeshType.Wedge
b18.Name = "Mesh"
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Dark stone grey")
p31.Material = Enum.Material.SmoothPlastic
p31.CFrame = CFrame.new(-0.400030017, 5.79417467, 22.6265793, -4.3711367E-8, -1, 6.93717084E-9, -8.74227908E-8, -6.93717084E-9, -1.00000012, 1.00000012, -4.3711367E-8, -8.74227837E-8)
p31.CanCollide = false
p31.Locked = true
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p31)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Dark stone grey")
p32.Material = Enum.Material.SmoothPlastic
p32.CFrame = CFrame.new(-5.00679016E-6, 5.49411058, 22.6266251, -1, -1.50995788E-7, 1.38822287E-12, 1.38467016E-12, -7.10542736E-15, 1.00000012, -1.50995788E-7, 1.00000012, 0)
p32.CanCollide = false
p32.Locked = true
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.999999642, 0.200000003, 0.200000003)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Really black")
p33.Material = Enum.Material.SmoothPlastic
p33.CFrame = CFrame.new(-0.600018978, 5.49392748, 22.1166763, -1, -1.50995788E-7, 2.03542695E-14, 1.6801339E-14, -7.10542736E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.06542398E-19)
p33.CanCollide = false
p33.Locked = true
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.200000003, 1.20000005, 1)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Dark stone grey")
p34.Material = Enum.Material.SmoothPlastic
p34.CFrame = CFrame.new(-0.600018978, 6.0938859, 22.2166672, -1, -1.50995788E-7, 2.03542695E-14, 1.6801339E-14, -7.10542736E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.06542398E-19)
p34.CanCollide = false
p34.Locked = true
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.200000003, 1, 0.200000003)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p35 = Instance.new("Part", m)
p35.BrickColor = BrickColor.new("Dark stone grey")
p35.Material = Enum.Material.SmoothPlastic
p35.CFrame = CFrame.new(0.600000978, 6.19400072, 22.8164444, -1, 1.50995817E-7, -7.02487027E-12, -7.02842428E-12, -7.10543244E-15, 1.00000012, 1.50995845E-7, 1.00000012, -1.27034159E-18)
p35.CanCollide = false
p35.Locked = true
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("SpecialMesh", p35)
b20.MeshType = Enum.MeshType.Wedge
b20.Name = "Mesh"
p36 = Instance.new("Part", m)
p36.BrickColor = BrickColor.new("Dark stone grey")
p36.Material = Enum.Material.SmoothPlastic
p36.CFrame = CFrame.new(-0.600018978, 5.49412394, 21.4165421, -1, -1.50995788E-7, 2.03548116E-14, 1.68016642E-14, -7.1075551E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.33414135E-18)
p36.CanCollide = false
p36.Locked = true
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.200000003, 0.200000003, 1)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p37 = Instance.new("Part", m)
p37.BrickColor = BrickColor.new("Dark stone grey")
p37.Material = Enum.Material.SmoothPlastic
p37.CFrame = CFrame.new(0.600000978, 5.49408007, 21.4165726, -1, -1.50995788E-7, 2.03740189E-14, 1.68208715E-14, -7.1075551E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.33413846E-18)
p37.CanCollide = false
p37.Locked = true
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.200000003, 0.200000003, 1)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p38 = Instance.new("Part", m)
p38.BrickColor = BrickColor.new("Really black")
p38.Material = Enum.Material.SmoothPlastic
p38.CFrame = CFrame.new(0.600000978, 6.19389391, 21.6167221, -1, -1.50995788E-7, 2.03548116E-14, 1.68016642E-14, -7.1075551E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.33414135E-18)
p38.CanCollide = false
p38.Locked = true
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p39 = Instance.new("Part", m)
p39.BrickColor = BrickColor.new("Really black")
p39.Material = Enum.Material.SmoothPlastic
p39.CFrame = CFrame.new(-0.600018859, 3.38136268, 21.9094791, -1, 1.50995803E-7, -3.02116459E-13, -7.54981855E-8, -0.500000179, 0.866025507, 1.30766097E-7, 0.866025507, 0.500000179)
p39.CanCollide = false
p39.Locked = true
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.200000003, 0.200000033, 2)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p39)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
p40 = Instance.new("Part", m)
p40.BrickColor = BrickColor.new("Really black")
p40.Material = Enum.Material.SmoothPlastic
p40.CFrame = CFrame.new(0.600000978, 3.78135681, 22.309473, -1, 1.50995803E-7, -2.06556967E-13, -3.9080799E-8, -0.258819163, 0.965925932, 1.45850763E-7, 0.965925932, 0.258819163)
p40.CanCollide = false
p40.Locked = true
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.200000003, 0.200000033, 2)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p40)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
p41 = Instance.new("Part", m)
p41.BrickColor = BrickColor.new("Really black")
p41.Material = Enum.Material.SmoothPlastic
p41.CFrame = CFrame.new(0.600000978, 3.38136244, 21.909483, -1, 1.50995803E-7, -3.13205543E-13, -7.54981784E-8, -0.500000179, 0.866025448, 1.30766111E-7, 0.866025448, 0.500000179)
p41.CanCollide = false
p41.Locked = true
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.200000003, 0.200000033, 2)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p41)
b23.MeshType = Enum.MeshType.Wedge
b23.Name = "Mesh"
p42 = Instance.new("Part", m)
p42.BrickColor = BrickColor.new("Dark stone grey")
p42.Material = Enum.Material.SmoothPlastic
p42.CFrame = CFrame.new(0.599969983, 6.29383993, 21.2167339, -1, -1.50995817E-7, -1.2377252E-15, 3.55271368E-14, -2.98023224E-8, 1.00000012, -1.5099576E-7, 1.00000012, 2.98023224E-8)
p42.CanCollide = false
p42.Locked = true
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p43 = Instance.new("Part", m)
p43.BrickColor = BrickColor.new("Really black")
p43.Material = Enum.Material.SmoothPlastic
p43.CFrame = CFrame.new(0.199975967, 3.781358, 22.3094769, -1, 1.50995803E-7, -2.21463798E-13, -3.90807813E-8, -0.258819163, 0.965925932, 1.45850777E-7, 0.965925932, 0.258819163)
p43.CanCollide = false
p43.Locked = true
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.200000003, 0.200000033, 2)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p43)
b24.MeshType = Enum.MeshType.Wedge
b24.Name = "Mesh"
p44 = Instance.new("Part", m)
p44.BrickColor = BrickColor.new("Really black")
p44.Transparency = 1
p44.Name = "ArmPart"
p44.CFrame = CFrame.new(-4.47034836E-8, 5.90000105, 22.0000114, 1, -4.30749457E-15, -4.75632717E-16, -3.59703857E-14, 1.00000012, -5.96046448E-8, -7.04945E-14, 5.96046448E-8, 1.00000012)
p44.CanCollide = false
p44.Locked = true
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(1, 1, 1)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-1.60009427E-6, -22.5165577, -4.89385843, -1, -9.79170765E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19147107E-15, 1, -4.37113883E-8)
w1.Part1 = p2
w1.C1 = CFrame.new(0.599973321, -22.1166859, -6.29395914, -1, -9.79170765E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19147107E-15, 1, -4.37113883E-8)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(0.599973321, -22.1166859, -6.29395914, -1, -9.79170765E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19147107E-15, 1, -4.37113883E-8)
w2.Part1 = p3
w2.C1 = CFrame.new(-0.600015759, -21.2167225, -6.29383707, -1, -9.81109284E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21085711E-15, 1, -4.37113883E-8)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-0.600015759, -21.2167225, -6.29383707, -1, -9.81109284E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21085711E-15, 1, -4.37113883E-8)
w3.Part1 = p4
w3.C1 = CFrame.new(-22.6266346, -0.399986297, -5.19413614, 7.54979013E-8, 4.37113883E-8, 1, 1, -3.00927322E-15, -7.54979013E-8, -2.90844856E-16, 1, -4.37113883E-8)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-22.6266346, -0.399986297, -5.19413614, 7.54979013E-8, 4.37113883E-8, 1, 1, -3.00927322E-15, -7.54979013E-8, -2.90844856E-16, 1, -4.37113883E-8)
w4.Part1 = p5
w4.C1 = CFrame.new(22.6266193, -0.399986982, 5.79408312, -4.37113883E-8, 4.37113883E-8, -1, 1, -6.93845958E-9, -4.37113883E-8, -6.93846136E-9, -1, -4.37113883E-8)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(22.6266193, -0.399986982, 5.79408312, -4.37113883E-8, 4.37113883E-8, -1, 1, -6.93845958E-9, -4.37113883E-8, -6.93846136E-9, -1, -4.37113883E-8)
w5.Part1 = p6
w5.C1 = CFrame.new(0.599973321, -22.2166615, -6.09387064, -1, -9.79202105E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19178532E-15, 1, -4.37113883E-8)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(0.599973321, -22.2166615, -6.09387064, -1, -9.79202105E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19178532E-15, 1, -4.37113883E-8)
w6.Part1 = p7
w6.C1 = CFrame.new(-0.599969685, 21.2165241, -5.59400797, 1, -6.82992523E-16, -1.48949821E-8, -1.48949821E-8, -4.37113883E-8, -1, 3.1912178E-17, 1, -4.37113883E-8)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-0.599969685, 21.2165241, -5.59400797, 1, -6.82992523E-16, -1.48949821E-8, -1.48949821E-8, -4.37113883E-8, -1, 3.1912178E-17, 1, -4.37113883E-8)
w7.Part1 = p8
w7.C1 = CFrame.new(-0.6000157, -21.6167164, -6.193892, -1, -9.81095901E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21072243E-15, 1, -4.37113883E-8)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-0.6000157, -21.6167164, -6.193892, -1, -9.81095901E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21072243E-15, 1, -4.37113883E-8)
w8.Part1 = p9
w8.C1 = CFrame.new(-1.76617209E-6, -21.4166737, -6.19387674, -1, -9.81127241E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21103668E-15, 1, -4.37113883E-8)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-1.76617209E-6, -21.4166737, -6.19387674, -1, -9.81127241E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21103668E-15, 1, -4.37113883E-8)
w9.Part1 = p10
w9.C1 = CFrame.new(0.1999726, -22.516283, -4.19387674, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(0.1999726, -22.516283, -4.19387674, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w10.Part1 = p11
w10.C1 = CFrame.new(0.59999758, -22.516283, -4.193892, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(0.59999758, -22.516283, -4.193892, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w11.Part1 = p12
w11.C1 = CFrame.new(-0.600022376, -22.5162983, -4.19384623, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-0.600022376, -22.5162983, -4.19384623, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w12.Part1 = p13
w12.C1 = CFrame.new(-0.200021446, -22.8164539, -6.1939683, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-0.200021446, -22.8164539, -6.1939683, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w13.Part1 = p14
w13.C1 = CFrame.new(0.199972555, -22.8164539, -6.1939683, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(0.199972555, -22.8164539, -6.1939683, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w14.Part1 = p15
w14.C1 = CFrame.new(-0.600022435, -22.8164692, -6.19395304, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-0.600022435, -22.8164692, -6.19395304, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w15.Part1 = p16
w15.C1 = CFrame.new(-0.60001564, -22.1167316, -6.29392862, -1, -9.79179743E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19156085E-15, 1, -4.37113883E-8)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-0.60001564, -22.1167316, -6.29392862, -1, -9.79179743E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19156085E-15, 1, -4.37113883E-8)
w16.Part1 = p17
w16.C1 = CFrame.new(-1.58499142E-6, -22.6165791, -6.29388285, -1, -9.79161786E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19138128E-15, 1, -4.37113883E-8)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-1.58499142E-6, -22.6165791, -6.29388285, -1, -9.79161786E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19138128E-15, 1, -4.37113883E-8)
w17.Part1 = p18
w17.C1 = CFrame.new(0.19997339, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(0.19997339, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w18.Part1 = p19
w18.C1 = CFrame.new(-0.600022137, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-0.600022137, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w19.Part1 = p20
w19.C1 = CFrame.new(-0.200021103, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-0.200021103, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w20.Part1 = p21
w20.C1 = CFrame.new(-1.76617209E-6, -21.4166737, -5.49386454, -1, -9.8113622E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21112647E-15, 1, -4.37113883E-8)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-1.76617209E-6, -21.4166737, -5.49386454, -1, -9.8113622E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21112647E-15, 1, -4.37113883E-8)
w21.Part1 = p22
w21.C1 = CFrame.new(-0.200021401, -22.5162983, -4.19386148, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-0.200021401, -22.5162983, -4.19386148, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w22.Part1 = p23
w22.C1 = CFrame.new(0.600004315, -22.1166706, -5.49391031, -1, -9.79202105E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19178532E-15, 1, -4.37113883E-8)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(0.600004315, -22.1166706, -5.49391031, -1, -9.79202105E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19178532E-15, 1, -4.37113883E-8)
w23.Part1 = p24
w23.C1 = CFrame.new(-1.58497983E-6, -22.6166553, -6.09391642, -1, -9.79193126E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19169553E-15, 1, -4.37113883E-8)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-1.58497983E-6, -22.6166553, -6.09391642, -1, -9.79193126E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19169553E-15, 1, -4.37113883E-8)
w24.Part1 = p25
w24.C1 = CFrame.new(-1.58497983E-6, -22.6166553, -5.49403238, -1, -9.79176186E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19152612E-15, 1, -4.37113883E-8)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(-1.58497983E-6, -22.6166553, -5.49403238, -1, -9.79176186E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19152612E-15, 1, -4.37113883E-8)
w25.Part1 = p26
w25.C1 = CFrame.new(0.600019276, 21.2165241, -5.59402323, 1, -6.82972512E-16, -1.48945629E-8, -1.48945629E-8, -4.37113883E-8, -1, 3.1910484E-17, 1, -4.37113883E-8)
w26 = Instance.new("Weld", p26)
w26.Name = "Part_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(0.600019276, 21.2165241, -5.59402323, 1, -6.82972512E-16, -1.48945629E-8, -1.48945629E-8, -4.37113883E-8, -1, 3.1910484E-17, 1, -4.37113883E-8)
w26.Part1 = p27
w26.C1 = CFrame.new(-0.200020611, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w27 = Instance.new("Weld", p27)
w27.Name = "Part_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(-0.200020611, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w27.Part1 = p28
w27.C1 = CFrame.new(22.6266041, -0.400030971, -5.19416666, -4.37113883E-8, -4.37113883E-8, -1, -1, 2.18301333E-15, 4.37113883E-8, 2.72327869E-16, 1, -4.37113883E-8)
w28 = Instance.new("Weld", p28)
w28.Name = "Part_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(22.6266041, -0.400030971, -5.19416666, -4.37113883E-8, -4.37113883E-8, -1, -1, 2.18301333E-15, 4.37113883E-8, 2.72327869E-16, 1, -4.37113883E-8)
w28.Part1 = p29
w28.C1 = CFrame.new(-22.6265888, -0.200016975, 5.79418993, -4.37113883E-8, -4.37113883E-8, 1, -1, -6.93748525E-9, -4.37113883E-8, 6.93748703E-9, -1, -4.37113883E-8)
w29 = Instance.new("Weld", p29)
w29.Name = "Part_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-22.6265888, -0.200016975, 5.79418993, -4.37113883E-8, -4.37113883E-8, 1, -1, -6.93748525E-9, -4.37113883E-8, 6.93748703E-9, -1, -4.37113883E-8)
w29.Part1 = p30
w29.C1 = CFrame.new(22.6266041, -0.199972108, 5.79412603, -4.37113883E-8, -7.54978799E-8, -1, 1, -5.01085538E-7, -4.37113492E-8, -5.01085538E-7, -1, 7.54979013E-8)
w30 = Instance.new("Weld", p30)
w30.Name = "Part_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(22.6266041, -0.199972108, 5.79412603, -4.37113883E-8, -7.54978799E-8, -1, 1, -5.01085538E-7, -4.37113492E-8, -5.01085538E-7, -1, 7.54979013E-8)
w30.Part1 = p31
w30.C1 = CFrame.new(-22.6265736, -0.400028974, 5.79417467, -4.37113883E-8, -4.37113883E-8, 1, -1, -6.93719215E-9, -4.37113883E-8, 6.93719393E-9, -1, -4.37113883E-8)
w31 = Instance.new("Weld", p31)
w31.Name = "Part_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(-22.6265736, -0.400028974, 5.79417467, -4.37113883E-8, -4.37113883E-8, 1, -1, -6.93719215E-9, -4.37113883E-8, 6.93719393E-9, -1, -4.37113883E-8)
w31.Part1 = p32
w31.C1 = CFrame.new(-1.58348257E-6, -22.6266193, -5.49410868, -1, 1.35805733E-12, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, 1.36465752E-12, 1, -4.37113883E-8)
w32 = Instance.new("Weld", p32)
w32.Name = "Part_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(-1.58348257E-6, -22.6266193, -5.49410868, -1, 1.35805733E-12, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, 1.36465752E-12, 1, -4.37113883E-8)
w32.Part1 = p33
w32.C1 = CFrame.new(-0.60001564, -22.1166706, -5.49392557, -1, -9.81131815E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21108157E-15, 1, -4.37113883E-8)
w33 = Instance.new("Weld", p33)
w33.Name = "Part_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(-0.60001564, -22.1166706, -5.49392557, -1, -9.81131815E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21108157E-15, 1, -4.37113883E-8)
w33.Part1 = p34
w33.C1 = CFrame.new(-0.60001564, -22.2166615, -6.09388399, -1, -9.81131815E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21108157E-15, 1, -4.37113883E-8)
w34 = Instance.new("Weld", p34)
w34.Name = "Part_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(-0.60001564, -22.2166615, -6.09388399, -1, -9.81131815E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21108157E-15, 1, -4.37113883E-8)
w34.Part1 = p35
w34.C1 = CFrame.new(0.59999752, -22.8164387, -6.19399881, -1, -7.04183543E-12, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, -7.04843562E-12, 1, -4.37113883E-8)
w35 = Instance.new("Weld", p35)
w35.Name = "Part_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(0.59999752, -22.8164387, -6.19399881, -1, -7.04183543E-12, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, -7.04843562E-12, 1, -4.37113883E-8)
w35.Part1 = p36
w35.C1 = CFrame.new(-0.600015759, -21.4165363, -5.49412203, -1, -9.81086923E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21063265E-15, 1, -4.37113883E-8)
w36 = Instance.new("Weld", p36)
w36.Name = "Part_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(-0.600015759, -21.4165363, -5.49412203, -1, -9.81086923E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21063265E-15, 1, -4.37113883E-8)
w36.Part1 = p37
w36.C1 = CFrame.new(0.600004196, -21.4165668, -5.49407816, -1, -9.79166191E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19142617E-15, 1, -4.37113883E-8)
w37 = Instance.new("Weld", p37)
w37.Name = "Part_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(0.600004196, -21.4165668, -5.49407816, -1, -9.79166191E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19142617E-15, 1, -4.37113883E-8)
w37.Part1 = p38
w37.C1 = CFrame.new(0.600004256, -21.6167164, -6.193892, -1, -9.81086923E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21063265E-15, 1, -4.37113883E-8)
w38 = Instance.new("Weld", p38)
w38.Name = "Part_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(0.600004256, -21.6167164, -6.193892, -1, -9.81086923E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21063265E-15, 1, -4.37113883E-8)
w38.Part1 = p39
w38.C1 = CFrame.new(-0.600021601, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w39 = Instance.new("Weld", p39)
w39.Name = "Part_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(-0.600021601, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w39.Part1 = p40
w39.C1 = CFrame.new(0.599997818, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w40 = Instance.new("Weld", p40)
w40.Name = "Part_Weld"
w40.Part0 = p40
w40.C0 = CFrame.new(0.599997818, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w40.Part1 = p41
w40.C1 = CFrame.new(0.599998355, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w41 = Instance.new("Weld", p41)
w41.Name = "Part_Weld"
w41.Part0 = p41
w41.C0 = CFrame.new(0.599998355, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w41.Part1 = p42
w41.C1 = CFrame.new(0.599973202, -21.2167225, -6.29383707, -1, -9.81113858E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.210902E-15, 1, -4.37113883E-8)
w42 = Instance.new("Weld", p42)
w42.Name = "Part_Weld"
w42.Part0 = p42
w42.C0 = CFrame.new(0.599973202, -21.2167225, -6.29383707, -1, -9.81113858E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.210902E-15, 1, -4.37113883E-8)
w42.Part1 = p43
w42.C1 = CFrame.new(0.199972898, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w43 = Instance.new("Weld", p43)
w43.Name = "ArmPart_Weld"
w43.Part0 = p43
w43.C0 = CFrame.new(0.199972898, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w43.Part1 = p44
w43.C1 = CFrame.new(0, -5.89999914, -22, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w44 = Instance.new("Weld", p44)
w44.Name = "Head_Weld"
w44.Part0 = p44
w44.C0 = CFrame.new(0, -5.89999914, -22, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m.Parent = rarm
m:MakeJoints()
local m = Instance.new("Model")
m.Name = "ClawL"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.SmoothPlastic
p1.CFrame = CFrame.new(-4.99999987E-6, 4.89385986, 22.5165577, -1, -1.50995803E-7, -3.19147107E-15, -9.79170765E-15, 4.37113883E-8, 1, -1.50995803E-7, 1, -4.37113883E-8)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1.39999974, 0.400000006, 0.200000003)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Dark stone grey")
p2.Material = Enum.Material.SmoothPlastic
p2.CFrame = CFrame.new(0.599969983, 6.29396057, 22.1166859, -1, -1.50995803E-7, -3.19147064E-15, -9.79170765E-15, 4.37113883E-8, 1, -1.50995803E-7, 1, -4.37113883E-8)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Dark stone grey")
p3.Material = Enum.Material.SmoothPlastic
p3.CFrame = CFrame.new(-0.600018978, 6.2938385, 21.2167225, -1, -1.50995803E-7, -3.21085626E-15, -9.81109284E-15, 4.37113883E-8, 1, -1.50995803E-7, 1, -4.37113883E-8)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Dark stone grey")
p4.Material = Enum.Material.SmoothPlastic
p4.CFrame = CFrame.new(0.399987936, 5.19413757, 22.6266346, 7.54979084E-8, 1, -2.90844433E-16, 4.37113883E-8, -3.00927449E-15, 1, 1, -7.54979084E-8, -4.37113883E-8)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p4)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Dark stone grey")
p5.Material = Enum.Material.SmoothPlastic
p5.CFrame = CFrame.new(0.399987936, 5.79408264, 22.6266193, -4.37113954E-8, 1, -6.93846136E-9, 4.37113883E-8, -6.93846003E-9, -1, -1, -4.37113954E-8, -4.37113883E-8)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p5)
b2.MeshType = Enum.MeshType.Wedge
b2.Name = "Mesh"
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Dark stone grey")
p6.Material = Enum.Material.SmoothPlastic
p6.CFrame = CFrame.new(0.599969923, 6.09387207, 22.2166615, -1, -1.50995788E-7, -3.55271368E-15, -9.32587341E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 1, 0.200000003)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Dark stone grey")
p7.Material = Enum.Material.SmoothPlastic
p7.CFrame = CFrame.new(0.599969983, 5.5940094, 21.2165241, 1, -1.48949937E-8, -3.29016819E-16, -1.14913995E-15, -4.37113883E-8, 1, -1.48949937E-8, -1, -4.37113883E-8)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.200000003, 1.20000005)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p7)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.SmoothPlastic
p8.CFrame = CFrame.new(-0.600018978, 6.19389343, 21.6167164, -1, -1.50995788E-7, -3.57165122E-15, -9.34481137E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(-5.00679016E-6, 6.19387817, 21.4166737, -1, -1.50995788E-7, -3.57196504E-15, -9.34512477E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1.39999974, 0.200000003, 0.400000006)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.SmoothPlastic
p10.CFrame = CFrame.new(0.199975997, 4.19387817, 22.516283, -1, 1.50995817E-7, -3.60255394E-16, 7.06705804E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.400000036, 1.20000005)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p10)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.SmoothPlastic
p11.CFrame = CFrame.new(0.600000978, 4.19389343, 22.516283, -1, 1.50995817E-7, -3.60255394E-16, 7.06705804E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000003, 0.400000036, 1.20000005)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p11)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.SmoothPlastic
p12.CFrame = CFrame.new(-0.600018978, 4.19384766, 22.5162983, -1, 1.50995817E-7, -3.60255394E-16, 7.06705804E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000003, 0.400000036, 1.20000005)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p12)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Dark stone grey")
p13.Material = Enum.Material.SmoothPlastic
p13.CFrame = CFrame.new(-0.200017989, 6.19396973, 22.8164539, -1, 1.50995817E-7, -3.5985136E-16, 7.06746207E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p13)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Dark stone grey")
p14.Material = Enum.Material.SmoothPlastic
p14.CFrame = CFrame.new(0.199976027, 6.19396973, 22.8164539, -1, 1.50995817E-7, -3.5985136E-16, 7.06746207E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p14)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Dark stone grey")
p15.Material = Enum.Material.SmoothPlastic
p15.CFrame = CFrame.new(-0.600018978, 6.19395447, 22.8164692, -1, 1.50995817E-7, -3.5985136E-16, 7.06746207E-15, 4.37113883E-8, 1, 1.50995817E-7, 1, -4.37113883E-8)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p15)
b9.MeshType = Enum.MeshType.Wedge
b9.Name = "Mesh"
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Dark stone grey")
p16.Material = Enum.Material.SmoothPlastic
p16.CFrame = CFrame.new(-0.600018978, 6.29393005, 22.1167316, -1, -1.50995788E-7, -3.55249006E-15, -9.32564894E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Dark stone grey")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(-5.00679016E-6, 6.29388428, 22.6165791, -1, -1.50995788E-7, -3.55231007E-15, -9.32547022E-15, 4.37113883E-8, 1, -1.50995788E-7, 1, -4.37113883E-8)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.39999974, 0.200000003, 0.200000003)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(0.199975982, 3.38136244, 21.9094734, -1, 1.50995817E-7, -3.22820628E-13, -7.54981926E-8, -0.50000006, 0.866025388, 1.30766068E-7, 0.866025388, 0.50000006)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.200000003, 0.200000033, 2)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p18)
b10.MeshType = Enum.MeshType.Wedge
b10.Name = "Mesh"
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.SmoothPlastic
p19.CFrame = CFrame.new(-0.600019097, 3.78135633, 22.3094673, -1, 1.50995817E-7, -2.30108359E-13, -3.90808097E-8, -0.258819073, 0.965925813, 1.4585072E-7, 0.965925813, 0.258819073)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.200000003, 0.200000033, 2)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p19)
b11.MeshType = Enum.MeshType.Wedge
b11.Name = "Mesh"
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.SmoothPlastic
p20.CFrame = CFrame.new(-0.200018048, 3.78135633, 22.3094673, -1, 1.50995817E-7, -2.30108359E-13, -3.90808097E-8, -0.258819073, 0.965925813, 1.4585072E-7, 0.965925813, 0.258819073)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.200000003, 0.200000033, 2)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p20)
b12.MeshType = Enum.MeshType.Wedge
b12.Name = "Mesh"
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.Material = Enum.Material.SmoothPlastic
p21.CFrame = CFrame.new(-5.05149364E-6, 5.49386597, 21.4166775, -1, -1.50995803E-7, -1.97629185E-14, -1.0658141E-14, 2.98023224E-8, 1, -1.50995788E-7, 1, -2.98023224E-8)
p21.CanCollide = false
p21.Locked = true
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.999999642, 0.200000003, 1)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.SmoothPlastic
p22.CFrame = CFrame.new(-0.200018048, 4.19386292, 22.5163021, -1, 1.50995803E-7, -1.65511187E-14, 1.55371042E-15, 2.98023224E-8, 1, 1.50995817E-7, 1, -2.98023224E-8)
p22.CanCollide = false
p22.Locked = true
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.200000003, 0.400000036, 1.20000005)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p22)
b13.MeshType = Enum.MeshType.Wedge
b13.Name = "Mesh"
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.Material = Enum.Material.SmoothPlastic
p23.CFrame = CFrame.new(0.600000918, 5.49391174, 22.1166744, -1, -1.50995803E-7, -1.97435774E-14, -1.06387999E-14, 2.98023224E-8, 1, -1.50995788E-7, 1, -2.98023224E-8)
p23.CanCollide = false
p23.Locked = true
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.200000003, 1.20000005, 1)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Dark stone grey")
p24.Material = Enum.Material.SmoothPlastic
p24.CFrame = CFrame.new(-5.06639481E-6, 6.09391785, 22.6166592, -1, -1.50995803E-7, -1.97434876E-14, -1.06387101E-14, 2.98023224E-8, 1, -1.50995788E-7, 1, -2.98023224E-8)
p24.CanCollide = false
p24.Locked = true
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.999999642, 0.200000003, 0.200000003)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Really black")
p25.Material = Enum.Material.SmoothPlastic
p25.CFrame = CFrame.new(-5.06639481E-6, 5.49403381, 22.6166592, -1, -1.50995803E-7, -1.97433182E-14, -1.06385407E-14, 2.98023224E-8, 1, -1.50995788E-7, 1, -2.98023224E-8)
p25.CanCollide = false
p25.Locked = true
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(1, 0.200000003, 1)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Dark stone grey")
p26.Material = Enum.Material.SmoothPlastic
p26.CFrame = CFrame.new(-0.600018978, 5.59402466, 21.2165279, 1, -1.48945674E-8, -1.65198818E-14, 2.47118601E-15, -2.98023224E-8, 1, -1.48945816E-8, -1, -2.98023224E-8)
p26.CanCollide = false
p26.Locked = true
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 0.200000003, 1.20000005)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p26)
b14.MeshType = Enum.MeshType.Wedge
b14.Name = "Mesh"
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Really black")
p27.Material = Enum.Material.SmoothPlastic
p27.CFrame = CFrame.new(-0.200018048, 3.38136244, 21.9094772, -1, 1.50995831E-7, -3.3138634E-13, -7.54981926E-8, -0.500000119, 0.866025388, 1.30766054E-7, 0.866025388, 0.500000119)
p27.CanCollide = false
p27.Locked = true
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.200000003, 0.200000033, 2)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p27)
b15.MeshType = Enum.MeshType.Wedge
b15.Name = "Mesh"
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Dark stone grey")
p28.Material = Enum.Material.SmoothPlastic
p28.CFrame = CFrame.new(-0.400030017, 5.19416857, 22.6266098, -4.37114132E-8, -1, -3.11936078E-14, 0, 1.77635684E-15, 1.00000012, -1.00000012, 4.37114096E-8, 0)
p28.CanCollide = false
p28.Locked = true
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p28)
b16.MeshType = Enum.MeshType.Wedge
b16.Name = "Mesh"
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Dark stone grey")
p29.Material = Enum.Material.SmoothPlastic
p29.CFrame = CFrame.new(-0.200018033, 5.79418993, 22.6265945, -4.37113634E-8, -1, 6.93751812E-9, -8.74227837E-8, -6.93748303E-9, -1.00000012, 1.00000012, -4.37113741E-8, -8.74227837E-8)
p29.CanCollide = false
p29.Locked = true
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p29)
b17.MeshType = Enum.MeshType.Wedge
b17.Name = "Mesh"
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Dark stone grey")
p30.Material = Enum.Material.SmoothPlastic
p30.CFrame = CFrame.new(0.199975982, 5.79412842, 22.6266098, -4.37114132E-8, 1, -5.01085538E-7, -3.17864988E-8, -5.01085594E-7, -1.00000012, -1.00000012, -4.37113989E-8, 3.17865201E-8)
p30.CanCollide = false
p30.Locked = true
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p30)
b18.MeshType = Enum.MeshType.Wedge
b18.Name = "Mesh"
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Dark stone grey")
p31.Material = Enum.Material.SmoothPlastic
p31.CFrame = CFrame.new(-0.400030017, 5.79417467, 22.6265793, -4.3711367E-8, -1, 6.93717084E-9, -8.74227908E-8, -6.93717084E-9, -1.00000012, 1.00000012, -4.3711367E-8, -8.74227837E-8)
p31.CanCollide = false
p31.Locked = true
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.200000003, 0.200000003, 0.400000036)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p31)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Dark stone grey")
p32.Material = Enum.Material.SmoothPlastic
p32.CFrame = CFrame.new(-5.00679016E-6, 5.49411058, 22.6266251, -1, -1.50995788E-7, 1.38822287E-12, 1.38467016E-12, -7.10542736E-15, 1.00000012, -1.50995788E-7, 1.00000012, 0)
p32.CanCollide = false
p32.Locked = true
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.999999642, 0.200000003, 0.200000003)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Really black")
p33.Material = Enum.Material.SmoothPlastic
p33.CFrame = CFrame.new(-0.600018978, 5.49392748, 22.1166763, -1, -1.50995788E-7, 2.03542695E-14, 1.6801339E-14, -7.10542736E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.06542398E-19)
p33.CanCollide = false
p33.Locked = true
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.200000003, 1.20000005, 1)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Dark stone grey")
p34.Material = Enum.Material.SmoothPlastic
p34.CFrame = CFrame.new(-0.600018978, 6.0938859, 22.2166672, -1, -1.50995788E-7, 2.03542695E-14, 1.6801339E-14, -7.10542736E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.06542398E-19)
p34.CanCollide = false
p34.Locked = true
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.200000003, 1, 0.200000003)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p35 = Instance.new("Part", m)
p35.BrickColor = BrickColor.new("Dark stone grey")
p35.Material = Enum.Material.SmoothPlastic
p35.CFrame = CFrame.new(0.600000978, 6.19400072, 22.8164444, -1, 1.50995817E-7, -7.02487027E-12, -7.02842428E-12, -7.10543244E-15, 1.00000012, 1.50995845E-7, 1.00000012, -1.27034159E-18)
p35.CanCollide = false
p35.Locked = true
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("SpecialMesh", p35)
b20.MeshType = Enum.MeshType.Wedge
b20.Name = "Mesh"
p36 = Instance.new("Part", m)
p36.BrickColor = BrickColor.new("Dark stone grey")
p36.Material = Enum.Material.SmoothPlastic
p36.CFrame = CFrame.new(-0.600018978, 5.49412394, 21.4165421, -1, -1.50995788E-7, 2.03548116E-14, 1.68016642E-14, -7.1075551E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.33414135E-18)
p36.CanCollide = false
p36.Locked = true
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.200000003, 0.200000003, 1)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p37 = Instance.new("Part", m)
p37.BrickColor = BrickColor.new("Dark stone grey")
p37.Material = Enum.Material.SmoothPlastic
p37.CFrame = CFrame.new(0.600000978, 5.49408007, 21.4165726, -1, -1.50995788E-7, 2.03740189E-14, 1.68208715E-14, -7.1075551E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.33413846E-18)
p37.CanCollide = false
p37.Locked = true
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.200000003, 0.200000003, 1)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p38 = Instance.new("Part", m)
p38.BrickColor = BrickColor.new("Really black")
p38.Material = Enum.Material.SmoothPlastic
p38.CFrame = CFrame.new(0.600000978, 6.19389391, 21.6167221, -1, -1.50995788E-7, 2.03548116E-14, 1.68016642E-14, -7.1075551E-15, 1.00000012, -1.50995788E-7, 1.00000012, -2.33414135E-18)
p38.CanCollide = false
p38.Locked = true
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p39 = Instance.new("Part", m)
p39.BrickColor = BrickColor.new("Really black")
p39.Material = Enum.Material.SmoothPlastic
p39.CFrame = CFrame.new(-0.600018859, 3.38136268, 21.9094791, -1, 1.50995803E-7, -3.02116459E-13, -7.54981855E-8, -0.500000179, 0.866025507, 1.30766097E-7, 0.866025507, 0.500000179)
p39.CanCollide = false
p39.Locked = true
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.200000003, 0.200000033, 2)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p39)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
p40 = Instance.new("Part", m)
p40.BrickColor = BrickColor.new("Really black")
p40.Material = Enum.Material.SmoothPlastic
p40.CFrame = CFrame.new(0.600000978, 3.78135681, 22.309473, -1, 1.50995803E-7, -2.06556967E-13, -3.9080799E-8, -0.258819163, 0.965925932, 1.45850763E-7, 0.965925932, 0.258819163)
p40.CanCollide = false
p40.Locked = true
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.200000003, 0.200000033, 2)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p40)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
p41 = Instance.new("Part", m)
p41.BrickColor = BrickColor.new("Really black")
p41.Material = Enum.Material.SmoothPlastic
p41.CFrame = CFrame.new(0.600000978, 3.38136244, 21.909483, -1, 1.50995803E-7, -3.13205543E-13, -7.54981784E-8, -0.500000179, 0.866025448, 1.30766111E-7, 0.866025448, 0.500000179)
p41.CanCollide = false
p41.Locked = true
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.200000003, 0.200000033, 2)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p41)
b23.MeshType = Enum.MeshType.Wedge
b23.Name = "Mesh"
p42 = Instance.new("Part", m)
p42.BrickColor = BrickColor.new("Dark stone grey")
p42.Material = Enum.Material.SmoothPlastic
p42.CFrame = CFrame.new(0.599969983, 6.29383993, 21.2167339, -1, -1.50995817E-7, -1.2377252E-15, 3.55271368E-14, -2.98023224E-8, 1.00000012, -1.5099576E-7, 1.00000012, 2.98023224E-8)
p42.CanCollide = false
p42.Locked = true
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p43 = Instance.new("Part", m)
p43.BrickColor = BrickColor.new("Really black")
p43.Material = Enum.Material.SmoothPlastic
p43.CFrame = CFrame.new(0.199975967, 3.781358, 22.3094769, -1, 1.50995803E-7, -2.21463798E-13, -3.90807813E-8, -0.258819163, 0.965925932, 1.45850777E-7, 0.965925932, 0.258819163)
p43.CanCollide = false
p43.Locked = true
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.200000003, 0.200000033, 2)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p43)
b24.MeshType = Enum.MeshType.Wedge
b24.Name = "Mesh"
p44 = Instance.new("Part", m)
p44.BrickColor = BrickColor.new("Really black")
p44.Transparency = 1
p44.Name = "ArmPart"
p44.CFrame = CFrame.new(-4.47034836E-8, 5.90000105, 22.0000114, 1, -4.30749457E-15, -4.75632717E-16, -3.59703857E-14, 1.00000012, -5.96046448E-8, -7.04945E-14, 5.96046448E-8, 1.00000012)
p44.CanCollide = false
p44.Locked = true
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(1, 1, 1)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-1.60009427E-6, -22.5165577, -4.89385843, -1, -9.79170765E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19147107E-15, 1, -4.37113883E-8)
w1.Part1 = p2
w1.C1 = CFrame.new(0.599973321, -22.1166859, -6.29395914, -1, -9.79170765E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19147107E-15, 1, -4.37113883E-8)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(0.599973321, -22.1166859, -6.29395914, -1, -9.79170765E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19147107E-15, 1, -4.37113883E-8)
w2.Part1 = p3
w2.C1 = CFrame.new(-0.600015759, -21.2167225, -6.29383707, -1, -9.81109284E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21085711E-15, 1, -4.37113883E-8)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-0.600015759, -21.2167225, -6.29383707, -1, -9.81109284E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21085711E-15, 1, -4.37113883E-8)
w3.Part1 = p4
w3.C1 = CFrame.new(-22.6266346, -0.399986297, -5.19413614, 7.54979013E-8, 4.37113883E-8, 1, 1, -3.00927322E-15, -7.54979013E-8, -2.90844856E-16, 1, -4.37113883E-8)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-22.6266346, -0.399986297, -5.19413614, 7.54979013E-8, 4.37113883E-8, 1, 1, -3.00927322E-15, -7.54979013E-8, -2.90844856E-16, 1, -4.37113883E-8)
w4.Part1 = p5
w4.C1 = CFrame.new(22.6266193, -0.399986982, 5.79408312, -4.37113883E-8, 4.37113883E-8, -1, 1, -6.93845958E-9, -4.37113883E-8, -6.93846136E-9, -1, -4.37113883E-8)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(22.6266193, -0.399986982, 5.79408312, -4.37113883E-8, 4.37113883E-8, -1, 1, -6.93845958E-9, -4.37113883E-8, -6.93846136E-9, -1, -4.37113883E-8)
w5.Part1 = p6
w5.C1 = CFrame.new(0.599973321, -22.2166615, -6.09387064, -1, -9.79202105E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19178532E-15, 1, -4.37113883E-8)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(0.599973321, -22.2166615, -6.09387064, -1, -9.79202105E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19178532E-15, 1, -4.37113883E-8)
w6.Part1 = p7
w6.C1 = CFrame.new(-0.599969685, 21.2165241, -5.59400797, 1, -6.82992523E-16, -1.48949821E-8, -1.48949821E-8, -4.37113883E-8, -1, 3.1912178E-17, 1, -4.37113883E-8)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-0.599969685, 21.2165241, -5.59400797, 1, -6.82992523E-16, -1.48949821E-8, -1.48949821E-8, -4.37113883E-8, -1, 3.1912178E-17, 1, -4.37113883E-8)
w7.Part1 = p8
w7.C1 = CFrame.new(-0.6000157, -21.6167164, -6.193892, -1, -9.81095901E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21072243E-15, 1, -4.37113883E-8)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-0.6000157, -21.6167164, -6.193892, -1, -9.81095901E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21072243E-15, 1, -4.37113883E-8)
w8.Part1 = p9
w8.C1 = CFrame.new(-1.76617209E-6, -21.4166737, -6.19387674, -1, -9.81127241E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21103668E-15, 1, -4.37113883E-8)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-1.76617209E-6, -21.4166737, -6.19387674, -1, -9.81127241E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21103668E-15, 1, -4.37113883E-8)
w9.Part1 = p10
w9.C1 = CFrame.new(0.1999726, -22.516283, -4.19387674, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(0.1999726, -22.516283, -4.19387674, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w10.Part1 = p11
w10.C1 = CFrame.new(0.59999758, -22.516283, -4.193892, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(0.59999758, -22.516283, -4.193892, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w11.Part1 = p12
w11.C1 = CFrame.new(-0.600022376, -22.5162983, -4.19384623, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-0.600022376, -22.5162983, -4.19384623, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w12.Part1 = p13
w12.C1 = CFrame.new(-0.200021446, -22.8164539, -6.1939683, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-0.200021446, -22.8164539, -6.1939683, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w13.Part1 = p14
w13.C1 = CFrame.new(0.199972555, -22.8164539, -6.1939683, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(0.199972555, -22.8164539, -6.1939683, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w14.Part1 = p15
w14.C1 = CFrame.new(-0.600022435, -22.8164692, -6.19395304, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-0.600022435, -22.8164692, -6.19395304, -1, 6.60131358E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 1.07742591E-18, 1, -4.37113883E-8)
w15.Part1 = p16
w15.C1 = CFrame.new(-0.60001564, -22.1167316, -6.29392862, -1, -9.79179743E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19156085E-15, 1, -4.37113883E-8)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-0.60001564, -22.1167316, -6.29392862, -1, -9.79179743E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19156085E-15, 1, -4.37113883E-8)
w16.Part1 = p17
w16.C1 = CFrame.new(-1.58499142E-6, -22.6165791, -6.29388285, -1, -9.79161786E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19138128E-15, 1, -4.37113883E-8)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-1.58499142E-6, -22.6165791, -6.29388285, -1, -9.79161786E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19138128E-15, 1, -4.37113883E-8)
w17.Part1 = p18
w17.C1 = CFrame.new(0.19997339, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(0.19997339, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w18.Part1 = p19
w18.C1 = CFrame.new(-0.600022137, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-0.600022137, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w19.Part1 = p20
w19.C1 = CFrame.new(-0.200021103, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-0.200021103, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w20.Part1 = p21
w20.C1 = CFrame.new(-1.76617209E-6, -21.4166737, -5.49386454, -1, -9.8113622E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21112647E-15, 1, -4.37113883E-8)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-1.76617209E-6, -21.4166737, -5.49386454, -1, -9.8113622E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21112647E-15, 1, -4.37113883E-8)
w21.Part1 = p22
w21.C1 = CFrame.new(-0.200021401, -22.5162983, -4.19386148, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-0.200021401, -22.5162983, -4.19386148, -1, 6.60090955E-15, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, 6.73391193E-19, 1, -4.37113883E-8)
w22.Part1 = p23
w22.C1 = CFrame.new(0.600004315, -22.1166706, -5.49391031, -1, -9.79202105E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19178532E-15, 1, -4.37113883E-8)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(0.600004315, -22.1166706, -5.49391031, -1, -9.79202105E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19178532E-15, 1, -4.37113883E-8)
w23.Part1 = p24
w23.C1 = CFrame.new(-1.58497983E-6, -22.6166553, -6.09391642, -1, -9.79193126E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19169553E-15, 1, -4.37113883E-8)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-1.58497983E-6, -22.6166553, -6.09391642, -1, -9.79193126E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19169553E-15, 1, -4.37113883E-8)
w24.Part1 = p25
w24.C1 = CFrame.new(-1.58497983E-6, -22.6166553, -5.49403238, -1, -9.79176186E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19152612E-15, 1, -4.37113883E-8)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(-1.58497983E-6, -22.6166553, -5.49403238, -1, -9.79176186E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19152612E-15, 1, -4.37113883E-8)
w25.Part1 = p26
w25.C1 = CFrame.new(0.600019276, 21.2165241, -5.59402323, 1, -6.82972512E-16, -1.48945629E-8, -1.48945629E-8, -4.37113883E-8, -1, 3.1910484E-17, 1, -4.37113883E-8)
w26 = Instance.new("Weld", p26)
w26.Name = "Part_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(0.600019276, 21.2165241, -5.59402323, 1, -6.82972512E-16, -1.48945629E-8, -1.48945629E-8, -4.37113883E-8, -1, 3.1910484E-17, 1, -4.37113883E-8)
w26.Part1 = p27
w26.C1 = CFrame.new(-0.200020611, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w27 = Instance.new("Weld", p27)
w27.Name = "Part_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(-0.200020611, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w27.Part1 = p28
w27.C1 = CFrame.new(22.6266041, -0.400030971, -5.19416666, -4.37113883E-8, -4.37113883E-8, -1, -1, 2.18301333E-15, 4.37113883E-8, 2.72327869E-16, 1, -4.37113883E-8)
w28 = Instance.new("Weld", p28)
w28.Name = "Part_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(22.6266041, -0.400030971, -5.19416666, -4.37113883E-8, -4.37113883E-8, -1, -1, 2.18301333E-15, 4.37113883E-8, 2.72327869E-16, 1, -4.37113883E-8)
w28.Part1 = p29
w28.C1 = CFrame.new(-22.6265888, -0.200016975, 5.79418993, -4.37113883E-8, -4.37113883E-8, 1, -1, -6.93748525E-9, -4.37113883E-8, 6.93748703E-9, -1, -4.37113883E-8)
w29 = Instance.new("Weld", p29)
w29.Name = "Part_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-22.6265888, -0.200016975, 5.79418993, -4.37113883E-8, -4.37113883E-8, 1, -1, -6.93748525E-9, -4.37113883E-8, 6.93748703E-9, -1, -4.37113883E-8)
w29.Part1 = p30
w29.C1 = CFrame.new(22.6266041, -0.199972108, 5.79412603, -4.37113883E-8, -7.54978799E-8, -1, 1, -5.01085538E-7, -4.37113492E-8, -5.01085538E-7, -1, 7.54979013E-8)
w30 = Instance.new("Weld", p30)
w30.Name = "Part_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(22.6266041, -0.199972108, 5.79412603, -4.37113883E-8, -7.54978799E-8, -1, 1, -5.01085538E-7, -4.37113492E-8, -5.01085538E-7, -1, 7.54979013E-8)
w30.Part1 = p31
w30.C1 = CFrame.new(-22.6265736, -0.400028974, 5.79417467, -4.37113883E-8, -4.37113883E-8, 1, -1, -6.93719215E-9, -4.37113883E-8, 6.93719393E-9, -1, -4.37113883E-8)
w31 = Instance.new("Weld", p31)
w31.Name = "Part_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(-22.6265736, -0.400028974, 5.79417467, -4.37113883E-8, -4.37113883E-8, 1, -1, -6.93719215E-9, -4.37113883E-8, 6.93719393E-9, -1, -4.37113883E-8)
w31.Part1 = p32
w31.C1 = CFrame.new(-1.58348257E-6, -22.6266193, -5.49410868, -1, 1.35805733E-12, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, 1.36465752E-12, 1, -4.37113883E-8)
w32 = Instance.new("Weld", p32)
w32.Name = "Part_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(-1.58348257E-6, -22.6266193, -5.49410868, -1, 1.35805733E-12, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, 1.36465752E-12, 1, -4.37113883E-8)
w32.Part1 = p33
w32.C1 = CFrame.new(-0.60001564, -22.1166706, -5.49392557, -1, -9.81131815E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21108157E-15, 1, -4.37113883E-8)
w33 = Instance.new("Weld", p33)
w33.Name = "Part_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(-0.60001564, -22.1166706, -5.49392557, -1, -9.81131815E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21108157E-15, 1, -4.37113883E-8)
w33.Part1 = p34
w33.C1 = CFrame.new(-0.60001564, -22.2166615, -6.09388399, -1, -9.81131815E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21108157E-15, 1, -4.37113883E-8)
w34 = Instance.new("Weld", p34)
w34.Name = "Part_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(-0.60001564, -22.2166615, -6.09388399, -1, -9.81131815E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21108157E-15, 1, -4.37113883E-8)
w34.Part1 = p35
w34.C1 = CFrame.new(0.59999752, -22.8164387, -6.19399881, -1, -7.04183543E-12, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, -7.04843562E-12, 1, -4.37113883E-8)
w35 = Instance.new("Weld", p35)
w35.Name = "Part_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(0.59999752, -22.8164387, -6.19399881, -1, -7.04183543E-12, 1.50995803E-7, 1.50995803E-7, 4.37113883E-8, 1, -7.04843562E-12, 1, -4.37113883E-8)
w35.Part1 = p36
w35.C1 = CFrame.new(-0.600015759, -21.4165363, -5.49412203, -1, -9.81086923E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21063265E-15, 1, -4.37113883E-8)
w36 = Instance.new("Weld", p36)
w36.Name = "Part_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(-0.600015759, -21.4165363, -5.49412203, -1, -9.81086923E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21063265E-15, 1, -4.37113883E-8)
w36.Part1 = p37
w36.C1 = CFrame.new(0.600004196, -21.4165668, -5.49407816, -1, -9.79166191E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19142617E-15, 1, -4.37113883E-8)
w37 = Instance.new("Weld", p37)
w37.Name = "Part_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(0.600004196, -21.4165668, -5.49407816, -1, -9.79166191E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.19142617E-15, 1, -4.37113883E-8)
w37.Part1 = p38
w37.C1 = CFrame.new(0.600004256, -21.6167164, -6.193892, -1, -9.81086923E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21063265E-15, 1, -4.37113883E-8)
w38 = Instance.new("Weld", p38)
w38.Name = "Part_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(0.600004256, -21.6167164, -6.193892, -1, -9.81086923E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.21063265E-15, 1, -4.37113883E-8)
w38.Part1 = p39
w38.C1 = CFrame.new(-0.600021601, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w39 = Instance.new("Weld", p39)
w39.Name = "Part_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(-0.600021601, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w39.Part1 = p40
w39.C1 = CFrame.new(0.599997818, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w40 = Instance.new("Weld", p40)
w40.Name = "Part_Weld"
w40.Part0 = p40
w40.C0 = CFrame.new(0.599997818, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w40.Part1 = p41
w40.C1 = CFrame.new(0.599998355, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w41 = Instance.new("Weld", p41)
w41.Name = "Part_Weld"
w41.Part0 = p41
w41.C0 = CFrame.new(0.599998355, -17.2834778, -13.8830824, -1, -7.54981855E-8, 1.3076604E-7, 1.50995803E-7, -0.50000006, 0.866025388, -3.19476189E-13, 0.866025388, 0.50000006)
w41.Part1 = p42
w41.C1 = CFrame.new(0.599973202, -21.2167225, -6.29383707, -1, -9.81113858E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.210902E-15, 1, -4.37113883E-8)
w42 = Instance.new("Weld", p42)
w42.Name = "Part_Weld"
w42.Part0 = p42
w42.C0 = CFrame.new(0.599973202, -21.2167225, -6.29383707, -1, -9.81113858E-15, -1.50995803E-7, -1.50995803E-7, 4.37113883E-8, 1, -3.210902E-15, 1, -4.37113883E-8)
w42.Part1 = p43
w42.C1 = CFrame.new(0.199972898, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w43 = Instance.new("Weld", p43)
w43.Name = "ArmPart_Weld"
w43.Part0 = p43
w43.C0 = CFrame.new(0.199972898, -20.5706005, -9.4266243, -1, -3.90808026E-8, 1.45850692E-7, 1.50995803E-7, -0.258819073, 0.965925813, -2.17463214E-13, 0.965925813, 0.258819073)
w43.Part1 = p44
w43.C1 = CFrame.new(0, -5.89999914, -22, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w44 = Instance.new("Weld", p44)
w44.Name = "Head_Weld"
w44.Part0 = p44
w44.C0 = CFrame.new(0, -5.89999914, -22, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m.Parent = larm
m:MakeJoints()
local cor = Instance.new("Part", rarm.ClawR)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 1, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", rarm.ClawR)
weld1.Part0 = cor
weld1.Part1 = rarm.ClawR.ArmPart
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
local hitb1 = Instance.new("Part", rarm.ClawR.ArmPart)
hitb1.Name = "Thingy"
hitb1.Locked = true
hitb1.BottomSurface = 0
hitb1.CanCollide = false
hitb1.Size = Vector3.new(2, 4, 2)
hitb1.Transparency = 1
hitb1.TopSurface = 0
hitbw1 = Instance.new("Weld", hitb1)
hitbw1.Part0 = rarm.ClawR.ArmPart
hitbw1.Part1 = hitb1
hitbw1.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
hitbw1.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
local cor2 = Instance.new("Part", larm.ClawL)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(1, 1, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = larm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld2 = Instance.new("Weld", larm.ClawL)
weld2.Part0 = cor2
weld2.Part1 = larm.ClawL.ArmPart
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
local hitb2 = Instance.new("Part", larm.ClawL.ArmPart)
hitb2.Name = "Thingy"
hitb2.Locked = true
hitb2.BottomSurface = 0
hitb2.CanCollide = false
hitb2.Size = Vector3.new(2, 4, 2)
hitb2.Transparency = 1
hitb2.TopSurface = 0
hitbw2 = Instance.new("Weld", hitb2)
hitbw2.Part0 = larm.ClawL.ArmPart
hitbw2.Part1 = hitb2
hitbw2.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
hitbw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
hitb1.Touched:connect(function(ht)
  hit = ht.Parent
  if ht and hit:IsA("Model") then
    if hit:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and hit.Name ~= p.Name and Debounces.Slashing == true and Debounces.Slashed == false then
      Debounces.Slashed = true
      hit:FindFirstChild("Humanoid"):TakeDamage(math.random(2, 6))
      wait(0.5)
      Debounces.Slashed = false
    end
  elseif ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and Debounces.Slashing == true and Debounces.Slashed == false then
    Debounces.Slashed = true
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(2, 6))
    wait(0.5)
    Debounces.Slashed = false
  end
end)
hitb2.Touched:connect(function(ht)
  hit = ht.Parent
  if ht and hit:IsA("Model") then
    if hit:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and hit.Name ~= p.Name and Debounces.Slashing2 == true and Debounces.Slashed2 == false then
      Debounces.Slashed2 = true
      hit:FindFirstChild("Humanoid"):TakeDamage(math.random(2, 6))
      wait(0.5)
      Debounces.Slashed2 = false
    end
  elseif ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and Debounces.Slashing2 == true and Debounces.Slashed2 == false then
    Debounces.Slashed2 = true
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(2, 6))
    wait(0.5)
    Debounces.Slashed2 = false
  end
end)
rleg.Touched:connect(function(ht)
  hit = ht.Parent
  if ht and hit:IsA("Model") then
    if hit:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and hit.Name ~= p.Name and Debounces.RKick == true and Debounces.RKicked == false then
      Debounces.RKicked = true
      hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -50
      hit:FindFirstChild("Humanoid"):TakeDamage(math.random(2, 6))
      if Debounces.ks == true then
        z = Instance.new("Sound", hed)
        z.SoundId = "rbxassetid://169380525"
        z.Pitch = pts[math.random(1, #pts)]
        z.Volume = 0.1
        z.MaxDistance = 45
        z:Play()
      end
      wait(0.5)
      Debounces.RKicked = false
    end
  elseif ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and Debounces.RKick == true and Debounces.RKicked == false then
    Debounces.RKicked = true
    hit.Parent:FindFirstChild("Torso").Velocity = hit.Parent:FindFirstChild("Torso").CFrame.lookVector * -50
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(2, 6))
    if Debounces.ks == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = pts[math.random(1, #pts)]
      z.Volume = 0.1
      z.MaxDistance = 45
      z:Play()
    end
    wait(0.5)
    Debounces.RKicked = false
  end
end)
lleg.Touched:connect(function(ht)
  hit = ht.Parent
  if ht and hit:IsA("Model") then
    if hit:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and hit.Name ~= p.Name and Debounces.LKick == true and Debounces.LKicked == false then
      Debounces.LKicked = true
      hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -50
      hit:FindFirstChild("Humanoid"):TakeDamage(math.random(2, 6))
      if Debounces.ks2 == true then
        z = Instance.new("Sound", hed)
        z.SoundId = "rbxassetid://169380525"
        z.Pitch = pts[math.random(1, #pts)]
        z.Volume = 0.1
        z.MaxDistance = 45
        z:Play()
      end
      wait(0.5)
      Debounces.LKicked = false
    end
  elseif ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and Debounces.LKick == true and Debounces.LKicked == false then
    Debounces.LKicked = true
    hit.Parent:FindFirstChild("Torso").Velocity = hit.Parent:FindFirstChild("Torso").CFrame.lookVector * -50
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(2, 6))
    if Debounces.ks2 == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = pts[math.random(1, #pts)]
      z.Volume = 0.1
      z.MaxDistance = 45
      z:Play()
    end
    wait(0.5)
    Debounces.LKicked = false
  end
end)
local animpose = "Idle"
local lastanimpose = "Idle"
local grab = false
local sine = 0
local change = 1
local val = 0
local ffing = false
Wing1 = NewPart(torso, Vector3.new(0.2, 0.2, 0.2), root.CFrame * CFrame.new(0, 0, 0), 1, false, "SmoothPlastic", torso.Color)
local Emitter = Instance.new("ParticleEmitter", Wing1)
color1 = Color3.new(1, 0, 0)
color2 = Color3.new(1, 0, 0)
Emitter.Color = ColorSequence.new(color1, color2)
Emitter.Enabled = true
Emitter.LockedToPart = true
Emitter.LightEmission = 1
Emitter.Transparency = NumberSequence.new(0)
Emitter.Size = NumberSequence.new(0.9)
Emitter.Texture = "rbxassetid://74697410"
Emitter.Lifetime = NumberRange.new(1.4)
Emitter.Rate = 520
Emitter.Speed = NumberRange.new(6)
Wing2 = NewPart(torso, Vector3.new(0.2, 0.2, 0.2), root.CFrame * CFrame.new(0, 0, 0), 1, false, "SmoothPlastic", torso.Color)
Emitter2 = Instance.new("ParticleEmitter", Wing2)
Emitter2.Color = ColorSequence.new(color1, color2)
Emitter2.Enabled = true
Emitter2.LockedToPart = true
Emitter2.LightEmission = 1
Emitter2.Transparency = NumberSequence.new(0)
Emitter2.Size = NumberSequence.new(0.9)
Emitter2.Texture = "rbxassetid://74697410"
Emitter2.Lifetime = NumberRange.new(1.4)
Emitter2.Rate = 520
Emitter2.Speed = NumberRange.new(6)
local color1 = Color3.new(0, 0, 0)
local color2 = Color3.new(65, 0, 177)
local color3 = Color3.new(0, 25, 255)
local color4 = Color3.new(0, 68, 255)
Cash2 = Instance.new("ParticleEmitter", hitb1)
Cash2.Texture = "rbxasset://textures/particles/fire_sparks_main.dds"
Cash2.LockedToPart = true
Cash2.Size = NumberSequence.new(0.6, 0.6)
Cash2.Rate = 100
Cash2.Rotation = NumberRange.new(0, 360)
Cash2.RotSpeed = NumberRange.new(-30, -10)
Cash2.Lifetime = NumberRange.new(6, 10)
Cash2.Acceleration = Vector3.new(0, 0, 0)
Cash2.Speed = NumberRange.new(0, 0)
Cash2.Color = ColorSequence.new(color3, color4)
Cash2.ZOffset = 0
Cash2.VelocitySpread = 0
Cash2.Drag = 0
Cash2.VelocityInheritance = 0
Cash2.EmissionDirection = "Top"
Cash4 = Instance.new("ParticleEmitter", hitb2)
Cash4.Texture = "rbxasset://textures/particles/fire_sparks_main.dds"
Cash4.LockedToPart = true
Cash4.Size = NumberSequence.new(0.6, 0.6)
Cash4.Rate = 100
Cash4.Rotation = NumberRange.new(0, 360)
Cash4.RotSpeed = NumberRange.new(-30, -10)
Cash4.Lifetime = NumberRange.new(6, 10)
Cash4.Acceleration = Vector3.new(0, 0, 0)
Cash4.Speed = NumberRange.new(0, 0)
Cash4.Color = ColorSequence.new(color3, color4)
Cash4.ZOffset = 0
Cash4.VelocitySpread = 0
Cash4.Drag = 0
Cash4.VelocityInheritance = 0
Cash4.EmissionDirection = "Top"
we = weld5(torso, Wing1, CFrame.new(-0.5, 0.5, 0.2), CFrame.new(0, 0, 0))
we2 = weld5(torso, Wing2, CFrame.new(-0.5, 0.5, 0.2), CFrame.new(0, 0, 0))
function attackone()
  for i = 1, 14 do
    we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(26), 0), 0.1)
    we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
    we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-26), 0), 0.1)
    we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(120)), 0.36)
    rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.36)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(40), 0), 0.27)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-40), 0), 0.35)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(-10)), 0.23)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(10)), 0.23)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  z = Instance.new("Sound", hed)
  z.SoundId = "rbxassetid://" .. idz[math.random(1, #idz)]
  z.Pitch = ptz[math.random(1, #ptz)]
  z.Volume = 0.1
  z.MaxDistance = 45
  wait(0.01)
  z:Play()
  Debounces.Slashing = true
  for i = 1, 14 do
    we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-56), 0), 0.3)
    we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-110), 0, 0), 0.3)
    we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-16), 0), 0.3)
    we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-110), 0, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.35, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-40)), 0.6)
    rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0)), 0.6)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.6)
    larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.6)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(-60), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(60), 0), 0.5)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-10)), 0.5)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-60), math.rad(10)), 0.5)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  z = Instance.new("Sound", hed)
  z.SoundId = "rbxassetid://" .. idz[math.random(1, #idz)]
  z.Pitch = ptz[math.random(1, #ptz)]
  z.Volume = 0.1
  z.MaxDistance = 45
  wait(0.01)
  z:Play()
  Debounces.Slashing = false
  Debounces.Slashing2 = true
  for i = 1, 14 do
    we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(16), 0), 0.3)
    we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-110), 0, 0), 0.3)
    we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(56), 0), 0.3)
    we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-110), 0, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.35, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(30)), 0.5)
    larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(60), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-60), 0), 0.5)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(60), math.rad(-10)), 0.5)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.5)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  Debounces.Slashing2 = false
end
function attacktwo()
  for i = 1, 14 do
    we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-60), 0), 0.3)
    we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.3)
    we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(60), 0), 0.3)
    we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.5)
    rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.5)
    larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), 0), 0.5)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.5)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0, -0.5) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.5)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  z = Instance.new("Sound", hed)
  z.SoundId = "rbxassetid://" .. idz[math.random(1, #idz)]
  z.Pitch = ptz[math.random(1, #ptz)]
  z.Volume = 0.1
  z.MaxDistance = 45
  wait(0.01)
  z:Play()
  Debounces.Slashing = true
  Debounces.Slashing2 = true
  for i = 1, 14 do
    we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-60), 0), 0.3)
    we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.3)
    we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(60), 0), 0.3)
    we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
    rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.5)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
    larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), 0.5)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -2) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.5)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.5)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(14), math.rad(0), math.rad(0)), 0.5)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  Debounces.Slashing = false
  Debounces.Slashing2 = false
end
function attackthree()
  for i = 1, 8 do
    we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-60), 0), 0.3)
    we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.3)
    we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(60), 0), 0.3)
    we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
    larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(0), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.5)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(6), math.rad(0), math.rad(0)), 0.5)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.5)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  Debounces.Slashing = true
  Debounces.Slashing2 = true
  for i = 1, 2880, 100 do
    z = Instance.new("Sound", hed)
    z.SoundId = "rbxassetid://" .. idz[math.random(1, #idz)]
    z.Pitch = ptz[math.random(1, #ptz)]
    z.Volume = 0.1
    z.MaxDistance = 45
    wait(0.01)
    z:Play()
    torso.Weld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(i), math.rad(0))
    rs:wait()
  end
  Debounces.Slashing = false
  Debounces.Slashing2 = false
  torso.Weld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
end
function attackfour()
  for i = 1, 8 do
    we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-60), 0), 0.4)
    we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.4)
    we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(60), 0), 0.4)
    we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.4)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.5)
    rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.5)
    larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.5)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(60), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.4, 0) * CFrame.Angles(math.rad(0), math.rad(-60), 0), 0.5)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5, -0.5) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.5)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), 0.5)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  z = Instance.new("Sound", hed)
  z.SoundId = "rbxassetid://" .. idz[math.random(1, #idz)]
  z.Pitch = ptz[math.random(1, #ptz)]
  z.Volume = 0.1
  z.MaxDistance = 45
  wait(0.01)
  z:Play()
  Debounces.Slashing = true
  for i = 1, 14 do
    we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-60), 0), 0.6)
    we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.6)
    we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(60), 0), 0.6)
    we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.6)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.6)
    rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), 0.6)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.6)
    larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(-60), 0), 0.5)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -4) * CFrame.Angles(math.rad(0), math.rad(60), 0), 0.6)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.6)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  Debounces.Slashing = false
end
function attackfive()
  for i = 1, 14 do
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.62, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), 0.4)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.62, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -0.5) * CFrame.Angles(0, 0, math.rad(0)), 0.6)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0, -0.5) * CFrame.Angles(0, 0, math.rad(0)), 0.6)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  Debounces.ks = true
  Debounces.ks2 = true
  Debounces.RKick = true
  Debounces.LKick = true
  for i = 1, 14 do
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.62, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.4)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.62, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, -3) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.2, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.2, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  Debounces.ks = false
  Debounces.ks2 = false
  Debounces.RKick = false
  Debounces.LKick = false
end
function attacksix()
  for i = 1, 10 do
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.62, -0.2) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0)), 0.4)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.62, -0.2) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(0)), 0.4)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0.2, -0.54) * CFrame.Angles(math.rad(10), 0, math.rad(0)), 0.4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0.2, -0.54) * CFrame.Angles(math.rad(10), 0, math.rad(0)), 0.4)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  Debounces.ks = true
  Debounces.ks2 = true
  Debounces.RKick = true
  Debounces.LKick = true
  for i = 1, 14 do
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.62, -0.2) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0)), 0.4)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.62, -0.2) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1, -3) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(0)), 0.4)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.2, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.2, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.4)
    if Debounces.on == false then
      break
    end
    rs:wait()
  end
  Debounces.ks = false
  Debounces.ks2 = false
  Debounces.RKick = false
  Debounces.LKick = false
end
pt = {
  1,
  1.1,
  1.2,
  1.3,
  1.4,
  1.5
}
ideez = {"161006212", "161006195"}
function Rapids()
  z = Instance.new("Sound", rarm)
  z.SoundId = "http://www.roblox.com/asset/?id=" .. ideez[math.random(1, #ideez)]
  z.Volume = 0.1
  z.MaxDistance = 45
  z.Pitch = pt[math.random(1, #pt)]
  z.Looped = false
  z:Play()
  Debounces.RPunch = true
  Debounces.LPunch = true
  Debounces.ks = true
  Debounces.ks2 = true
  for i = 1, 2 do
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(20)), 0.96)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), 0.96)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.96)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.96)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.96)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.96)
    if Debounces.on == false then
      break
    end
    wait()
  end
  z2 = Instance.new("Sound", larm)
  z2.SoundId = "http://www.roblox.com/asset/?id=" .. ideez[math.random(1, #ideez)]
  z2.Volume = 0.1
  z2.MaxDistance = 45
  z2.Pitch = pt[math.random(1, #pt)]
  z2.Looped = false
  z2:Play()
  for i = 1, 2 do
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.96)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(20), math.rad(-20)), 0.96)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.96)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.96)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.96)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.96)
    if Debounces.on == false then
      break
    end
    wait()
  end
  z3 = Instance.new("Sound", rarm)
  z3.SoundId = "http://www.roblox.com/asset/?id=" .. ideez[math.random(1, #ideez)]
  z3.Volume = 0.1
  z3.MaxDistance = 45
  z3.Pitch = pt[math.random(1, #pt)]
  z3.Looped = false
  z3:Play()
  for i = 1, 2 do
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-20), math.rad(20)), 0.96)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(50)), 0.96)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.96)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.96)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.96)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.96)
    if Debounces.on == false then
      break
    end
    wait()
  end
  z4 = Instance.new("Sound", larm)
  z4.SoundId = "http://www.roblox.com/asset/?id=" .. ideez[math.random(1, #ideez)]
  z4.Volume = 0.1
  z4.MaxDistance = 45
  z4.Pitch = pt[math.random(1, #pt)]
  z4.Looped = false
  z4:Play()
  for i = 1, 2 do
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.96)
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(-20)), 0.96)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.96)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.96)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.96)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.96)
    if Debounces.on == false then
      break
    end
    wait()
  end
end
ComboNum = 0
mouse.Button1Down:connect(function()
  if Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    Debounces.on = true
    Emitter.LockedToPart = true
    Emitter2.LockedToPart = true
    if ComboNum == 0 then
      attackone()
    elseif ComboNum == 1 then
      attacktwo()
    elseif ComboNum == 2 then
      attackthree()
    elseif ComboNum == 3 then
      attackfour()
    elseif ComboNum == 4 then
      attackfive()
    elseif ComboNum == 5 then
      attacksix()
    end
    ComboNum = ComboNum + 1
    Debounces.CanAttack = true
    Debounces.NoIdl = false
    Debounces.on = false
    wait(0.8)
    if Debounces.CanAttack == true then
      ComboNum = 0
    end
  end
end)
rapids = false
mouse.KeyDown:connect(function(key)
  if key == "f" then
    rapids = true
    if Debounces.CanAttack == true then
      Debounces.CanAttack = false
      Debounces.NoIdl = true
      Debounces.on = true
      Debounces.Slashing = true
      Debounces.Slashing2 = true
      for i = 1, 14 do
        we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(26), 0), 0.1)
        we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
        we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-26), 0), 0.1)
        we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(120)), 0.36)
        rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.36)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(40), 0), 0.27)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-40), 0), 0.35)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(-10)), 0.23)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(10)), 0.23)
        if Debounces.on == false then
          break
        end
        rs:wait()
      end
      rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
      repeat
        Rapids()
      until rapids == false
    end
  end
end)
mouse.KeyUp:connect(function(key)
  if key == "f" then
    rapids = false
    Debounces.CanAttack = true
    Debounces.NoIdl = false
    Debounces.on = false
    Debounces.Slashing = false
    Debounces.Slashing2 = false
  end
end)
mouse.KeyDown:connect(function(key)
  if string.byte(key) == 52 then
    Swing = 2
    char.Humanoid.WalkSpeed = 40
  end
end)
mouse.KeyUp:connect(function(key)
  if string.byte(key) == 52 then
    Swing = 1
    char.Humanoid.WalkSpeed = 16
  end
end)
jump = false
game:GetService("RunService").RenderStepped:connect(function()
  if char.Humanoid.Health > 0 then
    if char.Humanoid.Jump == true then
      jump = true
    else
      jump = false
    end
    char.Humanoid.FreeFalling:connect(function(f)
      if f then
        ffing = true
      else
        ffing = false
      end
    end)
    sine = sine + change
    if jump == true then
      animpose = "Jumping"
    elseif ffing == true then
      animpose = "Freefalling"
    elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 2 then
      animpose = "Idle"
    elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 20 then
      animpose = "Walking"
    elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude > 20 then
      animpose = "Running"
    end
    if animpose ~= lastanimpose then
      sine = 0
      if Debounces.NoIdl == false then
        for i = 1, 2 do
          we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(45), 0), 0.1)
          we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
          we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-45), 0), 0.1)
          we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6 + 0.1 * math.cos(sine / 14), 0) * CFrame.Angles(math.rad(-26 - 2 * math.cos(sine / 14)), math.rad(0), math.rad(25 + 2 * math.cos(sine / 14))), 0.2)
          rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6 + 0.1 * math.cos(sine / 14), 0) * CFrame.Angles(math.rad(-26 - 2 * math.cos(sine / 14)), math.rad(0), math.rad(-25 - 2 * math.cos(sine / 14))), 0.2)
          larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-16 + 2.6 * math.cos(sine / 14)), math.rad(0), 0), 0.2)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.4, 0) * CFrame.Angles(math.rad(-20 + 1 * math.cos(sine / 14)), math.rad(0), 0), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5, -0.5) * CFrame.Angles(math.rad(24 - 3 * math.cos(sine / 14)), math.rad(0), math.rad(0)), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0.2) * CFrame.Angles(math.rad(-20 + 2 * math.cos(sine / 14)), math.rad(0), math.rad(0)), 0.2)
        end
        wait()
      end
    else
    end
    lastanimpose = animpose
    if Debounces.NoIdl == false then
      if animpose == "Idle" then
        change = 0.5
        we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(45), 0), 0.1)
        we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
        we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-45), 0), 0.1)
        we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6 + 0.1 * math.cos(sine / 14), 0) * CFrame.Angles(math.rad(-30 - 2 * math.cos(sine / 14)), math.rad(0), math.rad(25 + 2 * math.cos(sine / 14))), 0.2)
        rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6 + 0.1 * math.cos(sine / 14), 0) * CFrame.Angles(math.rad(-30 - 2 * math.cos(sine / 14)), math.rad(0), math.rad(-25 - 2 * math.cos(sine / 14))), 0.2)
        larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(8 + 2.6 * math.cos(sine / 14)), math.rad(0), 0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.4, 0) * CFrame.Angles(math.rad(-20 + 2 * math.cos(sine / 14)), math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5 - 0.07 * math.cos(sine / 14), -0.5 + 0.14 * math.cos(sine / 14)) * CFrame.Angles(math.rad(18 + 3 * math.cos(sine / 14)), math.rad(0), math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 + 0.03 * math.cos(sine / 14), 0.2 + 0.09 * math.cos(sine / 14)) * CFrame.Angles(math.rad(-21 + 2 * math.cos(sine / 14)), math.rad(0), math.rad(0)), 0.2)
      elseif animpose == "Walking" then
        change = 1
        we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(45), 0), 0.1)
        we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-55), 0, 0), 0.1)
        we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-45), 0), 0.1)
        we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-55), 0, 0), 0.1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5 - 0.05 * math.cos(sine / 4), math.sin(sine / 8) / 4) * CFrame.Angles(-math.sin(sine / 8) / 1.4, -math.sin(sine / 8) / 3, math.rad(14 + 9 * math.cos(sine / 4))), 0.2)
        rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 4), -math.sin(sine / 8) / 4) * CFrame.Angles(math.sin(sine / 8) / 1.4, -math.sin(sine / 8) / 3, math.rad(-14 - 9 * math.cos(sine / 4))), 0.2)
        larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10 + 2 * math.cos(sine / 4)), math.rad(0 - 14 * math.cos(sine / 8) / 2.3), math.rad(0)), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 + 0.1 * math.cos(sine / 4), 0) * CFrame.Angles(math.rad(-4 + 2 * math.cos(sine / 4)), math.rad(0 + 14 * math.cos(sine / 8) / 2.3), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 - 0.24 * math.cos(sine / 8) / 2.8, -0.05 + math.sin(sine / 8) / 4.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine / 8) / 2.1, math.rad(0 - 14 * math.cos(sine / 8) / 2.3), 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 + 0.24 * math.cos(sine / 8) / 2.8, -0.05 + -math.sin(sine / 8) / 4.4) * CFrame.Angles(math.rad(-10) + math.sin(sine / 8) / 2.1, math.rad(0 - 14 * math.cos(sine / 8) / 2.3), 0), 0.4)
      elseif animpose == "Running" then
        change = 1
        we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(20 + 15 * math.cos(sine / 4)), 0), 0.4)
        we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-100 + 16 * math.cos(sine / 2)), 0, 0), 0.1)
        we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-20 + 15 * math.cos(sine / 4)), 0), 0.4)
        we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-100 + 16 * math.cos(sine / 2)), 0, 0), 0.1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.24 + 0.6 * math.cos(sine / 4) / 1.4, 0.54, 0 + 0.8 * math.cos(sine / 4)) * CFrame.Angles(math.rad(6 - 140 * math.cos(sine / 4) / 1.2), math.rad(0), math.rad(0 + 50 * math.cos(sine / 4))), 0.2)
        rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24 + 0.6 * math.cos(sine / 4) / 1.4, 0.54, 0 - 0.8 * math.cos(sine / 4)) * CFrame.Angles(math.rad(6 + 140 * math.cos(sine / 4) / 1.2), math.rad(0), math.rad(0 + 50 * math.cos(sine / 4))), 0.2)
        larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-8 + 12 * math.cos(sine / 2) / 1.5), math.rad(0 + 12 * math.cos(sine / 4)), math.rad(0)), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 + 0.2 * math.cos(sine / 2) / 1.7, 0) * CFrame.Angles(math.rad(-14 + 10 * math.cos(sine / 2) / 1.5), math.rad(0 - 12 * math.cos(sine / 4)), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.9 - 0.1 * math.cos(sine / 4) / 2, math.sin(sine / 4) / 2) * CFrame.Angles(math.rad(-10) + -math.sin(sine / 4) / 1.6, math.rad(0 + 12 * math.cos(sine / 4)), 0), 0.8)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.9 + 0.1 * math.cos(sine / 4) / 2, -math.sin(sine / 4) / 2) * CFrame.Angles(math.rad(-10) + math.sin(sine / 4) / 1.6, math.rad(0 + 12 * math.cos(sine / 4)), 0), 0.8)
      elseif animpose == "Jumping" then
        we.C0 = Lerp(we.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(10), 0), 0.1)
        we.C1 = Lerp(we.C1, CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-140), 0, 0), 0.1)
        we2.C0 = Lerp(we2.C0, CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(-10), 0), 0.1)
        we2.C1 = Lerp(we2.C1, CFrame.new(0.2, 0.5, 0.5) * CFrame.Angles(math.rad(-140), 0, 0), 0.1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(30)), 0.2)
        rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.2)
        larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -1) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
      end
    end
  end
end)
while true do
  Emitter.Acceleration = Vector3.new(math.cos(tick() * 2) * math.sin(tick() / 2) * 4, 0, math.sin(tick() * 2) * math.cos(tick() / 2) * 4)
  Emitter2.Acceleration = Vector3.new(-math.cos(tick() * 2) * math.sin(tick() / 2) * 4, 0, -math.sin(tick() * 2) * math.cos(tick() / 2) * 4)
  wait()
end



