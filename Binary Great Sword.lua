
	wait()
Night = false
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Black","Handle",Vector3.new(0.399999976, 2.19999981, 0.399999976))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10000229, -2.38418579e-007, -7.4505806e-009, 0, -0.99999994, 0, 0, 0, -0.999999881, 1, 0, 0))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.23965263, 0.709411621, 0.0599963069, -2.84217094e-014, -0.999999821, 3.3778224e-007, 0.999999404, 0, -1.49011612e-007, 1.49011612e-007, 3.37782296e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.23966599, 0.70941925, -0.0500036366, -2.84217094e-014, -0.999999821, 3.3778224e-007, 0.999999404, 0, -1.49011612e-007, 1.49011612e-007, 3.37782296e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.79967642, -0.709411621, 0.0500062741, -1.0658141e-014, -0.99999994, -6.73569076e-008, -0.999999404, -1.55211408e-015, 1.49011612e-007, -2.38418579e-007, 6.73569502e-008, -0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.47999981, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.694412231, -9.42964458, -0.0499921218, 0.999999404, 1.49011612e-008, 4.47034836e-008, -1.19209268e-007, 0.999999285, 3.04265853e-007, -4.47034836e-008, -3.04265598e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Hilt6=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Hilt6",Vector3.new(0.399999946, 0.200000003, 3))
Hilt6weld=weld(m,handle,Hilt6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.63912773e-007, -0.899990082, 2.83996773, 2.19982951e-007, 1.36878047e-008, 0.999999642, -0.999999404, 3.87430191e-007, 2.19983093e-007, -2.23517418e-007, -0.999999762, 1.36879486e-008))
mesh("SpecialMesh",Hilt6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Hilt7=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Hilt7",Vector3.new(0.399999946, 0.200000003, 8.64999962))
Hilt7weld=weld(m,handle,Hilt7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.58793545e-007, -0.899974823, 5.6849885, 1.34110437e-007, -7.63522152e-008, 0.999999404, -0.999999344, -1.10979147e-006, 1.63912773e-007, 1.27370356e-006, -0.999999762, -7.63525279e-008))
mesh("SpecialMesh",Hilt7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.47999981, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.694404602, -9.42963028, 0.060007818, 0.999999404, 1.49011612e-008, 4.47034836e-008, -1.19209268e-007, 0.999999285, 3.04265853e-007, -4.47034836e-008, -3.04265598e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 1.0599997, 0.399999946))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0253601074, 0.576225996, -0.189999938, -0.999999642, -4.72436756e-009, 1.49011612e-008, -4.72435246e-009, 1, -4.61148792e-014, -1.49011612e-008, 0, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.379417419, -3.24969459, -0.0499999449, 0.999999762, 0, -8.94069672e-008, 0, 1, 0, 8.94069672e-008, 0, 0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.0147016, -0.449417114, 0.0500000529, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.419425964, -8.21967316, 0.049995672, -0.999999642, 0, 1.78813934e-007, -2.84217094e-014, 0.999999821, 2.70425346e-007, -1.78813934e-007, 2.70425346e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.25, 0.430000007))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0281105042, -0.977763414, -0.18680191, 0.0547409356, 0, 0.998500347, 0, 1, 0, -0.998500347, 0, 0.0547409356))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.539421082, -1.67471576, -0.0600000396, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.91967535, -0.45941925, 0.0499975681, -0, -0.999999821, -3.37782325e-007, -0.999999642, 0, 1.78813934e-007, -1.78813934e-007, 3.37782296e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.270561218, -6.11966658, -0.0499990061, 0.999999881, 0, -2.07808881e-008, 0, 0.999999404, -2.5796146e-007, 2.078081e-008, 3.32467266e-007, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.21970415, -0.340576172, -0.049999781, 0, -0.999999821, 3.37782325e-007, 0.999999642, 0, -1.78813934e-007, 1.78813934e-007, 3.37782296e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.47999981, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0555877686, -8.10965347, -0.0499924906, 0.999999404, 1.49011612e-008, 4.47034836e-008, -1.19209268e-007, 0.999999285, 3.04265853e-007, -4.47034836e-008, -3.04265598e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.169425964, 6.11966658, -0.0599974692, 0.999999821, 0, -4.25920007e-007, 0, -0.999999404, 2.5796146e-007, -4.25920064e-007, -2.57961489e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.259422302, -7.77968121, -0.049999956, 0.999999762, 0, -8.94069672e-008, 0, 1, 0, 8.94069672e-008, 0, 0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.369999826, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.85463715, -0.225578308, 0.0600026771, 1.49010972e-008, -0.999999404, -3.42009145e-007, 0.999999166, 2.98023224e-008, 1.63912773e-007, -4.47034836e-008, -3.4200886e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.48466825, -0.0555648804, -0.0499988347, 1.3393251e-009, -0.999999821, -5.48868897e-008, 0.999999404, 4.60427856e-008, -2.98023224e-008, 4.47034836e-008, -5.4886879e-008, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.599999785, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0200000256, 0.800000906, -0.190010071, 5.96046448e-008, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 5.96046448e-008))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.299999833, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.640579224, -1.44970822, 0.0500000454, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.379999816, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.660560608, -6.08965588, -0.0599999204, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.69443512, 7.22963905, -0.0600020215, 0.999999464, 4.47034836e-008, 1.3841526e-007, 5.96046448e-008, -0.999999702, -2.95355136e-007, 1.38415231e-007, 2.95355051e-007, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.189422607, -5.0496769, 0.0499999598, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.91967535, -0.45941925, -0.060002394, -0, -0.999999821, -3.37782325e-007, -0.999999642, 0, 1.78813934e-007, -1.78813934e-007, 3.37782296e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.69443512, 7.22964287, 0.0499979444, 0.999999464, 4.47034836e-008, 1.3841526e-007, 5.96046448e-008, -0.999999702, -2.95355136e-007, 1.38415231e-007, 2.95355051e-007, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.379417419, -3.24969459, 0.0600000173, 0.999999762, 0, -8.94069672e-008, 0, 1, 0, 8.94069672e-008, 0, 0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.77968073, -0.690555573, 0.0600024909, 1.24344979e-014, -0.99999994, 6.73569147e-008, 0.999999404, -1.55211408e-015, -1.63912773e-007, 2.38418579e-007, 6.73569502e-008, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.19967413, -0.709411621, 0.0500064492, -1.0658141e-014, -0.99999994, -6.73569076e-008, -0.999999404, -1.55211408e-015, 1.49011612e-007, -2.38418579e-007, 6.73569502e-008, -0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.419999838, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340564728, -3.90968156, -0.0499989763, 0.999999404, 0, -4.47034836e-008, 0, 1, 0, 4.47034836e-008, 0, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.11465931, -0.25056076, 0.0599961281, -7.45057704e-008, -0.999999821, -3.77434084e-008, 0.999999404, -2.98023224e-008, -4.47034836e-008, 4.47034836e-008, -3.77434368e-008, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.71967506, 0.109420776, 0.0599990711, 0, -0.999999821, 3.37782325e-007, 0.999999642, 0, -1.78813934e-007, 1.78813934e-007, 3.37782296e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.420578003, -3.28968048, -0.0499989353, 0.999999642, 0, -1.78813934e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.78813934e-007, 2.70425346e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.44467807, -0.729423523, 0.0500000678, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.489999831, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.690555573, 7.28962421, 0.0599978715, -0.999999404, 4.47034836e-008, -4.47034836e-008, -5.96046519e-008, -0.999999702, 2.95355079e-007, -7.4505806e-008, 2.95355051e-007, 0.999999344))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.499999821, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.150569916, -4.37967777, -0.0499999672, 0.999999404, 0, -4.47034836e-008, 0, 1, 0, 4.47034836e-008, 0, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.21970415, -0.340576172, 0.0600001737, 0, -0.999999821, 3.37782325e-007, 0.999999642, 0, -1.78813934e-007, 1.78813934e-007, 3.37782296e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.420000017))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.509798527, -0.0173585415, -0.191265106, -4.55768436e-008, -0.99999994, -9.86396003e-007, -0.0525718182, 9.4859638e-007, -0.998616517, 0.998616755, 3.03148351e-009, -0.0525715426))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.5, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.579429626, -4.64466476, 0.0499999188, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.51968718, -0.340576172, -0.0500002205, 0, -0.999999821, 3.37782325e-007, 0.999999642, 0, -1.78813934e-007, 1.78813934e-007, 3.37782296e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.629417419, -8.00965023, 0.0599959046, 0.999999404, 0, -1.49011612e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.49011612e-007, 2.70425346e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.579429626, -4.64467716, -0.0600000545, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.539428711, -1.67471957, 0.0499999225, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.044418335, -2.84468269, 0.0600010306, 0.999999404, 7.58451151e-008, -1.04308128e-007, -7.58451364e-008, 1, 1.71434742e-008, 1.04308128e-007, -1.7143444e-008, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77971697, 0.340576172, 0.0499999188, -1.46714471e-015, -0.99999994, -6.73569289e-008, -0.999999702, -1.55211408e-015, 1.55233181e-007, -1.55233181e-007, 6.73569502e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.2796874, -0.109413147, -0.06000036, -1.46714471e-015, -0.99999994, -6.73569289e-008, -0.999999702, -1.55211408e-015, 1.55233181e-007, -1.55233181e-007, 6.73569502e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.419999838, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340564728, -3.90968156, 0.0600009561, 0.999999404, 0, -4.47034836e-008, 0, 1, 0, 4.47034836e-008, 0, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.7996707, -0.709411621, -0.0599936545, -1.0658141e-014, -0.99999994, -6.73569076e-008, -0.999999404, -1.55211408e-015, 1.49011612e-007, -2.38418579e-007, 6.73569502e-008, -0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.300000012, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.94462967, -0.44442749, -0.0600011572, 7.4505806e-008, -0.999999821, -1.25078927e-007, -0.999999583, -2.98023224e-008, 1.36977647e-007, -1.36977675e-007, 1.25078969e-007, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.169425964, 6.11967039, 0.0500024743, 0.999999821, 0, -4.25920007e-007, 0, -0.999999404, 2.5796146e-007, -4.25920064e-007, -2.57961489e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.58966637, -0.455574036, -0.0600076169, 4.47034836e-008, 0.999999404, 4.73505338e-007, 0.999999285, -4.47034836e-008, -1.34110451e-007, -4.47034836e-008, 4.73505196e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.47999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.670566559, 4.13465643, -0.0500003509, -0.999999404, -2.98023224e-008, -6.4066775e-008, 2.38418579e-007, -0.999999642, 3.48133881e-007, -6.40668034e-008, 3.48133682e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.58965158, 0.594444275, 0.0499974675, -1.1920929e-007, 0.999999464, 3.33098512e-007, 0.999999404, 2.98023224e-008, 3.62476698e-008, 3.62476769e-008, 3.33098484e-007, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.38465834, -0.0555648804, -0.0499987863, 1.3393251e-009, -0.999999821, -5.48868897e-008, 0.999999404, 4.60427856e-008, -2.98023224e-008, 4.47034836e-008, -5.4886879e-008, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.44966316, -0.339424133, -0.060003899, -0, -0.999999821, -3.37782325e-007, -0.999999642, 0, 1.78813934e-007, -1.78813934e-007, 3.37782296e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.21967125, 0.690555573, 0.0499993116, 2.13162821e-014, -0.999999821, -3.3778224e-007, -0.999999404, 0, 1.63912773e-007, -1.63912773e-007, 3.37782296e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.419425964, -8.21965599, -0.0600042865, -0.999999642, 0, 1.78813934e-007, -2.84217094e-014, 0.999999821, 2.70425346e-007, -1.78813934e-007, 2.70425346e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0294265747, -5.48967266, -0.0499994531, 0.999999642, 0, -1.78813934e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.78813934e-007, 2.70425346e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.629425049, -5.4096632, -0.0500033312, 0.999999404, 0, -1.49011612e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.49011612e-007, 2.70425346e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.379999816, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.629432678, -2.64968753, 0.0499999113, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.00966263, 0.339424133, 0.0599995106, 0, -0.99999994, 6.73569218e-008, 0.999999642, -1.55211408e-015, -1.78813934e-007, 1.78813934e-007, 6.73569502e-008, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.420578003, -1.98970175, 0.0600013658, 0.999999642, 0, -1.78813934e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.78813934e-007, 2.70425346e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.47969294, 0.45942688, -0.05000012, 0, -0.99999994, 6.73569218e-008, 0.999999642, -1.55211408e-015, -1.78813934e-007, 1.78813934e-007, 6.73569502e-008, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.839999795, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.640563965, -2.88968611, 0.049997814, -0.999999642, 0, 1.78813934e-007, 0, 0.999999821, 4.42069052e-007, -1.78813934e-007, 4.42069108e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.34942627, -2.37470317, 0.0499999411, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.47999981, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0555953979, -8.10963917, 0.0600074604, 0.999999404, 1.49011612e-008, 4.47034836e-008, -1.19209268e-007, 0.999999285, 3.04265853e-007, -4.47034836e-008, -3.04265598e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.420578003, -1.98969603, -0.0499985851, 0.999999642, 0, -1.78813934e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.78813934e-007, 2.70425346e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.629425049, -8.00966167, -0.0500040352, 0.999999404, 0, -1.49011612e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.49011612e-007, 2.70425346e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.610561371, -4.98966694, 0.0499997139, -0.999999404, 0, 1.63912773e-007, -4.97379915e-014, 0.999999821, 2.70425346e-007, -1.63912773e-007, 2.70425346e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.63966465, 0.709411621, 0.0599971861, -2.84217094e-014, -0.999999821, 3.3778224e-007, 0.999999404, 0, -1.49011612e-007, 1.49011612e-007, 3.37782296e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.539421082, -3.68967628, 0.0499968752, -0.999999642, 0, 1.78813934e-007, -2.84217094e-014, 0.999999821, 2.70425346e-007, -1.78813934e-007, 2.70425346e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.54963112, 0.590557098, 0.0599974468, 1.19209304e-007, 0.999999464, -3.33098455e-007, -0.999999404, 2.98023224e-008, -1.49011612e-008, 2.98023224e-008, 3.33098484e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.259999812, 0.299999982))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.17463112, 0.579429626, -0.0499968491, 1.49010972e-008, -0.999999404, -3.42009145e-007, 0.999999166, 2.98023224e-008, 1.63912773e-007, -4.47034836e-008, -3.4200886e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0444259644, -2.84468269, -0.0499989092, 0.999999404, 7.58451151e-008, -1.04308128e-007, -7.58451364e-008, 1, 1.71434742e-008, 1.04308128e-007, -1.7143444e-008, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.19967413, -0.709411621, -0.0599934757, -1.0658141e-014, -0.99999994, -6.73569076e-008, -0.999999404, -1.55211408e-015, 1.49011612e-007, -2.38418579e-007, 6.73569502e-008, -0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.80462265, -0.689430237, 0.0500001945, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.409999996, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.239425659, -1.51468205, 0.0499999523, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.07969141, 0.340576172, 0.0499998294, -1.46714471e-015, -0.99999994, -6.73569289e-008, -0.999999702, -1.55211408e-015, 1.55233181e-007, -1.55233181e-007, 6.73569502e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.8846426, 0.560569763, 0.0500002019, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.44967461, -0.339424133, 0.0499960594, -0, -0.999999821, -3.37782325e-007, -0.999999642, 0, 1.78813934e-007, -1.78813934e-007, 3.37782296e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.299999833, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.640586853, -1.44970822, -0.0599999204, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.0096817, 0.339431763, -0.0500004478, 0, -0.99999994, 6.73569218e-008, 0.999999642, -1.55211408e-015, -1.78813934e-007, 1.78813934e-007, 6.73569502e-008, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.409999996, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.569419861, -8.73466015, 0.0499999188, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.31968021, 0.720573425, -0.0600035414, -0, -0.999999821, -5.09426116e-007, -0.999999642, 0, 1.78813934e-007, -1.78813934e-007, 5.09425945e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.72467589, -0.164428711, -0.0600002185, 7.4505806e-008, -0.999999821, -1.25078927e-007, -0.999999583, -2.98023224e-008, 1.36977647e-007, -1.36977675e-007, 1.25078969e-007, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.03967428, 0.0605697632, 0.0500025451, 0, -0.999999404, 2.5796146e-007, -0.999999821, 0, 3.58563113e-007, -3.58563113e-007, -2.5796146e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77971888, 0.340583801, -0.0600000471, -1.46714471e-015, -0.99999994, -6.73569289e-008, -0.999999702, -1.55211408e-015, 1.55233181e-007, -1.55233181e-007, 6.73569502e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.379999816, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.660560608, -6.08965588, 0.0500000454, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.349999815, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.444404602, -5.67466831, -0.0499932542, 0.999999404, 1.49011612e-008, 4.47034836e-008, -1.19209268e-007, 0.999999285, 3.04265853e-007, -4.47034836e-008, -3.04265598e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.38465834, -0.0555725098, 0.0600011423, 1.3393251e-009, -0.999999821, -5.48868897e-008, 0.999999404, 4.60427856e-008, -2.98023224e-008, 4.47034836e-008, -5.4886879e-008, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.409999996, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.23941803, -1.51468205, -0.0600000098, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.2846508, -0.679420471, -0.0599998236, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.01470828, -0.449417114, -0.059999913, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.58967209, -0.455566406, 0.0499923304, 4.47034836e-008, 0.999999404, 4.73505338e-007, 0.999999285, -4.47034836e-008, -1.34110451e-007, -4.47034836e-008, 4.73505196e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.589439392, -6.16463757, 0.0499999151, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.2796874, -0.109420776, 0.0499996096, -1.46714471e-015, -0.99999994, -6.73569289e-008, -0.999999702, -1.55211408e-015, 1.55233181e-007, -1.55233181e-007, 6.73569502e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.11466885, -0.25056076, -0.0500038192, -7.45057704e-008, -0.999999821, -3.77434084e-008, 0.999999404, -2.98023224e-008, -4.47034836e-008, 4.47034836e-008, -3.77434368e-008, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.300000012, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.94464493, -0.44443512, 0.0499988012, 7.4505806e-008, -0.999999821, -1.25078927e-007, -0.999999583, -2.98023224e-008, 1.36977647e-007, -1.36977675e-007, 1.25078969e-007, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.48465729, 0.344413757, 0.0600018278, 1.49010972e-008, -0.999999404, -3.42009145e-007, 0.999999166, 2.98023224e-008, 1.63912773e-007, -4.47034836e-008, -3.4200886e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.610561371, -4.98967266, -0.0600002334, -0.999999404, 0, 1.63912773e-007, -4.97379915e-014, 0.999999821, 2.70425346e-007, -1.63912773e-007, 2.70425346e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.38966656, 0.570575714, -0.0500006564, -4.47034836e-008, 0.999999464, -3.85877229e-007, -0.999999404, -2.98023224e-008, 1.04390594e-008, -4.4621089e-009, 3.85877115e-007, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.409999996, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.569412231, -8.73463917, -0.0600000396, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.45999983, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199409485, -4.35965443, 0.0599999875, 0.999999404, 0, -4.47034836e-008, 0, 1, 0, 4.47034836e-008, 0, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.5196929, -0.340576172, 0.0599997416, 0, -0.999999821, 3.37782325e-007, 0.999999642, 0, -1.78813934e-007, 1.78813934e-007, 3.37782296e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.72467208, -0.16443634, 0.0499997437, 7.4505806e-008, -0.999999821, -1.25078927e-007, -0.999999583, -2.98023224e-008, 1.36977647e-007, -1.36977675e-007, 1.25078969e-007, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.629417419, -5.4096632, 0.0599966049, 0.999999404, 0, -1.49011612e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.49011612e-007, 2.70425346e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.260574341, -2.84969592, 0.0500000045, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.31968021, 0.720565796, 0.0499964058, -0, -0.999999821, -5.09426116e-007, -0.999999642, 0, 1.78813934e-007, -1.78813934e-007, 5.09425945e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.2846508, -0.679420471, 0.0500001386, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.71967506, 0.109420776, -0.0500008836, 0, -0.999999821, 3.37782325e-007, 0.999999642, 0, -1.78813934e-007, 1.78813934e-007, 3.37782296e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.38966656, 0.570583344, 0.0599992871, -4.47034836e-008, 0.999999464, -3.85877229e-007, -0.999999404, -2.98023224e-008, 1.04390594e-008, -4.4621089e-009, 3.85877115e-007, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.355594635, 5.22966003, 0.0499976985, 0.999999404, -4.47034836e-008, -4.47034836e-008, -1.34110451e-007, -0.999999285, -4.35762018e-007, -4.47034836e-008, 4.35761876e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.449999809, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.044418335, -3.62467766, 0.0600010455, 0.999999404, 7.58451151e-008, -1.04308128e-007, -7.58451364e-008, 1, 1.71434742e-008, 1.04308128e-007, -1.7143444e-008, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.449999809, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0444259644, -3.62467766, -0.0499988943, 0.999999404, 7.58451151e-008, -1.04308128e-007, -7.58451364e-008, 1, 1.71434742e-008, 1.04308128e-007, -1.7143444e-008, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.44468379, -0.729415894, -0.0599998981, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.369999826, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.85463905, -0.225578308, -0.0499972664, 1.49010972e-008, -0.999999404, -3.42009145e-007, 0.999999166, 2.98023224e-008, 1.63912773e-007, -4.47034836e-008, -3.4200886e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.47968721, 0.45941925, 0.0599998385, 0, -0.99999994, 6.73569218e-008, 0.999999642, -1.55211408e-015, -1.78813934e-007, 1.78813934e-007, 6.73569502e-008, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.58964586, 0.594436646, -0.0600024983, -1.1920929e-007, 0.999999464, 3.33098512e-007, 0.999999404, 2.98023224e-008, 3.62476698e-008, 3.62476769e-008, 3.33098484e-007, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.489999831, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.690540314, 7.28963566, -0.0500020534, -0.999999404, 4.47034836e-008, -4.47034836e-008, -5.96046519e-008, -0.999999702, 2.95355079e-007, -7.4505806e-008, 2.95355051e-007, 0.999999344))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.34942627, -2.37470984, -0.0600000247, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.48466825, -0.0555725098, 0.0600010976, 1.3393251e-009, -0.999999821, -5.48868897e-008, 0.999999404, 4.60427856e-008, -2.98023224e-008, 4.47034836e-008, -5.4886879e-008, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.48465729, 0.344413757, -0.0499981008, 1.49010972e-008, -0.999999404, -3.42009145e-007, 0.999999166, 2.98023224e-008, 1.63912773e-007, -4.47034836e-008, -3.4200886e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.420578003, -3.28968048, 0.0600010231, 0.999999642, 0, -1.78813934e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.78813934e-007, 2.70425346e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0294189453, -5.48967266, 0.0600005016, 0.999999642, 0, -1.78813934e-007, 2.84217094e-014, 0.999999821, -2.70425346e-007, 1.78813934e-007, 2.70425346e-007, 0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.589439392, -6.16463184, -0.0600000545, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.259422302, -7.7796669, 0.0600000173, 0.999999762, 0, -8.94069672e-008, 0, 1, 0, 8.94069672e-008, 0, 0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.260574341, -1.54971147, 0.0500000045, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.499999821, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.150577545, -4.37967777, 0.0599999726, 0.999999404, 0, -4.47034836e-008, 0, 1, 0, 4.47034836e-008, 0, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.80462265, -0.689430237, -0.059999764, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.379999816, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.629425049, -2.64968753, -0.0600000545, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.839999795, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.640571594, -2.88968611, -0.0600021482, -0.999999642, 0, 1.78813934e-007, 0, 0.999999821, 4.42069052e-007, -1.78813934e-007, 4.42069108e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.349999815, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.444396973, -5.67466831, 0.0600066856, 0.999999404, 1.49011612e-008, 4.47034836e-008, -1.19209268e-007, 0.999999285, 3.04265853e-007, -4.47034836e-008, -3.04265598e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Eye=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Eye",Vector3.new(1.19999993, 0.200000048, 1.39999998))
Eyeweld=weld(m,handle,Eye,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, -3.50177288e-007, 6.96996069, -0.999999344, -1.70433975e-006, 2.23517418e-007, -1.78813877e-007, 4.90689089e-008, -0.999999464, 1.86825218e-006, -0.999999762, -4.90691612e-008))
mesh("CylinderMesh",Eye,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.200000003, 0.899999976))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.260574341, -1.54971433, -0.0599999651, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Hilt2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Hilt2",Vector3.new(0.399999946, 0.200000003, 6.33000088))
Hilt2weld=weld(m,handle,Hilt2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.92903996e-007, -0.90001297, 4.48497248, -2.68220901e-007, -1.03945794e-007, -0.999999642, 0.999999404, -5.54931212e-008, -2.38418579e-007, 1.0841952e-007, -0.999999762, 1.03945865e-007))
mesh("SpecialMesh",Hilt2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.03966856, 0.0605773926, -0.0599974021, 0, -0.999999404, 2.5796146e-007, -0.999999821, 0, 3.58563113e-007, -3.58563113e-007, -2.5796146e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Hilt1=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Hilt1",Vector3.new(0.399999976, 0.200000003, 1))
Hilt1weld=weld(m,handle,Hilt1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.96046448e-008, 1.23999, 0.500015259, -1.8771912e-008, -4.88355667e-008, -0.99999994, 0, -0.999999881, 4.88355596e-008, -0.999999881, 0, 1.87719085e-008))
mesh("SpecialMesh",Hilt1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Ring1=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Ring1",Vector3.new(0.399999976, 0.200000003, 0.399999976))
Ring1weld=weld(m,handle,Ring1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.19999576, 7.4505806e-009, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Ring1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wrist=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Black","Wrist",Vector3.new(0.200000003, 1.03000009, 1.02999985))
Wristweld=weld(m,handle,Wrist,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.600002289, 0.00511670113, -0.00499799103, 1, 3.7057848e-022, -7.10542736e-015, -3.7057848e-022, 1, -2.5243546e-029, 7.10542736e-015, 0, 1))
Hilt3=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Hilt3",Vector3.new(0.399999946, 0.200000003, 1))
Hilt3weld=weld(m,handle,Hilt3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.7997961e-007, 1.23998713, 0.499984741, 5.96046448e-008, 3.35909021e-007, 0.999999642, -3.15089721e-007, -0.999999881, 3.35909021e-007, 0.999999523, -3.15089807e-007, -5.96046448e-008))
mesh("SpecialMesh",Hilt3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Hilt4=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Hilt4",Vector3.new(0.200000003, 2.85999966, 0.399999976))
Hilt4weld=weld(m,handle,Hilt4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.35228038e-005, 7.32904053, 4.91188431, -4.02380351e-007, -1.53387066e-006, -0.999995053, 0.556365073, -0.830930889, 1.05067863e-006, -0.830932796, -0.556363583, 1.18774847e-006))
mesh("BlockMesh",Hilt4,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.00899999961))
Hilt5=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Hilt5",Vector3.new(0.399999946, 0.200000003, 1.35000002))
Hilt5weld=weld(m,handle,Hilt5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.39584255e-007, -0.90001297, 2.01497555, -2.68220901e-007, -1.03945794e-007, -0.999999642, 0.999999404, -5.54931212e-008, -2.38418579e-007, 1.0841952e-007, -0.999999762, 1.03945865e-007))
mesh("SpecialMesh",Hilt5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Ring2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Ring2",Vector3.new(0.399999976, 0.200000003, 0.400000006))
Ring2weld=weld(m,handle,Ring2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 1.20000792, 7.4505806e-009, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Ring2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Circle4=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle4",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Circle4weld=weld(m,handle,Circle4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.4505806e-009, 7.40993166, -0.400009155, 7.10542736e-015, 3.7057848e-022, 1, 2.98023402e-008, -1, 1.58820091e-022, 1, 2.98023402e-008, -7.10542736e-015))
mesh("SpecialMesh",Circle4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle2",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Circle2weld=weld(m,handle,Circle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.86619091e-007, -6.4699316, -0.400001526, -5.96046519e-008, -3.70578379e-022, -0.999999702, -5.26627819e-036, 0.999999583, -3.70578353e-022, 0.999999404, -1.10440963e-029, -2.98023295e-008))
mesh("SpecialMesh",Circle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle3=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle3",Vector3.new(0.200000003, 0.200000003, 0.600000083))
Circle3weld=weld(m,handle,Circle3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.96046448e-008, -6.36991119, -0.299976349, 7.10542736e-015, 3.7057848e-022, 1, -5.26625882e-036, 0.999995887, -3.7057699e-022, -0.999995887, -2.63315093e-036, 7.10539813e-015))
mesh("SpecialMesh",Circle3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle1=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle1",Vector3.new(0.200000003, 0.200000003, 0.600000083))
Circle1weld=weld(m,handle,Circle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.4505806e-009, 7.50979614, -0.300022125, 7.10542736e-015, 4.23516474e-022, 1, 4.47033131e-008, -0.999991775, 5.29384232e-023, 0.999991775, 4.47033131e-008, 0))
mesh("SpecialMesh",Circle1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle6=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle6",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Circle6weld=weld(m,handle,Circle6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.83476639e-007, 7.30987453, -0.49993515, 5.96041509e-008, 1.77635684e-015, -0.999999702, 2.98023224e-008, -0.999991715, 0, -0.999991417, 1.49011612e-008, -5.96046448e-008))
mesh("SpecialMesh",Circle6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle5=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle5",Vector3.new(0.200000003, 0.200000003, 0.600000083))
Circle5weld=weld(m,handle,Circle5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04308128e-007, 7.50986195, -0.299964905, 5.96034333e-008, 2.6644927e-015, -1, 4.47036825e-008, -1, 5.29388619e-023, -1, -4.47036861e-008, -5.96034369e-008))
mesh("SpecialMesh",Circle5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle11=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle11",Vector3.new(0.200000003, 0.200000003, 0.600000083))
Circle11weld=weld(m,handle,Circle11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.63912773e-007, -6.36993504, -0.300022125, -5.96041829e-008, -3.7057848e-022, -1, -5.26628034e-036, 1, -3.70578505e-022, 1, -2.20880226e-029, -5.96041865e-008))
mesh("SpecialMesh",Circle11,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle10=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle10",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Circle10weld=weld(m,handle,Circle10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.4505806e-009, 7.30986309, -0.5, 3.5527122e-015, 7.41153829e-022, 0.999999702, 2.98023224e-008, -0.999991715, 2.11757732e-022, 0.999991417, -1.49011612e-008, 0))
mesh("SpecialMesh",Circle10,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle12=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle12",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Circle12weld=weld(m,handle,Circle12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.4505806e-009, -6.56995964, -0.499946594, 0, 0, 1, 0, 0.999999583, 0, -0.999999583, 0, 0))
mesh("SpecialMesh",Circle12,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.370000005, 0.829999924))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0362091064, -0.923003435, -0.185000002, -0.999999881, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999881))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.599999785, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0425758362, 0.209998608, -0.186252594, 0.499999911, 0, -0.866025329, 0, 1, 0, 0.866025329, 0, 0.499999911))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Blade3=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Blade3",Vector3.new(0.200000003, 1.33999932, 0.200000003))
Blade3weld=weld(m,handle,Blade3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.4505806e-009, -6.93994617, 0.700027466, 7.10542736e-015, 3.7057848e-022, 1, -5.26628034e-036, 1, -3.70578505e-022, -1, -2.63316169e-036, 7.10542736e-015))
mesh("BlockMesh",Blade3,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle9=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle9",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Circle9weld=weld(m,handle,Circle9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.01327896e-006, 7.4099474, -0.39995575, 5.9604627e-008, 3.55271368e-015, -0.999999702, 2.98023224e-008, -0.999999404, 0, -0.999999404, -2.98023224e-008, -2.98023224e-008))
mesh("SpecialMesh",Circle9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Blade2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Blade2",Vector3.new(0.399999976, 0.200000003, 0.400000006))
Blade2weld=weld(m,handle,Blade2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.29998946, 7.4505806e-009, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Blade2,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
Circle8=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle8",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Circle8weld=weld(m,handle,Circle8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.96046448e-008, -6.46993732, -0.399963379, 7.10542736e-015, 3.7057848e-022, 1, -5.26627819e-036, 0.999999583, -3.70578353e-022, -0.999999583, -2.63316062e-036, 7.10542439e-015))
mesh("SpecialMesh",Circle8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Circle7=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Circle7",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Circle7weld=weld(m,handle,Circle7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.48200512e-007, -6.56987524, -0.499977112, -5.96041616e-008, -3.70578379e-022, -0.999999702, -3.55273231e-015, 0.999991775, -3.70575425e-022, 0.999991477, 3.55273231e-015, -5.96046519e-008))
mesh("SpecialMesh",Circle7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.21967125, 0.690563202, -0.0600006357, 2.13162821e-014, -0.999999821, -3.3778224e-007, -0.999999404, 0, 1.63912773e-007, -1.63912773e-007, 3.37782296e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.539421082, -3.68968201, -0.0600030646, -0.999999642, 0, 1.78813934e-007, -2.84217094e-014, 0.999999821, 2.70425346e-007, -1.78813934e-007, 2.70425346e-007, -0.999999642))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499997377, -0.0125045776, -0.191972733, -1.1920929e-007, -0.99999994, -2.83122063e-007, 0.866025388, 0, -0.499999881, 0.499999881, -2.97707601e-007, 0.866025448))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.5, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.599999785, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0015411377, -0.799631357, -0.189999968, 0.999999881, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, 0.999999881))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Blade4=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Blade4",Vector3.new(0.200000003, 4.93999958, 1.5999999))
Blade4weld=weld(m,handle,Blade4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.4505806e-009, -3.7999537, 7.62939453e-006, 7.10542736e-015, 3.7057848e-022, 1, -5.26628034e-036, 1, -3.70578505e-022, -1, -2.63316169e-036, 7.10542736e-015))
mesh("BlockMesh",Blade4,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Blade5=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Blade5",Vector3.new(0.399999946, 1.60000002, 2.4000001))
Blade5weld=weld(m,handle,Blade5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.40329313e-006, -4.19616699e-005, 8.80995274, -2.68220958e-007, -5.00466683e-007, -0.999999642, 0.999999404, 6.56809107e-007, -2.38418693e-007, 8.20721539e-007, -0.999999762, 5.00466626e-007))
mesh("SpecialMesh",Blade5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.25, 1, 1))
Blade1=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Blade1",Vector3.new(0.200000003, 1.33999932, 0.200000003))
Blade1weld=weld(m,handle,Blade1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.96046448e-008, -6.93995762, -0.699981689, 7.10542736e-015, 3.7057848e-022, 1, -5.26628034e-036, 1, -3.70578505e-022, -1, -2.63316169e-036, 7.10542736e-015))
mesh("BlockMesh",Blade1,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.599999785, 0.389999956))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0391645432, -0.209826469, -0.190090179, 0.21370244, -5.58505731e-009, -0.976898372, 8.9715968e-009, 1, -3.75458464e-009, 0.976898372, -7.96197686e-009, 0.21370244))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.599999785, 0.430000007))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00601196289, -0.799792528, -0.196834564, -0.30337739, -8.55849058e-010, -0.952870011, 8.9715968e-009, 1, -3.75458464e-009, 0.952870011, -9.68780167e-009, -0.30337739))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.560000002))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.716457367, -0.0621643066, -0.189999878, 1.25704069e-009, -0.999999821, -1.703207e-008, -0.999999523, 8.27959923e-012, 2.57045002e-007, -5.17815295e-007, -2.19204654e-008, -0.999999285))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.5, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.259999812, 0.299999982))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.1746254, 0.579421997, 0.0600030944, 1.49010972e-008, -0.999999404, -3.42009145e-007, 0.999999166, 2.98023224e-008, 1.63912773e-007, -4.47034836e-008, -3.4200886e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.88463688, 0.560569763, -0.059999764, 7.4505806e-008, -0.999999821, 3.77434404e-008, -0.999999583, -2.98023224e-008, 2.14054552e-009, -2.14055262e-009, -3.77434368e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.289999783, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00273513794, 0.961248159, -0.192640305, 0.888973892, 0, 0.457957566, 0, 1, 0, -0.457957566, 0, 0.888973892))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.189414978, -5.04968262, -0.0600000098, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.689999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.355594635, 5.22966003, -0.0600022301, 0.999999404, -4.47034836e-008, -4.47034836e-008, -1.34110451e-007, -0.999999285, -4.35762018e-007, -4.47034836e-008, 4.35761876e-007, -0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.22999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.54965115, 0.590549469, -0.0500024967, 1.19209304e-007, 0.999999464, -3.33098455e-007, -0.999999404, 2.98023224e-008, -1.49011612e-008, 2.98023224e-008, 3.33098484e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.63966465, 0.70941925, -0.0500027612, -2.84217094e-014, -0.999999821, 3.3778224e-007, 0.999999404, 0, -1.49011612e-007, 1.49011612e-007, 3.37782296e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.77968073, -0.690547943, -0.0499974489, 1.24344979e-014, -0.99999994, 6.73569147e-008, 0.999999404, -1.55211408e-015, -1.63912773e-007, 2.38418579e-007, 6.73569502e-008, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.599999785, 0.389999956))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0157012939, 0.800000906, -0.192234039, 0.866025388, 0, -0.5, 0, 1, 0, 0.5, 0, 0.866025388))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.219999999, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0362269878, -0.0113143921, -0.196310967, 2.96444398e-008, -0.999999464, 2.72407789e-007, -0.999999642, 0, 8.86297803e-014, -2.98023863e-008, -2.9770743e-007, -0.999999702))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.5, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.07969713, 0.340583801, -0.0600001365, -1.46714471e-015, -0.99999994, -6.73569289e-008, -0.999999702, -1.55211408e-015, 1.55233181e-007, -1.55233181e-007, 6.73569502e-008, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.45999983, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199409485, -4.35965443, -0.0499999523, 0.999999404, 0, -4.47034836e-008, 0, 1, 0, 4.47034836e-008, 0, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.200000003, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.270561218, -6.11966658, 0.0600009263, 0.999999881, 0, -2.07808881e-008, 0, 0.999999404, -2.5796146e-007, 2.078081e-008, 3.32467266e-007, 0.999999464))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.479999781, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.008720994, 0.870468855, 0.200004578, 5.96046448e-008, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 5.96046448e-008))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.439999819, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.260574341, -2.84969592, -0.0599999651, -0.999999762, 0, 1.04308128e-007, 0, 1, 0, -1.04308128e-007, 0, -0.999999762))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.47999984, 0.399999976))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.670566559, 4.13465643, 0.0599996001, -0.999999404, -2.98023224e-008, -6.4066775e-008, 2.38418579e-007, -0.999999642, 3.48133881e-007, -6.40668034e-008, 3.48133682e-007, 0.999999404))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.0500000007))
Suit_Circle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.10000000149012,0,"Teal","Suit_Circle",Vector3.new(0.600000024, 0.200000003, 0.600000083))
Suit_Circleweld=weld(m,handle,Suit_Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800003052, -0.529984236, -7.4505806e-009, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("CylinderMesh",Suit_Circle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Add=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.10000000149012,0,"Bright blue","Add",Vector3.new(0.600000024, 0.200000003, 0.600000083))
Addweld=weld(m,handle,Add,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.800003052, -0.499981642, -7.4505806e-009, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("CylinderMesh",Add,"","",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 0.5, 1.29999995))
Wrist=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Black","Wrist",Vector3.new(0.200000003, 1.0200001, 1.02999985))
Wristweld=weld(m,handle,Wrist,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00000381, 2.33650208e-005, -0.00499998778, 1, 3.7057848e-022, -7.10542736e-015, -3.7057848e-022, 1, -2.5243546e-029, 7.10542736e-015, 0, 1))
game.Players.LocalPlayer.Character.Model.Name = "Binary"
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Bright blue","Handle",Vector3.new(0.200000003, 1.98999953, 0.69999975))
handleweld=weld(m,Character["Left Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.529999733, -0.295001984, 0.0499999523, -1, 0, 0, 0, 0, 1, 0, 0.999999881, 0))
mesh("BlockMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Edge=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Bright blue","Edge",Vector3.new(0.200000003, 0.200000003, 2.7699995))
Edgeweld=weld(m,handle,Edge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.763144493, 0.0679969788, 1, -1.93335927e-006, -7.02680495e-007, 6.18906242e-008, -0.313157737, 0.949700832, -2.05616493e-006, -0.949700832, -0.313157737))
mesh("BlockMesh",Edge,"","",Vector3.new(0, 0, 0),Vector3.new(0.50999999, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.819999576, 0.200000003))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.305015564, -0.420000792, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.519999981, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.719999552, 0.200000003))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.634998322, 0.159998894, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.519999981, 1, 1))
Hilt=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Hilt",Vector3.new(0.399999946, 0.780000031, 2.54999924))
Hiltweld=weld(m,handle,Hilt,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1920929e-006, -0.73999691, 0.270000458, -0.999999583, -2.81150506e-006, 2.08616257e-007, -2.08616669e-007, -1.26812566e-007, -0.999999583, 2.81150619e-006, -1, 1.26811798e-007))
mesh("SpecialMesh",Hilt,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.25, 1, 1))
Hilt=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Hilt",Vector3.new(0.399999946, 1.18000007, 1.94999933))
Hiltweld=weld(m,handle,Hilt,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.740006685, 1.98001099, -0.999999404, 2.98023224e-008, 2.40021393e-007, 2.40021706e-007, -1.22206654e-006, 1, 2.98023224e-008, 0.999999404, 1.2220662e-006))
mesh("SpecialMesh",Hilt,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.25, 1, 1))
Edge=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Bright blue","Edge",Vector3.new(0.200000003, 0.200000003, 1.02999973))
Edgeweld=weld(m,handle,Edge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1920929e-006, -0.152518272, -2.36645889, 1, 1.09261535e-007, 6.58666067e-007, -6.57975988e-007, -0.00619947258, 0.999980152, 1.13342473e-007, -0.999980152, -0.00619947258))
mesh("BlockMesh",Edge,"","",Vector3.new(0, 0, 0),Vector3.new(0.50999999, 1, 1))
Edge=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Bright blue","Edge",Vector3.new(0.200000003, 0.200000003, 2.33999968))
Edgeweld=weld(m,handle,Edge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -1.55694389, -1.32740402, 1, 6.33085506e-007, 5.52881886e-007, -1.69016431e-007, -0.492889643, 0.870091259, 8.23352366e-007, -0.870091259, -0.492889643))
mesh("BlockMesh",Edge,"","",Vector3.new(0, 0, 0),Vector3.new(0.50999999, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.399999976, 0.200000003, 0.400000006))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.749998569, -0.00999355316, 0.84500885, 3.02011904e-006, -8.17954415e-008, 0.999999166, 0.999998748, 2.93832227e-006, -3.02011995e-006, -2.93832204e-006, 0.999998748, 8.17965997e-008))
mesh("CylinderMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hilt=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Hilt",Vector3.new(0.399999946, 0.980000079, 2.54999924))
Hiltweld=weld(m,handle,Hilt,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840004921, 0.270000458, 1, -7.63575372e-008, -1.63908069e-007, 1.63908169e-007, -1.10978829e-006, 1, -7.63566277e-008, -1, -1.10978829e-006))
mesh("SpecialMesh",Hilt,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.25, 1, 1))
Hilt=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Hilt",Vector3.new(0.399999946, 1.31000018, 0.949999332))
Hiltweld=weld(m,handle,Hilt,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.484994411, 1.47000885, 0.999999344, 8.39539211e-007, -3.27825518e-007, -1.3411055e-007, 1.60561922e-006, -0.999999762, -8.39539041e-007, 0.999999404, 1.60561933e-006))
mesh("SpecialMesh",Hilt,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.25, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.399999976, 0.200000003, 0.400000006))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.380002975, -0.00999808311, 0.425010681, 3.02011904e-006, -8.17954415e-008, 0.999999166, 0.999998748, 2.93832227e-006, -3.02011995e-006, -2.93832204e-006, 0.999998748, 8.17965997e-008))
mesh("CylinderMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Ring=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Ring",Vector3.new(0.399999976, 0.200000003, 0.400000006))
Ringweld=weld(m,handle,Ring,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.149998188, -0.0100018978, -1.05499268, 3.02011904e-006, -8.17954415e-008, 0.999999166, 0.999998748, 2.93832227e-006, -3.02011995e-006, -2.93832204e-006, 0.999998748, 8.17965997e-008))
mesh("CylinderMesh",Ring,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Edge=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Bright blue","Edge",Vector3.new(0.200000003, 0.200000003, 2.79999948))
Edgeweld=weld(m,handle,Edge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.814922333, -0.0123252869, -0.999999821, 1.38186249e-006, -2.43314929e-007, 3.80829761e-007, 0.363730669, 0.931503892, 1.46432774e-006, 0.931503892, -0.363730848))
mesh("BlockMesh",Edge,"","",Vector3.new(0, 0, 0),Vector3.new(0.50999999, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.819999576, 0.200000003))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1920929e-006, 0.623958588, -0.353258133, 1, 9.0174558e-007, 1.87519106e-006, -9.24956822e-008, 0.919586897, -0.392886758, -2.0786847e-006, 0.392886758, 0.919586897))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.519999981, 1, 1))
Hilt=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Institutional white","Hilt",Vector3.new(0.200000003, 0.549999595, 0.69999975))
Hiltweld=weld(m,handle,Hilt,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -1.25998688, -2.38418579e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Hilt,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Ring=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Dark stone grey","Ring",Vector3.new(0.399999976, 0.200000003, 0.400000006))
Ringweld=weld(m,handle,Ring,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409999847, -0.00999903679, -0.744987488, 3.02011904e-006, -8.17954415e-008, 0.999999166, 0.999998748, 2.93832227e-006, -3.02011995e-006, -2.93832204e-006, 0.999998748, 8.17965997e-008))
mesh("CylinderMesh",Ring,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Color=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Bright blue","Color",Vector3.new(0.200000003, 0.939999461, 0.69999975))
Colorweld=weld(m,handle,Color,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.771411896, -0.658634186, 1, 3.49423772e-007, 3.63105642e-007, -8.35589518e-008, -0.595600009, 0.803280771, 4.96951429e-007, -0.803280771, -0.595600009))
mesh("BlockMesh",Color,"","",Vector3.new(0, 0, 0),Vector3.new(0.50999999, 1, 1))
Decor=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Teal","Decor",Vector3.new(0.200000003, 0.719999552, 0.200000003))
Decorweld=weld(m,handle,Decor,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.0945663452, 0.242657661, 1, -3.40621682e-007, 9.43579835e-007, 3.2589913e-008, 0.951124787, 0.308806688, -1.00264856e-006, -0.308806688, 0.951124787))
mesh("BlockMesh",Decor,"","",Vector3.new(0, 0, 0),Vector3.new(0.519999981, 1, 1))
Edge=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Bright blue","Edge",Vector3.new(0.200000003, 0.200000003, 1.66999972))
Edgeweld=weld(m,handle,Edge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, 1.44799805, -0.447696686, 1, -2.67901839e-007, -3.5412544e-008, 2.36026892e-007, 0.802071095, 0.597227752, -1.31594589e-007, -0.597227752, 0.802071095))
mesh("BlockMesh",Edge,"","",Vector3.new(0, 0, 0),Vector3.new(0.50999999, 1, 1))
Edge=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Bright blue","Edge",Vector3.new(0.200000003, 0.200000003, 0.68999958))
Edgeweld=weld(m,handle,Edge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 1.55696869, -0.0165336132, 1, -1.86635486e-006, -2.75499616e-007, -1.86922432e-006, -0.99994117, -0.010803543, -2.55321368e-007, 0.010803543, -0.99994117))
mesh("BlockMesh",Edge,"","",Vector3.new(0, 0, 0),Vector3.new(0.50999999, 1, 1))
game.Players.LocalPlayer.Character.Model.Name = "Shield"
--------------------------------------------------------------------------------------------------------------
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Neck= Character.Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack=false 
attackdebounce=false 
MMouse=nil
combo=0
local Anim="Idle"
player=nil 
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]


