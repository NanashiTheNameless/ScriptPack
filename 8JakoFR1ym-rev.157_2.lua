Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

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
    
    function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
        end
    
    function nooutline(part)
        part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
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

Aether=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.628554821, 1.32748795, 0.200000003))
Aetherweld=weld(m,Character["Left Arm"],Aether,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.859289527, -0.0968446732, 0.0218138695, 0.0220653266, 0.99975431, -0.00205104053, 0.00974609517, 0.00183633971, 0.999950826, 0.99970907, -0.0220842306, -0.00970318168))
mesh("CylinderMesh",Aether,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.934888721))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0482299328, -0.46901834, -0.00140285492, 0.866025388, 0.5, 4.34461981e-007, 0.5, -0.866025388, 2.34693289e-007, 4.92460458e-007, 1.21071935e-008, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0408809185, 0.540866375, -0.0013794899, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00239992142, -0.0296115875, 0.771736503, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.965925813, -0.258818716, -7.82543793e-007, -0.258818716, 0.965925992, -2.64495611e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00250148773, 0.0349569321, 0.746231079, -8.24144081e-007, 5.30853868e-008, 1.00000012, -5.69061376e-006, 1, -5.30853868e-008, -1, -5.69084659e-006, -8.25148163e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00358104706, -0.869184017, -0.00138282776, -0.866025507, -0.49999997, -2.67289579e-007, -0.49999994, 0.866025507, -2.67289579e-007, 3.64165317e-007, -9.96515155e-008, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.048207283, 0.848121047, 0.00165987015, 0.866025388, 0.5, 4.34461981e-007, -0.5, 0.866025388, -2.34693289e-007, -4.92460458e-007, -1.21071935e-008, 1))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0408153534, 1.29684615, -0.00142383575, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249433517, -0.030421257, 0.769461155, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.866025567, -0.499999732, -6.88713044e-007, -0.499999762, 0.866025686, -4.59142029e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.200274855, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00255298615, 0.0175304413, 0.694089413, -8.24144081e-007, 5.30853868e-008, 1.00000012, -1, 5.00585884e-008, -8.24971721e-007, -5.00585884e-008, -1.00000012, 5.21540642e-008))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00361680984, -1.62502837, -0.00139760971, -0.866025507, -0.49999997, -2.67289579e-007, -0.49999994, 0.866025507, -2.67289579e-007, 3.64165317e-007, -9.96515155e-008, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00245523453, -0.0160694122, -0.768128753, -8.24144081e-007, 5.30853868e-008, 1.00000012, -1, 5.00585884e-008, -8.24971721e-007, -5.00585884e-008, -1.00000012, 5.21540642e-008))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248527527, -0.0654726028, 0.760480046, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.499997318, -0.866026998, -3.66941094e-007, -0.866027057, 0.499997318, -7.41332769e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253629684, -0.0646264553, 0.748324633, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.258814603, -0.965927124, -1.62981451e-007, -0.965927064, 0.258814663, -8.11880454e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167102814, -0.91748333, -0.00139427185, -0.866026878, 0.499997616, 1.37835741e-007, 0.499997616, 0.866026759, -4.64729965e-007, -3.52476491e-007, -3.34344804e-007, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00250673294, -0.0676466227, 0.777448893, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.258824974, -0.965924323, 2.64495611e-007, 0.965924263, 0.258824974, 7.8510493e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.201587483, 0.204107866, 0.20326753))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102931261, 0.746011496, -0.00346374512, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00245761871, 0.0617038012, 0.698882341, -8.24144081e-007, 5.30853868e-008, 1.00000012, -0.86602658, 0.499997973, -7.40401447e-007, -0.499997973, -0.8660267, -3.67872417e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00255489349, -0.0120299459, 0.792168617, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.86602658, -0.499997973, 7.40401447e-007, 0.499997973, 0.8660267, 3.67872417e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0407748222, -0.917782784, 0.00175046921, 5.68735413e-006, -1.00000012, -1.12690032e-007, 1.00000012, 5.68758696e-006, -8.57362465e-008, 8.7031367e-008, -1.12690032e-007, 1))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.207467124, 0.200000003, 0.200747684))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698031425, 0.199667215, -0.0031504631, -0.499997377, -0.866026998, 2.65426934e-007, -0.866026998, 0.499997318, -1.53668225e-007, -2.34831532e-009, -3.08267772e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.974342167, 1))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0024805069, 0.0297365189, 0.693201661, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.866025567, 0.499999732, 6.88713044e-007, 0.499999762, -0.866025686, 4.59142029e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0246095657, 0.946931005, 0.00160741806, 5.68735413e-006, -1.00000012, -1.12690032e-007, 1.00000012, 5.68758696e-006, -8.57362465e-008, 8.7031367e-008, -1.12690032e-007, 1))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00253391266, -0.0274742842, 0.799907207, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.707110167, -0.707103372, 6.20726496e-007, 0.707103372, 0.707110226, 5.46686351e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00361967087, 1.24815178, 0.00166797638, -0.866025507, -0.49999997, -2.67289579e-007, 0.49999994, -0.866025507, 2.67289579e-007, -3.64165317e-007, 9.96515155e-008, 1))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00258970261, -0.0367918015, 0.760182619, -8.24144081e-007, 5.30853868e-008, 1.00000012, 5.69061376e-006, -1, 5.30853868e-008, 1, 5.69084659e-006, 8.25148163e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249910355, 0.0319302082, 0.736921787, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.258814603, 0.965927124, 1.62981451e-007, 0.965927064, -0.258814663, 8.11880454e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245614052, -1.32380986, -0.00139141083, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0024394989, -0.00593090057, 0.788860798, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.965926111, -0.25881815, 8.12113285e-007, 0.25881812, 0.965926111, 1.62050128e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00250387192, 0.0384171009, 0.715082526, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.707106292, 0.707107365, 5.46686351e-007, 0.707107306, -0.707106292, 6.21192157e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245568752, -0.567831755, -0.00136518478, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0024433136, 0.00553488731, 0.692357302, -8.24144081e-007, 5.30853868e-008, 1.00000012, -0.965926111, 0.25881815, -8.12113285e-007, -0.25881812, -0.965926111, -1.62050128e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00244855881, 0.0087852478, 0.682419538, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.965925813, 0.258818716, 7.82543793e-007, 0.258818716, -0.965925992, 2.64495611e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00248146057, -0.0610060692, 0.789432049, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.500005364, -0.866022348, 4.58210707e-007, 0.866022289, 0.500005364, 6.88247383e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248479843, 0.0247051716, 0.724541545, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.499997318, 0.866026998, 3.66941094e-007, 0.866027057, -0.499997318, 7.41332769e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0618763566, 0.844838619, 0.00165748596, 0.866026819, -0.499997675, -1.76951289e-008, 0.499997675, 0.866026819, -8.7544322e-008, 5.87260729e-008, 6.61239028e-008, 1.00000012))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.061909318, -1.22174335, -0.00138807297, 0.866026819, -0.499997675, -1.76951289e-008, -0.499997675, -0.866026819, 8.7544322e-008, -5.87260729e-008, -6.61239028e-008, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167390108, -1.67346716, -0.0013666153, -0.866026878, 0.499997616, 1.37835741e-007, 0.499997616, 0.866026759, -4.64729965e-007, -3.52476491e-007, -3.34344804e-007, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0481948853, -1.22510386, -0.0013961792, 0.866025388, 0.5, 4.34461981e-007, 0.5, -0.866025388, 2.34693289e-007, 4.92460458e-007, 1.21071935e-008, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167447329, 1.29658318, 0.00167179108, -0.866026878, 0.499997616, 1.37835741e-007, -0.499997616, -0.866026759, 4.64729965e-007, 3.52476491e-007, 3.34344804e-007, 1.00000012))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0619024634, -0.465797901, -0.00137424469, 0.866026819, -0.499997675, -1.76951289e-008, -0.499997675, -0.866026819, 8.7544322e-008, -5.87260729e-008, -6.61239028e-008, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00246477127, -0.0393984318, 0.773224831, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.707106292, -0.707107365, -5.46686351e-007, -0.707107306, 0.707106292, -6.21192157e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00296783447, -0.892157197, -0.0495495796, -8.24144081e-007, 5.30853868e-008, 1.00000012, -0.289944708, -0.957043409, -1.89058483e-007, 0.957043409, -0.289944708, 8.03964213e-007))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.0965944752, 0.0839949176))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0220781565, -0.875856161, -0.00244951248, 0.965505719, -0.260382056, 1.36205927e-007, -0.260382056, -0.965505779, 2.00234354e-007, 7.75817171e-008, -2.28174031e-007, -1.00000012))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.0839950144, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00298309326, 0.739748716, 0.227409244, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.485118002, 0.874448776, 3.55765224e-007, -0.874448717, 0.485117972, -7.45989382e-007))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.251985252, 0.0839949176))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17238736, 0.25947094, -0.00244283676, -0.104480669, -0.994526982, -3.21306288e-007, -0.994526863, 0.104480661, -2.65077688e-007, 2.96309736e-007, 2.90572643e-007, -1.00000012))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.192257524, -0.812019348, -0.00239419937, 0.895354569, -0.445353955, -4.33064997e-008, -0.445353985, -0.895354629, -4.56348062e-007, 1.6192098e-007, 4.25614417e-007, -1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.422494948, 0.272143304))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0329217911, -0.964554191, 0.00242137909, -0.995991826, 0.0894442722, -2.12225132e-007, -0.0894442648, -0.995991766, 1.67638063e-008, -2.07572157e-007, 3.63215804e-008, 1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.306580961, 1, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.291462719, 0.272143304))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.875645757, -0.439057112, 0.00245189667, -0.451866388, -0.892085612, -2.87778676e-007, 0.892085731, -0.451866418, 9.17352736e-008, -2.08923666e-007, -2.1327287e-007, 1.00000012))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 1, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16988111, -0.0580990314, -0.00243186951, 0.137960076, -0.990437865, 4.65661287e-009, -0.990437746, -0.137960061, -3.53320502e-007, 3.50833943e-007, 4.28408384e-008, -1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00295591354, 0.59362936, 0.516537428, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.485118002, 0.874448776, 3.55765224e-007, -0.874448717, 0.485117972, -7.45989382e-007))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.432574511, 0.352778435))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.415775359, 0.272143304))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.505042911, -0.851142645, 0.00249242783, -0.882199347, 0.470876366, -3.75322998e-007, -0.470876336, -0.882199347, 2.17929482e-007, -2.28741555e-007, 3.6880374e-007, 1.00000012))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.34437868, 1, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04437017, -0.460815907, -0.0024471283, 0.462649375, -0.886541367, -6.97560608e-007, -0.886541307, -0.462649375, -1.11293048e-007, -2.22287781e-007, 6.69620931e-007, -1.00000012))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.848349869, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.628554821, 0.267470866, 0.922772646))
Partweld=weld(m,Aether,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.61204147e-005, 0.00246715546, -0.952003956, 1, 0, 1.11867848e-009, 2.55931809e-009, 2.05822289e-007, 1, 0, -1, 2.05822289e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","BladeNeon",Vector3.new(0.405694813, 5.90820885, 0.200000003))
BladeNeonweld=weld(m,Aether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00310599804, -4.01893425, 0.000883102417, 1, 0, 1.11867848e-009, 0, -1, 0, -1.11867848e-009, 0, -1))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 1, 0.377976805))
BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","BladeNeon",Vector3.new(0.200000003, 0.64424175, 0.260384023))
BladeNeonweld=weld(m,Aether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00020647049, -7.29191971, 0.136616588, -8.24144081e-007, 5.30853868e-008, 1.00000012, 5.75021841e-006, -1, 5.21540642e-008, 1, 5.75045124e-006, 8.24569725e-007))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.362857431, 1, 1))
BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","BladeNeon",Vector3.new(0.200000003, 0.64424175, 0.264583766))
BladeNeonweld=weld(m,Aether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000224590302, -7.2902317, 0.127586007, 8.24144081e-007, -5.30853868e-008, -1.00000012, 5.75021841e-006, -1, 5.21540642e-008, -1, -5.75045124e-006, -8.24569725e-007))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.362857431, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.405694813, 5.84185266, 0.200000003))
Bladeweld=weld(m,Aether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00318789482, -4.05222178, 0.000928878784, 1, 0, 1.11867848e-009, 0, -1, 0, -1.11867848e-009, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.419974238))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.200000003, 0.522449017, 0.209147185))
Bladeweld=weld(m,Aether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000205039978, -7.23093414, 0.0965009928, 8.24144081e-007, -5.30853868e-008, -1.00000012, 5.75021841e-006, -1, 5.21540642e-008, -1, -5.75045124e-006, -8.24569725e-007))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.403174937, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.200000003, 0.522449017, 0.200000003))
Bladeweld=weld(m,Aether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000283241272, -7.2334938, 0.1067518, -8.24144081e-007, 5.30853868e-008, 1.00000012, 5.75021841e-006, -1, 5.21540642e-008, 1, 5.75045124e-006, 8.24569725e-007))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.403174937, 1, 0.995338917))

