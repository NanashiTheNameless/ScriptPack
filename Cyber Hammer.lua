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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Handle",Vector3.new(0.446729511, 1.78691852, 0.446729511))
handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(-0.0698547363, -0.150375366, -1.06997299, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.80000001192093,"Light blue","Part",Vector3.new(0.446729511, 2.45701289, 0.446729511))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -2.12194824, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.223364741, 0.223364741, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(1.07514572, -0.569717407, 6.65945435, 0.707106829, -0.707106769, 1.66804292e-015, 0.707106769, 0.707106829, 4.10472431e-016, -1.46973229e-015, 8.89236576e-016, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.223364741, 0.22336477, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-0.569700241, 1.07513428, 6.65945435, 0.707106829, -0.707106769, 1.66804292e-015, 0.707106769, 0.707106829, 4.10472431e-016, -1.46973229e-015, 8.89236576e-016, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-3.78272247, 4.91989136, 0, -9.54897824e-023, 0.707106709, -0.707106888, 2.10195802e-021, 0.707106888, 0.707106709, 1, -1.41878732e-021, -1.55383e-021))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0.710752487, -0.710754395, 6.65621185, 0.707106829, -0.707106769, 1.66804292e-015, 0.707106769, 0.707106829, 4.10472431e-016, -1.46973229e-015, 8.89236576e-016, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-0.710737228, 0.710739136, 6.65621185, 0.707106829, -0.707106769, 1.66804292e-015, 0.707106769, 0.707106829, 4.10472431e-016, -1.46973229e-015, 8.89236576e-016, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-5.63065338, 4.49343872, 0, -9.54897824e-023, 0.707106709, -0.707106888, 2.10195802e-021, 0.707106888, 0.707106709, 1, -1.41878732e-021, -1.55383e-021))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-3.585289, 5.03834152, 0, -9.54897824e-023, 0.707106709, -0.707106888, 2.10195802e-021, 0.707106888, 0.707106709, 1, -1.41878732e-021, -1.55383e-021))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.223364741, 0.223364741, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0.561824799, -1.08303833, 6.65942383, 0.707106829, -0.707106769, 1.66804292e-015, 0.707106769, 0.707106829, 4.10472431e-016, -1.46973229e-015, 8.89236576e-016, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.223364741, 0.22336477, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-1.08302116, 0.561813354, 6.65942383, 0.707106829, -0.707106769, 1.66804292e-015, 0.707106769, 0.707106829, 4.10472431e-016, -1.46973229e-015, 8.89236576e-016, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-5.82806396, 4.37496758, 0, -9.54897824e-023, 0.707106709, -0.707106888, 2.10195802e-021, 0.707106888, 0.707106709, 1, -1.41878732e-021, -1.55383e-021))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(4.65925407, 5.32264709, 0, 0, 0.707106769, 0.707106829, 0, -0.707106829, 0.707106769, 1, 0, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 1.3401885))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-4.09067535, 4.75403976, 0, 0, 0.707106769, -0.707106829, 0, 0.707106829, 0.707106769, 1, 0, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(0.670094252, 1.34018838, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(6.65624237, 0, 1.00515366, -5.96046448e-008, -1.13686892e-013, 1, -1, -3.38813381e-021, -5.96046448e-008, 1.01644002e-020, -1, -1.13686892e-013))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.00999999, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(0.670094252, 1.34018838, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(6.65621185, 0, -1.00513458, -5.96046448e-008, -1.13686892e-013, 1, -1, -3.38813381e-021, -5.96046448e-008, 1.01644002e-020, -1, -1.13686892e-013))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.00999999, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(1.3401885, 1.3401885, 2.68037701))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65621185, 1.52587891e-005, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(1.3401885, 1.3401885, 1.34018862))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65621948, 1.52587891e-005, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.01999998, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(1.3401885, 1.3401885, 1.34018862))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65623474, 1.52587891e-005, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 1.00999999, 0.850000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.446729511, 6.92430687, 0.446729511))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -2.79199982, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00999999, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729511, 0.446730256, 0.446729511))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -4.24385834, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.00999999, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 0.446729511))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0.868694305, 0.868690491, 1.52587891e-005, 0, -0.707106769, -0.707106829, 0, 0.707106829, -0.707106769, 1, 0, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.600000024, 1.02499998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(0.670094252, 0.446729302, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-1.22851563, 0, 0, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1.01999998, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729511, 1.11682439, 0.446729511))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -5.69573212, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.00999999, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(0.446729511, 2.90374231, 0.446729511))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -4.80226898, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.223364741, 0.223364741, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-0.899150848, 1.10449219, 0, 0.707106829, 0, 0.707106769, 0.707106769, 0, -0.707106829, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 1.005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(0.670094252, 0.446729511, 0.670094311))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, 0, -1.22851563, 0, -1, 5.96046377e-008, 1, 0, 0, 0, 5.96046377e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.223364741, 0.223364741, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-0.843868256, 0.638572693, 0, 0.707106829, 0, 0.707106769, 0.707106769, 0, -0.707106829, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 1.005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.40000000596046,0,"Steel blue","Part",Vector3.new(0.446729481, 0.446729511, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-0.868690491, 0.86869812, 0, 0.707106829, 0, 0.707106769, 0.707106769, 0, -0.707106829, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 1.005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light blue","Part",Vector3.new(0.670094252, 0.446729511, 0.670094311))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, 0, -1.22691345, 0, -1, 5.96046377e-008, 1, 0, 0, 0, 5.96046377e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-0.491386414, 0, -6.96891785, 0, -0.99999994, -2.98023206e-008, -0.999999821, 0, 0, 0, 2.98023206e-008, -0.99999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.670094252, 1.34018838, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(6.65624237, 0, -1.00513458, -5.96046448e-008, -1.13686892e-013, 1, -1, -3.38813381e-021, -5.96046448e-008, 1.01644002e-020, -1, -1.13686892e-013))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.01499999, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.670094252, 1.34018838, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(6.65621185, 0, -1.00513458, -5.96046448e-008, -1.13686892e-013, 1, -1, -3.38813381e-021, -5.96046448e-008, 1.01644002e-020, -1, -1.13686892e-013))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.670094252, 1.34018838, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(6.65624237, 0, 1.00515366, -5.96046448e-008, -1.13686892e-013, 1, -1, -3.38813381e-021, -5.96046448e-008, 1.01644002e-020, -1, -1.13686892e-013))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-0.491386414, 0, -6.67855072, 0, -0.99999994, -2.98023206e-008, -0.999999821, 0, 0, 0, 2.98023206e-008, -0.99999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(1.3401885, 1.3401885, 1.34018862))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65621185, 1.52587891e-005, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.005, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(1.3401885, 1.3401885, 1.34018862))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65367126, 1.52587891e-005, -1, 0, 0, 0, 0, -1, -0, -1, -0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.01499999, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.670094252, 1.34018838, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(6.65628052, 0, 1.00515366, -5.96046448e-008, -1.13686892e-013, 1, -1, -3.38813381e-021, -5.96046448e-008, 1.01644002e-020, -1, -1.13686892e-013))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.01499999, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-4.39868164, 0, 5.34632492, 0, 0.707106769, -0.707106829, -1, 0, 0, 0, 0.707106829, 0.707106769))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(5.25157166, 0, 4.30393219, 0, 0.707106769, 0.707106829, -1, 0, 0, 0, -0.707106829, 0.707106769))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-4.16964531, 0, 5.10151672, 1.49011612e-008, -0.707106709, -0.707106888, 1, 5.56921513e-008, -3.46187186e-008, 6.38594315e-008, -0.707106829, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(4.32761955, 0, 4.75406647, 0, 0.707106769, 0.707106829, -1, 0, 0, 0, -0.707106829, 0.707106769))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(5.00678253, 0, 4.0749054, 1.49011612e-008, -0.707106709, 0.707106888, 1, 5.56921513e-008, 3.46187186e-008, -6.38594315e-008, 0.707106829, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(4.55662537, 0, 4.99887085, 1.49011612e-008, -0.707106709, 0.707106888, 1, 5.56921513e-008, 3.46187186e-008, -6.38594315e-008, 0.707106829, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0.480239868, 0, -6.34349823, 0, -0.99999994, -2.98023206e-008, -0.999999821, 0, 0, 0, 2.98023206e-008, -0.99999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-5.09362602, 0, 4.65138245, 1.49011612e-008, -0.707106709, -0.707106888, 1, 5.56921513e-008, -3.46187186e-008, 6.38594315e-008, -0.707106829, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0.480239868, 0, -6.63387299, 0, -0.99999994, -2.98023206e-008, -0.999999821, 0, 0, 0, 2.98023206e-008, -0.99999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.446729511, 1.3401885, 0.446729481))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(4.70665741, 0, -4.70665741, 0, -0.707106829, 0.707106769, -1, 0, 0, 0, -0.707106769, -0.707106829))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75999999, 1.005, 0.75999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.670094252, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(6.65621948, 0, 0.223377228, 0, -2.98023153e-008, 0.999999762, -0.999999464, 0, 0, 0, -0.999999762, -2.98023153e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.670094252, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(6.65621948, 0, -0.223358154, 0, -2.98023153e-008, 0.999999762, -0.999999464, 0, 0, 0, -0.999999762, -2.98023153e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.223364741, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-4.84880829, 0, 4.42235756, 0, 0.707106769, -0.707106829, -1, 0, 0, 0, 0.707106829, 0.707106769))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.446729511, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-4.93790436, 7.62939453e-006, 5.09473228, -1.24978101e-006, 0.707106948, -0.70710665, -1, -8.75421676e-007, 8.92035644e-007, 1.17481154e-008, 0.70710665, 0.707106948))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.446729511, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(4.4708786, 0, -4.31179047, 0, -0.707106888, 0.707106709, -1, 0, 0, 0, -0.707106709, -0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.446729511, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(4.46974373, 0, 4.31292725, 0, 0.707106709, 0.707106948, -1, 0, 0, 0, -0.707106948, 0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.446729511, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-4.93678284, 7.62939453e-006, -5.09585571, -1.17481438e-008, -0.70710665, -0.707106948, -1, -8.75421392e-007, 8.92035416e-007, -1.24978067e-006, 0.707106948, -0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 1.005, 0.150000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.893458962, 0.893458962, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65621185, 1.67523575, 1, 0, 0, -5.29395592e-023, 4.80898297e-016, -0.999999881, 0, 1, 4.80898244e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.949999988, 0.949999988, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(1.3401885, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65621185, 1.45185852, 1, 0, 0, -5.29395592e-023, 4.80898297e-016, -0.999999881, 0, 1, 4.80898244e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(1.3401885, 1.3401885, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65621185, -1.45187759, 1, 0, 0, -5.29395592e-023, 4.80898297e-016, -0.999999881, 0, 1, 4.80898244e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.893458962, 0.893458962, 0.223364741))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, -6.65621185, -1.67525101, 1, 0, 0, -5.29395592e-023, 4.80898297e-016, -0.999999881, 0, 1, 4.80898244e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.949999988, 0.949999988, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.670094252, 0.446729511, 0.670094311))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(0, 0, -1.22850037, 0, -1, 5.96046377e-008, 1, 0, 0, 0, 5.96046377e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.005, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.670094252, 0.446729302, 0.670094252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-1.22851563, 0, 0, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 1.01499999, 0.75))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Bright blue","Hitbox",Vector3.new(0.223364741, 1.46303916, 3.29463005))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, -0, -1, -0),CFrame.new(-0.122886658, -6.59224701, 0.284801483, -1, 0, 0, 0, 0, -1, -0, -1, -0))

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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Neon green"))
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