function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end
------------------------------------------------------------------------------------------------------------------
Mode = 'Binary'
local Effects={}
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end
function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
if Mode=="Binary" then
w1.BrickColor = BrickColor.new("Teal")
else
w1.BrickColor = BrickColor.new("Really red")
end
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
if Mode=="Binary" then
w2.BrickColor = BrickColor.new("Teal")
else
w2.BrickColor = BrickColor.new("Really red")
end
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end





local lp = game:service'Players'.LocalPlayer
local chr = lp.Character
local mouse = lp:GetMouse()
local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil
 
local function getAngles(cf)
    local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
    return atan2(-m12,m22),asin(m02),atan2(-m01,m00)
end
Lerp = {
    Number = function(C1,C2,inc)
        return C1 + (C2 - C1) * inc
    end;
    CFrame = function(a,b,m)
                local c,d={a:components()},{b:components()}
                table.foreach(c,function(a,b)c[a]=c[a]+(d[a]-c[a])*m end)
                return CFrame.new(unpack(c))
        end;
}
local function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
 
anglespeed = 1
yeet = 0
count = 0
angle = 0
local attacking = false
local anglespeed = 1
local plr=game:service'Players'.LocalPlayer
local chr=plr.Character
local torso=chr.Torso
local hum = chr.Humanoid
local mouse=plr:GetMouse()
local Neck = genWeld(chr.Torso,chr.Head)
Neck.C0 = CFrame.new(0,1,0)
Neck.C1 = CFrame.new(0,-0.5,0)
local LeftShoulder = genWeld(chr.Torso,chr['Left Arm'])
LeftShoulder.C0 = CFrame.new(-1,0.5,0)
LeftShoulder.C1 = CFrame.new(0.5,0.5,0)
RightShoulder = genWeld(chr.Torso,chr['Right Arm'])
RightShoulder.C0 = CFrame.new(1,0.5,0)
RightShoulder.C1 = CFrame.new(-0.5,0.5,0)
local LeftHip = genWeld(chr.Torso,chr['Left Leg'])
LeftHip.C0 = CFrame.new(-1,-1,0)
LeftHip.C1 = CFrame.new(-0.5,1,0)
local RightHip = genWeld(chr.Torso,chr['Right Leg'])
RightHip.C0 = CFrame.new(1,-1,0)
RightHip.C1 = CFrame.new(0.5,1,0)
local RootJoint = genWeld(chr.HumanoidRootPart,chr.Torso)
RootJoint.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
RootJoint.C1 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local function newLerpTo(weld)
        return {
                Weld = weld; -- The weld that will lerp
                To = weld.C0; -- Where it will lerp to; a CFrame
                Cache = weld.C0; -- Cache of original position; it helps when making anim keyframes
                Speed = 0.1; -- Speed of lerp. 0.1 or 0.2 is best
        }