Nether=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.628554821, 1.32748795, 0.200000003))
Netherweld=weld(m,Character["Right Arm"],Nether,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.87177372, -0.0829503536, 0.0382533073, -0.0281696357, 0.999596834, -0.00352261961, -0.000984552898, 0.00349627063, 0.999993443, 0.999602675, 0.0281729139, 0.000885667396))
mesh("CylinderMesh",Nether,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.934888721))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.405694813, 5.84185266, 0.200000003))
Bladeweld=weld(m,Nether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0030772686, -4.05209923, 0.000898361206, 1, 0, 6.13908924e-011, 0, -1.00000012, 0, -6.13908924e-011, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.419974238))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.200000003, 0.522449017, 0.209147185))
Bladeweld=weld(m,Nether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000222921371, -7.23093987, 0.0966489315, -1.9498998e-007, -1.84983946e-007, -1, 5.25335781e-006, -1.00000012, 1.84983946e-007, -1, -5.25335781e-006, 1.94589347e-007))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.403174937, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.200000003, 0.522449017, 0.200000003))
Bladeweld=weld(m,Nether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000254154205, -7.23342943, 0.106646538, 1.9498998e-007, 1.84983946e-007, 1, 5.25335781e-006, -1.00000012, 1.84983946e-007, 1, 5.25335781e-006, -1.94589347e-007))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.403174937, 1, 0.995338917))
BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.200000003, 0.64424175, 0.264583766))
BladeNeonweld=weld(m,Nether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000238418579, -7.29017735, 0.127707481, -1.9498998e-007, -1.84983946e-007, -1, 5.25335781e-006, -1.00000012, 1.84983946e-007, -1, -5.25335781e-006, 1.94589347e-007))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.362857431, 1, 1))
BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.200000003, 0.64424175, 0.260384023))
BladeNeonweld=weld(m,Nether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00025844574, -7.29181671, 0.136456728, 1.9498998e-007, 1.84983946e-007, 1, 5.25335781e-006, -1.00000012, 1.84983946e-007, 1, 5.25335781e-006, -1.94589347e-007))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.362857431, 1, 1))
BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.405694813, 5.90820885, 0.200000003))
BladeNeonweld=weld(m,Nether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00305366516, -4.01884222, 0.000908613205, 1, 0, 6.13908924e-011, 0, -1.00000012, 0, -6.13908924e-011, 0, -1))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 1, 0.377976805))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0482237339, 0.848191738, 0.00165343285, 0.866025805, 0.499999255, -8.93487595e-008, -0.499999255, 0.866025925, -1.87952537e-007, -1.55712314e-008, 2.07568519e-007, 1))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.201587483, 0.204107866, 0.20326753))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102931023, 0.746085167, -0.00350427628, 5.15114516e-006, -1.00000012, 1.11933332e-007, -1, -5.15114516e-006, 8.4153271e-009, -8.98012331e-009, -1.11933332e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245368481, -1.32375312, -0.00137233734, 5.2258838e-006, -1.00000012, 1.14087015e-007, -1, -5.2258838e-006, -6.55222721e-009, 5.92854121e-009, -1.14087015e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245070457, -0.56784308, -0.00138664246, 5.2258838e-006, -1.00000012, 1.14087015e-007, -1, -5.2258838e-006, -6.55222721e-009, 5.92854121e-009, -1.14087015e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245621204, 0.946876049, 0.00165820122, 5.2258838e-006, -1.00000012, 1.14087015e-007, 1, 5.2258838e-006, 6.55222721e-009, -5.92854121e-009, 1.14087015e-007, 1))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0408022404, 0.540900946, -0.00139760971, 5.2258838e-006, -1.00000012, 1.14087015e-007, -1, -5.2258838e-006, -6.55222721e-009, 5.92854121e-009, -1.14087015e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0407652855, -0.917833328, 0.00166773796, 5.2258838e-006, -1.00000012, 1.14087015e-007, 1, 5.2258838e-006, 6.55222721e-009, -5.92854121e-009, 1.14087015e-007, 1))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0408360958, 1.29686904, -0.00143361092, 5.2258838e-006, -1.00000012, 1.14087015e-007, -1, -5.2258838e-006, -6.55222721e-009, 5.92854121e-009, -1.14087015e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00358486176, -0.869122982, -0.00142788887, -0.866025805, -0.499999255, 5.95464371e-008, -0.499999255, 0.866025925, -9.76142474e-008, -3.38104655e-009, -1.15134753e-007, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00356197357, -1.62506747, -0.00138115883, -0.866025805, -0.499999255, 5.95464371e-008, -0.499999255, 0.866025925, -9.76142474e-008, -3.38104655e-009, -1.15134753e-007, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00249695778, 0.0617160797, 0.698945522, 1.9498998e-007, 1.84983946e-007, 1, -0.866027296, 0.499996901, 7.64266588e-008, -0.499996871, -0.866027355, 2.58325599e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0035841465, 1.24818707, 0.00168299675, -0.866025805, -0.499999255, 5.95464371e-008, 0.499999255, -0.866025925, 9.76142474e-008, 3.38104655e-009, 1.15134753e-007, 1.00000012))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167120695, -0.917606354, -0.00141716003, -0.866027117, 0.499997139, -2.43715476e-007, 0.499997109, 0.866027176, 8.61473382e-008, 2.55289933e-007, -4.703179e-008, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167376995, -1.67353034, -0.00138163567, -0.866027117, 0.499997139, -2.43715476e-007, 0.499997109, 0.866027176, 8.61473382e-008, 2.55289933e-007, -4.703179e-008, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167084932, 1.29656816, 0.00165486336, -0.866027117, 0.499997139, -2.43715476e-007, -0.499997109, -0.866027176, -8.61473382e-008, -2.55289933e-007, 4.703179e-008, 1.00000012))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0618534684, -0.465709448, -0.00136375427, 0.866027176, -0.49999702, 2.12166924e-007, -0.49999705, -0.866027296, 1.89756975e-008, 1.75463583e-007, -1.23225618e-007, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0618223548, 0.84479332, 0.00163936615, 0.866027176, -0.49999702, 2.12166924e-007, 0.49999705, 0.866027296, -1.89756975e-008, -1.75463583e-007, 1.23225618e-007, 1.00000012))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0618728399, -1.22165966, -0.00139498711, 0.866027176, -0.49999702, 2.12166924e-007, -0.49999705, -0.866027296, 1.89756975e-008, 1.75463583e-007, -1.23225618e-007, -1.00000012))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0025229454, 0.00553905964, 0.69238019, 1.9498998e-007, 1.84983946e-007, 1, -0.96592629, 0.258817375, 1.39538315e-007, -0.258817375, -0.965926349, 2.29396392e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0482130051, -1.2250942, -0.00141119957, 0.866025805, 0.499999255, -8.93487595e-008, 0.499999255, -0.866025925, 1.87952537e-007, 1.55712314e-008, -2.07568519e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.200274855, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00249862671, 0.0175659657, 0.69406867, 1.9498998e-007, 1.84983946e-007, 1, -1, -2.32830644e-010, 1.9551635e-007, 2.32830644e-010, -1.00000012, 1.84925739e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248932838, 0.0247342587, 0.724454165, -1.9498998e-007, -1.84983946e-007, -1, 0.499999076, 0.866026044, -2.575689e-007, 0.866026044, -0.499999106, -7.65430741e-008))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00250530243, -0.0609382391, 0.789362431, 1.9498998e-007, 1.84983946e-007, 1, 0.500005364, -0.866022408, 6.35045581e-008, 0.866022229, 0.500005424, -2.62720278e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00251436234, -0.0160479546, -0.768103242, 1.9498998e-007, 1.84983946e-007, 1, -1, -2.32830644e-010, 1.9551635e-007, 2.32830644e-010, -1.00000012, 1.84925739e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00245881081, -0.0120127201, 0.792094946, 1.9498998e-007, 1.84983946e-007, 1, 0.866027117, -0.499997079, -7.66012818e-008, 0.499997109, 0.866027176, -2.58442014e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00251865387, -0.0275073051, 0.799879313, 1.9498998e-007, 1.84983946e-007, 1, 0.707110524, -0.707103193, -7.39237294e-009, 0.707103133, 0.707110465, -2.68802978e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00250387192, -0.0393373966, 0.773245454, -1.9498998e-007, -1.84983946e-007, -1, -0.707106709, -0.707106948, 2.70025339e-007, -0.707106948, 0.707106709, 6.81029633e-009))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0025036335, 0.0319125652, 0.736887157, -1.9498998e-007, -1.84983946e-007, -1, 0.258815348, 0.965926886, -2.2893073e-007, 0.965926766, -0.258815348, -1.39611075e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00251102448, 0.0297060013, 0.693159103, -1.9498998e-007, -1.84983946e-007, -1, 0.866025805, 0.499999285, -2.60683009e-007, 0.499999315, -0.866025984, 6.21657819e-008))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00252056122, -0.0655257702, 0.760563135, -1.9498998e-007, -1.84983946e-007, -1, -0.499999076, -0.866026044, 2.575689e-007, -0.866026044, 0.499999106, 7.65430741e-008))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00251436234, -0.0367987156, 0.760144949, 1.9498998e-007, 1.84983946e-007, 1, 5.25335781e-006, -1.00000012, 1.84983946e-007, 1, 5.25335781e-006, -1.94589347e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248408318, -0.0303695202, 0.769465566, -1.9498998e-007, -1.84983946e-007, -1, -0.866025805, -0.499999285, 2.60683009e-007, -0.499999315, 0.866025984, -6.21657819e-008))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249958038, 0.00876927376, 0.682365179, -1.9498998e-007, -1.84983946e-007, -1, 0.96592617, 0.258817852, -2.37778295e-007, 0.258817852, -0.96592629, 1.28813554e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00249004364, -0.067527771, 0.777368069, 1.9498998e-007, 1.84983946e-007, 1, 0.258825153, -0.965924203, 1.28289685e-007, 0.965924263, 0.258825183, -2.36876076e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249266624, -0.0645384789, 0.748389721, -1.9498998e-007, -1.84983946e-007, -1, -0.258815348, -0.965926886, 2.2893073e-007, -0.965926766, 0.258815348, 1.39611075e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249934196, 0.0384550095, 0.715066433, -1.9498998e-007, -1.84983946e-007, -1, 0.707106709, 0.707106948, -2.70025339e-007, 0.707106948, -0.707106709, -6.81029633e-009))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00247359276, -0.0059517622, 0.788795471, 1.9498998e-007, 1.84983946e-007, 1, 0.96592629, -0.258817375, -1.39538315e-007, 0.258817375, 0.965926349, -2.29396392e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00248098373, 0.0349800587, 0.746271133, 1.9498998e-007, 1.84983946e-007, 1, -5.25335781e-006, 1.00000012, -1.84983946e-007, -1, -5.25335781e-006, 1.94589347e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248861313, -0.0295228958, 0.771678805, -1.9498998e-007, -1.84983946e-007, -1, -0.96592617, -0.258817852, 2.37778295e-007, -0.258817852, 0.96592629, -1.28813554e-007))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.207467124, 0.200000003, 0.200747684))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698108196, 0.199664474, -0.00309181213, -0.499998838, -0.866026163, -6.19329512e-008, -0.866026103, 0.499998808, -1.50990672e-007, 1.62069909e-007, -2.24099495e-008, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.974342167, 1))
Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0482084751, -0.469145536, -0.00139713287, 0.866025805, 0.499999255, -8.93487595e-008, 0.499999255, -0.866025925, 1.87952537e-007, 1.55712314e-008, -2.07568519e-007, -1))
mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00194454193, -1.06429565, -0.294578314, -1.9498998e-007, -1.84983946e-007, -1, 0.436867625, -0.89952594, 8.17235559e-008, -0.89952594, -0.436867625, 2.55706254e-007))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.621563315, 0.302381516))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.19455266, -0.800625026, 0.00243830681, -0.895353794, -0.445355684, -7.94534571e-008, 0.445355654, -0.895353794, 2.69035809e-007, -1.92516382e-007, 2.05182005e-007, 1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0019402504, -0.881215215, -0.0536847115, -1.9498998e-007, -1.84983946e-007, -1, 0.289954394, -0.957040548, 1.20722689e-007, -0.957040489, -0.289954424, 2.41707312e-007))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.0965944752, 0.0839949176))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00192308426, 0.728180289, 0.229098558, -1.9498998e-007, -1.84983946e-007, -1, -0.485126227, 0.874444187, -6.71716407e-008, 0.874444187, 0.485126287, -2.58820364e-007))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.251985252, 0.0839949176))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0265626907, -0.864977717, 0.0024471283, -0.965505838, -0.260381699, -2.91329343e-008, 0.260381699, -0.965505838, 7.95116648e-008, -4.86113549e-008, 6.90342858e-008, 1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.0839950144, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03947759, -0.450213075, 0.0024869442, -0.462641776, -0.88654542, 1.23050995e-007, 0.88654536, -0.462641776, -1.10972906e-007, 1.54459713e-007, 5.76255843e-008, 1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.848349869, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.422494948, 0.272143304))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0392067432, -0.954729676, -0.00247454643, 0.995991766, 0.089444153, 5.62213245e-008, 0.0894441605, -0.995991826, 1.16007868e-007, 6.55215899e-008, -1.10594556e-007, -1.00000012))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.306580961, 1, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16178858, -0.0497832298, 0.00244355202, -0.137950227, -0.990439177, 8.88248906e-008, 0.990439236, -0.137950242, 2.30327714e-007, -2.16429044e-007, 1.1944212e-007, 1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16243589, 0.265618801, 0.0024394989, 0.104491726, -0.994525909, 5.90225682e-008, 0.99452585, 0.104491726, -2.46720447e-007, 2.40048166e-007, 8.44011083e-008, 1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.313301444, 0.272143304))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.311394453, -0.842094541, -0.00247263908, 0.892084658, 0.451868415, -5.24159987e-008, 0.451868445, -0.892084718, 8.64965841e-008, -9.01673047e-009, -1.01572368e-007, -1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.289781988, 1, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.415775359, 0.272143304))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.506984472, -0.839653134, -0.00243520737, 0.882198989, 0.470877051, 3.44123691e-007, 0.470877022, -0.882198989, 1.79978088e-007, 3.8736448e-007, 2.6775524e-009, -1))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.34437868, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.628554821, 0.267470866, 0.922772646))
Partweld=weld(m,Nether,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.86781311e-006, 0.00250267982, -0.951990962, 1, 0, 6.13908924e-011, -6.46878107e-010, 2.01049261e-007, 1, 0, -1.00000012, 2.01107468e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.001922369, 0.582068503, 0.518258333, -1.9498998e-007, -1.84983946e-007, -1, -0.485126227, 0.874444187, -6.71716407e-008, 0.874444187, 0.485126287, -2.58820364e-007))
mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.432574511, 0.352778435))

