--[[
ey tities ass nigga
dis is crone properties so gtfo
m891234!1!11
]]

--[[
User: nigger
Script: Dissj420
Pass: yUw0tNiGGr

]]

p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid

CV="Maroon"
	
local txt = Instance.new("BillboardGui", char)
txt.Adornee = char .Head
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
text.Font = "SciFi"
text.TextStrokeColor3 = BrickColor.Black().Color

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=p.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = BrickColor.Black().Color
v.Shape="Block"
text.Text = "Megarious"

local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local torso = char.Torso

local rot ={4}

local pe1 = Instance.new("ParticleEmitter",torso)

pe1.Transparency = NumberSequence.new(0.2,0.2)

pe1.Size = NumberSequence.new(7,7,7)
pe1.LockedToPart = true

pe1.Color = ColorSequence.new(Color3.new(0,0,0))

pe1.Texture = "rbxassetid://687338360"
pe1.Lifetime = NumberRange.new(0.1,0.1)
pe1.Rate = 6
pe1.RotSpeed = NumberRange.new(0,0)
pe1.Rotation = NumberRange.new(rot[math.random(1,#rot)])
pe1.Speed = NumberRange.new(0,0)

local pe2 = Instance.new("ParticleEmitter",torso)

pe2.Transparency = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25)

pe2.Size = NumberSequence.new(9,9,9)
pe2.LockedToPart = true

pe2.Color = ColorSequence.new(Color3.new(0,0,0))

pe2.Texture = "rbxassetid://687338360"
pe2.Lifetime = NumberRange.new(0.1,0.1)
pe2.Rate = 6
pe2.RotSpeed = NumberRange.new(0,0)
pe2Rotation = NumberRange.new(rot[math.random(1,#rot)])
pe2Speed = NumberRange.new(0,0)
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Handle",Vector3.new(1.00000012, 0.200000003, 0.600000024))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00497817993, 1.09852839, -0.00498199463, -1.00772247e-025, 2.44568227e-013, 1, 2.26874075e-013, 0.999999881, 2.44568255e-013, -1, -2.26874048e-013, 1.00166402e-025))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,1,"Dark indigo","Hitbox",Vector3.new(0.400000036, 1.60000014, 0.600000024))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.101213217, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",Hitbox,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBNeedle=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,0,"Dark indigo","PBNeedle",Vector3.new(0.400000006, 0.400000006, 0.200000003))
PBNeedleweld=weld(m,handle,PBNeedle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.501211882, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",PBNeedle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBPart1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","PBPart1",Vector3.new(0.800000012, 0.399999946, 0.600000024))
PBPart1weld=weld(m,handle,PBPart1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -3.69963789, -7.15255737e-006, 1, 5.05664954e-013, -1.30451205e-015, 4.97449304e-013, 1, -4.5374815e-013, 1.30451205e-015, -4.5374815e-013, 1))
mesh("CylinderMesh",PBPart1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PBPart2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","PBPart2",Vector3.new(0.400000006, 0.600000024, 0.400000006))
PBPart2weld=weld(m,handle,PBPart2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700050354, -7.00950623e-005, 3.49907684, -1, -1.60482286e-005, -1.59286301e-007, 1.58860502e-007, 2.65327035e-005, -1, 1.60482323e-005, -1, -2.65327017e-005))
mesh("SpecialMesh",PBPart2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
PBPole=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","PBPole",Vector3.new(0.400000006, 3.5999999, 0.600000024))
PBPoleweld=weld(m,handle,PBPole,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.69878912, 0, 1, 2.91981717e-013, 2.13405832e-025, 2.91981717e-013, 1, -2.97428748e-013, 2.22223004e-025, -2.40585329e-013, 1))
mesh("CylinderMesh",PBPole,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 2, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09998429, 0, 1, 2.45206633e-013, 2.23613988e-025, 2.45205765e-013, 0.999996424, -2.26373662e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.325069427, -0.366897583, 0, 0.707222462, -0.706991136, 1.60148153e-013, 0.706991136, 0.707222462, -1.60200642e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09959769, -0.40000391, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699993134, 1.09672546e-005, 0.200021386, -0.999997139, -5.88281814e-008, 2.74286049e-005, -2.76967985e-005, -7.53964502e-010, -0.999998033, 5.88349671e-008, -0.999996901, -2.88369467e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 0.460000008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 1.99907148, 0.400010586, 1, -2.3827215e-007, 4.58606735e-007, -2.38272577e-007, -1, -1.63917434e-007, 4.58606763e-007, 1.6391779e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09944224, 0.399987221, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599994659, 1.99895847, -0.399979591, 1, -2.38257996e-007, 4.58606735e-007, -2.38258409e-007, -1, -1.63927155e-007, 4.58606763e-007, 1.63927496e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198883891, -0.399979591, 1, -2.38229688e-007, 4.58606735e-007, -2.38230101e-007, -1, -1.63946595e-007, 4.58606763e-007, 1.63946936e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198892951, 0.400010586, 1, -2.38208457e-007, 4.58606735e-007, -2.3820887e-007, -1, -1.63961175e-007, 4.58606763e-007, 1.63961516e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -0.199686766, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.99940848, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.800000012, 0.799999952, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.09965634, -7.15255737e-006, 1, 2.53450039e-013, -1.30451205e-015, 2.36963227e-013, 1, -2.26374475e-013, 1.30451205e-015, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700004578, -2.67028809e-005, 0.699332714, -1, -1.60535947e-005, -1.59286301e-007, 1.58860217e-007, 2.65416365e-005, -1, 1.60535983e-005, -1, -2.65416347e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700019836, -1.66893005e-005, 1.49919093, -1, -1.60516884e-005, -1.59286301e-007, 1.58860317e-007, 2.65384861e-005, -1, 1.6051692e-005, -1, -2.65384842e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700023651, -4.29153442e-005, 1.89885879, -1, -1.60487161e-005, -1.59286301e-007, 1.58860473e-007, 2.65335711e-005, -1, 1.60487198e-005, -1, -2.65335693e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -2.09877872, 0, 1, 2.63532252e-013, 2.20870009e-025, 2.26881014e-013, 1, -2.40585329e-013, 2.29174052e-025, -2.1216362e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700031281, -3.81469727e-005, 2.29907608, -1, -1.60496675e-005, -1.59286301e-007, 1.58860416e-007, 2.65351464e-005, -1, 1.60497293e-005, -0.999996424, -2.65352392e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900005341, -2.09888887, 0.0100111961, 1, 2.6353919e-013, 2.20464535e-025, 2.26873208e-013, 0.999996424, -2.69013165e-013, 2.35117084e-025, -1.83734972e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.09933496, 0.00994968414, -1.1000061, -7.43166083e-007, 0.999996424, 2.72369789e-007, 1.49011719e-008, -2.72368425e-007, 1, 1, 7.431629e-007, -1.49009649e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -0.404999018, -3.0040741e-005, 1, 1.05336483e-010, -5.11527077e-021, 1.05335976e-010, 1, -9.92765453e-011, -5.11568477e-021, -9.9276018e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -1.60497594, -3.0040741e-005, 1, 1.12981839e-010, -5.89094849e-021, -1.12491558e-010, 1, -1.06496659e-010, -6.08833769e-021, 1.0604289e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -1.60497594, -3.0040741e-005, 1, 1.13225755e-010, -5.9168516e-021, -1.12735474e-010, 1, -1.06724032e-010, -6.11401341e-021, 1.06270263e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, 0.40499115, 1, 7.82292217e-011, -2.80034948e-021, -7.77389403e-011, 1, -7.37259559e-011, -2.93059226e-021, 7.32721869e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, -0.405024052, 1, 7.93888774e-011, -2.8813423e-021, -7.88986237e-011, 1, -7.48344303e-011, -3.02257208e-021, 7.43806614e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, -0.405024052, 1, 7.9389488e-011, -2.88135442e-021, 7.93889815e-011, 1, -7.48338752e-011, -2.88212869e-021, -7.48333479e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -0.404999018, -3.0040741e-005, 1, 3.79056439e-011, -6.35164548e-022, 3.79058382e-011, 1, -3.57250896e-011, -6.35662047e-022, -3.57250896e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, 0.40499115, 1, 7.82298046e-011, -2.80033434e-021, 7.8229298e-011, 1, -7.37254285e-011, -2.80000274e-021, -7.37249012e-011, 1))

function attackone()
attack = true
local con = LeftLeg.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=200632211",LeftLeg,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-50),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(50),math.rad(0),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5)),.3)
end
so("http://roblox.com/asset/?id=200632211",LeftArm,1,.9)
local con = LeftArm.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-5)),.3)
end
attack = false
con:disconnect()
end

handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Handle",Vector3.new(1.00000012, 0.200000003, 0.600000024))
handleweld=weld(m,Character["Left Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00497817993, 1.09852839, -0.00498199463, -1.00772247e-025, 2.44568227e-013, 1, 2.26874075e-013, 0.999999881, 2.44568255e-013, -1, -2.26874048e-013, 1.00166402e-025))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,1,"Dark indigo","Hitbox",Vector3.new(0.400000036, 1.60000014, 0.600000024))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.101213217, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",Hitbox,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBNeedle=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,0,"Dark indigo","PBNeedle",Vector3.new(0.400000006, 0.400000006, 0.200000003))
PBNeedleweld=weld(m,handle,PBNeedle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.501211882, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",PBNeedle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBPart1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","PBPart1",Vector3.new(0.800000012, 0.399999946, 0.600000024))
PBPart1weld=weld(m,handle,PBPart1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -3.69963789, -7.15255737e-006, 1, 5.05664954e-013, -1.30451205e-015, 4.97449304e-013, 1, -4.5374815e-013, 1.30451205e-015, -4.5374815e-013, 1))
mesh("CylinderMesh",PBPart1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PBPart2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","PBPart2",Vector3.new(0.400000006, 0.600000024, 0.400000006))
PBPart2weld=weld(m,handle,PBPart2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700050354, -7.00950623e-005, 3.49907684, -1, -1.60482286e-005, -1.59286301e-007, 1.58860502e-007, 2.65327035e-005, -1, 1.60482323e-005, -1, -2.65327017e-005))
mesh("SpecialMesh",PBPart2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
PBPole=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","PBPole",Vector3.new(0.400000006, 3.5999999, 0.600000024))
PBPoleweld=weld(m,handle,PBPole,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.69878912, 0, 1, 2.91981717e-013, 2.13405832e-025, 2.91981717e-013, 1, -2.97428748e-013, 2.22223004e-025, -2.40585329e-013, 1))
mesh("CylinderMesh",PBPole,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 2, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09998429, 0, 1, 2.45206633e-013, 2.23613988e-025, 2.45205765e-013, 0.999996424, -2.26373662e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.325069427, -0.366897583, 0, 0.707222462, -0.706991136, 1.60148153e-013, 0.706991136, 0.707222462, -1.60200642e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09959769, -0.40000391, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699993134, 1.09672546e-005, 0.200021386, -0.999997139, -5.88281814e-008, 2.74286049e-005, -2.76967985e-005, -7.53964502e-010, -0.999998033, 5.88349671e-008, -0.999996901, -2.88369467e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 0.460000008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 1.99907148, 0.400010586, 1, -2.3827215e-007, 4.58606735e-007, -2.38272577e-007, -1, -1.63917434e-007, 4.58606763e-007, 1.6391779e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09944224, 0.399987221, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599994659, 1.99895847, -0.399979591, 1, -2.38257996e-007, 4.58606735e-007, -2.38258409e-007, -1, -1.63927155e-007, 4.58606763e-007, 1.63927496e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198883891, -0.399979591, 1, -2.38229688e-007, 4.58606735e-007, -2.38230101e-007, -1, -1.63946595e-007, 4.58606763e-007, 1.63946936e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198892951, 0.400010586, 1, -2.38208457e-007, 4.58606735e-007, -2.3820887e-007, -1, -1.63961175e-007, 4.58606763e-007, 1.63961516e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -0.199686766, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.99940848, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.800000012, 0.799999952, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.09965634, -7.15255737e-006, 1, 2.53450039e-013, -1.30451205e-015, 2.36963227e-013, 1, -2.26374475e-013, 1.30451205e-015, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700004578, -2.67028809e-005, 0.699332714, -1, -1.60535947e-005, -1.59286301e-007, 1.58860217e-007, 2.65416365e-005, -1, 1.60535983e-005, -1, -2.65416347e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700019836, -1.66893005e-005, 1.49919093, -1, -1.60516884e-005, -1.59286301e-007, 1.58860317e-007, 2.65384861e-005, -1, 1.6051692e-005, -1, -2.65384842e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700023651, -4.29153442e-005, 1.89885879, -1, -1.60487161e-005, -1.59286301e-007, 1.58860473e-007, 2.65335711e-005, -1, 1.60487198e-005, -1, -2.65335693e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -2.09877872, 0, 1, 2.63532252e-013, 2.20870009e-025, 2.26881014e-013, 1, -2.40585329e-013, 2.29174052e-025, -2.1216362e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700031281, -3.81469727e-005, 2.29907608, -1, -1.60496675e-005, -1.59286301e-007, 1.58860416e-007, 2.65351464e-005, -1, 1.60497293e-005, -0.999996424, -2.65352392e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900005341, -2.09888887, 0.0100111961, 1, 2.6353919e-013, 2.20464535e-025, 2.26873208e-013, 0.999996424, -2.69013165e-013, 2.35117084e-025, -1.83734972e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.09933496, 0.00994968414, -1.1000061, -7.43166083e-007, 0.999996424, 2.72369789e-007, 1.49011719e-008, -2.72368425e-007, 1, 1, 7.431629e-007, -1.49009649e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -0.404999018, -3.0040741e-005, 1, 1.05336483e-010, -5.11527077e-021, 1.05335976e-010, 1, -9.92765453e-011, -5.11568477e-021, -9.9276018e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -1.60497594, -3.0040741e-005, 1, 1.12981839e-010, -5.89094849e-021, -1.12491558e-010, 1, -1.06496659e-010, -6.08833769e-021, 1.0604289e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -1.60497594, -3.0040741e-005, 1, 1.13225755e-010, -5.9168516e-021, -1.12735474e-010, 1, -1.06724032e-010, -6.11401341e-021, 1.06270263e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, 0.40499115, 1, 7.82292217e-011, -2.80034948e-021, -7.77389403e-011, 1, -7.37259559e-011, -2.93059226e-021, 7.32721869e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, -0.405024052, 1, 7.93888774e-011, -2.8813423e-021, -7.88986237e-011, 1, -7.48344303e-011, -3.02257208e-021, 7.43806614e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, -0.405024052, 1, 7.9389488e-011, -2.88135442e-021, 7.93889815e-011, 1, -7.48338752e-011, -2.88212869e-021, -7.48333479e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -0.404999018, -3.0040741e-005, 1, 3.79056439e-011, -6.35164548e-022, 3.79058382e-011, 1, -3.57250896e-011, -6.35662047e-022, -3.57250896e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, 0.40499115, 1, 7.82298046e-011, -2.80033434e-021, 7.8229298e-011, 1, -7.37254285e-011, -2.80000274e-021, -7.37249012e-011, 1))

function attackone()
attack = true
local con = LeftLeg.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=200632211",LeftLeg,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-50),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(50),math.rad(0),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5)),.3)
end
so("http://roblox.com/asset/?id=200632211",LeftArm,1,.9)
local con = LeftArm.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-5)),.3)
end
attack = false
con:disconnect()
end

local s = Instance.new("Sound",char)
s.Name = "BGMusic"
s.SoundId = "http://www.roblox.com/asset/?id=334322761"
s.Pitch = 1
s.Volume = 1
s.Looped = true
s.archivable = false
s.Parent = game.Workspace
wait(0.1)
s:play()