end
LerpTo = {
        Neck = newLerpTo(Neck);
        LeftArm = newLerpTo(LeftShoulder);
        RightArm = newLerpTo(RightShoulder);
        LeftLeg = newLerpTo(LeftHip);
        RightLeg = newLerpTo(RightHip);
        RootJoint = newLerpTo(RootJoint);
}
 
local it = Instance.new
local bc = BrickColor.new
local c3 = Color3.new
local cf = CFrame.new
local ca = CFrame.Angles
local rad = math.rad
local cos = math.cos
local combo=0
 
 
weld = function(p0,p1,x,y,z,ax,ay,az)
p0.Position=p1.Position
local w = it("Motor",p0)
w.Part0=p0
w.Part1=p1
w.C0=cf(x,y,z)*ca(ax,ay,az)
return w
end
 
anim = true
Equipped = true
Sword = true
Combo = 0
P = game.Players.LocalPlayer.Character
Mouse = game.Players.LocalPlayer:GetMouse()
Binary = game.Players.LocalPlayer.Character.Binary
Shield = game.Players.LocalPlayer.Character.Shield

for i,v in pairs (Binary:GetChildren()) do
if v.Name == "Decor" or string.sub(v.Name,1,4) == "Circ" or v.Name == "Pupil" or v.Name == "Eye" or string.sub(v.Name,1,4) == "Blad" or string.sub(v.Name,1,4) == "Hilt" or v.Name == "Handle" or string.sub(v.Name,1,4) == "Ring" then
v.Transparency = 1
end
end
for i,v in pairs (Shield:GetChildren()) do
if v.Name == "Decor" or string.sub(v.Name,1,4) == "Colo" or v.Name == "Edge" or v.Name == "Eye" or string.sub(v.Name,1,4) == "Blad" or string.sub(v.Name,1,4) == "Hilt" or v.Name == "Handle" or string.sub(v.Name,1,4) == "Ring" then
v.Transparency = 1
end
end

