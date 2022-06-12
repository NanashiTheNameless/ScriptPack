--[[
Made by Dvd.
]] 

script.Parent = game.Players.LocalPlayer.PlayerGui 
script.Parent = nil

local Player=game.Players.LocalPlayer
local Character=Player.Character 
local PlayerGui=Player.PlayerGui 
local Backpack=Player.Backpack 
local Torso=Character.Torso 
local Head=Character.Head 
local Face = Head.face
local Humanoid=Character.Humanoid
local LeftArm=Character["Left Arm"] 
local LeftLeg=Character["Left Leg"] 
local RightArm=Character["Right Arm"] 
local RightLeg=Character["Right Leg"] 
local LS=Torso["Left Shoulder"] 
local LH=Torso["Left Hip"] 
local RS=Torso["Right Shoulder"] 
local RH=Torso["Right Hip"] 
local Neck=Torso.Neck
local it=Instance.new
local vt=Vector3.new
local cf=CFrame.new
local scfr = nil
local Equipped=false	

local function CFA(x,y,z)
return	CFrame.fromEulerAnglesXYZ(math.rad(x),math.rad(y),math.rad(z))
end

local function rayCast(Pos, Dir, Max, Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
local LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
local RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
local RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
local RootPart=Character.HumanoidRootPart
local RootJoint=RootPart.RootJoint
local RootCF=CFA(-90,0,180)
local Attack = false 
local idle=0
local Anim="Idle"
local Effects={}
local RSH, LSH, RSH2, LSH2, NEH, ROH = nil, nil, nil, nil, nil, nil
local RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
local RH, LH=Instance.new("Weld"), Instance.new("Weld") 
RH.Name="Right Hip" LH.Name="Left Hip"
local RO, NE=Instance.new("Weld"), Instance.new("Weld") 
RO.Name="RootJoint" NE.Name="Neck"

local ModelPlace=Instance.new("Model") 
ModelPlace.Parent=Character 
ModelPlace.Name="NeoHerba" 
local DerbisPlace=Instance.new("Model") 
DerbisPlace.Parent=Character 
DerbisPlace.Name="DerbisPlace"

local Equipping = false

local ArtificialHB = Instance.new("BindableEvent", nil)
ArtificialHB.Name = "Heartbeat"

local frame = 1 / 240
local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            ArtificialHB:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                ArtificialHB:Fire()
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

local function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end

local function NoOutline(Part)
	Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
 
local function part(formfactor,parent, material,reflectance,transparency,brickcolor,name,size)
	local P=it("Part")
	P.formFactor=formfactor 
	P.Parent=parent
	P.Reflectance=reflectance
	P.Transparency=transparency
	P.CanCollide=false 
	P.Locked=true
	P.BrickColor=BrickColor.new(brickcolor)
	P.Name=name
	P.Size=size
	P.Position=Torso.Position 
	NoOutline(P)
	P.Material=material
	P:BreakJoints()
	return P 
end 
 
local function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh=it(Mesh)
	mesh.Parent=part
	if Mesh=="SpecialMesh" then
		mesh.MeshType=meshtype
		if meshid == "" then
			mesh.MeshId=""
		else
		mesh.MeshId=meshid
		end
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end
 
local function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

local so = function(id,par,vol,pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound",par)
		sou.Name = "Sfx"
		sou.Volume=vol
		sou.Pitch=pit or 1
		sou.SoundId=id
		wait()
		sou:play() 
		game:GetService("Debris"):AddItem(sou,6)
	end))
end
 