Orb2 = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Handle", Vector3.new(0.887265563, 0.887265563, 0.887265563))
Orb2weld = weld(m, Character["Left Arm"], Orb2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.502059937, 0.355368137, 1.71773267, -0.44424206, 0.232894972, -0.865106404, 0.628215313, 0.769424856, -0.115459129, 0.638744593, -0.594764709, -0.488119096))
mesh("SpecialMesh", Orb2, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.890794039, 0.890788555, 0.890788138))
Orb = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0.5, "Dark indigo", "Orb", Vector3.new(1.2214824, 1.2214824, 1.2214824))
Orb.Shape = "Ball"
Orbweld = weld(m, Orb2, Orb, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000012, 2.98023224e-08, 2.98023224e-08, 2.98023224e-08, 1, 2.98023224e-08, 2.98023224e-08, 2.98023224e-08, 0.99999994))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143375397, -1.25859022, 0.329596519, 1.00000012, 2.98023224e-08, 2.98023224e-08, -1.11758709e-08, 0.923937678, -0.382543176, -5.96046448e-08, 0.382543325, 0.923937619))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.615454078, 0.793611169))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142879486, -0.777062893, -1.45312595, 1.00000012, 2.98023224e-08, 2.98023224e-08, 1.49011612e-08, 0.923902035, -0.382629365, 0, 0.382629424, 0.923901975))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.145765424, 0.372511417))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 1.29332566))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143518448, 1.01072788, 0.321725368, 1.00000012, 2.98023224e-08, 2.98023224e-08, 3.7252903e-09, 0.923871815, -0.382702261, 2.98023224e-08, 0.382702231, 0.923871756))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143795013, -0.705126762, -0.734368324, 1.00000012, 2.98023224e-08, 2.98023224e-08, -3.7252903e-09, 0.923846126, -0.38276419, 0, 0.382764339, 0.923846006))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.307727039, 0.3077268))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0144195557, -0.138575554, 1.73011065, 1.00000012, 2.98023224e-08, 2.98023224e-08, 7.4505806e-09, 0.923765123, -0.382959813, 2.98023224e-08, 0.382959902, 0.923765063))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.453492314, 0.583061278))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014383316, -0.769768238, 0.57397604, 1.00000012, 2.98023224e-08, 2.98023224e-08, -3.7252903e-09, 0.923928976, -0.382563949, -2.98023224e-08, 0.382564008, 0.923928976))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 0.242942229))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143966675, -0.733929157, 0.825384617, 1.00000012, 2.98023224e-08, 2.98023224e-08, -3.7252903e-09, 0.923918545, -0.3825894, 0, 0.382589459, 0.923918486))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.242942333, 0.323922902))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0144147873, -1.38066387, -0.353047848, 1.00000012, 2.98023224e-08, 2.98023224e-08, -3.7252903e-09, 0.923928976, -0.382563949, -2.98023224e-08, 0.382564008, 0.923928976))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.890788734, 0.745022833))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014339447, -1.12845087, -0.970898151, 1.00000012, 2.98023224e-08, 2.98023224e-08, -1.49011612e-08, 0.923991561, -0.38241303, -2.98023224e-08, 0.382413089, 0.923991442))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.3239232, 0.323922902))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 1.25021493))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014421463, 1.1401, 2.09678173, 1.00000012, 2.98023224e-08, 2.98023224e-08, 1.11758709e-08, 0.923716426, -0.383077323, 2.98023224e-08, 0.383077323, 0.923716307))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.906984746, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014421463, -0.583045006, -1.08001328, 1.00000012, 2.98023224e-08, 2.98023224e-08, -1.11758709e-08, 0.923855543, -0.382741481, 0, 0.38274157, 0.923855543))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.583061755, 0.469688207))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0144405365, 0.82538271, 0.82533884, 1.00000012, 2.98023224e-08, 2.98023224e-08, 7.4505806e-09, 0.923936188, -0.382546633, -2.98023224e-08, 0.382546723, 0.923936188))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.259138525, 0.323922902))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143356323, 0.867033958, 0.573077679, 1.00000012, 2.98023224e-08, 2.98023224e-08, 1.11758709e-08, 0.923900545, -0.382632852, -2.98023224e-08, 0.382632971, 0.923900485))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 0.242942229))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0144271851, 0.400120258, 1.79469538, 1.00000012, 2.98023224e-08, 2.98023224e-08, 7.4505806e-09, 0.923717797, -0.383073896, -2.98023224e-08, 0.383073926, 0.923717678))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.761219323, 0.728826642))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 2.58665133))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143842697, -0.913496971, -0.324445724, 1.00000012, 2.98023224e-08, 2.98023224e-08, -3.7252903e-09, 0.923928976, -0.382563949, -2.98023224e-08, 0.382564008, 0.923928976))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 1))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143375397, -0.541174889, 1.62945747, 1.00000012, 2.98023224e-08, 2.98023224e-08, 1.86264515e-08, 0.923819423, -0.382828385, -5.96046448e-08, 0.382828504, 0.923819482))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.453492463, 0.356315255))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 2.06932139, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143985748, 0.0481734276, 1.21983814, 1.00000012, 2.98023224e-08, 2.98023224e-08, 7.4505806e-09, 0.92387718, -0.382689148, -2.98023224e-08, 0.382689238, 0.92387712))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 1, 0.566865087))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142784119, -1.2364316, -0.755404949, 1.00000012, 2.98023224e-08, 2.98023224e-08, 1.49011612e-08, 0.923943341, -0.382529408, -2.98023224e-08, 0.382529497, 0.923943341))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.566865504, 0.161961451))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143661499, -0.769869804, -0.475550175, 1.00000012, 2.98023224e-08, 2.98023224e-08, -3.7252903e-09, 0.923884392, -0.382671893, 0, 0.382671893, 0.923884332))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 0.275334477))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 1.33643687, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143489838, 0.0422496796, 0.896978855, 1.00000012, 2.98023224e-08, 2.98023224e-08, 1.11758709e-08, 0.923894286, -0.382647961, 2.98023224e-08, 0.382647932, 0.923894167))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 1, 0.161961451))
Part = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Partweld = weld(m, Orb2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143232346, 1.78682709, 2.95177078, 1.00000012, 2.98023224e-08, 2.98023224e-08, 1.11758709e-08, 0.923716426, -0.383077323, 2.98023224e-08, 0.383077323, 0.923716307))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.550669432, 0.842199624))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143451691, -0.970619202, 1.3801322, 1.00000012, 2.98023224e-08, 2.98023224e-08, 0, 0.382422388, 0.923987627, 1.49011612e-08, -0.923987687, 0.382422358))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.3239232, 0.242942229))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143575668, 0.867223263, -0.314217091, -1.00000012, -2.98023224e-08, -2.98023224e-08, 7.4505806e-09, 0.923972368, -0.382459223, 2.98023224e-08, -0.382459283, -0.923972309))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196163, 0.340119064))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142812729, 0.769894123, -0.315297604, 1.00000012, 2.98023224e-08, 2.98023224e-08, -7.4505806e-09, -0.923946202, 0.382522434, 2.98023224e-08, -0.382522523, -0.923946202))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 0.340119064))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014169693, -0.540971756, 1.88808012, 1.00000012, 2.98023224e-08, 2.98023224e-08, 0, 0.923836112, -0.38278845, 0, 0.38278845, 0.923835993))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.453492463, 0.226746053))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0142345428, 0.769889832, -0.0939731598, -1.00000012, -2.98023224e-08, -2.98023224e-08, -1.49011612e-08, -0.923993051, 0.382409662, 0, 0.382409692, 0.923992991))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 0.583061278))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143318176, -1.25844002, 1.07650661, 1.00000012, 2.98023224e-08, 2.98023224e-08, -3.7252903e-09, 0.923928976, -0.382563949, -2.98023224e-08, 0.382564008, 0.923928976))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.615454078, 0.890788138))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143594742, -1.65409946, 0.329646587, 1, -1.38580799e-06, -3.48687172e-06, -3.35276127e-08, 0.92394191, -0.382532895, 3.78489494e-06, 0.382532895, 0.92394191))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.275334716, 0.793611169))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0144309998, 0.633481979, -0.47542429, -1.00000012, -2.98023224e-08, -2.98023224e-08, -1.11758709e-08, -0.923920572, 0.382584453, 2.98023224e-08, 0.382584512, 0.923920512))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.145765424, 0.275334477))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0142469406, 0.446671486, -0.734605312, -1.00000012, -2.98023224e-08, -2.98023224e-08, 1.11758709e-08, -0.923937678, 0.382543176, -5.96046448e-08, 0.382543325, 0.923937619))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.275334716, 0.3077268))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 1.79628587, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143251419, 0.573383808, 1.31253004, -1.00000012, -2.98023224e-08, -2.98023224e-08, 2.98023224e-08, 0.383082122, 0.92371434, -1.49011612e-08, 0.92371428, -0.383082002))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 1, 0.518276632))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0146627426, -1.36505795, 1.12887478, 1.00000012, 2.98023224e-08, 2.98023224e-08, -2.98023224e-08, 0.38210234, 0.924120009, -3.7252903e-09, -0.924120188, 0.38210237))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.566865504, 0.323922902))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0144557953, 0.467606068, -0.753456116, 1.00000012, 2.98023224e-08, 2.98023224e-08, 2.60770321e-08, -0.923965275, 0.382476479, 0, -0.382476568, -0.923965216))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.356315494, 0.161961451))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014333725, -2.05626631, -0.353295326, 1.00000012, 2.98023224e-08, 2.98023224e-08, -3.7252903e-09, 0.92394191, -0.382532805, 0, 0.382532895, 0.92394197))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.631650209, 0.745022833))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143194199, 0.552689552, -0.753513813, -1.00000012, -2.98023224e-08, -2.98023224e-08, -1.86264515e-08, 0.923968136, -0.382469654, 0, -0.382469654, -0.923968077))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.356315523, 0.161961451))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142192841, 0.399952888, 2.41989946, 1.00000012, 2.98023224e-08, 2.98023224e-08, 3.35276127e-08, 0.923707485, -0.383098871, 0, 0.383098871, 0.923707426))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.761219621, 0.680238068))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143661499, -0.935334206, -2.05619001, -1.00000012, -2.98023224e-08, -2.98023224e-08, -2.98023224e-08, 0.382503301, 0.923954129, 3.7252903e-09, 0.923954248, -0.382503211))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.566865504, 0.631649613))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142612457, -0.755482197, 1.63165283, 1.00000012, 2.98023224e-08, 2.98023224e-08, 0, 0.382535756, 0.923940659, 3.7252903e-09, -0.923940778, 0.382535726))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 0.323922902))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0142774582, 0.573737621, -0.662068844, -1.00000012, -2.98023224e-08, -2.98023224e-08, 2.98023224e-08, 0.382720828, 0.923864007, 3.7252903e-09, 0.923864126, -0.382720768))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.242942333, 0.0809807107))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 2.14117265))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0142974854, 2.95166492, 3.10171676, -1.00000012, -2.98023224e-08, -2.98023224e-08, 2.98023224e-08, 0.383082122, 0.92371434, -1.49011612e-08, 0.92371428, -0.383082002))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.842200279, 1))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0144081116, 0.752276421, -0.573189259, -1.00000012, -2.98023224e-08, -2.98023224e-08, -3.7252903e-09, 0.923968792, -0.382468104, 2.98023224e-08, -0.382468164, -0.923968673))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.0971769989, 0.242942229))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143461227, -0.864406586, 1.62925768, 1.00000012, 2.98023224e-08, 2.98023224e-08, 3.7252903e-09, 0.923863828, -0.382721543, 2.98023224e-08, 0.382721603, 0.923863888))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.275334716, 0.356315255))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142230988, -1.01077271, 0.396942616, 1.00000012, 2.98023224e-08, 2.98023224e-08, -7.4505806e-09, -0.92387718, 0.382689148, 2.98023224e-08, -0.382689238, -0.92387712))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.16196157, 0.161961451))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142660141, -0.139053822, 2.05354023, 1.00000012, 2.98023224e-08, 2.98023224e-08, 1.11758709e-08, 0.923669994, -0.383188933, 0, 0.383188993, 0.923670053))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.453492463, 0.145765319))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143957138, 0.0443892479, -1.0795331, -1.00000012, -2.98023224e-08, -2.98023224e-08, 1.11758709e-08, -0.923923314, 0.382577747, 0, 0.382577837, 0.923923254))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.631650209, 0.469688356))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 1.10651183))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143852234, -1.78688002, -2.02518988, 1.00000012, 2.98023224e-08, 2.98023224e-08, -1.11758709e-08, -0.923716426, 0.383077323, -2.98023224e-08, -0.383077323, -0.923716307))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962584, 0.550669432, 1))
Wedge = part(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Wedge", Vector3.new(0.887265563, 0.887265265, 0.887265563))
Wedgeweld = weld(m, Orb2, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142145157, 1.14002323, 3.02335072, 1.00000012, 2.98023224e-08, 2.98023224e-08, 3.35276127e-08, 0.923707485, -0.383098871, 0, 0.383098871, 0.923707426))
mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161962539, 0.906985044, 0.680238068))

handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Handle",Vector3.new(0.800000012, 0.600000024, 0.400000036))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999984741, 0.00293731689, -0.997625113, 0.999999762, 0, 0, -0, -2.98023224e-008, 1, 0, -0.999999642, -2.98023206e-008))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BarrelA=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Dark indigo","BarrelA",Vector3.new(0.400000006, 0.400000036, 0.200000003))
BarrelAweld=weld(m,handle,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -0.501502991, 0.70533812, 0.999999762, 8.9397489e-013, -4.26325811e-014, 8.93974673e-013, -1, -7.63833441e-014, -4.2632554e-014, 7.81597009e-014, -0.999999762))
mesh("BlockMesh",BarrelA,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
BarrelB=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Dark indigo","BarrelB",Vector3.new(0.400000006, 0.400000036, 0.200000003))
BarrelBweld=weld(m,handle,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.498413086, 0.705340028, 0.999999762, 8.93975215e-013, -4.26325811e-014, 8.93974998e-013, -1, -7.99360578e-014, -4.2632554e-014, 8.17124146e-014, -0.999999762))
mesh("BlockMesh",BarrelB,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 2.60000038))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.701442719, -0.600021362, 2.49932575, 0.999998927, 1.87752244e-006, -0.000799447123, -1.84774353e-006, 0.999999166, -1.93715053e-007, 0.000799283211, 2.23561045e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, 0.497962952, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, 0.501495361, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1.00000012, 1.20000029))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, -3.76701355e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 2.20000005, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, 0.899943829, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.20000005, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.599975586, 3.38554382e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 1.79999995, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709243774, -2.28881836e-005, 0.899943829, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.800000012, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.399993896, -5.96046448e-006, 0.999999762, -0, 0, -0, 1, -1.77635684e-015, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.800000012, 0.99999994))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.713443756, -0.500030518, 1.69926405, 0.999998927, -2.26500038e-006, -0.000799596135, 2.27987721e-006, 0.999999225, 1.93017172e-007, 0.000799476926, -2.231682e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 1.20000017))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700153351, -0.700019836, 0.000669956207, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000083, 2.60000038))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698387146, -0.599975586, 2.50042844, -0.999998689, -1.90737251e-006, -0.000799447123, 1.90734818e-006, -0.999998927, -1.34110465e-007, -0.000799282978, -1.64014665e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 2.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709453583, -0.399978638, 2.50040436, -0.999999166, 2.30715773e-006, -0.000799596135, -2.33717014e-006, -0.999999523, 2.5262176e-007, -0.000799476926, 2.82754144e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700153351, -0.80002594, -0.2993083, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.70142746, -0.80002594, 1.49932528, 0.999998927, 1.87752244e-006, -0.000799447123, -1.84774353e-006, 0.999999166, -1.93715053e-007, 0.000799283211, 2.23561045e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000036, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699836731, -0.69997406, -0.000449538231, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.99999994, 0.200000003, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, 0.599975586, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.40000045, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.000755310059, 5.96046448e-005, -1.48553302e-013, -0.999995828, 2.98021838e-008, -0.999999762, -1.503297e-013, -2.98021909e-008, 2.98023295e-008, -2.9802214e-008, -0.999995589))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.285999984, 1.01199996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698394775, -0.799972534, 1.50044394, -0.999998689, -1.90737251e-006, -0.000799447123, 1.90734818e-006, -0.999998927, -1.34110465e-007, -0.000799282978, -1.64014665e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, -0.502029419, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, 0.599975586, 0.999999762, -0, 0, 0, 1.49011647e-008, -0.999999523, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699840546, -0.799964905, -0.300427675, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.195159912, -0.900024414, 0.899938345, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.194999695, -0.900024414, 0.200763583, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.20000005, 0.800000012, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, 0.499969482, 0.999999642, -0, 0, 0, 1.49011647e-008, -0.999999404, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.203845978, -0.899963379, 1.90046763, 0.99999851, -1.38333075e-006, 0.000811993901, 1.25192548e-006, 0.999998987, 9.15403871e-006, -0.00081211311, -9.18428123e-006, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.800000012, 0.999999881))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709457397, -0.499977112, 1.70040178, -0.999999166, 2.30715773e-006, -0.000799596135, -2.33717014e-006, -0.999999523, 2.5262176e-007, -0.000799476926, 2.82754144e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.405341506, -0.502037048, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000143, 1.21000028))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708374023, -3.05175781e-005, -0.00504338741, 0.999999523, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999523))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709457397, -0.500030518, 0.000697374344, -0.999999166, 1.89247135e-006, 0.000799469941, 1.86264469e-006, 0.999999225, 1.34110437e-007, -0.000799469533, 1.63927339e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, -0.600021362, 0.999999762, -0, 0, 0, 1.49011647e-008, -0.999999523, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.196155548, -0.899963379, 1.90047097, 0.99999851, -1.38333075e-006, 0.000811993901, 1.25192548e-006, 0.999998987, 9.15403871e-006, -0.00081211311, -9.18428123e-006, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 2.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.713447571, -0.400032043, 2.49926639, 0.999998927, -2.26500038e-006, -0.000799596135, 2.27987721e-006, 0.999999225, 1.93017172e-007, 0.000799476926, -2.231682e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 1.4000001, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.5, -3.05175781e-005, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709461212, -0.499969482, -0.000437021255, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.20000005, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.600028992, 3.38554382e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1.20000005, 0.800000012, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, -0.500030518, 0.999999642, -0, 0, 0, 1.49011647e-008, -0.999999404, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(1.40000045, 0.200000018, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.000755310059, 6.81877136e-005, 8.88178631e-016, -1, 2.98023206e-008, -0.999999762, -1.77635769e-015, -2.98023224e-008, 2.98023224e-008, -2.98023259e-008, -0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.190341949, -0.900024414, 0.899938345, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.800000012, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.400001526, -5.96046448e-006, 0.999999762, -0, 0, -0, 1, -1.77635684e-015, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.190494537, -0.900024414, 0.200588226, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709449768, -0.600021362, -0.299300909, -0.999999166, 1.89247135e-006, 0.000799469941, 1.86264469e-006, 0.999999225, 1.34110437e-007, -0.000799469533, 1.63927339e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.200000152, 2.61000037))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708377838, 2.28881836e-005, -2.50490212, 0.999999642, -0, 0, 0, -0.999999702, -4.470348e-008, 0, 2.98023295e-008, -0.999999344))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.20000000298023,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709445953, -0.599967957, -0.300435305, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(1, 0.200000003, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, -0.600021362, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Dark indigo","Part",Vector3.new(0.200000003, 0.600000143, 2.60000014))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, 2.49992704, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))

BladeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladeHandle",Vector3.new(0.200000003, 1, 3.39999986))
BladeHandleweld=weld(m,Character["Right Arm"],BladeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0872383118, -1.20300293, 0.302297354, 1, -2.21671375e-008, 7.04762897e-008, -7.04762684e-008, 2.98023188e-008, 0.999999404, -2.2167157e-008, -0.999999285, 2.98023224e-008))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,1,"Dark indigo","Hitbox",Vector3.new(0.200000003, 4.79999971, 1))
Hitboxweld=weld(m,BladeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.699994326, 0, 1, -9.99836402e-007, 1.80018773e-007, -1.80019143e-007, 1.49011647e-008, 0.999998808, -9.99837425e-007, -0.999998808, 1.49011719e-008))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(0.220000014, 0.200000003, 3.4000001))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135803223, -0.393920898, -0.000129699707, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(0.200000003, 0.220000014, 0.800000072))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399986267, -5.7220459e-006, 1.70002365, 1.42108547e-014, -0.999998808, -1.77635684e-015, -1, 2.13162821e-014, -2.98022744e-008, 2.98023828e-008, -3.55271368e-015, -0.999998808))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(0.200000003, 0.220000014, 0.800000072))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400005341, -5.7220459e-006, 1.70001566, 4.33431069e-013, -0.999998093, 1.63424829e-013, -1, -9.23705556e-014, -2.98015639e-008, 2.98019547e-008, 2.14939178e-013, -0.999998093))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(0.220000014, 0.200000003, 0.399999976))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00168228149, -0.399024963, 1.89990211, 0.999998748, -2.1309047e-006, 0.000802797964, 2.13086582e-006, 0.999997854, 3.29315458e-006, -0.000802962575, -3.21859238e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(0.220000014, 0.200000003, 3.4000001))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00168037415, -0.399391174, -0.000123500824, 0.999998748, -2.1309047e-006, 0.000802797964, 2.13086582e-006, 0.999997854, 3.29315458e-006, -0.000802962575, -3.21859238e-006, 0.999998093))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(0.220000014, 0.200000003, 0.399999976))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135612488, -0.39358139, 1.89990449, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(0.200000003, 0.520000041, 1.39999998))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00136566162, -0.239994049, 2.3998909, 0.999999166, -1.95434222e-006, -0.000799282745, 1.92285847e-006, 0.999998212, -1.86264401e-006, 0.000799447356, 2.07120365e-006, 0.999998033))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(1.00000012, 0.200000003, 1.00000012))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -5.7220459e-006, 1.60001981, 3.26849658e-013, -0.999999404, -3.01980663e-014, -1, -3.05533376e-013, -2.98017593e-008, 2.98018055e-008, 2.84217094e-014, -0.999999404))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.Granite,0.20000000298023,0,"Dark indigo","BladePart",Vector3.new(0.200000003, 0.479999989, 1.39999998))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135612488, -0.260002136, 2.39991736, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

char.Head.face.Texture = "rbxassetid://0"

purple = Color3.new(0.5, 0.05, 1)
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
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
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
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
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
function Tween(a,b,c)
return a+(b-a)*c
end
----------------------------------------------------
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

mod3 = Instance.new("Model",rleg)