Cache = Binary:Clone()
Cache.Parent = game.Lighting
for i,v in pairs (Cache:GetChildren()) do
if v.Name == "Decor" or v.Name == "Pupil" then
v:Destroy()
end
end

Hitbox = Instance.new("Part",P.Binary.Handle)
Hitbox.FormFactor = "Custom"
Hitbox.Size = Vector3.new(1.5,8.7,1)
Hitbox.Transparency = 1
Hitbox.Name = "Hitbox"
Hitbox.CanCollide = false
W0 = Instance.new("Weld",Hitbox)
W0.Part0 = P.Binary.Handle
W0.Part1 = Hitbox
W0.C1 = CFrame.new(0,-5.5,0)


local function updateanims()
    if anim == true and Sword == true then
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                              LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,0)
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                              LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(sin(angle)*.8,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0)
          end
        elseif anim == true and Word == true and Block == true then
		if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
        anglespeed = 3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,math.pi/8,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-math.pi/8)
                              LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/4,0,math.pi/16)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4 + math.pi/8)
           LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
		elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
		anglespeed = 3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,math.pi/8,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-math.pi/8)
                               LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/4,0,math.pi/16)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4 + math.pi/8)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0)
		end
          elseif anim==true and Word == true then
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                              LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,math.pi/16)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-math.pi/16)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,math.pi/8,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-math.pi/8)
                               LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/4,0,math.pi/16)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4 + math.pi/8)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0)
        end
                if hum.Sit == true then
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(-rad(50),0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                              LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,rad(25))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(25))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(90),0,rad(10))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(rad(90),0,-rad(10))
        end
    end
