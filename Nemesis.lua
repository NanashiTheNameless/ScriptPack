-----------{{ Nemesis edited by crone }}--------------------
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

Orb3=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Handle",Vector3.new(0.887265563, 0.887265563, 0.887265563))
Orb3weld=weld(m,Character["Right Arm"],Orb3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0678920746, -0.688210368, 1.24336052, -0.703631341, 0.00967200287, 0.710499585, -0.236187309, 0.939869761, -0.246698543, -0.670163155, -0.341395736, -0.659037471))
mesh("SpecialMesh",Orb3,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.890794039, 0.890788555, 0.890788138))
Orb=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.5,"Bright red","Orb",Vector3.new(1.2214824, 1.2214824, 1.2214824))
Orbweld=weld(m,Orb3,Orb,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1.00000012, 1.49011612e-008, 0, 1.49011612e-008, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Orb,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.890794039, 0.890788555, 0.890788138))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Bright red","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143494606, -1.25856304, 0.329597473, 1.00000012, 1.49011612e-008, 0, 0, 0.923942626, -0.382531196, 0, 0.382531166, 0.923942626))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.615454078, 0.793611169))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143055916, -0.777040958, -1.45310402, 1.00000012, 1.49011612e-008, 0, 0, 0.923905969, -0.382619679, 2.98023224e-008, 0.382619619, 0.923905969))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.145765424, 0.372511417))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 1.29332566))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143642426, 1.01071525, 0.32174015, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923876107, -0.382691681, 0, 0.382691681, 0.923876166))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014380455, -0.705107212, -0.73434639, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923850656, -0.382753313, 0, 0.382753313, 0.923850656))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.307727039, 0.3077268))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144486427, -0.138548374, 1.73012638, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923772991, -0.38294062, 0, 0.38294059, 0.92377305))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.453492314, 0.583061278))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.01440382, -0.769747734, 0.573980331, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923933685, -0.382552862, -2.98023224e-008, 0.382552892, 0.923933744))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.242942229))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144219398, -0.733915329, 0.825391769, 1.00000012, 1.49011612e-008, 0, 0, 0.92392379, -0.382576406, 0, 0.382576406, 0.92392385))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.242942333, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014424324, -1.38064384, -0.353040695, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923933685, -0.382552862, -2.98023224e-008, 0.382552892, 0.923933744))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.890788734, 0.745022833))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143566132, -1.12842798, -0.970887184, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923998177, -0.382396936, -2.98023224e-008, 0.382396907, 0.923998117))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.3239232, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 1.25021493))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144233704, 1.14006543, 2.09680176, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923719823, -0.383068979, 5.96046448e-008, 0.383068949, 0.923719764))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.906984746, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144305229, -0.583024979, -1.07998466, 1.00000012, 1.49011612e-008, 0, 0, 0.923861682, -0.382726401, -2.98023224e-008, 0.382726401, 0.923861742))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.583061755, 0.469688207))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144481659, 0.825361252, 0.8253479, 1.00000012, 1.49011612e-008, 0, 0, 0.923942626, -0.382531196, 0, 0.382531166, 0.923942626))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.259138525, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143418312, 0.86701417, 0.573102951, 1.00000012, 1.49011612e-008, 0, 3.7252903e-009, 0.923902094, -0.382628798, -2.98023224e-008, 0.382628769, 0.923902154))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.242942229))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144238472, 0.400093079, 1.79470062, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923721433, -0.383065045, 2.98023224e-008, 0.383065045, 0.923721433))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.761219323, 0.728826642))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 2.58665133))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143995285, -0.913483143, -0.324422836, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923933685, -0.382552862, -2.98023224e-008, 0.382552892, 0.923933744))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143547058, -0.541141033, 1.62947273, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923827887, -0.382808328, -5.96046448e-008, 0.382808298, 0.923827887))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.453492463, 0.356315255))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 2.06932139, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144166946, 0.0481677055, 1.21985817, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923881888, -0.382678002, 0, 0.382677972, 0.923881888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.566865087))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143070221, -1.2364192, -0.755374908, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923951864, -0.382508934, 2.98023224e-008, 0.382508904, 0.923951805))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.161961451))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143699646, -0.769845009, -0.475525856, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923891902, -0.382653743, -2.98023224e-008, 0.382653683, 0.923891902))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.275334477))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 1.33643687, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143666267, 0.0422482491, 0.896986008, 1.00000012, 1.49011612e-008, 0, 0, 0.923899233, -0.38263604, 0, 0.382636011, 0.923899233))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.161961451))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143237114, 1.7868042, 2.95180702, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923719823, -0.383068979, 5.96046448e-008, 0.383068949, 0.923719764))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.550669432, 0.842199624))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143613815, -0.970600128, 1.38010454, 1.00000012, 1.49011612e-008, 0, 0, 0.382407755, 0.923993766, 1.86264515e-009, -0.923993766, 0.382407755))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.3239232, 0.242942229))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143671036, 0.867209196, -0.314229965, -1.00000012, -1.49011612e-008, 0, 0, 0.923979223, -0.382442802, 0, -0.382442772, -0.923979282))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196163, 0.340119064))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143041611, 0.76987648, -0.315297127, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, -0.923951864, 0.382508934, -2.98023224e-008, -0.382508904, -0.923951805))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.340119064))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0141844749, -0.540944099, 1.8880825, 1.00000012, 1.49011612e-008, 0, 0, 0.923842251, -0.382773578, 0, 0.382773548, 0.923842311))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.453492463, 0.226746053))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142354965, 0.769865513, -0.0939617157, -1.00000012, -1.49011612e-008, 0, 1.86264515e-009, -0.923998177, 0.382396936, -2.98023224e-008, 0.382396907, 0.923998117))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.583061278))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143609047, -1.25842857, 1.07650948, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923933685, -0.382552862, -2.98023224e-008, 0.382552892, 0.923933744))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.615454078, 0.890788138))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143790245, -1.65408182, 0.329648972, 1, -9.68575478e-007, -2.71201134e-006, -1.24797225e-007, 0.923948586, -0.382516891, 2.86102295e-006, 0.382516801, 0.923948526))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.275334716, 0.793611169))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0144429207, 0.633457184, -0.475393295, -1.00000012, -1.49011612e-008, 0, 0, -0.923926353, 0.382570535, 0, 0.382570565, 0.923926353))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.145765424, 0.275334477))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142507553, 0.446650028, -0.734584808, -1.00000012, -1.49011612e-008, 0, 0, -0.923942626, 0.382531196, 0, 0.382531166, 0.923942626))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.275334716, 0.3077268))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 1.79628587, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143270493, 0.57338047, 1.31251836, -1.00000012, -1.49011612e-008, 0, 2.98023224e-008, 0.383064389, 0.92372179, 0, 0.923721671, -0.383064389))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.518276632))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146727562, -1.36502552, 1.12885427, 1.00000012, 1.49011612e-008, 0, 0, 0.382083118, 0.924128056, 0, -0.924127996, 0.382083118))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.323922902))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144696236, 0.467594624, -0.753448486, 1.00000012, 1.49011612e-008, 0, 0, -0.923969984, 0.382465094, -2.98023224e-008, -0.382465065, -0.923969984))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.356315494, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014354229, -2.0562439, -0.353294373, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, 0.923947215, -0.38252008, 0, 0.38252008, 0.923947275))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.631650209, 0.745022833))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143246651, 0.552667618, -0.753526688, -1.00000012, -1.49011612e-008, 0, 0, 0.923969984, -0.382465094, -2.98023224e-008, -0.382465065, -0.923969984))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.356315523, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142321587, 0.399935246, 2.41992378, 1.00000012, 1.49011612e-008, 0, 0, 0.923712194, -0.383087337, 0, 0.383087307, 0.923712134))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.761219621, 0.680238068))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143885612, -0.93530941, -2.05617285, -1.00000012, -1.49011612e-008, 0, 0, 0.382489145, 0.92395997, 0, 0.92396009, -0.382489204))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.631649613))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142798424, -0.755475998, 1.63162708, 1.00000012, 1.49011612e-008, 0, -5.96046448e-008, 0.382526159, 0.923944771, 0, -0.923944652, 0.382526159))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.323922902))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143070221, 0.573734283, -0.66204977, -1.00000012, -1.49011612e-008, 0, 2.98023224e-008, 0.382705569, 0.923870444, 3.7252903e-009, 0.923870444, -0.382705599))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.242942333, 0.0809807107))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 2.14117265))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142812729, 2.95166302, 3.10169697, -1.00000012, -1.49011612e-008, 0, 2.98023224e-008, 0.383064389, 0.92372179, 0, 0.923721671, -0.383064389))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.842200279, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.014421463, 0.752266407, -0.573197365, -1.00000012, -1.49011612e-008, 0, -1.86264515e-009, 0.923974633, -0.382453978, 2.98023224e-008, -0.382453948, -0.923974633))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.0971769989, 0.242942229))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143566132, -0.864401817, 1.62925529, 1.00000012, 1.49011612e-008, 0, 0, 0.923869073, -0.382708788, 0, 0.382708758, 0.923869133))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.275334716, 0.356315255))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142197609, -1.01076412, 0.396925926, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, -0.923881888, 0.382678002, 0, -0.382677972, -0.923881888))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142817497, -0.139033318, 2.05354595, 1.00000012, 1.49011612e-008, 0, -1.86264515e-009, 0.923675716, -0.383175105, 0, 0.383175135, 0.923675776))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.453492463, 0.145765319))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0144047737, 0.0443925858, -1.07949638, -1.00000012, -1.49011612e-008, 0, -3.7252903e-009, -0.923928738, 0.382564604, 0, 0.382564604, 0.923928857))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.631650209, 0.469688356))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 1.10651183))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143818855, -1.78685999, -2.02521324, 1.00000012, 1.49011612e-008, 0, 1.86264515e-009, -0.923719823, 0.383068979, -5.96046448e-008, -0.383068949, -0.923719764))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.550669432, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb3,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142259598, 1.14000654, 3.02338028, 1.00000012, 1.49011612e-008, 0, 0, 0.923712194, -0.383087337, 0, 0.383087307, 0.923712134))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.906985044, 0.680238068))

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