function Stomp()
    part=Instance.new('Part',mod3)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=rleg.CFrame*CFrame.new(0,-2.4,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Bright green')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(25,25,25)
    part2=part:clone()
    part2.Parent=mod3
    part2.BrickColor=BrickColor.new('Bright green')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(15,15,15)
    part3=part:clone()
    part3.Parent=mod3
    part3.TopSurface=0
    part3.BottomSurface=0
    part3.CFrame=rleg.CFrame*CFrame.new(0,-3,0)
    mesh3=Instance.new('SpecialMesh',part3)
    mesh3.MeshType = 3
    mesh3.Scale=Vector3.new(12,12,12)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,60))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end 
    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(2.8,2.8,2.8)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1.5,1.5,1.5)
        end
    end))
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
function newRay(start,face,range,wat)
        local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
        hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
        return rey,hit,pos
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
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
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
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://"--303570180
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.1)
z:Play()
----------------------------------------------------
local Transforming = true
hum.WalkSpeed = 0
local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end
----------------------------------------------------
GroundWave1 = function()
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
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(50, 50, 1 + i*50)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------
GroundWave = function()
        if Transforming == true then
                local wave = Instance.new("Part", torso)
                wave.BrickColor = BrickColor.new("Royal purple")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", torso)
                wave2.BrickColor = BrickColor.new("Royal purple")
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = fx.CFrame
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = fx.CFrame
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                wm.Scale = Vector3.new(2 + i*5, 2 + i*5, 2 + i*5)
                wm2.Scale = Vector3.new(2 + i*10, 2 + i*10, 15)
                wm3.Scale = Vector3.new(2 + i*12.5, 2 + i*12.5, 5)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = fx.CFrame
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = fx.CFrame
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = torso.CFrame
end

Spawn(function()
	while wait(1) do
		GroundWave()
	end
end)

wait(4)

Transforming = false

for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new("Royal purple")
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
        local wave2 = Instance.new("Part", torso)
        wave2.BrickColor = BrickColor.new("Really black")
        wave2.Anchored = true
        wave2.CanCollide = false
        wave2.Locked = true
        wave2.Size = Vector3.new(1, 1, 1)
        wave2.TopSurface = "Smooth"
        wave2.BottomSurface = "Smooth"
        wave2.Transparency = 0.35
        wave2.CFrame = HandCF
        wm2 = Instance.new("SpecialMesh", wave2)
        wm2.MeshId = "rbxassetid://3270017"
        local wave3 = Instance.new("Part", torso)
        wave3.BrickColor = BrickColor.new("Royal purple")
        wave3.Anchored = true
        wave3.CanCollide = false
        wave3.Locked = true
        wave3.Size = Vector3.new(1, 1, 1)
        wave3.TopSurface = "Smooth"
        wave3.BottomSurface = "Smooth"
        wave3.Transparency = 0.35
        wave3.CFrame = HandCF
        wm3 = Instance.new("SpecialMesh", wave3)
        wm3.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        wm.Scale = Vector3.new(50, 50, 1 + i*200)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wm2.Scale = Vector3.new(50 + i*5, 50 + i*5, 0 + i*10)
        wave2.Size = wm2.Scale
        wave2.CFrame = HandCF
        wave2.Transparency = i/14
        wm3.Scale = Vector3.new(0 + i*50, 0 + i*50, 1)
        wave3.Size = wm2.Scale
        wave3.CFrame = HandCF
        wave3.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
        wave2:Destroy()
end)()
hum.WalkSpeed = 16
----------------------------------------------------
local cor = Instance.new("Part", char)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 13, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0)
weld1 = Instance.new("Weld", char)
weld1.Part0 = cor
weld1.Part1 = p6
weld1.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
Blast = function()
	local Colors = {"Really black", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = rarm.CFrame
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshType = "Sphere"
		wm.Scale = Vector3.new(1,1,1)
		z = Instance.new("Sound",wave)
		z.SoundId = "rbxassetid://237035051"
		z.Volume = 1
		z.Pitch = .9
		z:Play()
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wave.Size = Vector3.new(1 + i*4, 1 + i*4, 1 + i*4)
		--wave.Size = wm.Scale
		wave.CFrame = rarm.CFrame
		wave.Transparency = (1/14)
		rs:wait()
		end
		rs:wait()
		wave:Destroy()
		z:Destroy()
	end)()
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
                                end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                        Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
                                end
            end
        end
    end
end)
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

function Punch()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(0),0,0)
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
    part2.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really black')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(2,6))
        end
    end
    coroutine.resume(coroutine.create(function()
        for i=0,0.62,0.4 do
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
    end))
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
				end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
				end
            end
        end
    end