end
 
 
local adb=false
Equips = function()
  anim=false
              LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                              LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/2,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(10))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
                wait(2)
                --LerpTo.RightArm.To = LerpTo.RightArm.To * Cf(1,0,-0.5)
                --wait(0.5)
                anim = true
end
 
Unequips = function()
  anim=false
LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                              LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/2,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(10))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
                wait(2)
                --LerpTo.RightArm.To = LerpTo.RightArm.To * Cf(1,0,-0.5)
                --wait(0.5)
                anim = true
end
 
 
local mouse=lp:GetMouse()
 

 
Spawn(function()
while wait()do
if Night == true then
game.Lighting.TimeOfDay = 0
game.Lighting.Brightness = 0
game.Lighting.Ambient = Color3.new(0,0,0)
game.Lighting.OutdoorAmbient = Color3.new(0,0,0)
game.Lighting.ShadowColor = Color3.new(0,0,0)
end
angle = (angle % 100) + anglespeed/10 -- no matter whut it has to be in a loop or its on exticy
end
end)
sdeb=false
game:service'RunService'.RenderStepped:connect(function()
        for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)end
    updateanims()
end)
 
Jumpless = function()
    coroutine.resume(coroutine.create(function()
    while wait() do
        if P.Humanoid.Jump == true and anim == true and Enabled == true then
            anim = false
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache
            if Word == true then
                        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(-math.pi/8,0,math.pi/16)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4 + math.pi/8)
                LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-math.pi/8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-math.pi/8,0,0)
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,math.pi/8,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-math.pi/8)
                elseif Word == false then
                    LerpTo.RightArm.To = LerpTo.RightArm.Cache
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-math.pi/8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-math.pi/8,0,0)
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                        end
            wait(0.2)
            anim = true
        end
    end