local Player = game.Players.LocalPlayer
local Character = Player.Character 
local PlayerGui = Player.PlayerGui
local Backpack = Player.Backpack 
local Torso = Character.HumanoidRootPart 
local Humanoid = Character.Humanoid
local LeftArm = Character["Left Arm"] 
local LeftLeg = Character["Left Leg"] 
local RightArm = Character["Right Arm"] 
local RightLeg = Character["Right Leg"]
local Backpack = Player.Backpack 
local TorsA = Character.Torso 
local Head = Character.Head 
local LS = TorsA["Left Shoulder"] 
local LH = TorsA["Left Hip"] 
local RS = TorsA["Right Shoulder"] 
local RH = TorsA["Right Hip"] 
local Neck = TorsA.Neck
local rs = game:GetService("RunService").RenderStepped
local Mouse = Player:GetMouse()
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false 
equipped = true
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local Root = Character.HumanoidRootPart
math.randomseed(os.time())

Charging = true
custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
function FDebris()
	repeat
    local p = Instance.new('Part',Torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = Torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	
	spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
end


CV="Pastel blue"
	
local txt = Instance.new("BillboardGui", Character)
txt.Adornee = Character .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(255,0,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Player.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Character.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = "Nemesis"

Player:ClearCharacterAppearance()
wait(0.1)
Player.Character.Head.BrickColor = BrickColor.new("Really black")
Player.Character.Torso.BrickColor = BrickColor.new("Really black")
Player.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
Player.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Arm"].BrickColor = BrickColor.new("Really black")
Player.Character.Head.face:Destroy()



Glow1 = Color3.new(255,0,0)
Glow2 = Color3.new(255,0,0)

GlowParticle = Instance.new("ParticleEmitter",Character.Torso)
GlowParticle.LightEmission = 1
GlowParticle.Color = ColorSequence.new(Glow1,Glow2)
GlowParticle.Size = NumberSequence.new(5,10)
GlowParticle.Texture = "http://www.roblox.com/asset/?id=243660373"
GlowParticle.Transparency = NumberSequence.new(.3,.8)
GlowParticle.LockedToPart = true
GlowParticle.Lifetime = NumberRange.new(2)
GlowParticle.Rate= 10
GlowParticle.Speed =NumberRange.new(0)


local selectionBoxOfTorso = Instance.new("SelectionBox",TorsA)
selectionBoxOfTorso.Adornee = TorsA
selectionBoxOfTorso.Color = BrickColor.new("Really red")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",Character["Right Arm"])
selectionBoxOfRightArm.Adornee = Character["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Really red")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",Character["Right Leg"])
selectionBoxOfRightLeg.Adornee = Character["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Really red")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",Character["Left Arm"])
selectionBoxOfLeftArm.Adornee = Character["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Really red")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",Character["Left Leg"])
selectionBoxOfLeftLeg.Adornee = Character["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Really red")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0


LightOnBody = Instance.new("PointLight", Head)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(225, 0, 0)



local Orbd = Instance.new("Part", Character)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false
	Orbd.BrickColor = BrickColor.new("Really red")
Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.1, 0.1, 0.1)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = Character.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.2, -0.2, 0.5)