----(Sky's Secret Settings)----
local Player = game:getService("Players").LocalPlayer
local Players = game.Players
local Character = Player.Character
me = game.Players.LocalPlayer
----(Variables)----
local player = game.Players.LocalPlayer
local char = player.Character
local a = Instance.new("Part", char)
wait(0.00001)
local a2 = Instance.new("Part", char)


--[[for _, v in pairs(Character:GetChildren()) do
    if v:IsA("Part") then
        --table.insert(BodyParts, v)
        v.Transparency = 1
        if v:IsA("Hat") then
        v:Destroy()
    end
end]]


--[[
wait(0.00001)
local b = Instance.new("Part", char)
wait(0.00001)
local b2 = Instance.new("Part", char)
wait(0.00001)
local c = Instance.new("Part", char)
wait(0.00001)
local c2 = Instance.new("Part", char)
]]--
local pos = player.Character.Torso.Position
local chat = game:GetService("Chat")
local mouse = player:GetMouse()
local active = true
local meshs = {};
local sounds = {};

local fly = Instance.new("BodyPosition", a)
a.CanCollide = false
a.Material = "Neon"
a.Shape = Enum.PartType.Ball
a.Size = Vector3.new(2.6, 2.6, 2.6)
a.BrickColor = BrickColor.new("Intitutional white")
a.Position = fly.position

local fly2 = Instance.new("BodyPosition", a2)
a2.CanCollide = false
a2.Material = "Neon"
a2.BrickColor = BrickColor.new("Really black")
a2.Shape = Enum.PartType.Ball
a2.Size = Vector3.new(2.6, 2.6, 2.6)
a2.Position = fly2.position

local p = Instance.new('Part', char.Torso)
p.Name = 'Orb' --name it whatever you want
p.Transparency = 1
p.Anchored = false
p.CanCollide = false
p.Size = Vector3.new(1, 1, 1)
        local w = Instance.new('Weld', p)
        w.Part0 = p
        w.Part1 = char.Torso
        w.C0 = CFrame.new(3, -2, 0)  -- you can adjust the position the first ball will be in - josh50535

local p2 = Instance.new('Part', char.Torso)
p2.Name = 'AsdfOrb' --name it whatever you want
p2.Transparency = 1
p2.Anchored = false
p2.CanCollide = false
p2.Size = Vector3.new(1, 1, 1)
        local w = Instance.new('Weld', p2)
        w.Part0 = p2
        w.Part1 = char.Torso
        w.C0 = CFrame.new(-3, -2, 0)   -- you can adjust the position the second ball will be in - josh50535


game:service'RunService'.RenderStepped:connect(function()
        fly.position = p.CFrame.p
        fly2.position = p2.CFrame.p
end)



    
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

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
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
w2.BrickColor = BrickColor.new(TrailColor)
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
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
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("New Yeller"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
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
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

function attackone()
    attack=true
    con1=Aether.Touched:connect(function(hit) Damagefunc(hit,12,30,math.random(5,10),"Normal",RootPart,.2,1) end) 
    for i=0,1,0.08 do
        swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
    end
    for i=0,1,0.08 do
        swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(10),math.rad(-80)),.3)
    end
    attack=false
    con1:disconnect()