local Handle=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.25672424, 0.200000003))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.442852587, 1, 0.0996293873))
Part1=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part1",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part1Weld=weld(Part1,Handle,Part1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.510554194, -0.577285767, 0, -0.422618419, 0.906307817, 2.42462539e-009, -0.906307995, -0.42261833, -1.03020564e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part1,"","",Vector3.new(0, 0, 0),Vector3.new(0.256047517, 0.124536686, 0.502378047))
Part2=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part2",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part2Weld=weld(Part2,Handle,Part2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.852013111, 0.671671271, 0, 0.669130802, 0.74314481, 1.04220721e-009, -0.743144929, 0.669130683, 2.19162599e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part2,"","",Vector3.new(0, 0, 0),Vector3.new(0.0373610854, 0.117064483, 0.0199258793))
Part4=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part4",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part4Weld=weld(Part4,Handle,Part4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.61461401, -0.00248503685, 0, 1.80676594e-007, 1, 2.19370122e-009, -1.00000012, 1.47148967e-007, 9.31322686e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part4,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part5=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part5",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part5Weld=weld(Part5,Handle,Part5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.807856798, 0.330079079, -7.4505806e-009, 1.80676594e-007, 1, 2.19370122e-009, -1.00000012, 1.76951289e-007, 9.31322797e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part5,"","",Vector3.new(0, 0, 0),Vector3.new(0.686944544, 0.484198451, 0.502378047))
Part6=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part6",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part6Weld=weld(Part6,Handle,Part6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04798305, 0.528475046, -7.4505806e-009, 0.50000006, -0.866025388, -2.36546249e-009, 0.866025567, 0.5, 2.90301921e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part6,"","",Vector3.new(0, 0, 0),Vector3.new(0.240604967, 0.302872986, 0.502378047))
Part7=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part7",Vector3.new(0.383971602, 0.200000003, 0.200000003))
Part7Weld=weld(Part7,Handle,Part7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.41894853, -0.217259169, -7.4505806e-009, -3.1664964e-008, -1, -2.19370144e-009, 1.00000012, -2.79396772e-008, -9.31322464e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part7,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.385565281, 0.502378047))
Part8=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part8",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part8Weld=weld(Part8,Handle,Part8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.666705608, 1.09014523, -7.4505806e-009, 0.906307936, 0.42261827, 8.30336772e-011, -0.42261833, 0.906307817, 2.38176279e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part8,"","",Vector3.new(0, 0, 0),Vector3.new(0.302873343, 0.137488648, 0.298888147))
Part9=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part9",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part9Weld=weld(Part9,Handle,Part9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.845932245, 0.665846109, 0, 0.669130743, 0.74314481, 1.00706143e-009, -0.74314487, 0.669130683, 2.15998019e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part9,"","",Vector3.new(0, 0, 0),Vector3.new(0.0981350169, 0.0587813333, 0.0199258793))
Part10=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part10",Vector3.new(0.626070976, 0.200000003, 0.200000003))
Part10Weld=weld(Part10,Handle,Part10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.40986276, 0.160744905, 0, -6.14672899e-008, -1, -2.19370144e-009, 1.00000012, -5.77419996e-008, -9.31322519e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part10,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.187303051, 0.502378047))
Part11=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Dark stone grey","Part11",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part11Weld=weld(Part11,Handle,Part11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02566576, -0.00318264961, -7.4505806e-009, -5.77420138e-008, 1, 2.19370166e-009, -1.00000012, -6.14672899e-008, 9.31322242e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part11,"","",Vector3.new(0, 0, 0),Vector3.new(0.178834781, 0.351193577, 0.0996293873))
Part12=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part12",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part12Weld=weld(Part12,Handle,Part12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.173155785, -0.00183916092, -7.4505806e-009, 1.80676594e-007, 1, 2.19370166e-009, -1.00000012, 1.76951289e-007, 9.31322797e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part12,"","",Vector3.new(0, 0, 0),Vector3.new(0.0891683325, 0.668014586, 0.298888177))
Part13=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part13",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part13Weld=weld(Part13,Handle,Part13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.825001359, -0.281549454, -7.4505806e-009, -0.70710665, 0.707107008, 2.20972618e-009, -0.707107067, -0.70710659, -8.92636465e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part13,"","",Vector3.new(0, 0, 0),Vector3.new(0.13200894, 0.132506996, 0.502378047))
Part14=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part14",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part14Weld=weld(Part14,Handle,Part14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14173007, -0.994489431, -7.4505806e-009, -0.707106888, -0.707106709, -8.92636742e-010, 0.707106769, -0.707106829, -2.20972574e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part14,"","",Vector3.new(0, 0, 0),Vector3.new(0.642609537, 0.285935849, 0.502378047))
Part15=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part15",Vector3.new(0.200000003, 0.238711894, 0.200000003))
Part15Weld=weld(Part15,Handle,Part15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.65538263, 5.88422728, 7.4505806e-009, 0.970295906, -0.24192211, -1.43436307e-009, 0.24192214, 0.970295787, 1.90323202e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part15,"","",Vector3.new(0, 0, 0),Vector3.new(0.634141028, 1, 0.468886167))
Part16=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part16",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part16Weld=weld(Part16,Handle,Part16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.3505801, 0.411236763, -7.4505806e-009, 0.32556808, -0.945518613, -2.3773945e-009, 0.945518732, 0.32556805, -1.66383435e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part16,"","",Vector3.new(0, 0, 0),Vector3.new(0.392041564, 0.5688833, 0.502378047))
Part17=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part17",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part17Weld=weld(Part17,Handle,Part17,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.818701982, -0.942562222, -7.4505806e-009, -0.629320562, -0.777146041, -1.11872622e-009, 0.777146161, -0.629320502, -2.10431472e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part17,"","",Vector3.new(0, 0, 0),Vector3.new(0.263519794, 0.301378518, 0.502378047))
Part18=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Dark stone grey","Part18",Vector3.new(0.200000003, 0.202446803, 0.200000003))
Part18Weld=weld(Part18,Handle,Part18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00284004211, -0.79803133, -7.4505806e-009, 1.00000012, 1.86264515e-009, -9.31322353e-010, 1.86263804e-009, 1, 2.19370144e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part18,"","",Vector3.new(0, 0, 0),Vector3.new(0.68146497, 1, 0.0996293873))
Part19=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part19",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part19Weld=weld(Part19,Handle,Part19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.238275528, 0.776820183, -7.4505806e-009, 1.00000024, 1.86266647e-009, -9.31322464e-010, 1.86261673e-009, 1.00000012, 2.19370166e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part19,"","",Vector3.new(0, 0, 0),Vector3.new(0.42940259, 0.184812382, 0.502378047))
Part20=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part20",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part20Weld=weld(Part20,Handle,Part20,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.60157299, 0.8556602, -7.4505806e-009, 0.866025686, 0.5, 2.90301921e-010, -0.50000006, 0.866025507, 2.36546294e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part20,"","",Vector3.new(0, 0, 0),Vector3.new(0.0936516896, 0.357669294, 0.0199258793))
Part21=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part21",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part21Weld=weld(Part21,Handle,Part21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.842028618, 0.347767115, -7.4505806e-009, 1.80676594e-007, 1, 2.19370122e-009, -1.00000012, 1.76951289e-007, 9.31322797e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part21,"","",Vector3.new(0, 0, 0),Vector3.new(0.345215827, 0.661040485, 0.0996293947))
Part22=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part22",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part22Weld=weld(Part22,Handle,Part22,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.932791948, 0.34833312, 0, 1.82539239e-007, 1, 2.19370122e-009, -1.00000024, 1.75088644e-007, 9.31322797e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part22,"","",Vector3.new(0, 0, 0),Vector3.new(0.194775447, 0.666520119, 0.502378047))
Part23=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part23",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part23Weld=weld(Part23,Handle,Part23,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.653646231, 0.276763916, 0, 0.669130564, -0.743144929, -2.25341434e-009, 0.743145049, 0.669130504, 7.75765008e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part23,"","",Vector3.new(0, 0, 0),Vector3.new(0.209221676, 0.1713624, 0.502378047))
Part24=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part24",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part24Weld=weld(Part24,Handle,Part24,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0784087181, -0.00183916092, -7.4505806e-009, 1.80676594e-007, 1, 2.19370166e-009, -1.00000012, 1.76951289e-007, 9.31322797e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part24,"","",Vector3.new(0, 0, 0),Vector3.new(0.0891683325, 0.668014586, 0.298888177))
Part25=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part25",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part25Weld=weld(Part25,Handle,Part25,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.758930206, -0.152980089, -7.4505806e-009, 1.21071935e-007, 1, 2.19370166e-009, -1.00000012, 1.17346644e-007, 9.31322575e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part25,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.199258536, 0.502378047))
Part26=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part26",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part26Weld=weld(Part26,Handle,Part26,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.239709139, 0.798932552, -7.4505806e-009, 1.00000012, 3.16649675e-008, -9.31322353e-010, -2.79396914e-008, 1, 2.19370144e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part26,"","",Vector3.new(0, 0, 0),Vector3.new(0.0537999384, 0.439863414, 0.0199258793))
Part27=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part27",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part27Weld=weld(Part27,Handle,Part27,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.998297215, 0.348333597, -7.4505806e-009, 1.80676608e-007, 1.00000012, 2.19370166e-009, -1.00000024, 1.76951289e-007, 9.31322797e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part27,"","",Vector3.new(0, 0, 0),Vector3.new(0.14147374, 0.666520119, 0.502378047))
Part28=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part28",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part28Weld=weld(Part28,Handle,Part28,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.239139557, 0.828478336, -7.4505806e-009, 1.00000024, 1.86263804e-009, -9.31322464e-010, 1.86264515e-009, 1.00000012, 2.19370166e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part28,"","",Vector3.new(0, 0, 0),Vector3.new(0.437871069, 0.139481038, 0.502378047))
Part29=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part29",Vector3.new(0.346909463, 0.200000003, 0.200000003))
Part29Weld=weld(Part29,Handle,Part29,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.911619186, 0.298853636, -7.4505806e-009, 1.80676608e-007, 1.00000012, 2.19370166e-009, -1.00000024, 1.76951289e-007, 9.31322797e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part29,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.171860546, 0.502378047))
Part30=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part30",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part30Weld=weld(Part30,Handle,Part30,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.818163395, -0.301137924, -7.4505806e-009, -0.707106709, 0.707107067, 2.20972618e-009, -0.707107127, -0.70710665, -8.92636409e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part30,"","",Vector3.new(0, 0, 0),Vector3.new(0.461283982, 0.0861793533, 0.0996293947))
Part31=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part31",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part31Weld=weld(Part31,Handle,Part31,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0741142, 0.348333597, -7.4505806e-009, 1.80676608e-007, 1.00000012, 2.19370166e-009, -1.00000024, 1.76951289e-007, 9.31322797e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part31,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.666520119, 0.502378047))
Part32=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part32",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part32Weld=weld(Part32,Handle,Part32,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0644931793, 1.05323613, -7.4505806e-009, 1.00000012, 1.86264515e-009, -9.31322353e-010, 1.86263804e-009, 1, 2.19370166e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part32,"","",Vector3.new(0, 0, 0),Vector3.new(0.058283262, 0.332761973, 0.398517549))
Part33=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part33",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part33Weld=weld(Part33,Handle,Part33,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0256400108, -0.864580631, -7.4505806e-009, -0.981627584, 0.190808922, 1.33278955e-009, -0.190808952, -0.981627464, -1.97569316e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part33,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.252560198, 0.502378047))
Part34=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part34",Vector3.new(0.200000003, 0.463674814, 0.200000003))
Part34Weld=weld(Part34,Handle,Part34,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00294065475, 0.913952112, -7.4505806e-009, 1.00000024, 6.14672828e-008, -9.31322464e-010, -5.77420067e-008, 1.00000012, 2.19370189e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part34,"","",Vector3.new(0, 0, 0),Vector3.new(0.238612384, 1, 0.398517549))
Part35=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part35",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part35Weld=weld(Part35,Handle,Part35,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.826795936, 0.717429638, -7.4505806e-009, 0.719340086, -0.694658577, -2.19381135e-009, 0.694658637, 0.719340026, 9.31066391e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part35,"","",Vector3.new(0, 0, 0),Vector3.new(0.161897764, 0.331765532, 0.014944409))
Part36=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part36",Vector3.new(0.249372333, 0.271689117, 0.200000003))
Part36Weld=weld(Part36,Handle,Part36,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0497026443, 2.28624344, -7.4505806e-009, 1.00000048, 9.1269591e-008, -9.31322686e-010, -8.75443149e-008, 1.00000036, 2.19370255e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part36,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.468886167))
Part37=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part37",Vector3.new(0.200000003, 0.252609193, 0.200000003))
Part37Weld=weld(Part37,Handle,Part37,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.193004608, 0.927029371, -7.4505806e-009, 1.00000048, 9.1269591e-008, -9.31322686e-010, -8.75443149e-008, 1.00000036, 2.19370255e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part37,"","",Vector3.new(0, 0, 0),Vector3.new(0.205734745, 1, 0.298888147))
Part38=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part38",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part38Weld=weld(Part38,Handle,Part38,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.061142683, -0.824513912, -7.4505806e-009, -0.956305087, 0.29237166, 1.53200452e-009, -0.29237169, -0.956304967, -1.82555548e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part38,"","",Vector3.new(0, 0, 0),Vector3.new(0.0841868594, 0.269497186, 0.0996293947))
Part39=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part39",Vector3.new(0.200000003, 0.309448659, 0.200000003))
Part39Weld=weld(Part39,Handle,Part39,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0610454082, 0.925608397, -7.4505806e-009, 1.00000048, 9.1269591e-008, -9.31322686e-010, -8.75443149e-008, 1.00000036, 2.19370255e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part39,"","",Vector3.new(0, 0, 0),Vector3.new(0.0323796235, 1, 0.0199258793))
Part40=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part40",Vector3.new(0.291814446, 0.200000003, 0.200000003))
Part40Weld=weld(Part40,Handle,Part40,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.95251226, 0.0151846409, -7.4505806e-009, -1.86265225e-009, -1.00000012, -2.19370166e-009, 1.00000024, 1.86263094e-009, -9.31322575e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part40,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.856812, 0.502378047))
Part41=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part41",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part41Weld=weld(Part41,Handle,Part41,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.048491, 0.185130596, -7.4505806e-009, 0.241922125, -0.970296025, -2.35384778e-009, 0.970296144, 0.241922095, -3.72953696e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part41,"","",Vector3.new(0, 0, 0),Vector3.new(0.145458937, 0.125034764, 0.0199258793))
Part42=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part42",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part42Weld=weld(Part42,Handle,Part42,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00658726692, -0.873330593, -7.4505806e-009, -0.981627703, 0.190808877, 1.33278977e-009, -0.190808907, -0.981627584, -1.97569361e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part42,"","",Vector3.new(0, 0, 0),Vector3.new(0.123042323, 0.383572757, 0.502378047))
Part43=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part43",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part43Weld=weld(Part43,Handle,Part43,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43185163, -0.730316401, 0, -0.544639289, -0.838670492, -1.33255917e-009, 0.838670611, -0.54463923, -1.97584971e-009, 4.4408921e-016, 4.7291504e-011, 1))
mesh("BlockMesh",Part43,"","",Vector3.new(0, 0, 0),Vector3.new(0.197764397, 0.48917976, 0.334918678))
Part44=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part44",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part44Weld=weld(Part44,Handle,Part44,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10159743, 0.208294153, 0, 0.22495079, -0.974370182, -2.34698039e-009, 0.974370301, 0.224950761, -4.13977963e-010, 4.4408921e-016, 4.72919481e-011, 1))
mesh("BlockMesh",Part44,"","",Vector3.new(0, 0, 0),Vector3.new(0.284940064, 0.405989349, 0.224166155))
Part45=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part45",Vector3.new(0.200000003, 0.225660473, 0.200000003))
Part45Weld=weld(Part45,Handle,Part45,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0667848587, 6.47186279, 0, 1.00000012, -2.06751352e-007, -9.31323241e-010, 2.10476657e-007, 1, 2.19370255e-009, 3.33066907e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part45,"","",Vector3.new(0, 0, 0),Vector3.new(0.133058488, 1, 0.468886167))
Part46=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part46",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part46Weld=weld(Part46,Handle,Part46,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.95548296, 5.82882738, 0, 0.898794115, -0.438371509, -1.79872406e-009, 0.438371539, 0.898793995, 1.56342161e-009, 4.4408921e-016, 4.72917261e-011, 1))
mesh("BlockMesh",Part46,"","",Vector3.new(0, 0, 0),Vector3.new(0.0356031954, 0.996151626, 0.468886167))
Part47=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part47",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part47Weld=weld(Part47,Handle,Part47,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0838110447, 6.42473793, 0, 1.00000012, -2.06751366e-007, -9.31323241e-010, 2.10476671e-007, 1, 2.19370255e-009, 3.33066907e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part47,"","",Vector3.new(0, 0, 0),Vector3.new(0.303371489, 0.657055736, 0.468886167))
Part48=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part48",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part48Weld=weld(Part48,Handle,Part48,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.292896986, -0.651607037, 0, -0.829037607, 0.559193134, 1.9988049e-009, -0.559193194, -0.829037488, -1.2978727e-009, 3.33066907e-016, 4.72919481e-011, 1))
mesh("BlockMesh",Part48,"","",Vector3.new(0, 0, 0),Vector3.new(0.248077154, 0.151436433, 0.502378047))
Part49=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part49",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part49Weld=weld(Part49,Handle,Part49,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499418736, 1.04972982, 0, 0.819152057, -0.57357657, -2.02115147e-009, 0.573576629, 0.819151938, 1.2627912e-009, 3.33066907e-016, 4.72919481e-011, 1))
mesh("BlockMesh",Part49,"","",Vector3.new(0, 0, 0),Vector3.new(0.169868171, 0.0747221634, 0.298888147))
Part50=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part50",Vector3.new(0.200000003, 0.252062231, 0.200000003))
Part50Weld=weld(Part50,Handle,Part50,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106662989, 5.68907118, 0, 1.00000012, -2.36553319e-007, -9.31323241e-010, 2.40278609e-007, 1, 2.19370255e-009, 2.22044605e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part50,"","",Vector3.new(0, 0, 0),Vector3.new(0.529032052, 1, 0.0946479216))
Part51=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part51",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part51Weld=weld(Part51,Handle,Part51,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.153672695, 1.62794781, 0, 1.00000012, -2.36553319e-007, -9.31323241e-010, 2.40278609e-007, 1, 2.19370255e-009, 2.22044605e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part51,"","",Vector3.new(0, 0, 0),Vector3.new(0.35318619, 0.228649095, 0.334918678))
Part52=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part52",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part52Weld=weld(Part52,Handle,Part52,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388017535, -0.427881718, 0, -0.587785363, 0.809017003, 2.32216069e-009, -0.809017122, -0.587785304, -5.35970379e-010, 3.33066907e-016, 4.72919481e-011, 1))
mesh("BlockMesh",Part52,"","",Vector3.new(0, 0, 0),Vector3.new(0.160403326, 0.0448332205, 0.502378047))
Part53=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part53",Vector3.new(0.200000003, 0.301831782, 0.200000003))
Part53Weld=weld(Part53,Handle,Part53,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170929909, 6.7961483, 0, 1.00000012, -2.96157083e-007, -9.31323241e-010, 2.99882402e-007, 1, 2.19370255e-009, 1.11022302e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part53,"","",Vector3.new(0, 0, 0),Vector3.new(0.0345864706, 1, 0.468886167))
Part54=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part54",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part54Weld=weld(Part54,Handle,Part54,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.314434767, -1.12845349, 0, -0.99862963, -0.0523356237, 8.15237544e-010, 0.0523356274, -0.99862951, -2.23943797e-009, 2.22044605e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part54,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.302374959, 0.502378047))
Part55=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part55",Vector3.new(0.200000003, 0.273283184, 0.200000003))
Part55Weld=weld(Part55,Handle,Part55,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.70924842, 0.0113413334, 0, -3.59486165e-007, -1, -2.19370255e-009, 1.00000012, -3.55760847e-007, -9.31323463e-010, 2.22044605e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part55,"","",Vector3.new(0, 0, 0),Vector3.new(0.202247784, 1, 0.468886167))
Part56=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part56",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part56Weld=weld(Part56,Handle,Part56,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.887687325, -0.396312714, 0, -0.601814687, 0.79863584, 2.31245334e-009, -0.79863596, -0.601814628, -5.76414805e-010, 2.22044605e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part56,"","",Vector3.new(0, 0, 0),Vector3.new(0.474733919, 0.0876737535, 0.401902407))
Part57=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part57",Vector3.new(0.200000003, 0.383373559, 0.200000003))
Part57Weld=weld(Part57,Handle,Part57,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.51676106, -0.064114809, 0, -3.89288942e-007, -1, -2.19370255e-009, 1.00000012, -3.85563624e-007, -9.31323463e-010, 2.22044605e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part57,"","",Vector3.new(0, 0, 0),Vector3.new(0.591798484, 1, 0.502378047))
Part58=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part58",Vector3.new(0.200000003, 0.291449279, 0.200000003))
Part58Weld=weld(Part58,Handle,Part58,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166579962, 6.7909584, 0, 1.00000012, -3.25958979e-007, -9.31323352e-010, 3.29684298e-007, 1, 2.19370255e-009, 2.22044605e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part58,"","",Vector3.new(0, 0, 0),Vector3.new(0.0781258866, 1, 0.468886167))
Part59=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part59",Vector3.new(0.200000003, 0.236875385, 0.200000003))
Part59Weld=weld(Part59,Handle,Part59,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.42817593, 5.23714066, 0, 0.754709482, -0.656059384, -2.14207718e-009, 0.656059444, 0.754709363, 1.04460496e-009, 4.4408921e-016, 4.72919481e-011, 1))
mesh("BlockMesh",Part59,"","",Vector3.new(0, 0, 0),Vector3.new(0.0375330411, 1, 0.468886167))
Part60=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part60",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part60Weld=weld(Part60,Handle,Part60,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.442243338, 0.908265591, 0, 0.970295787, -0.241922304, -1.43436396e-009, 0.241922349, 0.970295668, 1.90323224e-009, 3.33066907e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part60,"","",Vector3.new(0, 0, 0),Vector3.new(0.104112729, 0.2879287, 0.502378047))
Part61=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part61",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part61Weld=weld(Part61,Handle,Part61,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.95011854, 5.81626844, 0, 0.898794055, -0.438371658, -1.79872406e-009, 0.438371718, 0.898793936, 1.56342095e-009, 3.33066907e-016, 4.72921702e-011, 1))
mesh("BlockMesh",Part61,"","",Vector3.new(0, 0, 0),Vector3.new(0.0891901553, 0.870557249, 0.468886167))
Part62=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part62",Vector3.new(0.200000003, 0.455106735, 0.200000003))
Part62Weld=weld(Part62,Handle,Part62,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.169278145, 2.94747758, 0, 1.00000012, -3.55760903e-007, -9.31323463e-010, 3.59486222e-007, 1, 2.19370211e-009, 2.22044605e-016, 4.72926143e-011, 1))
mesh("BlockMesh",Part62,"","",Vector3.new(0, 0, 0),Vector3.new(0.101622023, 1, 0.502378047))
Part63=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part63",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part63Weld=weld(Part63,Handle,Part63,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615385175, 0.84733367, 0, 0.89100647, -0.453990847, -1.82573523e-009, 0.453990906, 0.891006351, 1.53179092e-009, 1.11022302e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part63,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.486190945, 0.502378047))
Part64=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part64",Vector3.new(0.282548875, 0.200000003, 0.200000003))
Part64Weld=weld(Part64,Handle,Part64,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.30304837, 0.125471354, 0, -4.33991886e-007, -1, -2.19370211e-009, 1.00000012, -4.3026651e-007, -9.31323463e-010, 1.11022302e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part64,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.539990783, 0.0996293947))
Part65=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part65",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part65Weld=weld(Part65,Handle,Part65,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.196299314, 1.22741306, 0, 1.00000012, -3.70661894e-007, -9.31323463e-010, 3.74387213e-007, 1, 2.19370233e-009, 2.22044605e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part65,"","",Vector3.new(0, 0, 0),Vector3.new(0.142968237, 0.782588422, 0.298888147))
Part66=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part66",Vector3.new(0.200000003, 0.213904157, 0.200000003))
Part66Weld=weld(Part66,Handle,Part66,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.284373283, 2.51897597, 0, 0.987688482, -0.156434789, -1.2630279e-009, 0.156434804, 0.987688363, 2.02100336e-009, 3.33066907e-016, 4.72919481e-011, 1))
mesh("BlockMesh",Part66,"","",Vector3.new(0, 0, 0),Vector3.new(0.329773307, 1, 0.502378047))
Part67=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part67",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part67Weld=weld(Part67,Handle,Part67,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.628805637, -0.116426706, 0, -0.0871554688, 0.99619472, 2.26652475e-009, -0.996194839, -0.0871554613, 7.36585459e-010, 1.11022302e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part67,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.323795259, 0.0996293947))
Part68=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part68",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part68Weld=weld(Part68,Handle,Part68,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150508881, 1.16987574, 0, 1.00000012, -3.85562885e-007, -9.31323463e-010, 3.89288203e-007, 1, 2.19370211e-009, 2.22044605e-016, 4.72926143e-011, 1))
mesh("BlockMesh",Part68,"","",Vector3.new(0, 0, 0),Vector3.new(0.600765169, 0.21221064, 0.298888147))
Part69=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part69",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part69Weld=weld(Part69,Handle,Part69,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.159141779, -0.796158314, 0, -0.920504928, 0.390731454, 1.71443537e-009, -0.390731514, -0.920504808, -1.65541658e-009, 2.22044605e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part69,"","",Vector3.new(0, 0, 0),Vector3.new(0.185702384, 0.382045537, 0.502378047))
Part70=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part70",Vector3.new(0.200000003, 0.423424542, 0.200000003))
Part70Weld=weld(Part70,Handle,Part70,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.49763274, -0.0440957546, 0, -4.78694119e-007, -1, -2.19370211e-009, 1.00000012, -4.74968743e-007, -9.31323463e-010, -2.77555756e-017, 4.72923922e-011, 1))
mesh("BlockMesh",Part70,"","",Vector3.new(0, 0, 0),Vector3.new(0.400510103, 1, 0.0996293947))
Part71=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part71",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part71Weld=weld(Part71,Handle,Part71,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0585122108, 0.827519655, 0, 0.961261928, 0.275636882, -2.90579422e-010, -0.275636911, 0.961261809, 2.36542919e-009, -2.77555756e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part71,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.537001967, 0.502378047))
Part72=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part72",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part72Weld=weld(Part72,Handle,Part72,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.95262194, 5.82246542, 0, 0.898793936, -0.438371688, -1.79872373e-009, 0.438371748, 0.898793817, 1.56342073e-009, -8.32667268e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part72,"","",Vector3.new(0, 0, 0),Vector3.new(0.0640712753, 0.932517111, 0.468886167))
Part73=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part73",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part73Weld=weld(Part73,Handle,Part73,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.38011742, 5.18315983, 0, 0.754709482, -0.656059384, -2.14207674e-009, 0.656059444, 0.754709363, 1.04460496e-009, 1.11022302e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part73,"","",Vector3.new(0, 0, 0),Vector3.new(0.518072784, 0.644601583, 0.468886167))
Part74=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part74",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part74Weld=weld(Part74,Handle,Part74,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.494606733, -0.0024766922, 0, 6.27706129e-007, 1, 2.19370166e-009, -1.00000012, 6.23980782e-007, 9.31323685e-010, -1.38777878e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part74,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part75=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part75",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part75Weld=weld(Part75,Handle,Part75,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0865454674, 6.41646481, 0, 1.00000012, -4.45166876e-007, -9.31323352e-010, 4.48892223e-007, 1, 2.19370189e-009, -8.32667268e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part75,"","",Vector3.new(0, 0, 0),Vector3.new(0.330769569, 0.57436341, 0.468886167))
Part76=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part76",Vector3.new(0.200000003, 0.265515745, 0.200000003))
Part76Weld=weld(Part76,Handle,Part76,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0569050312, 6.49178696, 0, 1.00000012, -4.45166876e-007, -9.31323352e-010, 4.48892223e-007, 1, 2.19370189e-009, -8.32667268e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part76,"","",Vector3.new(0, 0, 0),Vector3.new(0.0342575088, 1, 0.468886167))
Part77=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part77",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part77Weld=weld(Part77,Handle,Part77,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.611523151, 0.574770212, 0, 0.275637895, 0.96126163, 1.8520141e-009, -0.961261749, 0.275637865, 1.49991197e-009, 1.11022302e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part77,"","",Vector3.new(0, 0, 0),Vector3.new(0.13200894, 0.0622683205, 0.502378047))
Part78=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part78",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part78Weld=weld(Part78,Handle,Part78,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.159252644, -0.705076694, 0, -1.00000012, 5.19671744e-007, 9.31323574e-010, -5.23397148e-007, -1, -2.19370166e-009, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part78,"","",Vector3.new(0, 0, 0),Vector3.new(0.215697616, 0.164388254, 0.502378047))
Part79=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part79",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part79Weld=weld(Part79,Handle,Part79,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0900363922, 0.830673695, 0, 0.970295846, -0.241922289, -1.43436363e-009, 0.241922304, 0.970295727, 1.90323224e-009, 2.22044605e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part79,"","",Vector3.new(0, 0, 0),Vector3.new(0.10610535, 0.275973231, 0.398517549))
Part80=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part80",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part80Weld=weld(Part80,Handle,Part80,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.94643879, 5.80487537, 0, 0.898793876, -0.438371688, -1.79872373e-009, 0.438371748, 0.898793757, 1.5634205e-009, -1.38777878e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part80,"","",Vector3.new(0, 0, 0),Vector3.new(0.12603119, 0.756684959, 0.468886167))
Part81=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part81",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part81Weld=weld(Part81,Handle,Part81,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.328743219, -0.923918962, 0, -0.981627405, -0.19080846, 4.95634644e-010, 0.19080849, -0.981627285, -2.33110242e-009, 1.11022302e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part81,"","",Vector3.new(0, 0, 0),Vector3.new(0.183816239, 0.583329618, 0.224166155))
Part82=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part82",Vector3.new(0.200000003, 0.216893017, 0.200000003))
Part82Weld=weld(Part82,Handle,Part82,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.252533197, 2.7309196, 0, 0.990268171, -0.139173433, -1.22756405e-009, 0.139173448, 0.990268052, 2.04273798e-009, 2.22044605e-016, 4.72926143e-011, 1))
mesh("BlockMesh",Part82,"","",Vector3.new(0, 0, 0),Vector3.new(0.188797742, 1, 0.502378047))
Part83=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part83",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part83Weld=weld(Part83,Handle,Part83,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.293014646, -0.630898476, 0, -0.829037488, 0.559193254, 1.99880468e-009, -0.559193313, -0.829037368, -1.29787214e-009, -2.77555756e-017, 4.72923922e-011, 1))
mesh("BlockMesh",Part83,"","",Vector3.new(0, 0, 0),Vector3.new(0.247579023, 0.151436433, 0.502378047))
Part84=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part84",Vector3.new(0.200000003, 4.4714632, 0.200000003))
Part84Weld=weld(Part84,Handle,Part84,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.106662989, 4.14992762, 7.4505806e-009, 1.00000012, -3.55759056e-007, -9.31323241e-010, 3.59484375e-007, 1, 2.19370211e-009, -2.77555756e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part84,"","",Vector3.new(0, 0, 0),Vector3.new(0.529032052, 1, 0.468886167))
Part85=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part85",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part85Weld=weld(Part85,Handle,Part85,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.609270096, 0.335071087, 0, 2.70077408e-007, 1, 2.19370211e-009, -1.00000012, 2.66352117e-007, 9.31323019e-010, -2.77555756e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part85,"","",Vector3.new(0, 0, 0),Vector3.new(0.361156493, 0.158410609, 0.502378047))
Part86=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part86",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part86Weld=weld(Part86,Handle,Part86,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.782322407, 0.326807261, 0, 5.38298366e-007, 1, 2.19370166e-009, -1.00000012, 5.34573019e-007, 9.31323574e-010, -8.32667268e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part86,"","",Vector3.new(0, 0, 0),Vector3.new(0.864284635, 0.153429136, 0.334918678))
Part87=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part87",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part87Weld=weld(Part87,Handle,Part87,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.793931484, 0.332943201, 0, 5.38298366e-007, 1, 2.19370166e-009, -1.00000012, 5.34573019e-007, 9.31323574e-010, -8.32667268e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part87,"","",Vector3.new(0, 0, 0),Vector3.new(0.74821651, 0.214701131, 0.334918678))
Part88=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part88",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part88Weld=weld(Part88,Handle,Part88,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.533185959, -0.00247740746, 0, 5.38298366e-007, 1, 2.19370166e-009, -1.00000012, 5.34573019e-007, 9.31323574e-010, -8.32667268e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part88,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part89=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part89",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part89Weld=weld(Part89,Handle,Part89,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.95412993, 5.81676912, 0, 0.898794055, -0.438371629, -1.79872373e-009, 0.438371658, 0.898793936, 1.56342095e-009, 2.22044605e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part89,"","",Vector3.new(0, 0, 0),Vector3.new(0.0489999354, 0.875581026, 0.0946479216))
Part90=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part90",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part90Weld=weld(Part90,Handle,Part90,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0696783066, 1.03472936, 0, 1.00000012, -3.33409957e-007, -9.3132313e-010, 3.37135276e-007, 1, 2.19370189e-009, -8.32667268e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part90,"","",Vector3.new(0, 0, 0),Vector3.new(0.110090524, 0.147949561, 0.398517549))
Part91=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part91",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part91Weld=weld(Part91,Handle,Part91,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.352267265, -0.811178207, 0, -0.997564316, -0.0697558001, 7.76030407e-010, 0.0697558075, -0.997564197, -2.25332375e-009, 1.11022302e-016, 4.72926143e-011, 1))
mesh("BlockMesh",Part91,"","",Vector3.new(0, 0, 0),Vector3.new(0.13200894, 0.0622683205, 0.502378047))
Part92=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part92",Vector3.new(0.200000003, 0.430498242, 0.200000003))
Part92Weld=weld(Part92,Handle,Part92,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.82452333, -0.0405600071, 0, -3.89289454e-007, -1, -2.19370166e-009, 1.00000012, -3.85564135e-007, -9.31323241e-010, -8.32667268e-017, 4.72930584e-011, 1))
mesh("BlockMesh",Part92,"","",Vector3.new(0, 0, 0),Vector3.new(0.179332942, 1, 0.0996293947))
Part93=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part93",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part93Weld=weld(Part93,Handle,Part93,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150509357, 1.2852515, 0, 1.00000012, -3.25959491e-007, -9.3132313e-010, 3.29684809e-007, 1, 2.19370166e-009, -8.32667268e-017, 4.72930584e-011, 1))
mesh("BlockMesh",Part93,"","",Vector3.new(0, 0, 0),Vector3.new(0.600765169, 0.21221064, 0.298888147))
Part94=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part94",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part94Weld=weld(Part94,Handle,Part94,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.66942358, 0.363407612, 0, 0.573576808, 0.819151938, 1.26279054e-009, -0.819152057, 0.573576748, 2.02115102e-009, -2.77555756e-017, 4.72923922e-011, 1))
mesh("BlockMesh",Part94,"","",Vector3.new(0, 0, 0),Vector3.new(0.16289407, 0.021918498, 0.0199258793))
Part95=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part95",Vector3.new(0.200000003, 0.23074156, 0.200000003))
Part95Weld=weld(Part95,Handle,Part95,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.09775782, 5.98232126, 0, 0.95105648, -0.309017569, -1.56363267e-009, 0.309017569, 0.951056361, 1.79853932e-009, 1.11022302e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part95,"","",Vector3.new(0, 0, 0),Vector3.new(0.330271423, 1, 0.468886167))
Part96=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part96",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part96Weld=weld(Part96,Handle,Part96,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0773189068, 6.44555187, 0, 1.00000012, -3.55761529e-007, -9.31323241e-010, 3.59486847e-007, 1, 2.19370166e-009, -2.77555756e-017, 4.72930584e-011, 1))
mesh("BlockMesh",Part96,"","",Vector3.new(0, 0, 0),Vector3.new(0.238612399, 0.865280986, 0.468886167))
Part97=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part97",Vector3.new(0.200000003, 0.501716077, 0.200000003))
Part97Weld=weld(Part97,Handle,Part97,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.20677495, 1.05548263, 0, 1.00000012, -3.55761529e-007, -9.31323241e-010, 3.59486847e-007, 1, 2.19370166e-009, -2.77555756e-017, 4.72930584e-011, 1))
mesh("BlockMesh",Part97,"","",Vector3.new(0, 0, 0),Vector3.new(0.0682462007, 1, 0.298888147))
Part98=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part98",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part98Weld=weld(Part98,Handle,Part98,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.851991177, 0.671660304, 0, 0.669131041, 0.743144572, 1.0070611e-009, -0.743144631, 0.669130981, 2.1599813e-009, 2.22044605e-016, 4.72926143e-011, 1))
mesh("BlockMesh",Part98,"","",Vector3.new(0, 0, 0),Vector3.new(0.0373610854, 0.117064483, 0.0199258793))
Part99=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part99",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part99Weld=weld(Part99,Handle,Part99,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.565040827, -0.00247764587, 0, 5.3829865e-007, 1, 2.19370166e-009, -1.00000012, 5.34573303e-007, 9.31323685e-010, 1.11022302e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part99,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part100=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part100",Vector3.new(0.200000003, 0.271788776, 0.200000003))
Part100Weld=weld(Part100,Handle,Part100,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31939876, 1.40361309, 0, 0.777145863, -0.629320741, -2.10431561e-009, 0.6293208, 0.777145743, 1.11872578e-009, 2.22044605e-016, 4.72926143e-011, 1))
mesh("BlockMesh",Part100,"","",Vector3.new(0, 0, 0),Vector3.new(0.418526679, 1, 0.502378047))
Part101=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part101",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part101Weld=weld(Part101,Handle,Part101,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.89486432, 0.00550079346, 0, -4.19091577e-007, -1, -2.19370189e-009, 1.00000012, -4.15366259e-007, -9.31323463e-010, 1.11022302e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part101,"","",Vector3.new(0, 0, 0),Vector3.new(0.882716238, 0.953452528, 0.0996293947))
Part102=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part102",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part102Weld=weld(Part102,Handle,Part102,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.2395854, 0.0965247154, 0, -4.19091577e-007, -1, -2.19370189e-009, 1.00000012, -4.15366259e-007, -9.31323463e-010, 1.11022302e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part102,"","",Vector3.new(0, 0, 0),Vector3.new(0.778105199, 0.829413891, 0.502378047))
Part103=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part103",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part103Weld=weld(Part103,Handle,Part103,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.111502886, 1.22612119, 0, 1.00000012, -3.55761586e-007, -9.31323241e-010, 3.59486904e-007, 1, 2.19370189e-009, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part103,"","",Vector3.new(0, 0, 0),Vector3.new(0.213885188, 0.795540273, 0.298888147))
Part104=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part104",Vector3.new(0.200000003, 0.282648325, 0.200000003))
Part104Weld=weld(Part104,Handle,Part104,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.162826538, 2.86124802, 0, 1.00000012, -3.55761586e-007, -9.31323241e-010, 3.59486904e-007, 1, 2.19370189e-009, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part104,"","",Vector3.new(0, 0, 0),Vector3.new(0.166381106, 1, 0.502378047))
Part105=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part105",Vector3.new(0.200000003, 0.222138971, 0.200000003))
Part105Weld=weld(Part105,Handle,Part105,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.42281055, 5.22976494, 0, 0.754709423, -0.656059325, -2.14207652e-009, 0.656059384, 0.754709303, 1.04460463e-009, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part105,"","",Vector3.new(0, 0, 0),Vector3.new(0.0911200121, 1, 0.468886167))
Part106=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part106",Vector3.new(0.200000003, 0.453014493, 0.200000003))
Part106Weld=weld(Part106,Handle,Part106,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.822166204, 2.06997347, 0, 0.927183807, -0.374607056, -1.68528325e-009, 0.374607086, 0.927183688, 1.68508474e-009, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part106,"","",Vector3.new(0, 0, 0),Vector3.new(0.329773307, 1, 0.502378047))
Part107=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part107",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part107Weld=weld(Part107,Handle,Part107,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.784232378, 0.899106026, 0, 0.838671029, 0.544638693, 4.137021e-010, -0.544638753, 0.838670909, 2.34702835e-009, 1.11022302e-016, 4.72923922e-011, 1))
mesh("BlockMesh",Part107,"","",Vector3.new(0, 0, 0),Vector3.new(0.302873343, 0.137488648, 0.298888147))
Part108=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part108",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part108Weld=weld(Part108,Handle,Part108,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.243686199, 2.66058207, 0, 0.990268171, -0.139173418, -1.22756394e-009, 0.139173433, 0.990268052, 2.04273776e-009, 1.11022302e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part108,"","",Vector3.new(0, 0, 0),Vector3.new(0.277551144, 0.381136537, 0.502378047))
Part109=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part109",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part109Weld=weld(Part109,Handle,Part109,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.693864346, 0.00245761871, -7.4505806e-009, 5.68102905e-007, 1, 2.19370166e-009, -1.00000012, 5.64377558e-007, 9.31323685e-010, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part109,"","",Vector3.new(0, 0, 0),Vector3.new(0.155920014, 0.959928453, 0.298888177))
Part110=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part110",Vector3.new(0.200000003, 0.303171992, 0.200000003))
Part110Weld=weld(Part110,Handle,Part110,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0619111061, 0.94177556, -7.4505806e-009, 1.00000012, -3.85563595e-007, -9.31323352e-010, 3.89288914e-007, 1, 2.19370211e-009, 1.11022302e-016, 4.72926143e-011, 1))
mesh("BlockMesh",Part110,"","",Vector3.new(0, 0, 0),Vector3.new(0.0323796235, 1, 0.0199258793))
Part111=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part111",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part111Weld=weld(Part111,Handle,Part111,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.672473907, 0.367975354, -7.4505806e-009, 0.573576748, 0.819151819, 1.26279043e-009, -0.819151938, 0.573576689, 2.02115102e-009, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part111,"","",Vector3.new(0, 0, 0),Vector3.new(0.132507116, 0.0677479804, 0.0199258793))
Part112=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part112",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part112Weld=weld(Part112,Handle,Part112,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.222707272, 0.783163071, -7.4505806e-009, 1.00000012, -3.55761699e-007, -9.31323241e-010, 3.59487018e-007, 1, 2.19370211e-009, -2.77555756e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part112,"","",Vector3.new(0, 0, 0),Vector3.new(0.223667994, 0.282449096, 0.0199258793))
Part113=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part113",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part113Weld=weld(Part113,Handle,Part113,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.76458478, 0.755455852, -7.4505806e-009, 0.819152474, 0.573576033, 4.95360142e-010, -0.573576093, 0.819152355, 2.3311606e-009, -2.77555756e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part113,"","",Vector3.new(0, 0, 0),Vector3.new(0.169868171, 0.0747221634, 0.298888147))
Part114=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part114",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part114Weld=weld(Part114,Handle,Part114,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0388431549, -0.866580248, -7.4505806e-009, -1.00000012, 4.15366742e-007, 9.31323463e-010, -4.19092061e-007, -1, -2.19370189e-009, 1.11022302e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part114,"","",Vector3.new(0, 0, 0),Vector3.new(0.207229167, 0.972382247, 0.224166155))
Part115=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part115",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part115Weld=weld(Part115,Handle,Part115,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.14488745, 0.0859627724, -7.4505806e-009, -3.89289767e-007, -1, -2.19370189e-009, 1.00000012, -3.85564448e-007, -9.31323352e-010, 1.11022302e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part115,"","",Vector3.new(0, 0, 0),Vector3.new(0.480711609, 0.935020983, 0.502378047))
Part116=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part116",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part116Weld=weld(Part116,Handle,Part116,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.223459482, 0.78535676, -7.4505806e-009, 1.00000012, -3.25959803e-007, -9.31323241e-010, 3.29685122e-007, 1, 2.19370189e-009, 1.11022302e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part116,"","",Vector3.new(0, 0, 0),Vector3.new(0.216195807, 0.304367542, 0.398517549))
Part117=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part117",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part117Weld=weld(Part117,Handle,Part117,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.968885183, 1.3105104, -7.4505806e-009, 0.731353581, -0.68199867, -2.17722773e-009, 0.68199873, 0.731353521, 9.69211156e-010, -2.77555756e-017, 4.72926143e-011, 1))
mesh("BlockMesh",Part117,"","",Vector3.new(0, 0, 0),Vector3.new(0.197764397, 0.260530472, 0.334918678))
Part118=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part118",Vector3.new(0.350097567, 0.200000003, 0.200000003))
Part118Weld=weld(Part118,Handle,Part118,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.33682585, 0.138009548, -7.4505806e-009, -3.89289113e-007, -1, -2.19370166e-009, 1.00000012, -3.85563794e-007, -9.31323352e-010, 1.11022302e-016, 4.72930584e-011, 1))
mesh("BlockMesh",Part118,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.414457798, 0.502378047))
Part119=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part119",Vector3.new(0.200000003, 0.423424542, 0.200000003))
Part119Weld=weld(Part119,Handle,Part119,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.49763632, -0.0440945625, -7.4505806e-009, -3.89289113e-007, -1, -2.19370166e-009, 1.00000012, -3.85563794e-007, -9.31323352e-010, 1.11022302e-016, 4.72930584e-011, 1))
mesh("BlockMesh",Part119,"","",Vector3.new(0, 0, 0),Vector3.new(0.400510103, 1, 0.502378047))
Part120=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part120",Vector3.new(0.200000003, 0.275474995, 0.200000003))
Part120Weld=weld(Part120,Handle,Part120,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.78203261, 0.0124361515, -7.4505806e-009, -3.89289113e-007, -1, -2.19370166e-009, 1.00000012, -3.85563794e-007, -9.31323352e-010, 1.11022302e-016, 4.72930584e-011, 1))
mesh("BlockMesh",Part120,"","",Vector3.new(0, 0, 0),Vector3.new(0.269497603, 1, 0.468886167))
Part121=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part121",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part121Weld=weld(Part121,Handle,Part121,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.403934, 5.19679356, -7.4505806e-009, 0.754709482, -0.656059325, -2.14207629e-009, 0.656059384, 0.754709363, 1.04460485e-009, -1.38777878e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part121,"","",Vector3.new(0, 0, 0),Vector3.new(0.279958636, 0.781093836, 0.468886167))
Part122=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Dark stone grey","Part122",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part122Weld=weld(Part122,Handle,Part122,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.407797813, -0.910555959, -7.4505806e-009, 0.927184105, 0.374606162, -4.17328706e-011, -0.374606192, 0.927183986, 2.38284459e-009, -1.38777878e-016, 4.72930584e-011, 1))
mesh("BlockMesh",Part122,"","",Vector3.new(0, 0, 0),Vector3.new(0.178834781, 0.831905007, 0.0996293873))
Part123=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part123",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part123Weld=weld(Part123,Handle,Part123,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.277877569, 1.15689731, -7.4505806e-009, 0.939692616, -0.342020571, -1.62544778e-009, 0.342020601, 0.939692497, 1.74287396e-009, -1.38777878e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part123,"","",Vector3.new(0, 0, 0),Vector3.new(0.376919776, 0.21221064, 0.298888147))
Part124=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part124",Vector3.new(0.3246921, 0.200000003, 0.200000003))
Part124Weld=weld(Part124,Handle,Part124,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31008446, -0.0741336346, -7.4505806e-009, -4.48893161e-007, -1, -2.19370166e-009, 1.00000012, -4.45167814e-007, -9.31323352e-010, -8.32667268e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part124,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.126030922, 0.502378047))
Part125=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part125",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part125Weld=weld(Part125,Handle,Part125,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.877913952, -1.31852615, -7.4505806e-009, -0.882947803, -0.469471335, -2.07571293e-010, 0.469471425, -0.882947683, -2.37415332e-009, -2.77555756e-017, 4.72930584e-011, 1))
mesh("BlockMesh",Part125,"","",Vector3.new(0, 0, 0),Vector3.new(0.27348268, 0.378093034, 0.334918678))
Part126=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part126",Vector3.new(0.253656417, 0.200000003, 0.200000003))
Part126Weld=weld(Part126,Handle,Part126,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.68215477, -0.0909559727, -7.4505806e-009, -4.48893161e-007, -1, -2.19370166e-009, 1.00000012, -4.45167814e-007, -9.31323352e-010, -8.32667268e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part126,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.343222767, 0.468886167))
Part127=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part127",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part127Weld=weld(Part127,Handle,Part127,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.2101053, -0.12765336, -7.4505806e-009, -4.48893161e-007, -1, -2.19370166e-009, 1.00000012, -4.45167814e-007, -9.31323352e-010, -8.32667268e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part127,"","",Vector3.new(0, 0, 0),Vector3.new(0.65655762, 0.661040366, 0.502378047))
Part128=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part128",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part128Weld=weld(Part128,Handle,Part128,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.484064937, -0.63858366, -7.4505806e-009, -0.529918969, 0.848048389, 2.35389064e-009, -0.848048508, -0.529918909, -3.72677833e-010, -1.38777878e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part128,"","",Vector3.new(0, 0, 0),Vector3.new(0.256047517, 0.124536686, 0.502378047))
Part129=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part129",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part129Weld=weld(Part129,Handle,Part129,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.367702961, -0.00247716904, -7.4505806e-009, 6.27705049e-007, 1, 2.19370144e-009, -1.00000012, 6.23979702e-007, 9.31323685e-010, -1.38777878e-016, 4.72930584e-011, 1))
mesh("BlockMesh",Part129,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part130=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part130",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part130Weld=weld(Part130,Handle,Part130,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.343575954, -0.665008545, -7.4505806e-009, -0.819151878, 0.573576927, 2.02115102e-009, -0.573576987, -0.819151759, -1.26278987e-009, -1.38777878e-016, 4.72928363e-011, 1))
mesh("BlockMesh",Part130,"","",Vector3.new(0, 0, 0),Vector3.new(0.183816239, 0.583329618, 0.224166155))
Part131=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part131",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part131Weld=weld(Part131,Handle,Part131,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.278337002, -0.934673548, -7.4505806e-009, -0.996194959, -0.087155357, 7.3658557e-010, 0.0871553719, -0.996194839, -2.26652408e-009, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part131,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.383572757, 0.502378047))
Part132=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part132",Vector3.new(0.200000003, 0.259235442, 0.200000003))
Part132Weld=weld(Part132,Handle,Part132,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.60857677, -0.000783205032, -7.4505806e-009, -5.08495702e-007, -1, -2.19370122e-009, 1.00000012, -5.04770355e-007, -9.31323463e-010, -1.38777878e-016, 4.72932804e-011, 1))
mesh("BlockMesh",Part132,"","",Vector3.new(0, 0, 0),Vector3.new(0.532519042, 1, 0.468886167))
Part133=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part133",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part133Weld=weld(Part133,Handle,Part133,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.890623569, 0.253905058, -7.4505806e-009, 6.27704992e-007, 1, 2.19370122e-009, -1.00000012, 6.23979645e-007, 9.31323685e-010, -1.38777878e-016, 4.72932804e-011, 1))
mesh("BlockMesh",Part133,"","",Vector3.new(0, 0, 0),Vector3.new(0.501633823, 0.621686876, 0.401902407))
Part134=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part134",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part134Weld=weld(Part134,Handle,Part134,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.485095024, 0.602808237, -7.4505806e-009, 0.838670969, 0.544638634, 4.13701934e-010, -0.544638693, 0.83867085, 2.34702768e-009, -3.05311332e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part134,"","",Vector3.new(0, 0, 0),Vector3.new(0.16289407, 0.105108969, 0.0199258793))
Part135=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part135",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part135Weld=weld(Part135,Handle,Part135,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03710628, 0.505790472, -7.4505806e-009, 0.499999702, -0.866025627, -2.36546294e-009, 0.866025805, 0.499999642, 2.90301116e-010, -2.77555756e-017, 4.72928363e-011, 1))
mesh("BlockMesh",Part135,"","",Vector3.new(0, 0, 0),Vector3.new(0.222671703, 0.302872986, 0.502378047))
Part136=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part136",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part136Weld=weld(Part136,Handle,Part136,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.296697617, -1.16209185, -7.4505806e-009, -0.920505106, -0.390730709, 1.40200351e-013, 0.390730798, -0.920504987, -2.38320963e-009, -1.38777878e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part136,"","",Vector3.new(0, 0, 0),Vector3.new(0.268999398, 0.335252553, 0.502378047))
Part137=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part137",Vector3.new(0.305364043, 0.200000003, 0.200000003))
Part137Weld=weld(Part137,Handle,Part137,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.86039114, 0.180621386, -7.4505806e-009, 3.59486535e-007, 1, 2.19370122e-009, -1.00000012, 3.55761216e-007, 9.31323019e-010, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part137,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.923065901, 0.468886167))
Part138=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part138",Vector3.new(0.200000003, 0.237815171, 0.200000003))
Part138Weld=weld(Part138,Handle,Part138,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0854542255, 0.909098148, -7.4505806e-009, 1.00000012, -4.15365861e-007, -9.31323019e-010, 4.1909118e-007, 1, 2.19370122e-009, -3.60822483e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part138,"","",Vector3.new(0, 0, 0),Vector3.new(0.268003047, 1, 0.398517549))
Part139=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part139",Vector3.new(0.200000003, 0.259235442, 0.200000003))
Part139Weld=weld(Part139,Handle,Part139,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.61296105, -0.000782966614, -7.4505806e-009, -4.78695824e-007, -1, -2.19370122e-009, 1.00000012, -4.74970477e-007, -9.31323241e-010, -2.49800181e-016, 4.72932804e-011, 1))
mesh("BlockMesh",Part139,"","",Vector3.new(0, 0, 0),Vector3.new(0.488682121, 1, 0.0946479216))
Part140=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part140",Vector3.new(3.77057314, 0.200000003, 0.200000003))
Part140Weld=weld(Part140,Handle,Part140,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.30350208, 0.0152564049, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part140,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.846849203, 0.149444088))
Part141=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part141",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part141Weld=weld(Part141,Handle,Part141,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.6061976, 0.186156511, -7.4505806e-009, -3.59486563e-007, -1, -2.19370122e-009, 1.00000012, -3.55761244e-007, -9.31323019e-010, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part141,"","",Vector3.new(0, 0, 0),Vector3.new(0.197764397, 0.319311738, 0.334918678))
Part142=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part142",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part142Weld=weld(Part142,Handle,Part142,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.05566978, 0.0843422413, -7.4505806e-009, -4.78695824e-007, -1, -2.193701e-009, 1.00000012, -4.74970477e-007, -9.31323241e-010, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part142,"","",Vector3.new(0, 0, 0),Vector3.new(0.230143845, 0.953452528, 0.502378047))
Part143=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part143",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part143Weld=weld(Part143,Handle,Part143,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127755165, 0.909672737, -7.4505806e-009, 1.00000012, -4.15365861e-007, -9.3132313e-010, 4.1909118e-007, 1, 2.19370122e-009, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part143,"","",Vector3.new(0, 0, 0),Vector3.new(0.221177265, 0.358665556, 0.398517549))
Part144=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part144",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part144Weld=weld(Part144,Handle,Part144,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.61075687, 5.02104759, -7.4505806e-009, 0.87462002, 0.48480922, 2.48973731e-010, -0.484809279, 0.874619901, 2.37016851e-009, -2.49800181e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part144,"","",Vector3.new(0, 0, 0),Vector3.new(0.330271423, 0.923065901, 0.468886167))
Part145=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part145",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part145Weld=weld(Part145,Handle,Part145,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.540335178, 0.296140075, -7.4505806e-009, 0.707107008, 0.70710665, 8.9263652e-010, -0.707106709, 0.707106948, 2.20972551e-009, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part145,"","",Vector3.new(0, 0, 0),Vector3.new(0.389550835, 0.363148868, 0.502378047))
Part146=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part146",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part146Weld=weld(Part146,Handle,Part146,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.230724812, 0.790936947, -7.4505806e-009, 1.00000012, -3.85563908e-007, -9.31323019e-010, 3.89289227e-007, 1, 2.19370078e-009, -3.05311332e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part146,"","",Vector3.new(0, 0, 0),Vector3.new(0.143466368, 0.360159993, 0.0199258793))
Part147=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part147",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part147Weld=weld(Part147,Handle,Part147,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.232528687, 0.792032957, -7.4505806e-009, 1.00000012, -3.85563908e-007, -9.31323019e-010, 3.89289227e-007, 1, 2.19370078e-009, -3.05311332e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part147,"","",Vector3.new(0, 0, 0),Vector3.new(0.125533074, 0.371119142, 0.0199258793))
Part148=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part148",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part148Weld=weld(Part148,Handle,Part148,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.227880716, 0.788297892, -7.4505806e-009, 1.00000012, -3.85563908e-007, -9.31323019e-010, 3.89289227e-007, 1, 2.19370078e-009, -3.05311332e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part148,"","",Vector3.new(0, 0, 0),Vector3.new(0.17186071, 0.333758175, 0.0199258793))
Part149=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part149",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part149Weld=weld(Part149,Handle,Part149,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601887822, -0.409503698, -7.4505806e-009, -0.139172837, 0.990268171, 2.30196728e-009, -0.99026829, -0.139172837, 6.16955043e-010, -2.49800181e-016, 4.72932804e-011, 1))
mesh("BlockMesh",Part149,"","",Vector3.new(0, 0, 0),Vector3.new(0.364643544, 0.124536686, 0.502378047))
Part150=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part150",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part150Weld=weld(Part150,Handle,Part150,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.220509768, 0.78197217, -7.4505806e-009, 1.00000012, -3.85563965e-007, -9.31323019e-010, 3.89289283e-007, 1, 2.193701e-009, -3.05311332e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part150,"","",Vector3.new(0, 0, 0),Vector3.new(0.245586485, 0.270493567, 0.398517549))
Part151=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part151",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part151Weld=weld(Part151,Handle,Part151,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127320766, -0.232409477, -7.4505806e-009, 0.587784946, -0.809017241, -2.32215935e-009, 0.80901736, 0.587784886, 5.3596888e-010, -3.60822483e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part151,"","",Vector3.new(0, 0, 0),Vector3.new(0.555433691, 0.103116363, 0.0996293947))
Part152=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part152",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part152Weld=weld(Part152,Handle,Part152,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.468789816, 0.707951069, -7.4505806e-009, 0.669130266, -0.743145227, -2.25341434e-009, 0.743145287, 0.669130206, 7.75764342e-010, -3.60822483e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part152,"","",Vector3.new(0, 0, 0),Vector3.new(0.0139481993, 0.414457947, 0.398517549))
Part153=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part153",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part153Weld=weld(Part153,Handle,Part153,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.134046793, 1.6410569, -7.4505806e-009, 1.00000012, -3.70662946e-007, -9.31323019e-010, 3.74388264e-007, 1, 2.19370122e-009, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part153,"","",Vector3.new(0, 0, 0),Vector3.new(0.15691632, 0.201251015, 0.334918678))
Part154=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part154",Vector3.new(0.200000003, 0.271689117, 0.200000003))
Part154Weld=weld(Part154,Handle,Part154,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.157688379, 6.78106308, -7.4505806e-009, 1.00000012, -3.70662946e-007, -9.31323019e-010, 3.74388264e-007, 1, 2.19370122e-009, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part154,"","",Vector3.new(0, 0, 0),Vector3.new(0.166879311, 1, 0.468886167))
Part155=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part155",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part155Weld=weld(Part155,Handle,Part155,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.229426861, 0.789691448, -7.4505806e-009, 1.00000012, -3.70662946e-007, -9.31323019e-010, 3.74388264e-007, 1, 2.19370122e-009, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part155,"","",Vector3.new(0, 0, 0),Vector3.new(0.156418189, 0.347706288, 0.398517549))
Part156=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part156",Vector3.new(0.200000003, 0.82463181, 0.200000003))
Part156Weld=weld(Part156,Handle,Part156,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.464837074, 2.19678116, -7.4505806e-009, 0.99026823, -0.139173478, -1.22756361e-009, 0.139173508, 0.990268111, 2.04273709e-009, -2.49800181e-016, 4.72932804e-011, 1))
mesh("BlockMesh",Part156,"","",Vector3.new(0, 0, 0),Vector3.new(0.450324863, 1, 0.468886167))
Part157=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","Part157",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part157Weld=weld(Part157,Handle,Part157,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.41444492, 5.21585321, -7.4505806e-009, 0.754709482, -0.656059265, -2.14207563e-009, 0.656059325, 0.754709363, 1.0446044e-009, -2.49800181e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part157,"","",Vector3.new(0, 0, 0),Vector3.new(0.174849644, 0.971703768, 0.468886167))
Part158=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part158",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part158Weld=weld(Part158,Handle,Part158,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.907902241, 0.716473937, -7.4505806e-009, 0.707107127, 0.707106471, 8.92635965e-010, -0.707106531, 0.707107067, 2.20972574e-009, -3.05311332e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part158,"","",Vector3.new(0, 0, 0),Vector3.new(0.169868171, 0.176344067, 0.298888147))
Part159=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part159",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part159Weld=weld(Part159,Handle,Part159,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.411208153, -0.00247740746, -7.4505806e-009, 5.08497237e-007, 1, 2.19370078e-009, -1.00000012, 5.0477189e-007, 9.31323463e-010, -1.38777878e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part159,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part160=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part160",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part160Weld=weld(Part160,Handle,Part160,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.53425157, -0.18892169, -7.4505806e-009, -3.89287919e-007, -1, -2.19370122e-009, 1.00000012, -3.85562601e-007, -9.3132313e-010, -1.94289029e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part160,"","",Vector3.new(0, 0, 0),Vector3.new(0.766648054, 0.669010639, 0.502378047))
Part161=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part161",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part161Weld=weld(Part161,Handle,Part161,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242187262, 0.80309248, -7.4505806e-009, 1.00000012, -3.25957956e-007, -9.31323019e-010, 3.29683274e-007, 1, 2.19370122e-009, -1.94289029e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part161,"","",Vector3.new(0, 0, 0),Vector3.new(0.0288926084, 0.481707722, 0.398517549))
Part162=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part162",Vector3.new(0.25216195, 0.200000003, 0.200000003))
Part162Weld=weld(Part162,Handle,Part162,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0410740376, 1.36595368, -7.4505806e-009, 1.00000012, -3.25957956e-007, -9.31323019e-010, 3.29683274e-007, 1, 2.19370122e-009, -1.94289029e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part162,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.607739031, 0.298888177))
Part163=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part163",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part163Weld=weld(Part163,Handle,Part163,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.229930162, 0.00693869591, -7.4505806e-009, 1.00000012, -3.25957956e-007, -9.31323019e-010, 3.29683274e-007, 1, 2.19370122e-009, -1.94289029e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part163,"","",Vector3.new(0, 0, 0),Vector3.new(0.0697405636, 0.928047001, 0.502378047))
Part164=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part164",Vector3.new(0.200000003, 0.350097418, 0.200000003))
Part164Weld=weld(Part164,Handle,Part164,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.4332267, -0.00695061684, -7.4505806e-009, -3.89287919e-007, -1, -2.19370122e-009, 1.00000012, -3.85562601e-007, -9.3132313e-010, -1.94289029e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part164,"","",Vector3.new(0, 0, 0),Vector3.new(0.392041564, 1, 0.502378047))
Part165=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part165",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part165Weld=weld(Part165,Handle,Part165,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.669436932, -0.187247753, -7.4505806e-009, 1.21066989e-007, 1, 2.19370122e-009, -1.00000012, 1.17341692e-007, 9.31322519e-010, -1.94289029e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part165,"","",Vector3.new(0, 0, 0),Vector3.new(0.513589382, 0.123540364, 0.502378047))
Part166=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part166",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part166Weld=weld(Part166,Handle,Part166,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04929018, 0.00255680084, -7.4505806e-009, 5.08497237e-007, 1, 2.19370078e-009, -1.00000012, 5.0477189e-007, 9.31323463e-010, -1.38777878e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part166,"","",Vector3.new(0, 0, 0),Vector3.new(0.308851063, 0.332263738, 0.298888177))
Part167=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part167",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part167Weld=weld(Part167,Handle,Part167,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.36538744, 0.631686091, -7.4505806e-009, 0.788011193, 0.615661144, 6.16684481e-010, -0.615661204, 0.788011074, 2.30203989e-009, -1.38777878e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part167,"","",Vector3.new(0, 0, 0),Vector3.new(0.207229167, 0.645597875, 0.224166155))
Part168=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part168",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part168Weld=weld(Part168,Handle,Part168,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.233594418, -0.538723707, -7.4505806e-009, -0.694658816, -0.71933949, -9.31064892e-010, 0.71933955, -0.694658756, -2.19381069e-009, -1.38777878e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part168,"","",Vector3.new(0, 0, 0),Vector3.new(0.267504871, 0.145956933, 0.502378047))
Part169=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part169",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part169Weld=weld(Part169,Handle,Part169,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237313032, 0.796566486, -7.4505806e-009, 1.00000012, -2.66355983e-007, -9.31322908e-010, 2.70081273e-007, 1, 2.19370122e-009, -1.38777878e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part169,"","",Vector3.new(0, 0, 0),Vector3.new(0.0777109936, 0.416450471, 0.398517549))
Part170=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part170",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part170Weld=weld(Part170,Handle,Part170,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.671483517, 0.365283132, -7.4505806e-009, 0.573576689, 0.819151938, 1.26279009e-009, -0.819152057, 0.573576629, 2.02115014e-009, -2.49800181e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part170,"","",Vector3.new(0, 0, 0),Vector3.new(0.142470062, 0.0408480652, 0.0199258793))
Part171=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part171",Vector3.new(0.200000003, 0.261028796, 0.200000003))
Part171Weld=weld(Part171,Handle,Part171,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.596231461, -0.329799175, -7.4505806e-009, 2.10477324e-007, 1, 2.193701e-009, -1.00000012, 2.0675202e-007, 9.31322797e-010, -1.38777878e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part171,"","",Vector3.new(0, 0, 0),Vector3.new(0.311341822, 1, 0.502378047))
Part172=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Dark stone grey","Part172",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part172Weld=weld(Part172,Handle,Part172,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.427907228, 0.900314331, -7.4505806e-009, -0.920504868, 0.390731394, 1.71443459e-009, -0.390731454, -0.920504749, -1.65541558e-009, -1.94289029e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part172,"","",Vector3.new(0, 0, 0),Vector3.new(0.149942249, 0.73875159, 0.0996293873))
Part173=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part173",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part173Weld=weld(Part173,Handle,Part173,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.75553894, -0.433882236, -7.4505806e-009, -3.59487359e-007, -1, -2.19370078e-009, 1.00000012, -3.5576204e-007, -9.31323019e-010, -2.49800181e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part173,"","",Vector3.new(0, 0, 0),Vector3.new(0.13200894, 0.0622683205, 0.502378047))
Part174=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part174",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part174Weld=weld(Part174,Handle,Part174,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0788497925, 0.826915979, -7.4505806e-009, 0.829037905, 0.559192657, 4.54600385e-010, -0.559192717, 0.829037786, 2.33944975e-009, -2.49800181e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part174,"","",Vector3.new(0, 0, 0),Vector3.new(0.13200894, 0.0622683205, 0.502378047))
Part175=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part175",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part175Weld=weld(Part175,Handle,Part175,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.375136733, -0.731387615, -7.4505806e-009, -0.694658279, 0.719340026, 2.22496777e-009, -0.719340086, -0.69465822, -8.539352e-010, -2.77555756e-017, 4.72935024e-011, 1))
mesh("BlockMesh",Part175,"","",Vector3.new(0, 0, 0),Vector3.new(0.157912582, 0.124536686, 0.502378047))
Part176=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part176",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part176Weld=weld(Part176,Handle,Part176,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.253765345, -0.790169716, -7.4505806e-009, -1.00000012, 3.25960684e-007, 9.31323019e-010, -3.29686003e-007, -1, -2.19370078e-009, -1.94289029e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part176,"","",Vector3.new(0, 0, 0),Vector3.new(0.0901646242, 0.100625642, 0.502378047))
Part177=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part177",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part177Weld=weld(Part177,Handle,Part177,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.23705101, -0.00247764587, -7.4505806e-009, 5.38302288e-007, 1, 2.19370078e-009, -1.00000012, 5.34576941e-007, 9.31323463e-010, -1.94289029e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part177,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part178=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part178",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part178Weld=weld(Part178,Handle,Part178,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.241248131, 0.0186445713, -7.4505806e-009, 1.00000012, -3.55763035e-007, -9.31323019e-010, 3.59488354e-007, 1, 2.19370078e-009, -2.49800181e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part178,"","",Vector3.new(0, 0, 0),Vector3.new(0.182819888, 0.810982645, 0.502378047))
Part179=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part179",Vector3.new(0.323396951, 0.200000003, 0.200000003))
Part179Weld=weld(Part179,Handle,Part179,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0766954422, 1.33616471, -7.4505806e-009, 1.00000012, -3.55763035e-007, -9.31323019e-010, 3.59488354e-007, 1, 2.19370078e-009, -2.49800181e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part179,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.309847355, 0.298888177))
Part180=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part180",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part180Weld=weld(Part180,Handle,Part180,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.562805176, -0.418934107, -7.4505806e-009, 2.70081358e-007, 1, 2.19370078e-009, -1.00000012, 2.66356039e-007, 9.31322797e-010, -2.49800181e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part180,"","",Vector3.new(0, 0, 0),Vector3.new(0.645598292, 0.589805663, 0.502378047))
Part181=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part181",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part181Weld=weld(Part181,Handle,Part181,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.646383643, 0.872835875, -7.4505806e-009, 0.906307697, -0.422618866, -1.77116388e-009, 0.422618926, 0.906307578, 1.59457358e-009, -8.32667268e-017, 4.72937245e-011, 1))
mesh("BlockMesh",Part181,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.302374959, 0.502378047))
Part182=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part182",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part182Weld=weld(Part182,Handle,Part182,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.536404133, -0.439287424, -7.4505806e-009, 2.70080449e-007, 1, 2.193701e-009, -1.00000012, 2.6635513e-007, 9.31322908e-010, -1.38777878e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part182,"","",Vector3.new(0, 0, 0),Vector3.new(0.381580502, 0.793049395, 0.502378047))
Part183=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part183",Vector3.new(0.416649997, 0.200000003, 0.200000003))
Part183Weld=weld(Part183,Handle,Part183,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0262210369, 0.0319087505, -7.4505806e-009, 5.38301379e-007, 1, 2.19370078e-009, -1.00000012, 5.34576031e-007, 9.31323463e-010, -1.94289029e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part183,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.33076933, 0.298888177))
Part184=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part184",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part184Weld=weld(Part184,Handle,Part184,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226004124, 0.786253929, -7.4505806e-009, 1.00000012, -3.55762097e-007, -9.31323019e-010, 3.59487416e-007, 1, 2.193701e-009, -2.49800181e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part184,"","",Vector3.new(0, 0, 0),Vector3.new(0.190790296, 0.313334167, 0.398517549))
Part185=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part185",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part185Weld=weld(Part185,Handle,Part185,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08929896, -0.61315155, -7.4505806e-009, -0.70710659, 0.707107127, 2.20972574e-009, -0.707107186, -0.707106531, -8.92635965e-010, -1.38777878e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part185,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.302374959, 0.502378047))
Part186=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part186",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part186Weld=weld(Part186,Handle,Part186,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.247771263, -0.673208714, -7.4505806e-009, -0.809017539, -0.587784708, -5.35968159e-010, 0.587784767, -0.80901742, -2.32215935e-009, -1.94289029e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part186,"","",Vector3.new(0, 0, 0),Vector3.new(0.443847537, 0.154425412, 0.502378047))
Part187=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part187",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part187Weld=weld(Part187,Handle,Part187,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.219176054, 0.77982831, -7.4505806e-009, 1.00000012, -3.55762069e-007, -9.31323019e-010, 3.59487387e-007, 1, 2.193701e-009, -2.49800181e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part187,"","",Vector3.new(0, 0, 0),Vector3.new(0.259036422, 0.249073282, 0.398517549))
Part188=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part188",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part188Weld=weld(Part188,Handle,Part188,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.192446232, -0.729837418, -7.4505806e-009, -0.587785065, 0.809017181, 2.32215935e-009, -0.809017301, -0.587785006, -5.35969047e-010, -1.38777878e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part188,"","",Vector3.new(0, 0, 0),Vector3.new(0.351691723, 0.27248615, 0.502378047))
Part189=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part189",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part189Weld=weld(Part189,Handle,Part189,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.861406207, 0.700342655, -7.4505806e-009, 0.719339609, -0.694658697, -2.19381047e-009, 0.694658756, 0.71933955, 9.31064947e-010, -1.38777878e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part189,"","",Vector3.new(0, 0, 0),Vector3.new(0.19925876, 0.459291071, 0.502378047))
Part190=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part190",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part190Weld=weld(Part190,Handle,Part190,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.664528847, 0.712442756, -7.4505806e-009, 0.529919744, 0.848047853, 1.36683775e-009, -0.848047972, 0.529919684, 1.95229144e-009, -1.38777878e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part190,"","",Vector3.new(0, 0, 0),Vector3.new(0.196768045, 0.242597327, 0.401902407))
Part191=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part191",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part191Weld=weld(Part191,Handle,Part191,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.200777292, 0.804986477, -7.4505806e-009, 1.00000012, -2.66356096e-007, -9.31322908e-010, 2.70081415e-007, 1, 2.19370078e-009, -1.38777878e-016, 4.72939465e-011, 1))
mesh("BlockMesh",Part191,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.106105186, 0.502378047))
Part192=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part192",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part192Weld=weld(Part192,Handle,Part192,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.640266061, 0.850679398, -7.4505806e-009, 0.891006589, -0.453990757, -1.82573423e-009, 0.453990817, 0.89100647, 1.53179025e-009, -1.38777878e-016, 4.72935024e-011, 1))
mesh("BlockMesh",Part192,"","",Vector3.new(0, 0, 0),Vector3.new(0.202247664, 0.486190945, 0.502378047))
Part193=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part193",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part193Weld=weld(Part193,Handle,Part193,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.491529226, -1.10086632, -7.4505806e-009, -0.994522035, 0.104528695, 1.15552523e-009, -0.10452871, -0.994521916, -2.08433404e-009, -2.77555756e-017, 4.72937245e-011, 1))
mesh("BlockMesh",Part193,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.235125199, 0.502378047))
Part194=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part194",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part194Weld=weld(Part194,Handle,Part194,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.321534157, 0.648384094, -7.4505806e-009, 0.788011074, 0.615661144, 6.16684537e-010, -0.615661204, 0.788010955, 2.30203989e-009, -8.32667268e-017, 4.72937245e-011, 1))
mesh("BlockMesh",Part194,"","",Vector3.new(0, 0, 0),Vector3.new(0.0652573034, 0.262024999, 0.502378047))
Part195=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part195",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part195Weld=weld(Part195,Handle,Part195,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.436405182, 0.444661379, -7.4505806e-009, 0.809017181, 0.587785125, 5.3596938e-010, -0.587785184, 0.809017062, 2.32215935e-009, -1.38777878e-016, 4.72937245e-011, 1))
mesh("BlockMesh",Part195,"","",Vector3.new(0, 0, 0),Vector3.new(0.0468258522, 0.600266576, 0.502378047))
Part196=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part196",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part196Weld=weld(Part196,Handle,Part196,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.413990021, 0.650781989, -7.4505806e-009, 0.766044617, 0.642787457, -7.27041871e-010, -0.642787457, 0.766044617, -2.31532193e-009, -9.31313249e-010, 2.24097274e-009, 1))
mesh("BlockMesh",Part196,"","",Vector3.new(0, 0, 0),Vector3.new(0.063264735, 0.312836051, 0.0199258793))
Part197=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part197",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part197Weld=weld(Part197,Handle,Part197,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.44298172, 0.893301368, -7.4505806e-009, 0.777153909, 0.629326165, 6.56773025e-010, -0.629326224, 0.77715379, 2.29094876e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part197,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.282449096, 0.502378047))
Part198=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part198",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part198Weld=weld(Part198,Handle,Part198,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.561235189, 0.343694329, -7.4505806e-009, 0.406740636, 0.913554132, 1.62525815e-009, -0.913554251, 0.406740576, 1.74308079e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part198,"","",Vector3.new(0, 0, 0),Vector3.new(0.0846426934, 0.304686844, 0.502378047))
Part199=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part199",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part199Weld=weld(Part199,Handle,Part199,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.747516394, 0.309030533, -7.4505806e-009, 3.29688788e-007, 1.00000942, 2.19372165e-009, -1.00000954, 3.25963441e-007, 9.31332012e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part199,"","",Vector3.new(0, 0, 0),Vector3.new(0.74821651, 0.164886504, 0.0697405711))
Part200=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part200",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part200Weld=weld(Part200,Handle,Part200,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.471098304, 0.592271805, -7.4505806e-009, 0.83867836, -0.544644356, -1.97586703e-009, 0.544644415, 0.838678241, 1.33257005e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part200,"","",Vector3.new(0, 0, 0),Vector3.new(0.0323796235, 0.213704914, 0.398517549))
Part201=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part201",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part201Weld=weld(Part201,Handle,Part201,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.334611177, 0.915703773, -7.4505806e-009, 0.974379182, -0.224953309, -1.40094136e-009, 0.224953339, 0.974379063, 1.92799243e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part201,"","",Vector3.new(0, 0, 0),Vector3.new(0.235623524, 0.302873105, 0.398517549))
Part202=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part202",Vector3.new(0.292013675, 0.200000003, 0.200000003))
Part202Weld=weld(Part202,Handle,Part202,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0610282421, 1.34116149, -7.4505806e-009, 1.0000093, -1.47149493e-007, -9.31331345e-010, 1.50874826e-007, 1.00000918, 2.1937212e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part202,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.359662026, 0.298888177))
Part203=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part203",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part203Weld=weld(Part203,Handle,Part203,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.70484972, -0.281561375, -7.4505806e-009, -0.615666807, 0.788018167, 2.30206076e-009, -0.788018286, -0.615666747, -6.16689921e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part203,"","",Vector3.new(0, 0, 0),Vector3.new(0.284939975, 0.309847176, 0.334918678))
Part204=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part204",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part204Weld=weld(Part204,Handle,Part204,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.277677536, -0.691249371, -7.4505806e-009, -0.829044938, 0.559198081, 1.99882155e-009, -0.559198141, -0.829044819, -1.29788302e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part204,"","",Vector3.new(0, 0, 0),Vector3.new(0.393037915, 0.185808539, 0.502378047))
Part205=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part205",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part205Weld=weld(Part205,Handle,Part205,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.99376798, 0.0843443871, -7.4505806e-009, -2.77534696e-007, -1.00000882, -2.19372032e-009, 1.00000894, -2.73809349e-007, -9.31331234e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part205,"","",Vector3.new(0, 0, 0),Vector3.new(0.184812531, 0.953452528, 0.502378047))
Part206=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part206",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part206Weld=weld(Part206,Handle,Part206,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.627599239, 0.0875306129, -7.4505806e-009, 0.0871566907, 0.996203482, 2.10420192e-009, -0.996203601, 0.0871566832, 1.11898246e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part206,"","",Vector3.new(0, 0, 0),Vector3.new(0.0946479365, 0.271988034, 0.0996293947))
Part207=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part207",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part207Weld=weld(Part207,Handle,Part207,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.423806906, 0.653360367, -7.4505806e-009, 0.669136286, -0.743151665, -2.25343433e-009, 0.743151724, 0.669136226, 7.75771336e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part207,"","",Vector3.new(0, 0, 0),Vector3.new(0.266508669, 0.337743342, 0.398517549))
Part208=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part208",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part208Weld=weld(Part208,Handle,Part208,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.168997288, 0.900891066, -7.4505806e-009, 1.00000894, -2.06752546e-007, -9.31331234e-010, 2.10477879e-007, 1.00000882, 2.19372054e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part208,"","",Vector3.new(0, 0, 0),Vector3.new(0.192284733, 0.604749858, 0.224166155))
Part209=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part209",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part209Weld=weld(Part209,Handle,Part209,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.220369816, 0.780736685, -7.4505806e-009, 1.00000894, -2.06752546e-007, -9.31331234e-010, 2.10477879e-007, 1.00000882, 2.19372054e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part209,"","",Vector3.new(0, 0, 0),Vector3.new(0.247080922, 0.258039892, 0.0199258793))
Part210=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part210",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part210Weld=weld(Part210,Handle,Part210,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.917978287, 0.00458931923, -7.4505806e-009, 3.89293405e-007, 1.00000882, 2.19372032e-009, -1.00000894, 3.85568057e-007, 9.31331567e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part210,"","",Vector3.new(0, 0, 0),Vector3.new(0.252062351, 0.821941853, 0.199258775))
Part211=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part211",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part211Weld=weld(Part211,Handle,Part211,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.990432262, -0.564612746, -7.4505806e-009, -0.544644117, -0.838677824, -1.3325695e-009, 0.838677943, -0.544644058, -1.97586592e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part211,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.302872986, 0.502378047))
Part212=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part212",Vector3.new(0.200000003, 0.271788776, 0.200000003))
Part212Weld=weld(Part212,Handle,Part212,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.32828319, 1.40363073, -7.4505806e-009, 0.777152717, -0.629326105, -2.10433315e-009, 0.629326165, 0.777152598, 1.11873533e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part212,"","",Vector3.new(0, 0, 0),Vector3.new(0.329773307, 1, 0.0996293947))
Part213=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part213",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part213Weld=weld(Part213,Handle,Part213,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.41172361, -0.121773243, -7.4505806e-009, -2.70084115e-007, -1.0000087, -2.19372032e-009, 1.00000882, -2.66358768e-007, -9.31331234e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part213,"","",Vector3.new(0, 0, 0),Vector3.new(0.607241035, 0.60225904, 0.502378047))
Part214=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part214",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part214Weld=weld(Part214,Handle,Part214,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.270895958, 0.678554177, -7.4505806e-009, 0.682004452, 0.731359839, 9.69219149e-010, -0.731359899, 0.682004392, 2.17724594e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part214,"","",Vector3.new(0, 0, 0),Vector3.new(0.354182422, 0.194775298, 0.502378047))
Part215=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part215",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part215Weld=weld(Part215,Handle,Part215,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.519358873, -0.896590948, -7.4505806e-009, -0.939700782, -0.342022777, 1.24868504e-010, 0.342022806, -0.939700663, -2.37995623e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part215,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.383572757, 0.502378047))
Part216=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part216",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part216Weld=weld(Part216,Handle,Part216,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.67499876, 0.732878685, -7.4505806e-009, 0.529924154, 0.848055005, 1.3668493e-009, -0.848055124, 0.529924095, 1.95230809e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part216,"","",Vector3.new(0, 0, 0),Vector3.new(0.276471525, 0.0383572429, 0.401902407))
Part217=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part217",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part217Weld=weld(Part217,Handle,Part217,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0616259575, -0.787982941, -7.4505806e-009, -0.956312776, 0.292374313, 1.53201751e-009, -0.292374343, -0.956312656, -1.8255697e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part217,"","",Vector3.new(0, 0, 0),Vector3.new(0.0841868594, 0.32379514, 0.502378047))
Part218=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part218",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part218Weld=weld(Part218,Handle,Part218,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.435945034, 0.58194685, -7.4505806e-009, 0.682004213, 0.731359422, 9.69218483e-010, -0.731359482, 0.682004154, 2.17724505e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part218,"","",Vector3.new(0, 0, 0),Vector3.new(0.156418145, 0.348204404, 0.502378047))
Part219=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part219",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part219Weld=weld(Part219,Handle,Part219,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.777727842, 0.950748324, -7.4505806e-009, 0.629325986, 0.777151942, 1.11873399e-009, -0.777152061, 0.629325926, 2.10433226e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part219,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.302374959, 0.502378047))
Part220=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part220",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part220Weld=weld(Part220,Handle,Part220,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.982933044, -0.606589198, -7.4505806e-009, -0.58779037, -0.809023321, -1.22733335e-009, 0.80902344, -0.58779031, -2.04289807e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part220,"","",Vector3.new(0, 0, 0),Vector3.new(0.193779156, 0.302872986, 0.502378047))
Part221=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part221",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part221Weld=weld(Part221,Handle,Part221,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.263267994, 0.0534760952, -7.4505806e-009, 1.00000823, -2.36556403e-007, -9.31330568e-010, 2.40281736e-007, 1.00000811, 2.19371898e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part221,"","",Vector3.new(0, 0, 0),Vector3.new(0.403000772, 0.462778181, 0.502378047))
Part222=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part222",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part222Weld=weld(Part222,Handle,Part222,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.816044807, -0.781208515, -7.4505806e-009, -0.766050816, -0.642792463, -6.96654512e-010, 0.642792523, -0.766050696, -2.27913377e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part222,"","",Vector3.new(0, 0, 0),Vector3.new(0.161399618, 0.302872986, 0.502378047))
Part223=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part223",Vector3.new(0.25216195, 0.200000003, 0.200000003))
Part223Weld=weld(Part223,Handle,Part223,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0410759449, 1.36596978, -7.4505806e-009, 1.00000787, -2.06754066e-007, -9.31330346e-010, 2.10479385e-007, 1.00000775, 2.19371832e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part223,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.607739031, 0.0199258793))
Part224=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part224",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part224Weld=weld(Part224,Handle,Part224,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.785282493, -0.00029706955, -7.4505806e-009, -0.438374341, 0.898801088, 2.37996911e-009, -0.898801208, -0.438374281, -1.24588506e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part224,"","",Vector3.new(0, 0, 0),Vector3.new(0.435878485, 0.0732275471, 0.502378047))
Part225=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part225",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part225Weld=weld(Part225,Handle,Part225,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.565860271, -0.164358616, -7.4505806e-009, -0.0174525678, 0.99985528, 2.20963803e-009, -0.999855399, -0.0174525697, 8.92902086e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part225,"","",Vector3.new(0, 0, 0),Vector3.new(0.646096528, 0.311341614, 0.502378047))
Part226=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part226",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part226Weld=weld(Part226,Handle,Part226,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.460988522, 0.899613023, -7.4505806e-009, 0.777152121, 0.629324734, 6.5677136e-010, -0.629324794, 0.777152002, 2.29094388e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part226,"","",Vector3.new(0, 0, 0),Vector3.new(0.107101627, 0.291913867, 0.502378047))
Part227=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part227",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part227Weld=weld(Part227,Handle,Part227,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.614149332, -0.874373436, -7.4505806e-009, -0.891013265, -0.453993648, -1.66105796e-010, 0.453993708, -0.891013145, -2.37743158e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part227,"","",Vector3.new(0, 0, 0),Vector3.new(0.148447812, 0.383572757, 0.502378047))
Part228=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part228",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part228Weld=weld(Part228,Handle,Part228,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.652848959, 0.0911803246, -7.4505806e-009, 0.0871565416, 0.996201992, 2.10419904e-009, -0.996202111, 0.0871565342, 1.1189808e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part228,"","",Vector3.new(0, 0, 0),Vector3.new(0.259036392, 0.271988034, 0.502378047))
Part229=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part229",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part229Weld=weld(Part229,Handle,Part229,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.139543056, -0.223748207, -7.4505806e-009, 0.587789416, -0.809023082, -2.32217667e-009, 0.809023201, 0.587789357, 5.35973044e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part229,"","",Vector3.new(0, 0, 0),Vector3.new(0.433387727, 0.189793855, 0.502378047))
Part230=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part230",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part230Weld=weld(Part230,Handle,Part230,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.656256318, -0.141387463, -7.4505806e-009, -0.0871562809, 0.996201992, 2.26654029e-009, -0.996202111, -0.0871562734, 7.36590455e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part230,"","",Vector3.new(0, 0, 0),Vector3.new(0.248077154, 0.5355075, 0.502378047))
Part231=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part231",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part231Weld=weld(Part231,Handle,Part231,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.265799046, 0.522639751, -7.4505806e-009, 1.00000739, -2.06754038e-007, -9.31329791e-010, 2.10479357e-007, 1.00000727, 2.19371721e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part231,"","",Vector3.new(0, 0, 0),Vector3.new(0.377595276, 0.245586276, 0.502378047))
Part232=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part232",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part232Weld=weld(Part232,Handle,Part232,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.673213005, 0.725049019, -7.4505806e-009, 0.529923499, 0.848053992, 1.36684775e-009, -0.848054111, 0.529923439, 1.95230565e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part232,"","",Vector3.new(0, 0, 0),Vector3.new(0.258538246, 0.0567886569, 0.401902407))
Part233=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part233",Vector3.new(0.200000003, 0.203642309, 0.200000003))
Part233Weld=weld(Part233,Handle,Part233,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.186819553, 0.859548092, -7.4505806e-009, 1.00000727, -1.76951701e-007, -9.31329458e-010, 1.80677034e-007, 1.00000715, 2.19371721e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part233,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 1, 0.502378047))
Part234=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part234",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part234Weld=weld(Part234,Handle,Part234,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.624229908, 0.785496235, -7.4505806e-009, 0.629325211, 0.777151346, 1.11873355e-009, -0.777151465, 0.629325151, 2.10433004e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part234,"","",Vector3.new(0, 0, 0),Vector3.new(0.103614584, 0.277467638, 0.502378047))
Part235=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part235",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part235Weld=weld(Part235,Handle,Part235,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.120908022, 0.83480382, -7.4505806e-009, 0.961268723, 0.275639057, -2.90581142e-010, -0.275639087, 0.961268604, 2.36544517e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part235,"","",Vector3.new(0, 0, 0),Vector3.new(0.241103157, 0.473239243, 0.398517549))
Part236=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part236",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part236Weld=weld(Part236,Handle,Part236,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.897193432, -0.649360299, -7.4505806e-009, -0.642792463, -0.766049564, -1.08183718e-009, 0.766049683, -0.642792404, -2.12353379e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part236,"","",Vector3.new(0, 0, 0),Vector3.new(0.183816239, 0.583329618, 0.224166155))
Part237=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part237",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part237Weld=weld(Part237,Handle,Part237,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.234011889, 0.793343544, -7.4505806e-009, 1.00000703, -1.17347042e-007, -9.31329014e-010, 1.21072361e-007, 1.00000691, 2.19371654e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part237,"","",Vector3.new(0, 0, 0),Vector3.new(0.110588677, 0.384071022, 0.398517549))
Part238=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part238",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part238Weld=weld(Part238,Handle,Part238,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.334397793, -0.820254326, -7.4505806e-009, -0.629325271, -0.777151048, -1.11873288e-009, 0.777151167, -0.629325211, -2.1043296e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part238,"","",Vector3.new(0, 0, 0),Vector3.new(0.13200894, 0.0622683205, 0.502378047))
Part239=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part239",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part239Weld=weld(Part239,Handle,Part239,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.235532761, 0.794787884, -7.4505806e-009, 1.00000715, -1.41561429e-007, -9.31329125e-010, 1.45286762e-007, 1.00000703, 2.19371676e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part239,"","",Vector3.new(0, 0, 0),Vector3.new(0.0956442729, 0.398517251, 0.0199258793))
Part240=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part240",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part240Weld=weld(Part240,Handle,Part240,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.225601196, 1.11089122, -7.4505806e-009, 0.999854863, -0.0174528621, -9.6947339e-010, 0.0174528677, 0.999854743, 2.1771287e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part240,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.302374959, 0.502378047))
Part241=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part241",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part241Weld=weld(Part241,Handle,Part241,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.21414828, 0.31569314, -7.4505806e-009, 0.01745281, 0.999854803, 2.1771287e-009, -0.999854922, 0.0174528044, 9.6947339e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part241,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.302374959, 0.502378047))
Part242=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part242",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part242Weld=weld(Part242,Handle,Part242,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.769648314, 0.713084698, -7.4505806e-009, 0.82904321, -0.559197128, -1.998818e-009, 0.559197187, 0.82904309, 1.29788025e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part242,"","",Vector3.new(0, 0, 0),Vector3.new(0.165882945, 0.351193309, 0.502378047))
Part243=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part243",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part243Weld=weld(Part243,Handle,Part243,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.668179989, 0.715737224, -7.4505806e-009, 0.529923081, 0.848053634, 1.3668473e-009, -0.848053753, 0.529923022, 1.95230432e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part243,"","",Vector3.new(0, 0, 0),Vector3.new(0.208225414, 0.209719643, 0.401902407))
Part244=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part244",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part244Weld=weld(Part244,Handle,Part244,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.412837982, 0.555684566, -7.4505806e-009, 0.682002962, 0.731358409, 9.69217484e-010, -0.731358469, 0.682002902, 2.17724105e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part244,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.363646924, 0.502378047))
Part245=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part245",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part245Weld=weld(Part245,Handle,Part245,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.208413124, 0.778647423, -7.4505806e-009, 1.00000656, -5.02917921e-008, -9.3132857e-010, 5.40171072e-008, 1.00000644, 2.19371543e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part245,"","",Vector3.new(0, 0, 0),Vector3.new(0.366636127, 0.237117767, 0.398517549))
Part246=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part246",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part246Weld=weld(Part246,Handle,Part246,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.655540109, -0.0701057911, -7.4505806e-009, -0.0871563107, 0.996201098, 2.26653851e-009, -0.996201217, -0.0871563032, 7.36589456e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part246,"","",Vector3.new(0, 0, 0),Vector3.new(0.250567883, 0.271988034, 0.502378047))
Part247=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part247",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part247Weld=weld(Part247,Handle,Part247,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.770238161, 0.320348978, -7.4505806e-009, 2.25380475e-007, 1.00000644, 2.19371543e-009, -1.00000656, 2.21655142e-007, 9.31328903e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part247,"","",Vector3.new(0, 0, 0),Vector3.new(0.985334456, 0.0886700675, 0.0697405711))
Part248=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part248",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part248Weld=weld(Part248,Handle,Part248,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.628652215, -0.0663881302, -7.4505806e-009, -0.0871563628, 0.996201038, 2.26653851e-009, -0.996201158, -0.0871563554, 7.36589345e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part248,"","",Vector3.new(0, 0, 0),Vector3.new(0.0956442356, 0.271988034, 0.0996293947))
Part249=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part249",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part249Weld=weld(Part249,Handle,Part249,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.23388958, 1.15960348, -7.4505806e-009, 0.927189946, 0.374608785, -4.17327561e-011, -0.374608815, 0.927189827, 2.38285924e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part249,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.302374959, 0.502378047))
Part250=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part250",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part250Weld=weld(Part250,Handle,Part250,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00460100174, -0.00183439255, -7.4505806e-009, 2.10479314e-007, 1.00000644, 2.19371543e-009, -1.00000656, 2.06753981e-007, 9.31328792e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part250,"","",Vector3.new(0, 0, 0),Vector3.new(0.0891683325, 0.668014586, 0.298888177))
Part251=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part251",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part251Weld=weld(Part251,Handle,Part251,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.671212196, 0.724512339, -7.4505806e-009, 0.529922843, 0.848053336, 1.36684708e-009, -0.848053455, 0.529922783, 1.95230365e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part251,"","",Vector3.new(0, 0, 0),Vector3.new(0.238612384, 0.122045882, 0.0697405711))
Part252=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part252",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part252Weld=weld(Part252,Handle,Part252,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41766572, 0.911396503, -7.4505806e-009, 0.970301867, -0.241923392, -1.43437151e-009, 0.241923422, 0.970301747, 1.90324378e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part252,"","",Vector3.new(0, 0, 0),Vector3.new(0.157912597, 0.494161308, 0.502378047))
Part253=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part253",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part253Weld=weld(Part253,Handle,Part253,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.334401131, 0.688645005, -7.4505806e-009, 0.788015723, 0.615665138, 6.16689144e-010, -0.615665197, 0.788015604, 2.30205388e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part253,"","",Vector3.new(0, 0, 0),Vector3.new(0.207229167, 0.318315595, 0.502378047))
Part254=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part254",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part254Weld=weld(Part254,Handle,Part254,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.563123941, -0.137734413, -7.4505806e-009, -0.0174527764, 0.999853551, 2.2096347e-009, -0.999853671, -0.0174527783, 8.92899865e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part254,"","",Vector3.new(0, 0, 0),Vector3.new(0.160403326, 0.0448332205, 0.0996293947))
Part255=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part255",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part255Weld=weld(Part255,Handle,Part255,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.670072079, 0.714097738, -7.4505806e-009, 0.529922545, 0.848052859, 1.36684652e-009, -0.848052979, 0.529922485, 1.95230276e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part255,"","",Vector3.new(0, 0, 0),Vector3.new(0.22715497, 0.105607025, 0.401902407))
Part256=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part256",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part256Weld=weld(Part256,Handle,Part256,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19833565, -0.0208642483, -7.4505806e-009, -9.12699676e-008, -1.00000572, -2.19371432e-009, 1.00000584, -8.75446489e-008, -9.31327904e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part256,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.302872986, 0.502378047))
Part257=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part257",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part257Weld=weld(Part257,Handle,Part257,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.682151318, -0.849224687, -7.4505806e-009, -0.848053098, -0.529922187, -3.72680581e-010, 0.529922247, -0.848052979, -2.35390374e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part257,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.302872986, 0.502378047))
Part258=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part258",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part258Weld=weld(Part258,Handle,Part258,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.821699977, 0.666182041, -7.4505806e-009, 0.694662392, -0.719343901, -2.22498064e-009, 0.71934396, 0.694662333, 8.53941029e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part258,"","",Vector3.new(0, 0, 0),Vector3.new(0.13848491, 0.147451371, 0.398517549))
Part259=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part259",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part259Weld=weld(Part259,Handle,Part259,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.64446068, -0.169597864, -7.4505806e-009, -7.63688064e-008, -1.00000572, -2.19371432e-009, 1.00000584, -7.26434877e-008, -9.31327904e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part259,"","",Vector3.new(0, 0, 0),Vector3.new(0.393037915, 0.873250723, 0.468886167))
Part260=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part260",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part260Weld=weld(Part260,Handle,Part260,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03465331, -0.0962946415, -7.4505806e-009, 0.173648939, -0.984813392, -2.32211006e-009, 0.984813511, 0.173648924, -5.36244826e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part260,"","",Vector3.new(0, 0, 0),Vector3.new(0.218686491, 0.250069588, 0.502378047))
Part261=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part261",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part261Weld=weld(Part261,Handle,Part261,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.585499048, 0.351150155, -7.4505806e-009, 0.406738937, 0.913550615, 1.6252526e-009, -0.913550735, 0.406738877, 1.74307391e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part261,"","",Vector3.new(0, 0, 0),Vector3.new(0.190790281, 0.385067284, 0.502378047))
Part262=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part262",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part262Weld=weld(Part262,Handle,Part262,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.673215389, 0.725048065, -7.4505806e-009, 0.529922307, 0.848052561, 1.36684597e-009, -0.84805268, 0.529922247, 1.95230188e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part262,"","",Vector3.new(0, 0, 0),Vector3.new(0.258538246, 0.0567886569, 0.0697405711))
Part263=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part263",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part263Weld=weld(Part263,Handle,Part263,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.735319138, 0.256067514, -7.4505806e-009, 1.21072276e-007, 1.00000536, 2.19371366e-009, -1.00000548, 1.17346957e-007, 9.31327904e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part263,"","",Vector3.new(0, 0, 0),Vector3.new(0.22366792, 0.59976846, 0.334918678))
Part264=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part264",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part264Weld=weld(Part264,Handle,Part264,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00880468, -0.699691772, -7.4505806e-009, -0.788015127, 0.615664721, 2.08448103e-009, -0.61566478, -0.788015008, -1.15528753e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part264,"","",Vector3.new(0, 0, 0),Vector3.new(0.155421853, 0.302374959, 0.502378047))
Part265=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part265",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part265Weld=weld(Part265,Handle,Part265,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.878646135, -0.710774183, -7.4505806e-009, -0.694662094, -0.719343603, -9.31071054e-010, 0.719343662, -0.694662035, -2.19382246e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part265,"","",Vector3.new(0, 0, 0),Vector3.new(0.175347716, 0.302872986, 0.502378047))
Part266=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part266",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part266Weld=weld(Part266,Handle,Part266,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.625392199, 0.136258125, -7.4505806e-009, 0.66913408, -0.743148744, -2.25342633e-009, 0.743148804, 0.669134021, 7.75769449e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part266,"","",Vector3.new(0, 0, 0),Vector3.new(0.34372136, 0.135495871, 0.502378047))
Part267=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part267",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part267Weld=weld(Part267,Handle,Part267,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.01338148, -0.585379601, -7.4505806e-009, -0.544641912, -0.838674903, -1.3325655e-009, 0.838675022, -0.544641852, -1.97585859e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part267,"","",Vector3.new(0, 0, 0),Vector3.new(0.180329189, 0.302872986, 0.502378047))
Part268=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part268",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part268Weld=weld(Part268,Handle,Part268,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0609893799, -0.847710848, -7.4505806e-009, -0.970300794, 0.241923183, 1.43437018e-009, -0.241923213, -0.970300674, -1.90324179e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part268,"","",Vector3.new(0, 0, 0),Vector3.new(0.183816239, 0.583329618, 0.224166155))
Part269=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part269",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part269Weld=weld(Part269,Handle,Part269,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389924765, 0.909199953, -7.4505806e-009, 0.970300674, -0.241923064, -1.43436973e-009, 0.241923094, 0.970300555, 1.90324156e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part269,"","",Vector3.new(0, 0, 0),Vector3.new(0.157912597, 0.585322082, 0.224166155))
Part270=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part270",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part270Weld=weld(Part270,Handle,Part270,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.365391254, 0.664435267, -7.4505806e-009, 0.78801471, 0.615664423, 6.16688478e-010, -0.615664482, 0.788014591, 2.30205099e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part270,"","",Vector3.new(0, 0, 0),Vector3.new(0.207229167, 0.318315595, 0.0199258793))
Part271=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part271",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part271Weld=weld(Part271,Handle,Part271,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.92757082, 0.00245285034, -7.4505806e-009, 5.40170007e-008, 1.00000477, 2.19371232e-009, -1.00000489, 5.02916961e-008, 9.31327016e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part271,"","",Vector3.new(0, 0, 0),Vector3.new(0.155920014, 0.959928453, 0.298888177))
Part272=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part272",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part272Weld=weld(Part272,Handle,Part272,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.19463706, -0.938186526, -7.4505806e-009, -0.999852538, -0.0174526293, 8.92899199e-010, 0.0174526274, -0.999852419, -2.20963203e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part272,"","",Vector3.new(0, 0, 0),Vector3.new(0.143964469, 0.383572757, 0.502378047))
Part273=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part273",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part273Weld=weld(Part273,Handle,Part273,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.559409618, 0.861050606, -7.4505806e-009, 0.89101088, -0.453992486, -1.82574245e-009, 0.453992546, 0.891010761, 1.53179847e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part273,"","",Vector3.new(0, 0, 0),Vector3.new(0.178834796, 0.302873105, 0.398517549))
Part274=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part274",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part274Weld=weld(Part274,Handle,Part274,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.416546822, 0.724273682, -7.4505806e-009, 1.00000465, 6.1467027e-008, -9.31326571e-010, -5.77417367e-008, 1.00000453, 2.19371188e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part274,"","",Vector3.new(0, 0, 0),Vector3.new(0.13200894, 0.0622683205, 0.502378047))
Part275=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part275",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part275Weld=weld(Part275,Handle,Part275,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127333164, -0.232394218, -7.4505806e-009, 0.587787986, -0.809020698, -2.32217023e-009, 0.809020817, 0.587787926, 5.35972267e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part275,"","",Vector3.new(0, 0, 0),Vector3.new(0.555433691, 0.103116363, 0.502378047))
Part276=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part276",Vector3.new(0.200000003, 0.242015928, 0.200000003))
Part276Weld=weld(Part276,Handle,Part276,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.80625248, 2.17549253, -7.4505806e-009, 0.927188218, -0.374608278, -1.68529013e-009, 0.374608308, 0.927188098, 1.68509295e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part276,"","",Vector3.new(0, 0, 0),Vector3.new(0.488859594, 1, 0.502378047))
Part277=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part277",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part277Weld=weld(Part277,Handle,Part277,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04848909, 0.18512702, -7.4505806e-009, 0.241923168, -0.970300019, -2.35385755e-009, 0.970300138, 0.241923138, -3.72955167e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part277,"","",Vector3.new(0, 0, 0),Vector3.new(0.145458937, 0.125034764, 0.398517549))
Part278=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part278",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part278Weld=weld(Part278,Handle,Part278,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.807053566, 0.261605501, -7.4505806e-009, 3.16660298e-008, 1.00000441, 2.19371143e-009, -1.00000453, 2.79407288e-008, 9.31326793e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part278,"","",Vector3.new(0, 0, 0),Vector3.new(0.12902005, 0.544474185, 0.0697405711))
Part279=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part279",Vector3.new(0.200000003, 0.267006606, 0.200000003))
Part279Weld=weld(Part279,Handle,Part279,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00149035454, 1.29323971, -7.4505806e-009, 1.00000453, 1.50874001e-007, -9.31326349e-010, -1.47148725e-007, 1.00000441, 2.19371166e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part279,"","",Vector3.new(0, 0, 0),Vector3.new(0.864762425, 1, 0.298888177))
Part280=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part280",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part280Weld=weld(Part280,Handle,Part280,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.344216824, 0.70050025, -7.4505806e-009, 0.788014293, 0.615664184, 6.16688201e-010, -0.615664244, 0.788014174, 2.30205011e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part280,"","",Vector3.new(0, 0, 0),Vector3.new(0.109094203, 0.436874479, 0.502378047))
Part281=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part281",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part281Weld=weld(Part281,Handle,Part281,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.95374918, 0.653577566, -7.4505806e-009, 0.642790437, -0.766047597, -2.27912533e-009, 0.766047716, 0.642790377, 6.96652958e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part281,"","",Vector3.new(0, 0, 0),Vector3.new(0.204738379, 0.302872986, 0.502378047))
Part282=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part282",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part282Weld=weld(Part282,Handle,Part282,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.563126564, -0.137735605, -7.4505806e-009, -0.0174528807, 0.999851644, 2.2096307e-009, -0.999851763, -0.0174528826, 8.928982e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part282,"","",Vector3.new(0, 0, 0),Vector3.new(0.160403326, 0.0448332205, 0.0996293947))
Part283=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part283",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part283Weld=weld(Part283,Handle,Part283,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14830422, -0.265413046, -7.4505806e-009, -0.241922766, -0.970299482, -1.90323979e-009, 0.970299602, -0.241922736, -1.4343684e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part283,"","",Vector3.new(0, 0, 0),Vector3.new(0.255051225, 0.302872986, 0.502378047))
Part284=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part284",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part284Weld=weld(Part284,Handle,Part284,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595298052, 0.852116704, -7.4505806e-009, 0.866028786, 0.500001907, 2.90302976e-010, -0.500001967, 0.866028607, 2.36547182e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part284,"","",Vector3.new(0, 0, 0),Vector3.new(0.156418189, 0.322300851, 0.398517549))
Part285=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part285",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part285Weld=weld(Part285,Handle,Part285,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0785679817, -0.828229666, -7.4505806e-009, -0.956308365, 0.292372644, 1.53201007e-009, -0.292372674, -0.956308246, -1.82556192e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part285,"","",Vector3.new(0, 0, 0),Vector3.new(0.161399618, 0.383572757, 0.502378047))
Part286=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part286",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part286Weld=weld(Part286,Handle,Part286,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.761985302, 0.381966114, -7.4505806e-009, 9.12698255e-008, 1.00000346, 2.19370944e-009, -1.00000358, 8.7544521e-008, 9.31326238e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part286,"","",Vector3.new(0, 0, 0),Vector3.new(0.108596027, 0.0622683205, 0.502378047))
Part287=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part287",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part287Weld=weld(Part287,Handle,Part287,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.360297441, 0.697300911, -7.4505806e-009, 0.829040587, -0.559194863, -1.99881112e-009, 0.559194922, 0.829040468, 1.29787681e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part287,"","",Vector3.new(0, 0, 0),Vector3.new(0.10610535, 0.301876873, 0.398517549))
Part288=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part288",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part288Weld=weld(Part288,Handle,Part288,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.629263878, -0.837504268, -7.4505806e-009, -0.866028607, -0.500001729, -2.90302726e-010, 0.500001788, -0.866028428, -2.36547115e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part288,"","",Vector3.new(0, 0, 0),Vector3.new(0.183816239, 0.583329618, 0.224166155))
Part289=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part289",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part289Weld=weld(Part289,Handle,Part289,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.352216601, -0.611831188, -7.4505806e-009, -0.882950902, 0.469472945, 1.85219584e-009, -0.469473004, -0.882950783, -1.49969981e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part289,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.411967248, 0.398517549))
Part290=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part290",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part290Weld=weld(Part290,Handle,Part290,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.830467701, 0.347772121, -7.4505806e-009, 3.16658024e-008, 1.00000346, 2.19370921e-009, -1.00000358, 2.79405015e-008, 9.31326016e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part290,"","",Vector3.new(0, 0, 0),Vector3.new(0.460785925, 0.661040485, 0.502378047))
Part291=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part291",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part291Weld=weld(Part291,Handle,Part291,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.325302124, -0.00248265266, -7.4505806e-009, 3.16658024e-008, 1.00000346, 2.19370921e-009, -1.00000358, 2.79405015e-008, 9.31326016e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part291,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part292=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part292",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part292Weld=weld(Part292,Handle,Part292,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.268137932, 0.680360794, -7.4505806e-009, 1.00000358, 1.50874058e-007, -9.31325683e-010, -1.47148782e-007, 1.00000346, 2.19370966e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part292,"","",Vector3.new(0, 0, 0),Vector3.new(0.354182422, 0.181823477, 0.502378047))
Part293=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part293",Vector3.new(0.200000003, 0.279559851, 0.200000003))
Part293Weld=weld(Part293,Handle,Part293,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0846049786, 0.910661459, -7.4505806e-009, 1.00000358, 1.50874058e-007, -9.31325683e-010, -1.47148782e-007, 1.00000346, 2.19370966e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part293,"","",Vector3.new(0, 0, 0),Vector3.new(0.268003047, 1, 0.398517549))
Part294=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part294",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part294Weld=weld(Part294,Handle,Part294,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.479674339, 0.514369845, -7.4505806e-009, 0.754712105, 0.65606159, 7.36323114e-010, -0.656061649, 0.754711986, 2.266618e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part294,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.45929116, 0.398517549))
Part295=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part295",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part295Weld=weld(Part295,Handle,Part295,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.652735472, -0.00248265266, -7.4505806e-009, 9.12702376e-008, 1.00000346, 2.19370921e-009, -1.00000358, 8.75449331e-008, 9.31326127e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part295,"","",Vector3.new(0, 0, 0),Vector3.new(0.303869635, 0.674490452, 0.298888177))
Part296=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part296",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part296Weld=weld(Part296,Handle,Part296,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17233205, -0.0177657604, -7.4505806e-009, 2.79394783e-008, -1.00000346, -2.19370921e-009, 1.00000358, 3.16647686e-008, -9.31325794e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part296,"","",Vector3.new(0, 0, 0),Vector3.new(0.262025297, 0.302872986, 0.502378047))
Part297=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part297",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part297Weld=weld(Part297,Handle,Part297,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.607620239, -0.912122011, -7.4505806e-009, -0.898797214, -0.438372731, -1.24588839e-010, 0.438372791, -0.898797095, -2.37995934e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part297,"","",Vector3.new(0, 0, 0),Vector3.new(0.160901472, 0.383572757, 0.502378047))
Part298=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part298",Vector3.new(0.200000003, 0.495257318, 0.200000003))
Part298Weld=weld(Part298,Handle,Part298,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.284174442, 0.29957509, -7.4505806e-009, 1.00000358, 1.06170575e-007, -9.31325683e-010, -1.02445284e-007, 1.00000346, 2.19370944e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part298,"","",Vector3.new(0, 0, 0),Vector3.new(0.193779126, 1, 0.502378047))
Part299=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part299",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part299Weld=weld(Part299,Handle,Part299,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.120177507, 0.90383625, -7.4505806e-009, 1.00000358, 1.06170575e-007, -9.31325683e-010, -1.02445284e-007, 1.00000346, 2.19370944e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part299,"","",Vector3.new(0, 0, 0),Vector3.new(0.10610535, 0.528533459, 0.398517549))
Part300=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part300",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part300Weld=weld(Part300,Handle,Part300,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.12491536, -0.25546217, -7.4505806e-009, -0.241922677, -0.970299006, -1.90323846e-009, 0.970299125, -0.241922647, -1.43436762e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part300,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.302872986, 0.502378047))
Part301=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part301",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part301Weld=weld(Part301,Handle,Part301,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457956314, 0.448396325, -7.4505806e-009, 0.809019625, 0.58778733, 5.35971822e-010, -0.58778739, 0.809019506, 2.32216713e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part301,"","",Vector3.new(0, 0, 0),Vector3.new(0.339736223, 0.56290561, 0.502378047))
Part302=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part302",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part302Weld=weld(Part302,Handle,Part302,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.08231378, 0.159323931, -7.4505806e-009, 0.224951848, -0.974373102, -2.34698661e-009, 0.974373221, 0.224951819, -4.13978685e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part302,"","",Vector3.new(0, 0, 0),Vector3.new(0.161897764, 0.331765532, 0.224166155))
Part303=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part303",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part303Weld=weld(Part303,Handle,Part303,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299687386, 0.943826556, -7.4505806e-009, 0.981630325, 0.190809697, -4.95634978e-010, -0.190809727, 0.981630206, 2.33110908e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part303,"","",Vector3.new(0, 0, 0),Vector3.new(0.10610535, 0.295899063, 0.398517549))
Part304=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part304",Vector3.new(0.200000003, 0.330669701, 0.200000003))
Part304Weld=weld(Part304,Handle,Part304,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0392456055, -0.934696317, -7.4505806e-009, -1.0000031, -6.14671194e-008, 9.31325461e-010, 5.77418291e-008, -1.00000298, -2.19370833e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part304,"","",Vector3.new(0, 0, 0),Vector3.new(0.207229167, 1, 0.224166155))
Part305=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part305",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part305Weld=weld(Part305,Handle,Part305,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.109897375, -0.905514479, -7.4505806e-009, -0.996197701, 0.0871558264, 1.11897536e-009, -0.0871558338, -0.996197581, -2.10419016e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part305,"","",Vector3.new(0, 0, 0),Vector3.new(0.165384784, 0.383572757, 0.502378047))
Part306=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part306",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part306Weld=weld(Part306,Handle,Part306,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0763065815, 0.799093008, -7.4505806e-009, 1.00000298, 1.50874087e-007, -9.31325017e-010, -1.47148825e-007, 1.00000286, 2.1937081e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part306,"","",Vector3.new(0, 0, 0),Vector3.new(0.175845906, 0.301876873, 0.398517549))
Part307=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part307",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part307Weld=weld(Part307,Handle,Part307,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.604601383, -0.460192442, -7.4505806e-009, -0.529920936, 0.848050475, 2.35389708e-009, -0.848050594, -0.529920876, -3.72679693e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part307,"","",Vector3.new(0, 0, 0),Vector3.new(0.16289407, 0.017933324, 0.398517549))
Part308=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part308",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part308Weld=weld(Part308,Handle,Part308,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.313204765, -0.630918026, -7.4505806e-009, -0.829039991, 0.559194386, 1.99880934e-009, -0.559194446, -0.829039872, -1.29787581e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part308,"","",Vector3.new(0, 0, 0),Vector3.new(0.0458295532, 0.151436433, 0.0996293947))
Part309=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part309",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part309Weld=weld(Part309,Handle,Part309,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0745096207, 0.823693395, -7.4505806e-009, 0.961264312, 0.275638044, -2.90579394e-010, -0.275638074, 0.961264193, 2.36543496e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part309,"","",Vector3.new(0, 0, 0),Vector3.new(0.232634619, 0.585322082, 0.224166155))
Part310=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part310",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part310Weld=weld(Part310,Handle,Part310,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.758501053, 0.821876526, -7.4505806e-009, 0.819154203, -0.573577702, -2.02115502e-009, 0.573577762, 0.819154084, 1.26279387e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part310,"","",Vector3.new(0, 0, 0),Vector3.new(0.204240248, 0.341230303, 0.502378047))
Part311=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part311",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part311Weld=weld(Part311,Handle,Part311,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0944240093, -0.903500319, -7.4505806e-009, -0.996197104, 0.0871558785, 1.11897469e-009, -0.087155886, -0.996196985, -2.10418882e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part311,"","",Vector3.new(0, 0, 0),Vector3.new(0.0896664709, 0.383572757, 0.502378047))
Part312=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part312",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part312Weld=weld(Part312,Handle,Part312,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.588173628, -0.481012821, -7.4505806e-009, -0.559194207, 0.829039454, 2.3394553e-009, -0.829039574, -0.559194148, -4.54602106e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part312,"","",Vector3.new(0, 0, 0),Vector3.new(0.16289407, 0.017933324, 0.0199258793))
Part313=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part313",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part313Weld=weld(Part313,Handle,Part313,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.842730403, -0.108754158, -7.4505806e-009, 0.39073199, -0.920506835, -2.38321496e-009, 0.920506954, 0.390731931, -1.39444012e-013, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part313,"","",Vector3.new(0, 0, 0),Vector3.new(0.13200894, 0.0622683205, 0.502378047))
Part314=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part314",Vector3.new(0.200000003, 0.347805917, 0.200000003))
Part314Weld=weld(Part314,Handle,Part314,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0627579689, 3.00564528, -7.4505806e-009, 0.997566223, -0.06975656, -1.08208087e-009, 0.0697565675, 0.997566104, 2.12339657e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part314,"","",Vector3.new(0, 0, 0),Vector3.new(0.104610927, 1, 0.502378047))
Part315=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part315",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part315Weld=weld(Part315,Handle,Part315,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.148997784, -0.894375324, -7.4505806e-009, -1.00000203, 5.77421098e-008, 9.31324351e-010, -6.14674036e-008, -1.00000191, -2.19370588e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part315,"","",Vector3.new(0, 0, 0),Vector3.new(0.183816239, 0.583329618, 0.224166155))
Part316=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part316",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part316Weld=weld(Part316,Handle,Part316,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.290135026, -0.669423103, -7.4505806e-009, -0.829039037, 0.55919385, 1.99880712e-009, -0.559193909, -0.829038918, -1.29787447e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part316,"","",Vector3.new(0, 0, 0),Vector3.new(0.270493805, 0.151436433, 0.502378047))
Part317=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part317",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part317Weld=weld(Part317,Handle,Part317,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.76067066, -0.188914299, -7.4505806e-009, -3.9115637e-008, -1.00000155, -2.19370522e-009, 1.00000167, -3.53903467e-008, -9.31324129e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part317,"","",Vector3.new(0, 0, 0),Vector3.new(0.858750641, 0.669010639, 0.502378047))
Part318=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part318",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part318Weld=weld(Part318,Handle,Part318,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0525820255, 2.68279457, -7.4505806e-009, 0.997565746, -0.0697565302, -1.08208043e-009, 0.0697565377, 0.997565627, 2.12339568e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part318,"","",Vector3.new(0, 0, 0),Vector3.new(0.329773307, 0.489678085, 0.0996293947))
Part319=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part319",Vector3.new(0.200000003, 0.350794792, 0.200000003))
Part319Weld=weld(Part319,Handle,Part319,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.87679493, -0.000719547272, -7.4505806e-009, -3.16650564e-008, -1.00000155, -2.19370522e-009, 1.00000167, -2.79397661e-008, -9.31324018e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part319,"","",Vector3.new(0, 0, 0),Vector3.new(0.701889038, 1, 0.502378047))
Part320=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part320",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part320Weld=weld(Part320,Handle,Part320,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.342916727, -0.955925703, -7.4505806e-009, -0.984809399, -0.173648477, 5.36242051e-010, 0.173648492, -0.984809279, -2.32210073e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part320,"","",Vector3.new(0, 0, 0),Vector3.new(0.148447812, 0.383572757, 0.502378047))
Part321=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part321",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part321Weld=weld(Part321,Handle,Part321,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.135989428, -0.00248360634, -7.4505806e-009, 1.50874371e-007, 1.00000155, 2.19370522e-009, -1.00000167, 1.47149052e-007, 9.31324351e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part321,"","",Vector3.new(0, 0, 0),Vector3.new(0.985832632, 0.674490452, 0.298888177))
Part322=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part322",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part322Weld=weld(Part322,Handle,Part322,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.477113247, 0.60330224, -7.4505806e-009, 0.838671863, -0.544639885, -1.97585148e-009, 0.544639945, 0.838671744, 1.33256051e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part322,"","",Vector3.new(0, 0, 0),Vector3.new(0.0926553831, 0.124536656, 0.398517549))
Part323=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part323",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part323Weld=weld(Part323,Handle,Part323,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.446990848, -0.571504116, -7.4505806e-009, -0.838671744, 0.544639826, 1.97585126e-009, -0.544639885, -0.838671625, -1.33256028e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part323,"","",Vector3.new(0, 0, 0),Vector3.new(0.207229167, 0.645597875, 0.224166155))
Part324=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part324",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part324Weld=weld(Part324,Handle,Part324,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.285832644, -0.00248384476, -7.4505806e-009, 1.2107202e-007, 1.00000131, 2.19370477e-009, -1.00000143, 1.17346715e-007, 9.31324018e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part324,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part325=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part325",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part325Weld=weld(Part325,Handle,Part325,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.596968889, 0.862890244, -7.4505806e-009, 0.891007841, -0.453991026, -1.82573645e-009, 0.453991085, 0.891007721, 1.53179314e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part325,"","",Vector3.new(0, 0, 0),Vector3.new(0.210218042, 0.486190945, 0.224166155))
Part326=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part326",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part326Weld=weld(Part326,Handle,Part326,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.424161911, 0.652484536, -7.4505806e-009, 0.766045392, 0.64278841, 6.96650848e-010, -0.64278847, 0.766045272, 2.27911823e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part326,"","",Vector3.new(0, 0, 0),Vector3.new(0.145957112, 0.295899063, 0.398517549))
Part327=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part327",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part327Weld=weld(Part327,Handle,Part327,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.437435627, -0.601824284, -7.4505806e-009, -0.848049045, -0.529919803, -3.72678971e-010, 0.529919863, -0.848048925, -2.35389241e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part327,"","",Vector3.new(0, 0, 0),Vector3.new(0.207229167, 0.583329618, 0.224166155))
Part328=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part328",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part328Weld=weld(Part328,Handle,Part328,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.446637154, -0.00248408318, -7.4505806e-009, 3.16651914e-008, 1.00000095, 2.19370344e-009, -1.00000107, 2.79399046e-008, 9.31323463e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part328,"","",Vector3.new(0, 0, 0),Vector3.new(0.278464109, 0.674490452, 0.298888177))
Part329=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part329",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part329Weld=weld(Part329,Handle,Part329,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.268135309, 0.529026031, -7.4505806e-009, 1.00000107, 1.508742e-007, -9.31323019e-010, -1.47148938e-007, 1.00000095, 2.19370389e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part329,"","",Vector3.new(0, 0, 0),Vector3.new(0.354182422, 0.181823477, 0.0996293947))
Part330=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Silver flip/flop","Part330",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part330Weld=weld(Part330,Handle,Part330,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16181159, -0.790668011, -7.4505806e-009, -0.920505762, 0.390731186, 1.71443526e-009, -0.390731245, -0.920505643, -1.65541791e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part330,"","",Vector3.new(0, 0, 0),Vector3.new(0.158908889, 0.326784015, 0.0996293947))
Part331=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part331",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part331Weld=weld(Part331,Handle,Part331,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.643077254, 0.273182869, -7.4505806e-009, 0.6691311, -0.743145227, -2.25341568e-009, 0.743145287, 0.669131041, 7.75765896e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part331,"","",Vector3.new(0, 0, 0),Vector3.new(0.314828813, 0.135495871, 0.502378047))
Part332=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Medium stone grey","Part332",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part332Weld=weld(Part332,Handle,Part332,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.598816395, -0.207920074, -7.4505806e-009, -1.86263094e-009, -1.0000006, -2.193703e-009, 1.00000072, 1.86265225e-009, -9.31323241e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part332,"","",Vector3.new(0, 0, 0),Vector3.new(0.455306202, 0.116566278, 0.502378047))
Part333=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Tr. Brown","Part333",Vector3.new(0.200000003, 0.420834213, 0.200000003))
Part333Weld=weld(Part333,Handle,Part333,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0388491154, -0.979781866, -7.4505806e-009, -1.0000006, -3.16649889e-008, 9.31323019e-010, 2.79397128e-008, -1.00000048, -2.19370255e-009, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part333,"","",Vector3.new(0, 0, 0),Vector3.new(0.207229167, 1, 0.224166155))
Part334=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Really black","Part334",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part334Weld=weld(Part334,Handle,Part334,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775026083, 0.272350311, -7.4505806e-009, 6.14673112e-008, 1.00000036, 2.19370255e-009, -1.00000048, 5.77420209e-008, 9.31323019e-010, -9.31322575e-010, 2.24099495e-009, 1))
mesh("BlockMesh",Part334,"","",Vector3.new(0, 0, 0),Vector3.new(0.937512338, 0.568385184, 0.334918678))
Part335=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part335",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part335Weld=weld(Part335,Handle,Part335,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.351453304, -0.877690554, 7.4505806e-009, 0.927183986, 0.37460655, -7.33343664e-011, -0.37460658, 0.927183867, 1.06155862e-009, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part335,"","",Vector3.new(0, 0, 0),Vector3.new(0.379089862, 0.187303349, 0.00996293966))
Part336=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part336",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part336Weld=weld(Part336,Handle,Part336,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.126279354, -0.03545928, 7.4505806e-009, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part336,"","",Vector3.new(0, 0, 0),Vector3.new(0.373610139, 0.388554364, 0.22416614))
Part337=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part337",Vector3.new(0.208325043, 0.200000003, 0.200000003))
Part337Weld=weld(Part337,Handle,Part337,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.975533724, 0.404926062, 0.00498200953, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part337,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.00996293128, 0.0199258775))
Part338=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part338",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part338Weld=weld(Part338,Handle,Part338,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.386527538, -0.894475937, 7.4505806e-009, 0.927183986, 0.37460655, -7.33343664e-011, -0.37460658, 0.927183867, 1.06155862e-009, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part338,"","",Vector3.new(0, 0, 0),Vector3.new(0.0283944737, 0.355178744, 0.0747220367))
Part339=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part339",Vector3.new(0.200000003, 0.227154836, 0.200000003))
Part339Weld=weld(Part339,Handle,Part339,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.67532778, -0.0399320126, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part339,"","",Vector3.new(0, 0, 0),Vector3.new(0.135994136, 1, 0.00996293966))
Part340=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part340",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part340Weld=weld(Part340,Handle,Part340,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.970550656, 0.356106043, 0.0019910112, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part340,"","",Vector3.new(0, 0, 0),Vector3.new(0.991810501, 0.398517251, 0.00996293966))
Part341=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part341",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part341Weld=weld(Part341,Handle,Part341,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.656567812, -0.150515079, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part341,"","",Vector3.new(0, 0, 0),Vector3.new(0.467261881, 0.344717473, 0.199258775))
Part342=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part342",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part342Weld=weld(Part342,Handle,Part342,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.989030123, -0.100373983, 7.4505806e-009, 0.173647955, -0.984807789, -1.02311382e-009, 0.984807909, 0.17364794, -2.92442459e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part342,"","",Vector3.new(0, 0, 0),Vector3.new(0.313832521, 0.294520676, 0.334918678))
Part343=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part343",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part343Weld=weld(Part343,Handle,Part343,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.390696406, -0.880530834, 7.4505806e-009, 0.920505166, -0.390731186, -8.02490574e-010, 0.390731245, 0.920505047, 6.98780256e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part343,"","",Vector3.new(0, 0, 0),Vector3.new(0.216195822, 0.382576793, 0.0747220367))
Part344=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part344",Vector3.new(0.200852811, 0.200000003, 0.200000003))
Part344Weld=weld(Part344,Handle,Part344,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.27158082, -0.14873004, 0.00189200789, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part344,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.523053885, 0.00996293966))
Part345=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part345",Vector3.new(0.400609761, 0.200000003, 0.200000003))
Part345Weld=weld(Part345,Handle,Part345,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298051596, 0.249737024, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part345,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.184812382, 0.199258775))
Part346=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part346",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part346Weld=weld(Part346,Handle,Part346,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0513570309, -0.802413225, 7.4505806e-009, 1.00000012, 1.86264515e-009, -4.65661232e-010, 1.86263804e-009, 1, 9.56788426e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part346,"","",Vector3.new(0, 0, 0),Vector3.new(0.146455243, 0.781094074, 0.186805084))
Part347=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part347",Vector3.new(0.208325043, 0.200000003, 0.200000003))
Part347Weld=weld(Part347,Handle,Part347,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.975533724, 0.364931107, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part347,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.48684749, 0.199258775))
Part348=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part348",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part348Weld=weld(Part348,Handle,Part348,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0417943001, -0.0354590416, 7.4505806e-009, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part348,"","",Vector3.new(0, 0, 0),Vector3.new(0.283943713, 0.388554364, 0.224166155))
Part349=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part349",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part349Weld=weld(Part349,Handle,Part349,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.752760649, 0.407451153, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part349,"","",Vector3.new(0, 0, 0),Vector3.new(0.212708861, 0.224664077, 0.00996293966))
Part350=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part350",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part350Weld=weld(Part350,Handle,Part350,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.970550656, 0.356106043, -0.00199498981, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part350,"","",Vector3.new(0, 0, 0),Vector3.new(0.991810501, 0.398517251, 0.0498146974))
Part351=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part351",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part351Weld=weld(Part351,Handle,Part351,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.615522623, 0.259273052, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part351,"","",Vector3.new(0, 0, 0),Vector3.new(0.731279612, 0.448331892, 0.199258775))
Part352=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part352",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part352Weld=weld(Part352,Handle,Part352,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0196766853, -0.0354590416, 7.4505806e-009, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part352,"","",Vector3.new(0, 0, 0),Vector3.new(0.158410743, 0.388554364, 0.224166155))
Part353=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part353",Vector3.new(0.200000003, 0.209620073, 0.200000003))
Part353Weld=weld(Part353,Handle,Part353,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.558434725, -0.273675203, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part353,"","",Vector3.new(0, 0, 0),Vector3.new(0.467261881, 1, 0.199258775))
Part354=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part354",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part354Weld=weld(Part354,Handle,Part354,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0470879078, -0.802414179, 7.4505806e-009, 1.00000012, 1.86264515e-009, -4.65661232e-010, 1.86263804e-009, 1, 9.56788426e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part354,"","",Vector3.new(0, 0, 0),Vector3.new(0.146455243, 0.781094074, 0.136990398))
Part355=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part355",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part355Weld=weld(Part355,Handle,Part355,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.69704878, -0.0248761177, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part355,"","",Vector3.new(0, 0, 0),Vector3.new(0.634141028, 0.98533392, 0.00996293966))
Part356=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part356",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part356Weld=weld(Part356,Handle,Part356,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.13434076, 0.239999056, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part356,"","",Vector3.new(0, 0, 0),Vector3.new(0.531522751, 0.931920409, 0.199258775))
Part357=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part357",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part357Weld=weld(Part357,Handle,Part357,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.31885576, 0.143950939, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part357,"","",Vector3.new(0, 0, 0),Vector3.new(0.531522751, 0.590303659, 0.199258775))
Part358=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part358",Vector3.new(0.200000003, 0.227154836, 0.200000003))
Part358Weld=weld(Part358,Handle,Part358,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.74237883, -0.0399320126, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part358,"","",Vector3.new(0, 0, 0),Vector3.new(0.135994136, 1, 0.00996293966))
Part359=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part359",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part359Weld=weld(Part359,Handle,Part359,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0513570309, -0.802413225, 7.4505806e-009, 1.00000012, 1.86264515e-009, -4.65661232e-010, 1.86263804e-009, 1, 9.56788426e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part359,"","",Vector3.new(0, 0, 0),Vector3.new(0.146455243, 0.781094074, 0.0249073487))
Part360=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part360",Vector3.new(0.208325043, 0.200000003, 0.200000003))
Part360Weld=weld(Part360,Handle,Part360,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.975533724, 0.404926062, -0.00199498981, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part360,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.00996293128, 0.0498146974))
Part361=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part361",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part361Weld=weld(Part361,Handle,Part361,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.970550656, 0.394945145, -0.00199498981, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part361,"","",Vector3.new(0, 0, 0),Vector3.new(0.991810501, 0.00996293128, 0.0498146974))
Part362=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part362",Vector3.new(0.208325043, 0.200000003, 0.200000003))
Part362Weld=weld(Part362,Handle,Part362,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.975533724, 0.356106043, 0.0019910112, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part362,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.398517251, 0.00996293966))
Part363=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part363",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part363Weld=weld(Part363,Handle,Part363,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603865623, 0.270167112, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part363,"","",Vector3.new(0, 0, 0),Vector3.new(0.467261881, 0.557426035, 0.199258775))
Part364=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part364",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part364Weld=weld(Part364,Handle,Part364,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07695472, 0.287465096, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part364,"","",Vector3.new(0, 0, 0),Vector3.new(0.615211427, 0.457298607, 0.199258775))
Part365=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part365",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part365Weld=weld(Part365,Handle,Part365,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.29837704, -5.28389502, -0.00598099083, -0.848048151, 0.529919446, 9.01923924e-010, -0.529919505, -0.848048031, -5.64639668e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part365,"","",Vector3.new(0, 0, 0),Vector3.new(0.407983124, 0.938508272, 0.149444088))
Part366=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part366",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part366Weld=weld(Part366,Handle,Part366,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.13458967, 0.316637993, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part366,"","",Vector3.new(0, 0, 0),Vector3.new(0.53401351, 0.448331892, 0.199258775))
Part367=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part367",Vector3.new(0.208325043, 0.200000003, 0.200000003))
Part367Weld=weld(Part367,Handle,Part367,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.975533724, 0.361093044, 0.00498200953, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part367,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.448331892, 0.0199258775))
Part368=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part368",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part368Weld=weld(Part368,Handle,Part368,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.755900621, 0.408434153, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part368,"","",Vector3.new(0, 0, 0),Vector3.new(0.303869724, 0.141971797, 0.00996293966))
Part369=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part369",Vector3.new(0.200852811, 0.200000003, 0.200000003))
Part369Weld=weld(Part369,Handle,Part369,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11715579, -0.14873004, 0.00189200789, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part369,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.523053885, 0.00996293966))
Part370=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part370",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part370Weld=weld(Part370,Handle,Part370,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14405465, 0.287094116, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part370,"","",Vector3.new(0, 0, 0),Vector3.new(0.628661454, 0.460785598, 0.199258775))
Part371=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part371",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part371Weld=weld(Part371,Handle,Part371,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.970550656, 0.400925159, -0.00199498981, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part371,"","",Vector3.new(0, 0, 0),Vector3.new(0.991810501, 0.0498146564, 0.0498146974))
Part372=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part372",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part372Weld=weld(Part372,Handle,Part372,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00374102592, -0.969168186, 7.4505806e-009, 1.00000012, 1.86264515e-009, -4.65661232e-010, 1.86263804e-009, 1, 9.56788426e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part372,"","",Vector3.new(0, 0, 0),Vector3.new(0.166381136, 0.382576793, 0.0747220367))
Part373=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part373",Vector3.new(0.208325043, 0.200000003, 0.200000003))
Part373Weld=weld(Part373,Handle,Part373,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.975533724, 0.394945145, 0.0019910112, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part373,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.00996293128, 0.00996293966))
Part374=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part374",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part374Weld=weld(Part374,Handle,Part374,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08796465, 0.277851105, -0.00598099083, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part374,"","",Vector3.new(0, 0, 0),Vector3.new(0.505120993, 0.553440869, 0.199258775))
Part375=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Neon,0,0,Torso.BrickColor.Color,"Part375",Vector3.new(0.208325043, 0.200000003, 0.200000003))
Part375Weld=weld(Part375,Handle,Part375,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.975533724, 0.400925159, 0.0019910112, 1.80676594e-007, 1, 9.56788426e-010, -1.00000012, 1.76951289e-007, 4.65661398e-010, -4.65661287e-010, 1.28420652e-009, 1))
mesh("BlockMesh",Part375,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0498146564, 0.00996293966))
local HitBox=part(Enum.FormFactor.Custom,Handle,Enum.Material.Granite,0,1,"Really black","HitBox",Vector3.new(6.5, 0.400000006, 0.600000024))
local HitBoxWeld=weld(HitBox,Handle,HitBox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.90301371, -0.0415103585, -0.0220053196, 0.0094097089, -0.999913454, -0.00919221248, 0.00555473426, -0.0091402065, 0.99994278, -0.999940455, -0.00946023501, 0.00546824746))
local TrailBox=part(Enum.FormFactor.Brick,ModelPlace,Enum.Material.Plastic,0,0,"Mid gray","TrailBox",Vector3.new(0.200000003, 4.85712814, 0.200000003))
local TrailBoxWeld=weld(TrailBox,Handle,TrailBox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.096124649, 4.34275723, -7.4505806e-009, 1.00000012, -4.15365861e-007, -9.31323019e-010, 4.1909118e-007, 1, 2.19370122e-009, -3.60822483e-016, 4.72935024e-011, 1))
mesh("BlockMesh",TrailBox,"","",Vector3.new(0, 0, 0),Vector3.new(0.78258878, 1, 0.468886167))