function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
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
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
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
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
--"http://www.roblox.com/asset/?id=168892465"
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

ring=function(way,way2,where,vector,rv1,rv2,rv3,c1,c2,color)
        local rng = Instance.new("Part", char.Torso)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new(tostring(color))
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = .5
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = where * CFrame.Angles(math.rad(way), math.rad(way2), 0)
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = vector--10,10,1
        for i = 1, 20, 1 do
                rngm.Scale = Vector3.new(rv1 + i*c1, rv2 + i*c2, rv3)--(10 + i*2, 10 + i*2, 1)
                rng.Transparency = i/20
                swait()
        end
        wait()
        rng:destroy''
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
                        attacktype=1
                        attackthree()
                end
        end
end)

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1.5,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(35),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(80),math.rad(-20),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505639",Hitbox,1,1) 
 for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(25),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(20),math.rad(0)),.3)
        end
attack=false
con1:disconnect()
end

function attacktwo()
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        attack=true
        for i=0,1.5,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(30),math.rad(0),math.rad(-40)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
--handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(80),math.rad(-20),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505662",Hitbox,1,1) 
 for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(20),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(30),math.rad(0),math.rad(-40)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
        end
attack=false
con1:disconnect()
end

function attackthree()
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        attack=true
        for i=0,1.5,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(math.rad(100),math.rad(15),math.rad(50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
--handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(80),math.rad(-20),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505649",Hitbox,1,1) 
 for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(20),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(math.rad(100),math.rad(15),math.rad(50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.4)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
        end
attack=false
con1:disconnect()
end


local sine = 0
local change = 1
local val = 0

local mananum=0
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
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(50),math.rad(0),math.rad(-40)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(40),math.rad(0),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~= nil then
local idleanim=0
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(math.rad(100),math.rad(15),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(-20),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(30),math.rad(0),math.rad(-40)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.3)*angles(math.rad(70),math.rad(-20),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end