end

function attacktwo()
con1=Blade.Touched:connect(function(hit) Damagefunc(hit,15,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
con2=Blade.Touched:connect(function(hit) Damagefunc(hit,15,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6)*angles(0,0,0),.3)
end
for i=0,1,1 do
swait()
for i=0,1,0.075 do
swait()
Torso.Velocity=RootPart.CFrame.lookVector*50
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6)*angles(math.rad(0),math.rad(90),6*i),.3)
end
end
for i=0,1,1 do
swait()
for i=0,1,0.075 do
swait()
Torso.Velocity=RootPart.CFrame.lookVector*50
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6)*angles(math.rad(0),math.rad(90),6*i),.3)
end
end
con1:disconnect()
con2:disconnect()
attack=false
end

function attackthree()
attack=true
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
con1=Aether.Touched:connect(function(hit) Damagefunc(hit,5,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
con2=Nether.Touched:connect(function(hit) Damagefunc(hit,5,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i=0,1,0.15 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(0,0,0),.3)
end
for i=0,1,0.075 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(0,0,6*i),.3)
end
con1:disconnect()
con2:disconnect()
attack=false
end


mouse.Button1Down:connect(function()
    if attack==false then
        if attacktype==1 then
            attack=true
            attacktype=2
            attackone()
        elseif attacktype==2 then
            attack=true
            attacktype=3
            attacktwo()
        elseif attacktype==3 then
            attack=true
            attacktype=4
            attackthree()
        elseif attacktype==4 then
            attack=true
            attacktype=1
            attackone()
        end
    end
end)

mouse.KeyDown:connect(function(k)
    k=k:lower()
    if k == "r" and attack == false then
        Test()
    end
end)

local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -.8, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -.7, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -.9, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-10)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(10)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(10)),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(-10)),0.15)
RH.C0=clerp(RH.C0,cf(1.05,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.15)
LH.C0=clerp(LH.C0,cf(-1.05,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.15)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-10+5*math.cos(sine/30)),math.rad(-20),math.rad(30+5*math.cos(sine/30))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10+5*math.cos(sine/30)),math.rad(20),math.rad(-30-5*math.cos(sine/30))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end
end