local HandleWeld=weld(Handle,RightArm,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFA(-90,30,90)*cf(0,1,0))
local Old_H = HandleWeld.C0

HandleWeld:remove()
local HandleWeld=weld(Handle,Torso,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFA(0,180,-45)*cf(2.25,-2.5,-0.5))

local TrailBox=ModelPlace.TrailBox

for i=0,1,0.05 do
swait(1)
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 1-i
end
end
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 0
end

local function Lerp(a,b,t)
return a:lerp(b,t)
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

local function Triangle(a, b, c)
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
    local w1 = Instance.new("WedgePart", DerbisPlace)
    w1.Name = "Triangle"
    w1.FormFactor = "Custom"
    w1.BrickColor = Torso.BrickColor
    w1.Reflectance = 0
    w1.Material = "Neon"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFA(math.deg(math.pi),0,math.deg(math.pi / 2)) * cf(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", DerbisPlace)
      w2.Name = "Triangle"
      w2.FormFactor = "Custom"
      w2.BrickColor = Torso.BrickColor
      w2.Reflectance = 0
      w2.Material = "Neon"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.01})
      w2.CFrame = maincf * CFA(math.deg(math.pi), math.deg(math.pi), math.deg(-math.pi / 2)) * cf(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
      return unpack(list)
end

local function Trail(Origin, Start, Size)
if Start == 0 then
scfr = nil	
end
if scfr and (Origin.p-scfr.p).magnitude > .1 then
local h = 0
if Size == nil then
h = 12.5
else
h = Size
end
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(Origin*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((Origin*CFrame.new(0,h/2,0)).p,(Origin*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = Origin
elseif not scfr then
scfr = Origin
end	
end

local function ShowDamage(hit, Text)
	local Rate = (1 / 30)
	local Text = (Text or "")
	local EffectPart = part("Custom",DerbisPlace,Enum.Material.Neon,0,1,Torso.BrickColor.Color,"Effect",Vector3.new(0,0,0))
	EffectPart.Anchored = true
	EffectPart.CFrame = cf(hit.Parent.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Torso.BrickColor.Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (1.5 + 0.1))
	EffectPart.Parent = DerbisPlace
	delay(0, function()
		local Frames = (1.5 / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = cf(EffectPart.Position + Vector3.new(0, Percent, 0))
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:remove()
		end
	end)
end

local function Damagefunc(hit, minim, maxim)
  if hit.Parent == nil or Dam == true then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    local c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    minim = minim
    maxim = maxim
    local Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
	Damage = Damage+(math.random(-25,25)/100)
if Sight == true then
	Damage = Damage+(math.random(10,20)/100)
end
h:TakeDamage(Damage)
Dam = true
coroutine.resume(coroutine.create(function()
swait(25)
Dam = false
end))
if hit.Parent:FindFirstChild("Head") ~= nil then
ShowDamage(hit, Damage)
end 
  end
end

local function MagniDamage(Part,mind,maxd,dis)
	if dis == nil then
		dis = 25
	end
	for _,c in pairs(workspace:children()) do
		local hum=c:findFirstChild("Humanoid")
		if hum~=nil then
			local head=c:findFirstChild("Torso")
			if head~=nil then
				local targ=head.Position-Part.Position
				local mag=targ.magnitude
					if mag<=dis and c.Name~=Character.Name then 
						Damagefunc(hum.Parent.Torso,mind,maxd)
					end
			end
		end
	end
end

	
local Old_W = Humanoid.WalkSpeed
local Old_J = Humanoid.JumpPower
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
swait(100)
Character.Animate.Disabled = true
Humanoid.WalkSpeed = Old_W
Humanoid.JumpPower = Old_J

RSH=Character.Torso["Right Shoulder"] 
LSH=Character.Torso["Left Shoulder"] 
RSH2=Character.Torso["Right Hip"] 
LSH2=Character.Torso["Left Hip"] 
NEH=Character.Torso["Neck"] 
ROH=Character.HumanoidRootPart["RootJoint"] 

RW.Name="Right Shoulder"
RW.Part0=Character.Torso 
RW.C0=cf(1.5, 0.5, 0)
RW.C1=cf(0, 0.5, 0) 
RW.Part1=Character["Right Arm"] 
RW.Parent=Character.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=Character.Torso 
LW.C0=cf(-1.5, 0.5, 0)
LW.C1=cf(0, 0.5, 0) 
LW.Part1=Character["Left Arm"] 
LW.Parent=Character.Torso 

RH.Name="Right Hip"
RH.Part0=Character.Torso 
RH.C0=cf(1,-1,0)
RH.C1=cf(0.5,1,0)
RH.Part1=Character["Right Leg"] 
RH.Parent=Character.Torso 
-- 
LH.Name="Left Hip"
LH.Part0=Character.Torso 
LH.C0=cf(-1,-1,0)
LH.C1=cf(-0.5,1,0)
LH.Part1=Character["Left Leg"] 
LH.Parent=Character.Torso 

RO.Name="RootJoint"
RO.Part0=Character.HumanoidRootPart 
RO.C0=cf(0,0,0)
RO.C1=cf(0,0,0)
RO.Part1=Character["Torso"] 
RO.Parent=Character.HumanoidRootPart 
-- 
NE.Name="Neck"
NE.Part0=Character.Torso 
NE.C0=necko
NE.C1=necko2
NE.Part1=Character["Head"] 
NE.Parent=Character.Torso 

RH.C0=Lerp(RH.C0,cf(1,-1,0),1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-0),1)
 
RSH.Parent=nil 
LSH.Parent=nil 
RSH2.Parent=nil 
LSH2.Parent=nil 
ROH.Parent=nil 
NEH.Parent=nil 



local function Attackone()
local Hit = HitBox.Touched:connect(function(hit) Damagefunc(hit,5,10) end) 

for i=0,2,0.1 do
swait(0.2)
NE.C0=Lerp(NE.C0,necko*CFA(0,0,-120),.1)
RO.C0=Lerp(RO.C0,CFA(-2.5,120,0),.1)
RW.C0=Lerp(RW.C0,cf(1,0.75,1.2)*CFA(90,50,0),.1)
RW.C1=Lerp(RW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.7,0.04,-0.2)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
RH.C0=Lerp(RH.C0,cf(1,-1,0.35)*CFA(0,-40,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-0.35)*CFA(0,-40,0),.1)
end

for i=0,3,0.1 do
swait(0.8)
Trail(TrailBox.CFrame, i,5)
NE.C0=Lerp(NE.C0,necko*CFA(0,0,20),.1)
RO.C0=Lerp(RO.C0,CFA(-2.5,-20,0),.1)
RW.C0=Lerp(RW.C0,cf(1,0.75,1.2)*CFA(0,-50,45),.1)
RW.C1=Lerp(RW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.7,0.04,-0.2)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
RH.C0=Lerp(RH.C0,cf(1,-1,0.35)*CFA(0,20,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-0.35)*CFA(0,20,0),.1)
end	

Hit:disconnect()
end



local function Attacktwo()
local Hit = HitBox.Touched:connect(function(hit) Damagefunc(hit,5,10) end) 

for i=0,2,0.1 do
swait(0.6)
NE.C0=Lerp(NE.C0,necko,.1)
RO.C0=Lerp(RO.C0,CFA(-2.5,0,0),.1)
RW.C0=Lerp(RW.C0,cf(1,0.75,1.2)*CFA(165,10,45),.1)
RW.C1=Lerp(RW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.7,0.04,-0.2)*CFA(5,0,-20),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
RH.C0=Lerp(RH.C0,cf(1,-1,0.35),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-0.35),.1)
end	

for i=0,2.25,0.1 do
swait(0.85)
Trail(TrailBox.CFrame, i,5)
NE.C0=Lerp(NE.C0,necko*CFA(0,0,i*-150),.1)
RO.C0=Lerp(RO.C0,CFA(-2.5,i*150,0),.1)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(45,-70,45),.1)
RW.C1=Lerp(RW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
RH.C0=Lerp(RH.C0,cf(1,-1,0.35)*CFA(0,-40,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-0.35)*CFA(0,-40,0),.1)
end	

Hit:disconnect()
end


function Attackthree()
local Hit = HitBox.Touched:connect(function(hit) Damagefunc(hit,5,10) end) 
	
scfr = nil
for i=0,3.75,0.05 do
swait(0.5)
if i > 0.3 then
Trail(TrailBox.CFrame, i,5)
end	
NE.C0=Lerp(NE.C0,necko*CFA(0,0,-30),.1)
RO.C0=Lerp(RO.C0,CFA(-2.5,30-(200*i),0),.1)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(0,30,90),.1)
RW.C1=Lerp(RW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
RH.C0=Lerp(RH.C0,cf(1,-1,0.35)*CFA(0,-30,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-0.35)*CFA(0,-30,0),.1)
end	
	
Hit:disconnect()
end



function Attackfour()
local Hit = HitBox.Touched:connect(function(hit) Damagefunc(hit,5,10) end) 

for i=0,2,0.1 do
swait(0.6)
NE.C0=Lerp(NE.C0,necko*CFA(0,0,-30),.1)
RO.C0=Lerp(RO.C0,cf(0,6,0)*CFA(-2.5,30,0),.1)
RW.C0=Lerp(RW.C0,cf(0.75,1.5,0.7)*CFA(-160,0,-25),.1)
RW.C1=Lerp(RW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(5,0,-20),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
RH.C0=Lerp(RH.C0,cf(0.75,-1,0.35)*CFA(0,-30,0)*CFA(-5,0,0),.1)
LH.C0=Lerp(LH.C0,cf(-0.75,-1,-0.35)*CFA(0,-30,0)*CFA(-5,0,0),.1)
end	

for i=0,2.25,0.1 do
swait(0.85)
Trail(TrailBox.CFrame, i,5)
NE.C0=Lerp(NE.C0,necko*CFA(0,0,-70),.1)
RO.C0=Lerp(RO.C0,cf(0,-0.5,0)*CFA(-25,70,0),.1)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(75,-60,30),.1)
RW.C1=Lerp(RW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(5,0,-20),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
RH.C0=Lerp(RH.C0,cf(1.05,-0.6,0.35)*CFA(0,-70,0)*CFA(-5,0,0),.1)
LH.C0=Lerp(LH.C0,cf(-0.75,-1,-0.35)*CFA(0,-70,0)*CFA(-15,0,0),.1)
end	

Hit:disconnect()
end



local combo=0
local function Click() 
if Attack==true or Equipped==false or Equipping == true then return end
Attack = true
so("rbxassetid://471950433",RootPart,.65,1)
if combo==0 then
Attackone()
combo=1
elseif combo==1 then
Attacktwo()
combo=2
elseif combo==2 then
Attackthree()
combo=3
elseif combo==3 then
Attackfour()
combo=0
end
Attack = false
coroutine.resume(coroutine.create(function() 
for i=1,50 do
if Attack==false then
swait(1)
else
break
end
end
if Attack==false then
combo=0
end
end))
end 


local HW_C0, HW_C1 = HandleWeld.C0 , HandleWeld.C1

local function hideanim() 

for i=0,1,0.05 do
swait(2)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(105,55,-10),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 1-(1-i)
end
end
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 1
end

HandleWeld:remove()
HandleWeld=weld(Handle,Torso,Handle,HW_C0,HW_C1)

for i=0,1,0.05 do
swait(2)
NE.C0=Lerp(NE.C0,necko,.1)
RO.C0=Lerp(RO.C0,CFA(-(1.25-((i*10)/8)),0,0),.1)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
RH.C0=Lerp(RH.C0,cf(1,-1,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,0),.1)
HandleWeld.C0=Lerp(HandleWeld.C0,HandleWeld.C0*cf(0.2,-0.2,0),.1)
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 1-i
end
end
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 0
end

HW_C0, HW_C1 = HandleWeld.C0 , HandleWeld.C1

end 

local function equipanim() 

HandleWeld:remove()
HandleWeld=weld(Handle,Torso,Handle,HW_C0,HW_C1)

for i=0,1,0.05 do
swait(2)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(105,55,-10),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
HandleWeld.C0=Lerp(HandleWeld.C0,HandleWeld.C0*cf(-0.2,0.2,0),.1)
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 1-(1-i)
end
end
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 1
end

HW_C0, HW_C1 = HandleWeld.C0 , HandleWeld.C1

HandleWeld:remove()
HandleWeld=weld(Handle,RightArm,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFA(-90,30,90)*cf(0,1,0))

for i=0,1,0.05 do
swait(2)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(180,75,-95),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 1-i
end
end
for _,v in pairs(ModelPlace:children()) do
v.Transparency = 0
end

end 


local function Key(key) 
if Attack==true or Equipping == true then return end
if key == "f" then
Equipping = true
if Equipped==false then
Equipped=true
equipanim() 

else
Equipped=false
hideanim() 

end
Equipping = false
end
end


Player:GetMouse().Button1Down:connect(Click) 
Player:GetMouse().KeyDown:connect(Key) 


local sine=1
local change=0.5

local function Idle()
swait(2.5)
DerbisPlace.Parent = Character

local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
local hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)

if Equipped==true then

if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if Attack==false then
NE.C0=Lerp(NE.C0,necko*CFA(-10,0,0),.1)
NE.C1=Lerp(NE.C1,necko2,.1)
RO.C0=Lerp(RO.C0,cf(0,0,0),.1)
if Equipping == false then
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(-10,0,45),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-10,0,-45),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,cf(1,-1,-.3)*CFA(-30,0,0)*CFA(-10,0,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-.3)*CFA(-0.5,0,0)*CFA(10,0,0),.1)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if Attack==false then
NE.C0=Lerp(NE.C0,necko*CFA(22.5,0,0),.1)
NE.C1=Lerp(NE.C1,necko2,.1)
RO.C0=Lerp(RO.C0,cf(0,0,0),.1)
if Equipping == false then
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(-22.5,0,10),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-22.5,0,-.2),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,cf(1,-1,0)*CFA(22.5,0,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,0)*CFA(-10,0,0),.1)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if Attack==false then
NE.C0=Lerp(NE.C0,necko*CFA(-7.5,5,-35),.1)
RO.C0=Lerp(RO.C0,cf(0,-0.25,0)*CFA(-10,35,0),.1)
if Equipping == false then
HandleWeld.C0=Lerp(HandleWeld.C0,Old_H,.1)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(180,75,-95),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,cf(1,-0.85,0.35)*CFA(0,-35,0)*CFA(10,0,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-0.35)*CFA(0,-35,0)*CFA(-15,20,0),.1)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if Attack==false then
sine=sine+change
NE.C0=Lerp(NE.C0,necko*CFA(0,0,-35),.1)
RO.C0=Lerp(RO.C0,CFA(-2.5,35,0),.1)
if Equipping == false then
HandleWeld.C0=Lerp(HandleWeld.C0,Old_H,.1)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(180,75,-95),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,CFA(0,-35,0)*cf(1,-0.925-0.5*math.cos(sine/7)/2,0.5*math.cos(sine/7)/2)*CFA(-15-15*math.cos(sine/7)+ math.deg(-math.sin(sine/7)/2.5),-10*math.cos(sine/7),0)*CFA(0+2.5*math.cos(sine/7),0,0),0.1)
LH.C0=Lerp(LH.C0,CFA(0,-35,0)*cf(-1,-0.925+0.5*math.cos(sine/7)/2,-0.5*math.cos(sine/7)/2)*CFA(-15+15*math.cos(sine/7)+ math.deg(math.sin(sine/7)/2.5),-10*math.cos(sine/7),0)*CFA(0-2.5*math.cos(sine/7),0,0),0.1)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if Attack==false then
sine=sine+change
NE.C0=Lerp(NE.C0,necko*CFA(0,0,-35),.1)
RO.C0=Lerp(RO.C0,CFA(-2.5,35,0),.1)
if Equipping == false then
HandleWeld.C0=Lerp(HandleWeld.C0,Old_H,.1)
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(180,75,-95),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-15,10,-35),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,CFA(0,-35,0)*cf(1,-0.925-0.5*math.cos(sine/7)/2,0.5*math.cos(sine/7)/2)*CFA(-15-15*math.cos(sine/7)+ math.deg(-math.sin(sine/7)/2.5),-10*math.cos(sine/7),0)*CFA(0+2.5*math.cos(sine/7),0,0),0.1)
LH.C0=Lerp(LH.C0,CFA(0,-35,0)*cf(-1,-0.925+0.5*math.cos(sine/7)/2,-0.5*math.cos(sine/7)/2)*CFA(-15+15*math.cos(sine/7)+ math.deg(math.sin(sine/7)/2.5),-10*math.cos(sine/7),0)*CFA(0-2.5*math.cos(sine/7),0,0),0.1)
end
end
end
local hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if Equipped==false then