local Orbvc = Instance.new("Part", Character)
Orbvc.Name = "Orbvc"
Orbvc.Shape = Enum.PartType.Ball
Orbvc.CanCollide = false
	Orbvc.BrickColor = BrickColor.new("Really red")
Orbvc.Transparency = 0
Orbvc.Material = "Neon"
Orbvc.Size = Vector3.new(0.1, 0.1, 0.1)
Orbvc.TopSurface = Enum.SurfaceType.Smooth
Orbvc.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbvc)
Weld.Part0 = Character.Head
Weld.Part1 = Orbvc
Weld.C1 = CFrame.new(0.2, -0.2, 0.5)



local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Really red")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = Root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.Ambient = Color3.new(0,0,0)
		game.Lighting.FogColor = Color3.new(0,0,0)
		game.Lighting.FogEnd = 500
		game.Lighting.FogStart = 0
		game.Lighting.GlobalShadows = true


z = Instance.new("Sound",Character) --Smile: print("Ã¢?Âº")
z.SoundId = "rbxassetid://413641131"--410761150, 411368002
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(0.1)
z:Play()


--------------------------------Trail		
local LastCFr = nil
local Trails = Instance.new("Model",Character)
local Trail = {}
local Tip = Orbvc
local number = 0
local num2 = 1
game:GetService("RunService").RenderStepped:connect(function()
	local start = nil
	for i = num2,number do
		local v = Trail[i]
		if v ~= nil then
			local cfr = v.CFrame
			local Amount = v.Size.Y/3
			v.Size = v.Size-Vector3.new(0,Amount,0)
			v.Transparency = v.Transparency+0.05
			v.CFrame = cfr*CFrame.new(0,Amount/5,0)
			if v.Size.Y <= 0.1 or v.Transparency > 0.3 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.3,(LastCFr.p-cfr.p).Magnitude,0.3)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]--
			
			
				T.BrickColor = BrickColor.new("Really red")
			
			
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			
			J = Instance.new("Fire")
			J.Parent = T 
			J.Size = 4
			
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
end)
--------------------------------Trail
local LastCFr = nil
local Trails = Instance.new("Model",Character)
local Trail = {}
local Tip = Orbd
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
			v.CFrame = cfr*CFrame.new(0,Amount/5,0)
			if v.Size.Y <= 0.1 or v.Transparency > 0.3 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			
			
			
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.3,(LastCFr.p-cfr.p).Magnitude,0.3)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]--
			
				T.BrickColor = BrickColor.new("Really red")
			
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			
			
			G = Instance.new("Fire")
			G.Parent = T 
			G.Size = 4
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
end)


