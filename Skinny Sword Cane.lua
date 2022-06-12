function lerp(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C0
end
local speed = 0.25
local angle = 0
local anglespeed = 2
local armspeed = 0.25
local armangle = 0
local armanglespeed = 2
local legspeed = 0.25
local legangle = 0
local leganglespeed = 2
ignore = {}
on = false
damen = true
enabled = true
jumping = false
falling = false
combo = 1
Player = game.Players.LocalPlayer
mouse = Player:GetMouse()
Char = Player.Character
Human = Char.Humanoid
Sounds = {"rbxasset://sounds/unsheath.wav", "rbxassetid://10209640","rbxassetid://2248511","rbxassetid://168586621"}
Head = Char.Head
LA = Char:findFirstChild("Left Arm")
RA = Char:findFirstChild("Right Arm")
LL = Char:findFirstChild("Left Leg")
RL = Char:findFirstChild("Right Leg")
T = Char:findFirstChild("Torso")
LS = T:findFirstChild("Left Shoulder")
RS = T:findFirstChild("Right Shoulder")
LH = T:findFirstChild("Left Hip")
RH = T:findFirstChild("Right Hip")
Neck = T:findFirstChild("Neck")
HM = Char:findFirstChild("HumanoidRootPart")
RJ = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
WLS = Instance.new("Weld", nil)
WLS.C0 = CFrame.new(-1.5, 0.5, 0)
WLS.C1 = CFrame.new(0, 0.5, 0)
WLS.Part0 = T
WLS.Part1 = LA
WRS = Instance.new("Weld", nil)
WRS.Part0 = T
WRS.Part1 = RA
WRS.C0 = CFrame.new(1.5, 0.5, 0)
WRS.C1 = CFrame.new(0, 0.5, 0)
WLH = Instance.new("Weld", nil)
WLH.C0 = CFrame.new(-0.5, -1, 0)
WLH.C1 = CFrame.new(0, 1, 0)
WLH.Part0 = T
WLH.Part1 = LL
WRH = Instance.new("Weld", nil)
WRH.C0 = CFrame.new(0.5, -1, 0)
WRH.C1 = CFrame.new(0, 1, 0)
WRH.Part0 = T
WRH.Part1 = RL
LSC0 = WLS.C0
RSC0 = WRS.C0
LHC0 = WLH.C0
RHC0 = WRH.C0
WRJ = Instance.new("Weld", nil)
WRJ.Part0 = T
WRJ.Part1 = HM
WRJ.C0 = CFrame.new()
WRJ.C1 = CFrame.new()
RJC0 = WRJ.C0
NC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Run = game:GetService("RunService")
hopbin = Instance.new("HopperBin",Player.Backpack)
hopbin.Name = "Cane Sword"

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
m=Instance.new('Model',Char)
m.Name="Cane Sword"


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
		fp.Position=Char.Torso.Position
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

m=Instance.new('Model',Char)
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
	fp.Position=Char.Torso.Position
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Wood,0,1,"Lavender","Handle",Vector3.new(4.11000013, 0.200000003, 0.200000003))
Handleweld=weld(m,Char["Torso"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.790847778, 1.03089905, 1.03064919, -0.00106879731, -0.000915349985, 0.999999046, 0.999999404, -0.00033666502, 0.00106848951, 0.000335686607, 0.999999523, 0.000915709126))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.689999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Wood,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.05407715, 0.0022277832, 0.00188612938, 1.00000012, -1.16415322e-010, -1.16415322e-010, -1.16415322e-010, 1.00000012, -1.60298441e-011, -1.16415322e-010, -1.60298441e-011, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.91497803, -0.00201416016, -0.00174498558, 1.00000012, -1.16415322e-010, -1.16415322e-010, -1.16415322e-010, 1.00000012, -1.60298441e-011, -1.16415322e-010, -1.60298441e-011, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.11494446, -0.00224304199, -0.0019338131, 1.00000012, -1.16415322e-010, -1.16415322e-010, -1.16415322e-010, 1.00000012, -1.60298441e-011, -1.16415322e-010, -1.60298441e-011, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.71492004, -0.00180053711, -0.00156903267, 1.00000012, -1.16415322e-010, -1.16415322e-010, -1.16415322e-010, 1.00000012, -1.60298441e-011, -1.16415322e-010, -1.60298441e-011, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Wood,0,0,"Lavender","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.06004333, 0.00221252441, 0.00190973282, 1.00000012, -1.16415322e-010, -1.16415322e-010, -1.16415322e-010, 1.00000012, -1.60298441e-011, -1.16415322e-010, -1.60298441e-011, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.680000007, 0.680000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Wood,0,0,"Lavender","Part",Vector3.new(4.30999994, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100021362, -7.62939453e-005, -7.0810318e-005, 1.00000012, -1.16415322e-010, -1.16415322e-010, -1.16415322e-010, 1.00000012, -1.60298441e-011, -1.16415322e-010, -1.60298441e-011, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.689999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Wood,0,0,"Lavender","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.25907898, -0.00234985352, -0.00205779076, 1.00000012, -1.16415322e-010, -1.16415322e-010, -1.16415322e-010, 1.00000012, -1.60298441e-011, -1.16415322e-010, -1.60298441e-011, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.699999988, 0.699999988))
Sheath=part(Enum.FormFactor.Custom,m,Enum.Material.Wood,0,1,"Lavender","Sheath",Vector3.new(4.11000013, 0.200000003, 0.200000003))
Sheathweld=weld(m,Handle,Sheath,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1.00000012, -1.16415322e-010, -1.16415322e-010, -1.16415322e-010, 1.00000012, -1.60298441e-011, -1.16415322e-010, -1.60298441e-011, 1))
mesh("CylinderMesh",Sheath,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Sheath,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.689999998, 1))
CaneModel = New("Model",Char,"CaneModel",{})
Cane = New("Part",CaneModel,"Cane",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1248245, 3.20707083, 162.530579, 1.1921295e-006, 0.99146229, 0.130393445, -0.258950979, 0.12594609, -0.957643986, -0.965890467, -0.0337643661, 0.256740272),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Cane,"Mesh",{})
Mesh = New("SpecialMesh",Cane,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Hitbox = New("Part",CaneModel,"Hitbox",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(4, 0.200000003, 0.5),CFrame = CFrame.new(88.1248245, 2.6117897, 160.30896, 1.1921295e-006, 0.99146229, 0.130393445, -0.258950979, 0.12594609, -0.957643986, -0.965890467, -0.0337643661, 0.256740272),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Hitbox,"Mesh",{})
Mesh = New("SpecialMesh",Hitbox,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Brick,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000048, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1248245, 3.07769418, 162.047607, 1.1921295e-006, 0.99146229, 0.130393445, -0.258950979, 0.12594609, -0.957643986, -0.965890467, -0.0337643661, 0.256740272),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.129999995, 0.680000007, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.2185898, 2.61553836, 163.079819, -0.000347733498, 0.991555691, -0.129732043, 0.258829832, 0.125392199, 0.957755446, 0.965929747, -0.0332515836, -0.256691933),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.218605, 2.6026001, 163.031525, -0.000347733498, 0.991555691, -0.129732043, 0.258829832, 0.125392199, 0.957755446, 0.965929747, -0.0332515836, -0.256691933),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.689999998, 0.689999998),MeshType = Enum.MeshType.Sphere,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1385345, 2.05367851, 158.332794, -0.00101931067, 0.130093113, 0.991501331, 0.258804262, -0.957686782, 0.125922427, 0.96592927, 0.256733119, -0.0326924697),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.01999998, 0.119999997, 0.0399999991),MeshId = "http://www.roblox.com/asset?id=11294922",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1284943, 3.32499266, 163.078491, -0.0447465591, 0.991480708, 0.122326002, 0.0842538401, 0.125757828, -0.988476753, -0.995439172, -0.0339244977, -0.0891632885),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Bright yellow"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.2185898, 2.61553836, 163.079819, -0.000347733498, 0.991555691, -0.129732043, 0.258829832, 0.125392199, 0.957755446, 0.965929747, -0.0332515836, -0.256691933),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0700000003, 0.699999988, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.2089462, 2.75463581, 163.315475, -0.0752062127, 0.991526484, -0.105921164, 0.761261344, 0.12569797, 0.636145651, 0.644069314, -0.0327915736, -0.764263988),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1754608, 3.03916931, 163.392838, -0.129882112, 0.991465509, -0.0112542668, 0.976594806, 0.125954971, -0.17434977, -0.171444237, -0.033635769, -0.984619498),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.2165298, 2.66260743, 163.194763, -0.0229024887, 0.991549492, -0.12774387, 0.421224326, 0.12544322, 0.898245871, 0.906674743, -0.0332425237, -0.420540929),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1391449, 3.27995491, 163.223251, -0.0922137424, 0.991464615, 0.0921665207, 0.494174093, 0.125925615, -0.860194623, -0.864458621, -0.0337754637, -0.501568079),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(88.1307373, 2.1111865, 158.317368, -0.991530418, -0.12993598, 0.000176010653, -0.125557065, 0.957756937, -0.258722574, 0.0334486663, -0.256551355, -0.965959787),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0399999991, 0.119999997, 1.01999998),MeshId = "http://www.roblox.com/asset?id=11294922",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",CaneModel,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.600000024),CFrame = CFrame.new(88.1186981, 2.05119205, 158.333466, 0.991390407, 0.130939052, 8.85618465e-006, 0.126478568, -0.957601011, -0.258850515, -0.0338851586, 0.25662306, -0.965917408),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0399999991, 0.119999997, 1.01999998),MeshId = "http://www.roblox.com/asset?id=11294922",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1558151, 3.17833591, 163.335007, -0.122486204, 0.991468191, 0.0445858389, 0.811391354, 0.125907198, -0.570781529, -0.571525455, -0.0337362885, -0.819890559),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1108856, 2.10865593, 158.318054, -0.000461339951, -0.129478216, -0.991588235, 0.258838773, 0.957774639, -0.125182599, 0.965926647, -0.256716937, 0.0330716968),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.01999998, 0.119999997, 0.0399999991),MeshId = "http://www.roblox.com/asset?id=11294922",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1943359, 2.88851786, 163.38591, -0.112984776, 0.991493046, -0.0646991432, 0.95878619, 0.125871778, 0.25474152, 0.260717362, -0.0332517251, -0.964851618),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("Part",CaneModel,"Part",{BrickColor = BrickColor.new("Lavender"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1248245, 3.20707083, 162.530579, 1.1921295e-006, 0.99146229, 0.130393445, -0.258950979, 0.12594609, -0.957643986, -0.965890467, -0.0337643661, 0.256740272),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.54902, 0.356863, 0.623529),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.689999998, 1),MeshType = Enum.MeshType.Cylinder,})
Part = New("WedgePart",CaneModel,"Part",{BrickColor = BrickColor.new("White"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(3.60000014, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1307144, 2.64258456, 160.300705, 1.1921295e-006, 0.99146229, 0.130393445, -0.258950979, 0.12594609, -0.957643986, -0.965890467, -0.0337643661, 0.256740272),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.94902, 0.952941, 0.952941),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.100000001, 0.300000012),MeshType = Enum.MeshType.Wedge,})
Part = New("WedgePart",CaneModel,"Part",{BrickColor = BrickColor.new("White"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(3.60000014, 0.200000003, 0.200000003),CFrame = CFrame.new(88.1385574, 2.58508945, 160.316132, -0.000347733498, 0.991555691, -0.129732043, 0.258829832, 0.125392199, 0.957755446, 0.965929747, -0.0332515836, -0.256691933),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.94902, 0.952941, 0.952941),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.100000001, 0.300000012),MeshType = Enum.MeshType.Wedge,})
Part = New("WedgePart",CaneModel,"Part",{BrickColor = BrickColor.new("White"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(3.60000014, 0.200000003, 0.200000003),CFrame = CFrame.new(88.118721, 2.58260202, 160.316772, 0.000529229641, -0.991476059, -0.130230337, -0.259148479, -0.125907898, 0.957586765, -0.965829611, 0.0332496166, -0.256999612),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.94902, 0.952941, 0.952941),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.100000001, 0.300000012),MeshType = Enum.MeshType.Wedge,})
Part = New("WedgePart",CaneModel,"Part",{BrickColor = BrickColor.new("White"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(3.60000014, 0.200000003, 0.200000003),CFrame = CFrame.new(88.110878, 2.64007497, 160.301376, 0.000464578217, -0.991597593, 0.129360363, 0.25822407, -0.124854177, -0.957983196, 0.966085017, 0.0338490233, 0.255996346),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.94902, 0.952941, 0.952941),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.100000001, 0.300000012),MeshType = Enum.MeshType.Wedge,})
handle = Cane
SheathWeld = Handleweld
SheathC0 = SheathWeld.C0
CaneParts = {}
for i,v in pairs(CaneModel:GetChildren()) do
	table.insert(CaneParts,v)
