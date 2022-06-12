
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

Rarm=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Nougat","Handle",Vector3.new(3.34999847, 6.69999695, 3.34999847))
Rarmweld=weld(m,Character["Right Arm"],Rarm,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05729675, 4.39119911, 0.0853385925, -0.969911277, 0.243457988, -2.98023224e-008, 0.243458718, 0.969908416, 1.08033419e-007, 5.52072841e-008, 9.75269003e-008, -1))
mesh("SpecialMesh",Rarm,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=32328397",Vector3.new(0, 0, 0),Vector3.new(3.58449864, 3.58449864, 3.58449864))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(3.34999847, 6.69999695, 3.34999847))
Partweld=weld(m,Rarm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.714584351, -0.381387711, 0, 0.968919635, -0.247375682, 3.38060602e-008, 0.247375697, 0.968919694, 9.12497384e-008, -5.53283144e-008, -8.00508673e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=32328397",Vector3.new(0, 0, 0),Vector3.new(3.58449864, 3.58449864, 3.58449864))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(4, 1, 1))
Partweld=weld(m,Rarm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.95176077, 1.57546997, -0.234508514, -0.136850849, -0.95618242, -0.258819014, -0.989912808, 0.141678512, -3.71472481e-007, 0.0366694443, 0.256208181, -0.965925872))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(3.34999847, 6.69999695, 3.34999847))
Partweld=weld(m,Rarm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.6199646, 3.3400135, 1.90734863e-006, 0.971271098, 0.237976074, 1.15972526e-007, -0.237976059, 0.971271038, 1.19472546e-007, -8.4209141e-008, -1.43638914e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=32328397",Vector3.new(0, 0, 0),Vector3.new(3.58449864, 3.58449864, 3.58449864))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(4.4000001, 1.79999995, 1.79999995))
Partweld=weld(m,Rarm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.62085533, 1.88571167, 0.00590324402, 0.110307828, -0.99386102, 0.00851829443, -0.991601527, -0.110631131, -0.0669854209, 0.0675165877, -0.0010577396, -0.997717679))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(3.20000005, 1.79999995, 1.79999995))
Partweld=weld(m,Rarm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.8578949, 3.2693634, -0.0368251801, 0.363197148, -0.931361556, 0.0255653486, -0.929262877, -0.364094287, -0.0624978803, 0.0675163195, -0.00105787837, -0.997717619))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(2.79999995, 2.79999995, 2.79999995))
Partweld=weld(m,Rarm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.137453079, 1.27542877, -5.11186886, 8.90452156e-008, 9.18593202e-008, -1, -0.98991251, 0.141680613, -7.51322773e-008, 0.141680628, 0.98991257, 1.03548665e-007))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(2.39999962, 2.39999962, 2.39999962))
Partweld=weld(m,Rarm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.137456894, 1.87541199, -5.51185894, 8.90452156e-008, 9.18593202e-008, -1, -0.98991251, 0.141680613, -7.51322773e-008, 0.141680628, 0.98991257, 1.03548665e-007))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(3.20000005, 1.79999995, 1.79999995))
Partweld=weld(m,Rarm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.54613495, -0.638893127, 0.0728845596, -0.400279164, -0.916021109, -0.0261166263, -0.91390264, 0.401128829, -0.0622717254, 0.0675183386, -0.00105801714, -0.9977175))

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