function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=Instance.new("Part")
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


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"Neon",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end


cam = workspace.CurrentCamera


Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=999999999999999999999999999999999999999999
bodvol.maxForce=Vector3.new(999999999999999999999999999999999999999999, 999999999999999999999999999999999999999999, 999999999999999999999999999999999999999999)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=999999999999999999999999999999999999999999
rl.maxTorque=Vector3.new(999999999999999999999999999999999999999999,999999999999999999999999999999999999999999,999999999999999999999999999999999999999999)*999999999999999999999999999999999999999999
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/999999999999999999999999999999999999999999
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=999999999999999999999999999999999999999999
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(999999999999999999999999999999999999999999,999999999999999999999999999999999999999999,999999999999999999999999999999999999999999)*999999999999999999999999999999999999999999
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end


Effects = {}


function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=102638417",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end


function MagicWave2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicWave3(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1323306",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicWave4(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function ChargingWave2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=9982590",vt(0,0,0),vt(x3,y3,z3))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function ChargingWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=24388358",vt(0,0,0),vt(x3,y3,z3))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end




function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(2.5,2.5,2.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function ChargeBall2(parent)
local counter=0
local size=1
for i=0,1 do
swait()
counter=counter+1
if counter%10==0 then
if size==3 then
MagicRing(BrickColor.new("Bright red"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
elseif size==2 then
MagicRing(BrickColor.new("Bright red"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
end
end
if counter%5==0 then
if size==1 then
MagicBlock(BrickColor.new("Bright red"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
MagicWave(BrickColor.new("Bright red"),cf(Torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,1,.5,1,0.05)
elseif size==2 then
MagicBlock(BrickColor.new("Bright red"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
MagicWave(BrickColor.new("Bright red"),cf(Torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,1,.5,1,0.05)
elseif size==3 then
MagicBlock(BrickColor.new("Bright red"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
MagicWave(BrickColor.new("Bright red"),cf(Torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,1,.5,1,0.05)
end
end
end
end


function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(5,5,5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=24388358",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicRing2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(5,5,5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=9982590",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end


function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=Instance.new(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
end



GroundWave = function()
	local HandCF = CFrame.new(Root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Really red", "Really black"}
		local wave = Instance.new("Part", TorsA)
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

	so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
	
	function BlackBlast()----1

local ChatService = game:GetService("Chat")

ChatService:Chat(Head, "Die....", "Red")
wait(0)
n=2
attack = true

so("http://roblox.com/asset/?id=431105970",Torso,2,1) 
so("http://roblox.com/asset/?id=402981977",Torso,5,0.6) 
local charging=true
for _,c in pairs(workspace:children()) do
if c.className=="Model" then
if c:findFirstChild("Torso")~=nil and c:findFirstChild("Humanoid")~=nil and c.Name~="Vanta" then
print(c)
local Tors=c:findFirstChild("Torso")
coroutine.resume(coroutine.create(function(Part)
local ef=part(3,Character,"Neon",0,0.5,BrickColor.new("Really black"),"Laser",vt(1,0.2,1))
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Head","",vt(0,0,0),vt(1,0.2,1))
game:GetService("Debris"):AddItem(ef,5)
while charging==true do
wait()
local TheHit=Part.Position
local MouseLook=cf((LeftArm.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(LeftArm.Position,MouseLook.lookVector,999,Character)
local mag=(LeftArm.Position-pos).magnitude 
ef.CFrame=CFrame.new((LeftArm.Position+pos)/2,pos)*euler(1.57,0,0)
emsh.Scale=vt(1,mag*5,1)
end
ef.Parent=nil
local TheHit=Part.Position
local MouseLook=cf((Torso.Position+TheHit)/2,TheHit)
wait()
local hit,pos = rayCast(Torso.Position,MouseLook.lookVector,999,Character)
local mag=(Torso.Position-pos).magnitude 
if hit~=nil then
Damagefunc(hit,hit,75,80,99,"Knockdown",RootPart,0)
MagicCircle(BrickColor.new("Really black"),cf(pos),30,30,30,70,70,70,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),30,30,30,34,34,34,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),30,30,30,36,36,36,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),30,30,30,38,38,38,0.02)
MagicWave2(BrickColor.new("Really black"),cf(pos),4.5,2.5,4.5,4.5,2.5,4.5,.025)
MagicWave2(BrickColor.new("Really black"),cf(pos),7.5,0.5,7.5,7.5,0.5,7.5,.025)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((LeftArm.Position+pos)/2,pos)*euler(1.57,0,0),5,mag*5,5,0.5,0,0.5,0.01)
so("http://roblox.com/asset/?id=144699494",hit,7,0.6) 
so("http://roblox.com/asset/?id=138186576",hit,5,1) 
so("http://roblox.com/asset/?id=414516914",hit,7,0.5) 
so("http://roblox.com/asset/?id=416318205",hit,2,1) 
so("http://roblox.com/asset/?id=138186576",hit,5,0.75)
end
end),Tors)
end
end
end
wait(1)
n=2
--[[for i=0,1,0.2 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.4+0.2*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.4+0.17*i*n,0,-1.2+2.77*i*n)
LW.C0=cf(-1-0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.6-0.03*i*n,0,1.4-2.97*i*n)
n=n-0.2
end]]--
charging=false
wait(1)
n=2
--[[for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i*n,0,1.57-1.37*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i*n,0,-1.57+1.37*i*n)
n=n-0.1
end]]--
attack = false
end

function PlaySound(id, pitch, parent, volume)
if volume == nil then volume=tonumber(1) end
        local epicsound = Instance.new("Sound")
        epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = volume
     epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
	 wait()
	 epicsound:Play()
	game:service'Debris':AddItem(epicsound, 8)
end

Shots = {157878578, 157878578, 157878578, 157878578, 157878578}

Shot = function(part)
local shot=math.random(1, #Shots)
PlaySound(Shots[shot], 1, part)
end



local runDummyScript = function(f,scri)
	local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Part")
o2 = Instance.new("ParticleEmitter")
o3 = Instance.new("ParticleEmitter")
o4 = Instance.new("Script")
o1.Name = "aLT"
o1.Parent = mas
o1.Transparency = 1
o1.Material = Enum.Material.SmoothPlastic
o1.Position = Vector3.new(-8.93998814, 3.00001001, -7.47997808)
o1.Anchored = true
o1.CanCollide = false
o1.FormFactor = Enum.FormFactor.Symmetric
o1.Size = Vector3.new(2, 2, 1)
o1.CFrame = CFrame.new(-8.93998814, 3.00001001, -7.47997808, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o1.BottomSurface = Enum.SurfaceType.Smooth
o1.TopSurface = Enum.SurfaceType.Smooth
o1.Position = Vector3.new(-8.93998814, 3.00001001, -7.47997808)
o2.Parent = o1
o2.Size = NumberSequence.new(5,5)
o2.Color = ColorSequence.new(Color3.new(255, 0, 0),Color3.new(255, 0, 0))
o2.LightEmission = 1
o2.Texture = "rbxassetid://243660373"
o2.Lifetime = NumberRange.new(5,5)
o2.Rate = 290
o2.Speed = NumberRange.new(50,50)
o2.VelocitySpread = 10
o3.Parent = o1
o3.Size = NumberSequence.new(20,20)
o3.Color = ColorSequence.new(Color3.new(255, 0, 0),Color3.new(255, 0, 0))
o3.LightEmission = 1
o3.Texture = "rbxassetid://243660373"
o3.Lifetime = NumberRange.new(3,3)
o3.Rate = 2
o3.LockedToPart = true
o3.Speed = NumberRange.new(0,0)
o3.VelocitySpread = 10
o4.Name = "Cframe"
o4.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(0.1)
local p = script.Parent
local me = game.Players.LocalPlayer.Character


game:GetService('RunService').Stepped:connect(function()
	p.CFrame = me.Torso.CFrame * CFrame.new(0,0.05,0) * CFrame.Angles(0,0,0)
end)
end,o4)
end))
mas.Parent = Character.Torso
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = Character.Torso
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

RW = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Torso ,
	C0 = cf(1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0), 
	Part1 = RightArm ,
	Parent = Torso ,
}

LW = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Torso ,
	C0 = cf(-1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0) ,
	Part1 = LeftArm ,
	Parent = Torso ,
}

function swait(num)
	if num == 0 or num == nil then
		ArtificiaLeftHipB.Event:wait()
	else
		for i = 0, num do
			ArtificiaLeftHipB.Event:wait()
		end
	end
end

function clerp(a, b, t)
	return a:lerp(b, t)
end
function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 




l = Instance.new("Sound", Character)
l.SoundId = "http://www.roblox.com/asset/?id=198360408"
l.Looped = true
l.Volume = 9
local footsteps = false



spawn(function()
	while wait(.01)
		 do
		FDebris()	
		end
end)	
spawn(function()
	while wait(0.8)
		 do
		GroundWave()	
	end
end)

function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
Mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 'q' then
BlackBlast()
end
end)




local sine = 0
local change = 1
local val = 0
local idle = 0
local donum = 0
local donum2 = 0

while true do
	swait()
	sine = sine + change
	local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	local velderp = RootPart.Velocity.y
	hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if idle >= 500 then
			if attack == false then
			end
		end
		if donum2 >= .5 then
			handidle = true
		elseif donum2 <= 0 then
			handidle = false
		end
		if handidle == false then
			donum2 = donum2 + 0.003
		else
			donum2 = donum2 - 0.003
		end
		donum = donum + 0.003
		if RootPart.Velocity.y > 1 and hitfloor == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				TorsA.Neck.C0 = clerp(TorsA.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.8, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
				TorsA.Neck.C0 = clerp(TorsA.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.7, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -.9, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
				TorsA.Neck.C0 = clerp(TorsA.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.8, 0.5, -.7) * angles(math.rad(85), math.rad(0), math.rad(-70)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.8, 0.5, -.3) * angles(math.rad(70), math.rad(0), math.rad(70)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
			end
		elseif torvel > 2 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 0.7
		        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				TorsA.Neck.C0 = clerp(TorsA.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40) * math.cos(sine / 10), math.rad(0), math.rad(5)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40) * math.cos(sine / 10), math.rad(0), math.rad(-5)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2), math.rad(0), math.rad(0)), .3)
				
			end
		end
		if Anim == "Walk" then
    if footsteps == false then
        l:Play()
        footsteps = true
    end
    l.Pitch = 1.1
elseif Anim == "Idle" then
    l:Stop()
    footsteps = false
      end
	end
end