end

local prev 
local parts = CaneParts

for i = 1,#parts do 
if (prev ~= nil) then 
local weld = Instance.new("Weld") 
weld.Part0 = prev 
weld.Part1 = parts[i] 
weld.C0 = prev.CFrame:inverse() 
weld.C1 = parts[i].CFrame:inverse() 
weld.Parent = CaneModel 
end 
prev = parts[i]
end

HW = Instance.new("Weld",T)
HW.Part0 = handle
HW.Part1 = Sheath
HW.C0 = CFrame.new(2.8,0,0)
hc0 = HW.C0

Meshes={
	Blast="20329976",
	Crown="1323306",
	Ring="3270017",
	Claw="10681506",
	Crystal="9756362",
	Coil="9753878",
	Cloud="1095708",
	Skull="4770583",
}

function nooutlines(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

function getmesh(mesh)
	return "rbxassetid://"..mesh
end

function effect(part,brickcolor,size,cframe,trans,transincrement,scaleby,loopwait,meshid,meshtype)
	local p = Instance.new("Part", part or workspace)
	p.Anchored = true
	p.CanCollide = false
	p.FormFactor = Enum.FormFactor.Custom
	p.Material = "SmoothPlastic"
	p.CFrame = cframe
	p.BrickColor = brickcolor
	p.Size = Vector3.new(1,1,1)
	p.Transparency = trans
	nooutlines(p)
	local m = Instance.new("SpecialMesh",p)
	if meshtype ~= nil and meshid == nil then
		m.MeshType = meshtype
	end
	if meshtype == nil and meshid ~= nil then
		m.MeshId = getmesh(meshid)
	end
	m.Scale = size
	coroutine.wrap(function()
		for i = 0,loopwait,0.1 do
			p.CFrame = p.CFrame
			p.Transparency = p.Transparency +transincrement
			m.Scale = m.Scale + scaleby
			wait(1/60)
		end
		p:Destroy()
	end)()
	return p
end

PlaySound = function(part,volume,pitch,id)
	local Sound = Instance.new("Sound", part)
	Sound.SoundId = id
	Sound.Pitch = pitch
	Sound.Volume = volume
	Rwait()
	Sound:Play()
	game.Debris:AddItem(Sound,0.1)
end

ShowDmg = function(totake)
	local modl = Instance.new("Model", workspace)
	modl.Name = tostring(totake)
	local prt = Instance.new("Part", modl)
	prt.CanCollide = false
	prt.BrickColor = BrickColor.Red()
	prt.Name = "Head"
	prt.CFrame = HM.CFrame *CFrame.new(0, 1.5, 0)
	prt.TopSurface = 0
	prt.BottomSurface = 0
	prt.FormFactor = 3
	prt.Size = Vector3.new(1, 0.2, 1)
	local bm = Instance.new("BlockMesh", prt)
	local hum = Instance.new("Humanoid", modl)
	hum.Health = 0
	hum.MaxHealth = 0
	hum.WalkSpeed = 0
	bodypos = Instance.new("BodyPosition", prt)
	bodypos.position = Head.Position +Vector3.new(0, 1, 0)
	bodypos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	game.Debris:AddItem(modl, 1)
	coroutine.resume(coroutine.create(function()
		for i = 1, 3 do
			bodypos.position = bodypos.position +Vector3.new(0, 0.5, 0)
			Rwait()
		end
	end))
end

function GetDistance(Obj,Mag)
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Char then
			local Mag2 = (v.Torso.Position - Obj.Position).magnitude
			if Mag2 < Mag then
				return v
			end
		end
	end
end

function Damage(hit,mm,knockback)
	if hit ~= nil and hit.Parent ~= nil and damen == true and hit.Parent ~= Char and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid").Health > 0 then
		hit.Parent.Humanoid:TakeDamage(mm)
		if knockback ~= nil and knockback ~= 0 then
			local v = Instance.new("BodyVelocity",hit.Parent.Torso)
			v.maxForce = Vector3.new(1e4,0,1e4)
			v.P = 1e20
			v.velocity = HM.CFrame.lookVector *knockback
			game.Debris:AddItem(v,0.1)			
		end
		coroutine.resume(coroutine.create(function()
			ShowDmg(mm)
		end))
		damen = false
	end
end

function MagDamage(magnitude,part,damg,knockback,ignoretime)
	if ignoretime == 0 or ignoretime == nil then
		ignoretime = 0.5
	end
	local Body = GetDistance(part,magnitude)
	if Body ~= nil and Body.Humanoid and Body ~= Char and not ignore[Body] then
		ignore[Body] = true
		Body.Humanoid:TakeDamage(damg)
		spawn(function()
			ShowDmg(damg)
		end)
	    if knockback ~= nil and knockback >= 0 and Body.Torso ~= nil then
	        local v = Instance.new("BodyVelocity",Body.Torso)
			v.maxForce = Vector3.new(1e4,0,1e4)
			v.P = 1e15
			v.velocity = T.CFrame.lookVector *knockback
			game.Debris:AddItem(v,0.3)
		end
		coroutine.resume(coroutine.create(function()
			wait(ignoretime)
			ignore[Body] = false
		end))
	end
end

function Rwait(long)
	if long == 0 or long == nil then
		Run.RenderStepped:wait()
	else
		for i = 0,long do
			Run.RenderStepped:wait()
		end
	end
end

function Slash1()
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/1.8,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/5,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	PlaySound(Head,1,1,Sounds[2])
	damen = true
	local Damgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(5,10)) end)
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/30,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,math.pi/5,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	damen = false
	Damgbx:disconnect()