if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if Attack==false then
NE.C0=Lerp(NE.C0,necko*CFA(-10,0,0),.1)
NE.C1=Lerp(NE.C1,necko2,.1)
RO.C0=Lerp(RO.C0,cf(0,0,0),.1)
if Equipping == false then
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(-10,0,45),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-10,0,-45),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,cf(1,-1,-.3)*CFA(-30,0,0)*CFA(-10,0,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,-.3)*CFA(-0.5,0,0)*CFA(10,0,0),.1)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if Attack==false then
NE.C0=Lerp(NE.C0,necko*CFA(22.5,0,0),.1)
NE.C1=Lerp(NE.C1,necko2,.1)
RO.C0=Lerp(RO.C0,cf(0,0,0),.1)
if Equipping == false then
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0)*CFA(-22.5,0,10),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0)*CFA(-22.5,0,-.2),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,cf(1,-1,0)*CFA(22.5,0,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,0)*CFA(-10,0,0),.1)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
NE.C0=Lerp(NE.C0,necko,.1)
RO.C0=Lerp(RO.C0,cf(0,0,0),.1)
if Attack==false and Equipping == false then
RW.C0=Lerp(RW.C0,cf(1.5,0.5,0),.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,cf(-1.5,0.5,0),.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,cf(1,-1,0),.1)
LH.C0=Lerp(LH.C0,cf(-1,-1,0),.1)
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if Attack==false then
sine=sine+change
NE.C0=Lerp(NE.C0,necko,.1)
RO.C0=Lerp(RO.C0,cf(0,0,0),.1)
if Attack==false and Equipping == false then
RW.C0=Lerp(RW.C0,CFrame.new(1.5,0.5,0)*CFA(30*math.cos(sine/7)+math.deg(math.sin(sine/7)/2.5),0,10),0.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFA(-30*math.cos(sine/7)+math.deg(-math.sin(sine/7)/2.5),0,-10),0.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,cf(1,-0.925-0.5*math.cos(sine/7)/2,0.5*math.cos(sine/7)/2)*CFA(-15-15*math.cos(sine/7)+ math.deg(-math.sin(sine/7)/2.5),-10*math.cos(sine/7),0)*CFA(0+2.5*math.cos(sine/7),0,0),0.1)
LH.C0=Lerp(LH.C0,cf(-1,-0.925+0.5*math.cos(sine/7)/2,-0.5*math.cos(sine/7)/2)*CFA(-15+15*math.cos(sine/7)+ math.deg(math.sin(sine/7)/2.5),-10*math.cos(sine/7),0)*CFA(0-2.5*math.cos(sine/7),0,0),0.1)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if Attack==false then
sine=sine+change
NE.C0=Lerp(NE.C0,necko,.1)
RO.C0=Lerp(RO.C0,cf(0,0,0),.1)
if Attack==false and Equipping == false then
RW.C0=Lerp(RW.C0,CFrame.new(1.5,0.5,0)*CFA(30*math.cos(sine/7)+math.deg(math.sin(sine/7)/2.5),0,10),0.1)
RW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
LW.C0=Lerp(LW.C0,CFrame.new(-1.5,0.5,0)*CFA(-30*math.cos(sine/7)+math.deg(-math.sin(sine/7)/2.5),0,-10),0.1)
LW.C1=Lerp(LW.C1,cf(0,0.5,0),.1)
end
RH.C0=Lerp(RH.C0,cf(1,-0.925-0.5*math.cos(sine/7)/2,0.5*math.cos(sine/7)/2)*CFA(-15-15*math.cos(sine/7)+ math.deg(-math.sin(sine/7)/2.5),-10*math.cos(sine/7),0)*CFA(0+2.5*math.cos(sine/7),0,0),0.1)
LH.C0=Lerp(LH.C0,cf(-1,-0.925+0.5*math.cos(sine/7)/2,-0.5*math.cos(sine/7)/2)*CFA(-15+15*math.cos(sine/7)+ math.deg(math.sin(sine/7)/2.5),-10*math.cos(sine/7),0)*CFA(0-2.5*math.cos(sine/7),0,0),0.1)
end
end
end

if #Effects>0 then
	for e=1,#Effects do
		if Effects[e]~=nil then
			local Thing=Effects[e]
			if Thing ~= nil then
				if Thing[2] == "Disappear" then
					if Thing[1].Transparency >= 1 then
						Thing[1].Parent = nil
						table.remove(Effects, e)
					else
						Thing[1].Transparency = Thing[1].Transparency + Thing[3]
					end
elseif Thing[2]=="Cylinder" then
if Thing[1]:FindFirstChild("Mesh") ~= nil then
local Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4]/3,Thing[5]/3,Thing[6]/3)
end
Thing[1].Transparency=Thing[1].Transparency+Thing[3]/3
				end
			end
		end
	end
end

end

 
while true do
Idle()
end

 
--[[ 
Copyrighted (C) Dvd 2014
]]