end))
end
Jumpless()
-----------------------------------------------------------------------------------------------------------

local Blues = {}
local Sizes = {}

Light = Instance.new("PointLight",Binary.Handle)
Light.Color = Color3.new(85/255,1,1)
Light.Brightness = 60
Light.Range = 10
Light.Shadows = true
Pupil = Instance.new("Part",Binary)
Pupil.Transparency = 1
Pupil.Name = "Pupil"
Pupil.BrickColor = BrickColor.new("Bright blue")
Pupil.Reflectance = 0.5
Pupil.FormFactor = "Custom"
Pupil.Shape = "Block"
Pupil.CFrame = P.Torso.CFrame
Pupil.CanCollide = false
Me = Instance.new("CylinderMesh",Pupil)
Me.Scale = Vector3.new(1, 0.22, 1)
Pupil.Size = Vector3.new(0.4,.2,.4)
W1 = Instance.new("Weld",Pupil)
W1.Part0 = Binary.Eye
W1.Part1 = Pupil
W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,math.pi/2,0)


coroutine.resume(coroutine.create(function()
while wait() do
local Num = math.random()*.5
local Nip =  11
--W1.C1 = Binary.Eye.CFrame
for i = 1,10 do
wait()
W1.C1 = CFrame.new(Num/Nip,0,-Num/Nip)
Nip = Nip - 1
end
wait(3)
Nip =  1
for i = 1,10 do
wait()
W1.C1 = CFrame.new(Num/Nip,0,-Num/Nip)
Nip = Nip + 1
end
wait(1)
local Num = math.random()*.5
local Nip =  11
--W1.C1 = Binary.Eye.CFrame
for i = 1,10 do
wait()
W1.C1 = CFrame.new(-Num/Nip,0,Num/Nip)
Nip = Nip - 1
end
wait(3)
Nip =  1
for i = 1,10 do
wait()
W1.C1 = CFrame.new(-Num/Nip,0,Num/Nip)
Nip = Nip + 1
end
wait(1)



local Num = math.random()*.5
local Nip =  11
--W1.C1 = Binary.Eye.CFrame
for i = 1,10 do
wait()
W1.C1 = CFrame.new(-Num/Nip,0,-Num/Nip)
Nip = Nip - 1
end
wait(3)
Nip =  1
for i = 1,10 do
wait()
W1.C1 = CFrame.new(-Num/Nip,0,-Num/Nip)
Nip = Nip + 1
end
wait(1)
local Num = math.random()*.5
local Nip =  11
--W1.C1 = Binary.Eye.CFrame
for i = 1,10 do
wait()
W1.C1 = CFrame.new(Num/Nip,0,Num/Nip)
Nip = Nip - 1
end
wait(3)
Nip =  1
for i = 1,10 do
wait()
W1.C1 = CFrame.new(Num/Nip,0,Num/Nip)
Nip = Nip + 1
end
wait(1)
end
end))