end

function Slash2()
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi,-math.pi/5,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,math.pi/5,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	damen = true
	local Damgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(5,10)) end)
	PlaySound(Head,1,1.1,Sounds[2])
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/20,math.pi/30,-math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/5,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	damen = false
	Damgbx:disconnect()
end

function Slash3()
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1,0,-0.5) *CFrame.Angles(0,0,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/2,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(HW,HW.C0,CFrame.new(-1.8,0,0) *CFrame.Angles(math.pi/2,0,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	damen = true
	local BV = Instance.new("BodyVelocity",HM)
	BV.MaxForce = Vector3.new(1e4,1e4,1e4)
	BV.P = 1e50
	game.Debris:AddItem(BV,0.3)
	local Damgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(5,10),10) end)
	PlaySound(Head,1,0.8,Sounds[2])
	for i = 1,20 do
		BV.Velocity = HM.CFrame.lookVector *30
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/2,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(HW,HW.C0,CFrame.new(-1.8,0,0) *CFrame.Angles(math.pi/2,0,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	damen = false
	Damgbx:disconnect()
end

function Slash4()
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/2.5,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/2,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	damen = true
	local Damgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(5,10),10) end)
	PlaySound(Head,1,0.845,Sounds[2])
	for i = 0,1,0.05 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/20,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,math.pi*i*2,0),speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	damen = false
	Damgbx:disconnect()