end)
----------------------------------------------------
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

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
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "q" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
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
	z = Instance.new("Sound",hed)
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
	sp2.Transparency = 0.84
	for i = 1, 20 do
		--spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 2880, 50 do
		rs:wait()
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = rarm.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
		rs:wait()
	end
	sp:Destroy()
	sp2:Destroy()
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
	X.BrickColor = BrickColor.new("Royal purple")
	X.Size = Vector3.new(2,2,2)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(0.5,0.5,1)
	X.CFrame = rarm.CFrame*CFrame.new(-3,0,0)
	local bv = Instance.new("BodyVelocity",X)
	bv.maxForce = Vector3.new(99999,99999,99999)
	X.CFrame = CFrame.new(X.Position,mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector*250

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
			part3.BrickColor=BrickColor.new("Royal purple")
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
			part4.BrickColor=BrickColor.new("Hot pink")
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
                                z4a = Instance.new("Sound",X)
                                z4a.SoundId = "rbxassetid://419447292"
                                z4a.Pitch = 1
                                z4a.Volume = 10
                                z3a = Instance.new("Sound",X)
                                z3a.SoundId = "rbxassetid://421328847"
                                z3a.Pitch = 1
                                z3a.Volume = 10
                                wait(0.1)
				z:Play()
				z1:Play()
				z2:Play()
				z3:Play()
				z4:Play()
				z3a:Play()
				z4a:Play()

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
				part2.BrickColor=BrickColor.new("Royal purple")
				local part5=part:clone()
				part5.Parent = rarm
				part5.BrickColor=BrickColor.new("Magenta")
				local part6=part:clone()
				part6.Parent = rarm
				part6.BrickColor=BrickColor.new("Black")
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
mouse.KeyDown:connect(function(key)
    if key == "x" then
        hum.WalkSpeed = 0.01
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
                for i = 1, 30 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
	            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
		    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
		    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
		    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
		    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(6)
                end
        v = Instance.new("Sound")
        v.SoundId = "rbxassetid://447225089"
        v.Parent = char
        v.Looped = false
        v.Pitch = 1
        v.Volume = 1
        wait(.01)
        v:Play()
        
        if Daytime == true then
            Daytime = false
            l.TimeOfDay = 19
        else
            Daytime = true
            l.TimeOfDay = 12
            l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
        end
        
            local Shockwave = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Really black")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Material = "Neon"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Material = "Neon"
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                local Wave2 = Instance.new("Part", game.Workspace--[[?]])
                Wave2.Name = "Shockwave2"
                Wave2.BrickColor = BrickColor.new("Royal purple")
                Wave2.Material = "Neon"
                Wave2.Size = Vector3.new(1, 1, 1)
                Wave2.Shape = "Ball"
                Wave2.CanCollide = false
                Wave2.Anchored = true
                Wave2.TopSurface = 0
                Wave2.BottomSurface = 0
                Wave2.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.2 do
                        rngm1.Scale = Vector3.new(10 + i*20, 10 + i*20, 20)
                        rng1.Transparency = i/20
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 3, 50, 1 do
                            Wave.Size = Vector3.new(0 + i*3, 0 + i*3, 0 + i*3)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            Wave2.Size = Vector3.new(1 + i*2.5, 1 + i*2.5, 1 + i*2.5)
                            Wave2.CFrame = char.Torso.CFrame
                            local tq = i / 50
                            Wave2.Transparency = tq
                            wait()
                        end
                    else
                        for i = 3, 50, 1 do
                            Wave.Size = Vector3.new(0 + i*3, 0 + i*3, 0 + i*3)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            Wave2.Size = Vector3.new(1 + i*2.5, 1 + i*2.5, 1 + i*2.5)
                            Wave2.CFrame = char.Torso.CFrame
                            local tq = i / 50
                            Wave2.Transparency = tq
                            wait()
                        end
                    end
                    Wave:Destroy()
                    Wave2:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
        Shockwave() 
                for i = 1, 30 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
                        if Debounces.on == false then break end
                        rs:wait()
                end
        wait(2.4)
        Debounces.NoIdl = false
        hum.WalkSpeed = 16
        Debounces.on = false
        wait()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            v:Destroy()
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "e" then
		if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.on = true
		Debounces.NoIdl = true
pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
z = Instance.new("Sound", rarm)
z.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z.Volume = .6
z.Pitch = pt[math.random(1,#pt)]
z.Looped = false
z:Play()
Debounces.RPunch = true
Debounces.LPunch = true
Debounces.ks = true
Debounces.ks2 = true
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z2 = Instance.new("Sound", larm)
z2.SoundId = "http://www.roblox.com/asset/?id=206083107"
z2.Volume = .6
z2.Pitch = pt[math.random(1,#pt)]
z2.Looped = false
z2:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z3 = Instance.new("Sound", rarm)
z3.SoundId = "http://www.roblox.com/asset/?id=206083107"
z3.Volume = 0.6
z3.Pitch = pt[math.random(1,#pt)]
z3.Looped = false
z3:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z4 = Instance.new("Sound", larm)
z4.SoundId = "http://www.roblox.com/asset/?id=206083107"
z4.Volume = .6
z4.Pitch = pt[math.random(1,#pt)]
z4.Looped = false
z4:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z5 = Instance.new("Sound", rarm)
z5.SoundId = "http://www.roblox.com/asset/?id=206083107"
z5.Volume = .6
z5.Pitch = pt[math.random(1,#pt)]
z5.Looped = false
z5:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z6 = Instance.new("Sound", larm)
z6.SoundId = "http://www.roblox.com/asset/?id=206083107"
z6.Volume = .6
z6.Pitch = pt[math.random(1,#pt)]
z6.Looped = false
z6:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z7 = Instance.new("Sound", rarm)
z7.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z7.Volume = .6
z7.Pitch = pt[math.random(1,#pt)]
z7.Looped = false
z7:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z8 = Instance.new("Sound", larm)
z8.SoundId = "http://www.roblox.com/asset/?id=206083107"
z8.Volume = .6
z8.Pitch = pt[math.random(1,#pt)]
z8.Looped = false
z8:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z9 = Instance.new("Sound", rarm)
z9.SoundId = "http://www.roblox.com/asset/?id=206083107"
z9.Volume = 0.6
z9.Pitch = pt[math.random(1,#pt)]
z9.Looped = false
z9:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z10 = Instance.new("Sound", larm)
z10.SoundId = "http://www.roblox.com/asset/?id=206083107"
z10.Volume = .6
z10.Pitch = pt[math.random(1,#pt)]
z10.Looped = false
z10:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z11 = Instance.new("Sound", rarm)
z11.SoundId = "http://www.roblox.com/asset/?id=206083107"
z11.Volume = .6
z11.Pitch = pt[math.random(1,#pt)]
z11.Looped = false
z11:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z12 = Instance.new("Sound", larm)
z12.SoundId = "http://www.roblox.com/asset/?id=206083107"
z12.Volume = .6
z12.Pitch = pt[math.random(1,#pt)]
z12.Looped = false
z12:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z13 = Instance.new("Sound", rarm)
z13.SoundId = "http://www.roblox.com/asset/?id=206083107"
z13.Volume = 0.6
z13.Pitch = pt[math.random(1,#pt)]
z13.Looped = false
z13:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z14 = Instance.new("Sound", larm)
z14.SoundId = "http://www.roblox.com/asset/?id=206083107"
z14.Volume = .6
z14.Pitch = pt[math.random(1,#pt)]
z14.Looped = false
z14:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z15 = Instance.new("Sound", rarm)
z15.SoundId = "http://www.roblox.com/asset/?id=206083107"
z15.Volume = .6
z15.Pitch = pt[math.random(1,#pt)]
z15.Looped = false
z15:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z16 = Instance.new("Sound", larm)
z16.SoundId = "http://www.roblox.com/asset/?id=206083107"
z16.Volume = .6
z16.Pitch = pt[math.random(1,#pt)]
z16.Looped = false
z16:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z17 = Instance.new("Sound", rarm)
z17.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z17.Volume = .6
z17.Pitch = pt[math.random(1,#pt)]
z17.Looped = false
z17:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z18 = Instance.new("Sound", larm)
z18.SoundId = "http://www.roblox.com/asset/?id=206083107"
z18.Volume = .6
z18.Pitch = pt[math.random(1,#pt)]
z18.Looped = false
z18:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z19 = Instance.new("Sound", rarm)
z19.SoundId = "http://www.roblox.com/asset/?id=206083107"
z19.Volume = 0.6
z19.Pitch = pt[math.random(1,#pt)]
z19.Looped = false
z19:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z20 = Instance.new("Sound", larm)
z20.SoundId = "http://www.roblox.com/asset/?id=206083107"
z20.Volume = .6
z20.Pitch = pt[math.random(1,#pt)]
z20.Looped = false
z20:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z:Destroy()
z2:Destroy()
z3:Destroy()
z4:Destroy()
z5:Destroy()
z6:Destroy()
z7:Destroy()
z8:Destroy()
z9:Destroy()
z10:Destroy()
z11:Destroy()
z12:Destroy()
z13:Destroy()
z14:Destroy()
z15:Destroy()
z16:Destroy()
z17:Destroy()
z18:Destroy()
z19:Destroy()
z20:Destroy()
Debounces.LPunch = false
Debounces.RPunch = false
Debounces.ks = false
Debounces.ks2 = false
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
	if key == "t" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.ks = true
    kik = rleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
                                    z.Volume = 1
                                    z:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            end
        end)
			for i = 1,20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-90)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			kik:disconnect()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
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
				x.Pitch = 0.9
				x.Volume = 2
				xa = Instance.new("Sound",char)
				xa.SoundId = "rbxassetid://419447292"
				xa.Pitch = 1
				xa.Volume = 3
				wait(.1)
				x:Play()
				xa:Play()
				Debounces.on = false
				Debounces.Here = false
				shot = shot + 1
local rng = Instance.new("Part", larm)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Royal purple")
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
bem.Material = "Neon"
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 10, 10)
local out = Instance.new("Part", larm)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(8, 8, 8)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(12, 8, 12)
local bnd = Instance.new("Part", larm)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really black")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "Bend"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(16, 16, 16)
out.CFrame = larm.CFrame * CFrame.new(0, -5.4, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -10, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(0, -1, 0)
rng4.CFrame = rng.CFrame * CFrame.new(0, -2, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(20 + i*4, 20 + i*4, 2)
rngm3.Scale = Vector3.new(16 + i*6, 16 + i*6, 2)
rngm4.Scale = Vector3.new(12 + i*8, 12 + i*8, 2)
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
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 275
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
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 275
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
bem.Size = Vector3.new(i, 6, 6)
out.CFrame = larm.CFrame * CFrame.new(0, -5.4, 0)
bem.CFrame = larm.CFrame * CFrame.new(0, -8.4 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(2,2,2)
bndm.Scale = Vector3.new(16,16,16)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = larm
newRng.CFrame = larm.CFrame * CFrame.new(0, -8.4-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(16 + i*4, 16 + i*4, 6)
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
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "h" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 20 do
	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2.6)
        end
        Spawn(function()
            local Parts = {}
            for Y = -5,5 do
                local P = Instance.new("Part",char)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.CanCollide = false
                P.Size = Vector3.new(2,4,2)
                P.TopSurface = "SmoothNoOutlines"
                P.BottomSurface = "SmoothNoOutlines"
                P.Material = "Neon"
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
        s.Volume = 1
        s.Pitch = 0.9
        s:Play()
        sa = Instance.new("Sound",P)
        sa.SoundId = "rbxassetid://419447292"
        sa.Volume = 1
        sa.Pitch = 1
        sa:Play()
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
                                    P.Size = Vector3.new(2,2,2)*(math.random(500,900)/100)
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
                            P.Size = Vector3.new(2,2,2)*(math.random(100,300)/100)
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
                                P.BrickColor = BrickColor.new("Royal purple")
                                P.Material = "Neon"
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
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
	lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
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
----------------------------------------------------
local orbt={}
local stlt={}
local chot={}
local cfxt={}
local pfxt={}
local cns=0
local cnOrb=nil
mouse.KeyDown:connect(function(key)
    if key == "u" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
                        orbt={}
                        stlt={}
                        chot={}
                        cfxt={}
                for i = 1, 20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.6)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                z2 = Instance.new("Sound",char)
                z2.SoundId = "rbxassetid://489657591"
                z2.Pitch = 1
                z2.Volume = 2
                wait(0.1)
                z2:Play()
                cnOrb=nwPrt(char,Vector3.new(1,1,1),larm.CFrame*CFrame.new(0,-3.4,-0.1),"Royal purple")
                debris:AddItem(cnOrb,50)
                cnOrb.Mesh.MeshType=3
                cnOrb.Transparency = 0.5
                table.insert(orbt,cnOrb)
                table.insert(stlt,cnOrb)
                local nt=0
                for i=0,14.75,0.02 do
                        nt=nt+1
                        cns=i
                        if nt>=2 then
                                nt=0
                                local cho=nwPrt(mod3,Vector3.new(0.2,0.2,0.2),cnOrb.CFrame*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))*CFrame.new(0,5+cns,0),"Royal purple")
                                debris:AddItem(cho,1)
                                cho.Mesh.MeshType=3
				cho.Transparency = 1
                                table.insert(chot,cho)
                        end
                        cnOrb.CFrame=larm.CFrame*CFrame.new(0,-3.4-(cns/2),-0.1)
                        cnOrb.Mesh.Scale=Vector3.new(i,i,i)
                        wait()
                end
                for i = 1, 14 do
		        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
		        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
		        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
		        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
		        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
		        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                coroutine.wrap(function()
                for i = 1, 20 do
		        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                end)()
                wait(0.1)
                stlt={}
                local ry,ht,ps=newRay(root.CFrame*CFrame.new(0,0,-4),root.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(math.rad(-5),0,0)*CFrame.new(0,0,-2),160,{char})
                cnOrb.CFrame=root.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(math.rad(-5),0,0)
                local nt=0
                for i=0,160,3 do
                                        cnOrb.CFrame=cnOrb.CFrame*CFrame.new(0,0,-3)
                                        nt=nt+1
                                        if nt>=6 then
                        nt=0
                        local cfx=nwPrt(mod3,Vector3.new(10,10,10),cnOrb.CFrame*CFrame.new(0,0,2)*CFrame.Angles(math.rad(90),0,0),"Really black")
                        cfx.Mesh.MeshId="rbxassetid://0"
                        cfx.Transparency=0.4
                        table.insert(cfxt,cfx)
                        debris:AddItem(cfx,1)
                    end
                                                if (cnOrb.Position-ps).magnitude<12 then
                                                        break
                                                end
                                wait()
                        end
                        orbt={}
                        
                        for i=0,1,0.1 do
                                local cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,100,i),Tween(cs.Y,100,i),Tween(cs.Z,100,i))
                                wait()
                        end
                        local ofx=nwPrt(cnOrb,Vector3.new(10,10,10),cnOrb.CFrame,"Really black")
                        ofx.Transparency=0.5
                        ofx.Mesh.MeshType=3
                        ofx.Mesh.Scale=Vector3.new(30,30,30)
                        for _,v in pairs(game:service"Players":GetChildren()) do
                                pcall(function()
                                        for _,c in pairs(v.Character:GetChildren()) do
                                                if v~=p and c:IsA("Part") and (cnOrb.CFrame.p-c.CFrame.p).magnitude<120 and (cnOrb.CFrame.p-c.CFrame.p).magnitude>50 then
                                                        local hrp=v.Character:FindFirstChild("HumanoidRootPart")
                                                        hrp.Velocity=CFrame.new(hrp.CFrame.p,(cnOrb.CFrame*CFrame.new(0,10,0)).p).lookVector*2500
                                                end
                                        end
                                end)
                        end
                        for i=0,1,0.05 do
                                local cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,0.1,i),Tween(cs.Y,0.1,i),Tween(cs.Z,0.1,i))
                                local ofs=ofx.Mesh.Scale
                                ofx.Mesh.Scale=Vector3.new(Tween(ofs.X,0.1,i),Tween(ofs.Y,0.1,i),Tween(ofs.Z,0.1,i))
                                ofx.Transparency=Tween(ofx.Transparency,1,i)
                                wait()
                        end
                        ofx:Destroy()
                        cnOrb.CFrame=CFrame.new(cnOrb.Position)*CFrame.new(0,10,0)
                        local cnfx=nwPrt(cnOrb,Vector3.new(100,100,100),cnOrb.CFrame,"Really black")
                        cnfx.Mesh.MeshType=3
                        cnOrb.Transparency=0.5
                        local cnr=nwPrt(cnOrb,Vector3.new(100,100,100),cnOrb.CFrame,"Really black")
                        cnr.Transparency=0.5
                        cnr.Mesh.MeshType=3
                        local rn1=nwPrt(cnOrb,Vector3.new(10,10,10),cnOrb.CFrame*CFrame.Angles(math.rad(90),0,0),"Royal purple")
                        rn1.Transparency=1
                        rn1.Mesh.MeshId="rbxassetid://3270017"
                        local rn2=nwPrt(cnOrb,Vector3.new(10,10,10),cnOrb.CFrame,"Royal purple")
                        rn2.Transparency=1
                        rn2.Mesh.MeshId="rbxassetid://3270017"
                        local rn3=nwPrt(cnOrb,Vector3.new(100,100,100),cnOrb.CFrame*CFrame.Angles(math.rad(-90),0,0),"Royal purple")
                        rn3.Transparency=1
                        rn3.Mesh.MeshId="rbxassetid://3270017"
                        local rn4=nwPrt(cnOrb,Vector3.new(100,100,100),cnOrb.CFrame,"Royal purple")
                        rn4.Transparency=1
                        rn4.Mesh.MeshId="rbxassetid://3270017"
                        local rn5=nwPrt(cnOrb,Vector3.new(200,200,100),cnOrb.CFrame,"Royal purple")
                        rn5.Transparency=1
                        rn5.Mesh.MeshId="rbxassetid://3270017"
                        local rn6=nwPrt(cnOrb,Vector3.new(200,200,100),cnOrb.CFrame,"Royal purple")
                        rn6.Transparency=1
                        rn6.Mesh.MeshId="rbxassetid://3270017"
                        local nt=0
                        local cs=nil
                        z4 = Instance.new("Sound",char)
                        z4.SoundId = "rbxassetid://419447292"
                        z4.Pitch = 1
                        z4.Volume = 10
                        wait(0.1)
                        z4:Play()
                        z3 = Instance.new("Sound",char)
                        z3.SoundId = "rbxassetid://421328847"
                        z3.Pitch = 1
                        z3.Volume = 10
                        wait(0.1)
                        z3:Play()
                        for i=0,1,0.05 do
                                cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,100,i),Tween(cs.Y,100,i),Tween(cs.Z,100,i))
                                local fs=cnfx.Mesh.Scale
                                cnfx.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,120,i))
                                cnfx.Transparency=cnfx.Transparency+0.05
                                rn1.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,60,i))
                                rn2.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,60,i))
                                rn1.CFrame=rn1.CFrame*CFrame.Angles(math.rad(10),math.rad(6),math.rad(3))
                                rn2.CFrame=rn2.CFrame*CFrame.Angles(math.rad(10),math.rad(6),math.rad(3))
                                rn1.Transparency=Tween(rn1.Transparency,0.8,i)
                                rn2.Transparency=Tween(rn2.Transparency,0.8,i)
                                rn3.Mesh.Scale=Vector3.new(Tween(fs.X,1200,i),Tween(fs.Y,1200,i),Tween(fs.Z,600,i))
                                rn4.Mesh.Scale=Vector3.new(Tween(fs.X,1200,i),Tween(fs.Y,1200,i),Tween(fs.Z,600,i))
                                rn3.CFrame=rn3.CFrame*CFrame.Angles(math.rad(-10),math.rad(-6),math.rad(-3))
                                rn4.CFrame=rn4.CFrame*CFrame.Angles(math.rad(-10),math.rad(-6),math.rad(-3))
                                rn3.Transparency=Tween(rn1.Transparency,0.8,i)
                                rn4.Transparency=Tween(rn2.Transparency,0.8,i)
                                rn5.Transparency=Tween(rn2.Transparency,0.25,i)
                                rn5.CFrame=rn5.CFrame*CFrame.Angles(math.rad(-20),math.rad(-18),math.rad(-9))
                                rn5.Mesh.Scale=Vector3.new(Tween(fs.X,2400,i),Tween(fs.Y,2400,i),Tween(fs.Z,1200,i))
                                rn6.Transparency=Tween(rn2.Transparency,0.25,i)
                                rn6.CFrame=rn6.CFrame*CFrame.Angles(math.rad(20),math.rad(18),math.rad(9))
                                rn6.Mesh.Scale=Vector3.new(Tween(fs.X,2400,i),Tween(fs.Y,2400,i),Tween(fs.Z,1200,i))
                                local rs=cnr.Mesh.Scale
                                cnr.Mesh.Scale=Vector3.new(Tween(rs.X,10,i),Tween(rs.Y,10,i),Tween(rs.Z,10,i))
                                nt=nt+1
                                if nt>=6 then
                                        local pls={}
                                        for _,v in pairs(game.Players:GetChildren()) do
                                                table.insert(pls,v)
                                        end
                                        local ry2,ht2,ps2=newRay(cnOrb.CFrame,cnOrb.CFrame*CFrame.new(0,-1,0),1000,pls)
                                        local pffx=nwPrt(mod3,Vector3.new(1,1,1),CFrame.new(ps2)*CFrame.new(0,10,-12),"Royal purple")
                                        pffx.Mesh.MeshId="rbxassetid://0"
                                        pffx.Mesh.Scale=Vector3.new(cs.X,cs.Y/5,cs.Z)
                                        debris:AddItem(pffx,2)
                                        table.insert(pfxt,pffx)
                                        nt=0
                                end
                                wait()
                        end
                        local int=0
                        coroutine.wrap(function()
                        for i=1,500 do
                                rn1.CFrame=rn1.CFrame*CFrame.Angles(math.rad(10),math.rad(5),math.rad(5))
                                rn2.CFrame=rn2.CFrame*CFrame.Angles(math.rad(10),math.rad(5),math.rad(5))
                                rn3.CFrame=rn3.CFrame*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(-5))
                                rn4.CFrame=rn4.CFrame*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(-5))
                                rn5.CFrame=rn5.CFrame*CFrame.Angles(math.rad(5),math.rad(5),math.rad(5))
                                rn6.CFrame=rn6.CFrame*CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(-5))
                                nt=nt+1
                                int=int+1
                                local htd={p}
                                for _,v in pairs(game:service"Players":GetChildren()) do
                                        pcall(function()
                                                for _,c in pairs(v.Character:GetChildren()) do
                                                        if c:IsA("Part") and not inT(v,htd) and (cnOrb.CFrame.p-c.CFrame.p).magnitude<50 then
                                                                v.Character:FindFirstChild("Humanoid").Health=v.Character:FindFirstChild("Humanoid").Health-2
                                                                v.Character:FindFirstChild("HumanoidRootPart").Velocity=Vector3.new(0,0,0)
                                                                table.insert(htd,v)
                                                        end
                                                end
                                        end)
                                end
                                htd={p}
                                if int>=6 then
                                for _,v in pairs(game:service"Players":GetChildren()) do
                                        pcall(function()
                                                for _,c in pairs(v.Character:GetChildren()) do
                                                        if c:IsA("Part") and not inT(v,htd) and (cnOrb.CFrame.p-c.CFrame.p).magnitude<50 then
                                                                table.insert(htd,v)
                                                                local hfx=nwPrt(mod3,Vector3.new(1,1,1),c.CFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)),"Royal purple")
                                                                hfx.Mesh.Scale=Vector3.new(2,2,2)
                                                                hfx.Mesh.MeshType=3
                                                                debris:AddItem(hfx,2)
                                                                coroutine.wrap(function()
                                                                        pcall(function()
                                                                                for i=0,1,0.05 do
                                                                                        pcall(function()
                                                                                        local hs=hfx.Mesh.Scale
                                                                                        hfx.CFrame=Lerp(hfx.CFrame,cnOrb.CFrame,i)
                                                                                        hfx.Mesh.Scale=Vector3.new(Tween(hs.X,0.1,i),Tween(hs.Y,0.1,i),Tween(hs.Z,0.1,i))
                                                                                        end)
                                                                                        wait()
                                                                                end
                                                                                hfx:Destroy()
                                                                        end)
                                                                end)()
                                                        end
                                                end
                                        end)
                                end
                                int=0
                                end
                                if nt>=4 then
                                        local pls={}
                                        for _,v in pairs(game.Players:GetChildren()) do
                                                table.insert(pls,v)
                                        end
                                        local ry2,ht2,ps2=newRay(cnOrb.CFrame,cnOrb.CFrame*CFrame.new(0,-1,0),1000,pls)
                                        local pffx=nwPrt(mod3,Vector3.new(1,1,1),CFrame.new(ps2)*CFrame.new(0,10,-12),"Royal purple")
                                        pffx.Transparency=0.4
                                        pffx.Mesh.MeshId="rbxassetid://0"
                                        pffx.Mesh.Scale=Vector3.new(cs.X-10,cs.Y/5,cs.Z-10)
                                        debris:AddItem(pffx,2)
                                        table.insert(pfxt,pffx)
                                        nt=0
                                end
                                wait()
                        end
                        cnOrb:Destroy()
                        cnfx:Destroy()
                        for _,v in pairs(mod3:GetChildren()) do
                                v:Destroy()
                        end
                        orbt={}
                        stlt={}
                        chot={}
                        cfxt={}
                        pfxt={}
                        end)()
                        if Debounces.CanAttack == false then
                                Debounces.CanAttack = true
                                Debounces.NoIdl = false
                                Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
--[[mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = BrickColor.new("Royal purple")
				shell.Anchored = false
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1.2,1.2,1.2)
				shell.FormFactor = 3
				local shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1.2,1.2,1.2)
				Omega = function()
					local X = Instance.new("Part",char)
					local O = Instance.new("ObjectValue",X)
					O.Name = "creator"
					X.Locked = true
					X.Name = "Shell"
					X.Anchored = false
					X.CanCollide = false
					X.Transparency = 0.5
					X.Reflectance = 0
					X.BottomSurface = 0
					X.TopSurface = 0
					X.Shape = 0
					local V = Instance.new("ObjectValue",X)
					V.Value = char
					V.Name = "creator"
					X.BrickColor = BrickColor.new("Royal purple")
					X.Size = Vector3.new(40,40,40)
					--X.Material = "Neon"
					local Z = Instance.new("SpecialMesh",X)
					Z.MeshType = "Sphere"
					Z.Scale = Vector3.new(0.2,0.2,0.2)
					X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
					local bv = Instance.new("BodyVelocity",X)
					bv.maxForce = Vector3.new(99999,99999,99999)
					X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
					bv.velocity = root.CFrame.lookVector*10
					Explode = X.Touched:connect(function(hit)
						if hit ~= char and hit.Name ~= "Shell" and hit ~= X and hit:IsA("Part") or hit:IsA("BasePart}") then
							local cf = X.CFrame
							bv:Destroy()
							X.Anchored = true
							Z:Remove()
							Explode:disconnect()
							X.Size = Vector3.new(3,3,3)
							X.Touched:connect(function(hit) end)
							X.CanCollide = false
							for i,v in pairs(FindNearestTorso(X.CFrame.p,200))do
								if v:FindFirstChild('Humanoid') then
									v.Humanoid:TakeDamage(math.random(80,120))
								end
							end
								for i = 1, (40) do rs:wait()
									X.Transparency = X.Transparency + (1/40)
									X.Size = X.Size + Vector3.new(1,1,1)
									X.CFrame = root.CFrame * CFrame.new(0,0,-10)
								end
							X:Destroy()
							end
						end)
					end
			for i = 1,200 do
				shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.03)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,30 do
				shell.CFrame = torso.CFrame * CFrame.new(0,8,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-170)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,20,0)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(100)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-100)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-30)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(20)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(120)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(-120)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
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
end)]]--
----------------------------------------------------
Charging = false
mouse.KeyDown:connect(function(key)
	if key == "r" then
		if Charging == false then
			Charging = true
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				Debounces.on = true
				for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					if Debounces.on == false then break end
					rs:wait()
				end
				--[[for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
					if Debounces.on == false then break end
					rs:wait()
				end]]--
xay = Instance.new("Sound",char)
xay.SoundId = "rbxassetid://419447292"
xay.Pitch = 1
xay.Volume = 2.5
xay:Play()
pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('Really black')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("Royal purple")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("Really black")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

bl2 = Instance.new("Part", char)
bl2.Locked = true
bl2.Name = "Shella"
bl2.BrickColor = BrickColor.new("Really black")
bl2.Anchored = true
bl2.CanCollide = false
bl2.Transparency = 0
bl2.Reflectance = 0
bl2.BottomSurface = 0
bl2.TopSurface = 0
bl2.Shape = 0
blm2 = Instance.new("SpecialMesh",bl2)
blm2.MeshType = "Sphere"
blm2.Scale = Vector3.new(1,1,1)
blm2.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
			if Charging == true then
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(15, 15, 15)
				bl.Transparency = bl.Transparency + 0.075
				bl2.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm2.Scale = blm2.Scale + Vector3.new(5, 5, 5)
				bl2.Transparency = bl2.Transparency + 0.025
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(5,2.5,5)
				msh2.Scale = msh2.Scale + Vector3.new(10,5,10)
				elseif Charging == false then break
			end
		end
    end))

repeat
    local p = Instance.new('Part',torso)
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
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	Spawn(function()
		while rs:wait() do
			if Charging == true then
				rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
				larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
				hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
				torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
				lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
				rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
			elseif Charging == false then break
			end
		end
	end)
	Spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyUp:connect(function(key)
	if key == "r" then
		if Charging == true then
			Charging = false
				pt:Destroy()
				pt2:Destroy()
				bl:Destroy()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "g" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = BrickColor.new("Royal purple")
				shell.Anchored = true
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1,1,1)
				shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1,1,1)
				local shell2 = Instance.new("Part",torso)
				shell2.BrickColor = BrickColor.new("Royal purple")
				shell2.Anchored = true
				shell2.CanCollide = false
				shell2.Locked = true
				shell2.TopSurface = "SmoothNoOutlines"
				shell2.BottomSurface = "SmoothNoOutlines"
				shell2.Size = Vector3.new(1,1,1)
				shellm2 = Instance.new("SpecialMesh",shell2)
				shellm2.MeshType = "Sphere"
				shellm2.Scale = Vector3.new(1,1,1)

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

Shell = function()
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
        X.BrickColor = BrickColor.new("Royal purple")
        X.Size = Vector3.new(1,1,1)
        --X.Material = "Neon"
        local Z = Instance.new("SpecialMesh",X)
        Z.MeshType = "Sphere"
        Z.Scale = Vector3.new(1,1,1)
        X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
        local bv = Instance.new("BodyVelocity",X)
        bv.maxForce = Vector3.new(99999,99999,99999)
        X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
        bv.velocity = root.CFrame.lookVector*65
Explode = X.Touched:connect(function(hit)
        if hit ~= char and hit.Name ~= "Shell" and hit:IsA("Part") or hit:IsA("BasePart}") then
        local cf = X.CFrame
        bv:Destroy()
        X.Anchored = true
        Z:Remove()
        Explode:disconnect()
        X.Size = Vector3.new(3,3,3)
        X.Touched:connect(function(hit) end)
        X.CanCollide = false
		for i,v in pairs(FindNearestTorso(X.CFrame.p,40))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(6,12))
			end
		end
			for i = 1, (40) do rs:wait()
				X.Transparency = X.Transparency + (1/40)
				X.Size = X.Size + Vector3.new(1,1,1)
				X.CFrame = cf
			end
		X:Destroy()
		end
	end)
end
				Shell()
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				shell.Transparency = 1
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
Search = false
mouse.KeyDown:connect(function(key)
	if key == "n" then
		if Search == false then
			Search = true
			for i,v in pairs(game.Players:getPlayers()) do
				if v.Name~=char.Name then
					for j,k in pairs(v.Character:GetChildren()) do
						if k:IsA("BasePart") and k.Transparency >= 1 then
							bawx=Instance.new("SelectionBox",cam)
							bawx.Color = BrickColor.new("Bright red")
							bawx.Transparency = .5
							bawx.Adornee = k
						end
                    end
                end
            end
		elseif Search == true then
			Search = false
			for i, v in pairs(cam:GetChildren()) do
				if v:IsA("SelectionBox") then
					v:Destroy()
				end
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
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
			    if Debounces.ks==true then
                z = Instance.new("Sound",hed)
                z.SoundId = "rbxassetid://588693156"
                z.Volume = 1
                z:Play()
                Debounces.ks=false
				end
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(root,ht:FindFirstChild("Torso"),CFrame.new(0,0,-2.4),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(0),math.rad(180),0)
            --[[elseif hum1 == nil then
                con1:disconnect()
                wait() return]]--
            end
        end)
		for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
	if hum1 == nil then
    Debounces.on = false
    Debounces.NoIdl = false
	end
	con1:disconnect()
    elseif Grab == true then
        Grab = false
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://588693156"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		con1:disconnect()
		Debounces.on = false
		Debounces.NoIdl = false
		if gp ~= nil then
			gp:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 140
				for i,v in pairs(larm:GetChildren()) do
					if v.Name == "asd" and v:IsA("Weld") then
				v:Remove()
			end
		end
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        hum1=nil
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
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 60
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 8
    end
end)
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local och = 0
local ffing = false
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
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = 9001
wait(3)
hum.Health = 9001

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
for _, v in pairs(char:GetChildren()) do
    if v:IsA("Part") then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 10
	temp.Y = v.Size.Y/2 * 10
	temp.Z = v.Size.Z/2 * 10
	Bounding[v.Name] = temp
	--table.insert(Bounding, v.Name, temp)
end

while wait(math.random(1,10)/10) do -- Emit the Lightning effects randomly
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2
	Lightning(SPos1, SPos2, 4, 3, "Dark indigo", .3, .56)
end
och=och+1
for _,v in pairs(orbt) do
        pcall(function()
                v.Mesh.Scale=Vector3.new(cns+(0.2*math.cos(och/12)),cns+(0.2*math.cos(och/10)),cns+(0.2*math.cos(och/8)))
        end)
end
for _,v in pairs(stlt) do
        pcall(function()
                v.CFrame=larm.CFrame*CFrame.new(0,-3.5-(cns/2),-0.1)
        end)
end
for _,v in pairs(chot) do
        pcall(function()
                v.CFrame=Lerp(v.CFrame,cnOrb.CFrame,0.1)
                v.Mesh.Scale=Vector3.new(Tween(v.Mesh.Scale.X,0,0.1),Tween(v.Mesh.Scale.Y,0,0.1),Tween(v.Mesh.Scale.Z,0,0.1))
        end)
end
for _,v in pairs(cfxt) do
        pcall(function()
                local vs=v.Mesh.Scale
                v.Mesh.Scale=Vector3.new(vs.x+0.5,vs.y+0.1,vs.z+0.5)
                v.Transparency=v.Transparency+0.05
        end)
end
for _,v in pairs(pfxt) do
        pcall(function()
                local vs=v.Mesh.Scale
                v.Mesh.Scale=Vector3.new(vs.x+2,vs.y+0.5,vs.z+2)
                v.Transparency=v.Transparency+0.025
        end)
end