Larm=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Nougat","Handle",Vector3.new(3.34999847, 6.69999695, 3.34999847))
Larmweld=weld(m,Character["Left Arm"],Larm,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.05781555, 4.62921333, -0.00970458984, 0.999991894, -0.00404046103, 1.49011612e-008, 0.00404047314, 0.999988914, -5.96046448e-008, -1.46602082e-008, 5.96641812e-008, 1))
mesh("SpecialMesh",Larm,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=32328397",Vector3.new(0, 0, 0),Vector3.new(3.58449864, 3.58449864, 3.58449864))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(4, 1, 1))
Partweld=weld(m,Larm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.65977859, 0.823997498, -0.156280518, 0.103938773, -0.960317492, -0.258818954, -0.994193792, -0.107605241, -3.32991505e-007, -0.0278499555, 0.257316202, -0.965925872))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(2.39999962, 2.39999962, 2.39999962))
Partweld=weld(m,Larm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.137443542, 1.12393951, -5.2095747, -5.98331482e-008, 1.92554985e-008, -1, -0.994193971, -0.107603095, 5.74137999e-008, -0.107603095, 0.994193971, 2.55819259e-008))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(2.79999995, 2.79999995, 2.79999995))
Partweld=weld(m,Larm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.13744545, 0.523963928, -4.80958462, -5.98331482e-008, 1.92554985e-008, -1, -0.994193971, -0.107603095, 5.74137999e-008, -0.107603095, 0.994193971, 2.55819259e-008))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(3.20000005, 1.79999995, 1.79999995))
Partweld=weld(m,Larm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.96409225, 2.46811295, 0.0160865784, 0.582305193, -0.812568247, 0.0255653579, -0.810312927, -0.58265537, -0.0624976382, 0.0656793788, 0.0156767573, -0.997717738))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(3.34999847, 6.69999695, 3.34999847))
Partweld=weld(m,Larm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.786727905, 0.192762375, 0, 0.968919694, 0.247375742, 3.01090317e-008, -0.247375727, 0.968919635, -5.77709756e-008, -4.34643717e-008, 4.8527184e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=32328397",Vector3.new(0, 0, 0),Vector3.new(3.58449864, 3.58449864, 3.58449864))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(4.4000001, 1.79999995, 1.79999995))
Partweld=weld(m,Larm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.51605988, 1.0842514, 0.058807373, 0.352736592, -0.935684025, 0.00851839688, -0.933414876, -0.352491021, -0.0669855103, 0.0656799152, 0.0156770404, -0.997717679))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(3.20000005, 1.79999995, 1.79999995))
Partweld=weld(m,Larm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05464792, -1.28056335, 0.125789642, -0.161237046, -0.986570179, -0.0261165425, -0.9847278, 0.162584379, -0.062271703, 0.0656815395, 0.0156771801, -0.9977175))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Nougat","Part",Vector3.new(3.34999847, 6.69999695, 3.34999847))
Partweld=weld(m,Larm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.42996216, 3.34001923, 1.90734863e-006, 0.882214248, 0.470848411, 1.75681691e-011, -0.470848382, 0.882214189, 2.97979135e-008, 1.40148009e-008, -2.62964193e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=32328397",Vector3.new(0, 0, 0),Vector3.new(3.58449864, 3.58449864, 3.58449864))

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

Head=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Bright yellow","Handle",Vector3.new(2.19999981, 1.0999999, 1.0999999))
Headweld=weld(m,Character["Head"],Head,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.0500087738, 2.28881836e-005, 0.999680221, 3.01564199e-007, -0.0252879113, -2.92213031e-007, 0.999997139, 3.73517423e-007, 0.0252879113, -3.6600747e-007, 0.999680221))
mesh("SpecialMesh",Head,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1.25, 1.25, 1.25))
Handel=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Bright red","Handel",Vector3.new(1.16666675, 1.39999998, 2.33333349))
Handelweld=weld(m,Head,Handel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0249404907, -0.449999809, -0.108985901, 0.928757787, -8.00113185e-008, -0.370687246, -8.31384206e-009, 1, -2.36676286e-007, 0.370687246, 2.22896801e-007, 0.928757787))
mesh("SpecialMesh",Handel,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=13030731",Vector3.new(0, 0, 0),Vector3.new(1.16666675, 1.16666651, 1.16666675))

game.Workspace.DefineUser.Humanoid.HipHeight = 10
Music = Instance.new("Sound",game.Workspace)
Music.Volume = 10
Music.Looped = true
Music.SoundId = "rbxassetid://218530627"
Music:Play()

local Player = game.Players.LocalPlayer
local Character = game.Workspace:WaitForChild(Player.Name)
local Torso = Character:WaitForChild("Torso")
local LArm = Character:WaitForChild("Left Arm")
local RArm = Character:WaitForChild("Right Arm")
local Head = Character:WaitForChild("Head")
local RLeg = Character:WaitForChild("Right Leg")
local LLeg = Character:WaitForChild("Left Leg")

local Weld = Instance.new("Weld",Head)
Weld.Part0 = Head
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0, -1.44887018, 0.388227463, 1, 0, 0, 0, 0.965925455, 0.258820862, 0, -0.258820862, 0.965925455)

local Target = Weld.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(45))

local Weld = Instance.new("Weld",LArm)
Weld.Part0 = LArm
Weld.Part1 = Torso
Weld.C0 = CFrame.new(1.78214359, 3.56006241, 0, 0.258820832, -0.965925336, 0, 0.965925336, 0.258820832, 0, 0, 0, 1)	

local Target = Weld.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(45))

local Weld = Instance.new("Weld",RArm)
Weld.Part0 = RArm
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-1.73037672, 3.36686897, 0, 0.258820832, 0.965925336, 0, -0.965925336, 0.258820832, 0, 0, 0, 1)	

local Target = Weld.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(45))

local Weld = Instance.new("Weld",RLeg)
Weld.Part0 = RLeg
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.158519745, 2.041008, 0.546886444, 0.96592629, 0.258817166, -5.77137996e-007, -0.249998331, 0.933013141, -0.258819014, -0.0669862702, 0.250000268, 0.965925932)	

local Weld = Instance.new("Weld",LLeg)
Weld.Part0 = LLeg
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.5, 1.54546356, 0.414108276, 1, 0, 0, 0, 0.965925336, -0.258820862, 0, 0.258820891, 0.965925455)	

local Target = Weld.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(45))
--------------------------DefineUser