Mouse.KeyDown:connect(function(key)
if key:lower() == "q" and Sword == true then
Sword = false
P.Humanoid.WalkSpeed = 25
local S = Instance.new("Sound",Binary.Handle)
--S.SoundId = "http://www.roblox.com/asset/?id=240517975"
S.SoundId = "http://www.roblox.com/asset/?id=169445226"
S.Pitch = 1
S.Volume = 1
S:Play()
for i,v in pairs (Binary:GetChildren()) do
if v.ClassName == "Part" and v.Name ~= "Wrist" and v.Name ~= "Add" and v.Name ~= "Suit_Circle" then
v.BrickColor = BrickColor.new("Teal")
coroutine.resume(coroutine.create(function()
for i = 1,10 do
v.Transparency = v.Transparency - 0.05
wait()
end
if string.sub(v.Name,1,4) == "Ring" or string.sub(v.Name,1,4) == "Hilt" or v.Name == "Blade2" then
v.BrickColor = BrickColor.new("Dark stone grey")
elseif string.sub(v.Name,1,4) == "Pupi"  then
v.BrickColor = BrickColor.new("Bright blue")
elseif string.sub(v.Name,1,4) == "Circ" or string.sub(v.Name,1,4) == "Blad" then
v.BrickColor = BrickColor.new("Institutional white")
elseif v.Name == "Handle" then
v.BrickColor = BrickColor.new("Black")
end
wait(0.1)
v.Transparency = 0
end))
end
end
wait(0.4)
Word = true
end
end)

Mouse.KeyDown:connect(function(key)
if key:lower() == "q" and Word == true and Equipped == true then
Word = false
P.Humanoid.WalkSpeed = 16
local S = Instance.new("Sound",Binary.Handle)
--S.SoundId = "http://www.roblox.com/asset/?id=240517975"
S.SoundId = "http://www.roblox.com/asset/?id=169445226"
S.Pitch = 1
S.Volume = 1
S:Play()
for i,v in pairs (Binary:GetChildren()) do
if v.Name == "Decor" or string.sub(v.Name,1,4) == "Circ" or v.Name == "Pupil" or v.Name == "Eye" or string.sub(v.Name,1,4) == "Blad" or string.sub(v.Name,1,4) == "Hilt" or v.Name == "Handle" or string.sub(v.Name,1,4) == "Ring" then
coroutine.resume(coroutine.create(function()
for i = 1,10 do
v.BrickColor = BrickColor.new("Teal")
v.Transparency = v.Transparency + 0.05
wait()
end
wait(0.1)
v.Transparency = 1
end))
end
end
wait(0.4)
Sword = true
end
end)

function Lightning(p0, p1, tym, ofs, col, th, tra, last, parent)
        local magz = (p0 - p1).magnitude
	if magz > 70 then
	magz = 70
	end
        local curpos = p0
        local trz = {
                -ofs,
                ofs
        }
        for i = 1, tym do
                local li = Instance.new("Part")
		Light = Instance.new("PointLight",li)
		Light.Color = Color3.new(85/255,1,1)
		Light.Brightness = 60
		Light.Range = 8
		Light.Shadows = true
                if parent ~= nil then
                        li.Parent = parent
                else
                        li.Parent = game.Workspace
                end
                li.TopSurface = 0
                li.BottomSurface = 0
                li.Anchored = true
                li.Transparency = tra or 0.4
                li.BrickColor = BrickColor.new(col)
                li.formFactor = "Custom"
                li.CanCollide = false
		local S = Instance.new("Sound",P.Torso)
		Sounds = {"184211520","184211507"}
		local R = math.random(1,2)
		S.SoundId = "http://www.roblox.com/asset/?id="..Sounds[R]
		S.Pitch = 1
		S.Volume = 0.05
		S:Play()
                li.Size = Vector3.new(th, th, magz / tym)
                local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
                local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
                if tym == i then
                        local magz2 = (curpos - p1).magnitude
			if magz2 > 30 then
			magz2 = 30
			end
                        li.Size = Vector3.new(th, th, magz2)
                        li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
			li.Name = "Start"
			local lia = Instance.new("Part",workspace)
lia.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2) * CFrame.new(0,0,-5)
lia.CanCollide = false
lia.Name = "Start"
lia.Transparency = 1
lia.Size = Vector3.new(th, th, magz / tym)
game.Debris:AddItem(lia,0.1)
lia.Touched:connect(function(part)
if part.Parent:FindFirstChild("Humanoid") and lia.Name == "Start" and part.Parent.Humanoid.Health <= 5 and part.Parent.Head.Name == "Head" and part.Parent.Name ~= P.Name then
lia.Name = "Ended"
Gore(part.Parent)
elseif part.Parent:FindFirstChild("Humanoid") and lia.Name == "Start" and part.Parent.Name ~= P.Name then
lia.Name = "Ended"
H = part.Parent:FindFirstChild("Humanoid")
H.MaxHealth = 100
H.Health = H.Health - 3
end
end)
                else
                        li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
                end
                curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
                game.Debris:AddItem(li, last)
        end
end

function Gore(parent)
for i,v in pairs (parent:GetChildren()) do
if v.ClassName ~= "Part" then
v:Destroy()
elseif v:FindFirstChild("roblox") then
v.roblox:Destroy()
elseif v.ClassName == "Part" then
v.CanCollide = true
elseif v.ClassName == "Part" and v.Name == "Head" then
v.Name = "Lame"
end
end
for i = 1,30 do
Blood = Instance.new("Part",workspace)
Blood.FormFactor = "Custom"
Blood.Size = Vector3.new(0.5,0.5,0.5)
Blood.BrickColor = BrickColor.new("Bright red")
Blood.CFrame = parent.Torso.CFrame * CFrame.new(0,5,0)
game.Debris:AddItem(Blood,2)
end
end



Enabled = true

Mouse.KeyDown:connect(function(key)
if Word == true and Enabled == true and key:lower() == "e" then
Enabled = false
TurnedOn = true
Equipped = false
Curl = true
anim = false
P.Humanoid.WalkSpeed = 0
 LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-math.pi/16)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/2 + math.pi/8,0,0)
for i,v in pairs (Binary:GetChildren()) do
if v.Name == "Decor" or v.Name == "Eye" then
v.BrickColor = BrickColor.new("Bright red")
elseif v.Name == "Pupil" then
v.BrickColor = BrickColor.new("Really red")
elseif string.sub(v.Name,1,4) == "Blad" or string.sub(v.Name,1,4) == "Circ"  then
v.BrickColor = BrickColor.new("Black")
end
end
while wait(0.04) do
if TurnedOn == false then
break
end
Lightning(Binary.Pupil.Position,Mouse.Hit.p,5,3,"Bright red",.1,.5,.05,workspace)
end
end
end)

Mouse.KeyUp:connect(function(key)
if Word == true and Curl == true  and key:lower() == "e" then
TurnedOn = false
for i,v in pairs (Binary:GetChildren()) do
if v.Name == "Decor" or v.Name == "Eye" then
v.BrickColor = BrickColor.new("Teal")
elseif v.Name == "Pupil" then
v.BrickColor = BrickColor.new("Bright blue")
elseif string.sub(v.Name,1,4) == "Blad" or string.sub(v.Name,1,4) == "Circ" then
v.BrickColor = BrickColor.new("Institutional white")
end
end
anim = true
wait(0.2)
Curl = false
Equipped = true
P.Humanoid.WalkSpeed = 25
Enabled = true
end
end)






Mouse.KeyDown:connect(function(key)
if key:lower() == "r" and Enabled == true and Word == true and Equipped == true then
Block = true
Enabled = false
Equipped = false
TurnedOn = true
local S = Instance.new("Sound",Shield.Handle)
--S.SoundId = "http://www.roblox.com/asset/?id=240517975"
S.SoundId = "http://www.roblox.com/asset/?id=169445226"
S.Pitch = 1
S.Volume = 1
S:Play()
for i,v in pairs (Shield:GetChildren()) do
if v.ClassName == "Part" and v.Name ~= "Wrist" and v.Name ~= "Add" and v.Name ~= "Suit_Circle" then
v.BrickColor = BrickColor.new("Teal")
coroutine.resume(coroutine.create(function()
for i = 1,10 do
v.Transparency = v.Transparency - 0.05
wait()
end
if string.sub(v.Name,1,4) == "Ring" then--or string.sub(v.Name,1,4) == "Hilt" or v.Name == "Blade2" then
v.BrickColor = BrickColor.new("Dark stone grey")
elseif string.sub(v.Name,1,4) == "Colo" or string.sub(v.Name,1,4) == "Edge" then
v.BrickColor = BrickColor.new("Bright blue")
elseif string.sub(v.Name,1,4) == "Hilt" or string.sub(v.Name,1,4) == "Blad" then
v.BrickColor = BrickColor.new("Institutional white")
elseif v.Name == "Handle" then
v.BrickColor = BrickColor.new("Bright blue")
end
wait(0.1)
v.Transparency = 0
end))
end
end
wait(0.1)
Curly = true
First = P.Humanoid.Health
while wait() do
if TurnedOn == false then
break
end--if
if P.Humanoid.Health < First then
--print(First .. " 2")
P.Humanoid.Health = First
S = Instance.new("Sound",P.Binary.Handle)
S.SoundId = "http://www.roblox.com/asset/?id=240429466"
S.Volume = 1
S.Pitch = 1
S:Play()
Velo = Instance.new("BodyVelocity",P.Torso)
Velo.velocity = -P.Torso.CFrame.lookVector * 10000
wait()
Velo:remove()
end--if
end--While
end
end)

Mouse.KeyUp:connect(function(key)
if key == "r" and Word == true and Curly == true then
Block = false
Curly = false
local S = Instance.new("Sound",Shield.Handle)
--S.SoundId = "http://www.roblox.com/asset/?id=240517975"
S.SoundId = "http://www.roblox.com/asset/?id=169445226"
S.Pitch = 1
S.Volume = 1
S:Play()
for i,v in pairs (Shield:GetChildren()) do
if v.ClassName == "Part" then
v.BrickColor = BrickColor.new("Teal")
coroutine.resume(coroutine.create(function()
for i = 1,10 do
v.Transparency = v.Transparency + 0.05
wait()
end
v.Transparency = 1
end))
end
end
wait(0.1)
Enabled = true
TurnedOn = false
Equipped = true
end
end)


Sounds = {"220833967",'220833976','220834019',"220834000"}


Mouse.Button1Down:connect(function()
if Combo == 0 and Enabled == true and Word == true and Equipped == true then
Equipped = false
Enabled = false
anim = false
        anglespeed = 3
            --LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-math.pi/2)
                        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(.5,1.7,1.2)
           LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4)  
           -- LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
           -- LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
--LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
			
                       --LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi,math.pi/4,math.pi/2)
            --LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,-math.pi/4 + math.pi/8)  
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
S = Instance.new("Sound",Hitbox)
S.SoundId = "http://www.roblox.com/asset/?id=234365549"
S.Pitch = 1
S.Volume = 1
S:Play()
Hitbox.Name = "Start"
Hitbox.Touched:connect(function(Part)
if Part.Parent then
Par = Part.Parent
if Par:FindFirstChild("Humanoid") and Par.Name ~= P.Name and Par:FindFirstChild("Hup") == nil and Hitbox.Name == "Start" then
Hitbox.Name = "Ended"
Hup = Instance.new("Part",Par)
Hup.Name = "Hup"
Hup.CFrame = CFrame.new(math.huge,math.huge,math.huge)
game.Debris:AddItem(Hup,0.5)
H = Par:FindFirstChild("Humanoid")
H.MaxHealth = 100
H.Health = H.Health - 10
S = Instance.new("Sound",Hitbox)
Random = math.random(1,4)
S.SoundId = "http://www.roblox.com/asset/?id=220834000"
S.Pitch = 1
S.Volume = 1
S:Play()
end
end
end)
blcf=nil
scfr=nil
for i= 1,10 do
wait()
local blcf = Hitbox.CFrame*CFrame.new(0,0,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 10
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
--wait(0.1)
anim = true
Equipped = true
Enabled = true
Hitbox.Name = "Ended"
Combo = 1
wait(0.7)
Combo = 0
end
end)




Mouse.Button1Down:connect(function()
if Enabled == true and Word == true and Equipped == true and Combo == 1 then
Equipped = false
Enabled = false
anim = false
        anglespeed = 3
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,math.pi/8)
                        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(2,1,1)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4 + math.pi/8)  
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
Hitbox.Name = "Start"
Hitbox.Touched:connect(function(Part)
if Part.Parent then
Par = Part.Parent
if Par:FindFirstChild("Humanoid") and Par.Name ~= P.Name and Par:FindFirstChild("Hup") == nil and Hitbox.Name == "Start" then
Hitbox.Name = "Ended"
Hup = Instance.new("Part",Par)
Hup.Name = "Hup"
Hup.CFrame = CFrame.new(math.huge,math.huge,math.huge)
game.Debris:AddItem(Hup,0.5)
H = Par:FindFirstChild("Humanoid")
H.MaxHealth = 100
H.Health = H.Health - 15
S = Instance.new("Sound",Hitbox)
Random = math.random(1,4)
S.SoundId = "http://www.roblox.com/asset/?id=220834000"
S.Pitch = 1
S.Volume = 1
S:Play()
end
end
end)
blcf=nil
scfr=nil
for i= 1,10 do
wait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
LerpTo.RightArm.To = LerpTo.RightArm.Cache
Hitbox.Name = "Start"
S = Instance.new("Sound",Hitbox)
S.SoundId = "http://www.roblox.com/asset/?id=234365573"
S.Pitch = 1
S.Volume = 1
S:Play()
for i= 1,10 do
wait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
wait(0.1)
anim = true
Equipped = true
Enabled = true
Combo = 2
Hitbox.Name = "Ended"
wait(0.7)
Combo = 0
end--if
end)--Mouse



Mouse.Button1Down:connect(function()
if Combo == 2 and Enabled == true and Word == true and Equipped == true then
Equipped = false
Enabled = false
anim = false
        anglespeed = 3
            --LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,math.pi/2)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4 + math.pi/8)  
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))

Hitbox.Name = "Start"
Hitbox.Touched:connect(function(Part)
if Part.Parent then
Par = Part.Parent
if Par:FindFirstChild("Humanoid") and Par.Name ~= P.Name and Par:FindFirstChild("Hup") == nil and Hitbox.Name == "Start" then
Hitbox.Name = "Ended"
Hup = Instance.new("Part",Par)
Hup.Name = "Hup"
Hup.CFrame = CFrame.new(math.huge,math.huge,math.huge)
game.Debris:AddItem(Hup,0.5)
H = Par:FindFirstChild("Humanoid")
H.MaxHealth = 100
H.Health = H.Health - 10
S = Instance.new("Sound",Hitbox)
Random = math.random(1,4)
S.SoundId = "http://www.roblox.com/asset/?id=220834000"
S.Pitch = 1
S.Volume = 1
S:Play()
end
end
end)
coroutine.resume(coroutine.create(function()
local N = 1
for i = 1,12 do
if i % 4 == 0 then
S = Instance.new("Sound",Hitbox)
S.SoundId = "http://www.roblox.com/asset/?id=231917987"
S.Pitch = 1
S.Volume = 1
S:Play()
end
Hitbox.Name = "Start"
LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,N * -math.pi/2)
wait(0.1)
N = N + 1
end
end))
blcf=nil
scfr=nil
for i= 1,45 do
wait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
--wait(0.6)
anim = true
Equipped = true
Enabled = true
Combo = 3
wait(0.5)
Combo = 0
Hitbox.Name = "Ended"
end
end)





Mouse.KeyDown:connect(function(key)
if key:lower() == "f" and Enabled == true and Word == true and Equipped == true then
Equipped = false
Enabled = false
anim = false
        anglespeed = 3
            --LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,math.pi/2)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4 + math.pi/8)  
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))
Hitbox.Name = "Start"
Hitbox.Touched:connect(function(Part)
if Part.Parent then
Par = Part.Parent
if Par:FindFirstChild("Humanoid") and Par.Name ~= P.Name and Par:FindFirstChild("Hup") == nil and Hitbox.Name == "Start" then
Hitbox.Name = "Ended"
Hup = Instance.new("Part",Par)
Hup.Name = "Hup"
Hup.CFrame = CFrame.new(math.huge,math.huge,math.huge)
game.Debris:AddItem(Hup,0.5)
H = Par:FindFirstChild("Humanoid")
H.MaxHealth = 100
H.Health = H.Health - 90
S = Instance.new("Sound",Hitbox)
Random = math.random(1,4)
S.SoundId = "http://www.roblox.com/asset/?id=220834000"
S.Pitch = 1
S.Volume = 1
S:Play()
end
end
end)
coroutine.resume(coroutine.create(function()
local N = 1
for i = 1,12 do
if i % 4 == 0 then
S = Instance.new("Sound",Hitbox)
S.SoundId = "http://www.roblox.com/asset/?id=231917987"
S.Pitch = 1
S.Volume = 1
S:Play()
end
Hitbox.Name = "Start"
LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,N * -math.pi/2)
wait(0.1)
N = N + 1
end
end))
blcf=nil
scfr=nil
for i= 1,45 do
wait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
--wait(0.6)
anim = true
Equipped = true
Enabled = true
wait(0.5)
Hitbox.Name = "Ended"
end
end)






Mouse.Button1Down:connect(function()
if Combo == 3 and Enabled == true and Word == true and Equipped == true then
Equipped = false
Enabled = false
anim = false
        anglespeed = 3
            --LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(-math.pi/4,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/2,0,math.pi/4 + math.pi/8)  
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(8))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache  * CFrame.Angles(0,0,-rad(8))

Hitbox.Name = "Start"
Hitbox.Touched:connect(function(Part)
if Part.Parent then
Par = Part.Parent
if Par:FindFirstChild("Humanoid") and Par.Name ~= P.Name and Par:FindFirstChild("Hup") == nil and Hitbox.Name == "Start" then
Hitbox.Name = "Ended"
Gyro = Instance.new("BodyPosition",P.Torso)
Gyro.maxForce = Vector3.new(400000,400000,400000)
Gyro.P = 1000000
Gyro.D = 100000
Gyro.position = P.Torso.Position + Vector3.new(0,40,0)
Gyro = Instance.new("BodyPosition",Par.Torso)
Gyro.maxForce = Vector3.new(400000,400000,400000)
Gyro.P = 1000000
Gyro.D = 100000
Gyro.position = P.Torso.Position + Vector3.new(0,40,0) + P.Torso.CFrame.lookVector * 10
Hup = Instance.new("Part",Par)
Hup.Name = "Hup"
Hup.CFrame = CFrame.new(math.huge,math.huge,math.huge)
game.Debris:AddItem(Hup,0.5)
H = Par:FindFirstChild("Humanoid")
H.MaxHealth = 100
H.Health = H.Health - 20
S = Instance.new("Sound",Hitbox)
Random = math.random(1,4)
S.SoundId = "http://www.roblox.com/asset/?id=220834000"
S.Pitch = 1
S.Volume = 1
S:Play()
end
end
end)
wait(0.2)
LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/2,0,0)
wait(0.1)
LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/2 + math.pi/4,0,0)
blcf=nil
scfr=nil

coroutine.resume(coroutine.create(function()
for i = 1,20 do
--Workspace.CurrentCamera.Focus = CFrame.new(P.Head.Position)
--LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,i*3)
end
end))
for i= 1,20 do
wait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
--wait(0.6)
--anim = true
Equipped = true
Enabled = true
Combo = 0
wait(0.5)
Hitbox.Name = "Ended"
end
end)




for i,v in pairs (P.Binary:GetChildren()) do
if v.ClassName == "Weld" then
if v.Part0 == P["Right Arm"] then
v.Name = "wld1"
end
end
end

wld1=game.Players.LocalPlayer.Character.Binary:FindFirstChild("wld1")

--Mouse = game.Players.LocalPlayer:GetMouse()
Mouse.KeyDown:connect(function(key)
if key == "c" then
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1)*euler(0,0,-0.8),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,-2,0)*euler(.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.2,-.1,-0.5)*euler(1,-1.8,0)*euler(.9,0,0),.3)
RH.C0=clerp(RH.C0,RHC0*cf(.2,1,.1)*euler(0,-.5,-.2),.3)
LH.C0=clerp(LH.C0,LHC0*cf(-.2,1,.1)*euler(0,.5,.2),.3)
for i = 1,10 do
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(3,-2.4,0)*euler(.1,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.2,.8,-0.5)*euler(3.1,-1.8,0)*euler(.9,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-0.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,1.3),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
wait()
end
end
end)