end

function FencerFury()
	for i = 1,5 do
		damen = true
		Damgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(1,4)) end)
		for i = 1,8 do
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(math.random(-10,5)/10,0,-math.random(-7,7)/10) *CFrame.Angles(0,0,math.pi/2),armspeed)
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/2,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
			lerp(HW,HW.C0,CFrame.new(-1.8,0,0) *CFrame.Angles(math.pi/2,0,math.pi/2),speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
			end
			Rwait()
		end
		PlaySound(Head,1,1.2,Sounds[2])
		coroutine.wrap(function()
			Rwait(50)
			Damgbx:disconnect()
		end)()
	end
	Damgbx:disconnect()
	damen = false
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1,0,-0.5) *CFrame.Angles(0,0,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/2,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(HW,HW.C0,CFrame.new(-1.8,0,0) *CFrame.Angles(math.pi/2,0,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	effect(Char,BrickColor.new("Institutional white"),Vector3.new(1,1,1),HM.CFrame *CFrame.Angles(math.pi/2,0,0),0,0.1,Vector3.new(1,1,1),1,Meshes.Blast,nil)
	damen = true
	local BV = Instance.new("BodyVelocity",HM)
	BV.MaxForce = Vector3.new(1e4,1e4,1e4)
	BV.P = 1e50
	game.Debris:AddItem(BV,0.3)
	local Damgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(5,10),10) end)
	PlaySound(Head,1,0.8,Sounds[2])
	for i = 1,20 do
		BV.Velocity = HM.CFrame.lookVector *50
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/2,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(HW,HW.C0,CFrame.new(-1.8,0,0) *CFrame.Angles(math.pi/2,0,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	damen = false
	Damgbx:disconnect()
end

function CuttingSlash()
	speed = 0.15
	armspeed = 0.15
	for i = 1,30 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/2.5,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/2,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	speed = 0.2
	armspeed = 0.2
	damen = true
	local Damgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(15,18)) end)
	PlaySound(Head,1,0.5,Sounds[2])
	for i = 1,50 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/25,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,math.pi/5,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	speed = 0.25
	armspeed = 0.25
	Damgbx:disconnect()
	damen = false
end

function GrandPierce()
	for i = 1,30 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-0.5) *CFrame.Angles(math.pi,math.pi,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-0.5) *CFrame.Angles(math.pi,math.pi,math.pi/4),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/4,0,0),speed)
		lerp(HW,HW.C0,CFrame.new(-1,0.6,0.4) *CFrame.Angles(math.pi,-math.pi/5,math.pi/1.3),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		Rwait()
	end
	PlaySound(Head,1,0.6,Sounds[2])
	for i = 1,30 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-0.5) *CFrame.Angles(math.pi/2.5,math.pi,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,- 0.5) *CFrame.Angles(math.pi/2.5,math.pi,math.pi/4),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/5,0,0),speed)
		lerp(HW,HW.C0,CFrame.new(-1,0.6,0.4) *CFrame.Angles(math.pi,-math.pi/5,math.pi/1.3),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
		end
		if i == 16 then
			PlaySound(Head,1,1.8,Sounds[4])
		end
		if i >= 16 and i <= 20 then
			local Raycast = Ray.new(Hitbox.Position +Vector3.new(0,-Hitbox.Size.Y,0),Vector3.new(0,-2,0))
			local Hit,Pos = workspace:FindPartOnRay(Raycast)
			if Hit ~= nil then
				effect(Char,Hit.BrickColor,Vector3.new(0.3,0.3,0.3),CFrame.new(Pos),0,0.1,Vector3.new(0.2,0.1,0.2),1,Meshes.Blast,nil)
				effect(Char,Hit.BrickColor,Vector3.new(0.5,0.5,0.5),CFrame.new(Pos),0,0.1,Vector3.new(0.35,0.3,0.35),1,Meshes.Blast,nil)
				local part = effect(Char,Hit.BrickColor,Vector3.new(1,1,1),CFrame.new(Pos),0,0.1,Vector3.new(0.5,0.5,0.5),1,Meshes.Blast,nil)
				MagDamage(5,part,math.random(8,13),0,0.3)
			end
		end
		Rwait()
	end
end

function Slashes()
	
end

function Selected()
	click = mouse.Button1Down:connect(function()
		if on == false then return end
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
		if combo == 1 and enabled == true then
			enabled = false
			Slash1()
			enabled = true
			combo = 2
		elseif combo == 2 and enabled == true then
			enabled = false
			Slash2()
			enabled = true
			combo = 3
		elseif combo == 3 and enabled == true then
			enabled = false
			Slash3()
			enabled = true
			combo = 4
		elseif combo == 4 and enabled == true then
			enabled = false
			Slash4()
			enabled = true
			combo = 1
		end
	end)
	keys = mouse.KeyDown:connect(function(key)
		key = key:lower()
		if enabled == false then return end
		if key == "f" then
			on = not on
			if on == false and enabled == true then
				enabled = false
				SheathWeld.Part0 = LA
				HW.Part1 = RA
				for i = 1,20 do
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/2),armspeed)
					lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/9),armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					lerp(HW,HW.C0,CFrame.new(0,-1,0) *CFrame.Angles(0,0,math.pi),speed)
					lerp(SheathWeld,SheathWeld.C0,CFrame.new(0.5,0,1) *CFrame.Angles(0,-math.pi/2,0),1)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
					end
					Rwait()
				end
				PlaySound(Head,1,2,Sounds[1])
				for i = 1,10 do
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,math.pi/8),armspeed)
					lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,0),armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					lerp(HW,HW.C0,CFrame.new(0,-1,0) *CFrame.Angles(0,0,math.pi),speed)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
					end
					Rwait()
				end
				for i = 1,10 do
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
					lerp(WRS,WRS.C0,RSC0,armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
					end
					Rwait()
				end
				Rwait(1)
				WLS.Parent = nil
				WRS.Parent = nil
				WLH.Parent = nil
				WRH.Parent = nil
				WRJ.Parent = nil
				LSH.Parent = T
				RSH.Parent = T
				LHH.Parent = T
				RHH.Parent = T
				RJC.Parent = HM
				Neck.C0 = NC0
				Anim.Parent = Char
				Animate.Parent = Human
				HW.Part1 = Sheath
				HW.C0 = CFrame.new(2.8,0,0)
				SheathWeld.Part0 = T
				SheathWeld.C0 = SheathC0
				wait(1)
				enabled = true
			end
			if on == true and enabled == true then
				enabled = false
				RJC = RJ:Clone()
				LSH = LS:Clone()
				RSH = RS:Clone()
				LHH = LH:Clone()
				RHH = RH:Clone()
				Anim = Char:FindFirstChild("Animate")
				if Anim ~= nil then
					Anim.Parent = nil
				end
				Animate = Human:FindFirstChild("Animator")
				if Animate ~= nil then
					Animate.Parent = nil
				end
				WLS.Parent = T
				WRS.Parent = T
				WLH.Parent = T
				WRH.Parent = T
				WRJ.Parent = T
				for i = 1,10 do
					lerp(WLS,WLS.C0,LSC0,armspeed)
					lerp(WRS,WRS.C0,RSC0,armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
				end
				for i = 1,10 do
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
					lerp(WRS,WRS.C0,RSC0,armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
					end
					Rwait()
				end
				SheathWeld.Part0 = LA
				for i = 1,20 do
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,0),armspeed)
					lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,0),armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					lerp(SheathWeld,SheathWeld.C0,CFrame.new(0.5,-0.7,1) *CFrame.Angles(0,-math.pi/2,0),1)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
					end
					Rwait()
				end
				HW.Part1 = RA
				PlaySound(Head,1,1.5,Sounds[1])
				for i = 1,20 do
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/2),armspeed)
					lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/9),armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					lerp(HW,HW.C0,CFrame.new(0,-1,0) *CFrame.Angles(0,0,math.pi),speed)
					lerp(SheathWeld,SheathWeld.C0,CFrame.new(0.5,0,1) *CFrame.Angles(0,-math.pi/2,0),1)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
					end
					Rwait()
				end
				for i = 1,15 do
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,math.pi/2,0),armspeed)
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
					lerp(SheathWeld,SheathWeld.C0,CFrame.new(0,0,1.5) *CFrame.Angles(0,-math.pi/2,0),1)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
					end
					Rwait()
				end
				SheathWeld.Part0 = T
				SheathWeld.C0 = SheathC0
				enabled = true
			end
		end
		if key == "z" and on == true and enabled == true then
			enabled = false
			FencerFury()
			enabled = true
		end
		if key == "x" and on == true and enabled == true then
			enabled = false
			CuttingSlash()
			enabled = true
		end
		if key == "c" and on == true and enabled == true then
			enabled = false
			GrandPierce()
			enabled = true
		end
	end)
end

function Deselected()
	click:disconnect()
	keys:disconnect()
end

hopbin.Selected:connect(Selected)
hopbin.Deselected:connect(Deselected)

while true do
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/6,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0,speed)
			lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		end
		if action == "Walk" and enabled == true then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/4,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/6,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.sin(legangle),0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(math.sin(legangle),0,0),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0,speed)
			lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
		end
		if HM.Velocity.Y >= 5 and enabled == true then
			action = "Jump"
			jumping = true
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/6,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/10,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,1,-1),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed)
			lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
			Rwait()
		end
		if HM.Velocity.Y <= -5 and enabled == true then
			action = "Fall"
			falling = true
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/6,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/10,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.5,-0.5) *CFrame.Angles(math.pi/4,0,0),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/20,0,0),speed)
			lerp(Neck,Neck.C0,NC0,speed)
			lerp(HW,HW.C0,CFrame.new(0,0,1) *CFrame.Angles(math.pi,-math.pi/2,math.pi/2),speed)
			Rwait()
		end
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude <= 2 then
			action = "Idle"
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			action = "Walk"
		end
	end
	Rwait()
end