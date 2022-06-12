wait(1)

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

RightA=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Handle",Vector3.new(1.31421626, 2.62842989, 1.31421471))
RightAweld=weld(m,Character["Left Arm"],RightA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0754652023, 0.127724171, -0.169014931, 0.999724269, 0.01186, 0.0202710405, -0.0117467064, 0.999914646, -0.00569900358, -0.0203369036, 0.00545931328, 0.99977833))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,1,"Really black","Thingy",Vector3.new(1.41839123, 1.41838992, 1.41838956))
Thingyweld=weld(m,RightA,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.088727951, 0.00277280807, 0.03520298, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.567355752))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0765886307, -1.98301792, 1.04837799, 1.00000012, 8.73114914e-011, 0, 0, -0.707099676, -0.707113743, 0, 0.707113862, -0.707099795))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.354597479, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887346268, -0.777343035, 0.035200119, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.46094286, 0.283678025, 1.46094108))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.088727951, 0.853806138, 0.0352125168, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.50999999, 1.02999997))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0765743256, 1.46370363, -0.580066919, 1.00000012, -1.5963451e-008, 2.99885869e-006, -2.94670463e-006, 0.173635423, 0.984810054, -5.35976142e-007, -0.984809995, 0.173635408))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0765705109, 1.31746244, -0.249498844, 1.00000012, 8.73114914e-011, 0, 0, -0.173656225, 0.984806359, -4.65661287e-010, -0.984806299, -0.173656181))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.44675899, 0.425516993, 1.44675708))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887422562, 0.853808045, 0.0352210999, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.46094286, 0.283678025, 1.46094108))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.088727951, 0.853799224, 0.0352125168, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.567355752))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0765781403, -1.93325758, 1.09814215, -1.00000012, -8.73114914e-011, 0, -5.58793545e-009, -0.707110703, 0.707102895, 0, 0.707102895, 0.707110584))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0765657425, 1.39436722, -0.592307091, -1.00000012, -8.73114914e-011, 0, 0, 0.173656225, -0.984806359, -4.65661287e-010, -0.984806299, -0.173656181))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0352058411, 1.35817862, -0.256694794, -9.72300768e-006, 9.42777842e-006, -1.00000012, 0.984807432, -0.173650503, -1.12168491e-005, -0.173650503, -0.984807432, -7.59679824e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0351982117, 1.76633024, -0.834147453, -9.72300768e-006, 9.42777842e-006, -1.00000012, 0.866034389, 0.499984711, -3.70666385e-006, 0.499984741, -0.866034329, -1.30273402e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0765447617, 1.13482475, -0.218839645, 1.00000012, 8.73114914e-011, 0, -5.58793545e-009, -0.707110703, 0.707102895, 0, -0.707102895, -0.707110584))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.567355752))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0351867676, -2.01229572, 1.01912785, -1.06878579e-005, 1.24396756e-005, -1, -0.707121968, -0.70709157, -1.23679638e-006, -0.707091689, 0.707122087, 1.63540244e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.283678055, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887155533, -0.990084648, 0.0351953506, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0765752792, 1.66953611, -0.890017033, -1.00000012, -8.73114914e-011, 0, 0, 0.500011563, -0.866018832, 0, -0.866018772, -0.500011504))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0765457153, 1.08501911, -0.169064522, -1.00000012, -8.73114914e-011, 0, 0, -0.707099676, -0.707113743, 0, -0.707113862, 0.707099795))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.354597479, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887441635, -0.351821661, 0.0352039337, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.354597479, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887460709, 0.0736956596, 0.0351963043, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0352067947, 1.16405034, -0.248080254, -9.72300768e-006, 9.42777842e-006, -1.00000012, 0.707110286, -0.707103312, -1.35414302e-005, -0.707103431, -0.707110167, 2.10478902e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.354597479, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887374878, 0.499208927, 0.0352153778, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0352153778, 1.50446987, -0.572892904, -9.72300768e-006, 9.42777842e-006, -1.00000012, 0.984808922, 0.173642009, -7.93859363e-006, 0.173642024, -0.984808922, -1.09724933e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.43257511, 0.56735605, 1.4325732))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887422562, 0.853806853, 0.0352210999, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0766086578, 1.73053312, -0.854819059, 1.00000012, 8.73114914e-011, 0, 1.86264515e-009, 0.499992609, 0.86602962, 1.86264515e-009, -0.866029739, 0.499992639))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 1.41838992, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887136459, -0.990086555, 0.0351982117, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.496436507, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887174606, -1.20285392, 0.0352039337, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.12, 1.01999998, 1.12))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.283678204, 0.283678055, 0.851033628))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0765504837, 1.2480793, -0.237279296, -1.00000012, -8.73114914e-011, 0, 0, -0.173634395, -0.984810174, -9.31322575e-010, -0.984810233, 0.173634395))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.283678055, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887231827, -0.5645895, 0.035200119, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.283678055, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887231827, -0.5645895, 0.035200119, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.283678055, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887317657, -0.139071465, 0.0352087021, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.283678055, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887317657, -0.139071465, 0.0352087021, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.283678055, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887136459, -0.990086555, 0.0351982117, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.283678055, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887336731, 0.286453009, 0.0352010727, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.41839123, 0.283678055, 1.41838956))
Partweld=weld(m,RightA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0887336731, 0.286453009, 0.0352010727, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
LeftArmPlate=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","LeftArmPlate",Vector3.new(1.41839123, 2.83677983, 1.41838956))
LeftArmPlateweld=weld(m,RightA,LeftArmPlate,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.088727951, 0.00277280807, 0.03520298, 1.00000012, 8.73114914e-011, 0, 8.73114914e-011, 1, 4.65661287e-010, 0, 4.65661287e-010, 1))
mesh("SpecialMesh",LeftArmPlate,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))


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

Orb2=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Institutional white","Handle",Vector3.new(0.887265563, 0.887265563, 0.887265563))
Orb2weld=weld(m,Character["Left Arm"],Orb2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502059937, 0.355368137, 1.71773267, -0.44424206, 0.232894972, -0.865106404, 0.628215313, 0.769424856, -0.115459129, 0.638744593, -0.594764709, -0.488119096))
mesh("SpecialMesh",Orb2,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.890794039, 0.890788555, 0.890788138))
Orb=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.5,"Institutional white","Orb",Vector3.new(1.2214824, 1.2214824, 1.2214824))
Orb.Shape = "Ball"
Orbweld=weld(m,Orb2,Orb,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1.00000012, 2.98023224e-008, 2.98023224e-008, 2.98023224e-008, 1, 2.98023224e-008, 2.98023224e-008, 2.98023224e-008, 0.99999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143375397, -1.25859022, 0.329596519, 1.00000012, 2.98023224e-008, 2.98023224e-008, -1.11758709e-008, 0.923937678, -0.382543176, -5.96046448e-008, 0.382543325, 0.923937619))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.615454078, 0.793611169))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142879486, -0.777062893, -1.45312595, 1.00000012, 2.98023224e-008, 2.98023224e-008, 1.49011612e-008, 0.923902035, -0.382629365, 0, 0.382629424, 0.923901975))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.145765424, 0.372511417))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 1.29332566))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143518448, 1.01072788, 0.321725368, 1.00000012, 2.98023224e-008, 2.98023224e-008, 3.7252903e-009, 0.923871815, -0.382702261, 2.98023224e-008, 0.382702231, 0.923871756))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143795013, -0.705126762, -0.734368324, 1.00000012, 2.98023224e-008, 2.98023224e-008, -3.7252903e-009, 0.923846126, -0.38276419, 0, 0.382764339, 0.923846006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.307727039, 0.3077268))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144195557, -0.138575554, 1.73011065, 1.00000012, 2.98023224e-008, 2.98023224e-008, 7.4505806e-009, 0.923765123, -0.382959813, 2.98023224e-008, 0.382959902, 0.923765063))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.453492314, 0.583061278))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014383316, -0.769768238, 0.57397604, 1.00000012, 2.98023224e-008, 2.98023224e-008, -3.7252903e-009, 0.923928976, -0.382563949, -2.98023224e-008, 0.382564008, 0.923928976))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.242942229))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143966675, -0.733929157, 0.825384617, 1.00000012, 2.98023224e-008, 2.98023224e-008, -3.7252903e-009, 0.923918545, -0.3825894, 0, 0.382589459, 0.923918486))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.242942333, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144147873, -1.38066387, -0.353047848, 1.00000012, 2.98023224e-008, 2.98023224e-008, -3.7252903e-009, 0.923928976, -0.382563949, -2.98023224e-008, 0.382564008, 0.923928976))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.890788734, 0.745022833))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014339447, -1.12845087, -0.970898151, 1.00000012, 2.98023224e-008, 2.98023224e-008, -1.49011612e-008, 0.923991561, -0.38241303, -2.98023224e-008, 0.382413089, 0.923991442))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.3239232, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 1.25021493))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014421463, 1.1401, 2.09678173, 1.00000012, 2.98023224e-008, 2.98023224e-008, 1.11758709e-008, 0.923716426, -0.383077323, 2.98023224e-008, 0.383077323, 0.923716307))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.906984746, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014421463, -0.583045006, -1.08001328, 1.00000012, 2.98023224e-008, 2.98023224e-008, -1.11758709e-008, 0.923855543, -0.382741481, 0, 0.38274157, 0.923855543))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.583061755, 0.469688207))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144405365, 0.82538271, 0.82533884, 1.00000012, 2.98023224e-008, 2.98023224e-008, 7.4505806e-009, 0.923936188, -0.382546633, -2.98023224e-008, 0.382546723, 0.923936188))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.259138525, 0.323922902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143356323, 0.867033958, 0.573077679, 1.00000012, 2.98023224e-008, 2.98023224e-008, 1.11758709e-008, 0.923900545, -0.382632852, -2.98023224e-008, 0.382632971, 0.923900485))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.242942229))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144271851, 0.400120258, 1.79469538, 1.00000012, 2.98023224e-008, 2.98023224e-008, 7.4505806e-009, 0.923717797, -0.383073896, -2.98023224e-008, 0.383073926, 0.923717678))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.761219323, 0.728826642))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 2.58665133))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143842697, -0.913496971, -0.324445724, 1.00000012, 2.98023224e-008, 2.98023224e-008, -3.7252903e-009, 0.923928976, -0.382563949, -2.98023224e-008, 0.382564008, 0.923928976))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143375397, -0.541174889, 1.62945747, 1.00000012, 2.98023224e-008, 2.98023224e-008, 1.86264515e-008, 0.923819423, -0.382828385, -5.96046448e-008, 0.382828504, 0.923819482))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.453492463, 0.356315255))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 2.06932139, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143985748, 0.0481734276, 1.21983814, 1.00000012, 2.98023224e-008, 2.98023224e-008, 7.4505806e-009, 0.92387718, -0.382689148, -2.98023224e-008, 0.382689238, 0.92387712))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.566865087))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142784119, -1.2364316, -0.755404949, 1.00000012, 2.98023224e-008, 2.98023224e-008, 1.49011612e-008, 0.923943341, -0.382529408, -2.98023224e-008, 0.382529497, 0.923943341))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.161961451))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143661499, -0.769869804, -0.475550175, 1.00000012, 2.98023224e-008, 2.98023224e-008, -3.7252903e-009, 0.923884392, -0.382671893, 0, 0.382671893, 0.923884332))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.275334477))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 1.33643687, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143489838, 0.0422496796, 0.896978855, 1.00000012, 2.98023224e-008, 2.98023224e-008, 1.11758709e-008, 0.923894286, -0.382647961, 2.98023224e-008, 0.382647932, 0.923894167))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.161961451))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld=weld(m,Orb2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143232346, 1.78682709, 2.95177078, 1.00000012, 2.98023224e-008, 2.98023224e-008, 1.11758709e-008, 0.923716426, -0.383077323, 2.98023224e-008, 0.383077323, 0.923716307))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.550669432, 0.842199624))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143451691, -0.970619202, 1.3801322, 1.00000012, 2.98023224e-008, 2.98023224e-008, 0, 0.382422388, 0.923987627, 1.49011612e-008, -0.923987687, 0.382422358))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.3239232, 0.242942229))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143575668, 0.867223263, -0.314217091, -1.00000012, -2.98023224e-008, -2.98023224e-008, 7.4505806e-009, 0.923972368, -0.382459223, 2.98023224e-008, -0.382459283, -0.923972309))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196163, 0.340119064))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142812729, 0.769894123, -0.315297604, 1.00000012, 2.98023224e-008, 2.98023224e-008, -7.4505806e-009, -0.923946202, 0.382522434, 2.98023224e-008, -0.382522523, -0.923946202))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.340119064))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014169693, -0.540971756, 1.88808012, 1.00000012, 2.98023224e-008, 2.98023224e-008, 0, 0.923836112, -0.38278845, 0, 0.38278845, 0.923835993))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.453492463, 0.226746053))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142345428, 0.769889832, -0.0939731598, -1.00000012, -2.98023224e-008, -2.98023224e-008, -1.49011612e-008, -0.923993051, 0.382409662, 0, 0.382409692, 0.923992991))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.583061278))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143318176, -1.25844002, 1.07650661, 1.00000012, 2.98023224e-008, 2.98023224e-008, -3.7252903e-009, 0.923928976, -0.382563949, -2.98023224e-008, 0.382564008, 0.923928976))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.615454078, 0.890788138))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143594742, -1.65409946, 0.329646587, 1, -1.38580799e-006, -3.48687172e-006, -3.35276127e-008, 0.92394191, -0.382532895, 3.78489494e-006, 0.382532895, 0.92394191))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.275334716, 0.793611169))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0144309998, 0.633481979, -0.47542429, -1.00000012, -2.98023224e-008, -2.98023224e-008, -1.11758709e-008, -0.923920572, 0.382584453, 2.98023224e-008, 0.382584512, 0.923920512))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.145765424, 0.275334477))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142469406, 0.446671486, -0.734605312, -1.00000012, -2.98023224e-008, -2.98023224e-008, 1.11758709e-008, -0.923937678, 0.382543176, -5.96046448e-008, 0.382543325, 0.923937619))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.275334716, 0.3077268))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 1.79628587, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143251419, 0.573383808, 1.31253004, -1.00000012, -2.98023224e-008, -2.98023224e-008, 2.98023224e-008, 0.383082122, 0.92371434, -1.49011612e-008, 0.92371428, -0.383082002))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 1, 0.518276632))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146627426, -1.36505795, 1.12887478, 1.00000012, 2.98023224e-008, 2.98023224e-008, -2.98023224e-008, 0.38210234, 0.924120009, -3.7252903e-009, -0.924120188, 0.38210237))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.323922902))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144557953, 0.467606068, -0.753456116, 1.00000012, 2.98023224e-008, 2.98023224e-008, 2.60770321e-008, -0.923965275, 0.382476479, 0, -0.382476568, -0.923965216))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.356315494, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014333725, -2.05626631, -0.353295326, 1.00000012, 2.98023224e-008, 2.98023224e-008, -3.7252903e-009, 0.92394191, -0.382532805, 0, 0.382532895, 0.92394197))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.631650209, 0.745022833))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143194199, 0.552689552, -0.753513813, -1.00000012, -2.98023224e-008, -2.98023224e-008, -1.86264515e-008, 0.923968136, -0.382469654, 0, -0.382469654, -0.923968077))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.356315523, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142192841, 0.399952888, 2.41989946, 1.00000012, 2.98023224e-008, 2.98023224e-008, 3.35276127e-008, 0.923707485, -0.383098871, 0, 0.383098871, 0.923707426))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.761219621, 0.680238068))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143661499, -0.935334206, -2.05619001, -1.00000012, -2.98023224e-008, -2.98023224e-008, -2.98023224e-008, 0.382503301, 0.923954129, 3.7252903e-009, 0.923954248, -0.382503211))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.566865504, 0.631649613))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142612457, -0.755482197, 1.63165283, 1.00000012, 2.98023224e-008, 2.98023224e-008, 0, 0.382535756, 0.923940659, 3.7252903e-009, -0.923940778, 0.382535726))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.323922902))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142774582, 0.573737621, -0.662068844, -1.00000012, -2.98023224e-008, -2.98023224e-008, 2.98023224e-008, 0.382720828, 0.923864007, 3.7252903e-009, 0.923864126, -0.382720768))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.242942333, 0.0809807107))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 2.14117265))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0142974854, 2.95166492, 3.10171676, -1.00000012, -2.98023224e-008, -2.98023224e-008, 2.98023224e-008, 0.383082122, 0.92371434, -1.49011612e-008, 0.92371428, -0.383082002))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962539, 0.842200279, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0144081116, 0.752276421, -0.573189259, -1.00000012, -2.98023224e-008, -2.98023224e-008, -3.7252903e-009, 0.923968792, -0.382468104, 2.98023224e-008, -0.382468164, -0.923968673))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.0971769989, 0.242942229))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143461227, -0.864406586, 1.62925768, 1.00000012, 2.98023224e-008, 2.98023224e-008, 3.7252903e-009, 0.923863828, -0.382721543, 2.98023224e-008, 0.382721603, 0.923863888))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.275334716, 0.356315255))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142230988, -1.01077271, 0.396942616, 1.00000012, 2.98023224e-008, 2.98023224e-008, -7.4505806e-009, -0.92387718, 0.382689148, 2.98023224e-008, -0.382689238, -0.92387712))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.16196157, 0.161961451))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142660141, -0.139053822, 2.05354023, 1.00000012, 2.98023224e-008, 2.98023224e-008, 1.11758709e-008, 0.923669994, -0.383188933, 0, 0.383188993, 0.923670053))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.453492463, 0.145765319))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0143957138, 0.0443892479, -1.0795331, -1.00000012, -2.98023224e-008, -2.98023224e-008, 1.11758709e-008, -0.923923314, 0.382577747, 0, 0.382577837, 0.923923254))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.631650209, 0.469688356))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 1.10651183))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0143852234, -1.78688002, -2.02518988, 1.00000012, 2.98023224e-008, 2.98023224e-008, -1.11758709e-008, -0.923716426, 0.383077323, -2.98023224e-008, -0.383077323, -0.923716307))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.161962584, 0.550669432, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Wedge",Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld=weld(m,Orb2,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142145157, 1.14002323, 3.02335072, 1.00000012, 2.98023224e-008, 2.98023224e-008, 3.35276127e-008, 0.923707485, -0.383098871, 0, 0.383098871, 0.923707426))
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

Orb3=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Handle",Vector3.new(0.887265563, 0.887265563, 0.887265563))
Orb3weld=weld(m,Character["Right Arm"],Orb3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0678920746, -0.688210368, 1.24336052, -0.703631341, 0.00967200287, 0.710499585, -0.236187309, 0.939869761, -0.246698543, -0.670163155, -0.341395736, -0.659037471))
mesh("SpecialMesh",Orb3,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.890794039, 0.890788555, 0.890788138))
Orb=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.5,"Really black","Orb",Vector3.new(1.2214824, 1.2214824, 1.2214824))
Orbweld=weld(m,Orb3,Orb,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1.00000012, 1.49011612e-008, 0, 1.49011612e-008, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Orb,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.890794039, 0.890788555, 0.890788138))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.887265563, 0.887265265, 0.887265563))
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

Handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.303880781, 2.36145711, 0.424186081))
Handleweld=weld(m,Character["Left Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.855320215, -5.09234619, -1.55141234, 0.291239709, -0.921523988, 0.256851763, 0.874029577, 0.365467548, 0.320165366, -0.388911068, 0.131251156, 0.91187799))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.89222157, 1, 1))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.53766251, -0.0762014389, 9.11962891, -6.35534525e-006, 0.985364497, -0.170460999, 1, 5.09526581e-006, -7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(2.5274291, 1.01097679, 2.52743125))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.5326252, -0.0967350006, 9.10777092, 6.35534525e-006, -0.985364497, 0.170460999, -1, -5.09526581e-006, 7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(2.5274291, 1.01097679, 2.52743125))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.22867966, -0.0431725979, -5.97446489, -2.33761966e-007, -0.999994934, -0.00322755985, 1, -2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(1.56180239, 0.624724209, 1.56180406))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00117301941, 1.27079201, -0.000573396683, 0, 2.41026282e-006, -1.00000012, -2.45682895e-006, -1.00000012, -2.41026282e-006, -1.00000012, 2.46334821e-006, -5.96046448e-008))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(0.624720931, 0.624724209, 0.624721646))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00298810005, 1.26123238, -0.00176870823, 0, -2.41026282e-006, 1.00000012, 2.45682895e-006, 1.00000012, 2.41026282e-006, -1.00000012, 2.46334821e-006, -5.96046448e-008))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(0.624720931, 0.624724209, 0.624721646))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.926283836, 7.49117851, 0.00563132763, -7.74860382e-007, -0.500004947, 0.866022646, -5.82635403e-006, 0.866022587, 0.500005007, -1.00000012, -4.65195626e-006, -3.63588333e-006))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(0.874609351, 0.874613881, 0.874610186))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.932169914, -2.5645752, 0.00321233273, 7.74860382e-007, 0.500004947, -0.866022646, 5.82635403e-006, -0.866022587, -0.500005007, -1.00000012, -4.65195626e-006, -3.63588333e-006))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(0.874609351, 0.874613881, 0.874610186))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.37296677, -2.31860352, -0.0126280785, 3.78489494e-006, -0.602664769, 0.797994554, -6.40749931e-007, 0.797994494, 0.602664888, -1, -2.83122063e-006, 2.62260437e-006))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(0.468540728, 0.468543172, 0.468541205))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.93029213, -0.063611269, 2.12936354, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(1.56180239, 0.624724209, 1.56180406))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.93338966, -0.0432159901, 2.1219964, 2.33761966e-007, 0.999994934, 0.00322755985, 1, -2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(1.56180239, 0.624724209, 1.56180406))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.94594002, 0.286227703, 0.430324554, 6.35534525e-006, -0.985364497, 0.170460999, -1, -5.09526581e-006, 7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(1.56180239, 1.56181049, 1.56180406))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.94596672, 0.237372875, -0.430360794, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(1.56180239, 1.56181049, 1.56180406))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.88189125, 0.256071091, 0.503902435, 9.23871994e-007, 0.938580275, 0.345061302, 1, -3.84449959e-006, 7.74860382e-006, 8.58306885e-006, 0.345061272, -0.938580275))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(1.56180239, 1.56181049, 1.56180406))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.88186836, 0.267417908, -0.503939152, 9.23871994e-007, 0.938580275, 0.345061302, -1, 3.84449959e-006, -7.74860382e-006, -8.58306885e-006, -0.345061272, 0.938580275))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(1.56180239, 1.56181049, 1.56180406))
Diamond=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Diamond",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Diamondweld=weld(m,Handle,Diamond,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.23184967, -0.0636007786, -5.96713114, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("SpecialMesh",Diamond,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=160003363",Vector3.new(0, 0, 0),Vector3.new(1.56180239, 0.624724209, 1.56180406))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.633467734))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0118174553, -4.74114609, -6.44987488, 1, 9.31322575e-010, 2.98023224e-008, -2.98023224e-008, 0.735447228, -0.677582085, 0, 0.677582085, 0.735447228))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.41938743, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.898353457, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.07691002, -6.03564835, 0.0124071836, 1.2665987e-006, 0.862874269, -0.505418777, 5.66244125e-006, 0.505418777, 0.862874389, 1, -3.92459333e-006, -4.20212746e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.390603751, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.82885551, -8.53376007, 0.0123022795, -5.40912151e-006, 0.912042677, -0.410095602, -1.78813934e-006, 0.410095572, 0.912042737, 1, 5.64195216e-006, -5.36441803e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.719533324, 0.844942331, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.891481519, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.99671936, -5.81120586, 0.0123764277, 2.07126141e-006, 0.935410023, -0.353565037, 7.15255737e-007, 0.353565007, 0.935410142, 1.00000012, -2.18115747e-006, 1.49011612e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.890165508, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 1.43624103, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.08830452, -4.95266533, 0.0124027729, 9.08970833e-007, 0.947800398, -0.318864465, 2.50339508e-006, 0.318864435, 0.947800398, 1.00000012, -1.65496022e-006, -1.9967556e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.402938634, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.386702269, 1.67863405, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.81900597, -3.7907033, 0.0124021769, -2.18953937e-006, 0.999113083, 0.0421111062, 7.53998756e-006, -0.0421110988, 0.999113142, 1.00000012, 2.4959445e-006, -7.4505806e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 1.427495, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.42060661, -6.35691929, 0.0124715567, 8.34465027e-007, 0.976316214, -0.216348842, 1.75833702e-006, 0.216348812, 0.976316273, 1, -1.17719173e-006, -1.54972076e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.719533324, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.610355556, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.64081764, -9.38612175, 0.012537241, 1.03414059e-005, 0.708146274, -0.706065893, 8.70227814e-006, 0.706065834, 0.708146393, 1, -1.34650618e-005, 1.13248825e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.719533324, 1, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.630344152))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0117828846, 4.49557686, 9.72130394, 1, 9.31322575e-010, 2.98023224e-008, 1.49011612e-008, -0.841934204, 0.539580226, -2.98023224e-008, -0.539580166, -0.841934323))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.72570467, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.97001457, -8.14420509, 0.0123494864, -5.90085983e-006, 0.811350644, -0.584559917, -5.66244125e-007, 0.584559917, 0.811350703, 1, 5.10364771e-006, -3.01003456e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.984732747, 0.474894702, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.12477303, 7.97657013, 0.0124797821, -7.42077827e-006, -0.81032598, 0.585979402, 1.22189522e-006, -0.585979402, -0.810326099, 1.00000012, -5.31040132e-006, 5.33461571e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.614686966, 0.886058807, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.752164006, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.53266525, -6.39919186, 0.0123852491, -5.46872616e-006, 0.953804553, -0.300428092, 6.64591789e-006, 0.300428063, 0.953804493, 1.00000012, 3.25683504e-006, -7.92741776e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.474894702, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.330477387, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.51274681, -2.80544376, 0.012424469, -1.97067857e-006, 0.986788869, 0.162011981, 3.1888485e-006, -0.162011966, 0.986788929, 1, 2.47824937e-006, -2.8014183e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.474894702, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.747166276, 0.938960552, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.04835129, -3.9598732, 0.0124355555, 1.19954348e-006, 0.984634697, -0.174627542, -3.01003456e-006, 0.174627513, 0.984634757, 1.00000012, -6.37955964e-007, 3.1888485e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.747166276, 0.938960552, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.6598053, -0.680284381, 0.0124374628, 3.3993274e-006, 0.99640733, 0.0846904889, -2.17556953e-006, -0.0846904963, 0.996407509, 1, -3.5604462e-006, 1.90734863e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.331726789, 0.421688914, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.2640686, 1.18227386, 0.0124481916, 3.15904617e-006, 0.840927958, 0.541147232, -5.96046448e-008, -0.541147172, 0.840928018, 1, -2.67196447e-006, -1.63912773e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.48577881, 3.52108002, 0.0124073029, 4.29153442e-006, 0.661209226, 0.750201762, 3.96370888e-006, -0.750201643, 0.661209345, 1.00000012, 1.20140612e-007, -5.78165054e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.339208543, 0.886058807, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.396699995, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.98085213, -5.27405071, 0.0123759508, 2.07126141e-006, 0.935410023, -0.353565037, 7.15255737e-007, 0.353565007, 0.935410142, 1.00000012, -2.18115747e-006, 1.49011612e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.555068493, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.747166276, 0.938960552, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.50214767, -1.27178431, 0.0124406815, 1.77323818e-006, 0.997692525, -0.0678942204, -6.88433647e-006, 0.0678942055, 0.997692704, 1, -1.30292028e-006, 7.00354576e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.352342576, 1.34065831, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-10.5052204, -1.9303751, 0.0124589205, -9.16421413e-007, 0.969665706, 0.2444354, 2.32458115e-006, -0.24443537, 0.969665766, 1, 1.45658851e-006, -2.02655792e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.664703071, 1.55618823, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-10.7849522, -1.86814451, 0.0123307705, -7.2196126e-006, 0.959318459, 0.282326162, 1.60932541e-006, -0.282326162, 0.959318638, 1.00000012, 7.36955553e-006, 5.06639481e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.523516178, 0.994561017, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53429985, -4.86823463, 0.0123734474, -2.33948231e-006, 0.993130445, -0.117012888, -9.53674316e-006, 0.117012873, 0.993130505, 1.00000012, 3.4449622e-006, 9.1791153e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.331726789, 0.421688914, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.90021324, 3.71161652, 0.0124218464, 2.86102295e-006, 0.685215354, 0.728340626, 2.59280205e-006, -0.728340685, 0.685215473, 1.00000012, -8.00937414e-008, -3.81469727e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.747166276, 0.938960552, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.2880497, -2.32239437, 0.0124710798, -4.84287739e-007, 0.966228366, -0.257687628, 1.63912773e-006, 0.257687569, 0.966228366, 1, 5.21540642e-008, -1.69873238e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.487907052, 1.41062737, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.77950478, -3.18369174, 0.0124433041, -1.37276947e-006, 0.996782541, 0.0801540613, 2.77161598e-006, -0.0801540613, 0.996782541, 1, 1.58697367e-006, -2.68220901e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.385452777, 0.5566293, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-10.6558323, 0.750766754, 0.0123432875, -4.06801701e-006, 0.884027779, 0.467434585, 6.04987144e-006, -0.467434525, 0.884027779, 1.00000012, 6.43637031e-006, -3.4570694e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.747166276, 0.938960552, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.02560043, -5.11255074, 0.0123916864, -2.29477882e-006, 0.795170367, -0.606386185, -2.56299973e-006, 0.606386185, 0.795170546, 1.00000012, 3.38349491e-006, 6.2584877e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24762154, -9.62639999, 0.0123747587, -1.8030405e-006, 0.857795596, -0.513991117, -3.48687172e-006, 0.513991058, 0.857795715, 1, 3.33320349e-006, 2.08616257e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.719533324, 0.964179933, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.817759752, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.59584427, -7.68833351, 0.0124964714, 2.94297934e-006, 0.984120488, -0.177501574, 6.40749931e-006, 0.177501589, 0.984120667, 1, -4.04193997e-006, -5.78165054e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.844942331, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.3829937, 6.14517593, 0.0123784542, -7.4505806e-007, 0.460300177, 0.887763381, 3.68058681e-006, -0.8877635, 0.460300297, 1.00000012, 3.6181882e-006, -1.01327896e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.180911213, 0.772988617, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.362962931, 0.938960552, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.74276543, -5.47986889, 0.0123935938, -2.59280205e-006, 0.959444523, -0.281897455, 1.04308128e-006, 0.281897426, 0.959444761, 1.00000012, 2.21282244e-006, -1.66893005e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.719682336, 1.38375843))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0118172169, -6.6255846, -5.89062881, 1, 9.31322575e-010, 2.98023224e-008, 0, 0.62005347, -0.784559727, 0, 0.784559727, 0.62005353))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.831507862, 2.30084991))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0118224621, 7.365839, 10.0827389, 1, 9.31322575e-010, 2.98023224e-008, 0, -0.947382987, 0.320102304, 0, -0.320102274, -0.947383046))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.396699995, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.39190102, -4.27942276, 0.0123281479, -2.33948231e-006, 0.993130445, -0.117012888, -9.53674316e-006, 0.117012873, 0.993130505, 1.00000012, 3.4449622e-006, 9.1791153e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.555068493, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799642742, 1.427495, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.9553833, -5.02813959, 0.012455821, 5.12693077e-007, 0.999661446, 0.0260259584, 8.64267349e-007, -0.0260259546, 0.999661446, 1, -4.65661287e-007, -8.34465027e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.507898152, 1.43624103, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.26845169, -3.86994553, 0.0123940706, 1.28895044e-006, 0.996768236, -0.0803309977, 1.34110451e-006, 0.0803309977, 0.996768415, 1, -1.37928873e-006, -1.16229057e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.719682336, 1.38375843))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0118565559, -3.57201624, 9.79333305, -1, -9.31322575e-010, -2.98023224e-008, 0, 0.314332098, -0.949313283, 7.4505806e-009, -0.949313164, -0.314332187))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.21840477, 6.1385498, -0.0123779774, -7.4505806e-007, 0.747229993, -0.664565682, -2.38418579e-007, -0.664565623, -0.747230053, -1.00000024, -4.06987965e-007, 6.55651093e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.5833168, 5.49309731, -0.0123949051, -5.66244125e-006, 0.212382704, -0.977186799, 1.02072954e-006, -0.97718668, -0.212382704, -1, -2.19326466e-006, 5.27501106e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.719682336, 1.38375843))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.011831522, -7.14717865, 7.26375008, -1, -9.31322575e-010, -2.98023224e-008, 0, 0.746874034, -0.664965808, 0, -0.66496563, -0.746874034))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.23993683, 3.32087326, 0.0123846531, -3.36766243e-006, 0.525615335, 0.850722492, -3.01003456e-006, -0.850722432, 0.525615394, 1.00000012, -8.32602382e-007, 4.44054604e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.90871239, -1.46137023, 0.0124337673, -6.85453415e-006, 0.977294266, 0.211887211, 1.09672546e-005, -0.211887166, 0.977294207, 1.00000012, 9.00030136e-006, -9.20891762e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15808296, 4.24049377, -0.0124689341, -3.90410423e-006, -0.1098307, -0.993950427, -1.71735883e-006, -0.993950367, 0.109830707, -1.00000012, 2.14483589e-006, 3.66568565e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.99293137, 1.89629173, 0.012447238, 3.30805779e-006, 0.721782982, 0.692119539, -1.4603138e-006, -0.692119479, 0.721783042, 1.00000012, -3.40119004e-006, -1.22189522e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.369169712, 6.00893211, -0.0124207735, -2.20537186e-006, 0.412875623, -0.910787523, 2.66730785e-006, -0.910787523, -0.412875623, -1.00000012, -3.33692878e-006, 8.64267349e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.54696083, 2.95970726, -0.0124070644, 1.78813934e-007, -0.453818619, -0.891094208, 7.89761543e-007, -0.891094148, 0.453818649, -1, -7.97212124e-007, 1.78813934e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.96325874, 3.49968147, -0.012406826, 3.51667404e-006, -0.292187393, -0.956361234, 4.2617321e-006, -0.956361175, 0.292187423, -1.00000012, -5.10551035e-006, -2.17556953e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.25001717, 0.392267227, -0.0124809742, -4.91738319e-006, -0.862339437, -0.506330729, 2.77161598e-006, -0.506330729, 0.862339616, -1, 2.83215195e-006, 4.76837158e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.97675133, 2.07562637, -0.0123881102, 0, -0.601658285, -0.798753798, 2.71201134e-006, -0.798753619, 0.601658285, -1, -2.17556953e-006, 1.57952309e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.43514729, 4.64616585, -0.0124527216, -3.4570694e-006, 0.0353732482, -0.99937427, 5.90307172e-006, -0.99937427, -0.0353732482, -1, -6.02658838e-006, 3.1888485e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.995017111, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.57681942, 5.03350258, -0.0124129057, -5.9902668e-006, 0.334408253, -0.94242847, -2.79396772e-006, -0.94242841, -0.334408224, -1, 6.09084964e-007, 6.58631325e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.30986324, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.91934729, 4.84834099, -0.0123993158, 2.14576721e-006, 0.126262486, -0.991997004, 8.11740756e-006, -0.991996884, -0.126262501, -0.99999994, -7.79889524e-006, -3.15904617e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442927152, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.79469681, 3.78919983, -0.0124108791, 3.51667404e-006, -0.292187393, -0.956361234, 4.2617321e-006, -0.956361175, 0.292187423, -1.00000012, -5.10551035e-006, -2.17556953e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.690755665, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.59392571, 4.91576767, -0.0124466419, 1.81794167e-006, 0.173229605, -0.984881639, -2.36555934e-006, -0.98488158, -0.173229605, -1.00000012, 2.62912363e-006, -1.43051147e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.14352798, -0.599982738, -0.0124671459, -2.42888927e-006, -0.942429364, -0.334405482, 1.49011612e-007, -0.334405482, 0.942429423, -1.00000012, 2.23983079e-006, 8.94069672e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.18397903, 1.28430939, -0.0124082565, -1.1920929e-007, -0.755722106, -0.654892623, 2.32458115e-006, -0.654892504, 0.755722165, -1, -1.41281635e-006, 1.84774399e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.24739265, 1.04801846, -0.012463212, -2.62260437e-006, -0.731221795, -0.682139933, 1.69873238e-006, -0.682139933, 0.731221914, -1, 7.67409801e-007, 3.01003456e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08304858, 4.96604729, -0.01245749, -8.94069672e-008, 0.25617519, -0.966630459, -1.24424696e-006, -0.966630459, -0.25617522, -1.00000012, 1.19674951e-006, 3.87430191e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012377739, 4.66283989, 2.71644354, 1, 9.31322575e-010, 2.98023224e-008, -2.32830644e-009, -0.99861896, -0.0525392853, 2.98023224e-008, 0.0525392815, -0.99861896))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.1488266, 5.166605, -0.0124236345, 2.29477882e-006, 0.1078218, -0.994170368, 3.17394733e-006, -0.994170368, -0.107821807, -1, -2.91317701e-006, -2.71201134e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.83663559, -1.35993695, 0.0123702288, -6.80983067e-006, 0.973539948, 0.228517458, 1.16229057e-006, -0.228517413, 0.973539889, 1, 6.90948218e-006, 3.87430191e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.39234161, 0.551767349, 0.0124551058, 4.2617321e-006, 0.846065879, 0.533078492, -2.62260437e-006, -0.533078492, 0.846065998, 1, -4.97978181e-006, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.577682495, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442927152, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.35511971, -5.68471909, 0.0123487711, -1.08778477e-006, 0.842072368, -0.539364934, -1.23679638e-005, 0.539364874, 0.842072368, 1.00000012, 7.58469105e-006, 9.86456871e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.690755665, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00541305542, -6.85400581, 0.0124405622, -2.62260437e-006, 0.43094191, -0.902379811, -2.69711018e-006, 0.902379751, 0.430941939, 1.00000012, 3.55485827e-006, -1.16229057e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.23765182, -6.64039803, 0.0124570131, -4.97698784e-006, 0.620375931, -0.784304798, -5.81145287e-007, 0.784304678, 0.620375991, 1.00000012, 3.54927033e-006, -3.48687172e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.995017111, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.9072361, -2.94180298, 0.0123705864, -5.48548996e-006, 0.999955654, -0.00943010673, -1.66893005e-006, 0.009430103, 0.999955654, 1, 5.49387187e-006, 1.69873238e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.98216057, -4.38162136, 0.0124686956, -2.48849392e-006, 0.975760341, -0.218842447, 7.39097595e-006, 0.218842417, 0.9757604, 1, 8.05594027e-007, -7.77840614e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.72505379, -0.493100643, 0.0123679638, 2.48849392e-006, 0.934616506, 0.355657458, 2.38418579e-007, -0.355657429, 0.934616506, 1.00000012, -2.24169344e-006, -1.07288361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124542713, -6.6851635, -0.761851311, -1, -9.31322575e-010, -2.98023224e-008, -2.98023224e-008, 0.7948457, 0.606811821, 2.98023224e-008, 0.606811762, -0.794845819))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.469934464, -6.83503723, 0.0124577284, -4.85777855e-006, 0.355669737, -0.934611797, 1.11758709e-006, 0.934611797, 0.355669737, 1.00000024, 6.90110028e-007, -4.94718552e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.71549225, -4.37332058, 0.0124810934, -2.20537186e-006, 0.955562174, -0.294789881, 1.4603138e-006, 0.294789851, 0.955562234, 1.00000012, 1.68010592e-006, -2.02655792e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.482814789, -6.77018547, 0.0123841763, 2.98023224e-008, 0.5059551, -0.862559974, 1.83284283e-006, 0.862559855, 0.5059551, 1, -1.61398202e-006, -8.64267349e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.312360466, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.62691879, 0.218387604, 0.0123888254, -1.10268593e-006, 0.876807868, 0.4808411, -6.2584877e-007, -0.480841041, 0.876807809, 1, 6.70552254e-007, 1.04308128e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.53740025, 4.2335453, -0.0124584436, -3.36766243e-006, -0.186378986, -0.982478082, -6.92158937e-006, -0.982478023, 0.186379001, -1, 7.44313002e-006, 1.9967556e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.1115427, -6.39463806, 0.0124183893, -4.67896461e-006, 0.727487087, -0.686121464, 4.76837158e-006, 0.686121464, 0.727487206, 1.00000012, 1.15483999e-007, -6.67572021e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.13935089, -5.12873268, 0.0124028921, -2.9951334e-006, 0.922937214, -0.384950757, -6.19888306e-006, 0.384950817, 0.922937274, 1.00000012, 5.13996929e-006, 4.529953e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.42533493, -1.74360991, 0.0124077797, 4.13507223e-006, 0.984956205, 0.172804803, -1.1920929e-007, -0.172804788, 0.984956264, 1, -4.06894833e-006, -5.36441803e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.30986324, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709970474, -6.72587013, 0.0124292374, 3.36766243e-006, 0.54634881, -0.837557912, 3.75509262e-006, 0.837557852, 0.54634881, 1, -4.96581197e-006, 7.74860382e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.68152428, -3.58169651, 0.012426734, 4.19467688e-006, 0.998938203, -0.0460714288, -1.78813934e-007, 0.0460714176, 0.998938262, 1, -4.17139381e-006, 3.87430191e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.18662453, -5.97419167, 0.012272954, -1.08778477e-006, 0.842072368, -0.539364934, -1.23679638e-005, 0.539364874, 0.842072368, 1.00000012, 7.58469105e-006, 9.86456871e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.84785271, -0.836179256, 0.0124622583, -3.27825546e-006, 0.949111998, 0.314938843, -5.81145287e-006, -0.314938873, 0.949112177, 1.00000012, 1.27591193e-006, 6.58631325e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.306739569, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.82973957, -8.07273483, -0.0124541521, 0, -0.171641514, 0.985159636, 3.25590372e-006, 0.985159576, 0.171641529, -1, 3.19816172e-006, 5.36441803e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.67591476, -4.24145889, -0.0123918056, -1.29267573e-006, -0.997424066, 0.0717320144, 1.13248825e-006, 0.071732007, 0.997424126, -1.00000012, 1.35786831e-006, 9.53674316e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.70092535, -8.46707535, -0.0123229027, -7.4505806e-007, -0.403767049, 0.914861917, 1.22189522e-006, 0.914861858, 0.403767079, -1, 1.40722841e-006, -2.08616257e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.902500391, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.583364487, 5.84235191, -0.0123784542, 4.67896461e-006, 0.379853219, -0.925046921, 3.01003456e-006, -0.925046802, -0.379853249, -1, -9.9465251e-007, -5.48362732e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.314234972))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124008656, -7.11424255, 4.9410615, -1, -9.31322575e-010, -2.98023224e-008, 0, 0.997992933, -0.0633271337, 2.98023224e-008, -0.0633271337, -0.997992992))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.02641666, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.92596817, -0.557345867, 0.0124436617, 1.04308128e-007, 0.929162383, 0.369672, -2.8014183e-006, -0.369671971, 0.929162502, 1, -1.12690032e-006, 2.59280205e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.859332979, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.87015724, -1.92472219, 0.0124121904, -1.92597508e-006, 0.990908086, 0.134540886, 1.96695328e-006, -0.134540886, 0.990908265, 1, 2.18488276e-006, -1.66893005e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0793828964, 6.1699295, -0.0124224424, -2.38418579e-007, 0.4789671, -0.877833009, 1.98185444e-006, -0.877833009, -0.47896719, -1, -1.87940896e-006, -8.04662704e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.93376064, -7.95858002, -0.0124492645, 1.01625919e-005, -0.609050155, 0.793131888, 7.13765621e-006, 0.793131709, 0.609050155, -1, -5.39235771e-007, 1.23977661e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.30833054, 1.4731884, 0.012404561, 1.8030405e-006, 0.772073984, 0.635532916, -2.08616257e-007, -0.635532856, 0.772073984, 1, -1.52364373e-006, -8.94069672e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.631133437, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.72109604, -2.86986399, 0.0124473572, 3.07708979e-006, 0.999934733, -0.0114370957, -1.4603138e-006, 0.011437092, 0.999934673, 1.00000012, -3.04915011e-006, 1.54972076e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.842000008, 6.26024246, -0.0123820305, -2.11596489e-006, 0.582869411, -0.812565982, 5.17070293e-006, -0.812565982, -0.58286953, -1, -5.45289367e-006, -1.31130219e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.1800046, -7.58333206, -0.0123945475, 4.85777855e-006, 0.0112840943, 0.999936461, -2.39163637e-006, 0.999936402, -0.0112841055, -1, -2.34600157e-006, 4.85777855e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.797658324, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.82966042, -0.212073326, 0.012460947, 4.30643559e-006, 0.910114884, 0.414356291, 4.85777855e-006, -0.414356202, 0.910114944, 1.00000012, -1.93435699e-006, -6.22868538e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.625973761, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.09753799, -5.85924816, -0.0123647451, 5.42402267e-006, -0.943217158, 0.332177281, 1.57952309e-006, 0.332177281, 0.943217218, -1, -4.58117574e-006, 3.24845314e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.15855694, -5.89980125, -0.0124604702, 5.06639481e-007, 0.279702336, 0.960086942, 8.53836536e-006, 0.960086763, -0.279702306, -1.00000012, 8.3129853e-006, -1.90734863e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425552726, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012399435, -6.61434937, -4.27661896, 1, 9.31322575e-010, 2.98023224e-008, -7.4505806e-009, 0.971834004, -0.23566705, 0, 0.23566699, 0.971834004))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.372101963))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.69397354, -6.68747139, -0.0124177933, -1.57952309e-006, 0.232898846, 0.972501099, -5.15580177e-006, 0.97250104, -0.232898891, -1.00000012, -5.3755939e-006, -3.57627869e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.72570467, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.43788052, -6.61497688, -0.0130097866, -5.96046448e-007, 0.235660866, 0.971835494, -2.80886889e-006, 0.971835434, -0.235660896, -1, -2.87406147e-006, 2.98023224e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.698975265, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.3148365, -5.77429962, -0.0123636723, -6.55651093e-007, 0.427585095, 0.903975189, 1.1920929e-007, 0.903975129, -0.427585155, -1.00000012, -2.03959644e-007, -7.15255737e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.894281864, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.18676567, -8.14131737, -0.0124477148, 1.49011612e-006, -0.675514579, 0.737346768, 4.47034836e-007, 0.737346768, 0.675514638, -1.00000012, -7.03148544e-007, 1.34110451e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.84905386, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0251922607, -8.16058731, -0.0123630762, 6.13927841e-006, -0.426813871, 0.904339612, -2.92062759e-006, 0.904339552, 0.42681393, -1.00000012, -5.24427742e-006, 4.29153442e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.371710896, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.97206879, -7.63444519, -0.0123918056, 2.98023224e-007, 0.0750137344, 0.997182608, -4.51877713e-006, 0.997182548, -0.0750137419, -1, -4.50294465e-006, 6.2584877e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.88924885, -5.35118866, -0.0123964548, 2.98023224e-006, 0.466492444, 0.884525299, -2.23517418e-006, 0.884525299, -0.466492414, -1.00000012, -6.13741577e-007, 3.63588333e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.05826855, -5.30291748, -0.0123964548, 2.98023224e-006, 0.466492444, 0.884525299, -2.23517418e-006, 0.884525299, -0.466492414, -1.00000012, -6.13741577e-007, 3.63588333e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.22380447, -4.34202385, -0.0125494003, 8.31484795e-006, 0.606002331, 0.795463085, 6.70552254e-006, 0.795463085, -0.606002331, -1, 1.03870407e-005, 2.5331974e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.865495801, 0.91895175, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.89645433, -7.59931183, -0.0123687983, 3.78489494e-006, -0.0478703827, 0.998853683, -2.87545845e-006, 0.998853624, 0.0478703901, -1.00000012, -3.04635614e-006, 3.63588333e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.435831726, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.31745195, -7.64817429, -0.0123722553, -3.24845314e-006, 0.0958108306, 0.995399714, -4.69386578e-007, 0.995399714, -0.0958108455, -1, -7.93486834e-007, -3.21865082e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0124056339, 7.74256706, 4.31463337, 1, 9.31322575e-010, 2.98023224e-008, 0, -0.997303724, 0.0733852834, 2.98023224e-008, -0.0733852759, -0.997303843))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.1957233, -7.8809948, -0.0124447346, -1.49011612e-007, -0.178631634, 0.983916223, 6.30319118e-006, 0.983916044, 0.178631604, -1, 6.24451786e-006, 9.53674316e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.563291848, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.610980272, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.13065338, 4.25327206, -0.0123443604, -4.46289778e-006, 0.987035215, -0.160504252, -4.20212746e-006, -0.160504252, -0.987035215, -1.00000012, -3.73087823e-006, 4.82797623e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.84365082, -1.74910927, -0.0124725103, -3.06963921e-006, 0.840126693, 0.542390347, 2.05636024e-006, 0.542390287, -0.840126693, -1, -1.44448131e-006, -3.42726707e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.39919883, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.40384007, -6.64075089, -0.0124322176, -3.30805779e-006, 0.27963084, 0.960107803, -2.08616257e-006, 0.960107565, -0.27963087, -1, -2.9001385e-006, -2.62260437e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.31827831, -8.08870697, -0.0123972893, -2.08616257e-006, -0.0190111417, 0.999819458, -1.30292028e-006, 0.999819338, 0.0190111343, -1, -1.25914812e-006, -2.11596489e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0785245895, -8.20646667, -0.012439847, 1.96695328e-006, -0.386334896, 0.922358692, 1.28149986e-006, 0.922358632, 0.386334926, -1.00000012, 3.94880772e-007, 2.29477882e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.89162683, -6.89408112, -0.012381196, -9.23871994e-007, 0.103448384, 0.994634926, -4.79444861e-006, 0.994634926, -0.103448391, -1, -4.87267971e-006, -5.06639481e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425552726, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.14910126, 5.4743576, -0.0124185085, -9.03010368e-006, 0.928788602, -0.370610178, -8.91089439e-006, -0.370610088, -0.928788662, -1.00000012, -5.09433448e-006, 1.15633011e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.555377007, 0.489159018, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.27796745, -7.32583809, -0.0124053955, -3.71038914e-006, -0.82045418, 0.571712315, -5.06639481e-007, 0.571712255, 0.820454359, -1, 2.74460763e-006, -2.59280205e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.462918222, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.98637867, -7.31378937, -0.0124305487, 4.44054604e-006, 0.01606193, 0.999871135, -2.21282244e-006, 0.999871075, -0.0160619318, -1, -2.13924795e-006, 4.47034836e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.651695132, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.76573563, -1.15565825, -0.0123617649, 1.84029341e-006, -0.955100715, -0.296281546, 4.82797623e-006, -0.296281546, 0.955100834, -0.99999994, -3.21678817e-006, 4.02331352e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.423496842, 0.34948948, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.87141895, -7.95366669, -0.0124652386, 5.57303429e-006, -0.611625433, 0.79114759, 3.59117985e-006, 0.79114759, 0.611625493, -1, -5.61587512e-007, 6.61611557e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.25064182, -6.16825867, -0.0124402046, -7.15255737e-007, 0.326607227, 0.94516027, 1.63912773e-007, 0.94516021, -0.326607227, -1, -9.03382897e-008, -7.4505806e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.58195877, 5.0184164, -0.0124089718, 5.4766424e-006, 0.998726666, 0.0504499488, 2.62260437e-006, 0.050449945, -0.998726726, -1.00000012, 5.58141619e-006, -2.35438347e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.47858238, 7.48288536, -0.0124218464, -2.08616257e-007, 0.700928152, -0.7132321, -2.44379044e-006, -0.713231981, -0.700928211, -1, 1.60839409e-006, 1.81794167e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.465419531, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.64420795, -5.82843399, -0.0124995708, 2.11596489e-006, 0.215032697, 0.976606965, 1.15334988e-005, 0.976606905, -0.215032712, -1, 1.17011368e-005, -5.06639481e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.54433823, 9.49985504, 0.0124326944, 2.95042992e-006, -0.779402435, 0.626523733, -1.1920929e-007, -0.626523733, -0.779402494, 1, 2.22865492e-006, -1.93715096e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0124268532, -9.0647831, 1.13609791, 1, 9.31322575e-010, 2.98023224e-008, 4.47034836e-008, 0.76959753, 0.638529539, 2.98023224e-008, -0.63852948, 0.76959753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.703090549, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.64983892, 7.71139908, 0.0123925209, 2.08616257e-007, -0.0897430107, 0.995965183, 2.08429992e-006, -0.995965064, -0.0897430182, 1, 2.11969018e-006, 2.98023224e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.22794628, -8.88949776, -0.0124409199, -7.15255737e-006, -0.33680135, 0.941575885, 6.37769699e-006, 0.941575825, 0.33680138, -1.00000012, 8.40704888e-006, -4.61935997e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.47561455, 0.522540092, -0.0124415159, 2.98023224e-007, 0.751642764, 0.659570575, -3.90410423e-006, 0.659570515, -0.751642823, -1, -2.35438347e-006, 3.12924385e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.49715042, -2.99858284, -0.0124619007, -1.04308128e-006, 0.556182802, 0.831060112, 5.78165054e-006, 0.831060052, -0.556182802, -1, 4.21516597e-006, -4.14252281e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.378582865, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.06608486, 6.59542274, -0.0123897791, 3.30805779e-006, -0.27963084, -0.960107803, 2.08616257e-006, -0.960107565, 0.27963087, -1, -2.9001385e-006, -2.62260437e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.3379758, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48453617, 7.50985718, -0.0123999119, -2.98023224e-007, -0.0750137344, -0.997182608, 4.51877713e-006, -0.997182548, 0.0750137419, -1, -4.50294465e-006, 6.2584877e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.337351084, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.14958954, 5.7258358, -0.0123884678, 6.55651093e-007, -0.427585095, -0.903975189, -1.1920929e-007, -0.903975129, 0.427585155, -1.00000012, -2.03959644e-007, -7.15255737e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45788527, 7.54204178, -0.0123348236, 3.24845314e-006, -0.0958108306, -0.995399714, 4.69386578e-007, -0.995399714, 0.0958108455, -1, -7.93486834e-007, -3.21865082e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.66314745, 7.89317322, -0.012389183, 2.08616257e-006, 0.0190111417, -0.999819458, 1.30292028e-006, -0.999819338, -0.0190111343, -1, -1.25914812e-006, -2.11596489e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.91073799, 1.83064604, -0.0124624968, 6.2584877e-006, 0.991020441, 0.133711144, -9.47713852e-006, 0.133711144, -0.991020501, -1, 4.93228436e-006, 1.02519989e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.82232815, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.616891861, -9.12784958, -0.012477994, -3.93390656e-006, -0.505513191, 0.862819076, 3.81469727e-006, 0.862818956, 0.505513191, -0.99999994, 5.26383519e-006, -1.49011612e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.417329341, 0.688699841, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.97537041, -8.60717583, -0.0123602152, 4.17232513e-007, -0.831052423, 0.556194425, 5.9902668e-006, 0.556194425, 0.831052482, -1, 2.96346843e-006, 5.15580177e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.361269, -9.01034927, -0.0123237371, 3.42726707e-006, -0.693719685, 0.720245361, -3.66568565e-006, 0.720245302, 0.693719685, -1, -5.078502e-006, -8.94069672e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.618584633, -9.13639069, -0.0123800039, -2.86102295e-006, -0.625212729, 0.780454516, 1.68383121e-006, 0.780454397, 0.625212789, -1, 3.10130417e-006, -1.22189522e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.651695132, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.35758209, -8.82512856, -0.0124720335, -1.57952309e-006, -0.782770157, 0.622311115, 6.85453415e-007, 0.622311115, 0.782770157, -1.00000012, 1.6624108e-006, -5.06639481e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442927152, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.33707428, 8.04130936, -0.0124183893, 3.33786011e-006, 0.913028002, -0.407897234, 3.1888485e-006, -0.407897174, -0.913027942, -1, 1.76671892e-006, -4.32133675e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.690755665, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.75658226, -2.54897118, -0.0123466253, -5.48362732e-006, 0.647025764, 0.762468338, -4.70876694e-006, 0.762468338, -0.647025764, -1.00000012, -7.13486224e-006, -1.13248825e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.69245434, -4.53863144, -0.0123913288, 0, 0.389273435, 0.921122313, -4.30643559e-006, 0.921122313, -0.389273465, -1, -3.98140401e-006, 1.63912773e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.54350853, 3.82491374, -0.012398243, -1.02818012e-006, 0.954754531, 0.29739511, 2.62260437e-006, 0.29739508, -0.954754591, -1, -1.92783773e-007, -2.86102295e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.62100601, 6.91154766, -0.0123926401, 3.42726707e-007, 0.972818494, -0.231569216, 5.06639481e-007, -0.231569201, -0.972818613, -1, 2.1699816e-007, -5.96046448e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.69359589, -8.93382263, -0.0124323368, 3.1888485e-006, -0.727139175, 0.686490178, 1.4603138e-006, 0.686490178, 0.727139175, -1.00000012, -1.31223351e-006, 3.24845314e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.58927345, 5.22962189, -0.0123515129, -5.88595867e-007, 0.995919764, 0.0902439356, 3.63588333e-006, 0.0902439281, -0.995919824, -1.00000012, -2.56113708e-007, -3.75509262e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.72285843, 8.55933762, -0.0123987198, 1.04308128e-006, 0.828324139, -0.560249329, -6.2584877e-007, -0.560249209, -0.828324199, -1, 1.19581819e-006, -1.1920929e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.331233025, 8.79639626, -0.012430191, -1.90734863e-006, 0.586747944, -0.809769869, -1.59442425e-006, -0.80976975, -0.586748004, -1.00000012, 1.73225999e-007, 2.47359276e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.47504234, 0.70892334, 0.0124496222, 2.65240669e-006, 0.639092922, 0.769129634, 2.2649765e-006, -0.769129694, 0.639093041, 1, 3.63215804e-008, -3.4570694e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.06840706, 4.28975344, -0.012471199, 5.05521894e-006, 0.990844607, 0.135007799, -8.34465027e-007, 0.135007799, -0.990844727, -1, 4.88571823e-006, 1.49011612e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.88159561, 9.51120186, 0.0124547482, 5.453825e-006, -0.535460114, 0.844560683, -3.4570694e-006, -0.844560683, -0.535460174, 1, -2.51457095e-008, -6.43730164e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.631133437, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.30986324, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.22991943, 5.38665295, -0.0124462843, 4.54951078e-006, 0.999995708, 0.00295178592, -6.43730164e-006, 0.00295179896, -0.999995708, -1.00000012, 4.53181565e-006, 6.40749931e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.4111619, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.21022701, 8.85255051, -0.012406826, 3.01003456e-006, 0.718451083, -0.695577681, -2.68220901e-006, -0.695577621, -0.718451142, -1, 3.99444252e-006, -2.38418579e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.72079873, 8.46546555, -0.0124007463, -5.06639481e-006, 0.215623155, -0.976476848, 2.60025263e-006, -0.976476729, -0.215623155, -1, -3.62005085e-006, 4.35113907e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.42160988, 7.80697632, 0.0124282837, 1.69873238e-006, -0.106693968, 0.99429214, -2.52574682e-006, -0.994291961, -0.106693976, 1.00000012, -2.32178718e-006, -1.90734863e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.381706476, 0.612851977))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124661922, -4.66656208, -7.32717133, -1, -9.31322575e-010, -2.98023224e-008, -2.98023224e-008, -0.103265941, 0.99465394, 5.58793545e-009, 0.994653881, 0.103265971))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.14109468, 9.02606583, -0.012321353, -2.29477882e-006, 0.396123052, -0.918197691, 9.68575478e-007, -0.918197513, -0.396123111, -1, -1.81235373e-006, 1.69873238e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.28608131, 3.37460899, -0.0123641491, 1.48266554e-006, 0.96618259, 0.257859111, -4.91738319e-006, 0.257859141, -0.966182709, -1.00000012, 1.5553087e-007, 5.09619713e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.995017111, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.97079277, 9.57641983, 0.0124573708, 4.88758087e-006, -0.597815275, 0.801634073, -1.84774399e-006, -0.801634014, -0.597815275, 1, 1.4482066e-006, -5.03659248e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.00013161, 5.87493801, -0.0123436451, -4.47966158e-006, 0.999878228, -0.0156121962, 1.7285347e-006, -0.0156121887, -0.999878287, -1, -4.51784581e-006, -1.63912773e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.1684742, 7.75181961, -0.0123964548, 3.33786011e-006, 0.913028002, -0.407897234, 3.1888485e-006, -0.407897174, -0.913027942, -1, 1.76671892e-006, -4.32133675e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.56098366, -5.20720196, 0.0124682188, 0, 0.971340418, 0.237692848, -5.06639481e-007, -0.237692848, 0.971340597, 1.00000012, -1.03376806e-007, 5.06639481e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.312360466, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.77252674, 8.93952942, 0.0123962164, 2.98023224e-007, -0.369027764, 0.929418564, 9.38773155e-007, -0.929418504, -0.369027734, 1, 9.68575478e-007, 1.1920929e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442927152, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.64343071, 0.998405457, 0.0124644041, 2.65240669e-006, 0.639092922, 0.769129634, 2.2649765e-006, -0.769129694, 0.639093041, 1, 3.63215804e-008, -3.4570694e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.690755665, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.00873184, 7.57557297, -0.012417078, 1.37090683e-006, 0.951991618, -0.306124121, -8.94069672e-008, -0.306124121, -0.951991677, -0.99999994, 1.31409615e-006, -4.17232513e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.55500412, 9.20760727, -0.0124486685, 3.01003456e-006, 0.556687534, -0.830722094, -3.20374966e-006, -0.830722034, -0.556687593, -1.00000012, 4.28128988e-006, -7.74860382e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.17170525, 2.54467583, 0.0125129223, 9.59634781e-006, 0.495837033, 0.868415654, 2.32458115e-006, -0.868415773, 0.495837092, 1, -2.71759927e-006, -9.4473362e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.52977753, -0.993115425, 0.012373209, -2.22027302e-006, 0.770598888, 0.637320459, 1.1920929e-007, -0.63732034, 0.770599008, 1.00000012, 1.82539225e-006, 1.37090683e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.53191996, 7.43219757, 0.0124230385, 1.10268593e-006, -0.0500130504, 0.99874872, 3.71877104e-006, -0.998748541, -0.0500130467, 1, 3.76347452e-006, -8.64267349e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.36040115, -2.37100792, 0.0123957396, -1.28149986e-006, 0.854827344, 0.518912733, 2.08616257e-006, -0.518912733, 0.854827404, 1.00000012, 2.21095979e-006, -1.07288361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.995017111, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124504566, -2.5559392, -8.9566803, -1, -9.31322575e-010, -2.98023224e-008, 0, -0.50414896, 0.863616884, 1.49011612e-008, 0.863616824, 0.50414902))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.01478958, 9.08397484, 0.012527585, 3.66568565e-006, -0.424664617, 0.905350924, -6.07967377e-006, -0.905350864, -0.424664617, 1, -3.96370888e-006, -5.87105751e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.577682495, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.30986324, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.18787384, -3.21405029, 0.0124059916, 0, 0.898539186, 0.438893557, -1.22189522e-006, -0.438893497, 0.898539186, 1, -5.41098416e-007, 1.16229057e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.48851013, 3.61080599, -0.0123833418, -1.06543303e-006, 0.976477563, 0.215619519, 1.9967556e-006, 0.215619519, -0.976477683, -1, -6.21192157e-007, -2.20537186e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.11785889, -3.66511154, 0.0123492479, -3.56137753e-006, 0.91837275, 0.395716757, 1.37090683e-006, -0.395716697, 0.91837281, 1, 3.82959843e-006, 1.78813934e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.40204239, 3.98039126, -0.0124945641, 3.17394733e-006, 0.964835644, 0.26285398, -4.55975533e-006, 0.26285392, -0.964835763, -1.00000012, 1.88220292e-006, 5.1856041e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.584117293, 1.35127306))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000129342079, 1.61694145, -0.0357398987, 1, 9.31322575e-010, 2.98023224e-008, 2.98023224e-008, 0.763961971, 0.645261526, 0, -0.645261347, 0.763961971))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.402938634, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.925211728, 0.303880751, 0.775279582))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.88882256, 0.00694584846, 0.496741295, -9.23871994e-007, -0.938580275, -0.345061302, -1, 3.84449959e-006, -7.74860382e-006, 8.58306885e-006, 0.345061272, -0.938580275))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.822326362, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.33189917, 7.24006271, 0.0123641491, 2.74181366e-006, -0.0113064758, 0.999936223, 8.98167491e-006, -0.999936104, -0.0113064796, 1, 9.01240855e-006, -2.56299973e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.61201477, 8.25652885, 0.0123410225, -4.94718552e-006, -0.19547148, 0.980709612, 2.97278166e-006, -0.980709434, -0.195471466, 1.00000024, 1.94087625e-006, 5.48362732e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.63235092, -8.9120636, -0.0123169422, 1.01327896e-006, -0.700181067, 0.713965535, -3.9935112e-006, 0.713965476, 0.700181127, -1, -3.55765224e-006, -2.08616257e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.828491092, 0.448168874, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.68292189, 6.06110382, 0.0124514103, 2.98023224e-008, 0.132691443, 0.991157472, -1.0535121e-005, -0.991157532, 0.132691458, 1, -1.04522333e-005, 1.40070915e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.35820007, -8.44464302, -0.0124901533, -2.05636024e-006, -0.836257219, 0.548337579, 5.1856041e-006, 0.548337579, 0.836257219, -1.00000012, 4.55230474e-006, 3.1888485e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.5148077, 6.12951469, 0.0124428272, 5.03659248e-006, 0.134670675, 0.990890622, 2.98768282e-006, -0.990890503, 0.134670675, 1.00000012, 2.26404518e-006, -5.42402267e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.60551453, 4.04919052, 0.0124051571, 4.47034836e-006, 0.337500453, 0.941325545, -7.4505806e-007, -0.941325426, 0.337500453, 1, -2.20909715e-006, -3.93390656e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.78593445, 5.35013771, 0.0124458075, -2.05636024e-006, 0.168920875, 0.985629737, -9.521842e-006, -0.985629618, 0.168920875, 1, -9.0431422e-006, 3.66568565e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.613479257, 0.530388772))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00216829777, 1.60542488, -0.446207047, 1, 9.31322575e-010, 2.98023224e-008, 2.98023224e-008, 0.763961971, 0.645261526, 0, -0.645261347, 0.763961971))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.464612961, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1.06389976, 0.303880751, 0.953325272))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.88303947, 0.00533628464, 0.499017715, -9.23871994e-007, -0.938580275, -0.345061302, -1, 3.84449959e-006, -7.74860382e-006, 8.58306885e-006, 0.345061272, -0.938580275))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791489005, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.63115978, 8.69702911, 0.0124151707, -7.15255737e-007, -0.298950404, 0.954268754, -6.66081905e-006, -0.954268694, -0.298950434, 1, -6.56861812e-006, -1.25169754e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.98981667, 3.74680901, 0.0124559402, 8.34465027e-007, 0.41038534, 0.911912322, -1.71363354e-006, -0.911912262, 0.41038543, 1, -1.90641731e-006, -2.98023224e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.925211728, 0.303880751, 0.883356452))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.88364029, 0.00570595264, 0.507435322, -9.23871994e-007, -0.938580275, -0.345061302, -1, 3.84449959e-006, -7.74860382e-006, 8.58306885e-006, 0.345061272, -0.938580275))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.805879831, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.22445309, 0.303880751, 1.03141534))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.88776588, 0.00442397594, 0.493520737, -9.23871994e-007, -0.938580275, -0.345061302, -1, 3.84449959e-006, -7.74860382e-006, 8.58306885e-006, 0.345061272, -0.938580275))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.75654006, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.09722996, 8.53791046, 0.0124241114, -4.47034836e-007, -0.237693429, 0.971340418, -1.32620335e-006, -0.971340299, -0.237693444, 1, -1.40629709e-006, 1.78813934e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.88349915, 0.0475447178, 0.510303497, -9.23871994e-007, -0.938580275, -0.345061302, -1, 3.84449959e-006, -7.74860382e-006, 8.58306885e-006, 0.345061272, -0.938580275))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15622711, 2.37688398, -0.0124032497, -1.63912773e-006, 0.878245175, 0.478210807, -1.1920929e-007, 0.478210807, -0.878245175, -1.00000012, -1.47800893e-006, -7.15255737e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.88346672, 0.0356097221, 0.50301075, 9.23871994e-007, 0.938580275, 0.345061302, 1, -3.84449959e-006, 7.74860382e-006, 8.58306885e-006, 0.345061272, -0.938580275))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.729050159))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.88351822, 0.00690209866, 0.502803802, -9.23871994e-007, -0.938580275, -0.345061302, -1, 3.84449959e-006, -7.74860382e-006, 8.58306885e-006, 0.345061272, -0.938580275))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.8963359, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.86197662, -4.49286509, 0.0124866962, 1.55717134e-006, 0.948640823, 0.316355437, 2.83122063e-006, -0.316355437, 0.948640823, 1.00000012, -5.76488674e-007, -3.15904617e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.02641666, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.16265678, 8.4480381, 0.0124237537, -3.30805779e-006, -0.252261728, 0.967659116, -7.35372305e-006, -0.967659175, -0.252261758, 0.99999994, -7.93952495e-006, 1.43051147e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.859332979, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.80660248, 3.33404922, -0.0124056339, -1.1920929e-006, 0.930201769, 0.367049038, 5.27501106e-006, 0.367048979, -0.930201709, -1, 7.89761543e-007, -5.33461571e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30747318, 2.64245224, -0.012393117, 5.96046448e-006, -0.488113314, -0.872780442, -1.66893005e-006, -0.872780323, 0.488113314, -1, -1.4482066e-006, -6.04987144e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.4510231, -0.0976567268, -0.0124176741, -1.2665987e-006, -0.923106849, -0.384543657, -7.4505806e-007, -0.384543717, 0.923106909, -1, 1.46776438e-006, -2.38418579e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.797658324, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.14565659, 1.50657845, -0.0124570131, -1.25169754e-006, -0.681016982, -0.732267797, -2.98023224e-007, -0.732267678, 0.681017041, -1.00000012, 1.08219683e-006, 7.15255737e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.902500391, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.70146656, 3.80838585, -0.0124223232, -7.03334808e-006, 0.649408579, -0.760439754, 1.1920929e-006, -0.760439694, -0.649408638, -1.00000012, -5.49852848e-006, 4.529953e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.423496842, 0.34948948, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.625973761, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.46269989, 3.77336502, -0.0124334097, 1.13248825e-006, 0.0673523992, -0.997729421, 2.6319176e-006, -0.997729301, -0.0673523992, -1, -2.54344195e-006, -1.31130219e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.40796852, -1.08182383, -0.012414813, -2.05263495e-006, -0.985424519, -0.170113504, -3.87430191e-007, -0.170113489, 0.985424638, -1.00000012, 2.07405537e-006, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.72570467, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.95655823, 1.69236374, -0.0124281645, 3.09944153e-006, -0.694795132, -0.719208002, -3.27825546e-007, -0.719207823, 0.694795132, -1.00000012, -1.94087625e-006, -2.50339508e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.371710896, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.12077522, -0.650505066, -0.0123358965, 3.11434269e-006, -0.945743263, -0.324915111, 6.34789467e-006, -0.324915141, 0.945743382, -1, -5.03286719e-006, 4.97698784e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.6178093, 1.90730476, -0.0123900175, 1.01327896e-006, -0.662241518, -0.749290586, -1.20103359e-005, -0.749290586, 0.662241638, -1.00000012, 8.34371895e-006, -8.76188278e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.665346622, 3.82830429, -0.0124576092, 1.07288361e-006, 0.3280316, -0.944666862, 6.61611557e-006, -0.944666862, -0.328031719, -1.00000012, -5.90272248e-006, -3.24845314e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.555377007, 0.489159018, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38015747, 3.19402695, -0.0124226809, -1.57952309e-006, -0.201190203, -0.979552269, -4.51505184e-006, -0.979552269, 0.201190233, -1.00000012, 4.72553074e-006, 6.55651093e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.306739569, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.3047657, 0.68157959, -0.012436986, 1.90734863e-006, -0.837275863, -0.546780705, 2.38418579e-007, -0.546780646, 0.837275982, -1.00000012, -1.72760338e-006, -8.64267349e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.21055508, 2.65183258, -0.012362361, 7.27176666e-006, -0.485267073, -0.874366164, 2.98023224e-006, -0.874366045, 0.485267103, -1, -6.13555312e-006, -4.91738319e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.36712265, -2.89227295, -0.0124777555, 1.34110451e-006, -0.970131874, 0.242578447, -3.42726707e-006, 0.242578417, 0.970131993, -1, -2.1411106e-006, -3.06963921e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.865495801, 0.91895175, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.27848434, 0.324667454, -0.0124431849, -2.35438347e-006, -0.898739994, -0.438482165, 1.69873238e-006, -0.438482136, 0.898739994, -1, 1.40909106e-006, 2.50339508e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.435831726, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.0825119, -0.375244141, -0.0123827457, 1.63912773e-007, -0.9110291, -0.41234231, -1.4603138e-006, -0.41234228, 0.9110291, -1.00000012, 4.7404319e-007, -1.43051147e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.462918222, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.68038368, 0.135315895, -0.0124760866, 3.47197056e-006, -0.924929917, -0.38013792, -5.54323196e-006, -0.380137891, 0.924929976, -1.00000012, -1.13900751e-006, -6.46710396e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.651695132, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.8764801, 0.916539192, -0.012409091, 3.08454037e-006, -0.833379686, -0.552701056, 4.14252281e-006, -0.552700996, 0.833379745, -1, -4.87081707e-006, 1.7285347e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.563291848, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.39727402, -0.143970013, -0.0123485327, 4.03821468e-006, -0.95463258, -0.297786355, 3.78489494e-006, -0.297786325, 0.95463264, -1, -4.98630106e-006, 2.35438347e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425552726, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.91349936, -4.34042358, -0.0124154091, -7.51018524e-006, -0.0263487455, 0.999652982, 5.61214983e-006, 0.999652922, 0.0263487399, -1, 5.79562038e-006, -7.36117363e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.314234972))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124725103, -0.0358896255, -3.06936646, -1, -9.31322575e-010, -2.98023224e-008, 2.98023224e-008, -0.335983425, 0.941868126, 1.49011612e-008, 0.941867948, 0.335983396))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.63626957, 2.5389328, -0.0124809742, -7.4505806e-006, -0.410604477, -0.911813796, 6.28829002e-006, -0.911813617, 0.410604477, -1, -2.69524753e-006, 9.32812691e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.84905386, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.77891731, 0.728599072, -0.0124747753, -3.06963921e-006, 0.952321589, 0.30509609, -4.17232513e-006, 0.30509609, -0.952321708, -1.00000012, -4.22354788e-006, 3.06963921e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.91934395, -0.834661007, -0.0123691559, 3.06963921e-006, -0.952321589, -0.30509609, 4.17232513e-006, -0.30509609, 0.952321708, -1.00000012, -4.22354788e-006, 3.06963921e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.31751442, -2.17427158, -0.0123642683, 1.18277967e-005, -0.996857584, 0.0792153031, -2.98023224e-008, 0.0792152807, 0.996857643, -1.00000012, -1.17821619e-005, 8.94069672e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.613479257, 0.530388772))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0279704332, 1.69067955, -0.398958206, -1, -9.31322575e-010, -2.98023224e-008, 0, -0.867635906, 0.497200251, 0, 0.497200191, 0.867635965))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.464612961, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1.06389976, 0.303880751, 0.953325272))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.94705582, -0.0246984959, 0.425497055, -6.35534525e-006, 0.985364497, -0.170460999, 1, 5.09526581e-006, -7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791489005, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.14846992, -2.12600136, -0.012370944, 1.18277967e-005, -0.996857584, 0.0792153031, -2.98023224e-008, 0.0792152807, 0.996857643, -1.00000012, -1.17821619e-005, 8.94069672e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0124688148, -1.03451872, 4.84126854, 1, 9.31322575e-010, 2.98023224e-008, 0, -0.167324871, 0.985902011, 0, -0.985901952, -0.167324901))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.372101963))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0124373436, 0.745413303, -3.76678276, 1, 9.31322575e-010, 2.98023224e-008, -2.98023224e-008, 0.326452553, -0.945213735, 0, 0.945213616, 0.326452553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.20404625, -0.741251469, -0.012399435, -1.27404928e-006, -0.992502809, -0.122222356, 0, -0.122222356, 0.992502809, -1.00000012, 1.27032399e-006, 1.78813934e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425552726, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.61023521, -3.98210907, -0.0123903751, -7.59959221e-007, -0.830103159, 0.557610035, -2.68220901e-007, 0.557609916, 0.830103219, -1.00000012, 4.7404319e-007, -7.15255737e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.73768806, 0.179701328, -0.012488842, -1.63912773e-007, 0.9110291, 0.41234231, 1.4603138e-006, 0.41234228, -0.9110291, -1.00000012, 4.7404319e-007, -1.43051147e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.55379105, -3.20653534, -0.0124951601, 5.27501106e-006, 0.378423214, 0.925632834, 8.29994678e-006, 0.925632715, -0.378423214, -1, 9.7034499e-006, 1.69873238e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.39919883, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.95845795, -1.48155594, -0.0124835968, 3.20374966e-007, -0.992494106, -0.12229377, 2.62260437e-006, -0.12229377, 0.992494106, -1, -6.51925802e-007, 2.56299973e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.67996597, -1.03512263, -0.0130523443, -5.03659248e-006, -0.985902429, -0.167321905, 1.10268593e-006, -0.167321905, 0.985902548, -1, 4.77675349e-006, 1.87754631e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.698975265, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.337351084, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.90930557, 2.10810995, -0.0124698877, -7.13393092e-007, 0.99935919, -0.035796579, -3.39746475e-006, -0.0357965752, -0.99935925, -1.00000012, -6.08153641e-007, 3.42726707e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601743698, -4.63530731, -0.012381196, 8.04662704e-007, -0.514250815, 0.857639909, 1.04308128e-007, 0.857639909, 0.514250815, -1, -3.12924385e-007, 7.15255737e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.82232815, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.35455513, -1.4766109, -0.0123559237, 7.10040331e-006, -0.99731499, -0.073232621, -3.03983688e-006, -0.073232621, 0.997315168, -1, -6.88340515e-006, -3.60608101e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.610980272, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.868664026, -4.41020584, -0.0124304295, -2.23517418e-006, -0.242363006, 0.970185757, 8.00937414e-006, 0.970185757, 0.242363065, -1, 8.31484795e-006, -2.38418579e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.3379758, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.60827637, 0.52590704, -0.0123820305, -4.13507223e-006, 0.945742309, 0.324917793, -3.24845314e-006, 0.324917734, -0.945742369, -0.99999994, -4.99840826e-006, 1.7285347e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.74401665, -2.15664053, -0.0124138594, 7.13393092e-007, -0.99935919, 0.035796579, 3.39746475e-006, 0.0357965752, 0.99935925, -1.00000012, -6.08153641e-007, 3.42726707e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.894281864, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.378582865, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.29619789, 1.43620324, -0.0124497414, -3.20374966e-007, 0.992494106, 0.12229377, -2.62260437e-006, 0.12229377, -0.992494106, -1, -6.51925802e-007, 2.56299973e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.584117293, 1.35127306))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0301377773, 1.70227432, 0.0115089417, -1, -9.31322575e-010, -2.98023224e-008, 0, -0.867635906, 0.497200251, 0, 0.497200191, 0.867635965))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.402938634, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.925211728, 0.303880751, 0.883356452))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.94762802, -0.0244727135, 0.433888435, -6.35534525e-006, 0.985364497, -0.170460999, 1, 5.09526581e-006, -7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.805879831, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.925211728, 0.303880751, 0.775279582))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.95280457, -0.0231398344, 0.423213959, -6.35534525e-006, 0.985364497, -0.170460999, 1, 5.09526581e-006, -7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.822326362, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.22445309, 0.303880751, 1.03141534))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.9518261, -0.0256823301, 0.419935226, -6.35534525e-006, 0.985364497, -0.170460999, 1, 5.09526581e-006, -7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.75654006, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.94750214, 0.0656608343, 0.429433823, 6.35534525e-006, -0.985364497, 0.170460999, -1, -5.09526581e-006, 7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.729050159))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.94745827, -0.0231904984, 0.429235458, -6.35534525e-006, 0.985364497, -0.170460999, 1, 5.09526581e-006, -7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.8963359, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.036412, 0.625348926, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.94565392, -0.378432989, -0.0124008656, 6.5267086e-006, -0.963932097, -0.266148657, -1.07288361e-006, -0.266148627, 0.963932097, -1.00000012, -6.0191378e-006, -2.77161598e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57174683, 2.26583862, -0.0124828815, 2.05636024e-006, -0.69907254, -0.715050936, -1.28149986e-006, -0.715050936, 0.699072599, -1.00000012, -5.04776835e-007, -2.38418579e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.17317772, -4.64315987, -0.0124167204, -2.25007534e-006, -0.836956263, 0.547270119, -7.09295273e-006, 0.54727, 0.836956203, -1, -1.96043402e-006, -7.12275505e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.86062241, 1.13283443, -0.0124474764, -3.21865082e-006, -0.830038548, -0.557706177, 5.96046448e-008, -0.557706118, 0.830038667, -1.00000012, 2.63750553e-006, 1.81794167e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.94751167, 0.0174030066, 0.436732292, -6.35534525e-006, 0.985364497, -0.170460999, 1, 5.09526581e-006, -7.77840614e-006, -6.82473183e-006, -0.170461014, -0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.46318054, -1.84924364, -0.0124462843, 7.0668757e-006, -0.996107817, 0.0881434605, -8.94069672e-008, 0.088143453, 0.996107996, -1, -7.03521073e-006, 4.76837158e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.616746128, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.374834508, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.23727226, -0.713941336, -0.0125232935, 2.68220901e-007, -0.986459374, -0.164006144, 5.15580177e-006, -0.164006144, 0.986459494, -1, -1.09709799e-006, 5.00679016e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.401695579, 0.303880751, 0.422936529))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.67913437, -0.0124540329, 2.22441959, -2.53878534e-006, -0.999944627, -0.0105256755, -1, 2.50525773e-006, 3.51667404e-006, -3.54647636e-006, 0.0105256848, -0.999944806))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.411162108, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.6732769, -0.937924385, -0.012447834, -3.60235572e-006, -0.992367208, -0.123319417, 3.63588333e-006, -0.123319402, 0.992367148, -1.00000012, 3.12551856e-006, 3.9935112e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.307989061, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.895298, -1.28506327, -0.0124083757, 2.36579217e-006, -0.998968482, -0.0454101823, 1.96695328e-006, -0.0454101749, 0.998968542, -1, -2.45682895e-006, 1.81794167e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 1, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0117688179, 6.33996391, 1.98072243, -1, -9.31322575e-010, -2.98023224e-008, 2.98023224e-008, -0.855401278, -0.517966032, 2.98023224e-008, -0.517965913, 0.855401397))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.686644077, 0.923059404))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.4146862, -1.29838347, -0.0123431683, 4.01819125e-006, -0.999036074, -0.0439003967, 2.47359276e-006, -0.0439003929, 0.999036074, -1, -4.11085784e-006, 2.29477882e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.407942742, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.98859978, -1.74507999, -0.0124373436, 4.74974513e-008, -1, -5.41247427e-005, 7.7188015e-006, -5.41247427e-005, 1.00000024, -1, -3.44589353e-008, 7.65919685e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.67719078, -3.20908737, -0.0124408007, 2.35438347e-006, -0.969360113, 0.24564445, 5.54323196e-006, 0.24564448, 0.969360173, -1, -9.0803951e-007, 5.93066216e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.49962234, 0.215165138, -0.0123877525, 1.11758709e-006, -0.950351715, -0.31117782, 6.58631325e-006, -0.31117779, 0.950351834, -1, -3.11434269e-006, 5.93066216e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.744770527, -6.37662506, -0.0124697685, 7.06315041e-006, -0.436122924, 0.899887204, 2.29477882e-006, 0.899887204, 0.436122954, -1.00000012, -1.01700425e-006, 7.30156898e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.426023722, -6.39720917, -0.0123912096, -1.34110451e-006, -0.295489013, 0.955346227, -5.78910112e-006, 0.955346346, 0.295489073, -1.00000012, -5.13903797e-006, -3.03983688e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.08197498, -6.1237545, -0.0124194622, 1.49011612e-007, -0.593387246, 0.804917336, -3.71038914e-006, 0.804917276, 0.593387187, -0.99999994, -3.07895243e-006, -2.14576721e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.92486191, -2.29791236, -0.0124303102, -2.53878534e-006, -0.999944627, -0.0105256755, -4.97698784e-006, -0.0105256718, 0.999944806, -1.00000012, 2.59466469e-006, -5.00679016e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.28734398, 2.16479111, -0.0124379396, -1.44541264e-006, -0.781114936, -0.624387383, 1.19805336e-005, -0.624387383, 0.781115055, -1, -6.36745244e-006, 1.01923943e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.57694435, -5.51458359, -0.0123977661, 6.2584877e-007, -0.751801968, 0.659389257, 4.02331352e-006, 0.659389138, 0.751802027, -1, 2.18022615e-006, 3.39746475e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.22995186, 2.4090023, -0.0123630762, 5.60283661e-006, -0.681725919, -0.731607914, 4.14252281e-006, -0.731607735, 0.681725919, -1.00000012, -6.84708357e-006, -1.25169754e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33389091, 4.20108223, -0.0124769211, -2.11596489e-006, -0.29466778, -0.955599964, -2.33948231e-006, -0.955599904, 0.29466784, -1, 2.85357237e-006, 1.34110451e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.0051918, -2.29636097, -0.0124415159, -4.48524952e-006, -0.980340779, 0.197312653, -4.35113907e-006, 0.197312623, 0.980340838, -1.00000012, 3.54554504e-006, -5.12599945e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.37836456, 4.91423035, -0.012445569, 3.36766243e-006, -0.0521296598, -0.998640537, -8.05407763e-006, -0.998640358, 0.0521296635, -1, 7.88364559e-006, -3.81469727e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.925211728, 0.303880751, 0.815886319))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.93367958, -0.00928902626, -2.12558126, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.822326362, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.407942742, 0.580368817, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.19214439, 3.49279213, -0.0125012398, -4.50015068e-006, -0.517552495, -0.855651557, 2.27987766e-006, -0.855651498, 0.517552614, -1.00000012, 3.96743417e-007, 5.03659248e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.314234972))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0118162632, -0.784724951, -4.2815094, -1, -9.31322575e-010, -2.98023224e-008, 0, -0.15999116, 0.987118602, 3.7252903e-009, 0.987118423, 0.15999116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.729050159))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.93182945, -0.0093061924, -2.13047934, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.8963359, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.28865623, -3.48843575, -0.0124025345, 4.64171171e-006, -0.965613067, 0.259983838, 2.59280205e-006, 0.259983748, 0.965613067, -1, -3.80352139e-006, 3.66568565e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.51189661, 0.287814885, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1.0064255, 0.303880751, 1.58866715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.93554878, -0.0108702183, -2.13606596, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791489005, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.83497238, 0.901715279, -0.0124838352, -7.19726086e-006, -0.872943699, -0.487821102, 8.31484795e-006, -0.487821013, 0.872943819, -1, 2.23144889e-006, 1.07586384e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.925211728, 0.303880751, 1.06577516))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.93365097, -0.0105235577, -2.13763332, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.805879831, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.93185234, 0.031265974, -2.12294102, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.22445309, 0.303880751, 1.25069273))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.92964935, -0.0118281841, -2.13015223, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.75654006, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.613479257, 0.530388772))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0118191242, 4.87217712, 2.86072397, 1, 9.31322575e-010, 2.98023224e-008, 4.65661287e-009, -0.999994755, -0.00323472172, 2.98023224e-008, 0.00323472358, -0.999994934))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.464612961, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.322981089))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.94089127, 0.0587644577, -2.10172796, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.94091225, 0.0581383705, -2.10733557, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.93184662, 0.0518183708, -2.13030005, -2.33761966e-007, -0.999994934, -0.00322755985, 1, -2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.92277718, 0.0811195374, -2.11498976, -2.33761966e-007, -0.999994934, -0.00322755985, 1, -2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 0.814101696))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.377956241, 4.70792103, 0.424186081))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00662326813, 5.02607918, -0.930931091, 1, 9.31322575e-010, 2.98023224e-008, -2.98023224e-008, 0.866028607, 0.499994636, 0, -0.499994636, 0.866028726))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.97546005, 2.90073776, -0.0124722719, -3.90410423e-006, -0.1098307, -0.993950427, -1.71735883e-006, -0.993950367, 0.109830707, -1.00000012, 2.14483589e-006, 3.66568565e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.322981089))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.92279243, 0.079264164, -2.10904455, -2.33761966e-007, -0.999994934, -0.00322755985, 1, -2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.06014514, 4.43065071, -0.0124797821, -5.24520874e-006, 0.118926153, -0.992903233, 2.19792128e-007, -0.992903113, -0.118926153, -1.00000012, -8.54022801e-007, 5.1856041e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.988844335, 0.803825796, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.479163498, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.34247017, 3.92843628, -0.0124350786, -3.81469727e-006, 0.0525331125, -0.998619258, 2.73063779e-006, -0.998619258, -0.0525331199, -1.00000012, -2.91224569e-006, 3.60608101e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.988844335, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.94089699, 0.0606446266, -2.10765123, 2.33761966e-007, 0.999994934, 0.00322755985, -1, 2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 0.814101696))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.4486208, 3.29400635, -0.0123890638, -3.4570694e-006, 0.0353732482, -0.99937427, 5.90307172e-006, -0.99937427, -0.0353732482, -1, -6.02658838e-006, 3.1888485e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.995017111, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.13602829, 1.01656914, -0.0124586821, 0, -0.601658285, -0.798753798, 2.71201134e-006, -0.798753619, 0.601658285, -1, -2.17556953e-006, 1.57952309e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 2.36145711, 0.424186081))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012912631, -3.55740738, 1.37596989, 1, 9.31322575e-010, 2.98023224e-008, 2.98023224e-008, 0.797996044, 0.602662742, -2.98023224e-008, -0.602662742, 0.797996104))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713366032, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.90293694, 1.77072334, -0.0124025345, 1.78813934e-007, -0.453818619, -0.891094208, 7.89761543e-007, -0.891094148, 0.453818649, -1, -7.97212124e-007, 1.78813934e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.92278481, 0.0786545277, -2.11466217, -2.33761966e-007, -0.999994934, -0.00322755985, 1, -2.44937837e-007, 0, 0, -0.00322755612, 0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442927152, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.36689949, 2.48615265, -0.0124230385, 3.51667404e-006, -0.292187393, -0.956361234, 4.2617321e-006, -0.956361175, 0.292187423, -1.00000012, -5.10551035e-006, -2.17556953e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.79425001, 3.57849503, -0.0124206543, 1.81794167e-006, 0.173229605, -0.984881639, -2.36555934e-006, -0.98488158, -0.173229605, -1.00000012, 2.62912363e-006, -1.43051147e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.53542519, 2.21699333, -0.0123488903, 3.51667404e-006, -0.292187393, -0.956361234, 4.2617321e-006, -0.956361175, 0.292187423, -1.00000012, -5.10551035e-006, -2.17556953e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.23025131, 0.0313367844, 5.97351122, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81795883, -1.72733974, -0.0125041008, -1.04270875e-005, -0.984880745, -0.173234373, -1.66893005e-006, -0.173234373, 0.984880745, -1.00000012, 1.05509534e-005, 1.1920929e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.30986324, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.05595851, 3.50310516, -0.0123866796, 2.14576721e-006, 0.126262486, -0.991997004, 8.11740756e-006, -0.991996884, -0.126262501, -0.99999994, -7.79889524e-006, -3.15904617e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.996511936, 3.74813271, -0.0123902559, -5.9902668e-006, 0.334408253, -0.94242847, -2.79396772e-006, -0.94242841, -0.334408224, -1, 6.09084964e-007, 6.58631325e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012455225, 3.31118774, 2.75319099, 1, 9.31322575e-010, 2.98023224e-008, -2.32830644e-009, -0.99861896, -0.0525392853, 2.98023224e-008, 0.0525392815, -0.99861896))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.23556137, 0.151074409, -0.0124570131, -2.62260437e-006, -0.731221795, -0.682139933, 1.69873238e-006, -0.682139933, 0.731221914, -1, 7.67409801e-007, 3.01003456e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.85813332, -1.01961899, -0.0124864578, -2.42888927e-006, -0.942429364, -0.334405482, 1.49011612e-007, -0.334405482, 0.942429423, -1.00000012, 2.23983079e-006, 8.94069672e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.9171772, -2.73610973, -0.0124255419, -8.56816769e-008, -0.995952427, 0.0898835212, -1.13248825e-006, 0.0898834914, 0.995952368, -1, -2.79396772e-008, -1.13248825e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.908667803, 0.522178411, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.85806465, -1.33531356, -0.0124125481, 2.01165676e-007, -0.966630101, -0.2561768, 8.34465027e-007, -0.25617677, 0.966629982, -1.00000012, -4.03262675e-007, 7.15255737e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34484598, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.9226656, 3.19687462, -0.0124812126, 1.04308128e-006, -0.12166968, -0.992570817, 8.64267349e-007, -0.992570758, 0.12166968, -1, -9.9465251e-007, -9.83476639e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.3961184, 3.65061378, -0.0124338865, -8.94069672e-008, 0.25617519, -0.966630459, -1.24424696e-006, -0.966630459, -0.25617522, -1.00000012, 1.19674951e-006, 3.87430191e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.554752171, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.06394577, -1.84428477, -0.0123759508, 8.10995698e-006, -0.991996884, -0.126262441, 2.98023224e-008, -0.126262456, 0.991997123, -1.00000012, -8.05594027e-006, -1.01327896e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1.0064255, 0.303880751, 1.58866715))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.22652435, -0.0108582973, 5.96044397, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.791489005, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.925211728, 0.303880751, 0.815886319))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.22838593, -0.00928664207, 5.97090292, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.822326362, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.925211728, 0.303880751, 1.06577516))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.22837067, -0.0104637146, 5.95883226, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.805879831, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.22445309, 0.303880751, 1.25069273))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.23242569, -0.0117633343, 5.96630716, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.75654006, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.22118759, 0.0581915379, 5.98910284, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.2302742, 0.0517976284, 5.96617556, 2.33761966e-007, 0.999994934, 0.00322755985, 1, -2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.23937988, 0.0811152458, 5.98152971, 2.33761966e-007, 0.999994934, 0.00322755985, 1, -2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 0.814101696))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.613479257, 1.00642657))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.011762619, -9.28994751, -4.99760723, 1, 9.31322575e-010, 2.98023224e-008, -4.65661287e-009, 0.999994755, 0.00323472172, -2.98023224e-008, -0.00323472358, 0.999994934))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.464612961, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.322981089))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.22118378, 0.0587801933, 5.99475813, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.64908576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.23930359, 0.0786354542, 5.98179674, 2.33761966e-007, 0.999994934, 0.00322755985, 1, -2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.714056015, 0.303880751, 0.729050159))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.23022842, -0.00935840607, 5.96603346, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.8963359, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.322981089))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.23930359, 0.0793123245, 5.9874177, 2.33761966e-007, 0.999994934, 0.00322755985, 1, -2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.398571998, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.22118759, 0.0606753826, 5.98889208, -2.33761966e-007, -0.999994934, -0.00322755985, -1, 2.44937837e-007, 0, 0, 0.00322755612, -0.999994874))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.789433181, 0.814101696))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.352342576, 1.34065831, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.60656548, -3.71854877, 0.0124465227, -9.96515155e-007, 0.999996066, 0.00283642672, 3.09944153e-006, -0.00283643231, 0.999996126, 1, 9.93721187e-007, -3.03983688e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.49724901, 0.396302044, 1.72471893))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.53209114, 0.00970840454, -9.13299942, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.644999981, 0.388214171, 0.400345147))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.52048302, 0.125020981, -9.08446884, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.432306886, 0.745920777, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.02216148, -6.58374023, -0.0124263763, 3.39746475e-006, -0.705833733, 0.708377719, 6.2584877e-007, 0.7083776, 0.705833733, -1, -1.94925815e-006, 2.8014183e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.98150408, 0.372038513, 2.02396679))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.53869057, 0.00769758224, -9.12093735, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.40455627, -5.98376656, -0.0124013424, 4.29153442e-006, -0.855714321, 0.517448723, -4.23192978e-006, 0.517448664, 0.855714381, -1, -5.85988164e-006, -1.40070915e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.5826149, -1.79967213, -0.0124080181, -7.30156898e-007, 0.805894613, 0.592059255, 2.59280205e-006, 0.592059135, -0.805894613, -1, 9.54605639e-007, -2.56299973e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.397949308, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.03262138, 5.89030457, -0.0124242306, 4.67896461e-006, 0.764963388, -0.644073904, -4.529953e-006, -0.644073844, -0.764963388, -1.00000012, 6.4689666e-006, 3.87430191e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.865495801, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.15554059, 0.388214171, 1.0504005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.53514671, 0.077434063, -9.10925293, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.40276146, -2.83916378, -0.0125054121, 5.87105751e-006, 0.775797784, 0.630981803, -2.41398811e-006, 0.630981743, -0.775797784, -1, 2.98954546e-006, 5.54323196e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.76476109, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.782776117))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0124001503, 6.66772652, 4.64085054, 1, 9.31322575e-010, 2.98023224e-008, 0, -0.99540174, 0.0957887024, 2.98023224e-008, -0.0957887098, -0.995401919))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.641416013, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.644999981, 0.388214171, 1.0504005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.52045059, 0.120856285, -9.08395958, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.742168486, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.87456703, 6.94859314, -0.012353301, 9.23871994e-007, -0.0667053908, -0.997772813, 1.8440187e-006, -0.997772813, 0.0667054057, -1, -1.90921128e-006, -8.04662704e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.56162411, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.10109329, 0.131497145, -0.0123841763, 2.75671482e-007, 0.955966234, 0.29347679, -1.43051147e-006, 0.29347682, -0.955966413, -1, -1.5553087e-007, 1.40070915e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.439804047))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0124139786, -6.60284424, -2.1558466, 1, 9.31322575e-010, 2.98023224e-008, 1.11758709e-008, 0.995237648, -0.0974796116, 0, 0.0974796042, 0.995237589))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.644999981, 0.388214171, 0.522672772))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.52046776, 0.121977806, -9.07490158, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 1.91237342, 5.05215073))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00765299797, -7.53235435, 11.572979, -1, -9.31322575e-010, -2.98023224e-008, 0, 0.985365093, -0.170457572, 2.98023224e-008, -0.170457572, -0.985365152))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.75187242, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.644999981, 0.388214171, 0.522672772))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.54976463, 0.101484776, -9.08673096, -6.35534525e-006, 0.985364497, -0.170460999, -1, -5.09526581e-006, 7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.339223474, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.18721771, 6.9974556, -0.0124312639, 2.2649765e-006, 0.557646036, -0.830079079, 1.1920929e-007, -0.830079019, -0.557646036, -1.00000012, 1.17626041e-006, -1.96695328e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.58254242, -1.97987509, -0.0124257803, 2.75671482e-007, -0.979105055, -0.203355595, 5.12599945e-006, -0.203355595, 0.979105115, -1, -1.33365393e-006, 4.91738319e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.83470726, -0.611104012, -0.0124248266, 1.71363354e-006, 0.910562217, 0.413372189, 8.28504562e-006, 0.413372129, -0.910562277, -1, 4.96860594e-006, -6.88433647e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.15554059, 0.388214171, 1.0504005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.53514099, 0.0569529533, -9.12112999, -6.35534525e-006, 0.985364497, -0.170460999, -1, -5.09526581e-006, 7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.890852153, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.97366524, 7.55343437, -0.0124526024, -4.70876694e-006, 0.163827598, -0.986489117, -2.53692269e-006, -0.986489058, -0.163827628, -1.00000012, 1.7452985e-006, 5.03659248e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.577685654, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.644999981, 0.388214171, 0.400345147))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.54976463, 0.104550838, -9.0963707, -6.35534525e-006, 0.985364497, -0.170460999, -1, -5.09526581e-006, 7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1.62867522, 0.389225185, 2.57090306))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.52905655, 0.00926351547, -9.13046265, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(1.49724901, 0.404389799, 1.32033002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.53208923, 0.0117883682, -9.11352539, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.15554059, 0.440785021, 1.17980492))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.53514862, 0.0117816925, -9.1213913, 6.35534525e-006, -0.985364497, 0.170460999, 1, 5.09526581e-006, -7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.644999981, 0.388214171, 1.0504005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.54978371, 0.100456238, -9.0958786, -6.35534525e-006, 0.985364497, -0.170460999, -1, -5.09526581e-006, 7.77840614e-006, 6.82473183e-006, 0.170461014, 0.985364676))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.3948237, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.94905281, -1.03524399, -0.0124412775, -4.02331352e-007, 0.904808879, 0.425818115, -2.47359276e-006, 0.425818086, -0.904808998, -1, -1.39698386e-006, 2.02655792e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.51601094, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.84710503, -6.7573452, -0.0124852657, -3.42726707e-006, -0.591802478, 0.806083083, 1.09672546e-005, 0.806083083, 0.591802597, -1, 1.0852702e-005, 3.7252903e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.71581078, -7.28775024, -0.0123592615, 3.50177288e-007, -0.990022242, 0.140911624, 2.29477882e-006, 0.140911609, 0.990022302, -1.00000012, -1.49011612e-008, 2.2649765e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.32930756, -5.44681263, -0.0124896765, -3.94694507e-006, -0.997252703, -0.0740757436, 4.47034836e-006, -0.0740757361, 0.997252762, -1, 3.58838588e-006, 4.70876694e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.26925945, 6.71053886, -0.0124210119, 5.06639481e-007, -0.183965728, -0.982932866, -3.75509262e-006, -0.982932806, 0.183965743, -1, 3.61539423e-006, -1.1920929e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.407942742, 0.580368817, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.11806965, 9.14440536, -0.0124094486, 8.58306885e-006, 0.247566879, -0.968870997, -4.21702862e-006, -0.968870819, -0.247566909, -1, 6.20540231e-006, -7.33137131e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.52170563, 2.72992134, -0.0123733282, -1.4603138e-006, -0.668891907, -0.743359745, 2.17556953e-006, -0.743359685, 0.668891966, -1, -6.50063157e-007, 2.5331974e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.307989061, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.99622345, 2.7495079, -0.0123155117, 2.56299973e-006, -0.667767346, -0.744370222, 3.84449959e-006, -0.744370222, 0.667767406, -1, -4.60725278e-006, 6.2584877e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.23019171, 7.83981514, -0.012377739, 8.94069672e-008, -0.1021045, -0.994773865, -1.82539225e-006, -0.994773805, 0.102104515, -1.00000012, 1.80583447e-006, -2.98023224e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.036412, 0.625348926, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.0481329, 4.46613312, -0.012532115, -8.2552433e-006, -0.485764682, -0.874089718, -5.17070293e-006, -0.874089658, 0.485764742, -1, 8.52718949e-006, 4.64916229e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.95944405, 0.627696991, -0.0123919249, 7.24196434e-006, -0.827845216, -0.560956717, 4.47034836e-007, -0.560956657, 0.827845335, -1, -6.29108399e-006, -3.69548798e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.374834508, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.82873535, 3.78000259, -0.0124124289, -6.55651093e-007, -0.574416518, -0.818563342, 2.07126141e-006, -0.818563282, 0.574416578, -1, -1.32806599e-006, 1.7285347e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.0653038, 1.60266304, -0.0124349594, -1.78813934e-007, -0.761026621, -0.648720741, 8.94069672e-007, -0.648720622, 0.76102668, -1.00000012, -3.97674739e-007, 8.04662704e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.616746128, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.51108742, -9.35012627, -0.0123890638, 5.27501106e-006, -0.88852638, 0.458825588, -3.78489494e-006, 0.458825618, 0.888526559, -1, -6.42426312e-006, -9.83476639e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.44653702, 3.40462112, -0.0123729706, -1.13248825e-006, -0.607576489, -0.794261336, -6.2584877e-007, -0.794261277, 0.607576549, -1, 1.18557364e-006, 4.76837158e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.407942742, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(10.2683678, 2.09921837, -0.01245296, -8.04662704e-007, -0.700848877, -0.713309884, 6.16908073e-006, -0.713309884, 0.700848937, -1.00000012, -3.82214785e-006, 4.85777855e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(10.1641235, 1.590868, -0.0123509169, 1.10268593e-006, -0.693350792, -0.720600247, 4.41074371e-006, -0.720600247, 0.69335103, -1.00000012, -3.91621143e-006, 2.23517418e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.33533144, 8.16091156, -0.0124230385, -2.14576721e-006, 0.0440286547, -0.999030471, -3.3993274e-007, -0.999030292, -0.0440286584, -1, 2.48663127e-007, 2.14576721e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.68662262, -3.82082748, -0.012382865, -2.98023224e-006, 0.568477154, 0.82269913, -6.76512718e-006, 0.82269913, -0.568477213, -1.00000012, -7.24662095e-006, 1.37090683e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.81515074, 8.01345253, -0.0124938488, -6.04987144e-006, 0.0200483594, -0.999799252, -5.91948628e-006, -0.999799192, -0.0200483557, -1.00000012, 5.76302409e-006, 6.10947609e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.85905838, -3.76813197, -0.0123496056, 4.57465649e-006, -0.97696346, -0.21340701, 3.42726707e-006, -0.213406995, 0.97696352, -1.00000012, -5.19305468e-006, 2.32458115e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.07059669, -8.55152321, -0.0124522448, 1.78813934e-007, -0.94753927, 0.319639474, 8.94069672e-007, 0.319639415, 0.947539389, -1, 1.29453838e-007, 8.64267349e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.3708849, 5.20023346, -0.0123670101, 5.00679016e-006, -0.444125444, -0.895964801, -1.23679638e-006, -0.895964682, 0.444125473, -1.00000012, -1.12596899e-006, -5.09619713e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.4207859, -0.889343262, -0.0124530792, -4.21702862e-006, -0.862229824, -0.506517351, -5.21540642e-006, -0.506517351, 0.862229943, -1.00000012, 6.29201531e-006, -2.44379044e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.51189661, 0.287814885, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.59954453, -4.07379961, -0.0124642849, 3.78862023e-006, -0.993317842, 0.115410924, 4.76837158e-006, 0.115410924, 0.993318021, -1, -3.21120024e-006, 5.12599945e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.69596291, 6.34514618, -0.0123432875, -2.98023224e-008, -0.263896495, -0.96455121, 7.82310963e-007, -0.964551151, 0.263896495, -1, -7.53439963e-007, 2.08616257e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.417315811, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.44608116, -5.31203842, -0.0124511719, 2.39908695e-006, -0.92986244, 0.367907703, 1.33216381e-005, 0.367907673, 0.929862499, -1, 2.65613198e-006, 1.32322311e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.914835274, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.921694279, 9.42374611, -0.0123417377, -2.20537186e-006, 0.475074917, -0.879945457, 6.48200512e-006, -0.879945397, -0.475075006, -1, -6.7781657e-006, -1.13248825e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.401695579, 0.303880751, 0.422936529))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.91841125, -0.0123171806, -1.66432858, 1.10268593e-006, -0.693350792, -0.720600247, -1, -8.37258995e-007, -7.4505806e-007, -1.1920929e-007, 0.720600247, -0.693350911))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.411162108, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0117726326, 8.00989723, 7.48579407, -1, -9.31322575e-010, -2.98023224e-008, 2.98023224e-008, -0.230084091, -0.973170996, 7.4505806e-009, -0.973170877, 0.230084091))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.686644077, 0.923059404))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(10.7702713, -0.534314156, -0.012466073, -2.4586916e-006, -0.854629397, -0.519238591, -2.47359276e-006, -0.519238532, 0.854629397, -1.00000012, 3.44123691e-006, -8.94069672e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.80176574, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.23729992, 9.38878059, -0.0123957396, 4.97698784e-006, 0.675763547, -0.737118542, 2.50339508e-006, -0.737118542, -0.675763547, -1, 1.49942935e-006, -5.36441803e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.713365912, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.439804047))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012447834, 2.51445627, -6.0870266, 1, 9.31322575e-010, 2.98023224e-008, 0, 0.00572543964, -0.999983788, -1.95577741e-008, 0.999983668, 0.00572544523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-10.1490116, 3.13789177, 0.012360692, -9.23871994e-007, 0.551329911, 0.834287465, 1.95205212e-006, -0.834287405, 0.551329911, 1.00000012, 2.15694308e-006, -2.38418579e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.36386275, -6.88163567, -0.0123234987, -2.14576721e-006, -0.126262486, 0.991997004, -8.11740756e-006, 0.991996884, 0.126262501, -0.99999994, -7.79889524e-006, -3.15904617e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.73898125, -6.18506241, -0.0124745369, -1.16229057e-006, 0.109836422, 0.993949771, 5.61773777e-006, 0.993949711, -0.109836437, -0.99999994, 5.44451177e-006, -1.81794167e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.417329341, 0.688699841, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.11713457, -7.31951523, -0.0124870539, 5.9902668e-006, -0.334408253, 0.94242847, 2.79396772e-006, 0.94242841, 0.334408224, -1, 6.09084964e-007, 6.58631325e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.432306886, 0.745920777, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-10.2723064, -1.95584822, 0.0123821497, -3.54647636e-006, 0.85924542, 0.511563838, 3.93390656e-006, -0.511563778, 0.85924542, 1, 5.09060919e-006, -1.57952309e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.314234972))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0117855072, 3.69455147, -7.8913517, -1, -9.31322575e-010, -2.98023224e-008, 0, -0.816218913, 0.577742934, -2.98023224e-008, 0.577742934, 0.816218972))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.89697552, -6.67709541, -0.0124276876, 3.4570694e-006, -0.0353732482, 0.99937427, -5.90307172e-006, 0.99937427, 0.0353732482, -1, -6.02658838e-006, 3.1888485e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.651695132, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.61327553, -4.69534445, 0.0123462677, -9.81986523e-006, 0.957189798, 0.289461315, 8.34465027e-007, -0.289461315, 0.957189858, 1.00000012, 9.65874642e-006, 2.02655792e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.397949308, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.6149807, 2.44038153, 0.0124545097, -1.50501728e-006, -0.900616169, -0.434615582, -5.27501106e-006, 0.434615523, -0.900616288, 1, 9.35979187e-007, -5.36441803e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.865495801, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.75038147, -5.41891098, -0.0123875141, -3.51667404e-006, 0.292187393, 0.956361234, -4.2617321e-006, 0.956361175, -0.292187423, -1.00000012, -5.10551035e-006, -2.17556953e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.742168486, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.16728401, -6.09539223, 0.0124492645, -1.51991844e-006, -0.182421595, -0.983220518, 3.00258398e-006, 0.983220458, -0.18242161, 1, -3.22330743e-006, -9.23871994e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.41212654, 8.91336823, 0.012304306, -1.87754631e-006, 0.0003867466, 1.00000012, 5.68013638e-006, -0.99999994, 0.000386744738, 1.00000012, 5.66523522e-006, 1.87754631e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.890165508, 0.886058807, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.3948237, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.88817215, 9.92194176, 0.0124434233, -9.83476639e-007, -0.771194279, 0.636599898, -4.14252281e-006, -0.636599839, -0.771194398, 1.00000012, -3.40025872e-006, -2.5331974e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.51601094, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.56162411, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.1980648, 9.72758865, 0.0123690367, 2.92062759e-006, -0.853536248, 0.521033525, 2.5331974e-006, -0.521033525, -0.853536367, 1, 3.81562859e-006, 6.85453415e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.15203667, 10.2238693, 0.0125113726, 3.7252903e-006, -0.779855013, 0.62596041, -5.63263893e-006, -0.62596035, -0.779855013, 1.00000012, -6.74277544e-007, -6.67572021e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.360465884, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.78846073, 9.35522842, 0.0124082565, -6.31809235e-006, -0.20550932, 0.978655279, -1.98185444e-006, -0.978655279, -0.20550935, 1, -3.25031579e-006, 5.78165054e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.516008198, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.339223474, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.9793911, -0.0828704834, 0.0124220848, -4.41074371e-006, -0.745811224, -0.666157365, 4.17232513e-007, 0.666157365, -0.745811343, 1, -3.55392694e-006, -2.59280205e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.465419531, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.93684387, -1.54804802, -0.0124075413, 1.1920929e-007, 0.755722106, 0.654892623, -2.32458115e-006, 0.654892504, -0.755722165, -1, -1.41281635e-006, 1.84774399e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 1, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.782776117))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123512745, -6.52511215, 9.55075073, -1, -9.31322575e-010, -2.98023224e-008, 1.49011612e-008, 0.988123953, -0.153659001, -2.98023224e-008, -0.153658956, -0.988124132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.641416013, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.68771935, -8.72229195, 0.0123654604, -4.55975533e-006, 0.990965128, -0.134120211, 3.42726707e-006, 0.134120211, 0.990965188, 1.00000012, 4.04939055e-006, -4.02331352e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-10.6044464, -0.191047668, 0.0124198198, -1.62422657e-006, 0.772966743, 0.63444674, -7.74860382e-007, -0.634446681, 0.772966862, 1, 7.7392906e-007, 1.63912773e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.20050526, 7.04151344, 0.012422204, 4.32133675e-006, 0.221554473, 0.975148141, 2.08616257e-007, -0.975148022, 0.221554488, 1.00000012, -7.63684511e-007, -4.20212746e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.908667803, 0.886058807, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.460951805, 9.92220497, 0.012404561, 8.04662704e-007, -0.595404685, 0.803426027, 2.16066837e-006, -0.803426147, -0.595404804, 1, 2.24169344e-006, 6.85453415e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.76476109, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.890852153, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(10.1159735, -3.92957306, 0.0123693943, 1.34110451e-006, -0.402991682, -0.91520381, -7.28666782e-006, 0.915203691, -0.402991712, 1.00000012, 7.20936805e-006, -1.63912773e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.577685654, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.379207611, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.57634735, 4.81548882, 0.012370348, -3.60608101e-006, 0.424489856, 0.90543288, 6.95884228e-006, -0.90543282, 0.424489856, 1, 7.83149153e-006, 3.27825546e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.53851223, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.05941486, 5.46739197, 0.0123853683, 5.00679016e-006, 0.352792948, 0.935701609, 3.48687172e-006, -0.935701549, 0.352792978, 1, 1.50315464e-006, -5.87105751e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.863439977, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.208601, 10.3511047, 0.0122966766, -9.23871994e-007, -0.22558865, 0.974222839, 1.14440918e-005, -0.974222779, -0.225588679, 1, 1.09523535e-005, 3.51667404e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.910723567, 0.81204921, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.439804047))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124163628, 6.59832573, -7.04335117, -1, -9.31322575e-010, -2.98023224e-008, 7.4505806e-009, -0.988384128, 0.151976988, 0, 0.151976988, 0.988384187))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.417315811, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.59065819, -6.37326956, 0.0124044418, -2.07871199e-006, 0.992004037, 0.126206756, -9.53674316e-007, -0.126206741, 0.992004097, 1.00000012, 1.94087625e-006, 1.22189522e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.914835274, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.56384277, -10.5772085, 0.0124403238, 2.20537186e-006, 0.898261964, -0.439460576, 4.82797623e-006, 0.439460546, 0.898262024, 1.00000012, -4.09968197e-006, -3.30805779e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.433556795))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124089718, 4.24186707, 10.6744251, -1, -9.31322575e-010, -2.98023224e-008, 0, 0.222465992, -0.974940658, 0, -0.974940538, -0.222466007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.904560983, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.12834382, -6.98438454, -0.0124499798, -1.81794167e-006, -0.173229605, 0.984881639, 2.36555934e-006, 0.98488158, 0.173229605, -1.00000012, 2.62912363e-006, -1.43051147e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.84832764, -7.35752487, 0.0124385357, 7.39097595e-006, 0.921044648, -0.389457226, 1.87754631e-006, 0.389457136, 0.921044648, 1, -7.5371936e-006, 1.22189522e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.0122509, 1.37083554, -0.0124055147, 1.8030405e-006, 0.974325538, 0.22514452, 6.2584877e-007, 0.225144476, -0.974325538, -1, 1.89989805e-006, -2.38418579e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442927152, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.93982697, -2.93935776, 0.012352109, -1.78068876e-006, 0.971944034, 0.23521246, -4.44054604e-006, -0.235212505, 0.971944213, 1.00000012, 6.8731606e-007, 4.76837158e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.690755665, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.72381973, 6.17004967, -0.0124282837, -3.57627869e-007, -0.0129901562, -0.999915779, -3.73646617e-006, -0.999915719, 0.0129901581, -0.99999994, 3.7252903e-006, 2.98023224e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442927152, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0858078003, 7.46312714, -0.012324214, 3.57627869e-006, 0.488711536, -0.872445643, 2.5331974e-006, -0.872445583, -0.488711536, -1, -4.51691449e-007, -4.41074371e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.690755665, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.39909458, 6.99688721, 0.0124337673, -1.69873238e-006, -0.00074467063, 0.999999881, -2.29571015e-006, -0.999999821, -0.000744661316, 1.00000012, -2.28825957e-006, 1.7285347e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.20952988, 1.09409809, -0.0124604702, 2.42888927e-006, 0.942429364, 0.334405482, -1.49011612e-007, 0.334405482, -0.942429423, -1.00000012, 2.23983079e-006, 8.94069672e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.42052484, 7.86034775, 0.0124549866, 2.17556953e-006, -0.250964075, 0.967996538, -3.39001417e-006, -0.967996418, -0.250964105, 1.00000012, -2.72411853e-006, -2.95042992e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.61601639, -7.20702934, -0.0123625994, -3.87430191e-006, -0.256180793, 0.966629028, -5.28991222e-006, 0.966628909, 0.256180793, -1, -4.13134694e-006, -5.15580177e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.53069305, 6.4308033, -0.0124589205, 1.17719173e-006, 0.831185222, -0.555995584, -2.98023224e-006, -0.555995524, -0.831185341, -1.00000012, 2.65240669e-006, 1.81794167e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0123314857, -6.66631126, -2.42119551, 1, 9.31322575e-010, 2.98023224e-008, 2.32830644e-009, 0.99861896, 0.0525392853, -2.98023224e-008, -0.0525392815, 0.99861896))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.703090549, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.22072029, 3.7188797, 0.012445569, 9.23871994e-007, 0.522830784, 0.852436662, -1.49011612e-008, -0.852436543, 0.522830784, 1, -5.06639481e-007, -7.15255737e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.17643166, 4.14488125, -0.01245749, 5.85615635e-006, 0.996784389, 0.0801301301, 1.51991844e-006, 0.0801301375, -0.996784508, -1, 5.94463199e-006, -1.07288361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.72810745, 5.67640114, -0.0124180317, -2.98023224e-007, 0.911984265, -0.410225481, 2.50339508e-006, -0.410225451, -0.911984324, -1.00000012, -1.2870878e-006, -2.17556953e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.97114182, 6.2010479, -0.012403965, -1.38580799e-006, 0.943396688, -0.331666797, -1.51991844e-006, -0.331666797, -0.943396866, -1, -8.09319317e-007, 1.84774399e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.36345863, 7.251688, -0.0124359131, -2.38418579e-006, 0.329788595, -0.944054902, 3.03983688e-006, -0.944054782, -0.329788625, -1.00000012, -3.66009772e-006, 1.1920929e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.20074463, -0.27650547, -0.0124983788, 4.91738319e-006, 0.862339437, 0.506330729, -2.77161598e-006, 0.506330729, -0.862339616, -1, 2.83215195e-006, 4.76837158e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.30986324, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.1161499, 6.60500145, -0.0124365091, 1.00433826e-005, 0.803835988, -0.594851196, -3.81469727e-006, -0.594851196, -0.803836048, -1.00000024, 1.03441998e-005, -2.98023224e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.4111619, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.33626652, 7.13145447, -0.0124735832, -5.00679016e-006, 0.641975939, -0.766724944, -5.67734241e-006, -0.766724885, -0.641976058, -1.00000012, 1.13621354e-006, 7.42077827e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827198029, 7.17368698, -0.0124181509, 3.57627869e-006, 0.488711536, -0.872445643, 2.5331974e-006, -0.872445583, -0.488711536, -1, -4.51691449e-007, -4.41074371e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.58682585, 6.85532379, -0.0124583244, -1.87754631e-006, 0.160853952, -0.986978352, -6.52298331e-006, -0.986978352, -0.160853952, -1.00000012, 6.13369048e-006, 2.89082527e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.61892128, 5.6017952, -0.0124467611, -3.1888485e-006, 0.92894727, -0.370212257, -3.4570694e-006, -0.370212197, -0.928947389, -1, -1.67544931e-006, 4.38094139e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.995017111, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.1516037, 6.04072094, -0.0123945475, -1.5348196e-006, 0.87536639, -0.483460397, -5.36441803e-007, -0.483460367, -0.87536639, -1.00000012, -1.07940286e-006, 1.16229057e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.381706476, 0.612851977))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124022961, -6.29152679, -3.35635376, -1, -9.31322575e-010, -2.98023224e-008, 0, 0.511204064, 0.859459519, 0, 0.859459519, -0.511204064))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86453629, 7.01668358, -0.0124135017, 3.24845314e-006, 0.792662501, -0.609660983, 1.13248825e-006, -0.609660804, -0.792662501, -1.00000012, 1.88313425e-006, -2.92062759e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.8796196, 5.72327423, -0.0123989582, -1.07288361e-006, -0.230652079, -0.973036468, 6.55651093e-007, -0.973036408, 0.230652094, -1.00000012, -3.94880772e-007, 1.1920929e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.5976181, 6.80248833, -0.0124115944, 2.62260437e-006, 0.852701485, -0.52239871, -3.42726707e-006, -0.522398651, -0.852701485, -1.00000012, 3.99723649e-006, 1.51991844e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.84902382, 6.45874977, -0.012386322, 2.83122063e-006, -0.0496096015, -0.998768806, -1.60187483e-007, -0.998768806, 0.0496096089, -1, 1.58324838e-008, -2.83122063e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.78637409, 4.70507431, -0.0123927593, 5.39422035e-006, -0.410219967, -0.911986768, 6.2584877e-006, -0.911986709, 0.410219967, -1, -7.9497695e-006, -2.38418579e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.0601902, 3.84188843, 0.012373805, -4.20212746e-006, 0.508225679, 0.861224115, 7.30156898e-007, -0.861224055, 0.508225739, 1.00000012, 2.75392085e-006, 3.24845314e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.312360466, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.41298389, 5.5579052, 0.0123665333, -2.14576721e-006, 0.25908047, 0.965855896, 3.18139791e-006, -0.965855837, 0.25908047, 1, 3.62005085e-006, 1.22189522e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.85537338, 5.86849785, 0.0124582052, 2.38418579e-006, 0.200077549, 0.979780078, -5.63263893e-006, -0.979780197, 0.200077608, 1.00000012, -6.00609928e-006, -1.1920929e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.577682495, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.12572479, -4.54663372, 0.0124077797, 2.97091901e-007, 0.998700798, 0.0509605259, 2.77161598e-006, -0.0509605259, 0.998700798, 1, -1.54599547e-007, -2.8014183e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.992961228, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.4000206, -0.502847672, 0.0124326944, 4.85777855e-006, 0.873774052, 0.486332357, -6.85453415e-007, -0.486332327, 0.873774111, 0.999999881, -4.57745045e-006, -1.75833702e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.01305962, 5.12858963, 0.0124901533, 4.7981739e-006, 0.33012554, 0.943937182, -3.57627869e-007, -0.943937063, 0.330125511, 1.00000012, -1.92783773e-006, -4.41074371e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.7712822, -3.22886467, 0.0123285055, -1.78068876e-006, 0.971944034, 0.23521246, -4.44054604e-006, -0.235212505, 0.971944213, 1.00000012, 6.8731606e-007, 4.76837158e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.15555573, 1.88720322, 0.0124416351, 1.9967556e-006, 0.699798644, 0.71434027, 4.76837158e-006, -0.71434021, 0.699798703, 1, 2.02096999e-006, -4.67896461e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.58464622, 3.13653755, 0.0123970509, -1.34110451e-006, 0.588116705, 0.808776319, 1.10268593e-006, -0.8087762, 0.588116646, 1, 1.67358667e-006, 4.47034836e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.33772659, -6.93961811, 0.0123829842, -1.95205212e-006, 0.949819386, -0.312799186, 1.04308128e-006, 0.312799156, 0.949819326, 0.99999994, 1.54040754e-006, -1.54972076e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.33214378, 1.82011604, 0.0123348236, -3.57627869e-006, 0.698364794, 0.71574223, 1.93715096e-006, -0.715742171, 0.698364735, 1, 3.86592001e-006, 1.25169754e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.378268987, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.11701393, 5.40522623, -0.0122904778, -7.37607479e-006, 0.990017414, -0.140945405, 6.04987144e-006, -0.140945435, -0.990017533, -1.00000012, -8.16304237e-006, -4.94718552e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.13949096, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.13785172, 1.99371624, 0.0123724937, -3.51667404e-006, 0.764835656, 0.644225538, -2.71201134e-006, -0.644225478, 0.764835715, 1.00000012, 9.22009349e-007, 4.38094139e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.474894702, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.11168122, -6.81706238, -0.0124080181, -9.23871994e-007, -0.135209382, 0.990817189, 8.38562846e-006, 0.99081701, 0.135209367, -1, 8.41356814e-006, 2.08616257e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.828491092, 0.448168874, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.385452777, 0.5566293, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.23547554, -1.4368546, 0.0124742985, -1.25169754e-006, 0.970794678, 0.23991254, -5.06639481e-007, -0.239912495, 0.970794559, 1, 1.09616667e-006, 8.04662704e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.35137749, -0.233643532, 0.0124229193, -2.04145908e-006, 0.832879305, 0.553454816, -1.34110451e-006, -0.553454816, 0.832879484, 1.00000012, 9.24803317e-007, 2.2649765e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.746381283, -7.19560242, -0.012477994, -5.69224358e-006, -0.343261242, 0.939240098, 2.98023224e-006, 0.939240098, 0.343261272, -1.00000012, 4.72832471e-006, -4.32133675e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.888114512, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.898353457, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.80285263, -4.37599087, 0.0123792887, -5.28991222e-007, 0.986603141, -0.163138941, 2.20537186e-006, 0.163138896, 0.9866032, 1, 1.57393515e-007, -2.23517418e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.339208543, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.10495281, 6.67977905, 0.0122960806, 4.05311584e-006, 0.0749003738, 0.997191131, 3.20374966e-006, -0.997191012, 0.0749003813, 1, 2.90200114e-006, -4.23192978e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.631133437, 0.923063278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.02641666, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.36850357, 4.76811981, 0.0124428272, 2.5331974e-006, 0.375574261, 0.926792383, -2.35438347e-006, -0.926792383, 0.37557435, 1.00000012, -3.14041972e-006, -1.43051147e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.859332979, 0.411162376))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123510361, -5.67341471, -6.00907898, -1, -9.31322575e-010, -2.98023224e-008, -2.98023224e-008, 0.111395173, 0.993776381, 1.49011612e-008, 0.993776202, -0.111395173))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.407050252, 0.493396938, 0.805878341))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.41927719, 5.96742249, -0.0124080181, -1.64657831e-006, 0.965299606, -0.261145562, -7.1823597e-006, -0.261145502, -0.965299606, -0.99999994, 2.79396772e-007, 7.33137131e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.719792366, 7.46349335, -0.0124108791, -8.31484795e-006, 0.58074677, -0.81408453, 1.49011612e-007, -0.814084411, -0.58074671, -0.99999994, -4.95743006e-006, 6.64591789e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.30986324, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.01763535, -6.10498905, 0.0123909712, -1.02818012e-006, 0.982813179, -0.184603095, -2.71201134e-006, 0.18460308, 0.982813358, 1.00000012, 1.51619315e-006, 2.47359276e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 1, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.97362518, 5.52422333, 0.0123796463, -2.74181366e-006, 0.425907314, 0.904766858, 2.83122063e-007, -0.904766858, 0.425907373, 1.00000012, 1.41561031e-006, 2.35438347e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.339208543, 0.474894702, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.81389236, -6.4021883, 0.0124505758, 5.05894423e-006, 0.972934306, -0.231082022, 1.81794167e-006, 0.231081992, 0.972934425, 1.00000012, -5.33089042e-006, -5.96046448e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.912784278, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.46669388, -5.53867197, 0.012367487, -1.06878579e-005, 0.995542765, -0.0943122283, 5.51342964e-006, 0.0943122357, 0.995542824, 1, 1.01206824e-005, -6.49690628e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.995017111, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.27927399, 1.08826637, 0.0124969482, 5.87105751e-006, 0.724118412, 0.689675689, 1.51991844e-006, -0.689675629, 0.72411859, 1.00000012, -3.18046659e-006, -5.15580177e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.94256783, 3.38024139, 0.0124887228, 2.50339508e-006, 0.556365132, 0.830938101, -8.49366188e-007, -0.830938041, 0.556365132, 1, -2.07126141e-006, -1.57952309e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.74662209, 6.22640228, -0.0124820471, 2.68220901e-006, 0.93085891, -0.365379125, -5.75184822e-006, -0.365379065, -0.93085885, -1.00000012, 4.6081841e-006, 4.32133675e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.24757767, 4.82518387, 0.012406826, -5.63263893e-006, 0.389464498, 0.921041608, -1.96695328e-006, -0.921041489, 0.389464557, 1.00000012, 3.83704901e-007, 5.96046448e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.59971619, 4.45449638, 0.0124127865, 2.38418579e-007, 0.428902268, 0.903351068, -1.32620335e-006, -0.903351009, 0.428902328, 1.00000012, -1.30105764e-006, 4.17232513e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.493396938, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.303880781, 0.303880751, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.17772675, -1.62893057, 0.0123587847, 1.87754631e-006, 0.916331828, 0.40042004, -8.16583633e-006, -0.40041995, 0.916331887, 1, -4.98630106e-006, 6.76512718e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337152779, 0.557127297, 0.411162376))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.49165535, 0.729053199, 0.303880751))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14151382, -9.38034821, 0.0125151873, 1.28149986e-006, 0.573237002, -0.81938976, 1.95205212e-006, 0.819389582, 0.573237062, 1, -2.30967999e-006, -2.98023224e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.411162376))


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

Torso=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(2.31588483, 2.31588507, 1.15794206))
Torsoweld=weld(m,Character["Torso"],Torso,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-005, -3.02791595e-005, 9.6321106e-005, 1.00000525, -3.1022355e-006, -5.46872616e-006, 3.47103924e-006, 1, -1.34110451e-006, 5.60283661e-006, 3.05473804e-007, 1.00000525))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765117168, -1.7074573, 1.29617691, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.324040234, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765116692, -2.43655133, 0.162033081, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765115976, -2.03149986, 0.324035645, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.762411118, -0.827063322, 1.21516418, 3.37507754e-006, 0.0186272543, 0.999826491, 7.48775506e-007, 0.99982655, -0.0186272524, -1, 8.11514042e-007, 3.36054404e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.747216225, -0.0362727642, 1.62022018, -4.17228148e-006, 0.00696193241, -0.999975801, -1.25727233e-008, 0.999975801, 0.00696193241, 1, 4.16195469e-008, -4.17209321e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765120983, -1.38341665, 1.70123672, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765108109, -2.1935122, -0.931619644, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178395, 0.602178395, 0.301089197))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765116692, -1.7074573, -0.648094177, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.747226238, -0.198295355, 1.37718582, 4.17228148e-006, -0.00696193241, 0.999975801, -1.25727233e-008, 0.999975801, 0.00696193241, -1, -4.16195469e-008, 4.17209321e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.762410164, -0.665040016, 1.45818901, -3.37507754e-006, -0.0186272543, -0.999826491, 7.48775506e-007, 0.99982655, -0.0186272524, 1, -8.11514042e-007, -3.36054404e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765115499, -1.70745683, -0.648082733, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765114546, -2.67957544, 0.0404930115, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178395, 0.602178395, 0.301089197))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765114546, 1.22139573, 1.94426727, 3.0770575e-006, -0.0581097528, 0.998310208, -2.63328701e-007, 0.998310268, 0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765119553, 1.05937505, 1.70123863, 3.0770575e-006, -0.0581097528, 0.998310208, -2.63328701e-007, 0.998310268, 0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.762408257, -0.827061415, 1.21516037, -3.37507754e-006, -0.0186272543, -0.999826491, 7.48775506e-007, 0.99982655, -0.0186272524, 1, -8.11514042e-007, -3.36054404e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.747216225, -0.125748396, 1.45819664, 4.17228148e-006, -0.00696193241, 0.999975801, 1.25727233e-008, -0.999975801, -0.00696193241, 1, 4.16195469e-008, -4.17209321e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765112877, -1.70745802, 1.2961731, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.324040294, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765115499, -2.43655133, 0.162014008, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.748129606, 0.59267354, 1.78223991, 4.92478148e-006, -0.0325459242, 0.999470294, 1.95389407e-006, 0.999470294, 0.0325459242, -1, 1.79257745e-006, 4.98576401e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.748113394, -0.754698992, 1.62021637, 4.92478148e-006, -0.0325459242, 0.999470294, -1.95389407e-006, -0.999470294, -0.0325459242, 1, -1.79257745e-006, -4.98576401e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765116215, -2.19351244, 1.01262856, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178395, 0.602178395, 0.301089197))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765115261, -1.70745802, 0.486061096, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.747226715, -0.125746727, 1.45819664, -4.17228148e-006, 0.00696193241, -0.999975801, 1.25727233e-008, -0.999975801, -0.00696193241, -1, -4.16195469e-008, 4.17209321e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.324040234, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765117168, -1.95048928, 1.13415146, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765108109, 1.22139502, 1.94426537, -3.0770575e-006, 0.0581097528, -0.998310208, -2.63328701e-007, 0.998310268, 0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748118162, 0.430658817, 1.53920555, -4.92478148e-006, 0.0325459242, -0.999470294, 1.95389407e-006, 0.999470294, 0.0325459242, 1, -1.79257745e-006, -4.98576401e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.324040234, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765118122, -1.95048904, 1.134161, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.762416363, -0.665042162, 1.45819473, 3.37507754e-006, 0.0186272543, 0.999826491, 7.48775506e-007, 0.99982655, -0.0186272524, -1, 8.11514042e-007, 3.36054404e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765115976, 1.05937576, 1.701231, -3.0770575e-006, 0.0581097528, -0.998310208, -2.63328701e-007, 0.998310268, 0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765121222, -2.67957473, 0.040517807, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178395, 0.602178395, 0.301089197))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765116215, -1.54543602, 1.45820045, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.324040234, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765114307, -1.95048833, -0.810119629, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.748123884, 0.430650949, 1.53920937, 4.92478148e-006, -0.0325459242, 0.999470294, 1.95389407e-006, 0.999470294, 0.0325459242, -1, 1.79257745e-006, 4.98576401e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765116692, -2.03149176, 0.324056625, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765115261, -2.19351339, 1.01265335, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178395, 0.602178395, 0.301089197))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765109539, -1.38341606, 1.70122528, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765111446, -1.54543734, 1.45820045, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.762411118, 0.503018379, 1.29616928, 3.37507754e-006, 0.0186272543, 0.999826491, -7.48775506e-007, -0.99982655, 0.0186272524, 1, -8.11514042e-007, -3.36054404e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748116255, 0.592680931, 1.78223801, -4.92478148e-006, 0.0325459242, -0.999470294, 1.95389407e-006, 0.999470294, 0.0325459242, 1, -1.79257745e-006, -4.98576401e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765113831, -1.70745885, 0.48607254, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.747227669, -0.03627491, 1.62022018, 4.17228148e-006, -0.00696193241, 0.999975801, -1.25727233e-008, 0.999975801, 0.00696193241, -1, -4.16195469e-008, 4.17209321e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.762413979, 0.503022194, 1.29617691, -3.37507754e-006, -0.0186272543, -0.999826491, -7.48775506e-007, -0.99982655, 0.0186272524, -1, 8.11514042e-007, 3.36054404e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.762410164, -0.989082813, 0.891119003, 3.37507754e-006, 0.0186272543, 0.999826491, 7.48775506e-007, 0.99982655, -0.0186272524, -1, 8.11514042e-007, 3.36054404e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.324040234, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.76511097, -1.95048797, -0.810102463, -3.0770575e-006, 0.0581097528, -0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, -1, -4.41690815e-007, 3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.747215271, -0.198294401, 1.37718201, -4.17228148e-006, 0.00696193241, -0.999975801, -1.25727233e-008, 0.999975801, 0.00696193241, 1, 4.16195469e-008, -4.17209321e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.748126745, -0.754693747, 1.620224, -4.92478148e-006, 0.0325459242, -0.999470294, -1.95389407e-006, -0.999470294, -0.0325459242, -1, 1.79257745e-006, 4.98576401e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.324040055))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.762410164, -0.989080429, 0.891130447, -3.37507754e-006, -0.0186272543, -0.999826491, 7.48775506e-007, 0.99982655, -0.0186272524, 1, -8.11514042e-007, -3.36054404e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Wedge",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Wedgeweld=weld(m,Torso,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.765118599, -2.19351244, -0.931638718, 3.0770575e-006, -0.0581097528, 0.998310208, 2.63328701e-007, -0.998310268, -0.0581097491, 1, 4.41690815e-007, -3.05655612e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.602178395, 0.602178395, 0.301089197))
TorsoPlate=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","TorsoPlate",Vector3.new(2.31588483, 2.31588507, 1.15794206))
TorsoPlateweld=weld(m,Torso,TorsoPlate,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -3.6926545e-007, -1.19208423e-007, 3.69265535e-007, 1, 1.0281799e-006, 1.19208039e-007, -1.02818001e-006, 1))
mesh("SpecialMesh",TorsoPlate,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Top=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Top",Vector3.new(0.298059583, 0.968693435, 0.968693376))
Topweld=weld(m,Torso,Top,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.208635807, -0.035364151, -0.820671439, 0.00956213661, 0.988532364, 0.150706545, 0.999447167, -0.0142472833, 0.0300388243, 0.0318415053, 0.150336012, -0.988122106))
mesh("SpecialMesh",Top,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,1,"Really black","Thingy",Vector3.new(1.49029779, 1.49029779, 1.49029732))
Thingyweld=weld(m,Torso,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.208635807, -0.035364151, -0.820671439, 0.00956213661, 0.988532364, 0.150706545, 0.999447167, -0.0142472833, 0.0300388243, 0.0318415053, 0.150336012, -0.988122106))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,1,"Really black","Thingy",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Thingyweld=weld(m,Torso,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.15794063, -0.578974009, 1, -3.6926545e-007, -1.19208423e-007, 3.69265535e-007, 1, 1.0281799e-006, 1.19208039e-007, -1.02818001e-006, 1))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,1,"Really black","Thingy",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Thingyweld=weld(m,Torso,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -3.6926545e-007, -1.19208423e-007, 3.69265535e-007, 1, 1.0281799e-006, 1.19208039e-007, -1.02818001e-006, 1))
Rotater=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,1,"Really black","Rotater",Vector3.new(1.4581809, 0.269056797, 0.269056618))
Rotaterweld=weld(m,Torso,Rotater,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-005, -1.13121462, -0.791614532, 1, -3.66035124e-007, -1.36351863e-008, 3.65074612e-007, 0.999022543, -0.0442037955, 2.98020097e-008, 0.0442037918, 0.999022543))
mesh("BlockMesh",Rotater,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.632287025, 0.632287025))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581206083, 0.82067585, -0.452648163, 0.00956213754, 0.988532364, 0.150706545, -0.0318401419, -0.150336027, 0.988122106, 0.999447227, -0.0142470784, 0.0300374757))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.58120656, 0.693037987, -0.0236797333, 0.0095621394, 0.988532364, 0.150706515, 0.472150922, -0.137318224, 0.870756686, 0.881465912, 0.0628299341, -0.468049437))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581206799, 0.820672274, 0.381921768, 0.00956213754, 0.988532364, 0.150706545, -0.0318401419, -0.150336027, 0.988122106, 0.999447227, -0.0142470784, 0.0300374757))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581205845, 0.379707336, -1.14569569, 0.00956213754, 0.988532364, 0.150706545, 0.849627018, -0.087506257, 0.520073593, 0.527297318, 0.123071358, -0.840720475))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581204176, 0.693037033, -0.858251572, 0.0095621394, 0.988532364, 0.150706515, 0.472150922, -0.137318224, 0.870756686, 0.881465912, 0.0628299341, -0.468049437))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.58120656, 0.379709244, -0.31111908, 0.00956213754, 0.988532364, 0.150706545, 0.849627018, -0.087506257, 0.520073593, 0.527297318, 0.123071358, -0.840720475))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581205845, -0.0353603363, -0.403386831, 0.00956213661, 0.988532364, 0.150706545, 0.999447167, -0.0142472833, 0.0300388243, 0.0318415053, 0.150336012, -0.988122106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581206083, 0.440961838, 0.275751114, 0.00956213661, 0.988532364, 0.150706559, -0.881467283, -0.0628295392, 0.468046933, 0.472148299, -0.137318432, 0.870758116))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581205606, -0.0353622437, -1.23795986, 0.00956213661, 0.988532364, 0.150706545, 0.999447167, -0.0142472833, 0.0300388243, 0.0318415053, 0.150336012, -0.988122106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.58120656, 0.440958023, 1.11032772, 0.00956213661, 0.988532364, 0.150706559, -0.881467283, -0.0628295392, 0.468046933, 0.472148299, -0.137318432, 0.870758116))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581207752, 0.728404999, 0.796998978, 0.00956213754, 0.988532364, 0.150706545, -0.527297497, -0.123071328, 0.840720415, 0.849626899, -0.0875062793, 0.520073831))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.596119165, 0.298059583, 0.298059464))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581202984, 0.728404999, -0.0375804901, 0.00956213754, 0.988532364, 0.150706545, -0.527297497, -0.123071328, 0.840720415, 0.849626899, -0.0875062793, 0.520073831))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.45819092, 0.754698038, 0.748122454, -1, 3.76418683e-007, 8.68019399e-008, 3.79044309e-007, 0.999470234, 0.0325459763, -7.45050244e-008, 0.0325459763, -0.999470294))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.62022591, 1.2213943, -0.765113354, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.62021637, 0.592677832, 0.748125792, -1, 3.76418683e-007, 8.68019399e-008, 3.79044309e-007, 0.999470234, 0.0325459763, -7.45050244e-008, 0.0325459763, -0.999470294))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13415146, -0.503018618, 0.762412071, -1, 3.66676517e-007, 8.25908515e-008, 3.65074612e-007, 0.999826491, -0.0186254568, -8.94060292e-008, -0.0186254568, -0.99982661))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.2961731, -0.665040731, 0.76241684, -1, 3.66676517e-007, 8.25908515e-008, 3.65074612e-007, 0.999826491, -0.0186254568, -8.94060292e-008, -0.0186254568, -0.99982661))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.324040294, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 2.43654728, -0.765115261, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178395, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.45820427, 1.22139287, -0.765118122, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.29617691, 0.125746727, -0.747215986, 1, -3.66875355e-007, -7.70607755e-008, 3.6740289e-007, 0.999975801, 0.00696118735, 7.45050244e-008, -0.00696118735, 0.999975801))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.62021828, 0.592675447, -0.748121977, 1, -3.76418683e-007, -8.68019399e-008, 3.79044309e-007, 0.999470234, 0.0325459763, 7.45050244e-008, -0.0325459763, 0.999470294))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.29616737, 0.125750065, 0.747226, -1, 3.66875355e-007, 7.70607755e-008, 3.6740289e-007, 0.999975801, 0.00696118735, -7.45050244e-008, 0.00696118735, -0.999975801))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.45819283, -0.0362722874, 0.747224569, -1, 3.66875355e-007, 7.70607755e-008, 3.6740289e-007, 0.999975801, 0.00696118735, -7.45050244e-008, 0.00696118735, -0.999975801))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.324040234, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.972127914, 1.95048511, -0.765117168, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.78224945, 1.22139525, -0.765118599, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.45820236, 0.754695892, -0.748122931, 1, -3.76418683e-007, -8.68019399e-008, 3.79044309e-007, 0.999470234, 0.0325459763, 7.45050244e-008, -0.0325459763, 0.999470294))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.45819092, 1.22139692, 0.765119791, -1, 3.72953053e-007, 5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, -2.98020097e-008, 0.0581099242, -0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13415718, -0.503019094, -0.762412548, 1, -3.66676517e-007, -8.25908515e-008, 3.65074612e-007, 0.999826491, -0.0186254568, 8.94060292e-008, 0.0186254568, 0.99982661))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.29618073, -0.665042162, -0.762412071, 1, -3.66676517e-007, -8.25908515e-008, 3.65074612e-007, 0.999826491, -0.0186254568, 8.94060292e-008, 0.0186254568, 0.99982661))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.45819855, -0.0362737179, -0.747215509, 1, -3.66875355e-007, -7.70607755e-008, 3.6740289e-007, 0.999975801, 0.00696118735, 7.45050244e-008, -0.00696118735, 0.999975801))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.486060381, 0.486060351, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 2.03149509, -0.765115738, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.324040234, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.972139359, 1.95048487, -0.765118837, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 1, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.889875174, 0.154390335, 0.275603294, -0.062787652, 0.678635657, -0.731786489, -0.802308917, -0.470427632, -0.36742115, -0.593597651, 0.564049304, 0.574012399))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.133565187, -0.946166992, -1.17463303, -0.285959959, 0.191900969, 0.938829541, 0.418114185, 0.906544328, -0.0579474904, -0.86221081, 0.375967294, -0.339471906))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.467334747, 1.53345776, -0.273681641, -0.1970229, 0.133019447, 0.971333027, -0.431518823, -0.901388824, 0.0359126739, 0.880325854, -0.412072808, 0.234994635))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493500233, 0.89673233, 1.19842553, 0.0593936704, 0.163172126, 0.984808266, -0.993998647, -0.0811220109, 0.0733889937, 0.0918646604, -0.983256876, 0.157374725))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457210541, -0.563624382, 0.759040833, 0.964792073, -0.0587382652, 0.25637117, 0.0184040964, 0.987431109, 0.156975046, -0.262369275, -0.146729976, 0.953746736))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.39790773, -0.685991764, 0.0942955017, -0.526801646, 0.708700359, 0.469280273, -0.220918164, 0.418967962, -0.880716205, -0.820777178, -0.567635298, -0.0641482323))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.429199219, -0.608520508, 0.81176734, 0.9942922, -0.0587362796, -0.0890685245, 0.0709807351, 0.987431526, 0.141211793, 0.0796548128, -0.146727934, 0.985964477))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.84607029, -0.973836899, 0.178848267, 0.148456052, -0.212016031, 0.965924501, 0.508260608, 0.854228675, 0.109383099, -0.848311305, 0.474702775, 0.23457481))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.604045868, -1.0249486, 0.263832092, 0.407527536, 0.0989383757, -0.907817543, -0.427939087, 0.898891389, -0.0941401795, 0.80671525, 0.426855266, 0.408662617))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.36949933, -0.396022797, 0.722441196, -0.205186471, 0.472654909, 0.857027411, -0.942335784, 0.141141459, -0.303450942, -0.264389664, -0.869871557, 0.416439295))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04170132, 0.0631771088, 1.20904791, -0.804778337, 0.142057031, 0.576326132, -0.593521178, -0.20573847, -0.778077364, 0.00804110337, -0.968241394, 0.24988769))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.331259727, -0.725406647, -1.35939169, 0.524626613, 0.664182484, -0.532567918, -0.838180661, 0.512508273, -0.186516851, 0.149064228, 0.544239819, 0.825580359))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.686542034, -0.550636768, -0.0993232727, -0.3318699, 0.877286851, -0.346742451, 0.457443327, -0.171798006, -0.872485638, -0.824989796, -0.448166698, -0.344294429))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(2.31588483, 1.18110144, 0.27790606))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 0.0463159084, 1.2158401, 1, -3.73921836e-007, -8.19568342e-008, -8.19555268e-008, 3.49432139e-006, -1, 3.73922092e-007, 1, 3.49432139e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.260799408, -1.51140213, -0.48869133, 0.450593263, 0.322661161, 0.83237946, 0.596649826, 0.584721565, -0.549645126, -0.664059341, 0.744305491, 0.0709558651))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.61225754, -0.531543732, -1.3760643, -0.0995981097, -0.142247632, 0.984807551, 0.981125295, -0.178907886, 0.0733838901, 0.165751129, 0.973528504, 0.157381609))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31264019, -0.659044266, 0.525595188, 0.524627745, 0.588429511, 0.615236938, -0.838179648, 0.230475545, 0.494303405, 0.149065629, -0.775004447, 0.614123464))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.444662094, -0.0697412491, 1.50261402, -0.606456757, -0.641864598, 0.469276249, -0.374242812, -0.290307224, -0.880717993, 0.701535821, -0.709740639, -0.0641544536))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.62021065, 1.22139692, 0.765119791, -1, 3.72953053e-007, 5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, -2.98020097e-008, 0.0581099242, -0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.2859683, -0.260293961, -0.890278816, 0.151335642, 0.979139566, 0.135584608, -0.651354492, 0.201953113, -0.731404424, -0.743528664, 0.0223739147, 0.668329716))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.36392212, 0.554615974, -0.502325058, 0.49382779, -0.56557107, 0.660502553, 0.604457855, -0.322781622, -0.728315055, 0.625111997, 0.758908153, 0.182465315))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.269056797, 0.269056797, 0.269056618))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.7822361, 1.22139645, 0.765118122, -1, 3.72953053e-007, 5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, -2.98020097e-008, 0.0581099242, -0.998310208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.602178097, 0.602178097, 0.602178097))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0374336243, 0.584028244, 1.47362626, 0.524629414, -0.503710747, 0.686323225, -0.83817929, -0.446770519, 0.312812418, 0.149062008, -0.739372492, -0.656588852))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.260770798, -0.408476353, -1.55779076, -0.793595552, 0.426002771, -0.434428126, -0.433595002, 0.104938321, 0.894976676, 0.426850736, 0.89861536, 0.101434082))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.578979492, -0.727826118, 1.04210448, 1, -1.68931834e-007, -2.03530885e-006, 1.01326816e-006, 0.906306505, 0.422621012, 1.77321942e-006, -0.422621012, 0.906306446))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.133127332, 1.17770731, -1.01434898, -0.167728797, 0.0449403338, 0.984808326, 0.167448893, -0.983145773, 0.0733837262, 0.971508086, 0.177213609, 0.157376647))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 2.31588507, 0.231588393))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0231609344, 2.38418579e-007, 1.15795326, 5.26005397e-006, -3.2559069e-006, 1, -1.37042662e-006, 1, 3.25591418e-006, -1, -1.37044378e-006, 5.26004942e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.33133698, -0.601902008, -0.579427719, 0.47407338, 0.87681061, -0.0803590193, -0.739348352, 0.445982277, 0.504444063, 0.478140652, -0.179730207, 0.859696805))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 2.31588507, 0.231588393))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0231528282, -2.14576721e-006, -1.15795517, 5.26005397e-006, -3.2559069e-006, 1, -1.37042662e-006, 1, 3.25591418e-006, -1, -1.37044378e-006, 5.26004942e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 1.38953114, 1.3895303))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.463187218, 0.0818805695, -0.0818824768, -5.26005397e-006, 3.25590645e-006, -1, -0.707107544, -0.707106054, 1.41715293e-006, -0.707105994, 0.707107604, 6.02169212e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.766065598, 0.389663696, -1.10708761, -0.685070157, 0.616743684, 0.387693495, 0.686095238, 0.367371917, 0.627942085, 0.244851619, 0.696179032, -0.674820364))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 1.15794241, 2.20008993))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.463183165, 0.578979492, -0.0578966141, -5.26005488e-006, 3.2559069e-006, -1, -1, -1.0432413e-007, 5.26005442e-006, -1.04307034e-007, 1, 3.25590736e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.347382724, 1.15794253, 2.20008993))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.463190317, 0.5789814, -0.0578963757, 5.26005488e-006, -3.2559069e-006, 1, 1, 1.0432413e-007, -5.26005442e-006, -1.04307034e-007, 1, 3.25590736e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(2.31588483, 1.20426035, 0.27790606))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.0347354412, -1.04214907, 1, -3.73921836e-007, -8.19568342e-008, -8.19555268e-008, 3.49432139e-006, -1, 3.73922092e-007, 1, 3.49432139e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(2.31588483, 2.31588507, 0.231588393))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 1.66893005e-006, -0.544238329, 1, -3.6926545e-007, -1.19208423e-007, 3.69265535e-007, 1, 1.0281799e-006, 1.19208039e-007, -1.02818001e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
NeckPart=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","NeckPart",Vector3.new(1.45818114, 0.269056797, 0.486060172))
NeckPartweld=weld(m,Torso,NeckPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.15794063, -0.578974009, 1, -3.6926545e-007, -1.19208423e-007, 3.69265535e-007, 1, 1.0281799e-006, 1.19208039e-007, -1.02818001e-006, 1))
mesh("BlockMesh",NeckPart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.602178097, 1))
Connection=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Connection",Vector3.new(0.347382724, 0.347382784, 0.347382575))
Connectionweld=weld(m,Torso,Connection,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110966682, 0.273664474, -0.731893063, 0.635109305, -0.766415834, -0.0961402357, -0.765569985, -0.641122282, 0.0535235517, -0.10265895, 0.0396087691, -0.993927777))
mesh("SpecialMesh",Connection,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Chain2Torso=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,1,"Really black","Chain2Torso",Vector3.new(0.810559809, 0.347382784, 0.347382575))
Chain2Torsoweld=weld(m,Torso,Chain2Torso,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555819035, 0.0578994751, 0.289486647, 5.26005488e-006, -3.2559069e-006, 1, -1, -1.0432413e-007, 5.26005442e-006, 1.04307034e-007, -1, -3.25590736e-006))
mesh("SpecialMesh",Chain2Torso,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.347382724, 0.347382784, 0.694765151))
Center=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Institutional white","Center",Vector3.new(0.745148897, 0.745148897, 0.745148659))
Center.Shape = "Cylinder"
Centerweld=weld(m,Torso,Center,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.655725956, -0.0353622437, -0.820671439, 0.00956213661, 0.988532364, 0.150706545, 0.999447167, -0.0142472833, 0.0300388243, 0.0318415053, 0.150336012, -0.988122106))
CapeLevel4=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","CapeLevel4",Vector3.new(2.75434232, 0.648080468, 0.269056618))
CapeLevel4weld=weld(m,Torso,CapeLevel4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 1.30240214, -0.765113831, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",CapeLevel4,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.602178097))
CapeLevel3=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","CapeLevel3",Vector3.new(2.75434232, 0.648080468, 0.269056618))
CapeLevel3weld=weld(m,Torso,CapeLevel3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.673684597, -0.748121977, 1, -3.76418683e-007, -8.68019399e-008, 3.79044309e-007, 0.999470234, 0.0325459763, 7.45050244e-008, -0.0325459763, 0.999470294))
mesh("BlockMesh",CapeLevel3,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.602178097))
CapeLevel2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","CapeLevel2",Vector3.new(2.43030214, 0.648080468, 0.269056618))
CapeLevel2weld=weld(m,Torso,CapeLevel2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.0447385311, -0.747221231, 1, -3.66875355e-007, -7.70607755e-008, 3.6740289e-007, 0.999975801, 0.00696118735, 7.45050244e-008, -0.00696118735, 0.999975801))
mesh("BlockMesh",CapeLevel2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.602178097))
CapeLevel1SubPart=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","CapeLevel1SubPart",Vector3.new(2.10626125, 0.648080468, 0.269056618))
CapeLevel1SubPartweld=weld(m,Torso,CapeLevel1SubPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, -0.584028721, -0.762417793, 1, -3.66676517e-007, -8.25908515e-008, 3.65074612e-007, 0.999826491, -0.0186254568, 8.94060292e-008, 0.0186254568, 0.99982661))
mesh("BlockMesh",CapeLevel1SubPart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.602178097))
CapeLevel1=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","CapeLevel1",Vector3.new(1.45818114, 0.269056797, 0.269056618))
CapeLevel1weld=weld(m,Torso,CapeLevel1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.989078999, -0.762407303, 1, -3.66676517e-007, -8.25908515e-008, 3.65074612e-007, 0.999826491, -0.0186254568, 8.94060292e-008, 0.0186254568, 0.99982661))
mesh("BlockMesh",CapeLevel1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.602178097, 0.602178097))
BottomRightFlap=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","BottomRightFlap",Vector3.new(0.486060381, 0.269056797, 0.269056618))
BottomRightFlapweld=weld(m,Torso,BottomRightFlap,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.972137451, 1.70745313, -0.765113354, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",BottomRightFlap,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.602178097, 0.602178097))
BottomLeftFlap=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","BottomLeftFlap",Vector3.new(0.486060381, 0.269056797, 0.269056618))
BottomLeftFlapweld=weld(m,Torso,BottomLeftFlap,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.972126007, 1.70745456, -0.765120268, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",BottomLeftFlap,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.602178097, 0.602178097))
BottomCenterFlap=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","BottomCenterFlap",Vector3.new(0.810100555, 0.269056797, 0.269056618))
BottomCenterFlapweld=weld(m,Torso,BottomCenterFlap,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 1.70745373, -0.765116215, 1, -3.72953053e-007, -5.1561404e-008, 3.75319047e-007, 0.998310208, 0.0581099242, 2.98020097e-008, -0.0581099242, 0.998310208))
mesh("BlockMesh",BottomCenterFlap,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.602178097, 0.602178097))
Bottom=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Bottom",Vector3.new(0.298059583, 0.968693435, 0.968693376))
Bottomweld=weld(m,Torso,Bottom,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02828908, -0.035364151, -0.820668697, 0.00956213661, 0.988532364, 0.150706545, 0.999447167, -0.0142472833, 0.0300388243, 0.0318415053, 0.150336012, -0.988122106))
mesh("SpecialMesh",Bottom,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
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

RightLeg=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1.15794241, 2.31588507, 1.15794206))
RightLegweld=weld(m,Character["Right Leg"],RightLeg,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00018119812, 3.89814377e-005, 5.54323196e-005, 1.00000525, 7.30808824e-006, -1.24424696e-006, -7.76676461e-006, 0.999999881, 5.23030758e-006, 1.33365393e-006, -4.70876694e-006, 1.00000513))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 2.31588507, 0.231588393))
Partweld=weld(m,RightLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.25169754e-006, -0.544236183, 1, 4.55877512e-007, -8.94062495e-008, -4.55877569e-007, 1, -5.17815351e-007, 8.9406015e-008, 5.17815408e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.14636242))
Partweld=weld(m,RightLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.25169754e-006, -0.544236183, 1, 4.55877512e-007, -8.94062495e-008, -4.55877569e-007, 1, -5.17815351e-007, 8.9406015e-008, 5.17815408e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.14636242))
Partweld=weld(m,RightLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, -1.10005224, 0.0057888031, 7.22698587e-007, 7.04080492e-007, 1, -8.16761144e-007, 1, -7.0407998e-007, -1, -8.16760632e-007, 7.22699156e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 2.31588507, 0.231588393))
Partweld=weld(m,RightLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0231599808, 1.66893005e-006, 0.578979492, 7.22698587e-007, 7.04080492e-007, 1, -8.16761144e-007, 1, -7.0407998e-007, -1, -8.16760632e-007, 7.22699156e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.231588483, 0.694765568, 0.926353574))
Partweld=weld(m,RightLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.636871338, -0.347382158, 2.02655792e-006, 1, 4.55877512e-007, -8.94062495e-008, -4.55877569e-007, 1, -5.17815351e-007, 8.9406015e-008, 5.17815408e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(0.277906209, 0.347382784, 1.04214776))
Partweld=weld(m,RightLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.636875153, -0.810557902, 5.24520874e-006, 1, 4.55877512e-007, -8.94062495e-008, -4.55877569e-007, 1, -5.17815351e-007, 8.9406015e-008, 5.17815408e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
RightLegPlate=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","RightLegPlate",Vector3.new(1.15794241, 2.31588507, 1.15794206))
RightLegPlateweld=weld(m,RightLeg,RightLegPlate,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 4.55877512e-007, -8.94062495e-008, -4.55877569e-007, 1, -5.17815351e-007, 8.9406015e-008, 5.17815408e-007, 1))
mesh("SpecialMesh",RightLegPlate,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,1,"Really black","Thingy",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Thingyweld=weld(m,RightLeg,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 4.55877512e-007, -8.94062495e-008, -4.55877569e-007, 1, -5.17815351e-007, 8.9406015e-008, 5.17815408e-007, 1))
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

LeftLeg=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1.15794241, 2.31588507, 1.15794206))
LeftLegweld=weld(m,Character["Left Leg"],LeftLeg,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000133514404, 4.48226929e-005, 0.000154972076, 1.00000536, 7.51018524e-006, -2.9951334e-006, -6.02006912e-006, 1.00000036, -2.51829624e-006, 3.12924385e-006, 1.22189522e-006, 1.00000525))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Really black","Thingy",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Thingyweld=weld(m,LeftLeg,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161024094, 0.0754995346, 0.1791749, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Really black","Thingy",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Thingyweld=weld(m,LeftLeg,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -1.50127585e-006, -1.34110977e-007, 1.50127607e-006, 1, 1.29640057e-006, 1.3410903e-007, -1.29640068e-006, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.1510849, 0.980996728, -0.336791515, 0.993920326, -0.036682643, 0.103862174, -0.0910167098, -0.804596543, 0.586809933, 0.0620404109, -0.592688322, -0.803042591))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.151092529, 1.26928186, -0.865237236, -0.993920326, 0.036682643, -0.103862174, 0.103972733, 0.623779058, -0.774659514, 0.0363692194, -0.780739784, -0.623799443))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.463176787))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.151090622, -1.52366805, 1.05465746, -0.993920326, 0.036682643, -0.103862174, -0.0910167098, -0.804596543, 0.586809933, -0.0620404109, 0.592688322, 0.803042591))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.151096344, 1.21092963, -0.301928997, 0.993920326, -0.036682643, 0.103862174, -0.110141441, -0.31913656, 0.941292226, -0.00138432905, -0.946998894, -0.32123524))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.463176787))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.151092529, -1.77704191, 0.80128181, 0.993920326, -0.036682643, 0.103862174, 0.0620407015, -0.592685461, -0.803044617, 0.0910165161, 0.804598629, -0.586807132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.179167271, 0.961149216, -0.316961288, 0.108224489, 0.149845406, -0.98277384, 0.688318789, -0.724581361, -0.0346797705, -0.717297256, -0.672702432, -0.181558058))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.151079178, 0.858048439, -0.239708185, -0.993920326, 0.036682643, -0.103862174, 0.103025757, -0.0239993036, -0.994394422, -0.0389711075, -0.999038994, 0.0200753957))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.1510849, 0.727626324, -0.0834364891, -0.993920326, 0.036682643, -0.103862174, 0.0620407015, -0.592685461, -0.803044617, -0.0910165161, -0.804598629, 0.586807132))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.151090622, 1.00288773, -0.581785679, -0.993920326, 0.036682643, -0.103862174, 0.110141441, 0.31913656, -0.941292226, -0.00138432905, -0.946998894, -0.32123524))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.179172993, 1.18329048, -0.29706049, 0.108224489, 0.149845406, -0.98277384, 0.975262642, -0.207696214, 0.0757294074, -0.192772135, -0.966648459, -0.168615162))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.151094437, 1.35576868, -0.519560099, 0.993920326, -0.036682643, 0.103862174, -0.103025757, 0.0239993036, 0.994394422, -0.0389711075, -0.999038994, 0.0200753957))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161022186, -0.735056877, 0.179180145, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.179173946, 1.32814789, -0.524433374, 0.108224489, 0.149845406, -0.98277384, 0.98237884, 0.135443568, 0.128832281, 0.152413785, -0.979388535, -0.132545337))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.289485633, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161026001, -0.561367989, 0.179173946, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.463176787))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.179172039, -1.75719261, 0.821136475, 0.10822434, 0.14984639, -0.982773721, -0.717300296, -0.672699213, -0.18155849, -0.688315809, 0.724584341, 0.0346813798))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.16952205, 0.463177025, 1.16952133))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161024094, 0.770261765, 0.179182529, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.151107788, 1.57963753, -0.686078191, 0.993920326, -0.036682643, 0.103862174, -0.0834837258, 0.364242464, 0.927559257, -0.0718576685, -0.930581808, 0.358966589))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.289485633, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161026001, 0.133398533, 0.179174423, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.19268084, 0.231588513, 1.19268036))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161022186, 0.770258427, 0.179182053, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.289485633, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161027908, -0.213982582, 0.179175854, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161022186, -0.735055447, 0.179176807, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.15794241, 0.405279845, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161027908, -0.908755302, 0.179171562, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.12, 1.01999998, 1.12))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.19268084, 0.231588513, 1.19268036))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161022186, 0.770259857, 0.179180622, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.50999999, 1.02999997))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.231588557, 0.694765151))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.17917347, 1.55530548, -0.700099945, 0.108224489, 0.149845406, -0.98277384, 0.871007442, 0.462242424, 0.166395575, 0.479211986, -0.874001622, -0.0804893076))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161018372, -0.387676716, 0.179171085, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.1811012, 0.347382784, 1.18110085))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161026001, 0.770268917, 0.179183006, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.289485633, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161027908, 0.480774641, 0.179176807, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161022186, -0.735056877, 0.179180145, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161026001, 0.307086229, 0.179175377, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161022186, -0.0403020382, 0.179175377, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161026001, 0.307086229, 0.179175377, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161018372, -0.387676716, 0.179171085, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161022186, -0.0403020382, 0.179175377, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.14636242))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.15794134, -3.81469727e-006, 1, -1.50127585e-006, -1.34110977e-007, 1.50127607e-006, 1, 1.29640057e-006, 1.3410903e-007, -1.29640068e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.13478315))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 1.15793812, -0.0115852356, 7.45050215e-007, 1.63910443e-007, 1, 6.63094738e-007, 1, -1.6391084e-007, -1, 6.63094909e-007, 7.45050102e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 2.31588507, 0.231588393))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0231609344, 4.76837158e-007, -0.578975677, 7.45050215e-007, 1.63910443e-007, 1, 6.63094738e-007, 1, -1.6391084e-007, -1, 6.63094909e-007, 7.45050102e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.231588483, 0.694765568, 0.926353574))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.694774628, -0.347383499, 1.90734863e-006, 1, -1.50127585e-006, -1.34110977e-007, 1.50127607e-006, 1, 1.29640057e-006, 1.3410903e-007, -1.29640068e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.277906209, 0.347382784, 1.04214776))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.694776535, -0.810561419, -4.76837158e-007, 1, -1.50127585e-006, -1.34110977e-007, 1.50127607e-006, 1, 1.29640057e-006, 1.3410903e-007, -1.29640068e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 2.31588507, 0.231588393))
Partweld=weld(m,LeftLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.1920929e-006, -0.544242382, 1, -1.50127585e-006, -1.34110977e-007, 1.50127607e-006, 1, 1.29640057e-006, 1.3410903e-007, -1.29640068e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.01999998, 1.01999998))
LeftLegPlate=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","LeftLegPlate",Vector3.new(1.15794241, 2.31588507, 1.15794206))
LeftLegPlateweld=weld(m,LeftLeg,LeftLegPlate,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -1.50127585e-006, -1.34110977e-007, 1.50127607e-006, 1, 1.29640057e-006, 1.3410903e-007, -1.29640068e-006, 1))
mesh("SpecialMesh",LeftLegPlate,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
LeftArmPlate=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","LeftArmPlate",Vector3.new(1.15794241, 2.31588507, 1.15794206))
LeftArmPlateweld=weld(m,LeftLeg,LeftArmPlate,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161024094, 0.0754995346, 0.1791749, 0.993920326, -0.036682643, 0.103862174, 0.0204888508, 0.988028944, 0.152904108, -0.108227834, -0.149846375, 0.982773423))
mesh("SpecialMesh",LeftArmPlate,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
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

RightArm=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1.15794241, 2.31588507, 1.15794206))
RightArmweld=weld(m,Character["Right Arm"],RightArm,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.2479248e-005, -6.81877136e-005, -8.96453857e-005, 1.00000477, 8.61287117e-006, 1.9967556e-006, -1.12652779e-005, 1.00000048, 7.58469105e-006, -1.81794167e-006, -6.91413879e-006, 1.00000525))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 2.46054459, 1.43142343, -1, -2.66127654e-006, 1.57076926e-007, 2.68218287e-007, -0.0418140404, 0.999125361, -2.65238077e-006, 0.999125481, 0.0418140329))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.669281721, 0.0669281706))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -2.26016235, 0.547384262, 1, 2.64315258e-006, -1.19513444e-007, 6.85446707e-007, -0.302428067, -0.953172266, -2.55552413e-006, 0.953172207, -0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.98717022, -0.612564564, 1, 2.64315258e-006, -1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.02733135, 0.703719139, 1, 2.64315258e-006, -1.19513444e-007, 6.85446707e-007, -0.302428067, -0.953172266, -2.55552413e-006, 0.953172207, -0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.870066345, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 2.60143757, 1.38596237, -1, -2.69849602e-006, 1.55521903e-007, 2.68218287e-007, -0.0418130644, 0.999125421, -2.68963322e-006, 0.999125421, 0.0418130644))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.468497276, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.444301665, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -2.00566387, 2.89244747, 1, 2.6687635e-006, -2.67961553e-007, -2.14574629e-006, 0.736055076, -0.676921666, -1.60930972e-006, 0.676921666, 0.736055076))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 1, 0.468497276))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-006, -0.86508131, 3.48251486, 1, 2.6641851e-006, -1.88722822e-007, -2.59650187e-006, 0.953171849, -0.302429378, -6.25842631e-007, 0.302429378, 0.95317179))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.261019886, 0.337987304, 0.204131007))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.363985538, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.726234913, -3.41800642, -1, -2.6641851e-006, 1.88722822e-007, -2.59650187e-006, 0.953171849, -0.302429378, 6.25842631e-007, -0.302429378, -0.95317179))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.261019886, 1, 0.307869673))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.375947565, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -2.19601345, 2.47868538, 1, 2.66916186e-006, -2.27852325e-007, -1.43049749e-006, 0.46014452, -0.887844026, -2.26495445e-006, 0.887844086, 0.46014449))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 1, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 1.4572401, -0.805434227, 1, 2.64315258e-006, -1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.88207722, 0.737891674, 1, 2.64315258e-006, -1.19513444e-007, 6.85446707e-007, -0.302428067, -0.953172266, -2.55552413e-006, 0.953172207, -0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.73067665, -0.771262646, -1, -2.64315258e-006, 1.19513444e-007, 6.85446707e-007, -0.302428067, -0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.535425484, 0.401569068))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -2.2605896, -0.595478535, -1, -2.64558412e-006, -1.25542533e-006, 1.99673605e-006, -0.302428305, -0.953172147, 2.142021e-006, -0.953172147, 0.302428335))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.535425484, 0.267712682))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-005, -2.30016232, 2.02706051, 1, 2.66337429e-006, -2.27369497e-007, -1.01326907e-006, 0.298981637, -0.954258919, -2.47356866e-006, 0.954258978, 0.298981607))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.736209989, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.256327868, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 2.4043808, 0.714627266, -1, -2.68087138e-006, 1.71889255e-007, -4.17228421e-007, 0.218203604, 0.975903332, -2.65377776e-006, 0.975903273, -0.218203604))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 1, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.57500267, 0.883415222, 1, 2.68576264e-006, -1.33036153e-007, 6.85446707e-007, -0.302429199, -0.953171909, -2.60022716e-006, 0.953171849, -0.302429259))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.803138077, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.32908344, -0.865260601, 1, 2.64315258e-006, -1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.736209989, 0.334640861))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 2.26016045, -0.513202667, 1, 2.64315258e-006, -1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.4382906, 0.917600632, 1, 2.68576264e-006, -1.33036153e-007, 6.85446707e-007, -0.302429199, -0.953171909, -2.60022716e-006, 0.953171849, -0.302429259))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 1.43829155, -0.883426666, 1, 2.64315258e-006, -1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.27341637, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -2.6397438, 1.08857489, 1, 2.68279609e-006, -2.11488981e-007, -8.94060932e-008, -0.0454244688, -0.998967826, -2.68963322e-006, 0.998967826, -0.0454244725))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 1, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -2.54629135, 1.7768563, 1, 2.64221262e-006, -1.51566169e-007, -7.15248746e-007, 0.214674726, -0.976685584, -2.54807355e-006, 0.976685643, 0.214674711))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.803138077, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-006, -2.55067062, -0.496123791, -1, -2.68576264e-006, 1.33036153e-007, 6.85446707e-007, -0.302429199, -0.953171909, 2.60022716e-006, -0.953171849, 0.302429259))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.669281721, 0.267712682))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 2.22960949, 1.08858275, -1, -2.68279609e-006, 2.11488981e-007, 8.94060932e-008, 0.0454244688, 0.998967826, -2.68963322e-006, 0.998967826, -0.0454244725))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.401569068))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 1.64284229, 0.772068501, -1, -2.64315258e-006, 1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, -2.55552413e-006, 0.953172207, -0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.401569068))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 2.29795933, 1.0885694, -1, -2.68279609e-006, 2.11488981e-007, 8.94060932e-008, 0.0454244688, 0.998967826, -2.68963322e-006, 0.998967826, -0.0454244725))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 2.43908405, 1.32615495, -1, -2.66127654e-006, 1.57076926e-007, 2.68218287e-007, -0.0418140404, 0.999125361, -2.65238077e-006, 0.999125481, 0.0418140329))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.870066345, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -2.73761082, 0.714626312, 1, 2.68087138e-006, -1.71889255e-007, 4.17228421e-007, -0.218203604, -0.975903332, -2.65377776e-006, 0.975903273, -0.218203604))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.464807898, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 1.99540997, -2.8070097, 1, 2.6687635e-006, -2.67961553e-007, 2.14574629e-006, -0.736055076, 0.676921666, 1.60930972e-006, -0.676921666, -0.736055076))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 1, 0.200784534))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 1.91881561, -0.672381401, 1, 2.64315258e-006, -1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.334640861))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.45725441, 0.839617252, 1, 2.64315258e-006, -1.19513444e-007, 6.85446707e-007, -0.302428067, -0.953172266, -2.55552413e-006, 0.953172207, -0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 2.73761082, -0.680442333, 1, 2.68087138e-006, -1.71889255e-007, -4.17228421e-007, 0.218203604, 0.975903332, 2.65377776e-006, -0.975903273, 0.218203604))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-006, -2.84867954, 0.680433273, 1, 2.68087138e-006, -1.71889255e-007, 4.17228421e-007, -0.218203604, -0.975903332, -2.65377776e-006, 0.975903273, -0.218203604))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.602353632, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.199049, 0.909050465, -1, -2.64315258e-006, 1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, -2.55552413e-006, 0.953172207, -0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.200784534))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.452845901, 0.257182181))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -2.00139713, 2.96037817, 1, 2.61039918e-006, -1.33312625e-007, -2.01163721e-006, 0.736053944, -0.676922858, -1.66891368e-006, 0.676922798, 0.736053944))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.261019886, 1, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.88208294, -0.703710079, 1, 2.64315258e-006, -1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.14907455, -0.564464569, 1, 2.64315258e-006, -1.19513444e-007, -6.85446707e-007, 0.302428067, 0.953172266, 2.55552413e-006, -0.953172207, 0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.602353632, 0.267712682))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.375947565, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-006, -1.68729591, 3.05648708, 1, 2.60357319e-006, -1.40043085e-007, -1.95203302e-006, 0.711981058, -0.702198744, -1.72851776e-006, 0.702198684, 0.711981118))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 1, 0.264366329))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.98717022, 0.646746635, 1, 2.64315258e-006, -1.19513444e-007, 6.85446707e-007, -0.302428067, -0.953172266, -2.55552413e-006, 0.953172207, -0.302428097))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.133856341))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Wedge",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Wedgeweld=weld(m,RightArm,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, -2.29796124, -1.08003545, -1, -2.68279609e-006, 2.11488981e-007, -8.94060932e-008, -0.0454244688, -0.998967826, 2.68963322e-006, -0.998967826, 0.0454244725))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.267712742, 0.334640861))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Really black","Thingy",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Thingyweld=weld(m,RightArm,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Really black","Thingy",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Thingyweld=weld(m,RightArm,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.0173196793, -1.24344516, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
RightArmPlate=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","RightArmPlate",Vector3.new(1.15794241, 2.31588507, 1.15794206))
RightArmPlateweld=weld(m,RightArm,RightArmPlate,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",RightArmPlate,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.289485633, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.0578970909, 1.90734863e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.463181257, -9.53674316e-007, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.231586933, -3.81469727e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 1.15794253, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -0.810558319, -9.53674316e-007, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.15794241, 0.405279845, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.984254003, -4.76837158e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.12, 1.01999998, 1.12))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.289485633, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -0.636867166, -9.53674316e-007, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.231587887, -1.90734863e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.16952205, 0.463177025, 1.16952133))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.694762707, 3.81469727e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.19268084, 0.231588513, 1.19268036))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.694762707, 3.81469727e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.289485633, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 0.405277252, -2.86102295e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.19268084, 0.231588513, 1.19268036))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.694762707, 3.81469727e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.50999999, 1.02999997))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.1811012, 0.347382784, 1.18110085))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.694762707, 3.81469727e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.463181138, 0, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -0.810558319, -9.53674316e-007, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.115798593, 1.90734863e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.115798593, 1.90734863e-006, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.15794241, 0.231588557, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -0.810558319, -9.53674316e-007, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.15794241, 0.289485633, 1.15794206))
Partweld=weld(m,RightArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -0.289483666, 9.53674316e-007, 1, 2.65238054e-006, -1.49011981e-007, -2.65238077e-006, 1, -6.85453131e-007, 1.49010162e-007, 6.85453529e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Hitbox=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,1,"Really black","Hitbox",Vector3.new(0.254747361, 2.97591233, 1.41268909))
Hitboxweld=weld(m,RightArm,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.00765228, -1.05965519, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Handle=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Handle",Vector3.new(0.255326271, 1.12784231, 0.255326182))
Handleweld=weld(m,RightArm,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.0173196793, -1.24344516, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.602353573, 1, 0.602353573))
Circle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0.0099999997764826,0,"Really black","Circle",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Circleweld=weld(m,RightArm,Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.674771309, -1.34596896, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("CylinderMesh",Circle,"","",Vector3.new(0, 0, 0),Vector3.new(0.803138018, 0.401569068, 0.803138137))
Circle=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Circle",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Circleweld=weld(m,RightArm,Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.53806591, -1.10672927, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("CylinderMesh",Circle,"","",Vector3.new(0, 0, 0),Vector3.new(0.803138018, 0.133856371, 0.803138137))
Circle=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Circle",Vector3.new(0.27341637, 0.255326301, 0.307593256))
Circleweld=weld(m,RightArm,Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.606420517, -1.44851208, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("CylinderMesh",Circle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.401569068, 1))
Circle=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Circle",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Circleweld=weld(m,RightArm,Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.67475605, -1.38869739, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("CylinderMesh",Circle,"","",Vector3.new(0, 0, 0),Vector3.new(0.936994374, 0.133856371, 0.936994612))
Circle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0.0099999997764826,0,"Really black","Circle",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Circleweld=weld(m,RightArm,Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.674771309, -1.14091396, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("CylinderMesh",Circle,"","",Vector3.new(0, 0, 0),Vector3.new(0.803138018, 0.401569068, 0.803138137))
Circle=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Circle",Vector3.new(0.27341637, 0.255326301, 0.307593256))
Circleweld=weld(m,RightArm,Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.606423378, -1.03839397, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("CylinderMesh",Circle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.401569068, 1))
Circle=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Circle",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Circleweld=weld(m,RightArm,Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.674776077, -1.10672569, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("CylinderMesh",Circle,"","",Vector3.new(0, 0, 0),Vector3.new(0.936994374, 0.133856371, 0.936994612))
Circle=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Circle",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Circleweld=weld(m,RightArm,Circle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.538064957, -1.38015747, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("CylinderMesh",Circle,"","",Vector3.new(0, 0, 0),Vector3.new(0.803138018, 0.133856371, 0.803138137))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.0362863541, -1.26902533, -1, -2.64221262e-006, 1.51566169e-007, -7.15248746e-007, 0.214674726, -0.976685584, 2.54807355e-006, -0.976685643, -0.214674711))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.35823774, 2.58544731, -1, -2.65503695e-006, 1.96276559e-007, 2.60767774e-006, -0.991679251, -0.128733858, 5.36436573e-007, -0.128733858, 0.991679192))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, 0.151157379, -1.23497319, -1, -2.61780997e-006, 1.41003412e-007, -4.76832497e-007, 0.128734455, -0.991679072, 2.57787565e-006, -0.991679132, -0.12873444))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0.0099999997764826,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -0.674773216, -1.24344611, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.803138018, 0.401569068, 0.803138137))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -1.24344587, -0.598335266, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.602353573, 0.200784534, 0.468497276))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.31179643, 1.46939278, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.870066345, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.581251144, -1.24344063, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.736209869, 0.0669281855, 0.736209989))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.0662965775, -1.30507898, -1, -2.68087138e-006, 1.71889255e-007, 4.17228421e-007, -0.218203604, -0.975903332, 2.65377776e-006, -0.975903273, 0.218203604))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.315910339, -1.2434442, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.31180048, 1.7769928, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.870066345, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.31180501, 2.39218616, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.870066345, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.909052372, 1.31867981, -1, -2.6641851e-006, 1.88722822e-007, 2.59650187e-006, -0.953171849, 0.302429378, -6.25842631e-007, 0.302429378, 0.95317179))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -0.714622974, 2.6179781, -1, -2.65604967e-006, 2.27416905e-007, 2.64167056e-006, -0.975903153, 0.218204215, -3.57624373e-007, 0.21820423, 0.975903094))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-006, -0.0558214188, -1.25278521, -1, -2.69677867e-006, 2.09662787e-007, 1.49010162e-007, -0.132316932, -0.99120754, 2.70080909e-006, -0.99120748, 0.132316932))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -0.495346069, -1.24345183, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.20960975, 2.24283504, -1, -2.70933424e-006, 2.40596648e-007, 2.29475631e-006, -0.887843728, -0.460145235, 1.46029947e-006, -0.460145205, 0.887843788))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -0.684739113, -1.10383511, -1, -2.69683096e-006, 1.1437853e-007, 4.76832497e-007, -0.218202382, -0.975903571, 2.65680455e-006, -0.975903571, 0.218202382))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -0.114717484, -1.24240017, -1, -2.69677867e-006, 2.09662787e-007, 1.49010162e-007, -0.132316932, -0.99120754, 2.70080909e-006, -0.99120748, 0.132316932))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.36740315))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.28791618, 2.2882576, -1, -2.64884056e-006, 1.94009658e-007, 2.30965748e-006, -0.903362691, -0.428877562, 1.31128934e-006, -0.428877532, 0.903362691))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.803138077, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.737887859, 1.76245594, -1, -2.6641851e-006, 1.88722822e-007, 2.59650187e-006, -0.953171849, 0.302429378, -6.25842631e-007, 0.302429378, 0.95317179))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.384491593))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -2.95400333, 1.69169617, -1, -2.64601067e-006, 1.81898784e-007, 1.72851776e-006, -0.702199161, -0.711980641, 2.01163721e-006, -0.711980641, 0.702199161))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.535425484, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, 0.329908371, -1.21933508, -1, -2.6320181e-006, 1.89533438e-008, -3.57624373e-007, 0.128733456, -0.991679192, 2.60767774e-006, -0.991679311, -0.128733441))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.513194084, -2.37977886, -1, -2.6641851e-006, 1.88722822e-007, -2.59650187e-006, 0.953171849, -0.302429378, 6.25842631e-007, -0.302429378, -0.95317179))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.303915024, -1.22161031, -1, -2.68279609e-006, 2.11488981e-007, -8.94060932e-008, -0.0454244688, -0.998967826, 2.68963322e-006, -0.998967826, 0.0454244725))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -2.89244843, 1.62971401, -1, -2.65250901e-006, 1.31543374e-007, 1.69871578e-006, -0.67692095, -0.736055732, 2.04143907e-006, -0.736055732, 0.67692095))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, 1.29426956, -0.215376854, -1, -2.65006474e-006, 1.97856821e-007, -2.22025142e-006, 0.792252541, -0.610193431, 1.46029947e-006, -0.610193431, -0.792252481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.50196135))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -1.14091396, 2.39218998, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.08858013, -2.39195728, 1, 2.66046732e-006, -2.10475264e-007, 2.66728171e-006, -0.998967767, 0.0454250798, -8.94060932e-008, -0.0454250798, -0.998967767))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.870066345))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.14091396, 2.08458805, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.136481285, -1.24344659, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, 0.564152718, -1.24344468, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -1.24344945, -0.880298615, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.401568979, 0.200784534, 0.267712682))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -1.32615519, 2.63561153, -1, -2.66252232e-006, 1.86858784e-007, 2.65238077e-006, -0.999125481, -0.0418118425, 2.98020325e-007, -0.0418118425, 0.99912554))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.31179714, 1.1618042, -1, -2.66252232e-006, 1.86858784e-007, 2.65238077e-006, -0.999125481, -0.0418118425, 2.98020325e-007, -0.0418118425, 0.99912554))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.870066345, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.14091873, 1.46940136, -1, -2.66252232e-006, 1.86858784e-007, 2.65238077e-006, -0.999125481, -0.0418118425, 2.98020325e-007, -0.0418118425, 0.99912554))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.14091372, 0.854210854, -1, -2.66252232e-006, 1.86858784e-007, 2.65238077e-006, -0.999125481, -0.0418118425, 2.98020325e-007, -0.0418118425, 0.99912554))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.273416281))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.538062096, -1.24344826, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.803138018, 0.133856371, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.623969078, -1.18790841, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.234248638))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 0.46162796, -1.2434411, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.49517989, -0.513363838, -1, -2.6347584e-006, 1.11186338e-007, 2.62630397e-006, -0.991207361, 0.132317618, -2.38416249e-007, 0.132317603, 0.99120748))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.50196135))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.0492563248, -1.27411318, -1, -2.68087138e-006, 1.71889255e-007, 4.17228421e-007, -0.218203604, -0.975903332, 2.65377776e-006, -0.975903273, 0.218203604))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.61080265, -1.38317204, -1, -2.6725786e-006, 1.42622085e-007, 1.87752801e-006, -0.738497138, -0.674256623, 1.90732999e-006, -0.674256623, 0.738497198))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.50196135))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.14091206, 1.77699471, -1, -2.66252232e-006, 1.86858784e-007, 2.65238077e-006, -0.999125481, -0.0418118425, 2.98020325e-007, -0.0418118425, 0.99912554))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, 0.623965263, -1.29897022, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.234248638))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.140421867, -1.23787355, -1, -2.64221262e-006, 1.51566169e-007, -7.15248746e-007, 0.214674726, -0.976685584, 2.54807355e-006, -0.976685643, -0.214674711))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.333226025))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -1.53682613, 2.57889843, -1, -2.65503695e-006, 1.96276559e-007, 2.60767774e-006, -0.991679251, -0.128733858, 5.36436573e-007, -0.128733858, 0.991679192))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.936994493, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, 0.953944266, 0.945208549, -1, -2.62126127e-006, 1.2565873e-007, -2.53317262e-006, 0.976685643, 0.214674369, -6.85446707e-007, 0.214674354, -0.976685703))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.50196135))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.27341637, 0.255326301, 0.410124421))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.606421471, -1.24344897, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.401569068, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.449079514, -1.20890617, -1, -2.61780997e-006, 1.41003412e-007, -4.76832497e-007, 0.128734455, -0.991679072, 2.57787565e-006, -0.991679132, -0.12873444))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -1.14091277, 1.16180134, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.468497276, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, -1.31179833, 2.08459091, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.870066345, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.307593256))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.31180263, 0.854204178, -1, -2.61536616e-006, 1.29172264e-007, 2.60767774e-006, -0.999125421, -0.0418132544, 2.38416249e-007, -0.0418132506, 0.999125481))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.267712682, 0.870066345, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.805428505, -1.57686996, -1, -2.6641851e-006, 1.88722822e-007, -2.59650187e-006, 0.953171849, -0.302429378, 6.25842631e-007, -0.302429378, -0.95317179))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.212993622, -1.30018699, -1, -2.64221262e-006, 1.51566169e-007, -7.15248746e-007, 0.214674726, -0.976685584, 2.54807355e-006, -0.976685643, -0.214674711))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.125165939, -1.23724365, -1, -2.68279609e-006, 2.11488981e-007, -8.94060932e-008, -0.0454244688, -0.998967826, 2.68963322e-006, -0.998967826, 0.0454244725))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.669281721, 0.200784534, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -0.153880119, 1.45187426, -1, -2.60990191e-006, 1.53951405e-007, -1.07287315e-006, 0.46335119, 0.886174738, -2.3841626e-006, 0.886174798, -0.46335119))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.512426376, -1.2434473, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.736209869, 0.0669281855, 0.736209989))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, 0.529981613, -1.24344516, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.736209869, 0.0669281855, 0.736209989))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.273416281))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -0.674773216, -1.24344611, -1, -2.66127654e-006, 1.57076926e-007, -2.68218287e-007, 0.0418140404, -0.999125361, 2.65238077e-006, -0.999125481, -0.0418140329))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.936994374, 0.133856371, 1))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-006, -1.39732742, 0.701837063, -1, -2.66441702e-006, -1.19652304e-006, 4.17228421e-007, -0.535774171, 0.844361305, -2.89079708e-006, 0.844361246, 0.535774231))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.669281721))
Block=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0.40000000596046,0,"Really black","Block",Vector3.new(0.255326271, 0.255326301, 0.255326182))
Blockweld=weld(m,RightArm,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.612554073, -2.10679054, -1, -2.6641851e-006, 1.88722822e-007, -2.59650187e-006, 0.953171849, -0.302429378, 6.25842631e-007, -0.302429378, -0.95317179))
mesh("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.334640861, 0.133856371, 0.669281721))
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

Head=part(Enum.FormFactor.Symmetric,m,Enum.Material.Granite,0,0,"Really black","Handle",Vector3.new(2.30105209, 2.30104971, 2.30105209))
Headweld=weld(m,Character["Head"],Head,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0198020935, -0.246876717, 0.0707855225, 1.00000012, -7.4505806e-009, 1.49011612e-008, -7.4505806e-009, 1, 0, 1.49011612e-008, 0, 1))
mesh("SpecialMesh",Head,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=16952952",Vector3.new(0, 0, 0),Vector3.new(1.20805228, 1.2080512, 1.2080524))
Head=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Cool yellow","Head",Vector3.new(2.31588483, 1.15794253, 1.15794206))
Headweld=weld(m,Head,Head,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0198421478, 0.246718407, -0.0708589554, 1.00000525, -1.1920929e-007, -7.37607479e-006, -6.33299351e-007, 1.0000006, -1.02221966e-005, 7.09295273e-006, 6.97374344e-006, 1.00000477))
mesh("SpecialMesh",Head,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1.25, 1.25, 1.25))
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

LeftArm=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1.22597945, 2.45195937, 1.22597885))
LeftArmweld=weld(m,Character["Left Arm"],LeftArm,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000160217285, 9.48905945e-005, 0.000159263611, 1.00000477, -2.06381083e-006, 1.5348196e-006, 5.11109829e-006, 1.00000083, -3.60608101e-006, -7.74860382e-007, 1.31130219e-006, 1.00000489))
Thingy=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Really black","Thingy",Vector3.new(1.32315993, 1.32316041, 1.32315946))
Thingyweld=weld(m,LeftArm,Thingy,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827693939, 0.00258541107, 0.0328407288, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.529263675))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0714149475, -1.84987545, 0.977994084, 1.00000954, 3.00258398e-006, 7.59959221e-007, -2.64495611e-006, -0.707105398, -0.707113087, 1.59442425e-006, 0.707110643, -0.707114458))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.32315993, 0.330790102, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.082775116, -0.725151062, 0.0328397751, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.36285484, 0.264632106, 1.36285412))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827674866, 0.79648304, 0.0328454971, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.01748514e-006, 1.00000179, -1.43051147e-006, 7.74860382e-007, -3.1888485e-006, 1.00000989))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.50999999, 1.02999997))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0714168549, 1.36540222, -0.541126728, 1, -4.20935112e-006, -5.97195537e-008, 7.8975404e-007, 0.173647121, 0.984807968, -4.13503267e-006, -0.984807909, 0.173647135))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0714206696, 1.22896242, -0.232741833, 1.00000954, 3.00258398e-006, 7.59959221e-007, 1.78813934e-007, -0.17364943, 0.984818101, -3.13669443e-006, -0.984809339, -0.173646376))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.3496232, 0.396948099, 1.34962249))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827713013, 0.796488285, 0.0328474045, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.01748514e-006, 1.00000179, -1.43051147e-006, 7.74860382e-007, -3.1888485e-006, 1.00000989))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.36285484, 0.264632106, 1.36285412))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827693939, 0.796480179, 0.0328454971, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.01748514e-006, 1.00000179, -1.43051147e-006, 7.74860382e-007, -3.1888485e-006, 1.00000989))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.529263675))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0714168549, -1.80346227, 1.02441311, -1.00000954, -3.00258398e-006, -7.59959221e-007, -1.57952309e-006, -0.707110167, 0.707114875, 2.65240669e-006, 0.707105994, 0.70711267))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0714187622, 1.30074406, -0.552539349, -1.00000954, -3.00258398e-006, -7.59959221e-007, -1.78813934e-007, 0.17364943, -0.984818101, -3.13669443e-006, -0.984809339, -0.173646376))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0328359604, 1.26695824, -0.239453316, -1.51991844e-006, 1.78813934e-006, -1.00000989, 0.984816492, -0.173645645, 5.66244125e-007, -0.173652947, -0.984809995, 2.71201134e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0328359604, 1.64771271, -0.778144121, -1.51991844e-006, 1.78813934e-006, -1.00000989, 0.866035521, 0.500002861, -1.25169754e-006, 0.500001431, -0.866025805, 2.39908695e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0714111328, 1.0586009, -0.204127312, 1.00000954, 3.00258398e-006, 7.59959221e-007, -1.57952309e-006, -0.707110167, 0.707114875, -2.65240669e-006, -0.707105994, -0.70711267))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.529263675))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0328321457, -1.87717056, 0.950706959, -6.2584877e-007, 3.24845314e-006, -1.00000978, -0.707116902, -0.707109034, 3.27825546e-007, -0.707110107, 0.707107008, -1.52736902e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 0.264632106, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827674866, -0.923624516, 0.0328416824, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0714187622, 1.55743456, -0.830267906, -1.00000954, -3.00258398e-006, -7.59959221e-007, 8.34465027e-007, 0.500002623, -0.866035223, -2.97650695e-006, -0.866025925, -0.500002742))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0714130402, 1.01217651, -0.157720208, -1.00000954, -3.00258398e-006, -7.59959221e-007, -2.64495611e-006, -0.707105398, -0.707113087, -1.59442425e-006, -0.707110643, 0.707114458))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.32315993, 0.330790102, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827693939, -0.328203678, 0.0328435898, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.32315993, 0.330790102, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827713013, 0.0687475204, 0.0328426361, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.032831192, 1.08587694, -0.231422424, -1.51991844e-006, 1.78813934e-006, -1.00000989, 0.707112789, -0.707104445, 1.9967556e-006, -0.70711422, -0.707111537, 1.84774399e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(1.32315993, 0.330790102, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827732086, 0.465690613, 0.0328435898, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.400000006, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0328388214, 1.4034214, -0.534433365, -1.51991844e-006, 1.78813934e-006, -1.00000989, 0.984817863, 0.173650309, -4.17232513e-007, 0.173645705, -0.984809101, 2.69711018e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.33639181, 0.529264212, 1.33639085))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827693939, 0.796485424, 0.0328474045, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.01748514e-006, 1.00000179, -1.43051147e-006, 7.74860382e-007, -3.1888485e-006, 1.00000989))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0714263916, 1.61432362, -0.797444344, 1.00000954, 3.00258398e-006, 7.59959221e-007, 2.10106373e-006, 0.499999374, 0.866032481, -2.16066837e-006, -0.866027892, 0.500007272))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 1.32316041, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827655792, -0.923625469, 0.0328454971, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.32315993, 0.463106155, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827713013, -1.12209988, 0.0328369141, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.12, 1.01999998, 1.12))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.264631957, 0.264632106, 0.793895662))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0714092255, 1.16429901, -0.221354485, -1, 2.97660995e-006, 7.91533466e-007, -1.29638863e-006, -0.17364727, -0.984808028, -2.79394112e-006, -0.984807909, 0.173647299))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 0.264632106, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827693939, -0.526678562, 0.0328388214, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 0.264632106, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827693939, -0.526678562, 0.0328388214, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 0.264632106, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827674866, -0.129734039, 0.0328407288, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 0.264632106, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827674866, -0.129734039, 0.0328407288, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 0.264632106, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827655792, -0.923625469, 0.0328454971, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 0.264632106, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.082775116, 0.267219067, 0.0328416824, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.699999988, 1.05999994))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Granite,0,0,"Really black","Part",Vector3.new(1.32315993, 0.264632106, 1.32315946))
Partweld=weld(m,LeftArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.082775116, 0.267219067, 0.0328416824, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.01999998, 1.03999996))
LeftArmPlate=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","LeftArmPlate",Vector3.new(1.32315993, 2.64632082, 1.32315946))
LeftArmPlateweld=weld(m,LeftArm,LeftArmPlate,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827693939, 0.00258541107, 0.0328407288, 1.00000954, 3.00258398e-006, 7.59959221e-007, 3.00258398e-006, 1.00000179, -2.2649765e-006, 7.59959221e-007, -2.2649765e-006, 1.00000978))
mesh("SpecialMesh",LeftArmPlate,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))

wait(0.5)



local p = game.Players.LocalPlayer--300899323
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
local rj = root.RootJoint
local deb = false
local shot = 0
local stanceToggle = "Idle1"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local hb = game:GetService("RunService").Heartbeat
local Stepped = game:GetService("RunService").Stepped
math.randomseed(os.time())
hum.JumpPower = 100
hed.face:Remove()
fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao
game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)

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

Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
ks = false;
}

function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end

function NewPart(prnt,siz,cf,trans,anc,mat,col)
	local prt=Instance.new("Part")
	prt.Parent=prnt
	prt.Name="Part"
	prt.Size=siz
	prt.CanCollide=false
	prt.Anchored=anc
	prt.Locked=true
	prt.Transparency = trans
	prt.TopSurface=10
	prt.BottomSurface=10
	prt.FrontSurface=10
	prt.BackSurface=10
	prt.LeftSurface=10
	prt.RightSurface=10
	prt:BreakJoints()
	prt.CFrame=cf or CFrame.new(30,10,30)
	prt.Material=mat
	prt.BrickColor=BrickColor.new(col)
	m=Instance.new("SpecialMesh",prt)
	m.MeshType=6
	return prt
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
z = Instance.new("Sound",char) --Smile: print("â?º")
z.SoundId = "rbxassetid://403445112"--410761150, 411368002
z.Looped = true
z.Pitch = 0.72
z.Volume = 1
wait(0.1)
z:Play()
----------------------------------------------------
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
----------------------------------------------------
pr = Instance.new("Part",hed)
pr.BrickColor = BrickColor.new("Black")
pr.Material = "Metal"
pr.Reflectance = 0.04
pr.Anchored = false
pr.CanCollide = false
pr.Archivable = false
pr.Locked = true
pr.Size = Vector3.new(2,0.8,1)
prm = Instance.new("SpecialMesh",pr)
prm.MeshType = "FileMesh"
prm.MeshId = "rbxassetid://16952952"
prm.Scale = Vector3.new(1,1,1)
newWeld(hed, pr, 0, 0.35, 0)
pr.Weld.C1 = CFrame.new(0,0,0)
--Left Arm
m = Instance.new("Model")
m.Name = "LeftArm"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Granite
p1.CFrame = CFrame.new(-1.5, 5.73969078, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Size = Vector3.new(1, 0.200000048, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Granite
p2.CFrame = CFrame.new(-1.5, 6.03969383, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Size = Vector3.new(1, 0.200000048, 1)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Granite
p3.CFrame = CFrame.new(-1.5, 6.63968849, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Size = Vector3.new(1, 0.200000048, 1)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.SmoothPlastic
p4.Name = "LeftArmPlate"
p4.Size = Vector3.new(1, 2, 1)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.Material = Enum.Material.Granite
p5.CFrame = CFrame.new(-1.5, 6.33969307, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p5.Size = Vector3.new(1, 0.200000048, 1)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really black")
p6.Material = Enum.Material.Granite
p6.CFrame = CFrame.new(-1.5, 5.73969078, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.Size = Vector3.new(1, 0.200000048, 1)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.Granite
p7.CFrame = CFrame.new(-1.5, 6.03969383, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 0.200000048, 1)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.Granite
p8.CFrame = CFrame.new(-1.5, 6.33969307, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 0.200000048, 1)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Granite
p9.CFrame = CFrame.new(-1.5, 6.63968849, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 0.200000048, 1)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Black")
p10.Material = Enum.Material.SmoothPlastic
p10.CFrame = CFrame.new(-1.5, 6.78969193, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 0.349999994, 1)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1.12, 1.01999998, 1.12)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(-1.5, 6.48969078, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1, 0.25, 1)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Black")
p12.Material = Enum.Material.Metal
p12.CFrame = CFrame.new(-1.5, 6.18969154, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 0.25, 1)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Black")
p13.Material = Enum.Material.Metal
p13.CFrame = CFrame.new(-1.5, 5.88968849, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1, 0.25, 1)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(-1.5, 5.58969307, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 0.25, 1)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p14)
b14.MeshType = Enum.MeshType.Brick
b14.Name = "Mesh"
b14.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Granite
p15.CFrame = CFrame.new(-1.5, 6.63968849, 22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 1, 1)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p15)
b15.MeshType = Enum.MeshType.Sphere
b15.Name = "Mesh"
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Black")
p16.Material = Enum.Material.Metal
p16.CFrame = CFrame.new(-1.49142194, 4.80968094, 21.7695732, 1, 1.67448022e-007, -1.06342185e-007, -2.04123751e-007, 0.500000119, -0.866025269, -6.57511308e-008, 0.866025329, 0.5)
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p16)
b16.MeshType = Enum.MeshType.Brick
b16.Name = "Mesh"
b16.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Black")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(-1.50000083, 5.33968592, 22.4999943, 1, -9.44388034e-009, 5.2184074e-008, -7.54702114e-008, 0.999999881, 2.38418579e-007, 2.60919535e-008, 1.1920929e-007, 0.999999881)
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.01999998, 0.300000012, 1.01999998)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Brick
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(-1.50000072, 5.33968782, 22.4999962, 1, -3.77485776e-008, 7.82760807e-008, -1.03774902e-007, 0.999999881, 3.57627869e-007, 5.21839532e-008, 2.38418565e-007, 0.999999881)
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(1.00999999, 0.400000036, 1.00999999)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Brick
b18.Name = "Mesh"
b18.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Black")
p19.Material = Enum.Material.SmoothPlastic
p19.CFrame = CFrame.new(-1.5000006, 5.33968973, 22.4999981, 1, -6.60532748e-008, 1.04368084e-007, -1.32079592e-007, 0.999999881, 4.76837158e-007, 7.82759457e-008, 3.5762784e-007, 0.999999881)
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Brick
b19.Name = "Mesh"
b19.Scale = Vector3.new(1.02999997, 0.50999999, 1.02999997)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.SmoothPlastic
p20.CFrame = CFrame.new(-1.50000048, 5.33969164, 22.5, 1, -9.4357965e-008, 1.3046008e-007, -1.60384275e-007, 0.999999881, 5.96046448e-007, 1.04367942e-007, 4.76837101e-007, 0.999999881)
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("SpecialMesh", p20)
b20.MeshType = Enum.MeshType.Brick
b20.Name = "Mesh"
b20.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Black")
p21.Material = Enum.Material.Metal
p21.CFrame = CFrame.new(-1.93255413, 4.43040705, 22.5000057, -1.61368675e-007, -0.707106769, -0.707106769, -4.62050195e-007, -0.707106471, 0.707106948, -0.999999881, -5.86611463e-007, 4.45824725e-007)
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.200000003, 0.200000048, 0.399999976)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
b21.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Black")
p22.Material = Enum.Material.Metal
p22.CFrame = CFrame.new(-2.22184062, 4.80970049, 22.5000057, -6.50768897e-008, 0.866025269, 0.50000006, -7.82806978e-007, 0.499999732, -0.866025329, -0.999999881, 3.74247918e-007, -2.56530342e-007)
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p22)
b22.MeshType = Enum.MeshType.Brick
b22.Name = "Mesh"
b22.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Black")
p23.Material = Enum.Material.Metal
p23.CFrame = CFrame.new(-2.41184235, 5.35969734, 22.5000076, -1.73507274e-007, 0.98480767, 0.17364803, -8.28146199e-007, 0.173647702, -0.984807611, -0.999999881, 1.49283139e-007, -3.43238185e-007)
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p23)
b23.MeshType = Enum.MeshType.Brick
b23.Name = "Mesh"
b23.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Black")
p24.Material = Enum.Material.Metal
p24.CFrame = CFrame.new(-2.41184616, 5.92969847, 22.5000076, -1.73507232e-007, 0.984807611, -0.173648104, -8.12965368e-007, -0.173648402, -0.984807432, -0.999999881, 2.02498356e-008, -3.8854634e-007)
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p24)
b24.MeshType = Enum.MeshType.Brick
b24.Name = "Mesh"
b24.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Black")
p25.Material = Enum.Material.Metal
p25.CFrame = CFrame.new(-2.14142036, 6.39827347, 22.5000114, -7.7074823e-008, 0.707106829, -0.70710659, -7.54731559e-007, -0.707106769, -0.707106471, -0.999999881, -1.79262827e-007, -4.39258827e-007)
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("SpecialMesh", p25)
b25.MeshType = Enum.MeshType.Brick
b25.Name = "Mesh"
b25.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Black")
p26.Material = Enum.Material.Metal
p26.CFrame = CFrame.new(-1.49142087, 6.39827442, 23.1500168, -0.999999881, 1.1920929e-007, 2.68220901e-007, 1.49011612e-007, -0.707106948, -0.707106233, -1.77625395e-007, -0.707107306, 0.707106113)
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("SpecialMesh", p26)
b26.MeshType = Enum.MeshType.Brick
b26.Name = "Mesh"
b26.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Black")
p27.Material = Enum.Material.Metal
p27.CFrame = CFrame.new(-1.49141955, 5.92969704, 23.420433, -0.999999881, -3.03310628e-007, 3.64177367e-007, 1.73600242e-007, -0.173648864, -0.984807312, 2.67648517e-008, -0.98480773, 0.173647434)
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("SpecialMesh", p27)
b27.MeshType = Enum.MeshType.Brick
b27.Name = "Mesh"
b27.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Black")
p28.Material = Enum.Material.Metal
p28.CFrame = CFrame.new(-1.49141943, 5.35969734, 23.4204254, -0.999999881, -3.81113438e-007, 3.10304756e-007, 1.64414772e-007, 0.173647091, -0.984807551, -6.59209363e-008, -0.984807372, -0.17364876)
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("SpecialMesh", p28)
b28.MeshType = Enum.MeshType.Brick
b28.Name = "Mesh"
b28.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Black")
p29.Material = Enum.Material.Metal
p29.CFrame = CFrame.new(-1.49141932, 4.80969858, 23.2304344, -0.999999881, -4.47128798e-007, 1.98065763e-007, 1.97699791e-007, 0.499998987, -0.866025448, -1.51352623e-007, -0.866024613, -0.500000715)
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("SpecialMesh", p29)
b29.MeshType = Enum.MeshType.Brick
b29.Name = "Mesh"
b29.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Black")
p30.Material = Enum.Material.Metal
p30.CFrame = CFrame.new(-1.49142027, 4.43040895, 22.9411469, -0.999999881, 4.25206935e-007, 1.94115486e-007, 4.85997248e-007, -0.707105517, 0.707107246, -5.38012159e-008, 0.707105875, 0.707107246)
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.200000003, 0.200000048, 0.399999976)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p30)
b30.MeshType = Enum.MeshType.Wedge
b30.Name = "Mesh"
b30.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Black")
p31.Material = Enum.Material.Metal
p31.CFrame = CFrame.new(-1.49141979, 6.39827871, 21.8500175, 0.999999881, 3.40091276e-007, -1.70074486e-007, -5.85792634e-007, -0.707105458, -0.707107246, 1.83170471e-007, 0.707105815, -0.707107365)
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("SpecialMesh", p31)
b31.MeshType = Enum.MeshType.Brick
b31.Name = "Mesh"
b31.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Black")
p32.Material = Enum.Material.Metal
p32.CFrame = CFrame.new(-1.49141908, 4.43041086, 22.0588818, 0.999999881, -5.29441166e-008, -6.45117154e-007, -3.43892481e-007, -0.707107067, 0.707105517, 1.02492642e-007, -0.707107663, -0.707105637)
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.200000003, 0.200000048, 0.399999976)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("SpecialMesh", p32)
b32.MeshType = Enum.MeshType.Wedge
b32.Name = "Mesh"
b32.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Black")
p33.Material = Enum.Material.Metal
p33.CFrame = CFrame.new(-1.4914217, 5.92970181, 21.5795879, 0.999999881, 5.22213554e-007, 2.83446013e-008, -7.00635724e-007, -0.173646629, -0.984807253, 1.38921934e-007, 0.984807372, -0.17364946)
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Brick
b33.Name = "Mesh"
b33.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Black")
p34.Material = Enum.Material.Metal
p34.CFrame = CFrame.new(-1.49141932, 5.35969925, 21.5795956, 0.999999881, 5.04442426e-007, 2.22697935e-007, -7.44121166e-007, 0.17364943, -0.984806716, 1.65013844e-007, 0.984807849, 0.173646525)
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.200000003, 0.200000048, 0.599999964)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("SpecialMesh", p34)
b34.MeshType = Enum.MeshType.Brick
b34.Name = "Mesh"
b34.Scale = Vector3.new(1.04999995, 1.01999998, 1.03999996)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "LeftArmPlate_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(1.5, -18.1000156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(1.5, -18.1000156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(1.5, -18.950016, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(1.5, -18.950016, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(1.5, -18.6500149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(1.5, -18.6500149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(1.5, -18.3500156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(1.5, -18.3500156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(1.5, -18.0500126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(1.5, -18.0500126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(1.5, -17.7500172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(1.5, -17.7500172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(1.49142683, -27.338007, 3.81166649, 1, -2.04123751e-007, -6.57511308e-008, 1.67448022e-007, 0.500000119, 0.866025329, -1.06342185e-007, -0.866025269, 0.5)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(1.49142683, -27.338007, 3.81166649, 1, -2.04123751e-007, -6.57511308e-008, 1.67448022e-007, 0.500000119, 0.866025329, -1.06342185e-007, -0.866025269, 0.5)
w16.Part1 = p17
w16.C1 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w17.Part1 = p18
w17.C1 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w18.Part1 = p19
w18.C1 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w19.Part1 = p20
w19.C1 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(1.50000179, -17.5000076, -22.4999943, 1, -4.71655142e-008, -4.97379915e-014, 1.88608098e-008, 1, 2.98023224e-008, 2.60920601e-008, 8.94069672e-008, 1)
w20.Part1 = p21
w20.C1 = CFrame.new(22.4999943, 10.3648901, -13.0979404, -3.09086232e-008, 1.63798575e-007, -1, -0.707106888, -0.70710665, -9.39673512e-008, -0.70710665, 0.707106888, 1.37678796e-007)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(22.4999943, 10.3648901, -13.0979404, -3.09086232e-008, 1.63798575e-007, -1, -0.707106888, -0.70710665, -9.39673512e-008, -0.70710665, 0.707106888, 1.37678796e-007)
w21.Part1 = p22
w21.C1 = CFrame.new(22.4999981, -6.56083632, 15.8073826, 6.53831052e-008, -1.56958208e-007, -1, 0.866025388, 0.5, -2.18557226e-008, 0.5, -0.866025388, 1.68621398e-007)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(22.4999981, -6.56083632, 15.8073826, 6.53831052e-008, -1.56958208e-007, -1, 0.866025388, 0.5, -2.18557226e-008, 0.5, -0.866025388, 1.68621398e-007)
w22.Part1 = p23
w22.C1 = CFrame.new(22.5, -0.667109907, 17.6726532, -4.30473222e-008, -2.02297542e-007, -1, 0.984807789, 0.17364794, -7.75219178e-008, 0.17364794, -0.984807789, 1.91749166e-007)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(22.5, -0.667109907, 17.6726532, -4.30473222e-008, -2.02297542e-007, -1, 0.984807789, 0.17364794, -7.75219178e-008, 0.17364794, -0.984807789, 1.91749166e-007)
w23.Part1 = p24
w23.C1 = CFrame.new(22.5, 5.5165062, 17.3963699, -4.30473079e-008, -1.87116754e-007, -1, 0.98480773, -0.173648238, -9.9008588e-009, -0.173648238, -0.98480773, 1.91749152e-007)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(22.5, 5.5165062, 17.3963699, -4.30473079e-008, -1.87116754e-007, -1, 0.98480773, -0.173648238, -9.9008588e-009, -0.173648238, -0.98480773, 1.91749152e-007)
w24.Part1 = p25
w24.C1 = CFrame.new(22.5000019, 14.6371164, 11.6086912, 5.33850866e-008, -1.28882959e-007, -1, 0.707106829, -0.707106769, 1.28882959e-007, -0.707106769, -0.707106829, 5.33851079e-008)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(22.5000019, 14.6371164, 11.6086912, 5.33850866e-008, -1.28882959e-007, -1, 0.707106829, -0.707106769, 1.28882959e-007, -0.707106769, -0.707106829, 5.33851079e-008)
w25.Part1 = p26
w25.C1 = CFrame.new(-1.49141967, 29.4924316, -3.24661636, -1, -1.1920929e-007, -4.71654928e-008, 1.1920929e-007, -0.707106709, -0.707106888, 8.94069672e-008, -0.707106829, 0.70710665)
w26 = Instance.new("Weld", p26)
w26.Name = "Part_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(-1.49141967, 29.4924316, -3.24661636, -1, -1.1920929e-007, -4.71654928e-008, 1.1920929e-007, -0.707106709, -0.707106888, 8.94069672e-008, -0.707106829, 0.70710665)
w26.Part1 = p27
w26.C1 = CFrame.new(-1.49142396, 26.2059097, 13.748271, -1, -1.22925456e-007, 1.83316814e-007, -1.79966634e-007, -0.173648238, -0.98480773, 1.85296102e-007, -0.98480773, 0.173648149)
w27 = Instance.new("Weld", p27)
w27.Name = "Part_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(-1.49142396, 26.2059097, 13.748271, -1, -1.22925456e-007, 1.83316814e-007, -1.79966634e-007, -0.173648238, -0.98480773, 1.85296102e-007, -0.98480773, 0.173648149)
w27.Part1 = p28
w27.C1 = CFrame.new(-1.49142182, 20.0222931, 21.3207512, -1, -1.60415567e-007, 1.16723079e-007, -1.73416339e-007, 0.17364794, -0.98480773, 1.61053634e-007, -0.98480773, -0.173648015)
w28 = Instance.new("Weld", p28)
w28.Name = "Part_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(-1.49142182, 20.0222931, 21.3207512, -1, -1.60415567e-007, 1.16723079e-007, -1.73416339e-007, 0.17364794, -0.98480773, 1.61053634e-007, -0.98480773, -0.173648015)
w28.Part1 = p29
w28.C1 = CFrame.new(-1.49142063, 11.6331291, 26.311676, -1, -1.55435174e-007, 5.73833887e-008, -1.6416179e-007, 0.5, -0.866025329, 1.17385696e-007, -0.866025329, -0.500000119)
w29 = Instance.new("Weld", p29)
w29.Name = "Part_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-1.49142063, 11.6331291, 26.311676, -1, -1.55435174e-007, 5.73833887e-008, -1.6416179e-007, 0.5, -0.866025329, 1.17385696e-007, -0.866025329, -0.500000119)
w29.Part1 = p30
w29.C1 = CFrame.new(-1.49142897, -4.49042225, -27.9532433, -1, 1.04557571e-007, 1.81026579e-007, 9.25360411e-008, -0.70710665, 0.707106829, 2.00373876e-007, 0.707106888, 0.707106769)
w30 = Instance.new("Weld", p30)
w30.Name = "Part_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(-1.49142897, -4.49042225, -27.9532433, -1, 1.04557571e-007, 1.81026579e-007, 9.25360411e-008, -0.70710665, 0.707106829, 2.00373876e-007, 0.707106888, 0.707106769)
w30.Part1 = p31
w30.C1 = CFrame.new(1.49142683, -2.32737827, 28.5731888, 1, -1.76048474e-007, -7.77491636e-008, -3.10438502e-008, -0.707106709, 0.707106769, -1.77897419e-007, -0.707106829, -0.707106829)
w31 = Instance.new("Weld", p31)
w31.Name = "Part_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(1.49142683, -2.32737827, 28.5731888, 1, -1.76048474e-007, -7.77491636e-008, -3.10438502e-008, -0.707106709, 0.707106769, -1.77897419e-007, -0.707106829, -0.707106829)
w31.Part1 = p32
w31.C1 = CFrame.new(1.49142444, 27.3293839, 3.86655521, 1, 9.41566256e-008, -1.8451928e-007, -6.23315088e-008, -0.70710665, -0.707107008, -2.35517859e-007, 0.707106888, -0.70710659)
w32 = Instance.new("Weld", p32)
w32.Name = "Part_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(1.49142444, 27.3293839, 3.86655521, 1, 9.41566256e-008, -1.8451928e-007, -6.23315088e-008, -0.70710665, -0.707107008, -2.35517859e-007, 0.707106888, -0.70710659)
w32.Part1 = p33
w32.C1 = CFrame.new(1.49143207, -18.1104279, 21.5624332, 1, -2.34282282e-007, -1.74181523e-007, 1.61463277e-007, -0.173648089, 0.98480773, -2.37625457e-007, -0.98480773, -0.173648238)
w33 = Instance.new("Weld", p33)
w33.Name = "Part_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(1.49143207, -18.1104279, 21.5624332, 1, -2.34282282e-007, -1.74181523e-007, 1.61463277e-007, -0.173648089, 0.98480773, -2.37625457e-007, -0.98480773, -0.173648238)
w33.Part1 = p34
w33.C1 = CFrame.new(1.49143016, -24.2940445, 13.5065851, 1, -2.49463085e-007, -1.74181523e-007, 2.35634644e-007, 0.173648074, 0.98480773, -1.83021399e-007, -0.98480773, 0.17364794)
m.Parent = larm
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", larm.LeftArm)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 1, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = larm
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", larm.LeftArm)
weld1.Part0 = cor
weld1.Part1 = larm.LeftArm.LeftArmPlate
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Right Arm
m2 = Instance.new("Model")
m2.Name = "RightArm"
p1 = Instance.new("Part", m2)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Granite
p1.CFrame = CFrame.new(3.5, -9.44201183, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 0.200000048, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p2 = Instance.new("Part", m2)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Granite
p2.CFrame = CFrame.new(3.5, -9.74201393, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 0.200000048, 1)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p3 = Instance.new("Part", m2)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Granite
p3.CFrame = CFrame.new(3.5, -9.14201164, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 0.200000048, 1)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p4 = Instance.new("Part", m2)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.Granite
p4.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 0.200000048, 1)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p5 = Instance.new("Part", m2)
p5.BrickColor = BrickColor.new("Really black")
p5.Material = Enum.Material.Granite
p5.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 0.200000048, 1)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p6 = Instance.new("Part", m2)
p6.BrickColor = BrickColor.new("Really black")
p6.Material = Enum.Material.Granite
p6.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 1, 1)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Sphere
b6.Name = "Mesh"
p7 = Instance.new("Part", m2)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.SmoothPlastic
p7.Name = "RightArmPlate"
p7.CFrame = CFrame.new(3.5, -9.54201603, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 2, 1)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p8 = Instance.new("Part", m2)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.Granite
p8.CFrame = CFrame.new(3.5, -9.14201164, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 0.200000048, 1)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Black")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(3.5, -8.69201183, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 0.349999994, 1)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1.12, 1.01999998, 1.12)
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Black")
p10.Material = Enum.Material.Metal
p10.CFrame = CFrame.new(3.5, -8.99201584, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 0.25, 1)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(3.5, -9.29201508, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1, 0.25, 1)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Black")
p12.Material = Enum.Material.Metal
p12.CFrame = CFrame.new(3.5, -9.59201431, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 0.25, 1)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Granite
p13.CFrame = CFrame.new(3.5, -9.44201088, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1, 0.200000048, 1)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p14 = Instance.new("Part", m2)
p14.BrickColor = BrickColor.new("Black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(3.5, -9.89201069, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 0.25, 1)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p14)
b14.MeshType = Enum.MeshType.Brick
b14.Name = "Mesh"
b14.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p15 = Instance.new("Part", m2)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Granite
p15.CFrame = CFrame.new(3.5, -9.74201298, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 0.200000048, 1)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p15)
b15.MeshType = Enum.MeshType.Brick
b15.Name = "Mesh"
b15.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p16 = Instance.new("Part", m2)
p16.BrickColor = BrickColor.new("Black")
p16.Material = Enum.Material.SmoothPlastic
p16.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1.01999998, 0.300000012, 1.01999998)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p16)
b16.MeshType = Enum.MeshType.Brick
b16.Name = "Mesh"
b16.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p17 = Instance.new("Part", m2)
p17.BrickColor = BrickColor.new("Black")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.00999999, 0.400000036, 1.00999999)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Brick
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p18 = Instance.new("Part", m2)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Brick
b18.Name = "Mesh"
b18.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p19 = Instance.new("Part", m2)
p19.BrickColor = BrickColor.new("Black")
p19.Material = Enum.Material.SmoothPlastic
p19.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Brick
b19.Name = "Mesh"
b19.Scale = Vector3.new(1.02999997, 0.50999999, 1.02999997)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "RightArmPlate_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(-3.5, -4.10001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-3.5, -4.10001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(-3.5, -4.95002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-3.5, -4.95002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(-3.5, -4.65001678, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-3.5, -4.65001678, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(-3.5, -4.35001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-3.5, -4.35001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(-3.5, -4.05001783, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-3.5, -4.05001783, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(-3.5, -3.75002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-3.5, -3.75002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p17
w16.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17.Part1 = p18
w17.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p19
w18.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m2.Parent = rarm
m2:MakeJoints()
----------------------------------------------------
local cor2 = Instance.new("Part", rarm.RightArm)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(1, 1, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = rarm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld2 = Instance.new("Weld", rarm.RightArm)
weld2.Part0 = cor2
weld2.Part1 = rarm.RightArm.RightArmPlate
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Torso
m3 = Instance.new("Model")
m3.Name = "Torso"
p1 = Instance.new("Part", m3)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Metal
p1.Name = "TorsoPlate"
p1.CFrame = CFrame.new(0, 3.10002589, 0.50000006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(2, 2, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p2 = Instance.new("Part", m3)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.CFrame = CFrame.new(-0.450000942, 4.05002356, -0.100002818, -0.685070276, 0.686094284, 0.244853854, 0.616745472, 0.367372453, 0.696177125, 0.387690574, 0.627942622, -0.674821496)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=3270017"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p3 = Instance.new("Part", m3)
p3.BrickColor = BrickColor.new("Black")
p3.Material = Enum.Material.Metal
p3.CFrame = CFrame.new(0, 3.10002589, 0.970001996, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(2, 2, 0.200000018)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p4 = Instance.new("Part", m3)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.Metal
p4.CFrame = CFrame.new(0, 4.00002623, 0.529999971, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(2, 1.04000008, 0.239999995)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p5 = Instance.new("Part", m3)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(-0.499999821, 3.15002489, 0.0999978557, 7.54979084e-008, 1, 0, 4.37113918e-008, 0, 1, 1, -7.54978942e-008, -4.37113883e-008)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.300000012, 1, 1.89999998)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p6 = Instance.new("Part", m3)
p6.BrickColor = BrickColor.new("Black")
p6.Material = Enum.Material.Metal
p6.CFrame = CFrame.new(0.500000179, 3.15002489, 0.0999980345, -4.37113918e-008, -1, 0, -4.37113812e-008, 0, 1, -1, 4.37113847e-008, -4.37113883e-008)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.300000012, 0.99999994, 1.89999998)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p7 = Instance.new("Part", m3)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(1.63912773e-007, 3.20002794, 0.0999980569, -3.09086197e-008, -0.707106829, -0.707106769, -7.46200044e-008, -0.707106769, 0.707106829, -1, 7.46200044e-008, -3.09086197e-008)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.300000012, 1.20000005, 1.20000005)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
p8 = Instance.new("Part", m3)
p8.BrickColor = BrickColor.new("Black")
p8.Material = Enum.Material.Metal
p8.CFrame = CFrame.new(-1, 3.10002613, 0.520000935, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 2, 0.200000018)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p9 = Instance.new("Part", m3)
p9.BrickColor = BrickColor.new("Black")
p9.Material = Enum.Material.Metal
p9.CFrame = CFrame.new(1, 3.10002613, 0.520001054, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 2, 0.200000018)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p10 = Instance.new("Part", m3)
p10.BrickColor = BrickColor.new("Black")
p10.Material = Enum.Material.Metal
p10.CFrame = CFrame.new(0, 2.05002642, 0.539999843, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(2, 1.0200001, 0.239999995)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p11 = Instance.new("Part", m3)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(0.499999523, 4.05002451, -0.0499982014, 1.00000024, -8.94069672e-008, -1.78813934e-007, -2.98023224e-008, 0.906307817, -0.422618449, -2.23517418e-007, 0.42261821, 0.906307697)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=3270017"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p12 = Instance.new("Part", m3)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.Metal
p12.Transparency = 1
p12.Name = "Chain2Torso"
p12.CFrame = CFrame.new(0.0500000007, 3.35002589, 0.0200020671, -4.37113883e-008, -1, 0, -4.37113883e-008, 1.91068547e-015, -1, 1, -4.37113883e-008, -4.37113883e-008)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.699999988, 0.300000012, 0.300000012)
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p13 = Instance.new("Part", m3)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Metal
p13.CFrame = CFrame.new(-0.700000763, 4.25002289, 0.349998087, -0.606457233, -0.374239564, 0.70153743, -0.641863465, -0.290311694, -0.709739804, 0.469277143, -0.880717754, -0.0641489923)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=3270017"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p14 = Instance.new("Part", m3)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(-0.0500002243, 3.50002766, -0.150001988, -0.331867754, 0.457445055, -0.824989557, 0.877285957, -0.171802372, -0.448166817, -0.346746802, -0.87248385, -0.344294399)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=3270017"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p15 = Instance.new("Part", m3)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Metal
p15.CFrame = CFrame.new(0.199999034, 3.55002332, -0.150001839, -0.0627828911, -0.802308202, -0.593599737, 0.678633273, -0.470427632, 0.564052343, -0.731789052, -0.367423117, 0.57400763)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=3270017"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p16 = Instance.new("Part", m3)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.Metal
p16.CFrame = CFrame.new(0.349999189, 3.70002842, -0.150001973, 0.994292557, 0.0709807873, 0.0796526894, -0.0587368309, 0.987431884, -0.146726117, -0.0890666768, 0.141209915, 0.985964835)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=3270017"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p17 = Instance.new("Part", m3)
p17.BrickColor = BrickColor.new("Really black")
p17.Material = Enum.Material.Metal
p17.CFrame = CFrame.new(-0.200000346, 3.70002747, -0.150002211, 0.964791715, 0.0184034109, -0.262370646, -0.0587368906, 0.987431884, -0.146726027, 0.256372869, 0.156970888, 0.953746974)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=3270017"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p18 = Instance.new("Part", m3)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.Metal
p18.CFrame = CFrame.new(-0.35000062, 3.85002661, -0.150002271, 0.407530367, -0.427938014, 0.806714416, 0.0989350602, 0.898891687, 0.426855773, -0.907816589, -0.0941444039, 0.40866372)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=3270017"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p19 = Instance.new("Part", m3)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.Metal
p19.CFrame = CFrame.new(0.599999547, 4.25002337, 1.49011612e-008, 0.450589776, 0.596651912, -0.664060116, 0.322663993, 0.584720135, 0.744305372, 0.832379937, -0.549644768, 0.0709509254)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b19 = Instance.new("SpecialMesh", p19)
b19.MeshId = "http://www.roblox.com/asset/?id=3270017"
b19.TextureId = ""
b19.MeshType = Enum.MeshType.FileMesh
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p20 = Instance.new("Part", m3)
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.Metal
p20.CFrame = CFrame.new(0.449999154, 3.90002728, -0.150000244, 0.148452312, 0.508259773, -0.848312676, -0.212012291, 0.85422945, 0.474703223, 0.965925753, 0.109381542, 0.234569833)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b20 = Instance.new("SpecialMesh", p20)
b20.MeshId = "http://www.roblox.com/asset/?id=3270017"
b20.TextureId = ""
b20.MeshType = Enum.MeshType.FileMesh
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p21 = Instance.new("Part", m3)
p21.BrickColor = BrickColor.new("Really black")
p21.Material = Enum.Material.Metal
p21.CFrame = CFrame.new(0.699999869, 4.25002337, 0.200001985, -0.0996009707, 0.981125295, 0.165750414, -0.142243966, -0.178907469, 0.973529041, 0.98480773, 0.0733870864, 0.157378286)
p21.CanCollide = false
p21.Locked = true
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b21 = Instance.new("SpecialMesh", p21)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p22 = Instance.new("Part", m3)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.Metal
p22.CFrame = CFrame.new(0.69999975, 4.25002289, 0.450001955, -0.167731196, 0.167446673, 0.971508265, 0.0449438766, -0.983146012, 0.17721194, 0.984807789, 0.0733873621, 0.157378122)
p22.CanCollide = false
p22.Locked = true
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b22 = Instance.new("SpecialMesh", p22)
b22.MeshId = "http://www.roblox.com/asset/?id=3270017"
b22.TextureId = ""
b22.MeshType = Enum.MeshType.FileMesh
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p23 = Instance.new("Part", m3)
p23.BrickColor = BrickColor.new("Really black")
p23.Material = Enum.Material.Metal
p23.CFrame = CFrame.new(0.699999511, 4.25002289, 0.700001478, 0.0593914539, -0.993999004, 0.0918651819, 0.163175613, -0.0811224878, -0.98325628, 0.984807849, 0.0733875483, 0.157378405)
p23.CanCollide = false
p23.Locked = true
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=3270017"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p24 = Instance.new("Part", m3)
p24.BrickColor = BrickColor.new("Really black")
p24.Material = Enum.Material.Metal
p24.CFrame = CFrame.new(0.699999452, 4.25002289, 0.900001347, -0.197025463, -0.431517303, 0.880326331, 0.133022487, -0.90138948, -0.412070453, 0.971332312, 0.0359149873, 0.234997824)
p24.CanCollide = false
p24.Locked = true
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b24 = Instance.new("SpecialMesh", p24)
b24.MeshId = "http://www.roblox.com/asset/?id=3270017"
b24.TextureId = ""
b24.MeshType = Enum.MeshType.FileMesh
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p25 = Instance.new("Part", m3)
p25.BrickColor = BrickColor.new("Really black")
p25.Material = Enum.Material.Metal
p25.CFrame = CFrame.new(0.599999249, 4.25002289, 1.05000341, -0.793593884, -0.433597952, 0.42685172, 0.426002622, 0.104941569, 0.898615122, -0.434431762, 0.894975305, 0.101432741)
p25.CanCollide = false
p25.Locked = true
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b25 = Instance.new("SpecialMesh", p25)
b25.MeshId = "http://www.roblox.com/asset/?id=3270017"
b25.TextureId = ""
b25.MeshType = Enum.MeshType.FileMesh
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p26 = Instance.new("Part", m3)
p26.BrickColor = BrickColor.new("Really black")
p26.Material = Enum.Material.Metal
p26.CFrame = CFrame.new(0.399999261, 4.25002289, 1.09999716, 0.474074066, -0.73934859, 0.478140384, 0.876810074, 0.445984155, -0.17972827, -0.0803612769, 0.504442811, 0.859697402)
p26.CanCollide = false
p26.Locked = true
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b26 = Instance.new("SpecialMesh", p26)
b26.MeshId = "http://www.roblox.com/asset/?id=3270017"
b26.TextureId = ""
b26.MeshType = Enum.MeshType.FileMesh
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p27 = Instance.new("Part", m3)
p27.BrickColor = BrickColor.new("Really black")
p27.Material = Enum.Material.Metal
p27.CFrame = CFrame.new(0.249999076, 4.25002289, 1.20000076, 0.524626255, -0.838181257, 0.149064019, -0.503709316, -0.446768612, -0.739374638, 0.686326742, 0.31281051, -0.656585932)
p27.CanCollide = false
p27.Locked = true
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b27 = Instance.new("SpecialMesh", p27)
b27.MeshId = "http://www.roblox.com/asset/?id=3270017"
b27.TextureId = ""
b27.MeshType = Enum.MeshType.FileMesh
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p28 = Instance.new("Part", m3)
p28.BrickColor = BrickColor.new("Really black")
p28.Material = Enum.Material.Metal
p28.CFrame = CFrame.new(0.0499990731, 4.25002289, 1.20000088, 0.524626136, -0.838181317, 0.149063885, 0.588431716, 0.230477661, -0.775002301, 0.615236104, 0.494300276, 0.614126861)
p28.CanCollide = false
p28.Locked = true
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b28 = Instance.new("SpecialMesh", p28)
b28.MeshId = "http://www.roblox.com/asset/?id=3270017"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p29 = Instance.new("Part", m3)
p29.BrickColor = BrickColor.new("Really black")
p29.Material = Enum.Material.Metal
p29.CFrame = CFrame.new(-0.200000852, 4.25002289, 1.20000088, 0.524626195, -0.838181257, 0.149063647, 0.664180398, 0.512506962, 0.544243872, -0.532571197, -0.186519295, 0.825577736)
p29.CanCollide = false
p29.Locked = true
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b29 = Instance.new("SpecialMesh", p29)
b29.MeshId = "http://www.roblox.com/asset/?id=3270017"
b29.TextureId = ""
b29.MeshType = Enum.MeshType.FileMesh
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p30 = Instance.new("Part", m3)
p30.BrickColor = BrickColor.new("Really black")
p30.Material = Enum.Material.Metal
p30.CFrame = CFrame.new(-0.400000989, 4.25002289, 1.15000105, -0.205189675, -0.942334533, -0.264392197, 0.472657442, 0.141141802, -0.869870245, 0.857025325, -0.303455055, 0.416440606)
p30.CanCollide = false
p30.Locked = true
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b30 = Instance.new("SpecialMesh", p30)
b30.MeshId = "http://www.roblox.com/asset/?id=3270017"
b30.TextureId = ""
b30.MeshType = Enum.MeshType.FileMesh
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p31 = Instance.new("Part", m3)
p31.BrickColor = BrickColor.new("Really black")
p31.Material = Enum.Material.Metal
p31.CFrame = CFrame.new(-0.550001025, 4.25002337, 0.999999702, 0.151335806, -0.651350021, -0.743532896, 0.979139984, 0.201951638, 0.022377044, 0.135582238, -0.731408894, 0.668325186)
p31.CanCollide = false
p31.Locked = true
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b31 = Instance.new("SpecialMesh", p31)
b31.MeshId = "http://www.roblox.com/asset/?id=3270017"
b31.TextureId = ""
b31.MeshType = Enum.MeshType.FileMesh
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p32 = Instance.new("Part", m3)
p32.BrickColor = BrickColor.new("Really black")
p32.Material = Enum.Material.Metal
p32.CFrame = CFrame.new(-0.700000763, 4.25002337, 0.800000489, -0.804778874, -0.593520701, 0.0080409348, 0.142058611, -0.205740049, -0.968240976, 0.576325178, -0.778077364, 0.249890015)
p32.CanCollide = false
p32.Locked = true
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b32 = Instance.new("SpecialMesh", p32)
b32.MeshId = "http://www.roblox.com/asset/?id=3270017"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p33 = Instance.new("Part", m3)
p33.BrickColor = BrickColor.new("Really black")
p33.Material = Enum.Material.Metal
p33.CFrame = CFrame.new(-0.700000942, 4.25002289, 0.549999833, -0.526802063, -0.220915288, -0.820777893, 0.708702326, 0.418966174, -0.567634225, 0.469277024, -0.880717933, -0.0641489923)
p33.CanCollide = false
p33.Locked = true
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b33 = Instance.new("SpecialMesh", p33)
b33.MeshId = "http://www.roblox.com/asset/?id=3270017"
b33.TextureId = ""
b33.MeshType = Enum.MeshType.FileMesh
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p34 = Instance.new("Part", m3)
p34.BrickColor = BrickColor.new("Really black")
p34.Material = Enum.Material.Metal
p34.Name = "Connection"
p34.CFrame = CFrame.new(0.0551848896, 3.35002589, -0.131655902, 0.635109425, -0.765570045, -0.102657467, -0.766416311, -0.641122162, 0.0396047123, -0.0961361453, 0.0535250306, -0.993928015)
p34.CanCollide = false
p34.Locked = true
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b34 = Instance.new("SpecialMesh", p34)
b34.MeshId = "http://www.roblox.com/asset/?id=3270017"
b34.TextureId = ""
b34.MeshType = Enum.MeshType.FileMesh
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p35 = Instance.new("Part", m3)
p35.BrickColor = BrickColor.new("Really black")
p35.Material = Enum.Material.Metal
p35.CFrame = CFrame.new(-0.600001037, 4.25002289, 0.149997264, 0.493824095, 0.604460001, 0.62511301, -0.565569818, -0.322785676, 0.758907318, 0.660506427, -0.728311539, 0.182464883)
p35.CanCollide = false
p35.Locked = true
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b35 = Instance.new("SpecialMesh", p35)
b35.MeshId = "http://www.roblox.com/asset/?id=3270017"
b35.TextureId = ""
b35.MeshType = Enum.MeshType.FileMesh
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
p36 = Instance.new("Part", m3)
p36.BrickColor = BrickColor.new("Really black")
p36.Material = Enum.Material.Metal
p36.CFrame = CFrame.new(-0.500000834, 4.2000227, -2.52574682e-006, -0.285961747, 0.418113738, -0.862210572, 0.191904813, 0.906544387, 0.375965416, 0.93882823, -0.0579507053, -0.339474916)
p36.CanCollide = false
p36.Locked = true
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
b36 = Instance.new("SpecialMesh", p36)
b36.MeshId = "http://www.roblox.com/asset/?id=3270017"
b36.TextureId = ""
b36.MeshType = Enum.MeshType.FileMesh
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.300000012, 0.300000012, 0.600000024)
w1 = Instance.new("Weld", p2)
w1.Name = "Joint"
w1.Part0 = p2
w1.C0 = CFrame.new(-0.211238861, -0.0362606049, -0.0810072422, -0.57012105, 0.811055779, -0.130959615, -0.254106343, -0.022495009, 0.966914535, 0.781275749, 0.584536016, 0.218919396)
w1.Part1 = p18
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p3)
w2.Name = "Joint"
w2.Part0 = p3
w2.C0 = CFrame.new(0, 0, -0.470001936, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p1
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p4)
w3.Name = "Joint"
w3.Part0 = p4
w3.C0 = CFrame.new(0, 0.0299999714, -0.900000334, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w3.Part1 = p1
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p5)
w4.Name = "Joint"
w4.Part0 = p5
w4.C0 = CFrame.new(2.38418579e-007, 0.5, 0.0500030518, -1, -9.67369829e-009, -5.33850759e-008, 4.45892816e-008, -0.707106829, -0.707106769, -3.09086161e-008, -0.707106769, 0.707106829)
w4.Part1 = p7
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p6)
w5.Name = "Joint"
w5.Part0 = p6
w5.C0 = CFrame.new(0, 0.5, 0.0500030518, 1, -1.28027651e-008, 3.09086197e-008, -1.28027686e-008, 0.707106829, 0.707106769, -3.09086161e-008, -0.707106769, 0.707106829)
w5.Part1 = p7
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p7)
w6.Name = "Joint"
w6.Part0 = p7
w6.C0 = CFrame.new(-0.400002003, 0.070712328, -0.0707120895, -3.09086197e-008, -7.46200044e-008, -1, -0.707106829, -0.707106769, 7.46200044e-008, -0.707106769, 0.707106829, -3.09086197e-008)
w6.Part1 = p1
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p8)
w7.Name = "Joint"
w7.Part0 = p8
w7.C0 = CFrame.new(-0.0200009346, -2.38418579e-007, -1, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w7.Part1 = p1
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p9)
w8.Name = "Joint"
w8.Part0 = p9
w8.C0 = CFrame.new(-0.0200009346, -2.38418579e-007, 1, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w8.Part1 = p1
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p10)
w9.Name = "Joint"
w9.Part0 = p10
w9.C0 = CFrame.new(0, 0.0399997234, 1.04999948, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w9.Part1 = p1
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p11)
w10.Name = "Joint"
w10.Part0 = p11
w10.C0 = CFrame.new(0.100000024, 0.202390671, -0.0392093658, 0.450589836, 0.596651673, -0.664059937, 0.644212067, 0.297646403, 0.704554796, 0.618028879, -0.745260656, -0.250253737)
w10.Part1 = p19
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p12)
w11.Name = "Joint"
w11.Part0 = p12
w11.C0 = CFrame.new(0.479997993, 0.0499999784, 0.25, -4.37113883e-008, -4.37113883e-008, 1, -1, 1.91068547e-015, -4.37113883e-008, 0, -1, -4.37113883e-008)
w11.Part1 = p1
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p13)
w12.Name = "Joint"
w12.Part0 = p13
w12.C0 = CFrame.new(-0.1545012, 0.138720512, 0.0829834938, 0.373496056, -0.501174688, -0.780592561, -0.602336764, 0.50893271, -0.614961803, 0.70547235, 0.699865282, -0.111791633)
w12.Part1 = p35
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p14)
w13.Name = "Joint"
w13.Part0 = p14
w13.C0 = CFrame.new(-0.172863483, 0.0578804016, -0.0258672237, -0.849803627, -0.326939017, 0.413454711, 0.506076992, -0.286759645, 0.813421786, -0.147377193, 0.900488615, 0.409145683)
w13.Part1 = p34
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p15)
w14.Name = "Joint"
w14.Part0 = p15
w14.C0 = CFrame.new(0.0923810005, -0.190912724, -0.00442934036, -0.0371075198, 0.56231159, -0.826092422, -0.73737216, -0.573347449, -0.357148677, -0.674466848, 0.595884562, 0.435908347)
w14.Part1 = p16
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p16)
w15.Name = "Joint"
w15.Part0 = p16
w15.C0 = CFrame.new(0.0876817107, 0.204583645, -0.0213780403, 0.074026458, 0.445441723, -0.892245352, -0.0624118894, 0.895015597, 0.441646636, 0.995301366, 0.022993207, 0.0940556675)
w15.Part1 = p20
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p17)
w16.Name = "Joint"
w16.Part0 = p17
w16.C0 = CFrame.new(0.156466246, -0.194725513, -0.0100102425, -0.460608691, 0.227749109, -0.85788697, 0.80572325, -0.29817903, -0.51176101, -0.372357011, -0.926941037, -0.0461589098)
w16.Part1 = p14
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p18)
w17.Name = "Joint"
w17.Part0 = p18
w17.C0 = CFrame.new(0.046289444, -0.199023724, 0.0569794178, 0.154631272, -0.0373091251, -0.987267554, -0.489805043, 0.864940584, -0.109402351, 0.858009458, 0.500485599, 0.115472674)
w17.Part1 = p17
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p19)
w18.Name = "Joint"
w18.Part0 = p19
w18.C0 = CFrame.new(0.211536884, -0.0502645969, -0.0522158146, 0.728958309, 0.445444137, 0.519806981, -0.683894217, 0.440442294, 0.581635118, 0.0301409438, -0.779480696, 0.625700712)
w18.Part1 = p21
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p20)
w19.Name = "Joint"
w19.Part0 = p20
w19.C0 = CFrame.new(0.0722160339, 0.164483547, 0.0522456169, 0.148452476, 0.216069669, 0.965026319, 0.508259654, 0.820421398, -0.261879444, -0.848312438, 0.529360592, 0.0119740963)
w19.Part1 = p11
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p21)
w20.Name = "Joint"
w20.Part0 = p21
w20.C0 = CFrame.new(0.246201992, 0.0183468163, 0.0393443108, 0.980159461, 0.195441127, 0.0330170989, -0.100333519, 0.345563769, 0.933016002, 0.170940176, -0.917817175, 0.358316928)
w20.Part1 = p22
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p22)
w21.Name = "Joint"
w21.Part0 = p22
w21.C0 = CFrame.new(0.246201515, 0.0183467865, 0.0393443108, 0.96721822, 0.235350817, 0.0953874439, -0.0782081187, -0.0813006833, 0.993616521, 0.241603509, -0.968504071, -0.060229145)
w21.Part1 = p23
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p23)
w22.Name = "Joint"
w22.Part0 = p23
w22.C0 = CFrame.new(0.196961403, 0.014677465, 0.031475544, 0.966579735, -0.137344033, 0.21647194, 0.256335169, 0.504686236, -0.824368834, 0.0039717555, 0.852307677, 0.523025632)
w22.Part1 = p24
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p24)
w23.Name = "Joint"
w23.Part0 = p24
w23.C0 = CFrame.new(0.16540432, 0.0485391617, -0.0527825356, -0.208951756, 0.968707323, 0.133960381, -0.0571475253, 0.124654606, -0.990553021, -0.976254702, -0.214633241, 0.0293123852)
w23.Part1 = p25
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p25)
w24.Name = "Joint"
w24.Part0 = p25
w24.C0 = CFrame.new(0.136999726, 0.131462574, -0.0802993774, 0.0322127938, 0.557586372, -0.829493642, -0.185464859, 0.81884563, 0.543226421, 0.982122838, 0.136343077, 0.129789978)
w24.Part1 = p26
w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p26)
w25.Name = "Joint"
w25.Part0 = p26
w25.C0 = CFrame.new(-0.0791475773, 0.161348343, 0.014251709, -0.2480997, -0.814228892, -0.524859786, -0.266315132, 0.578250885, -0.771169424, 0.931409001, -0.0515488982, -0.360305429)
w25.Part1 = p27
w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26 = Instance.new("Weld", p27)
w26.Name = "Joint"
w26.Part0 = p27
w26.C0 = CFrame.new(-0.104925156, 0.167636156, -0.0298128128, 0.401087224, -0.216573805, 0.890070021, -0.510172248, 0.754199564, 0.413409412, -0.760824084, -0.619902253, 0.192009777)
w26.Part1 = p28
w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27 = Instance.new("Weld", p28)
w27.Name = "Joint"
w27.Part0 = p28
w27.C0 = CFrame.new(-0.131156445, 0.209545135, -0.037266016, 0.338400394, -0.252909899, 0.906378388, -0.549903035, 0.728472173, 0.408576787, -0.763604522, -0.636682749, 0.10743928)
w27.Part1 = p29
w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28 = Instance.new("Weld", p29)
w28.Name = "Joint"
w28.Part0 = p29
w28.C0 = CFrame.new(-0.0782968998, 0.176962137, -0.0710916519, -0.250144869, -0.239018306, -0.938241899, 0.254374206, 0.918783069, -0.301879942, 0.934195518, -0.314178288, -0.169028759)
w28.Part1 = p30
w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29 = Instance.new("Weld", p30)
w29.Name = "Joint"
w29.Part0 = p30
w29.C0 = CFrame.new(-0.097776413, 0.186868906, -0.022808075, 0.547942579, -0.39773193, 0.735913277, -0.0455548018, 0.864242792, 0.501007974, -0.835274637, -0.30804801, 0.455436885)
w29.Part1 = p31
w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30 = Instance.new("Weld", p31)
w30.Name = "Joint"
w30.Part0 = p31
w30.C0 = CFrame.new(-0.0498166084, 0.243983507, -0.0221347809, 0.0954426825, -0.396762908, -0.912945747, 0.131352007, 0.914132595, -0.38354671, 0.986730695, -0.0833105743, 0.139362901)
w30.Part1 = p32
w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31 = Instance.new("Weld", p32)
w31.Name = "Joint"
w31.Part0 = p32
w31.C0 = CFrame.new(-0.144081593, 0.194519997, -0.0624723434, 0.795092285, -0.270274341, 0.542936563, -0.198274553, 0.730186164, 0.653846622, -0.573162735, -0.627518892, 0.526976764)
w31.Part1 = p33
w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32 = Instance.new("Weld", p33)
w32.Name = "Joint"
w32.Part0 = p33
w32.C0 = CFrame.new(-0.0938563347, 0.176145077, 0.0128297806, 0.0848137587, -0.421895206, -0.902668893, -0.548244178, 0.736708403, -0.39583993, 0.832006574, 0.528455555, -0.168818489)
w32.Part1 = p13
w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w33 = Instance.new("Weld", p34)
w33.Name = "Joint"
w33.Part0 = p34
w33.C0 = CFrame.new(-0.0178728104, 0.0120868683, -0.150204837, -0.0961361453, -0.635109425, 0.766416311, 0.0535250939, 0.765570045, 0.641122162, -0.993928015, 0.102657512, -0.0396046676)
w33.Part1 = p12
w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w34 = Instance.new("Weld", p35)
w34.Name = "Joint"
w34.Part0 = p35
w34.C0 = CFrame.new(-0.0214147568, 0.185832024, -0.00280380249, 0.370351821, -0.344516218, -0.862640202, -0.918555975, 0.00231964141, -0.395284295, 0.138182849, 0.938777506, -0.315598398)
w34.Part1 = p36
w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35 = Instance.new("Weld", p36)
w35.Name = "Joint"
w35.Part0 = p36
w35.C0 = CFrame.new(-0.136966705, -0.109280109, -0.0655572414, 0.678235054, 0.463834167, -0.569960475, 0.250202835, 0.583515286, 0.772598565, 0.690938354, -0.666609228, 0.279707849)
w35.Part1 = p2
w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m3.Parent = torso
m3:MakeJoints()
----------------------------------------------------
local cor3 = Instance.new("Part", torso.Torso)
cor3.Name = "Thingy"
cor3.Locked = true
cor3.BottomSurface = 0
cor3.CanCollide = false
cor3.Size = Vector3.new(1, 1, 1)
cor3.Transparency = 1
cor3.TopSurface = 0
corw3 = Instance.new("Weld", cor3)
corw3.Part0 = torso
corw3.Part1 = cor3
corw3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw3.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld3 = Instance.new("Weld", torso.Torso)
weld3.Part0 = cor3
weld3.Part1 = torso.Torso.TorsoPlate
weld3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Left Leg
m4 = Instance.new("Model")
m4.Name = "LeftLeg"
p1 = Instance.new("Part", m4)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Metal
p1.Name = "LeftLegPlate"
p1.CFrame = CFrame.new(-1.5, 4.74442291, -7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Anchored = false
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 2, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p2 = Instance.new("Part", m4)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.CFrame = CFrame.new(-2.0999999, 5.44442606, -7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Anchored = false
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.239999995, 0.300000012, 0.899999976)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p3 = Instance.new("Part", m4)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Metal
p3.CFrame = CFrame.new(-2.0999999, 5.04442501, -7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Anchored = false
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.600000024, 0.800000012)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p4 = Instance.new("Part", m4)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.Metal
p4.CFrame = CFrame.new(-1.5, 4.74442291, -7.02999783, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.Anchored = false
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 2, 0.200000018)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p5 = Instance.new("Part", m4)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(-2, 4.74442291, -7.47999907, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p5.Anchored = false
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 2, 0.200000018)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p6 = Instance.new("Part", m4)
p6.BrickColor = BrickColor.new("Black")
p6.Material = Enum.Material.Metal
p6.CFrame = CFrame.new(-1.50999999, 3.74442887, -7.5, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p6.Anchored = false
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 0.200000048, 0.980000019)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p7 = Instance.new("Part", m4)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(-1.5, 5.74442291, -7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.Anchored = false
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 0.200000048, 0.99000001)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1, 1.01999998, 1.01999998)
w1 = Instance.new("Weld", p2)
w1.Name = "Joint"
w1.Part0 = p2
w1.C0 = CFrame.new(0, -0.40000093, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p3
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p3)
w2.Name = "Joint"
w2.Part0 = p3
w2.C0 = CFrame.new(0.0999999046, -0.300002098, 0.0200009346, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
w2.Part1 = p5
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p4)
w3.Name = "Joint"
w3.Part0 = p4
w3.C0 = CFrame.new(0, 0, -0.470002174, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p1
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p5)
w4.Name = "Joint"
w4.Part0 = p5
w4.C0 = CFrame.new(-0.0200009346, 0, -0.5, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w4.Part1 = p1
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p6)
w5.Name = "Joint"
w5.Part0 = p6
w5.C0 = CFrame.new(0, 0.99999404, -0.00999999046, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w5.Part1 = p1
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p7)
w6.Name = "Joint"
w6.Part0 = p7
w6.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p1
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m4.Parent = lleg
m4:MakeJoints()
----------------------------------------------------
local cor4 = Instance.new("Part", lleg.LeftLeg)
cor4.Name = "Thingy"
cor4.Locked = true
cor4.BottomSurface = 0
cor4.CanCollide = false
cor4.Size = Vector3.new(1, 1, 1)
cor4.Transparency = 1
cor4.TopSurface = 0
corw4 = Instance.new("Weld", cor4)
corw4.Part0 = lleg
corw4.Part1 = cor4
corw4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw4.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld4 = Instance.new("Weld", lleg.LeftLeg)
weld4.Part0 = cor4
weld4.Part1 = lleg.LeftLeg.LeftLegPlate
weld4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Right Leg
m5 = Instance.new("Model")
m5.Name = "RightLeg"
p1 = Instance.new("Part", m5)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Metal
p1.Name = "RightLegPlate"
p1.CFrame = CFrame.new(1.5, 4.74441528, -7.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Anchored = false
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 2, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p2 = Instance.new("Part", m5)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.CFrame = CFrame.new(2.05000019, 5.44441557, -7.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Anchored = false
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.239999995, 0.300000012, 0.899999976)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p3 = Instance.new("Part", m5)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Metal
p3.CFrame = CFrame.new(2.05000019, 5.04441547, -7.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Anchored = false
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.600000024, 0.800000012)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.01999998, 1, 1.01999998)
p4 = Instance.new("Part", m5)
p4.BrickColor = BrickColor.new("Black")
p4.Material = Enum.Material.Metal
p4.CFrame = CFrame.new(1.5, 4.74441528, -7.0299983, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.Anchored = false
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 2, 0.200000018)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p5 = Instance.new("Part", m5)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(2, 4.74441528, -7.47999907, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p5.Anchored = false
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 2, 0.200000018)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p6 = Instance.new("Part", m5)
p6.BrickColor = BrickColor.new("Black")
p6.Material = Enum.Material.Metal
p6.CFrame = CFrame.new(1.505, 3.74442124, -7.49999952, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p6.Anchored = false
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 0.200000048, 0.99000001)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 1.01999998, 1.01999998)
p7 = Instance.new("Part", m5)
p7.BrickColor = BrickColor.new("Black")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(1.505, 5.69442129, -7.49999952, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p7.Anchored = false
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 0.200000048, 0.99000001)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1, 1.01999998, 1.01999998)
w1 = Instance.new("Weld", p2)
w1.Name = "Joint"
w1.Part0 = p2
w1.C0 = CFrame.new(0, -0.400000095, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p3
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p3)
w2.Name = "Joint"
w2.Part0 = p3
w2.C0 = CFrame.new(-0.0500001907, -0.300000191, 0.0200004578, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
w2.Part1 = p5
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p4)
w3.Name = "Joint"
w3.Part0 = p4
w3.C0 = CFrame.new(0, 0, -0.470001221, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p1
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p5)
w4.Name = "Joint"
w4.Part0 = p5
w4.C0 = CFrame.new(-0.0200004578, 0, 0.5, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w4.Part1 = p1
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p6)
w5.Name = "Joint"
w5.Part0 = p6
w5.C0 = CFrame.new(0, 0.99999404, 0.00499999523, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w5.Part1 = p1
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p7)
w6.Name = "Joint"
w6.Part0 = p7
w6.C0 = CFrame.new(0, -0.950006008, 0.00499999523, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w6.Part1 = p1
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m5.Parent = rleg
m5:MakeJoints()
----------------------------------------------------
local cor5 = Instance.new("Part", rleg.RightLeg)
cor5.Name = "Thingy"
cor5.Locked = true
cor5.BottomSurface = 0
cor5.CanCollide = false
cor5.Size = Vector3.new(1, 1, 1)
cor5.Transparency = 1
cor5.TopSurface = 0
corw5 = Instance.new("Weld", cor5)
corw5.Part0 = rleg
corw5.Part1 = cor5
corw5.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw5.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
wld5 = Instance.new("Weld", rleg.RightLeg)
wld5.Part0 = cor5
wld5.Part1 = rleg.RightLeg.RightLegPlate
wld5.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Cape
m6 = Instance.new("Model")
m6.Name = "Cloak"
p1 = Instance.new("WedgePart", m6)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.SmoothPlastic
p1.Name = "Wedge"
p1.CFrame = CFrame.new(0.959278464, 4.40979004, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p2 = Instance.new("WedgePart", m6)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.SmoothPlastic
p2.Name = "Wedge"
p2.CFrame = CFrame.new(-1.27945054, 2.10108781, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Wedge
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p3 = Instance.new("Part", m6)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.SmoothPlastic
p3.Name = "CapeLevel2"
p3.CFrame = CFrame.new(-0.300008506, 3.78014231, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(2.09881067, 0.559682727, 0.232357636)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(1, 1, 0.602178097)
p4 = Instance.new("Part", m6)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.SmoothPlastic
p4.CFrame = CFrame.new(-1.8391341, 2.73073244, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p5 = Instance.new("Part", m6)
p5.BrickColor = BrickColor.new("Really black")
p5.Material = Enum.Material.SmoothPlastic
p5.CFrame = CFrame.new(-1.69921267, 2.73073244, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p6 = Instance.new("Part", m6)
p6.BrickColor = BrickColor.new("Really black")
p6.Material = Enum.Material.SmoothPlastic
p6.Name = "CapeLevel1"
p6.CFrame = CFrame.new(-0.300008506, 4.6896286, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.25928628, 0.232357651, 0.232357636)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 0.602178097, 0.602178097)
p7 = Instance.new("Part", m6)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.SmoothPlastic
p7.CFrame = CFrame.new(1.23912418, 2.73073268, 4.03967333, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p8 = Instance.new("Part", m6)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.SmoothPlastic
p8.CFrame = CFrame.new(0.539517641, 2.10109043, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p9 = Instance.new("Part", m6)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(-0.300009966, 2.03112936, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.419762105, 0.419762105, 0.232357636)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(1, 1, 0.602178097)
p10 = Instance.new("Part", m6)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.SmoothPlastic
p10.CFrame = CFrame.new(1.09920263, 2.73073268, 4.03967333, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p11 = Instance.new("Part", m6)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.SmoothPlastic
p11.CFrame = CFrame.new(-1.13953161, 2.10109043, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p12 = Instance.new("Part", m6)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.SmoothPlastic
p12.CFrame = CFrame.new(-1.6992135, 3.29041815, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p13 = Instance.new("Part", m6)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.SmoothPlastic
p13.Name = "BottomLeftFlap"
p13.CFrame = CFrame.new(-1.13953161, 2.31097221, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.419762105, 0.232357651, 0.232357636)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(1, 0.602178097, 0.602178097)
p14 = Instance.new("Part", m6)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.SmoothPlastic
p14.Transparency = 1
p14.Name = "Rotater"
p14.CFrame = CFrame.new(-0.300001532, 4.82954979, 4.03967381, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1.25928617, 0.232357651, 0.232357636)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(1, 0.632287025, 0.632287025)
p15 = Instance.new("Part", m6)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.SmoothPlastic
p15.CFrame = CFrame.new(-1.41937125, 4.40979004, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p16 = Instance.new("Part", m6)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.SmoothPlastic
p16.Name = "BottomCenterFlap"
p16.CFrame = CFrame.new(-0.300009966, 2.31097221, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.699603498, 0.232357651, 0.232357636)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(1, 0.602178097, 0.602178097)
p17 = Instance.new("Part", m6)
p17.BrickColor = BrickColor.new("Really black")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(-1.27945054, 4.26986647, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p18 = Instance.new("Part", m6)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(0.679436207, 4.26986647, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p19 = Instance.new("WedgePart", m6)
p19.BrickColor = BrickColor.new("Really black")
p19.Name = "Wedge"
p19.CFrame = CFrame.new(-0.265017539, 1.47144794, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p20 = Instance.new("Part", m6)
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.SmoothPlastic
p20.CFrame = CFrame.new(1.09919691, 3.29041815, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p21 = Instance.new("Part", m6)
p21.BrickColor = BrickColor.new("Really black")
p21.Material = Enum.Material.SmoothPlastic
p21.CFrame = CFrame.new(0.959275484, 3.1504972, 4.03967381, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p21.CanCollide = false
p21.Locked = true
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p22 = Instance.new("WedgePart", m6)
p22.BrickColor = BrickColor.new("Really black")
p22.Name = "Wedge"
p22.CFrame = CFrame.new(0.50454706, 1.89121199, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p22.CanCollide = false
p22.Locked = true
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p22)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p23 = Instance.new("WedgePart", m6)
p23.BrickColor = BrickColor.new("Really black")
p23.Material = Enum.Material.SmoothPlastic
p23.Name = "Wedge"
p23.CFrame = CFrame.new(1.09919691, 3.85010386, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p23.CanCollide = false
p23.Locked = true
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p23)
b23.MeshType = Enum.MeshType.Wedge
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p24 = Instance.new("WedgePart", m6)
p24.BrickColor = BrickColor.new("Really black")
p24.Material = Enum.Material.SmoothPlastic
p24.Name = "Wedge"
p24.CFrame = CFrame.new(0.959281087, 2.45089102, 4.03967333, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p24.CanCollide = false
p24.Locked = true
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p24)
b24.MeshType = Enum.MeshType.Wedge
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p25 = Instance.new("WedgePart", m6)
p25.BrickColor = BrickColor.new("Really black")
p25.Name = "Wedge"
p25.CFrame = CFrame.new(0.574507415, 1.89121199, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p25.CanCollide = false
p25.Locked = true
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("SpecialMesh", p25)
b25.MeshType = Enum.MeshType.Wedge
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p26 = Instance.new("WedgePart", m6)
p26.BrickColor = BrickColor.new("Really black")
p26.Material = Enum.Material.SmoothPlastic
p26.Name = "Wedge"
p26.CFrame = CFrame.new(-1.06957662, 4.68963194, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p26.CanCollide = false
p26.Locked = true
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("SpecialMesh", p26)
b26.MeshType = Enum.MeshType.Wedge
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p27 = Instance.new("Part", m6)
p27.BrickColor = BrickColor.new("Really black")
p27.Material = Enum.Material.SmoothPlastic
p27.CFrame = CFrame.new(-1.55929208, 2.73073244, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p27.CanCollide = false
p27.Locked = true
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("BlockMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p28 = Instance.new("WedgePart", m6)
p28.BrickColor = BrickColor.new("Really black")
p28.Material = Enum.Material.SmoothPlastic
p28.Name = "Wedge"
p28.CFrame = CFrame.new(0.959275484, 3.71018291, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p28.CanCollide = false
p28.Locked = true
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("SpecialMesh", p28)
b28.MeshType = Enum.MeshType.Wedge
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p29 = Instance.new("Part", m6)
p29.BrickColor = BrickColor.new("Really black")
p29.Material = Enum.Material.SmoothPlastic
p29.CFrame = CFrame.new(-1.55929208, 3.15049648, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p29.CanCollide = false
p29.Locked = true
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("BlockMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p30 = Instance.new("WedgePart", m6)
p30.BrickColor = BrickColor.new("Really black")
p30.Material = Enum.Material.SmoothPlastic
p30.Name = "Wedge"
p30.CFrame = CFrame.new(1.09919691, 3.15049744, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p30.CanCollide = false
p30.Locked = true
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p30)
b30.MeshType = Enum.MeshType.Wedge
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p31 = Instance.new("WedgePart", m6)
p31.BrickColor = BrickColor.new("Really black")
p31.Material = Enum.Material.SmoothPlastic
p31.Name = "Wedge"
p31.CFrame = CFrame.new(0.119759142, 2.31096911, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p31.CanCollide = false
p31.Locked = true
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("SpecialMesh", p31)
b31.MeshType = Enum.MeshType.Wedge
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p32 = Instance.new("Part", m6)
p32.BrickColor = BrickColor.new("Really black")
p32.Material = Enum.Material.SmoothPlastic
p32.Name = "BottomRightFlap"
p32.CFrame = CFrame.new(0.539517641, 2.31097221, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p32.CanCollide = false
p32.Locked = true
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.419762105, 0.232357651, 0.232357636)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("BlockMesh", p32)
b32.Name = "Mesh"
b32.Scale = Vector3.new(1, 0.602178097, 0.602178097)
p33 = Instance.new("WedgePart", m6)
p33.BrickColor = BrickColor.new("Really black")
p33.Material = Enum.Material.SmoothPlastic
p33.Name = "Wedge"
p33.CFrame = CFrame.new(1.02923799, 3.43033957, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p33.CanCollide = false
p33.Locked = true
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Wedge
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p34 = Instance.new("WedgePart", m6)
p34.BrickColor = BrickColor.new("Really black")
p34.Material = Enum.Material.SmoothPlastic
p34.Name = "Wedge"
p34.CFrame = CFrame.new(-1.55929208, 2.45089054, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p34.CanCollide = false
p34.Locked = true
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("SpecialMesh", p34)
b34.MeshType = Enum.MeshType.Wedge
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p35 = Instance.new("Part", m6)
p35.BrickColor = BrickColor.new("Really black")
p35.Material = Enum.Material.SmoothPlastic
p35.CFrame = CFrame.new(0.959275484, 3.85010386, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p35.CanCollide = false
p35.Locked = true
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p36 = Instance.new("WedgePart", m6)
p36.BrickColor = BrickColor.new("Really black")
p36.Material = Enum.Material.SmoothPlastic
p36.Name = "Wedge"
p36.CFrame = CFrame.new(-1.62925327, 3.43033957, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p36.CanCollide = false
p36.Locked = true
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("SpecialMesh", p36)
b36.MeshType = Enum.MeshType.Wedge
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p37 = Instance.new("Part", m6)
p37.BrickColor = BrickColor.new("Really black")
p37.Material = Enum.Material.SmoothPlastic
p37.Name = "CapeLevel3"
p37.CFrame = CFrame.new(-0.300008506, 3.22045994, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p37.CanCollide = false
p37.Locked = true
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(2.3786521, 0.559682727, 0.232357636)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("BlockMesh", p37)
b37.Name = "Mesh"
b37.Scale = Vector3.new(1, 1, 0.602178097)
p38 = Instance.new("WedgePart", m6)
p38.BrickColor = BrickColor.new("Really black")
p38.Material = Enum.Material.SmoothPlastic
p38.Name = "Wedge"
p38.CFrame = CFrame.new(-1.97905517, 2.73073244, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p38.CanCollide = false
p38.Locked = true
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Wedge
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p39 = Instance.new("WedgePart", m6)
p39.BrickColor = BrickColor.new("Really black")
p39.Material = Enum.Material.SmoothPlastic
p39.Name = "Wedge"
p39.CFrame = CFrame.new(-1.83913493, 3.29041815, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p39.CanCollide = false
p39.Locked = true
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("SpecialMesh", p39)
b39.MeshType = Enum.MeshType.Wedge
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p40 = Instance.new("WedgePart", m6)
p40.BrickColor = BrickColor.new("Really black")
p40.Material = Enum.Material.SmoothPlastic
p40.Name = "Wedge"
p40.CFrame = CFrame.new(-1.48933268, 3.99002528, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p40.CanCollide = false
p40.Locked = true
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("SpecialMesh", p40)
b40.MeshType = Enum.MeshType.Wedge
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p41 = Instance.new("WedgePart", m6)
p41.BrickColor = BrickColor.new("Really black")
p41.Material = Enum.Material.SmoothPlastic
p41.Name = "Wedge"
p41.CFrame = CFrame.new(-1.76917338, 2.59081101, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p41.CanCollide = false
p41.Locked = true
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("SpecialMesh", p41)
b41.MeshType = Enum.MeshType.Wedge
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p42 = Instance.new("WedgePart", m6)
p42.BrickColor = BrickColor.new("Really black")
p42.Material = Enum.Material.SmoothPlastic
p42.Name = "Wedge"
p42.CFrame = CFrame.new(0.679442644, 2.10108781, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p42.CanCollide = false
p42.Locked = true
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("SpecialMesh", p42)
b42.MeshType = Enum.MeshType.Wedge
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p43 = Instance.new("WedgePart", m6)
p43.BrickColor = BrickColor.new("Really black")
p43.Material = Enum.Material.SmoothPlastic
p43.Name = "Wedge"
p43.CFrame = CFrame.new(-1.76917338, 2.87065363, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p43.CanCollide = false
p43.Locked = true
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("SpecialMesh", p43)
b43.MeshType = Enum.MeshType.Wedge
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p44 = Instance.new("WedgePart", m6)
p44.BrickColor = BrickColor.new("Really black")
p44.Material = Enum.Material.SmoothPlastic
p44.Name = "Wedge"
p44.CFrame = CFrame.new(-1.41937125, 4.26986837, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p44.CanCollide = false
p44.Locked = true
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("SpecialMesh", p44)
b44.MeshType = Enum.MeshType.Wedge
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p45 = Instance.new("WedgePart", m6)
p45.BrickColor = BrickColor.new("Really black")
p45.Material = Enum.Material.SmoothPlastic
p45.Name = "Wedge"
p45.CFrame = CFrame.new(-0.999610066, 2.10108781, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p45.CanCollide = false
p45.Locked = true
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b45 = Instance.new("SpecialMesh", p45)
b45.MeshType = Enum.MeshType.Wedge
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p46 = Instance.new("WedgePart", m6)
p46.BrickColor = BrickColor.new("Really black")
p46.Material = Enum.Material.SmoothPlastic
p46.Name = "Wedge"
p46.CFrame = CFrame.new(0.46955356, 4.68963194, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p46.CanCollide = false
p46.Locked = true
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b46 = Instance.new("SpecialMesh", p46)
b46.MeshType = Enum.MeshType.Wedge
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p47 = Instance.new("Part", m6)
p47.BrickColor = BrickColor.new("Really black")
p47.Material = Enum.Material.SmoothPlastic
p47.CFrame = CFrame.new(0.819356859, 4.40979004, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p47.CanCollide = false
p47.Locked = true
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b47 = Instance.new("BlockMesh", p47)
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p48 = Instance.new("Part", m6)
p48.BrickColor = BrickColor.new("Really black")
p48.Material = Enum.Material.SmoothPlastic
p48.Name = "CapeLevel4"
p48.CFrame = CFrame.new(-0.300008506, 2.66077495, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p48.CanCollide = false
p48.Locked = true
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(2.3786521, 0.559682727, 0.232357636)
p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b48 = Instance.new("BlockMesh", p48)
b48.Name = "Mesh"
b48.Scale = Vector3.new(1, 1, 0.602178097)
p49 = Instance.new("WedgePart", m6)
p49.BrickColor = BrickColor.new("Really black")
p49.Material = Enum.Material.SmoothPlastic
p49.Name = "Wedge"
p49.CFrame = CFrame.new(0.819356859, 4.26986837, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p49.CanCollide = false
p49.Locked = true
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b49 = Instance.new("SpecialMesh", p49)
b49.MeshType = Enum.MeshType.Wedge
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p50 = Instance.new("Part", m6)
p50.BrickColor = BrickColor.new("Really black")
p50.Material = Enum.Material.SmoothPlastic
p50.Name = "CapeLevel1SubPart"
p50.CFrame = CFrame.new(-0.300008506, 4.33982658, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p50.CanCollide = false
p50.Locked = true
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(1.81896901, 0.559682727, 0.232357636)
p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b50 = Instance.new("BlockMesh", p50)
b50.Name = "Mesh"
b50.Scale = Vector3.new(1, 1, 0.602178097)
p51 = Instance.new("Part", m6)
p51.BrickColor = BrickColor.new("Really black")
p51.Material = Enum.Material.SmoothPlastic
p51.CFrame = CFrame.new(-1.55929291, 3.85010386, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p51.CanCollide = false
p51.Locked = true
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b51 = Instance.new("BlockMesh", p51)
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p52 = Instance.new("Part", m6)
p52.BrickColor = BrickColor.new("Really black")
p52.Material = Enum.Material.SmoothPlastic
p52.CFrame = CFrame.new(-1.41937149, 3.71018171, 4.03967237, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p52.CanCollide = false
p52.Locked = true
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b52 = Instance.new("BlockMesh", p52)
b52.Name = "Mesh"
b52.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p53 = Instance.new("WedgePart", m6)
p53.BrickColor = BrickColor.new("Really black")
p53.Material = Enum.Material.SmoothPlastic
p53.Name = "Wedge"
p53.CFrame = CFrame.new(-0.0201580226, 2.03113341, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p53.CanCollide = false
p53.Locked = true
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b53 = Instance.new("SpecialMesh", p53)
b53.MeshType = Enum.MeshType.Wedge
b53.Name = "Mesh"
b53.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p54 = Instance.new("Part", m6)
p54.BrickColor = BrickColor.new("Really black")
p54.Material = Enum.Material.SmoothPlastic
p54.CFrame = CFrame.new(-0.300009966, 1.68132639, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p54.CanCollide = false
p54.Locked = true
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.232357651, 0.279841423, 0.232357636)
p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b54 = Instance.new("BlockMesh", p54)
b54.Name = "Mesh"
b54.Scale = Vector3.new(0.602178395, 1, 0.602178097)
p55 = Instance.new("WedgePart", m6)
p55.BrickColor = BrickColor.new("Really black")
p55.Material = Enum.Material.SmoothPlastic
p55.Name = "Wedge"
p55.CFrame = CFrame.new(0.39960131, 2.10108781, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p55.CanCollide = false
p55.Locked = true
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b55 = Instance.new("SpecialMesh", p55)
b55.MeshType = Enum.MeshType.Wedge
b55.Name = "Mesh"
b55.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p56 = Instance.new("WedgePart", m6)
p56.BrickColor = BrickColor.new("Really black")
p56.Material = Enum.Material.SmoothPlastic
p56.Name = "Wedge"
p56.CFrame = CFrame.new(1.23911822, 3.29041815, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p56.CanCollide = false
p56.Locked = true
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b56 = Instance.new("SpecialMesh", p56)
b56.MeshType = Enum.MeshType.Wedge
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p57 = Instance.new("WedgePart", m6)
p57.BrickColor = BrickColor.new("Really black")
p57.Material = Enum.Material.SmoothPlastic
p57.Name = "Wedge"
p57.CFrame = CFrame.new(0.749394774, 4.54971123, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p57.CanCollide = false
p57.Locked = true
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b57 = Instance.new("SpecialMesh", p57)
b57.MeshType = Enum.MeshType.Wedge
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p58 = Instance.new("Part", m6)
p58.BrickColor = BrickColor.new("Really black")
p58.Material = Enum.Material.SmoothPlastic
p58.CFrame = CFrame.new(0.819354892, 3.71018171, 4.03967237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p58.CanCollide = false
p58.Locked = true
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b58 = Instance.new("BlockMesh", p58)
b58.Name = "Mesh"
b58.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p59 = Instance.new("WedgePart", m6)
p59.BrickColor = BrickColor.new("Really black")
p59.Material = Enum.Material.SmoothPlastic
p59.Name = "Wedge"
p59.CFrame = CFrame.new(0.259678036, 2.31096983, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p59.CanCollide = false
p59.Locked = true
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b59 = Instance.new("SpecialMesh", p59)
b59.MeshType = Enum.MeshType.Wedge
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p60 = Instance.new("Part", m6)
p60.BrickColor = BrickColor.new("Really black")
p60.Material = Enum.Material.SmoothPlastic
p60.Name = "NeckPart"
p60.CFrame = CFrame.new(-0.300008506, 4.82955122, 3.8997519, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p60.CanCollide = false
p60.Locked = true
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(1.25928628, 0.232357651, 0.419762105)
p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b60 = Instance.new("BlockMesh", p60)
b60.Name = "Mesh"
b60.Scale = Vector3.new(1, 0.602178097, 1)
p61 = Instance.new("Part", m6)
p61.BrickColor = BrickColor.new("Really black")
p61.Material = Enum.Material.SmoothPlastic
p61.CFrame = CFrame.new(0.959281087, 2.73073363, 4.03967333, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p61.CanCollide = false
p61.Locked = true
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b61 = Instance.new("BlockMesh", p61)
b61.Name = "Mesh"
b61.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p62 = Instance.new("WedgePart", m6)
p62.BrickColor = BrickColor.new("Really black")
p62.Material = Enum.Material.SmoothPlastic
p62.Name = "Wedge"
p62.CFrame = CFrame.new(1.16916382, 2.87065434, 4.03967333, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p62.CanCollide = false
p62.Locked = true
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b62 = Instance.new("SpecialMesh", p62)
b62.MeshType = Enum.MeshType.Wedge
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p63 = Instance.new("WedgePart", m6)
p63.BrickColor = BrickColor.new("Really black")
p63.Material = Enum.Material.SmoothPlastic
p63.Name = "Wedge"
p63.CFrame = CFrame.new(1.37904489, 2.73073268, 4.03967333, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p63.CanCollide = false
p63.Locked = true
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b63 = Instance.new("SpecialMesh", p63)
b63.MeshType = Enum.MeshType.Wedge
b63.Name = "Mesh"
b63.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p64 = Instance.new("WedgePart", m6)
p64.BrickColor = BrickColor.new("Really black")
p64.Material = Enum.Material.SmoothPlastic
p64.Name = "Wedge"
p64.CFrame = CFrame.new(-0.439923674, 1.68132377, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p64.CanCollide = false
p64.Locked = true
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.232357651, 0.279841423, 0.232357636)
p64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b64 = Instance.new("SpecialMesh", p64)
b64.MeshType = Enum.MeshType.Wedge
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p65 = Instance.new("WedgePart", m6)
p65.BrickColor = BrickColor.new("Really black")
p65.Material = Enum.Material.SmoothPlastic
p65.Name = "Wedge"
p65.CFrame = CFrame.new(-0.859687686, 2.31096983, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p65.CanCollide = false
p65.Locked = true
p65.FormFactor = Enum.FormFactor.Custom
p65.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b65 = Instance.new("SpecialMesh", p65)
b65.MeshType = Enum.MeshType.Wedge
b65.Name = "Mesh"
b65.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p66 = Instance.new("WedgePart", m6)
p66.BrickColor = BrickColor.new("Really black")
p66.Material = Enum.Material.SmoothPlastic
p66.Name = "Wedge"
p66.CFrame = CFrame.new(-1.55929291, 3.71018267, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p66.CanCollide = false
p66.Locked = true
p66.FormFactor = Enum.FormFactor.Custom
p66.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b66 = Instance.new("SpecialMesh", p66)
b66.MeshType = Enum.MeshType.Wedge
b66.Name = "Mesh"
b66.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p67 = Instance.new("WedgePart", m6)
p67.BrickColor = BrickColor.new("Really black")
p67.Material = Enum.Material.SmoothPlastic
p67.Name = "Wedge"
p67.CFrame = CFrame.new(-0.719767809, 2.31096911, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p67.CanCollide = false
p67.Locked = true
p67.FormFactor = Enum.FormFactor.Custom
p67.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b67 = Instance.new("SpecialMesh", p67)
b67.MeshType = Enum.MeshType.Wedge
b67.Name = "Mesh"
b67.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p68 = Instance.new("WedgePart", m6)
p68.BrickColor = BrickColor.new("Really black")
p68.Name = "Wedge"
p68.CFrame = CFrame.new(-1.17450571, 1.89121199, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p68.CanCollide = false
p68.Locked = true
p68.FormFactor = Enum.FormFactor.Custom
p68.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b68 = Instance.new("SpecialMesh", p68)
b68.MeshType = Enum.MeshType.Wedge
b68.Name = "Mesh"
b68.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p69 = Instance.new("WedgePart", m6)
p69.BrickColor = BrickColor.new("Really black")
p69.Name = "Wedge"
p69.CFrame = CFrame.new(-1.10454547, 1.89121199, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p69.CanCollide = false
p69.Locked = true
p69.FormFactor = Enum.FormFactor.Custom
p69.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b69 = Instance.new("SpecialMesh", p69)
b69.MeshType = Enum.MeshType.Wedge
b69.Name = "Mesh"
b69.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p70 = Instance.new("WedgePart", m6)
p70.BrickColor = BrickColor.new("Really black")
p70.Material = Enum.Material.SmoothPlastic
p70.Name = "Wedge"
p70.CFrame = CFrame.new(0.889316559, 3.99002528, 4.03967237, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p70.CanCollide = false
p70.Locked = true
p70.FormFactor = Enum.FormFactor.Custom
p70.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b70 = Instance.new("SpecialMesh", p70)
b70.MeshType = Enum.MeshType.Wedge
b70.Name = "Mesh"
b70.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p71 = Instance.new("WedgePart", m6)
p71.BrickColor = BrickColor.new("Really black")
p71.Name = "Wedge"
p71.CFrame = CFrame.new(-0.334977895, 1.47144794, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p71.CanCollide = false
p71.Locked = true
p71.FormFactor = Enum.FormFactor.Custom
p71.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b71 = Instance.new("SpecialMesh", p71)
b71.MeshType = Enum.MeshType.Wedge
b71.Name = "Mesh"
b71.Scale = Vector3.new(0.602178395, 0.602178395, 0.301089197)
p72 = Instance.new("WedgePart", m6)
p72.BrickColor = BrickColor.new("Really black")
p72.Material = Enum.Material.SmoothPlastic
p72.Name = "Wedge"
p72.CFrame = CFrame.new(-0.579845786, 2.03112626, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p72.CanCollide = false
p72.Locked = true
p72.FormFactor = Enum.FormFactor.Custom
p72.Size = Vector3.new(0.232357651, 0.419762105, 0.232357636)
p72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b72 = Instance.new("SpecialMesh", p72)
b72.MeshType = Enum.MeshType.Wedge
b72.Name = "Mesh"
b72.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p73 = Instance.new("WedgePart", m6)
p73.BrickColor = BrickColor.new("Really black")
p73.Material = Enum.Material.SmoothPlastic
p73.Name = "Wedge"
p73.CFrame = CFrame.new(-1.41937125, 2.31096983, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p73.CanCollide = false
p73.Locked = true
p73.FormFactor = Enum.FormFactor.Custom
p73.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b73 = Instance.new("SpecialMesh", p73)
b73.MeshType = Enum.MeshType.Wedge
b73.Name = "Mesh"
b73.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p74 = Instance.new("WedgePart", m6)
p74.BrickColor = BrickColor.new("Really black")
p74.Material = Enum.Material.SmoothPlastic
p74.Name = "Wedge"
p74.CFrame = CFrame.new(1.16916382, 2.59081125, 4.03967333, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p74.CanCollide = false
p74.Locked = true
p74.FormFactor = Enum.FormFactor.Custom
p74.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b74 = Instance.new("SpecialMesh", p74)
b74.MeshType = Enum.MeshType.Wedge
b74.Name = "Mesh"
b74.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p75 = Instance.new("WedgePart", m6)
p75.BrickColor = BrickColor.new("Really black")
p75.Material = Enum.Material.SmoothPlastic
p75.Name = "Wedge"
p75.CFrame = CFrame.new(-0.160081401, 1.68132377, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p75.CanCollide = false
p75.Locked = true
p75.FormFactor = Enum.FormFactor.Custom
p75.Size = Vector3.new(0.232357651, 0.279841363, 0.232357636)
p75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b75 = Instance.new("SpecialMesh", p75)
b75.MeshType = Enum.MeshType.Wedge
b75.Name = "Mesh"
b75.Scale = Vector3.new(0.602178097, 1, 0.602178097)
p76 = Instance.new("WedgePart", m6)
p76.BrickColor = BrickColor.new("Really black")
p76.Material = Enum.Material.SmoothPlastic
p76.Name = "Wedge"
p76.CFrame = CFrame.new(0.819362521, 2.31096983, 4.03967237, 0, 0, -1, 0, -1, 0, -1, 0, 0)
p76.CanCollide = false
p76.Locked = true
p76.FormFactor = Enum.FormFactor.Custom
p76.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b76 = Instance.new("SpecialMesh", p76)
b76.MeshType = Enum.MeshType.Wedge
b76.Name = "Mesh"
b76.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p77 = Instance.new("WedgePart", m6)
p77.BrickColor = BrickColor.new("Really black")
p77.Material = Enum.Material.SmoothPlastic
p77.Name = "Wedge"
p77.CFrame = CFrame.new(-1.55929291, 4.40979004, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p77.CanCollide = false
p77.Locked = true
p77.FormFactor = Enum.FormFactor.Custom
p77.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b77 = Instance.new("SpecialMesh", p77)
b77.MeshType = Enum.MeshType.Wedge
b77.Name = "Mesh"
b77.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p78 = Instance.new("WedgePart", m6)
p78.BrickColor = BrickColor.new("Really black")
p78.Material = Enum.Material.SmoothPlastic
p78.Name = "Wedge"
p78.CFrame = CFrame.new(-1.34941173, 4.54971123, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p78.CanCollide = false
p78.Locked = true
p78.FormFactor = Enum.FormFactor.Custom
p78.Size = Vector3.new(0.232357651, 0.232357651, 0.279841363)
p78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b78 = Instance.new("SpecialMesh", p78)
b78.MeshType = Enum.MeshType.Wedge
b78.Name = "Mesh"
b78.Scale = Vector3.new(0.602178097, 0.602178097, 1)
p79 = Instance.new("WedgePart", m6)
p79.BrickColor = BrickColor.new("Really black")
p79.Material = Enum.Material.SmoothPlastic
p79.Name = "Wedge"
p79.CFrame = CFrame.new(-1.6992141, 3.85010386, 4.03967237, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p79.CanCollide = false
p79.Locked = true
p79.FormFactor = Enum.FormFactor.Custom
p79.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b79 = Instance.new("SpecialMesh", p79)
b79.MeshType = Enum.MeshType.Wedge
b79.Name = "Mesh"
b79.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
p80 = Instance.new("WedgePart", m6)
p80.BrickColor = BrickColor.new("Really black")
p80.Material = Enum.Material.SmoothPlastic
p80.Name = "Wedge"
p80.CFrame = CFrame.new(-1.6992135, 3.1504972, 4.03967237, 0, 0, 1, 0, -1, 0, 1, 0, 0)
p80.CanCollide = false
p80.Locked = true
p80.FormFactor = Enum.FormFactor.Custom
p80.Size = Vector3.new(0.232357651, 0.232357651, 0.232357636)
p80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b80 = Instance.new("SpecialMesh", p80)
b80.MeshType = Enum.MeshType.Wedge
b80.Name = "Mesh"
b80.Scale = Vector3.new(0.602178097, 0.602178097, 0.602178097)
w1 = Instance.new("Weld", p1)
w1.Name = "Joint"
w1.Part0 = p1
w1.C0 = CFrame.new(0, 0, 0.139921591, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w1.Part1 = p47
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Joint"
w2.Part0 = p2
w2.C0 = CFrame.new(0, -2.7097974e-006, 0.139918938, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w2.Part1 = p11
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Joint"
w3.Part0 = p3
w3.C0 = CFrame.new(0, 0.559684455, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p50
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Joint"
w4.Part0 = p4
w4.C0 = CFrame.new(-0.139921427, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Joint"
w5.Part0 = p5
w5.C0 = CFrame.new(-0.139920607, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p27
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Joint"
w6.Part0 = p6
w6.C0 = CFrame.new(6.98293934e-006, 0.13992101, 1.35489881e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p14
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Joint"
w7.Part0 = p7
w7.C0 = CFrame.new(-0.139921531, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p10
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Joint"
w8.Part0 = p8
w8.C0 = CFrame.new(0, 0.209881723, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p32
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Joint"
w9.Part0 = p9
w9.C0 = CFrame.new(0, 0.279842764, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p16
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Joint"
w10.Part0 = p10
w10.C0 = CFrame.new(-0.139921531, 1.04222977e-006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p61
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Joint"
w11.Part0 = p11
w11.C0 = CFrame.new(0, 0.209881723, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p13
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Joint"
w12.Part0 = p12
w12.C0 = CFrame.new(-0.139921427, -0.139921635, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p29
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Joint"
w13.Part0 = p13
w13.C0 = CFrame.new(0.839523137, 0.349802732, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p48
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Joint"
w14.Part0 = p14
w14.C0 = CFrame.new(-6.98293934e-006, 1.25067584e-006, -0.139921844, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p60
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Joint"
w15.Part0 = p15
w15.C0 = CFrame.new(-0.139920712, -0.139923528, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p17
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p16)
w16.Name = "Joint"
w16.Part0 = p16
w16.C0 = CFrame.new(1.45912168e-006, 0.349802852, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p48
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "Joint"
w17.Part0 = p17
w17.C0 = CFrame.new(-0.97944206, 0.0699603036, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w17.Part1 = p50
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p18)
w18.Name = "Joint"
w18.Part0 = p18
w18.C0 = CFrame.new(-0.979444683, 0.0699603036, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p50
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p19)
w19.Name = "Joint"
w19.Part0 = p19
w19.C0 = CFrame.new(0, -0.2098784, 0.0349924229, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w19.Part1 = p54
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p20)
w20.Name = "Joint"
w20.Part0 = p20
w20.C0 = CFrame.new(-0.139921427, -0.13992101, 1.35489881e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20.Part1 = p21
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p21)
w21.Name = "Joint"
w21.Part0 = p21
w21.C0 = CFrame.new(-1.25928402, 0.0699627995, -1.35489881e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21.Part1 = p37
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p22)
w22.Name = "Joint"
w22.Part0 = p22
w22.C0 = CFrame.new(0, -0.209878504, 0.0349705629, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w22.Part1 = p8
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p23)
w23.Name = "Joint"
w23.Part0 = p23
w23.C0 = CFrame.new(0, 0, 0.139921427, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w23.Part1 = p35
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p24)
w24.Name = "Joint"
w24.Part0 = p24
w24.C0 = CFrame.new(8.33783815e-007, -0.209883824, 1.25928962, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w24.Part1 = p48
w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p25)
w25.Name = "Joint"
w25.Part0 = p25
w25.C0 = CFrame.new(0, -0.209878504, 0.0349897929, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w25.Part1 = p8
w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26 = Instance.new("Weld", p26)
w26.Name = "Joint"
w26.Part0 = p26
w26.C0 = CFrame.new(0, -3.33513526e-006, 0.769568086, 0, 0, -1, 0, 1, 0, 1, 0, 0)
w26.Part1 = p6
w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27 = Instance.new("Weld", p27)
w27.Name = "Joint"
w27.Part0 = p27
w27.C0 = CFrame.new(-1.25928354, -0.0699575916, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w27.Part1 = p48
w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28 = Instance.new("Weld", p28)
w28.Name = "Joint"
w28.Part0 = p28
w28.C0 = CFrame.new(0, -0.13992101, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w28.Part1 = p35
w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29 = Instance.new("Weld", p29)
w29.Name = "Joint"
w29.Part0 = p29
w29.C0 = CFrame.new(-1.25928354, 0.0699634254, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w29.Part1 = p37
w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30 = Instance.new("Weld", p30)
w30.Name = "Joint"
w30.Part0 = p30
w30.C0 = CFrame.new(0, -0.139920816, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w30.Part1 = p20
w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31 = Instance.new("Weld", p31)
w31.Name = "Joint"
w31.Part0 = p31
w31.C0 = CFrame.new(0, -3.02246644e-006, 0.419769108, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w31.Part1 = p16
w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32 = Instance.new("Weld", p32)
w32.Name = "Joint"
w32.Part0 = p32
w32.C0 = CFrame.new(-0.839526176, 0.349802852, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32.Part1 = p48
w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w33 = Instance.new("Weld", p33)
w33.Name = "Joint"
w33.Part0 = p33
w33.C0 = CFrame.new(1.3548987e-006, -0.279842436, 0.0699624866, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w33.Part1 = p21
w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w34 = Instance.new("Weld", p34)
w34.Name = "Joint"
w34.Part0 = p34
w34.C0 = CFrame.new(0, -0.279842019, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w34.Part1 = p27
w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35 = Instance.new("Weld", p35)
w35.Name = "Joint"
w35.Part0 = p35
w35.C0 = CFrame.new(-0.139920607, -0.139922053, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35.Part1 = p58
w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w36 = Instance.new("Weld", p36)
w36.Name = "Joint"
w36.Part0 = p36
w36.C0 = CFrame.new(0, -0.279843062, 0.0699611381, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w36.Part1 = p29
w36.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w37 = Instance.new("Weld", p37)
w37.Name = "Joint"
w37.Part0 = p37
w37.C0 = CFrame.new(0, 0.559682429, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w37.Part1 = p3
w37.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w38 = Instance.new("Weld", p38)
w38.Name = "Joint"
w38.Part0 = p38
w38.C0 = CFrame.new(0, 0, 0.13992101, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w38.Part1 = p4
w38.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w39 = Instance.new("Weld", p39)
w39.Name = "Joint"
w39.Part0 = p39
w39.C0 = CFrame.new(0, 0, 0.139921427, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w39.Part1 = p12
w39.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w40 = Instance.new("Weld", p40)
w40.Name = "Joint"
w40.Part0 = p40
w40.C0 = CFrame.new(0, -0.279843479, 0.0699611381, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w40.Part1 = p52
w40.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w41 = Instance.new("Weld", p41)
w41.Name = "Joint"
w41.Part0 = p41
w41.C0 = CFrame.new(0, -0.139921427, 0.0699607134, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w41.Part1 = p5
w41.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w42 = Instance.new("Weld", p42)
w42.Name = "Joint"
w42.Part0 = p42
w42.C0 = CFrame.new(0, -2.7097974e-006, 0.139925033, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w42.Part1 = p8
w42.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w43 = Instance.new("Weld", p43)
w43.Name = "Joint"
w43.Part0 = p43
w43.C0 = CFrame.new(0, -0.139921218, 0.0699607134, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w43.Part1 = p5
w43.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w44 = Instance.new("Weld", p44)
w44.Name = "Joint"
w44.Part0 = p44
w44.C0 = CFrame.new(0, -0.139921844, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w44.Part1 = p15
w44.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w45 = Instance.new("Weld", p45)
w45.Name = "Joint"
w45.Part0 = p45
w45.C0 = CFrame.new(0, -2.7097974e-006, 0.139921531, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w45.Part1 = p11
w45.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w46 = Instance.new("Weld", p46)
w46.Name = "Joint"
w46.Part0 = p46
w46.C0 = CFrame.new(0, -3.33513526e-006, 0.769562066, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w46.Part1 = p6
w46.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w47 = Instance.new("Weld", p47)
w47.Name = "Joint"
w47.Part0 = p47
w47.C0 = CFrame.new(-0.139920652, -0.139923528, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w47.Part1 = p18
w47.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w48 = Instance.new("Weld", p48)
w48.Name = "Joint"
w48.Part0 = p48
w48.C0 = CFrame.new(0, 0.559684873, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w48.Part1 = p37
w48.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w49 = Instance.new("Weld", p49)
w49.Name = "Joint"
w49.Part0 = p49
w49.C0 = CFrame.new(0, -0.139921844, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w49.Part1 = p47
w49.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w50 = Instance.new("Weld", p50)
w50.Name = "Joint"
w50.Part0 = p50
w50.C0 = CFrame.new(0, 0.349801898, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w50.Part1 = p6
w50.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w51 = Instance.new("Weld", p51)
w51.Name = "Joint"
w51.Part0 = p51
w51.C0 = CFrame.new(-0.139921427, -0.139922053, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w51.Part1 = p52
w51.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w52 = Instance.new("Weld", p52)
w52.Name = "Joint"
w52.Part0 = p52
w52.C0 = CFrame.new(-1.11936295, 0.0699607134, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w52.Part1 = p3
w52.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w53 = Instance.new("Weld", p53)
w53.Name = "Joint"
w53.Part0 = p53
w53.C0 = CFrame.new(0, 3.9604729e-006, 0.279851943, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w53.Part1 = p9
w53.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w54 = Instance.new("Weld", p54)
w54.Name = "Joint"
w54.Part0 = p54
w54.C0 = CFrame.new(0, 0.349802941, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w54.Part1 = p9
w54.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w55 = Instance.new("Weld", p55)
w55.Name = "Joint"
w55.Part0 = p55
w55.C0 = CFrame.new(0, -2.7097974e-006, 0.139916331, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w55.Part1 = p8
w55.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w56 = Instance.new("Weld", p56)
w56.Name = "Joint"
w56.Part0 = p56
w56.C0 = CFrame.new(0, 0, 0.139921322, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w56.Part1 = p20
w56.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w57 = Instance.new("Weld", p57)
w57.Name = "Joint"
w57.Part0 = p57
w57.C0 = CFrame.new(0, -0.139921427, -0.0699620694, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w57.Part1 = p47
w57.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w58 = Instance.new("Weld", p58)
w58.Name = "Joint"
w58.Part0 = p58
w58.C0 = CFrame.new(-1.11936343, 0.0699607134, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w58.Part1 = p3
w58.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w59 = Instance.new("Weld", p59)
w59.Name = "Joint"
w59.Part0 = p59
w59.C0 = CFrame.new(0, -2.50135167e-006, 0.279839605, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w59.Part1 = p32
w59.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w60 = Instance.new("Weld", p61)
w60.Name = "Joint"
w60.Part0 = p61
w60.C0 = CFrame.new(-1.25928962, -0.0699586272, -8.33783815e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w60.Part1 = p48
w60.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w61 = Instance.new("Weld", p62)
w61.Name = "Joint"
w61.Part0 = p62
w61.C0 = CFrame.new(0, -0.139921635, 0.0699612424, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w61.Part1 = p10
w61.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w62 = Instance.new("Weld", p63)
w62.Name = "Joint"
w62.Part0 = p63
w62.C0 = CFrame.new(0, 0, 0.139920712, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w62.Part1 = p7
w62.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w63 = Instance.new("Weld", p64)
w63.Name = "Joint"
w63.Part0 = p64
w63.C0 = CFrame.new(0, -2.60557431e-006, 0.139913708, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w63.Part1 = p54
w63.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w64 = Instance.new("Weld", p65)
w64.Name = "Joint"
w64.Part0 = p65
w64.C0 = CFrame.new(0, -2.50135167e-006, 0.279843956, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w64.Part1 = p13
w64.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w65 = Instance.new("Weld", p66)
w65.Name = "Joint"
w65.Part0 = p66
w65.C0 = CFrame.new(0, 1.04222977e-006, 0.139921427, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w65.Part1 = p52
w65.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w66 = Instance.new("Weld", p67)
w66.Name = "Joint"
w66.Part0 = p67
w66.C0 = CFrame.new(0, -3.02246644e-006, 0.419757843, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w66.Part1 = p16
w66.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w67 = Instance.new("Weld", p68)
w67.Name = "Joint"
w67.Part0 = p68
w67.C0 = CFrame.new(0, -0.209878504, 0.0349741057, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w67.Part1 = p11
w67.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w68 = Instance.new("Weld", p69)
w68.Name = "Joint"
w68.Part0 = p69
w68.C0 = CFrame.new(0, -0.209878504, 0.0349861942, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w68.Part1 = p11
w68.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w69 = Instance.new("Weld", p70)
w69.Name = "Joint"
w69.Part0 = p70
w69.C0 = CFrame.new(0, -0.279843479, 0.0699616596, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w69.Part1 = p58
w69.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w70 = Instance.new("Weld", p71)
w70.Name = "Joint"
w70.Part0 = p71
w70.C0 = CFrame.new(0, -0.2098784, 0.0349679329, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w70.Part1 = p54
w70.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w71 = Instance.new("Weld", p72)
w71.Name = "Joint"
w71.Part0 = p72
w71.C0 = CFrame.new(0, -3.02246644e-006, 0.27983579, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w71.Part1 = p9
w71.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w72 = Instance.new("Weld", p73)
w72.Name = "Joint"
w72.Part0 = p73
w72.C0 = CFrame.new(0, -2.50135167e-006, 0.279839605, 0, 0, 1, 0, -1, 0, 1, 0, 0)
w72.Part1 = p13
w72.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w73 = Instance.new("Weld", p74)
w73.Name = "Joint"
w73.Part0 = p74
w73.C0 = CFrame.new(0, -0.139921427, 0.0699612424, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w73.Part1 = p10
w73.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w74 = Instance.new("Weld", p75)
w74.Name = "Joint"
w74.Part0 = p75
w74.C0 = CFrame.new(0, -2.60557431e-006, 0.139928564, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w74.Part1 = p54
w74.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w75 = Instance.new("Weld", p76)
w75.Name = "Joint"
w75.Part0 = p76
w75.C0 = CFrame.new(0, -2.50135167e-006, 0.27984485, 0, 0, -1, 0, -1, 0, -1, 0, 0)
w75.Part1 = p32
w75.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w76 = Instance.new("Weld", p77)
w76.Name = "Joint"
w76.Part0 = p77
w76.C0 = CFrame.new(0, 0, 0.139921635, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w76.Part1 = p15
w76.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w77 = Instance.new("Weld", p78)
w77.Name = "Joint"
w77.Part0 = p78
w77.C0 = CFrame.new(0, -0.139921427, -0.0699594691, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w77.Part1 = p15
w77.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w78 = Instance.new("Weld", p79)
w78.Name = "Joint"
w78.Part0 = p79
w78.C0 = CFrame.new(0, 0, 0.139921218, 0, 0, 1, 0, 1, 0, -1, 0, 0)
w78.Part1 = p51
w78.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w79 = Instance.new("Weld", p80)
w79.Name = "Joint"
w79.Part0 = p80
w79.C0 = CFrame.new(0, -0.13992101, 0, 0, 0, -1, 0, -1, -0, -1, 0, -0)
w79.Part1 = p12
w79.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m6.Parent = torso
m6:MakeJoints()
----------------------------------------------------
local cor6 = Instance.new("Part", torso.Cloak)
cor6.Name = "Thingy"
cor6.Locked = true
cor6.BottomSurface = 0
cor6.CanCollide = false
cor6.Size = Vector3.new(1,1,1)
cor6.Transparency = 1
cor6.TopSurface = 0
corw6 = Instance.new("Weld", cor6)
corw6.Part0 = torso
corw6.Part1 = cor6
corw6.C0 = CFrame.new(0, 1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld6 = Instance.new("Weld", torso.Cloak.NeckPart)
weld6.Part0 = cor6
weld6.Part1 = torso.Cloak.NeckPart
weld6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Amulet
m7 = Instance.new("Model")
m7.Name = "Amulet"
p1 = Instance.new("Part", m7)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Neon
p1.Name = "Center"
p1.CFrame = CFrame.new(-1.0658141e-014, 14.4125643, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Shape = Enum.PartType.Cylinder
p1.Size = Vector3.new(0.5, 0.5, 0.5)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p2 = Instance.new("Part", m7)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.Name = "Bottom"
p2.CFrame = CFrame.new(1.19209318e-007, 14.1625719, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.649999976, 0.649999976)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p2)
b1.MeshType = Enum.MeshType.Cylinder
b1.Name = "Mesh"
p3 = Instance.new("Part", m7)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Metal
p3.CFrame = CFrame.new(1.23580463e-007, 14.4625673, -0.280000001, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p3)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p4 = Instance.new("Part", m7)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.Metal
p4.CFrame = CFrame.new(1.19209318e-007, 14.4625673, 0.280000001, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p4)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p5 = Instance.new("Part", m7)
p5.BrickColor = BrickColor.new("Really black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(0.14000012, 14.4625673, -0.242487118, -3.78551732e-008, -0.866025388, -0.5, 1, -4.37113883e-008, 0, -2.18556941e-008, -0.5, 0.866025388)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p5)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p6 = Instance.new("Part", m7)
p6.BrickColor = BrickColor.new("Really black")
p6.Material = Enum.Material.Metal
p6.CFrame = CFrame.new(-0.139999881, 14.4625673, 0.242487103, -3.78551732e-008, -0.866025388, -0.5, 1, -4.37113883e-008, 0, -2.18556941e-008, -0.5, 0.866025388)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p6)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p7 = Instance.new("Part", m7)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(-0.242486984, 14.4625673, 0.139999986, -2.18556924e-008, -0.5, -0.866025388, 1, -4.37113847e-008, 0, -3.78551732e-008, -0.866025388, 0.5)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p7)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p8 = Instance.new("Part", m7)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.Metal
p8.CFrame = CFrame.new(0.242487192, 14.4625673, -0.139999971, -2.18556924e-008, -0.5, -0.866025388, 1, -4.37113847e-008, 0, -3.78551732e-008, -0.866025388, 0.5)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p8)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p9 = Instance.new("Part", m7)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Metal
p9.CFrame = CFrame.new(0.280000091, 14.4625673, -1.64313008e-014, 0, 0, -1, 1, -4.37113847e-008, 0, -4.37113847e-008, -1, 0)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p9)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p10 = Instance.new("Part", m7)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.Metal
p10.CFrame = CFrame.new(-0.279999852, 14.4625673, -1.49011772e-008, 0, 0, -1, 1, -4.37113847e-008, 0, -4.37113847e-008, -1, 0)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p10)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p11 = Instance.new("Part", m7)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(-0.242486984, 14.4625673, -0.139999986, 2.18556906e-008, 0.5, -0.866025388, 1, -4.37113847e-008, 0, -3.78551697e-008, -0.866025388, -0.5)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p11)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p12 = Instance.new("Part", m7)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.Metal
p12.CFrame = CFrame.new(0.242487192, 14.4625673, 0.139999971, 2.18556906e-008, 0.5, -0.866025388, 1, -4.37113847e-008, 0, -3.78551697e-008, -0.866025388, -0.5)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p12)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p13 = Instance.new("Part", m7)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Metal
p13.CFrame = CFrame.new(-0.139999866, 14.4625673, -0.242487073, 3.78551732e-008, 0.866025388, -0.5, 1, -4.37113812e-008, 1.77635684e-015, -2.18556924e-008, -0.5, -0.866025388)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p13)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p14 = Instance.new("Part", m7)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(0.14000012, 14.4625673, 0.242487073, 3.78551732e-008, 0.866025388, -0.5, 1, -4.37113812e-008, 1.77635684e-015, -2.18556924e-008, -0.5, -0.866025388)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p14)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(1, 0.300000012, 0.200000003)
p15 = Instance.new("Part", m7)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Metal
p15.Name = "Top"
p15.CFrame = CFrame.new(0, 14.7125645, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.649999976, 0.649999976)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p15)
b14.MeshType = Enum.MeshType.Cylinder
b14.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Joint"
w1.Part0 = p1
w1.C0 = CFrame.new(0.300000191, -1.31134357e-008, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p15
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Joint"
w2.Part0 = p2
w2.C0 = CFrame.new(0.249992371, 1.08281824e-007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p1
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Joint"
w3.Part0 = p3
w3.C0 = CFrame.new(-0.0500030518, 1.25766178e-007, 0.280000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p1
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Joint"
w4.Part0 = p4
w4.C0 = CFrame.new(-0.0500030518, 1.21395033e-007, -0.280000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p1
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Joint"
w5.Part0 = p5
w5.C0 = CFrame.new(-0.0500030518, 1.00163732e-007, 0.280000061, 1, -5.85621507e-009, -2.18556941e-008, -5.85621507e-009, 0.866025388, -0.5, 2.18556941e-008, 0.5, 0.866025388)
w5.Part1 = p1
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Joint"
w6.Part0 = p6
w6.C0 = CFrame.new(-0.0500030518, 1.00163732e-007, -0.279999942, 1, -5.85621507e-009, -2.18556941e-008, -5.85621507e-009, 0.866025388, -0.5, 2.18556941e-008, 0.5, 0.866025388)
w6.Part1 = p1
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Joint"
w7.Part0 = p7
w7.C0 = CFrame.new(-0.0500030518, 5.54602479e-008, -0.279999882, 1, -2.18556959e-008, -3.78551732e-008, -2.18556906e-008, 0.5, -0.866025388, 3.78551732e-008, 0.866025388, 0.5)
w7.Part1 = p1
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Joint"
w8.Part0 = p8
w8.C0 = CFrame.new(-0.0500030518, 7.03614091e-008, 0.280000061, 1, -2.18556959e-008, -3.78551732e-008, -2.18556906e-008, 0.5, -0.866025388, 3.78551732e-008, 0.866025388, 0.5)
w8.Part1 = p1
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Joint"
w9.Part0 = p9
w9.C0 = CFrame.new(-0.0500030518, 2.1856863e-009, 0.280000091, 1, -4.37113883e-008, -4.37113847e-008, -4.37113847e-008, 1.91068525e-015, -1, 4.37113883e-008, 1, 0)
w9.Part1 = p1
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Joint"
w10.Part0 = p10
w10.C0 = CFrame.new(-0.0500030518, -1.27154749e-008, -0.279999852, 1, -4.37113883e-008, -4.37113847e-008, -4.37113847e-008, 1.91068525e-015, -1, 4.37113883e-008, 1, 0)
w10.Part1 = p1
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Joint"
w11.Part0 = p11
w11.C0 = CFrame.new(-0.0500030518, -5.6298461e-008, -0.279999882, 1, -6.55670789e-008, -3.78551697e-008, -6.55670789e-008, -0.5, -0.866025388, 3.78551732e-008, 0.866025388, -0.5)
w11.Part1 = p1
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Joint"
w12.Part0 = p12
w12.C0 = CFrame.new(-0.0500030518, -6.37490416e-008, 0.280000061, 1, -6.55670789e-008, -3.78551697e-008, -6.55670789e-008, -0.5, -0.866025388, 3.78551732e-008, 0.866025388, -0.5)
w12.Part1 = p1
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Joint"
w13.Part0 = p13
w13.C0 = CFrame.new(-0.0500030518, -1.01001945e-007, -0.279999912, 1, -8.15665615e-008, -2.18556924e-008, -8.15665544e-008, -0.866025388, -0.5, 2.18556959e-008, 0.5, -0.866025388)
w13.Part1 = p1
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Joint"
w14.Part0 = p14
w14.C0 = CFrame.new(-0.0500030518, -1.08452525e-007, 0.280000031, 1, -8.15665615e-008, -2.18556924e-008, -8.15665544e-008, -0.866025388, -0.5, 2.18556959e-008, 0.5, -0.866025388)
w14.Part1 = p1
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m7.Parent = torso
m7:MakeJoints()
----------------------------------------------------
local cor7 = Instance.new("Part", torso.Amulet)
cor7.Name = "Thingy"
cor7.Locked = true
cor7.BottomSurface = 0
cor7.CanCollide = false
cor7.Size = Vector3.new(1, 1, 1)
cor7.Transparency = 1
cor7.TopSurface = 0
corw7 = Instance.new("Weld", cor7)
corw7.Part0 = torso.Torso.Connection
corw7.Part1 = cor7
corw7.C0 = CFrame.new(0, 0.26, 0.1) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0))
corw7.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(140))
weld7 = Instance.new("Weld", torso.Amulet)
weld7.Part0 = cor7
weld7.Part1 = torso.Amulet.Top
weld7.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))


----------------------------------------------------

----------------------------------------------------

----------------------------------------------------
models = {m,m2,m3,m4,m5,m6,m7,m8}
parts = {}
Stepped:connect(function()
	for i,v in pairs(models) do
		for _, a in pairs(v:GetChildren()) do
			if v:IsA("Part") and v.Name ~= "Thingy" then
				table.insert(parts, a)
				for i,v in pairs(parts) do
					v.CanCollide = false
				end
			end
		end
	end
end)
----------------------------------------------------
local animpose = "Idle1"
local lastanimpose = "Idle1"
local grab = false
local Smooth = 1
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------


----------------------------------------------------
----------------------------------------------------
definition = 5
bc = {}
bezierparts = {}
function NoOutline(Part)
	Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
function draw(p,d)
	for i=1,d do 
		local t = i/d
		bc[i] = p[1]*(1-t)^2+2*p[2]*(1-t)*t+p[3]*t^2
	end
	for i=1,d do
		local bcs = Instance.new("Part",char)
		NoOutline(bcs)
		bcs.Anchored = true
		bcs.CanCollide = false
		bcs.Material = "Neon"
		bcs.BrickColor = BrickColor.new("Really black")
		bcs.Size = Vector3.new(1,1,1)
		bcs.Shape = Enum.PartType.Ball
		bcs.CFrame = CFrame.new(bc[i])
		local bcp = Instance.new("Part",char)
		NoOutline(bcp)
		bcp.Anchored = true
		bcp.CanCollide = false
		bcp.Material = "Neon"
		bcp.BrickColor = BrickColor.new("Really black")
		local cm = Instance.new("CylinderMesh")
		cm.Parent = bcp
		if i ~= 1 then
			bcp.CFrame = CFrame.new(bc[i]:Lerp(bc[i-1],0.5),bc[i])*CFrame.Angles(math.pi/2,0,0)
			bcp.Size = Vector3.new(1,(bc[i]-bc[i-1]).magnitude,1)
		else
			bcp.CFrame = CFrame.new(bc[i]:Lerp(p[1],0.5),bc[i])*CFrame.Angles(math.pi/2,0,0)
			bcp.Size = Vector3.new(1,(bc[i]-p[1]).magnitude,1)
		end
		table.insert(bezierparts, bcs)
		table.insert(bezierparts, bcp)
	end
	Spawn(function() fat.Event:wait()
		for i,v in pairs(bezierparts) do
			v.Transparency = 1
		end
	end)
end
--local points = {larm.Position,rarn.Position,invisipart.Position}
--draw(points,definition)
mouse.KeyDown:connect(function(key)
    if key == "f" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.2)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.2)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0), math.rad(0)), 0.2)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(0), 0, math.rad(-10)), 0.2)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(0), 0, math.rad(10)), 0.2)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
				if Debounces.on == false then
					break
				end
				fat.Event:wait()
			end
			rpart = Instance.new("Part",rarm)
			NoOutline(rpart)
			rpart.Anchored = false
			rpart.Size = Vector3.new(1,1,1)
			rpart.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
			rpart.Transparency = 1
			newWeld(rarm, rpart, 0, 0, 0)
			rpart.Weld.C1 = CFrame.new(0, 1.1, 0)
			lpart = Instance.new("Part",larm)
			NoOutline(lpart)
			lpart.Anchored = false
			lpart.Size = Vector3.new(1,1,1)
			lpart.CFrame = larm.CFrame * CFrame.new(0,-1,0)
			lpart.Transparency = 1
			newWeld(larm, lpart, 0, 0, 0)
			lpart.Weld.C1 = CFrame.new(0, 1.1, 0)
			invisipart = Instance.new("Part",torso)
			NoOutline(invisipart)
			invisipart.Anchored = false
			invisipart.Size = Vector3.new(1,1,1)
			invisipart.Transparency = 1
			invisipart.CFrame = torso.CFrame
			newWeld(torso, invisipart, 0, 0, 0)
			invisipart.Weld.C1 = CFrame.new(0, 0, 6)
			table.insert(bezierparts, rpart)
			table.insert(bezierparts, lpart)
			table.insert(bezierparts, invisipart)
			for i = 1, 40 do
				local points = {lpart.Position,invisipart.Position,rpart.Position}
				draw(points,definition)
				--invisipart.Weld.C1 = invisipart.Weld.C1 + Vector3.new(0,0,0.6)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-90)), 0.1)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0), math.rad(0)), 0.2)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(0), 0, math.rad(-10)), 0.2)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(0), 0, math.rad(10)), 0.2)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
				if Debounces.on == false then
					break
				end
				fat.Event:wait()
			end
			for i,v in pairs(bezierparts) do
				v:Destroy()
			end
			--draw(points,definition)
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
pitches = {0.85, 0.9, 0.95, 1, 1.05, 1.1}
IDs = {"415880409","415880478"}
mouse.KeyDown:connect(function(key)
    if key == "h" then
		if Debounces.CanJoke == true then
			Debounces.CanJoke = false
			z = Instance.new("Sound",hed)
			z.SoundId = "rbxassetid://"..IDs[math.random(1,#IDs)]
			z.Pitch = 1
			z.Volume = 1
			z1 = Instance.new("Sound",hed)
			z1.SoundId = z.SoundId
			z1.Pitch = 1
			z1.Volume = 1
			wait()
			z:Play()
			z1:Play()
			wait(20)
			z:Destroy()
			z1:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "j" then
		if Debounces.CanJoke == true then
			Debounces.CanJoke = false
			z = Instance.new("Sound",hed)
			z.SoundId = "rbxassetid://415859013"
			z.Pitch = pitches[math.random(1,#pitches)]
			z.Volume = 1
			wait()
			z:Play()
			wait(2)
			z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "k" then
		if Debounces.CanJoke == true then
			Debounces.CanJoke = false
			z = Instance.new("Sound",hed)
			z.SoundId = "rbxassetid://415859085"
			z.Pitch = pitches[math.random(1,#pitches)]
			z.Volume = 1
			wait()
			z:Play()
			wait(2)
			z:Destroy()
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
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-80)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-70),0), 0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
            rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then break end
            fat.Event:wait()
        end
        con1=larm.LeftArm.LeftArmPlate.Touched:connect(function(hit)
		ht = hit.Parent
			for i,v in pairs(ht:GetChildren()) do 
				if v:IsA("Part") then
					v.CanCollide = false
					v.CustomPhysicalProperties = PhysicalProperties.new(0.001,0.001,0.001,0.001,0.001)
				end
			end
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
				hum1:ChangeState'Physics'
				gp = ht
				Grab = true
				asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-1,0.6),CFrame.new(0,0,0))
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
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.65,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
            rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then break end
            fat.Event:wait()
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
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.3)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), 0.3)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(-60),0), 0.3)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.3)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then end
			rs:wait()
		end
		for i = 1, 12 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.6)
            rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.3,-0.1)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-32)), 0.6)
            larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(40), math.rad(14)),0.6)
            hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0)), 0.6)
            torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.6)
            lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.4, .2, -0.8) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.6)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.4)
			if Debounces.on == false then end
			rs:wait()
		end
		Slam()
		if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
				if v:IsA("Part") then
					v.CanCollide = true
					v.CustomPhysicalProperties = PhysicalProperties.new(1,1,1,1,1)
				end
			end
		end
		stanceToggle = "Idle1"
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
end)
----------------------------------------------------
Change = false
mouse.KeyDown:connect(function(key)
    if key == "n" then
        if Change == false then
            Change = true
        stanceToggle = "Idle2"
    elseif Change == true then
        Change = false
        stanceToggle = "Idle1"
        end
    end
end)

mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
		Swing = 2
        char.Humanoid.WalkSpeed = 28
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
		Swing = 1
        char.Humanoid.WalkSpeed = 16
    end
end)

CR = torso.Cloak.Rotater
CR2 = torso.Cloak.CapeLevel1
CR3 = torso.Cloak.CapeLevel2
CR4 = torso.Cloak.CapeLevel3
CR5 = torso.Cloak.CapeLevel4
jump = false
rs:connect(function()
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
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
		animpose = "Idle"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
		animpose = "Walking"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
		animpose = "Running"
	end
	RightLeg = CFrame.new(0.5,-1,0)
	LeftLeg = CFrame.new(-0.5,-1,0)

	lefth = (torso.CFrame*LeftLeg)
	righth = (torso.CFrame*RightLeg)

	speed = Vector3.new(torso.Velocity.X,0,torso.Velocity.Z)

	TiltOnAxis = (torso.CFrame-torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if stanceToggle == "Idle1" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-12-4*math.cos(sine/22)),math.rad(-12-2*math.cos(sine/22)),math.rad(12+2*math.cos(sine/22))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-0.2)*CFrame.Angles(math.rad(20+4*math.cos(sine/22)),math.rad(-22-2*math.cos(sine/22)),math.rad(-15-2*math.cos(sine/22))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-12+2.5*math.cos(sine/22)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-2+2*math.cos(sine/22)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(5), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(-5), math.rad(5)), 0.2)
			elseif stanceToggle == "Idle2" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-22-4*math.cos(sine/12)),math.rad(-40-2*math.cos(sine/12)),math.rad(24+2*math.cos(sine/12))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.6,-0.6)*CFrame.Angles(math.rad(90+4*math.cos(sine/12)),math.rad(0),math.rad(50-2*math.cos(sine/12))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-6+2.5*math.cos(sine/12)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20+2*math.cos(sine/12)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(-7-2*math.cos(sine/12)), math.rad(7), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, -0.2) * CFrame.Angles(math.rad(-30-2*math.cos(sine/12)), math.rad(-9), math.rad(5)), 0.2)
			end
			fat.Event:wait()
		end
		else
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			change = 0.5
			if stanceToggle == "Idle1" then
				CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-4-2*math.cos(sine/10)),0,0),0.1)
				CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-2*math.cos(sine/10)),0,0),0.1)
				CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-2*math.cos(sine/10)),0,0),0.1)
				CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-2*math.cos(sine/10)),0,0),0.1)
				CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-2*math.cos(sine/10)),0,0),0.1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6+0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(8+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(15+2*math.cos(sine/10))), 0.8)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6-0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(-8-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-12-3*math.cos(sine/10))), 0.8)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
			elseif stanceToggle == "Idle2" then
				CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-6),0,0),0.1)
				CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-7-1*math.cos(sine/6)),0,0),0.1)
				CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-7-1*math.cos(sine/6)),0,0),0.1)
				CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-7-1*math.cos(sine/6)),0,0),0.1)
				CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-8-1*math.cos(sine/6)),0,0),0.1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65-0.1*math.cos(sine/3),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20-2*math.cos(sine/3))), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.23, 0.5, -.56) * CFrame.Angles(math.rad(88+4*math.cos(sine/3)), 0, math.rad(45)), 0.6)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(-10+2*math.cos(sine/6)), 0, 0), 0.8)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
				--hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-5-10*math.cos(sine/18)), math.sin(sine/36)/3, 0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.15) * CFrame.Angles(math.rad(-9-2*math.cos(sine/6)), 0, 0), 0.8)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1-0.1*math.cos(sine/3), 0+0.04*math.cos(sine/6)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56-2*math.cos(sine/6)), 0, 0), 0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.8)
			elseif stanceToggle == "Grabbed" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(sine/14))), 0.2)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),-.5)*CFrame.Angles(math.rad(90+4*math.cos(sine/14)),math.rad(0),math.rad(-80+4*math.cos(sine/14))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(sine/14)),math.rad(70-4*math.cos(sine/14)),0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			end
		elseif animpose == "Walking" then
			if stanceToggle == "Grabbed" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120+4*math.cos(sine/2)),math.rad(0),math.rad(-30+4*math.cos(sine/4))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			elseif stanceToggle ~= "Grabbed" then
				change = 1
				CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-22-2*math.cos(sine/2)),0,0),0.2)
				CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-3-3*math.cos(sine/2)),0,0),0.2)
				CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-3-4*math.cos(sine/2)),0,0),0.2)
				CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-3-5*math.cos(sine/2)),0,0),0.2)
				CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-3-6*math.cos(sine/2)),0,0),0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				--lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.9-0.24*math.cos(sine/4)/2.8, -0.05 + math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)-math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				--rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.9+0.24*math.cos(sine/4)/2.8, -0.05 + -math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)+math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			end
		elseif animpose == "Running" then
			change = 1
			CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-56-10*math.cos(sine/2)),0,0),0.2)
			CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-8*math.cos(sine/2)),0,0),0.2)
			CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-8*math.cos(sine/2)),0,0),0.2)
			CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-8*math.cos(sine/2)),0,0),0.2)
			CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-8*math.cos(sine/2)),0,0),0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.24+.6*math.cos(sine/4)/1.4, 0.54, 0+0.8*math.cos(sine/4)) * CFrame.Angles(math.rad(6-140*math.cos(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.cos(sine/4))), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24+.6*math.cos(sine/4)/1.4, 0.54, 0-0.8*math.cos(sine/4))*CFrame.Angles(math.rad(6+140*math.cos(sine/4)/1.2), math.rad(0), math.rad(20+70*math.cos(sine/4))), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-8+12*math.cos(sine/2)/1.5), math.rad(0+12*math.cos(sine/4)), math.rad(0)),0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/2)/1.7, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/2)/1.5), math.rad(0-12*math.cos(sine/4))-root.RotVelocity.Y/10, math.rad(0)+root.RotVelocity.Y/20), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8-0.4*math.cos(sine/4)/2, math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + -math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8+0.4*math.cos(sine/4)/2, -math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Jumping" then
			CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),0.2)
			CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-4*math.cos(sine/2)),0,0),0.2)
			CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-4*math.cos(sine/2)),0,0),0.2)
			CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-4*math.cos(sine/2)),0,0),0.2)
			CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-4*math.cos(sine/2)),0,0),0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Freefalling" then
			CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-110),0,0),0.2)
			CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-10*math.cos(sine/2)),0,0),0.2)
			CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-10*math.cos(sine/2)),0,0),0.2)
			CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-10*math.cos(sine/2)),0,0),0.2)
			CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0-10*math.cos(sine/2)),0,0),0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-40),math.rad(20),math.rad(50)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(110),math.rad(-20),math.rad(-30)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5, 0.2) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -0.6) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		end
	end
end)
hum.MaxHealth = 500000
wait(1)
hum.Health = 500000


hum.WalkSpeed = 17