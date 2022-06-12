--Attack on Titan - 3DMG

function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

plr = game:service'Players'.LocalPlayer
plrgui = plr:findFirstChild'PlayerGui'
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
anim = char:findFirstChild("Animate")
if anim then
anim:Destroy()
end

local rm = Instance.new('Weld', torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = 'Right Shoulder'

local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = 'Left Shoulder'

local rlegm = Instance.new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl

local llegm = Instance.new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll

rj.C0 = CFrame.new()
rj.C1 = CFrame.new()

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)


local speed = 0.3
local angle = 0
local anglespeed = 1
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
neckc0 = neck.C0

function scan(parent)
    local parts,last = {}
        for _,v in pairs(parent:GetChildren()) do
            if (v:IsA("BasePart")) then
                if (last) then
                    local w = Instance.new("Weld")
                    w.Name = ("%s_Weld"):format(v.Name)
                    w.Part0,w.Part1 = last,v
                    w.C0 = last.CFrame:inverse()
                    w.C1 = v.CFrame:inverse()
                    w.Parent = last
                end
                last = v
                table.insert(parts,v)
            end
            scan(v)
        end
    for _,v in pairs(parts) do
        v.Anchored = false
        v.Locked = true
        v.CanCollide = false
    end
end

local BasePart = Instance.new('Part')
BasePart.FormFactor = 'Custom'
BasePart.Material = 'SmoothPlastic'
BasePart.CanCollide = false
BasePart.Locked = true
BasePart.TopSurface = 10
BasePart.BottomSurface = 10
BasePart.LeftSurface = 10
BasePart.RightSurface = 10
BasePart.FrontSurface = 10
BasePart.BackSurface = 10
BasePart:breakJoints()

local ThreeDMG = Instance.new('Model', char)
ThreeDMG.Name = '3DMG'

ThreeDMG.DescendantAdded:connect(function(obj)
    if obj:IsA'Part' then
        obj.Locked = true
    end
end)

-- 1 - Model
TorsoCover = Instance.new("Model")
TorsoCover.Parent = ThreeDMG

-- 2 - GrappleLauncher2
obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(11.7099972, 4.39004135, 61.0900536))*CFrame.new(0,-.25,0) * CFrame.Angles(1.570796251297, 7.105427357601e-015, 1.5707963705063)
obj2.FormFactor = Enum.FormFactor.Custom
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.SmoothPlastic
obj2.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BrickColor = BrickColor.new("Black")
obj2.Name = "GrappleLauncher2"
obj2.Parent = TorsoCover

-- 3 - Mesh
obj3 = Instance.new("CylinderMesh")
obj3.Scale = Vector3.new(0.949999988, 1.02999997, 0.949999988)
obj3.Parent = obj2

-- 4 - GrappleLaunchDec
obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(12.2099934, 4.39004135, 61.0900536))*CFrame.new(0,-.25,0) * CFrame.Angles(1.570796251297, 7.105427357601e-015, 1.5707963705063)
obj4.FormFactor = Enum.FormFactor.Custom
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.SmoothPlastic
obj4.Size = Vector3.new(0.200000003, 1.20000005, 0.400000006)
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Name = "GrappleLaunchDec"
obj4.Parent = TorsoCover

-- 5 - Mesh
obj5 = Instance.new("CylinderMesh")
obj5.Parent = obj4

-- 6 - GrappleLaunchDec
obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(12.2099934, 4.19004822, 61.0900536))*CFrame.new(0,-.25,0) * CFrame.Angles(-3.1415927410126, -8.7422776573476e-008, -3.1415927410126)
obj6.FormFactor = Enum.FormFactor.Custom
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.SmoothPlastic
obj6.Size = Vector3.new(1.20000005, 0.399999857, 0.200000003)
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Name = "GrappleLaunchDec"
obj6.Parent = TorsoCover

-- 7 - Mesh
obj7 = Instance.new("BlockMesh")
obj7.Parent = obj6

-- 8 - Container
obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(13.4265022, 4.64999676, 61.4250145)) * CFrame.Angles(-3.1415917873383, 1.0471988916397, 1.0471992492676)
obj8.FormFactor = Enum.FormFactor.Custom
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.SmoothPlastic
obj8.Size = Vector3.new(1, 0.200000003, 0.200000003)
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Name = "Container"
obj8.Parent = TorsoCover

-- 9 - Mesh
obj9 = Instance.new("BlockMesh")
obj9.Offset = Vector3.new(0, 0.335000008, 0.100000001)
obj9.Scale = Vector3.new(0.800000012, 0.5, 0.5)
obj9.Parent = obj8

-- 10 - Container
obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(13.3832054, 4.40000296, 60.9500122)) * CFrame.Angles(-3.1415915489197, 1.0471839904785, -2.0943953990936)
obj10.FormFactor = Enum.FormFactor.Custom
obj10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Material = Enum.Material.SmoothPlastic
obj10.Size = Vector3.new(1, 0.400000006, 1)
obj10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Name = "Container"
obj10.Parent = TorsoCover

-- 11 - Mesh
obj11 = Instance.new("CylinderMesh")
obj11.Parent = obj10

-- 12 - Back
obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(12.8999987, 4.08999014, 60.6000214)) * CFrame.Angles(0, 1.5707963705063, 0)
obj12.FormFactor = Enum.FormFactor.Custom
obj12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Material = Enum.Material.SmoothPlastic
obj12.Size = Vector3.new(0.799999952, 1, 0.200000003)
obj12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Name = "Back"
obj12.Parent = TorsoCover

-- 13 - Mesh
obj13 = Instance.new("BlockMesh")
obj13.Offset = Vector3.new(0, 0, -0.150000006)
obj13.Scale = Vector3.new(1.10000002, 1, 1)
obj13.Parent = obj12

-- 14 - Launcher
obj14 = Instance.new("Part")
obj14.CFrame = CFrame.new(Vector3.new(13.000001, 3.98998928, 60.0000305)) * CFrame.Angles(0, 1.5707963705063, 0)
obj14.FormFactor = Enum.FormFactor.Custom
obj14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Material = Enum.Material.SmoothPlastic
obj14.Size = Vector3.new(1.19999993, 0.400000036, 0.400000036)
obj14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Name = "Launcher"
obj14.Parent = TorsoCover

-- 15 - Mesh
obj15 = Instance.new("BlockMesh")
obj15.Parent = obj14

-- 16 - Back
obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(12.9000006, 3.88999033, 60.0000305)) * CFrame.Angles(0, 1.5707963705063, 0)
obj16.FormFactor = Enum.FormFactor.Custom
obj16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Material = Enum.Material.SmoothPlastic
obj16.Size = Vector3.new(0.399999976, 0.599999845, 0.200000003)
obj16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Name = "Back"
obj16.Parent = TorsoCover

-- 17 - Mesh
obj17 = Instance.new("BlockMesh")
obj17.Offset = Vector3.new(0, 0, -0.150000006)
obj17.Parent = obj16

-- 18 - Container
obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(13.772913, 4.64999723, 61.2250137)) * CFrame.Angles(-5.8087118759431e-007, -1.0471999645233, 2.0943918228149)
obj18.FormFactor = Enum.FormFactor.Custom
obj18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Material = Enum.Material.SmoothPlastic
obj18.Size = Vector3.new(1, 0.200000003, 0.200000003)
obj18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Name = "Container"
obj18.Parent = TorsoCover

-- 19 - Mesh
obj19 = Instance.new("BlockMesh")
obj19.Offset = Vector3.new(0, 0.335000008, 0.100000001)
obj19.Scale = Vector3.new(0.800000012, 0.5, 0.5)
obj19.Parent = obj18

-- 20 - TorsoWeld
obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(12.3000002, 4.58998966, 60.0000305)) * CFrame.Angles(0, 1.5707963705063, 0)
obj20.FormFactor = Enum.FormFactor.Custom
obj20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Transparency = 1
obj20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Material = Enum.Material.SmoothPlastic
obj20.Size = Vector3.new(2.00000024, 2, 1)
obj20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BrickColor = BrickColor.new("Bright bluish green")
obj20.Name = "TorsoWeld"
obj20.Parent = TorsoCover

-- 21 - Container
obj21 = Instance.new("Part")
obj21.CFrame = CFrame.new(Vector3.new(13.2099991, 4.19999886, 60.6500206)) * CFrame.Angles(1.1071488857269, 0.25268024206161, 2.6779448986053)
obj21.FormFactor = Enum.FormFactor.Custom
obj21.TopSurface = Enum.SurfaceType.Smooth
obj21.Size = Vector3.new(1, 0.799999833, 1)
obj21.BottomSurface = Enum.SurfaceType.Weld
obj21.Name = "Container"
obj21.Parent = TorsoCover

-- 22 - Mesh
obj22 = Instance.new("SpecialMesh")
obj22.VertexColor = Vector3.new(0, 0, 0)
obj22.MeshType = Enum.MeshType.FileMesh
obj22.Scale = Vector3.new(0.5, 0.550000012, 0.5)
obj22.MeshId = "http://www.roblox.com/asset/?id=1033714"
obj22.Parent = obj21

-- 23 - RopesTorso
obj23 = Instance.new("Part")
obj23.CFrame = CFrame.new(Vector3.new(12.3000002, 4.09002161, 60.0000191)) * CFrame.Angles(0, 1.5707963705063, 0)
obj23.FormFactor = Enum.FormFactor.Custom
obj23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.Material = Enum.Material.SmoothPlastic
obj23.Size = Vector3.new(2.01999998, 0.200000003, 1.01999998)
obj23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.BrickColor = BrickColor.new("Really black")
obj23.Name = "RopesTorso"
obj23.Parent = TorsoCover

-- 24 - GasHole
obj24 = Instance.new("Part")
obj24.CFrame = CFrame.new(Vector3.new(13.000001, 3.98999, 60.0000305)) * CFrame.Angles(0, 1.5707963705063, 0)
obj24.FormFactor = Enum.FormFactor.Custom
obj24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Material = Enum.Material.SmoothPlastic
obj24.Size = Vector3.new(1.19999993, 0.400000036, 0.400000036)
obj24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BrickColor = BrickColor.new("Black")
obj24.Name = "GasHole"
obj24.Parent = TorsoCover

-- 25 - Mesh
obj25 = Instance.new("BlockMesh")
obj25.Scale = Vector3.new(0.899999976, 0.899999976, 1.01999998)
obj25.Parent = obj24

-- 26 - Container
obj26 = Instance.new("Part")
obj26.CFrame = CFrame.new(Vector3.new(13.5131054, 4.54999733, 61.1750107)) * CFrame.Angles(-3.1415917873383, 1.0471988916397, 1.0471992492676)
obj26.FormFactor = Enum.FormFactor.Custom
obj26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Material = Enum.Material.SmoothPlastic
obj26.Size = Vector3.new(1, 0.200000003, 1)
obj26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.BrickColor = BrickColor.new("Black")
obj26.Name = "Container"
obj26.Parent = TorsoCover

-- 27 - Mesh
obj27 = Instance.new("CylinderMesh")
obj27.Offset = Vector3.new(0, 0.189999998, 0)
obj27.Scale = Vector3.new(0.800000012, 1, 0.800000012)
obj27.Parent = obj26

-- 28 - Container
obj28 = Instance.new("Part")
obj28.CFrame = CFrame.new(Vector3.new(13.213397, 4.18999958, 59.3500252)) * CFrame.Angles(2.0344445705414, 0.25268018245697, 0.46364787220955)
obj28.FormFactor = Enum.FormFactor.Custom
obj28.TopSurface = Enum.SurfaceType.Smooth
obj28.Size = Vector3.new(1, 0.799999833, 1)
obj28.BottomSurface = Enum.SurfaceType.Weld
obj28.Name = "Container"
obj28.Parent = TorsoCover

-- 29 - Mesh
obj29 = Instance.new("SpecialMesh")
obj29.VertexColor = Vector3.new(0, 0, 0)
obj29.MeshType = Enum.MeshType.FileMesh
obj29.Scale = Vector3.new(0.5, 0.550000012, 0.5)
obj29.MeshId = "http://www.roblox.com/asset/?id=1033714"
obj29.Parent = obj28

-- 30 - Container
obj30 = Instance.new("Part")
obj30.CFrame = CFrame.new(Vector3.new(13.4299059, 4.64000034, 58.5750351)) * CFrame.Angles(-1.1497707419039e-005, 1.0471869707108, 2.0944044589996)
obj30.FormFactor = Enum.FormFactor.Custom
obj30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Material = Enum.Material.SmoothPlastic
obj30.Size = Vector3.new(1, 0.200000003, 0.200000003)
obj30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Name = "Container"
obj30.Parent = TorsoCover

-- 31 - Mesh
obj31 = Instance.new("BlockMesh")
obj31.Offset = Vector3.new(0, 0.335000008, 0.100000001)
obj31.Scale = Vector3.new(0.800000012, 0.5, 0.5)
obj31.Parent = obj30

-- 32 - GrappleLaunchDec
obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(12.21, 4.19002151, 58.8900223))*CFrame.new(0,-.25,0) * CFrame.Angles(-3.1415927410126, -8.7422776573476e-008, -3.1415927410126)
obj32.FormFactor = Enum.FormFactor.Custom
obj32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Material = Enum.Material.SmoothPlastic
obj32.Size = Vector3.new(1.20000005, 0.399999857, 0.200000003)
obj32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Name = "GrappleLaunchDec"
obj32.Parent = TorsoCover

-- 33 - Mesh
obj33 = Instance.new("BlockMesh")
obj33.Parent = obj32

-- 34 - GrappleLaunchDec
obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(12.21, 4.39002132, 58.8900223))*CFrame.new(0,-.25,0) * CFrame.Angles(1.570796251297, 7.105427357601e-015, 1.5707963705063)
obj34.FormFactor = Enum.FormFactor.Custom
obj34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.Material = Enum.Material.SmoothPlastic
obj34.Size = Vector3.new(0.200000003, 1.20000005, 0.400000006)
obj34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.Name = "GrappleLaunchDec"
obj34.Parent = TorsoCover

-- 35 - Mesh
obj35 = Instance.new("CylinderMesh")
obj35.Parent = obj34

-- 36 - Back
obj36 = Instance.new("Part")
obj36.CFrame = CFrame.new(Vector3.new(12.9100008, 4.09002161, 59.4100189)) * CFrame.Angles(0, 1.5707963705063, 0)
obj36.FormFactor = Enum.FormFactor.Custom
obj36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.Material = Enum.Material.SmoothPlastic
obj36.Size = Vector3.new(0.799999952, 1, 0.200000003)
obj36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.Name = "Back"
obj36.Parent = TorsoCover

-- 37 - Mesh
obj37 = Instance.new("BlockMesh")
obj37.Offset = Vector3.new(0, 0, -0.150000006)
obj37.Scale = Vector3.new(1.04999995, 1, 1)
obj37.Parent = obj36

-- 38 - Container
obj38 = Instance.new("Part")
obj38.CFrame = CFrame.new(Vector3.new(13.3866034, 4.39000416, 59.0500336)) * CFrame.Angles(3.1415817737579, -1.0471912622452, 1.0471876859665)
obj38.FormFactor = Enum.FormFactor.Custom
obj38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.Material = Enum.Material.SmoothPlastic
obj38.Size = Vector3.new(1, 0.400000036, 1)
obj38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.Name = "Container"
obj38.Parent = TorsoCover

-- 39 - Mesh
obj39 = Instance.new("CylinderMesh")
obj39.Parent = obj38

-- 40 - Container
obj40 = Instance.new("Part")
obj40.CFrame = CFrame.new(Vector3.new(13.7763128, 4.64000702, 58.7750359)) * CFrame.Angles(3.1415817737579, -1.0471863746643, 1.0471882820129)
obj40.FormFactor = Enum.FormFactor.Custom
obj40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.Material = Enum.Material.SmoothPlastic
obj40.Size = Vector3.new(1, 0.200000003, 0.200000003)
obj40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.Name = "Container"
obj40.Parent = TorsoCover

-- 41 - Mesh
obj41 = Instance.new("BlockMesh")
obj41.Offset = Vector3.new(0, 0.335000008, 0.100000001)
obj41.Scale = Vector3.new(0.800000012, 0.5, 0.5)
obj41.Parent = obj40

-- 42 - Container
obj42 = Instance.new("Part")
obj42.CFrame = CFrame.new(Vector3.new(13.5165071, 4.54000425, 58.8250351)) * CFrame.Angles(3.1415817737579, -1.0471912622452, 1.0471876859665)
obj42.FormFactor = Enum.FormFactor.Custom
obj42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.Material = Enum.Material.SmoothPlastic
obj42.Size = Vector3.new(1, 0.200000003, 1)
obj42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.BrickColor = BrickColor.new("Black")
obj42.Name = "Container"
obj42.Parent = TorsoCover

-- 43 - Mesh
obj43 = Instance.new("CylinderMesh")
obj43.Offset = Vector3.new(0, 0.189999998, 0)
obj43.Scale = Vector3.new(0.800000012, 1, 0.800000012)
obj43.Parent = obj42

-- 44 - GrappleLauncher1
obj44 = Instance.new("Part")
obj44.CFrame = CFrame.new(Vector3.new(11.7099991, 4.39002132, 58.8900261))*CFrame.new(0,-.25,0) * CFrame.Angles(1.570796251297, 7.105427357601e-015, 1.5707963705063)
obj44.FormFactor = Enum.FormFactor.Custom
obj44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.Material = Enum.Material.SmoothPlastic
obj44.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
obj44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.BrickColor = BrickColor.new("Black")
obj44.Name = "GrappleLauncher1"
obj44.Parent = TorsoCover

-- 45 - Mesh
obj45 = Instance.new("CylinderMesh")
obj45.Scale = Vector3.new(0.949999988, 1.02999997, 0.949999988)
obj45.Parent = obj44


TorsoCover:MakeJoints()

scan(TorsoCover)

local RLegGrapple = obj44
local LLegGrapple = obj2

local Weld = Instance.new('Weld', torso)
Weld.Part0 = torso
Weld.Part1 = obj20


-- 1 - LlEG
LLeg = Instance.new("Model")
LLeg.Name = "LLeg"
LLeg.Parent = ThreeDMG

-- 2 - Gas1Dec
obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(11.9643402, 2.77527237, 55.0326691)) * CFrame.Angles(-1.111907543816e-008, -0.065990895032883, 1.4857813119888)
obj2.FormFactor = Enum.FormFactor.Custom
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.SmoothPlastic
obj2.Size = Vector3.new(0.600000262, 1.20000005, 0.200000003)
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BrickColor = BrickColor.new("Dark stone grey")
obj2.Shape = Enum.PartType.Block
obj2.Name = "Gas1Dec"
obj2.Parent = LLeg

-- 3 - Mesh
obj3 = Instance.new("BlockMesh")
obj3.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
obj3.Parent = obj2

-- 4 - BladeHole
obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(10.8923635, 2.9683156, 54.9613914)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj4.FormFactor = Enum.FormFactor.Custom
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.SmoothPlastic
obj4.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BrickColor = BrickColor.new("Black")
obj4.Shape = Enum.PartType.Block
obj4.Name = "BladeHole"
obj4.Parent = LLeg

-- 5 - Mesh
obj5 = Instance.new("BlockMesh")
obj5.Offset = Vector3.new(0.129999995, 0, 0)
obj5.Scale = Vector3.new(0.5, 0.699999988, 0.300000012)
obj5.Parent = obj4

-- 6 - Blade
obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(10.9055529, 2.9683156, 54.7618256)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj6.FormFactor = Enum.FormFactor.Custom
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.SmoothPlastic
obj6.Size = Vector3.new(0.600000024, 0.800000012, 0.200000003)
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Shape = Enum.PartType.Block
obj6.Name = "Blade"
obj6.Parent = LLeg

-- 7 - Mesh
obj7 = Instance.new("BlockMesh")
obj7.Offset = Vector3.new(0, 0, 0.0500000007)
obj7.Scale = Vector3.new(0.5, 0.649999976, 0.200000003)
obj7.Parent = obj6

-- 8 - BladeHole
obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(10.905551, 2.9683156, 54.7618256)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj8.FormFactor = Enum.FormFactor.Custom
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.SmoothPlastic
obj8.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BrickColor = BrickColor.new("Black")
obj8.Shape = Enum.PartType.Block
obj8.Name = "BladeHole"
obj8.Parent = LLeg

-- 9 - Mesh
obj9 = Instance.new("BlockMesh")
obj9.Offset = Vector3.new(0.129999995, 0, 0.0500000007)
obj9.Scale = Vector3.new(0.5, 0.699999988, 0.300000012)
obj9.Parent = obj8

-- 10 - Blade
obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(10.5078659, 3.00228047, 54.7355423)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj10.FormFactor = Enum.FormFactor.Custom
obj10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Material = Enum.Material.SmoothPlastic
obj10.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
obj10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Shape = Enum.PartType.Block
obj10.Name = "Blade"
obj10.Parent = LLeg

-- 11 - Mesh
obj11 = Instance.new("BlockMesh")
obj11.Offset = Vector3.new(0.150000006, 0, 0.0500000007)
obj11.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj11.Parent = obj10

-- 12 - Blade
obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(10.3005486, 2.91962433, 54.7218399)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj12.FormFactor = Enum.FormFactor.Custom
obj12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Material = Enum.Material.SmoothPlastic
obj12.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Shape = Enum.PartType.Block
obj12.Name = "Blade"
obj12.Parent = LLeg

-- 13 - Mesh
obj13 = Instance.new("BlockMesh")
obj13.Offset = Vector3.new(0.25, 0, 0.0500000007)
obj13.Scale = Vector3.new(1, 0.5, 0.601000011)
obj13.Parent = obj12

-- 14 - Blade
obj14 = Instance.new("Part")
obj14.CFrame = CFrame.new(Vector3.new(10.3174944, 3.11890197, 54.7229614)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj14.FormFactor = Enum.FormFactor.Custom
obj14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Material = Enum.Material.SmoothPlastic
obj14.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Shape = Enum.PartType.Block
obj14.Name = "Blade"
obj14.Parent = LLeg

-- 15 - Mesh
obj15 = Instance.new("BlockMesh")
obj15.Offset = Vector3.new(0.25, 0, 0.0500000007)
obj15.Scale = Vector3.new(1, 0.5, 0.601000011)
obj15.Parent = obj14

-- 16 - Gas1Rope2
obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(13.7298412, 2.92911792, 54.8482323)) * CFrame.Angles(-1.2177247299405e-006, -0.065992176532745, 1.4857813119888)
obj16.FormFactor = Enum.FormFactor.Custom
obj16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Material = Enum.Material.SmoothPlastic
obj16.Size = Vector3.new(1.59999967, 0.200000033, 0.799999833)
obj16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BrickColor = BrickColor.new("Dark stone grey")
obj16.Shape = Enum.PartType.Block
obj16.Name = "Gas1Rope2"
obj16.Parent = LLeg

-- 17 - Mesh
obj17 = Instance.new("BlockMesh")
obj17.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
obj17.Parent = obj16

-- 18 - Gas1Rope1
obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(12.5367804, 3.03101373, 54.7694054)) * CFrame.Angles(-1.2177247299405e-006, -0.065992176532745, 1.4857813119888)
obj18.FormFactor = Enum.FormFactor.Custom
obj18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Material = Enum.Material.SmoothPlastic
obj18.Size = Vector3.new(1.59999967, 0.200000003, 0.799999833)
obj18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BrickColor = BrickColor.new("Dark stone grey")
obj18.Shape = Enum.PartType.Block
obj18.Name = "Gas1Rope1"
obj18.Parent = LLeg

-- 19 - Mesh
obj19 = Instance.new("BlockMesh")
obj19.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
obj19.Parent = obj18

-- 20 - GasWelder1
obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(12.6023169, 2.82396388, 54.7737465)) * CFrame.Angles(-0, -0.065990895032883, -0.08501498401165)
obj20.FormFactor = Enum.FormFactor.Custom
obj20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Material = Enum.Material.SmoothPlastic
obj20.Size = Vector3.new(3.19999957, 1.20000005, 0.799999833)
obj20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Shape = Enum.PartType.Block
obj20.Name = "GasWelder1"
obj20.Parent = LLeg

-- 21 - GasBottle1
obj21 = Instance.new("Part")
obj21.CFrame = CFrame.new(Vector3.new(12.7525702, 3.41332483, 54.7847939)) * CFrame.Angles(-1.2177247299405e-006, -0.065992176532745, 1.4857813119888)
obj21.FormFactor = Enum.FormFactor.Custom
obj21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj21.Material = Enum.Material.SmoothPlastic
obj21.Size = Vector3.new(0.799999535, 3.00000024, 0.799999833)
obj21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj21.Shape = Enum.PartType.Block
obj21.Name = "GasBottle1"
obj21.Parent = LLeg

-- 22 - Mesh
obj22 = Instance.new("SpecialMesh")
obj22.Scale = Vector3.new(0.800000012, 1, 0.800000012)
obj22.Parent = obj21

-- 23 - Gas1Rope3
obj23 = Instance.new("Part")
obj23.CFrame = CFrame.new(Vector3.new(11.4559221, 2.91736746, 54.6997261)) * CFrame.Angles(-1.111907543816e-008, -0.065990895032883, 1.4857813119888)
obj23.FormFactor = Enum.FormFactor.Custom
obj23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.Material = Enum.Material.SmoothPlastic
obj23.Size = Vector3.new(1.20000029, 0.200000003, 0.799999833)
obj23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj23.BrickColor = BrickColor.new("Dark stone grey")
obj23.Shape = Enum.PartType.Block
obj23.Name = "Gas1Rope3"
obj23.Parent = LLeg

-- 24 - Mesh
obj24 = Instance.new("BlockMesh")
obj24.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
obj24.Parent = obj23

-- 25 - Blade
obj25 = Instance.new("Part")
obj25.CFrame = CFrame.new(Vector3.new(10.9187403, 2.9683156, 54.5622597)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj25.FormFactor = Enum.FormFactor.Custom
obj25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj25.Material = Enum.Material.SmoothPlastic
obj25.Size = Vector3.new(0.600000024, 0.800000012, 0.200000003)
obj25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj25.Shape = Enum.PartType.Block
obj25.Name = "Blade"
obj25.Parent = LLeg

-- 26 - Mesh
obj26 = Instance.new("BlockMesh")
obj26.Offset = Vector3.new(0, 0, -0.0500000007)
obj26.Scale = Vector3.new(0.5, 0.649999976, 0.200000003)
obj26.Parent = obj25

-- 27 - GasBottle2
obj27 = Instance.new("Part")
obj27.CFrame = CFrame.new(Vector3.new(11.2697248, 3.64033937, 54.6856728)) * CFrame.Angles(-6.5335172827474e-009, -0.065990619361401, 1.4857815504074)
obj27.FormFactor = Enum.FormFactor.Custom
obj27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj27.Material = Enum.Material.SmoothPlastic
obj27.Size = Vector3.new(0.200000003, 0.799998164, 0.400000006)
obj27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj27.Shape = Enum.PartType.Block
obj27.Name = "GasBottle2"
obj27.Parent = LLeg

-- 28 - Mesh
obj28 = Instance.new("CylinderMesh")
obj28.Parent = obj27

-- 29 - BladeHole
obj29 = Instance.new("Part")
obj29.CFrame = CFrame.new(Vector3.new(10.9187403, 2.9683156, 54.5622597)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj29.FormFactor = Enum.FormFactor.Custom
obj29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj29.Material = Enum.Material.SmoothPlastic
obj29.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
obj29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj29.BrickColor = BrickColor.new("Black")
obj29.Shape = Enum.PartType.Block
obj29.Name = "BladeHole"
obj29.Parent = LLeg

-- 30 - Mesh
obj30 = Instance.new("BlockMesh")
obj30.Offset = Vector3.new(0.129999995, 0, -0.0500000007)
obj30.Scale = Vector3.new(0.5, 0.699999988, 0.300000012)
obj30.Parent = obj29

-- 31 - Blade
obj31 = Instance.new("Part")
obj31.CFrame = CFrame.new(Vector3.new(10.313736, 2.91962433, 54.522274)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj31.FormFactor = Enum.FormFactor.Custom
obj31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj31.Material = Enum.Material.SmoothPlastic
obj31.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj31.Shape = Enum.PartType.Block
obj31.Name = "Blade"
obj31.Parent = LLeg

-- 32 - Mesh
obj32 = Instance.new("BlockMesh")
obj32.Offset = Vector3.new(0.25, 0, -0.0500000007)
obj32.Scale = Vector3.new(1, 0.5, 0.601000011)
obj32.Parent = obj31

-- 33 - Blade
obj33 = Instance.new("Part")
obj33.CFrame = CFrame.new(Vector3.new(10.5210533, 3.00228047, 54.5359764)) * CFrame.Angles(-0, -0.065990895032883, -0.08501498401165)
obj33.FormFactor = Enum.FormFactor.Custom
obj33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.Material = Enum.Material.SmoothPlastic
obj33.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
obj33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.Shape = Enum.PartType.Block
obj33.Name = "Blade"
obj33.Parent = LLeg

-- 34 - Mesh
obj34 = Instance.new("BlockMesh")
obj34.Offset = Vector3.new(0.150000006, 0, -0.0500000007)
obj34.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj34.Parent = obj33

-- 35 - Blade
obj35 = Instance.new("Part")
obj35.CFrame = CFrame.new(Vector3.new(10.3306818, 3.11890197, 54.5233955)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj35.FormFactor = Enum.FormFactor.Custom
obj35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.Material = Enum.Material.SmoothPlastic
obj35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.Shape = Enum.PartType.Block
obj35.Name = "Blade"
obj35.Parent = LLeg

-- 36 - Mesh
obj36 = Instance.new("BlockMesh")
obj36.Offset = Vector3.new(0.25, 0, -0.0500000007)
obj36.Scale = Vector3.new(1, 0.5, 0.601000011)
obj36.Parent = obj35

-- 37 - GasBottle2
obj37 = Instance.new("Part")
obj37.CFrame = CFrame.new(Vector3.new(10.8654394, 3.67430425, 54.7591705)) * CFrame.Angles(0.91223698854446, 1.4631433486938, 0.66136556863785)
obj37.FormFactor = Enum.FormFactor.Custom
obj37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Material = Enum.Material.SmoothPlastic
obj37.Size = Vector3.new(0.200000003, 0.599998176, 0.400000036)
obj37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Shape = Enum.PartType.Block
obj37.Name = "GasBottle2"
obj37.Parent = LLeg

-- 38 - Mesh
obj38 = Instance.new("CylinderMesh")
obj38.Parent = obj37

-- 39 - Blade
obj39 = Instance.new("Part")
obj39.CFrame = CFrame.new(Vector3.new(10.3269224, 2.91962433, 54.3227272)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj39.FormFactor = Enum.FormFactor.Custom
obj39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj39.Material = Enum.Material.SmoothPlastic
obj39.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj39.Shape = Enum.PartType.Block
obj39.Name = "Blade"
obj39.Parent = LLeg

-- 40 - Mesh
obj40 = Instance.new("BlockMesh")
obj40.Offset = Vector3.new(0.25, 0, 0)
obj40.Scale = Vector3.new(1, 0.5, 0.601000011)
obj40.Parent = obj39

-- 41 - Blade
obj41 = Instance.new("Part")
obj41.CFrame = CFrame.new(Vector3.new(10.5342398, 3.00228071, 54.3364296)) * CFrame.Angles(-0, -0.065990895032883, -0.08501498401165)
obj41.FormFactor = Enum.FormFactor.Custom
obj41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj41.Material = Enum.Material.SmoothPlastic
obj41.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
obj41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj41.Shape = Enum.PartType.Block
obj41.Name = "Blade"
obj41.Parent = LLeg

-- 42 - Mesh
obj42 = Instance.new("BlockMesh")
obj42.Offset = Vector3.new(0.150000006, 0, 0)
obj42.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj42.Parent = obj41

-- 43 - Blade
obj43 = Instance.new("Part")
obj43.CFrame = CFrame.new(Vector3.new(10.3438702, 3.11890197, 54.3238297)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj43.FormFactor = Enum.FormFactor.Custom
obj43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj43.Material = Enum.Material.SmoothPlastic
obj43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj43.Shape = Enum.PartType.Block
obj43.Name = "Blade"
obj43.Parent = LLeg

-- 44 - Mesh
obj44 = Instance.new("BlockMesh")
obj44.Offset = Vector3.new(0.25, 0, 0)
obj44.Scale = Vector3.new(1, 0.5, 0.601000011)
obj44.Parent = obj43

-- 45 - Blade
obj45 = Instance.new("Part")
obj45.CFrame = CFrame.new(Vector3.new(10.9319267, 2.96831584, 54.3627129)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj45.FormFactor = Enum.FormFactor.Custom
obj45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj45.Material = Enum.Material.SmoothPlastic
obj45.Size = Vector3.new(0.600000024, 0.800000012, 0.200000003)
obj45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj45.Shape = Enum.PartType.Block
obj45.Name = "Blade"
obj45.Parent = LLeg

-- 46 - Mesh
obj46 = Instance.new("BlockMesh")
obj46.Scale = Vector3.new(0.5, 0.649999976, 0.200000003)
obj46.Parent = obj45

-- 47 - BladeHole
obj47 = Instance.new("Part")
obj47.CFrame = CFrame.new(Vector3.new(10.9319296, 2.9683156, 54.3626976)) * CFrame.Angles(9.3335417172824e-010, -0.065990895032883, -0.08501498401165)
obj47.FormFactor = Enum.FormFactor.Custom
obj47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj47.Material = Enum.Material.SmoothPlastic
obj47.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
obj47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj47.BrickColor = BrickColor.new("Black")
obj47.Shape = Enum.PartType.Block
obj47.Name = "BladeHole"
obj47.Parent = LLeg

-- 48 - Mesh
obj48 = Instance.new("BlockMesh")
obj48.Offset = Vector3.new(0.129999995, 0, 0)
obj48.Scale = Vector3.new(0.5, 0.699999988, 0.300000012)
obj48.Parent = obj47

-- 49 - LLWeld
obj49 = Instance.new("Part")
obj49.CFrame = CFrame.new(Vector3.new(12.3000002, 2.59001017, 53.900013)) * CFrame.Angles(0, 1.5707963705063, 0)
obj49.FormFactor = Enum.FormFactor.Custom
obj49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj49.Transparency = 1
obj49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj49.Material = Enum.Material.SmoothPlastic
obj49.Size = Vector3.new(1, 2, 0.999999821)
obj49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj49.BrickColor = BrickColor.new("Bright blue")
obj49.Shape = Enum.PartType.Block
obj49.Name = "LLWeld"
obj49.Parent = LLeg

-- 50 - RopesLeg
obj50 = Instance.new("Part")
obj50.CFrame = CFrame.new(Vector3.new(12.3000002, 2.89001489, 53.9000168)) * CFrame.Angles(0, 1.5707963705063, 0)
obj50.FormFactor = Enum.FormFactor.Custom
obj50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.Material = Enum.Material.SmoothPlastic
obj50.Size = Vector3.new(1, 0.200000003, 1.01999998)
obj50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.BrickColor = BrickColor.new("Really black")
obj50.Shape = Enum.PartType.Block
obj50.Name = "RopesLeg"
obj50.Parent = LLeg

-- 51 - RopesLeg
obj51 = Instance.new("Part")
obj51.CFrame = CFrame.new(Vector3.new(12.3000002, 3.29001856, 53.9000168)) * CFrame.Angles(0, 1.5707963705063, 0)
obj51.FormFactor = Enum.FormFactor.Custom
obj51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj51.Material = Enum.Material.SmoothPlastic
obj51.Size = Vector3.new(1, 0.200000003, 1.01999998)
obj51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj51.BrickColor = BrickColor.new("Really black")
obj51.Shape = Enum.PartType.Block
obj51.Name = "RopesLeg"
obj51.Parent = LLeg


LLeg:MakeJoints()

scan(LLeg)

local Weld = Instance.new('Weld', torso)
Weld.Part0 = obj49
Weld.Part1 = ll

-- 1 - RLEG
RLeg = Instance.new("Model")
RLeg.Name = "RLEG"
RLeg.Parent = ThreeDMG

-- 2 - GasBottle2
obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(12.7525702, 3.41332483, 49.2163391)) * CFrame.Angles(-1.8667081214119e-009, 0.065990835428238, 1.4857813119888)
obj2.FormFactor = Enum.FormFactor.Custom
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.SmoothPlastic
obj2.Size = Vector3.new(0.799999595, 2.99999857, 0.799999833)
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Shape = Enum.PartType.Block
obj2.Name = "GasBottle2"
obj2.Parent = RLeg

-- 3 - Mesh
obj3 = Instance.new("SpecialMesh")
obj3.Scale = Vector3.new(0.800000012, 1, 0.800000012)
obj3.Parent = obj2

-- 4 - Gas1Dec
obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(11.9643421, 2.7752769, 48.9673538)) * CFrame.Angles(1.111229441797e-009, 0.065990775823593, 1.4857813119888)
obj4.FormFactor = Enum.FormFactor.Custom
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.SmoothPlastic
obj4.Size = Vector3.new(0.600000262, 1.20000005, 0.200000003)
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BrickColor = BrickColor.new("Dark stone grey")
obj4.Shape = Enum.PartType.Block
obj4.Name = "Gas1Dec"
obj4.Parent = RLeg

-- 5 - Mesh
obj5 = Instance.new("BlockMesh")
obj5.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
obj5.Parent = obj4

-- 6 - Gas2Rope2
obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(13.7128983, 2.92984128, 49.1528816)) * CFrame.Angles(-9.3335401629702e-009, 0.065990880131721, 1.4857813119888)
obj6.FormFactor = Enum.FormFactor.Custom
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.SmoothPlastic
obj6.Size = Vector3.new(1.60000038, 0.200000003, 0.799999833)
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BrickColor = BrickColor.new("Dark stone grey")
obj6.Shape = Enum.PartType.Block
obj6.Name = "Gas2Rope2"
obj6.Parent = RLeg

-- 7 - Mesh
obj7 = Instance.new("BlockMesh")
obj7.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
obj7.Parent = obj6

-- 8 - Gas2Rope1
obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(12.5198412, 3.03173685, 49.2317314)) * CFrame.Angles(-9.3335401629702e-009, 0.065990880131721, 1.4857813119888)
obj8.FormFactor = Enum.FormFactor.Custom
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.SmoothPlastic
obj8.Size = Vector3.new(1.60000038, 0.200000003, 0.799999833)
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BrickColor = BrickColor.new("Dark stone grey")
obj8.Shape = Enum.PartType.Block
obj8.Name = "Gas2Rope1"
obj8.Parent = RLeg

-- 9 - Mesh
obj9 = Instance.new("BlockMesh")
obj9.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
obj9.Parent = obj8

-- 10 - GasWelder2
obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(12.6023169, 2.82396531, 49.2262878)) * CFrame.Angles(-0, 0.065990895032883, -0.08501498401165)
obj10.FormFactor = Enum.FormFactor.Custom
obj10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Material = Enum.Material.SmoothPlastic
obj10.Size = Vector3.new(3.19999957, 1.20000005, 0.799999833)
obj10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Shape = Enum.PartType.Block
obj10.Name = "GasWelder2"
obj10.Parent = RLeg

-- 11 - Gas1Rope3
obj11 = Instance.new("Part")
obj11.CFrame = CFrame.new(Vector3.new(11.4559202, 2.91736937, 49.3003082)) * CFrame.Angles(8.5780618164222e-009, 0.065990775823593, 1.4857813119888)
obj11.FormFactor = Enum.FormFactor.Custom
obj11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.Material = Enum.Material.SmoothPlastic
obj11.Size = Vector3.new(1.20000029, 0.200000003, 0.799999833)
obj11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj11.BrickColor = BrickColor.new("Dark stone grey")
obj11.Shape = Enum.PartType.Block
obj11.Name = "Gas1Rope3"
obj11.Parent = RLeg

-- 12 - Mesh
obj12 = Instance.new("BlockMesh")
obj12.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
obj12.Parent = obj11

-- 13 - BladeHole
obj13 = Instance.new("Part")
obj13.CFrame = CFrame.new(Vector3.new(10.8923616, 2.96831703, 49.0386505)) * CFrame.Angles(-0, 0.065990895032883, -0.08501498401165)
obj13.FormFactor = Enum.FormFactor.Custom
obj13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.Material = Enum.Material.SmoothPlastic
obj13.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
obj13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj13.BrickColor = BrickColor.new("Black")
obj13.Shape = Enum.PartType.Block
obj13.Name = "BladeHole"
obj13.Parent = RLeg

-- 14 - Mesh
obj14 = Instance.new("BlockMesh")
obj14.Offset = Vector3.new(0.129999995, 0, 0)
obj14.Scale = Vector3.new(0.5, 0.699999988, 0.300000012)
obj14.Parent = obj13

-- 15 - Blade
obj15 = Instance.new("Part")
obj15.CFrame = CFrame.new(Vector3.new(10.9319286, 2.96831703, 49.6373444)) * CFrame.Angles(-0, 0.065990895032883, -0.085014991462231)
obj15.FormFactor = Enum.FormFactor.Custom
obj15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.Material = Enum.Material.SmoothPlastic
obj15.Size = Vector3.new(0.600000083, 0.800000012, 0.200000003)
obj15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj15.Shape = Enum.PartType.Block
obj15.Name = "Blade"
obj15.Parent = RLeg

-- 16 - Mesh
obj16 = Instance.new("BlockMesh")
obj16.Scale = Vector3.new(0.5, 0.649999976, 0.200000003)
obj16.Parent = obj15

-- 17 - Blade
obj17 = Instance.new("Part")
obj17.CFrame = CFrame.new(Vector3.new(10.9187393, 2.96831703, 49.4377785)) * CFrame.Angles(-0, 0.065990895032883, -0.085014991462231)
obj17.FormFactor = Enum.FormFactor.Custom
obj17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.Material = Enum.Material.SmoothPlastic
obj17.Size = Vector3.new(0.600000024, 0.800000012, 0.200000003)
obj17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj17.Shape = Enum.PartType.Block
obj17.Name = "Blade"
obj17.Parent = RLeg

-- 18 - Mesh
obj18 = Instance.new("BlockMesh")
obj18.Offset = Vector3.new(0, 0, 0.0500000007)
obj18.Scale = Vector3.new(0.5, 0.649999976, 0.200000003)
obj18.Parent = obj17

-- 19 - RLWeld
obj19 = Instance.new("Part")
obj19.CFrame = CFrame.new(Vector3.new(12.3000002, 2.59001064, 50.1000023)) * CFrame.Angles(0, 1.5707963705063, 0)
obj19.FormFactor = Enum.FormFactor.Custom
obj19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.Transparency = 1
obj19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.Material = Enum.Material.SmoothPlastic
obj19.Size = Vector3.new(1, 1.99999976, 0.999999821)
obj19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.BrickColor = BrickColor.new("Bright blue")
obj19.Shape = Enum.PartType.Block
obj19.Name = "RLWeld"
obj19.Parent = RLeg

-- 20 - Blade
obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(10.9055519, 2.96831703, 49.238224)) * CFrame.Angles(-0, 0.065990895032883, -0.085014991462231)
obj20.FormFactor = Enum.FormFactor.Custom
obj20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Material = Enum.Material.SmoothPlastic
obj20.Size = Vector3.new(0.600000024, 0.800000012, 0.200000003)
obj20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Shape = Enum.PartType.Block
obj20.Name = "Blade"
obj20.Parent = RLeg

-- 21 - Mesh
obj21 = Instance.new("BlockMesh")
obj21.Offset = Vector3.new(0, 0, -0.0500000007)
obj21.Scale = Vector3.new(0.5, 0.649999976, 0.200000003)
obj21.Parent = obj20

-- 22 - Blade
obj22 = Instance.new("Part")
obj22.CFrame = CFrame.new(Vector3.new(10.5210514, 3.0022819, 49.4640617)) * CFrame.Angles(2.800062626207e-009, 0.065990924835205, -0.08501498401165)
obj22.FormFactor = Enum.FormFactor.Custom
obj22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Material = Enum.Material.SmoothPlastic
obj22.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
obj22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Shape = Enum.PartType.Block
obj22.Name = "Blade"
obj22.Parent = RLeg

-- 23 - Mesh
obj23 = Instance.new("BlockMesh")
obj23.Offset = Vector3.new(0.150000006, 0, 0.0500000007)
obj23.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj23.Parent = obj22

-- 24 - Blade
obj24 = Instance.new("Part")
obj24.CFrame = CFrame.new(Vector3.new(10.5342407, 3.0022819, 49.6636276)) * CFrame.Angles(2.800062626207e-009, 0.065990924835205, -0.08501498401165)
obj24.FormFactor = Enum.FormFactor.Custom
obj24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Material = Enum.Material.SmoothPlastic
obj24.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
obj24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Shape = Enum.PartType.Block
obj24.Name = "Blade"
obj24.Parent = RLeg

-- 25 - Mesh
obj25 = Instance.new("BlockMesh")
obj25.Offset = Vector3.new(0.150000006, 0, 0)
obj25.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj25.Parent = obj24

-- 26 - Blade
obj26 = Instance.new("Part")
obj26.CFrame = CFrame.new(Vector3.new(10.3137341, 2.91962576, 49.4777603)) * CFrame.Angles(1.8667083434565e-009, 0.065990924835205, -0.085014976561069)
obj26.FormFactor = Enum.FormFactor.Custom
obj26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Material = Enum.Material.SmoothPlastic
obj26.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Shape = Enum.PartType.Block
obj26.Name = "Blade"
obj26.Parent = RLeg

-- 27 - Mesh
obj27 = Instance.new("BlockMesh")
obj27.Offset = Vector3.new(0.25, 0, 0.0500000007)
obj27.Scale = Vector3.new(1, 0.5, 0.601000011)
obj27.Parent = obj26

-- 28 - Blade
obj28 = Instance.new("Part")
obj28.CFrame = CFrame.new(Vector3.new(10.3005466, 2.91962576, 49.2782059)) * CFrame.Angles(1.8667083434565e-009, 0.065990924835205, -0.085014976561069)
obj28.FormFactor = Enum.FormFactor.Custom
obj28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.Material = Enum.Material.SmoothPlastic
obj28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.Shape = Enum.PartType.Block
obj28.Name = "Blade"
obj28.Parent = RLeg

-- 29 - Mesh
obj29 = Instance.new("BlockMesh")
obj29.Offset = Vector3.new(0.25, 0, -0.0500000007)
obj29.Scale = Vector3.new(1, 0.5, 0.601000011)
obj29.Parent = obj28

-- 30 - Blade
obj30 = Instance.new("Part")
obj30.CFrame = CFrame.new(Vector3.new(10.507864, 3.0022819, 49.2645073)) * CFrame.Angles(2.800062626207e-009, 0.065990924835205, -0.08501498401165)
obj30.FormFactor = Enum.FormFactor.Custom
obj30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Material = Enum.Material.SmoothPlastic
obj30.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
obj30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Shape = Enum.PartType.Block
obj30.Name = "Blade"
obj30.Parent = RLeg

-- 31 - Mesh
obj31 = Instance.new("BlockMesh")
obj31.Offset = Vector3.new(0.150000006, 0, -0.0500000007)
obj31.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj31.Parent = obj30

-- 32 - Blade
obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(10.3174925, 3.1189034, 49.2770882)) * CFrame.Angles(1.8667083434565e-009, 0.065990924835205, -0.085014976561069)
obj32.FormFactor = Enum.FormFactor.Custom
obj32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Material = Enum.Material.SmoothPlastic
obj32.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Shape = Enum.PartType.Block
obj32.Name = "Blade"
obj32.Parent = RLeg

-- 33 - Mesh
obj33 = Instance.new("BlockMesh")
obj33.Offset = Vector3.new(0.25, 0, -0.0500000007)
obj33.Scale = Vector3.new(1, 0.5, 0.601000011)
obj33.Parent = obj32

-- 34 - Blade
obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(10.3306799, 3.1189034, 49.4766426)) * CFrame.Angles(1.8667083434565e-009, 0.065990924835205, -0.085014976561069)
obj34.FormFactor = Enum.FormFactor.Custom
obj34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.Material = Enum.Material.SmoothPlastic
obj34.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.Shape = Enum.PartType.Block
obj34.Name = "Blade"
obj34.Parent = RLeg

-- 35 - Mesh
obj35 = Instance.new("BlockMesh")
obj35.Offset = Vector3.new(0.25, 0, 0.0500000007)
obj35.Scale = Vector3.new(1, 0.5, 0.601000011)
obj35.Parent = obj34

-- 36 - RopesLeg
obj36 = Instance.new("Part")
obj36.CFrame = CFrame.new(Vector3.new(12.3000002, 3.29001808, 50.1000023)) * CFrame.Angles(0, 1.5707963705063, 0)
obj36.FormFactor = Enum.FormFactor.Custom
obj36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.Material = Enum.Material.SmoothPlastic
obj36.Size = Vector3.new(1, 0.200000003, 1.01999998)
obj36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BrickColor = BrickColor.new("Really black")
obj36.Shape = Enum.PartType.Block
obj36.Name = "RopesLeg"
obj36.Parent = RLeg

-- 37 - RopesLeg
obj37 = Instance.new("Part")
obj37.CFrame = CFrame.new(Vector3.new(12.3000002, 2.89001369, 50.1000023)) * CFrame.Angles(0, 1.5707963705063, 0)
obj37.FormFactor = Enum.FormFactor.Custom
obj37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Material = Enum.Material.SmoothPlastic
obj37.Size = Vector3.new(1, 0.200000003, 1.01999998)
obj37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.BrickColor = BrickColor.new("Really black")
obj37.Shape = Enum.PartType.Block
obj37.Name = "RopesLeg"
obj37.Parent = RLeg

-- 38 - GasBottle2
obj38 = Instance.new("Part")
obj38.CFrame = CFrame.new(Vector3.new(10.8654356, 3.67430615, 49.2408943)) * CFrame.Angles(-0.91224044561386, -1.463220000267, 0.66136401891708)
obj38.FormFactor = Enum.FormFactor.Custom
obj38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.Material = Enum.Material.SmoothPlastic
obj38.Size = Vector3.new(0.200000003, 0.599998176, 0.400000006)
obj38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.Shape = Enum.PartType.Block
obj38.Name = "GasBottle2"
obj38.Parent = RLeg

-- 39 - Mesh
obj39 = Instance.new("CylinderMesh")
obj39.Parent = obj38

-- 40 - GasBottle2
obj40 = Instance.new("Part")
obj40.CFrame = CFrame.new(Vector3.new(11.1702948, 3.64883232, 49.320961)) * CFrame.Angles(-1.8667081214119e-009, 0.065990835428238, 1.4857813119888)
obj40.FormFactor = Enum.FormFactor.Custom
obj40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.Material = Enum.Material.SmoothPlastic
obj40.Size = Vector3.new(0.200000003, 0.599998176, 0.400000006)
obj40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj40.Shape = Enum.PartType.Block
obj40.Name = "GasBottle2"
obj40.Parent = RLeg

-- 41 - Mesh
obj41 = Instance.new("CylinderMesh")
obj41.Parent = obj40

-- 42 - BladeHole
obj42 = Instance.new("Part")
obj42.CFrame = CFrame.new(Vector3.new(10.9319296, 2.96831703, 49.6373405)) * CFrame.Angles(-0, 0.065990895032883, -0.08501498401165)
obj42.FormFactor = Enum.FormFactor.Custom
obj42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.Material = Enum.Material.SmoothPlastic
obj42.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
obj42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj42.BrickColor = BrickColor.new("Black")
obj42.Shape = Enum.PartType.Block
obj42.Name = "BladeHole"
obj42.Parent = RLeg

-- 43 - Mesh
obj43 = Instance.new("BlockMesh")
obj43.Offset = Vector3.new(0.129999995, 0, 0)
obj43.Scale = Vector3.new(0.5, 0.699999988, 0.300000012)
obj43.Parent = obj42

-- 44 - BladeHole
obj44 = Instance.new("Part")
obj44.CFrame = CFrame.new(Vector3.new(10.9055529, 2.96831703, 49.2382088)) * CFrame.Angles(-0, 0.065990895032883, -0.08501498401165)
obj44.FormFactor = Enum.FormFactor.Custom
obj44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.Material = Enum.Material.SmoothPlastic
obj44.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
obj44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj44.BrickColor = BrickColor.new("Black")
obj44.Shape = Enum.PartType.Block
obj44.Name = "BladeHole"
obj44.Parent = RLeg

-- 45 - Mesh
obj45 = Instance.new("BlockMesh")
obj45.Offset = Vector3.new(0.129999995, 0, -0.0500000007)
obj45.Scale = Vector3.new(0.5, 0.699999988, 0.300000012)
obj45.Parent = obj44

-- 46 - BladeHole
obj46 = Instance.new("Part")
obj46.CFrame = CFrame.new(Vector3.new(10.9187403, 2.96831703, 49.4377747)) * CFrame.Angles(-0, 0.065990895032883, -0.08501498401165)
obj46.FormFactor = Enum.FormFactor.Custom
obj46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj46.Material = Enum.Material.SmoothPlastic
obj46.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
obj46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj46.BrickColor = BrickColor.new("Black")
obj46.Shape = Enum.PartType.Block
obj46.Name = "BladeHole"
obj46.Parent = RLeg

-- 47 - Mesh
obj47 = Instance.new("BlockMesh")
obj47.Offset = Vector3.new(0.129999995, 0, 0.0500000007)
obj47.Scale = Vector3.new(0.5, 0.699999988, 0.300000012)
obj47.Parent = obj46

-- 48 - Blade
obj48 = Instance.new("Part")
obj48.CFrame = CFrame.new(Vector3.new(10.3269234, 2.91962576, 49.6773262)) * CFrame.Angles(1.8667083434565e-009, 0.065990924835205, -0.085014976561069)
obj48.FormFactor = Enum.FormFactor.Custom
obj48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj48.Material = Enum.Material.SmoothPlastic
obj48.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj48.Shape = Enum.PartType.Block
obj48.Name = "Blade"
obj48.Parent = RLeg

-- 49 - Mesh
obj49 = Instance.new("BlockMesh")
obj49.Offset = Vector3.new(0.25, 0, 0)
obj49.Scale = Vector3.new(1, 0.5, 0.601000011)
obj49.Parent = obj48

-- 50 - Blade
obj50 = Instance.new("Part")
obj50.CFrame = CFrame.new(Vector3.new(10.3438692, 3.1189034, 49.6762085)) * CFrame.Angles(1.8667083434565e-009, 0.065990924835205, -0.085014976561069)
obj50.FormFactor = Enum.FormFactor.Custom
obj50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.Material = Enum.Material.SmoothPlastic
obj50.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj50.Shape = Enum.PartType.Block
obj50.Name = "Blade"
obj50.Parent = RLeg

-- 51 - Mesh
obj51 = Instance.new("BlockMesh")
obj51.Offset = Vector3.new(0.25, 0, 0)
obj51.Scale = Vector3.new(1, 0.5, 0.601000011)
obj51.Parent = obj50


RLeg:MakeJoints()

scan(RLeg)

local Weld = Instance.new('Weld', torso)
Weld.Part0 = obj19
Weld.Part1 = rl

-- 1 - Blade
Blade1 = Instance.new("Model")
Blade1.Name = "Blade"
Blade1.Parent = ThreeDMG

-- 2 - Blade
obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(-9.49999523, 1.79000008, 45.1000023)) * CFrame.Angles(-5.5511164466148e-017, -7.4505805969238e-009, -1.4523558571067e-011)
obj2.FormFactor = Enum.FormFactor.Custom
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.SmoothPlastic
obj2.Size = Vector3.new(0.600000143, 0.400000036, 0.200000003)
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Name = "Blade"
obj2.Parent = Blade1

-- 3 - Mesh
obj3 = Instance.new("BlockMesh")
obj3.Offset = Vector3.new(0.150000006, 0, 0)
obj3.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj3.Parent = obj2

-- 4 - HandleHold
obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(-9.2349987, 1.8500005, 45.1000023)) * CFrame.Angles(-5.5511164466148e-017, -7.4505805969238e-009, -1.4523558571067e-011)
obj4.FormFactor = Enum.FormFactor.Custom
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.SmoothPlastic
obj4.Size = Vector3.new(0.869999826, 0.200000003, 0.200000003)
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BrickColor = BrickColor.new("Black")
obj4.Name = "HandleHold"
obj4.Parent = Blade1

-- 5 - Mesh
obj5 = Instance.new("BlockMesh")
obj5.Offset = Vector3.new(0.150000006, 0, 0)
obj5.Scale = Vector3.new(1, 0.899999976, 0.699999988)
obj5.Parent = obj4

-- 6 - Blade
obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(-8.29999065, 1.89000082, 45.0999947)) * CFrame.Angles(1.5707963705063, 4.8357879478544e-008, -3.1415927410126)
obj6.FormFactor = Enum.FormFactor.Custom
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.SmoothPlastic
obj6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Name = "Blade"
obj6.Parent = Blade1

-- 7 - Mesh
obj7 = Instance.new("BlockMesh")
obj7.Offset = Vector3.new(0.150000006, 0, 0)
obj7.Scale = Vector3.new(1, 0.601000011, 0.601000011)
obj7.Parent = obj6

-- 8 - DamagingBlade
obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(-6.99999142, 1.82000005, 45.0999947)) * CFrame.Angles(-3.1415927410126, 8.7165730633387e-008, -1.2992727249639e-007)
obj8.FormFactor = Enum.FormFactor.Custom
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.SmoothPlastic
obj8.BrickColor = BrickColor.new'White'
obj8.Size = Vector3.new(3.20000029, 0.400000036, 0.200000003)
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Name = "DamagingBlade"
obj8.Parent = Blade1

-- 9 - Mesh
obj9 = Instance.new("BlockMesh")
obj9.Scale = Vector3.new(1, 0.800000012, 0.200000003)
obj9.Parent = obj8

-- 10 - Decal
obj10 = Instance.new("Decal")
obj10.Transparency = 0.69999998807907
obj10.Face = Enum.NormalId.Back
obj10.Texture = "http://www.roblox.com/asset/?id=169052065"
obj10.Parent = obj8
obj10.Name = 'Lines1'

-- 11 - Decal
obj11 = Instance.new("Decal")
obj11.Transparency = 0.69999998807907
obj11.Texture = "http://www.roblox.com/asset/?id=169052344"
obj11.Parent = obj8
obj11.Name = 'Lines2'

-- 12 - Blade
obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(-8.69999123, 1.79000008, 45.0999985)) * CFrame.Angles(-5.5511164466148e-017, -7.4505805969238e-009, -1.4523558571067e-011)
obj12.FormFactor = Enum.FormFactor.Custom
obj12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Material = Enum.Material.SmoothPlastic
obj12.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
obj12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Name = "Blade"
obj12.Parent = Blade1

-- 13 - Mesh
obj13 = Instance.new("BlockMesh")
obj13.Offset = Vector3.new(0.150000006, 0, 0)
obj13.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj13.Parent = obj12

-- 14 - Blade
obj14 = Instance.new("Part")
obj14.CFrame = CFrame.new(Vector3.new(-8.29999065, 1.69000149, 45.0999947)) * CFrame.Angles(1.5707963705063, 4.8357879478544e-008, -3.1415927410126)
obj14.FormFactor = Enum.FormFactor.Custom
obj14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Material = Enum.Material.SmoothPlastic
obj14.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
obj14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Name = "Blade"
obj14.Parent = Blade1

-- 15 - Mesh
obj15 = Instance.new("BlockMesh")
obj15.Offset = Vector3.new(0.150000006, 0, 0)
obj15.Scale = Vector3.new(1, 0.601000011, 0.601000011)
obj15.Parent = obj14

-- 16 - Handle
obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(-9.43500137, 1.63500285, 45.1000023)) * CFrame.Angles(-5.5511164466148e-017, -7.4505805969238e-009, -1.4523558571067e-011)
obj16.FormFactor = Enum.FormFactor.Custom
obj16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Material = Enum.Material.SmoothPlastic
obj16.Size = Vector3.new(0.429999888, 0.25000003, 0.200000003)
obj16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Name = "Handle"
obj16.Parent = Blade1

-- 17 - Mesh
obj17 = Instance.new("BlockMesh")
obj17.Offset = Vector3.new(0.150000006, 0, 0)
obj17.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj17.Parent = obj16

-- 18 - Handle
obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(-9.30999565, 1.68000317, 45.1000023)) * CFrame.Angles(-5.5511164466148e-017, -7.4505805969238e-009, -1.4523558571067e-011)
obj18.FormFactor = Enum.FormFactor.Custom
obj18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Material = Enum.Material.SmoothPlastic
obj18.Size = Vector3.new(0.600000143, 0.200000003, 0.200000003)
obj18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Name = "Handle"
obj18.Parent = Blade1

-- 19 - Mesh
obj19 = Instance.new("BlockMesh")
obj19.Offset = Vector3.new(0.150000006, 0, 0)
obj19.Scale = Vector3.new(1, 0.200000003, 0.600000024)
obj19.Parent = obj18

-- 20 - Handle
obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(-8.97999382, 1.49000216, 45.1000023)) * CFrame.Angles(-5.5511164466148e-017, -7.4505805969238e-009, -1.4523558571067e-011)
obj20.FormFactor = Enum.FormFactor.Custom
obj20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Material = Enum.Material.SmoothPlastic
obj20.Size = Vector3.new(0.600000143, 0.200000003, 0.200000003)
obj20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Name = "Handle"
obj20.Parent = Blade1

-- 21 - Mesh
obj21 = Instance.new("BlockMesh")
obj21.Offset = Vector3.new(0.150000006, 0, 0)
obj21.Scale = Vector3.new(1, 0.699999988, 0.600000024)
obj21.Parent = obj20

-- 22 - BladeTip
obj22 = Instance.new("Part")
obj22.CFrame = CFrame.new(Vector3.new(-5.19998741, 1.82000005, 45.0999947)) * CFrame.Angles(1.5707963705063, 4.4604524518377e-009, -1.5707963705063)
obj22.FormFactor = Enum.FormFactor.Custom
obj22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.BrickColor = BrickColor.new'White'
obj22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Material = Enum.Material.SmoothPlastic
obj22.Size = Vector3.new(0.200000003, 0.400000006, 0.400000036)
obj22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Name = "BladeTip"
obj22.Parent = Blade1

-- 23 - Mesh
obj23 = Instance.new("SpecialMesh")
obj23.MeshType = Enum.MeshType.Wedge
obj23.Scale = Vector3.new(0.200000003, 1, 0.800000012)
obj23.Parent = obj22

-- 24 - BladeReflective
obj24 = Instance.new("Part")
obj24.CFrame = CFrame.new(Vector3.new(-6.79997826, 1.61999917, 45.0999947)) * CFrame.Angles(-0, -2.588216085897e-009, -3.1415927410126)
obj24.FormFactor = Enum.FormFactor.Custom
obj24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BrickColor = BrickColor.new'White'
obj24.Reflectance = 0.5
obj24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Material = Enum.Material.SmoothPlastic
obj24.Size = Vector3.new(3.40000033, 0.400000006, 0.400000006)
obj24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Name = "BladeReflective"
obj24.Parent = Blade1

-- 25 - Mesh
obj25 = Instance.new("SpecialMesh")
obj25.MeshType = Enum.MeshType.Wedge
obj25.Scale = Vector3.new(1.05900002, 0.200000003, 0.100000001)
obj25.Parent = obj24

Blade1:MakeJoints()

scan(Blade1)

local Blade1Weld = Instance.new('Weld', torso)
Blade1Weld.Part0 = Blade1.HandleHold
Blade1Weld.Part1 = ra
Blade1Weld.C1 = CFrame.new(0, -.95, 0) * CFrame.Angles(0, math.pi/2, 0)

local Blade2 = Blade1:clone()
Blade2.Parent = ThreeDMG
scan(Blade2)

local Blade2Weld = Instance.new('Weld', torso)
Blade2Weld.Part0 = Blade2.HandleHold
Blade2Weld.Part1 = la
Blade2Weld.C1 = CFrame.new(0, -.95, 0) * CFrame.Angles(0, math.pi/2, 0)

local bodygyro = Instance.new('BodyGyro')
    bodygyro.maxTorque = Vector3.new(14e16,14e16,14e16)
    bodygyro.P = 10000

		local ro = Instance.new('RocketPropulsion', rootpart)
		ro.Name = 'RockatPropoolsun'
		ro.MaxSpeed=150
		ro.MaxThrust=15000
		ro.TurnP = 0
		ro.MaxTorque=Vector3.new(14e16,14e16,14e16)

		local ro2=Instance.new("RocketPropulsion",torso)
        ro2.Name = 'RockatPropoolsun2'
        ro2.MaxSpeed=150
        ro2.MaxThrust=15000
        ro2.TurnP = 0
        ro2.MaxTorque=Vector3.new(14e16,14e16,14e16)

local pa = Instance.new('Part')
pa.CanCollide = false
pa.Anchored = true
pa.Locked = true
pa.FormFactor = 'Custom'
pa.BrickColor = BrickColor.new('Really black')
pa.Size = Vector3.new(.5,1,.5)
local special = Instance.new('SpecialMesh', pa)
special.MeshId = "rbxassetid://1033714"
special.Scale = Vector3.new(.25,2,.25)
local ropePA = BasePart:clone()
ropePA.Parent = pa
ropePA.Anchored = true
ropePA.BrickColor = BrickColor.new('Really black')
Instance.new('CylinderMesh', ropePA)

local pa2 = Instance.new('Part')
pa2.CanCollide = false
pa2.Anchored = true
pa2.Locked = true
pa2.BrickColor = BrickColor.new('Really black')
pa2.FormFactor = 'Custom'
pa2.Size = Vector3.new(.5,1,.5)
local special = Instance.new('SpecialMesh', pa2)
special.MeshId = "rbxassetid://1033714"
special.Scale = Vector3.new(.25,2,.25)
local ropePA2 = BasePart:clone()
ropePA2.Parent = pa2
ropePA2.Anchored = true
ropePA2.BrickColor = BrickColor.new('Really black')
Instance.new('CylinderMesh', ropePA2)

local pa3 = Instance.new('Part', char)
pa3.CanCollide = false
pa3.Transparency = 1
pa3.Anchored = true
pa3.Locked = true
pa3.Size = Vector3.new(2,2,2)

local torso3 = Instance.new('Part', char)
torso3.Name = 'FakeTorsoForStuff'
torso3.Size = torso.Size
torso3.Transparency = 1
torso3.Locked = true
torso3:breakJoints()
local Weld = Instance.new('Weld', torso3)
Weld.Part0 = torso3
Weld.Part1 = torso

pcall(function()
     plrgui['3DMGGui']:Destroy()
     plrgui['3DMGGui']:Destroy()
end)
local SGui = Instance.new('ScreenGui', plrgui)
SGui.Name = '3DMGGui'

local GasGui = Instance.new('TextLabel',SGui)
GasGui.Position = UDim2.new(1, -182, 1, -45)
GasGui.Size = UDim2.new(0, 180, 0, 19)
GasGui.ZIndex = 4
GasGui.BorderColor3 = Color3.new()
GasGui.TextColor3 = Color3.new(1,1,1)
GasGui.TextStrokeTransparency = .25
GasGui.Text = '  Gas'
GasGui.FontSize = 'Size14'
GasGui.Font = 'SourceSansBold'
GasGui.TextXAlignment = 'Left'
local Backframe = Instance.new('Frame', GasGui)
Backframe.Size = UDim2.new(0,180,0,19)
Backframe.BorderColor3 = Color3.new()
Backframe.BackgroundColor3 = Color3.new(.5,.5,.5)

local SharpGui = Instance.new('TextLabel',SGui)
SharpGui.Position = UDim2.new(1, -182, 1, -23)
SharpGui.Size = UDim2.new(0, 180, 0, 19)
SharpGui.ZIndex = 4
SharpGui.BorderColor3 = Color3.new()
SharpGui.TextColor3 = Color3.new(1,1,1)
SharpGui.TextStrokeTransparency = .25
SharpGui.Text = '  Sharpness'
SharpGui.FontSize = 'Size14'
SharpGui.Font = 'SourceSansBold'
SharpGui.TextXAlignment = 'Left'
local Backframe = Instance.new('Frame', SharpGui)
Backframe.Size = UDim2.new(0,180,0,19)
Backframe.BorderColor3 = Color3.new()
Backframe.BackgroundColor3 = Color3.new(.5,.5,.5)

local function DamageGui(damage, pos)
    local prt = Instance.new("Part", char)
        prt.FormFactor = "Custom"
        prt.Size = Vector3.new(0.1, 0.1, 0.1)
        prt.Transparency = 1
        prt.CanCollide = false
        prt.CFrame = CFrame.new(pos.x, pos.y, pos.z)
        prt.Anchored = true
        coroutine.resume(coroutine.create(function()
            for i = 2, 10, 0.05 do
                if prt == nil then return end
                prt.CFrame = prt.CFrame * CFrame.new(0, 0.05, 0)
                game:service'RunService'.RenderStepped:wait()
            end
            prt:Destroy()
        end))
        
    local bg = Instance.new("BillboardGui")
    bg.Parent = prt
    bg.Adornee = prt
    bg.Size = UDim2.new(4, 0, 3.5, 0)
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.new(1.3, 0, 0.4, 0)
    label.BackgroundTransparency = 1
    label.FontSize = "Size24"
    label.Rotation = math.random(-10,10)
    label.TextColor3 = Color3.new(1, .2, .2)
    label.TextStrokeTransparency = .25
    label.TextStrokeColor3 = Color3.new(1,1,1)
    label.Font = "ArialBold"
    label.Text = "-"..damage
end

humanoid.WalkSpeed = 12

local SpeedGas = false
local GasLeft = 100
local Sharpness = 100

local attack = 1
local debounce = false
local Cooldown = false
local Hits = {}

local B1Lines1 = Blade1.DamagingBlade.Lines1
local B1Lines2 = Blade1.DamagingBlade.Lines2
local B2Lines1 = Blade2.DamagingBlade.Lines1
local B2Lines2 = Blade2.DamagingBlade.Lines2


mouse.KeyDown:connect(function(k)
    if k:byte()==32 then
        if debounce then return end if humanoid.PlatformStand then return end
        if not hitz and not (Grapple1 or Grapple2) then
            if not PauseAnim then
                PauseAnim = true
                for i = 10, 360, 10 do
                    if not (Grapple1 or Grapple2) then
                    rm.C0 = rsc0 * CFrame.Angles(math.rad(70), 0, -math.rad(45))
                    lm.C0 = lsc0 * CFrame.Angles(math.rad(70), 0, math.rad(45))
                    rlegm.C0 = rlc0 * CFrame.new(0, .5, -.75)
                    llegm.C0 = llc0 * CFrame.new(0, .5, -.75)
                    rj.C0 = CFrame.Angles(-math.rad(i), 0, 0)
                    game:service'RunService'.RenderStepped:wait()
                    end
                end
                rj.C0 = CFrame.Angles(0, 0, 0)
                PauseAnim = false
            end
        end
    end
    if k:byte()==52 then
        SpeedGas = true
    end
	if k:byte()==48 then
		run = not run
		if run then
			humanoid.WalkSpeed = 35
		else
			humanoid.WalkSpeed = 12
		end
	end
    if k=="v" then
        if (Blade1.DamagingBlade.Transparency == 1 or Blade2.DamagingBlade.Transparency == 1) and not debounce and not (Grapple1 or Grapple2) then
            Sharpness = 100
            SharpGui:TweenSize(UDim2.new(0, Sharpness*1.8, 0, 19), 'Out', 'Quad', .5, true)
            Blade1.DamagingBlade.Transparency = 0
            Blade1.BladeReflective.Transparency = 0
            Blade1.BladeTip.Transparency = 0
            Blade2.DamagingBlade.Transparency = 0
            Blade2.BladeReflective.Transparency = 0
            Blade2.BladeTip.Transparency = 0

            B1Lines1.Parent = Blade1.DamagingBlade
            B1Lines2.Parent = Blade1.DamagingBlade
            B2Lines1.Parent = Blade2.DamagingBlade
            B2Lines2.Parent = Blade2.DamagingBlade

            debounce = true
            local sound = Instance.new('Sound', head)
            sound.SoundId = "rbxasset://sounds/unsheath.mp3"
            sound.Pitch = 1
            sound.Volume = .6
            sound:play()
            game:service'Debris':AddItem(sound,4)
            for i = 1, 40 do
                humanoid.WalkSpeed = 0
                local rscf = rsc0
                local lscf = lsc0
                rscf = rsc0 * CFrame.new(-.1,-.35,-1) * CFrame.Angles(0,math.pi/1.05,0)
                lscf = lsc0 * CFrame.new(.1,-.35,-1) * CFrame.Angles(0,-math.pi/1.05,0)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            for i = 1, 20 do
                humanoid.WalkSpeed = 0
                local rscf = rsc0
                local lscf = lsc0
                rscf = rsc0 * CFrame.new(-.2,-.35,-1.5) * CFrame.Angles(math.pi/2,math.pi/1.05,0)
                lscf = lsc0 * CFrame.new(.2,-.35,-1.5) * CFrame.Angles(math.pi/2,-math.pi/1.05,0)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            humanoid.WalkSpeed = 12
            debounce = false
        end
    end

	if k=="q" then
        if pa.Parent ~= nil and not Grapple1 then return end
        Grapple1 = false
        Grapple1Hit = nil
        local sound = Instance.new('Sound', head)
        sound.SoundId = "rbxassetid://160248505"
        sound.Pitch = 2+math.random()
        sound.Volume = .8
        sound:play()
        game:service'Debris':AddItem(sound,4)
        lm.Parent = torso
        pa.CFrame = LLegGrapple.CFrame
            local grapplepos = pa.Position
            local grapplevelocity = (mouse.Hit.p - grapplepos).unit*70
            local lastgrapplepos = pa.Position 
            pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
            pa.Parent = char
            while wait() do
                lastgrapplepos = grapplepos 
                grapplepos = grapplepos + grapplevelocity
                local RayCast = Ray.new(lastgrapplepos, (grapplepos - lastgrapplepos))
                local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
                if (torso.Position - pa.Position).magnitude > 1200 or pa.Parent == nil then
                    pa.Parent = nil
                    ro:Abort()
                    break
                end
                pa.Anchored = true
                pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
                if hit then
                    local rotX,rotY,rotZ = pa.CFrame:toEulerAnglesXYZ()
                    local sound = Instance.new('Sound', head)
                    sound.SoundId = "rbxassetid://146466021"
                    sound.Pitch = 1.2+math.random()/3
                    sound.Volume = .35
                    sound:play()
                    game:service'Debris':AddItem(sound,4)
                    pa.Parent = char
                    pa.CFrame=CFrame.new(hitpos.x, hitpos.y, hitpos.z)*CFrame.Angles(rotX,rotY,rotZ)*CFrame.Angles(math.pi,0,0)
                    ro.Target=pa
                    lm.Parent = torso
                    local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
                    if hum then
                        local damage = math.random(2,3)
                        hum:TakeDamage(damage)
                        DamageGui(damage, hitpos)
                    end
                    local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
                    if hum then
                        local damage = math.random(2,3)
                        hum:TakeDamage(damage)
                        DamageGui(damage, hitpos)
                    end
                    ro:Fire()
                    humanoid.Jump = true
                    Offset1 = hit.CFrame:toObjectSpace(pa.CFrame)
                    Grapple1Hit = hit
                    Grapple1 = true
                    break
                end
                pa.Anchored = true
                pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
            end
    end
    if k=="e" then
        if pa2.Parent ~= nil and not Grapple2 then return end
        Grapple2 = false
        Grapple2Hit = nil
        local sound = Instance.new('Sound', head)
        sound.SoundId = "rbxassetid://160248505"
        sound.Pitch = 2+math.random()
        sound.Volume = .8
        sound:play()
        game:service'Debris':AddItem(sound,4)
            pa2.CFrame = RLegGrapple.CFrame
            rm.Parent = torso
            local grapplepos = pa2.Position
            local grapplevelocity = (mouse.Hit.p - grapplepos).unit*70
            local lastgrapplepos = pa2.Position 
            pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
            pa2.Parent = char
            while wait() do
                lastgrapplepos = grapplepos 
                grapplepos = grapplepos + grapplevelocity
                local RayCast = Ray.new(lastgrapplepos, (grapplepos - lastgrapplepos))
                local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
                if (torso.Position - pa2.Position).magnitude > 1200 or pa2.Parent == nil then
                    pa2.Parent = nil
                    ro2:Abort()
                    break
                end
                pa2.Anchored = true
                pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
                if hit then
                    local rotX,rotY,rotZ = pa2.CFrame:toEulerAnglesXYZ()
                    local sound = Instance.new('Sound', head)
                    sound.SoundId = "rbxassetid://146466021"
                    sound.Pitch = 1.2+math.random()/3
                    sound.Volume = .35
                    sound:play()
                    game:service'Debris':AddItem(sound,4)
                    pa2.Parent = char
                    pa2.CFrame=CFrame.new(hitpos.x, hitpos.y, hitpos.z)*CFrame.Angles(rotX,rotY,rotZ)*CFrame.Angles(math.pi,0,0)
                    ro2.Target=pa2
                    rm.Parent = torso
                    local ray = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
                    local hitz, enz = workspace:FindPartOnRay(ray, char)
                    local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
                    if hum then
                        local damage = math.random(2,3)
                        hum:TakeDamage(damage)
                        DamageGui(damage, hitpos)
                    end
                    local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
                    if hum then
                        local damage = math.random(2,3)
                        hum:TakeDamage(damage)
                        DamageGui(damage, hitpos)
                    end
                    humanoid.Jump = true
                    ro2:Fire()
                    Offset2 = hit.CFrame:toObjectSpace(pa2.CFrame)
                    Grapple2Hit = hit
                    Grapple2 = true
                    break
                end
                pa2.Anchored = true
                pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
            end
    end
    if k=="r" then
        if debounce or Cooldown then return end
        debounce = true
        Cooldown = true
        Spinning = true
        local bodygyro2 = Instance.new('BodyGyro', rootpart)
        bodygyro2.cframe = rootpart.CFrame
        bodygyro2.maxTorque = Vector3.new(14e16,14e16,14e16)
        bodygyro2.P = 99999
        Blade1Weld.C0 = CFrame.Angles(0, 0, math.pi/2)
        Blade2Weld.C0 = CFrame.Angles(0, 0, math.pi/2)
        for i = 20, 360*5, 20 do
            bodygyro.Parent = nil
            humanoid.WalkSpeed = 12
                local rscf = rsc0
                local lscf = lsc0

                rscf = rsc0 * CFrame.Angles(0, 0, 3.14/2)
                lscf = lsc0 * CFrame.Angles(0, 0, -3.14/2)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)

                bodygyro2.cframe = rootpart.CFrame * CFrame.Angles(0, math.rad(20), 0)


                if (i%21) == 20 then
                    Hits = {}
                    local sound = Instance.new('Sound', head)
                    sound.SoundId = "rbxassetid://147722227"
                    sound.Pitch = .8+math.random()
                    sound.Volume = 1
                    sound:play()
                    local cyl = BasePart:clone()
                    cyl.Parent = char
                    cyl.Transparency = .65
                    cyl.Anchored = true
                    cyl.CFrame = torso.CFrame * CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(math.random(-5,5)), 0, math.rad(math.random(-5,5)))
                    cyl.BrickColor = BrickColor.new('Dark stone grey')
                    cyl.Size = Vector3.new(5,.2,5)
                    local mesh = Instance.new('CylinderMesh', cyl)
                    mesh.Scale = Vector3.new(2.5,.5,2.5)
                    game:service'Debris':AddItem(cyl,.8)
                end

                game:service'RunService'.RenderStepped:wait()
        end
        if (Grapple1 or Grapple2) or humanoid.PlatformStand then bodygyro.Parent = torso end
        Blade1Weld.C0 = CFrame.new()
        Blade2Weld.C0 = CFrame.new()
        bodygyro2:Destroy()
        debounce = false
        Spinning = false
        Hits = {}
        wait(.65)
        Cooldown = false
    end
    if k=="t" then
        if debounce or Cooldown then return end
        debounce = true
        Cooldown = true
        local sound = Instance.new('Sound', head)
            sound.SoundId = "rbxasset://sounds/swordslash.mp3"
            sound.Pitch = 1+math.random()/3
            sound.Volume = 1
            sound:play()
            game:service'Debris':AddItem(sound,4)
        for i = 1, 10 do
            local rscf = rsc0
            local lscf = lsc0
            local rjcf = rootc0
            rscf = rsc0 * CFrame.Angles(math.pi/1.2, -math.pi/12, 0)
            lscf = lsc0 * CFrame.Angles(math.pi/1.2, math.pi/12, 0)
            rjcf = rootc0 * CFrame.Angles(0, 0, 0)
            rm.C0 = clerp(rm.C0,rscf,speed)
            lm.C0 = clerp(lm.C0,lscf,speed)
            rj.C0 = clerp(rj.C0,rjcf,speed)
            game:service'RunService'.RenderStepped:wait()
        end
        Hits = {}
        for i = 1, 15 do
            local rscf = rsc0
            local lscf = lsc0
            local rjcf = rootc0
            rscf = rsc0 * CFrame.Angles(-.1, math.pi/18, 0)
            lscf = lsc0 * CFrame.Angles(-.1, -math.pi/18, 0)
            rjcf = rootc0 * CFrame.Angles(0, 0, 0)
            rm.C0 = clerp(rm.C0,rscf,speed)
            lm.C0 = clerp(lm.C0,lscf,speed)
            rj.C0 = clerp(rj.C0,rjcf,speed)
            game:service'RunService'.RenderStepped:wait()
        end
        debounce = false
        Hits = {}
        wait(.05)
        Cooldown = false
    end
end)

mouse.KeyUp:connect(function(k)
    if k:byte()==52 then
        SpeedGas = false
        pcall(function()
            ro.MaxSpeed = 150
            ro2.MaxSpeed = 150
            ro3.MaxSpeed = 250
        end)
    end
    if k=="q" then
        Grapple1Hit = nil
        game:service'RunService'.RenderStepped:wait()
        pcall(function() pa.Parent = nil Grapple1 = false end)
        pcall(function() ro:Abort() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() ro2.Target=pa2 if Grapple2 and humanoid.PlatformStand then ro2:Fire() end end)
    elseif k=="e" then
        Grapple2Hit = nil
        game:service'RunService'.RenderStepped:wait()
        pcall(function() pa2.Parent = nil Grapple2 = false end)
        pcall(function() ro2:Abort() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() ro.Target=pa if Grapple1 and humanoid.PlatformStand then ro:Fire() end end)
    end
end)

mouse.Button1Down:connect(function()
    if debounce then return end
        debounce = true
        local sound = Instance.new('Sound', head)
            sound.SoundId = "rbxasset://sounds/swordslash.mp3"
            sound.Pitch = 1+math.random()/3
            sound.Volume = 1
            sound:play()
            game:service'Debris':AddItem(sound,4)
        if attack == 1 then
            for i = 1, 15 do
                local rscf = rsc0
                local lscf = lsc0
                local rjcf = rootc0
                rscf = rsc0 * CFrame.Angles(-math.pi/17, math.pi/2.2, math.pi/2)
                lscf = lsc0 * CFrame.Angles(-math.pi/17, math.pi/2.2, math.pi/2)
                rjcf = rootc0 * CFrame.Angles(0, math.rad(20), 0)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            for i = 1, 15 do
                local rscf = rsc0
                local lscf = lsc0
                local rjcf = rootc0
                rscf = rsc0 * CFrame.Angles(-math.pi/17, math.pi/5, math.pi/2)
                lscf = lsc0 * CFrame.Angles(-math.pi/17, math.pi/5, math.pi/2)
                rjcf = rootc0 * CFrame.Angles(0, -math.rad(10), 0)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            attack = 2
        elseif attack == 2 then
            for i = 1, 15 do
                local rscf = rsc0
                local lscf = lsc0
                local rjcf = rootc0
                rscf = rsc0 * CFrame.Angles(-math.pi/17, -math.pi/2.2, -math.pi/2)
                lscf = lsc0 * CFrame.Angles(-math.pi/17, -math.pi/2.2, -math.pi/2)
                rjcf = rootc0 * CFrame.Angles(0, -math.rad(20), 0)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            for i = 1, 15 do
                local rscf = rsc0
                local lscf = lsc0
                local rjcf = rootc0
                rscf = rsc0 * CFrame.Angles(-math.pi/17, -math.pi/5, -math.pi/2)
                lscf = lsc0 * CFrame.Angles(-math.pi/17, -math.pi/5, -math.pi/2)
                rjcf = rootc0 * CFrame.Angles(0, math.rad(10), 0)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            attack = 3
        elseif attack == 3 then
            for i = 1, 15 do
                local rscf = rsc0
                local lscf = lsc0
                rscf = rsc0 * CFrame.Angles(-math.pi/17, math.pi/2.2, math.pi/2)
                lscf = lsc0 * CFrame.Angles(-math.pi/10, -math.pi/2.2, -math.pi/2)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            for i = 1, 20 do
                local rscf = rsc0
                local lscf = lsc0
                rscf = rsc0 * CFrame.Angles(-math.pi/17, -math.pi/5, math.pi/2)
                lscf = lsc0 * CFrame.Angles(-math.pi/10, math.pi/5, -math.pi/2)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            attack = 1
        end
    debounce = false
    Hits = {}
end)

Blade1.DamagingBlade.Touched:connect(function(hit)
    if debounce then
        if Blade1.DamagingBlade.Transparency == 1 or Sharpness <= 1 then return end
        local human = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
        if human and Hits[human.Parent] then return end
        if human and human.Parent ~= char then
            Hits[human.Parent] = true
            local damage = math.random(14,21)
            human:TakeDamage(damage)
            DamageGui(damage, Blade1.DamagingBlade.Position)
            Sharpness = Sharpness - 1.5+math.random()
            SharpGui:TweenSize(UDim2.new(0, Sharpness*1.8, 0, 19), 'Out', 'Quad', .5, true)
            local sound = Instance.new('Sound', head)
            sound.SoundId = "rbxasset://sounds/metal.mp3"
            sound.Pitch = 1+math.random()/3
            sound.Volume = 1
            sound:play()
            game:service'Debris':AddItem(sound,4)
            if Sharpness <= 1 then
                Sharpness = 0
                debounce = false
                local DropBlade1 = Instance.new('Model', workspace)
                local DropBlade2 = Instance.new('Model', workspace)
                Blade1.DamagingBlade:clone().Parent = DropBlade1
                DropBlade1.DamagingBlade.CanCollide = true
                Blade1.BladeReflective:clone().Parent = DropBlade1
                Blade1.BladeTip:clone().Parent = DropBlade1
                Blade2.DamagingBlade:clone().Parent = DropBlade2
                DropBlade2.DamagingBlade.CanCollide = true
                Blade2.BladeReflective:clone().Parent = DropBlade2
                Blade2.BladeTip:clone().Parent = DropBlade2
                local function recurseweldcheck(obj)
                    for i,v in pairs(obj:children()) do
                        if v:IsA'Weld' then v:Destroy() end
                        if v then
                            recurseweldcheck(v)
                        end
                    end
                end
                recurseweldcheck(DropBlade1)
                recurseweldcheck(DropBlade2)

                scan(DropBlade1)
                scan(DropBlade2)

                B1Lines1.Parent = nil
                B1Lines2.Parent = nil
                B2Lines1.Parent = nil
                B2Lines2.Parent = nil

                for i,v in pairs(DropBlade1:children()) do
                        if v:IsA'BasePart' then
                            v.Transparency = 0
                            v.CanCollide = true
                        end
                end

                for i,v in pairs(DropBlade2:children()) do
                        if v:IsA'BasePart' then
                            v.Transparency = 0
                            v.CanCollide = true
                        end
                end

                DropBlade1.DamagingBlade.CFrame = Blade1.DamagingBlade.CFrame * CFrame.new(0, -.5, 0) 
                DropBlade2.DamagingBlade.CFrame = Blade2.DamagingBlade.CFrame * CFrame.new(0, -.5, 0) 
            end
        end
    end
end)

Blade2.DamagingBlade.Touched:connect(function(hit)
    if debounce then
        if Blade2.DamagingBlade.Transparency == 1 or Sharpness <= 0 then return end
        local human = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
        if human and Hits[human.Parent] then return end
        if human and human.Parent ~= char then
            Hits[human.Parent] = true
            local damage = math.random(14,21)
            human:TakeDamage(damage)
            DamageGui(damage, Blade2.DamagingBlade.Position)
            Sharpness = Sharpness - 1.5+math.random()
            SharpGui:TweenSize(UDim2.new(0, Sharpness*1.8, 0, 19), 'Out', 'Quad', .5, true)
            local sound = Instance.new('Sound', head)
            sound.SoundId = "rbxasset://sounds/metal.mp3"
            sound.Pitch = 1+math.random()/3
            sound.Volume = 1
            sound:play()
            game:service'Debris':AddItem(sound,4)
            if Sharpness <= 1 then
                Sharpness = 0
                debounce = false
                local DropBlade1 = Instance.new('Model', workspace)
                local DropBlade2 = Instance.new('Model', workspace)
                Blade1.DamagingBlade:clone().Parent = DropBlade1
                DropBlade1.DamagingBlade.CanCollide = true
                Blade1.BladeReflective:clone().Parent = DropBlade1
                Blade1.BladeTip:clone().Parent = DropBlade1
                Blade2.DamagingBlade:clone().Parent = DropBlade2
                DropBlade2.DamagingBlade.CanCollide = true
                Blade2.BladeReflective:clone().Parent = DropBlade2
                Blade2.BladeTip:clone().Parent = DropBlade2
                local function recurseweldcheck(obj)
                    for i,v in pairs(obj:children()) do
                        if v:IsA'Weld' then v:Destroy() end
                        if v then
                            recurseweldcheck(v)
                        end
                    end
                end

                recurseweldcheck(DropBlade1)
                recurseweldcheck(DropBlade2)

                scan(DropBlade1)
                scan(DropBlade2)

                B1Lines1.Parent = nil
                B1Lines2.Parent = nil
                B2Lines1.Parent = nil
                B2Lines2.Parent = nil

                for i,v in pairs(DropBlade1:children()) do
                        if v:IsA'BasePart' then
                            v.Transparency = 0
                            v.CanCollide = true
                        end
                end

                for i,v in pairs(DropBlade2:children()) do
                        if v:IsA'BasePart' then
                            v.Transparency = 0
                            v.CanCollide = true
                        end
                end

                DropBlade1.DamagingBlade.CFrame = Blade1.DamagingBlade.CFrame * CFrame.new(0, -1, 0) 
                DropBlade2.DamagingBlade.CFrame = Blade2.DamagingBlade.CFrame * CFrame.new(0, -1, 0) 
            end
        end
    end
end)

local MidPointUsed = false
local TorsoSmoke = Instance.new('Smoke', torso)
local Gas = Instance.new('Smoke', torso)
Gas.Color = Color3.new(.4,.4,.4)
Gas.Opacity = .8
Gas.RiseVelocity = 5
game:service'RunService'.RenderStepped:connect(function()
        angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        local ray = Ray.new(rootpart.Position, Vector3.new(0, -5, 0))
        local hitz, enz = workspace:FindPartOnRay(ray, char)
        for i,object in pairs(char:children()) do
            if object:IsA("Tool") then
                tool = true
                if not debounce then
                for x,value in pairs(object:children()) do
                    if value:IsA("StringValue") and value.Name == "toolanim" and value.Value == "Slash" then
                        debounce = true
                        coroutine.wrap(function()
                        slashing = true
                        wait(.25)
                        slashing = false
                        debounce = false
                    end)()
                    value:Destroy()
                    end
                end
                end
            elseif not object:IsA'Tool' then
                tool = false
            end
        end
        if not humanoid.PlatformStand then
            if humanoid.Sit == true then
                speed = 0.2
                anglespeed = 1/4
                        ncf = neckc0 * CFrame.Angles(0, 0, 0)
                        rjcf = rootc0
                        rscf = rsc0 * CFrame.Angles(math.pi/2+math.sin(-angle)*0.05, 0, 0)
                        lscf = lsc0 * CFrame.Angles(math.pi/2+math.sin(-angle)*0.05, 0, 0)
                        rlcf = rlc0 * CFrame.Angles(math.pi/2+-math.rad(.2), 0, math.rad(.2))
                        llcf = llc0 * CFrame.Angles(math.pi/2+math.rad(.2), 0, -math.rad(.2))
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                    anglespeed = 1/4
                        speed = 0.2
                        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.075, 0, 0)
                        rjcf = rootc0
                        rscf = rsc0 * CFrame.new(0, math.sin(angle)*0.05, 0) * CFrame.Angles(-.2 - math.sin(-angle)*0.05, -.1, .2)
                        lscf = lsc0 * CFrame.new(0, math.sin(angle)*0.05, 0) * CFrame.Angles(-.2 - math.sin(-angle)*0.05, .1, -.2)
                        rlcf = rlc0 * CFrame.Angles(-math.rad(.2), -.2, .15)
                        llcf = llc0 * CFrame.Angles(math.rad(.2), .2, -.15)
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 13 then
                        anglespeed = 1.6
                        speed = 0.25
                        speed = 0.25
                        ncf = neckc0 * CFrame.Angles(0, 0, 0)
                        rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle))*.055, 0) * CFrame.Angles(-math.rad(1), 0, 0)
                        rscf = rsc0 * CFrame.Angles(-.2, -.1, .2)
                        lscf = lsc0 * CFrame.Angles(-.2, .1, -.2)
                        rlcf = rlc0 * CFrame.new(0, .075 + -math.cos(-angle)*.075, math.sin(angle)*0.1) * CFrame.Angles(math.sin(-angle)*.45, 0, math.rad(.5))
                        llcf = llc0 * CFrame.new(0, .075 - -math.cos(angle)*.075, -math.sin(angle)*0.1) * CFrame.Angles(math.sin(angle)*.45, 0, -math.rad(.5))
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 14 then
                local RotVelocityZ = torso.RotVelocity.Y
                if RotVelocityZ >= 15 then
                    RotVelocityZ = 15
                elseif RotVelocityZ <= -15 then
                    RotVelocityZ = -15
                end
                    speed = 0.25
                    anglespeed = 2.5
                    ncf = neckc0 * CFrame.Angles(0, 0, -math.sin(angle)*.045)
                    rscf = rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/2 + math.pi/18, -math.pi/2, 0)
                    lscf = lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/2 + math.pi/18, math.pi/2, 0)
                    rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle))*.175 - .2, 0) * CFrame.Angles(math.abs(math.sin(angle))*0.055 + -math.pi/18, 0, math.rad(RotVelocityZ) + math.sin(angle)*.045)
                    rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1, 0, math.rad(.5))
                    llcf = llc0 * CFrame.Angles(math.sin(angle)*1, 0, -math.rad(.5))
            end
            if tool then
                rscf = rsc0 * CFrame.Angles(math.pi/2, 0, 0)
                if slashing then
                    rscf = rsc0
                end
            end
        if not debounce then
    	    rm.C0 = clerp(rm.C0,rscf,speed)
    	    lm.C0 = clerp(lm.C0,lscf,speed)
	        rj.C0 = clerp(rj.C0,rjcf,speed)
        end
	    neck.C0 = clerp(neck.C0,ncf,speed)
	    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
	    llegm.C0 = clerp(llegm.C0,llcf,speed)
	end
end)

game:service'RunService'.RenderStepped:connect(function()
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 425 and not SpeedGas then
        TorsoSmoke.Enabled = true
    else
        TorsoSmoke.Enabled = false
    end
    local ray = Ray.new(rootpart.Position, Vector3.new(0, -7, 0))
    local hitz, enz = workspace:FindPartOnRay(ray, char)
    if hitz and hitz.CanCollide and pa.Parent ~= char and pa2.Parent ~= char or not humanoid.PlatformStand then
        bodygyro.Parent = nil
        humanoid.PlatformStand = false
    end
    if (pa.Parent ~= nil or Grapple1) then
        local size = (LLegGrapple.Position-pa.Position).magnitude
            ropePA.Size = Vector3.new(.2, size, .2) 
            ropePA.CFrame = CFrame.new(LLegGrapple.Position, pa.Position) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -size/2, 0)
    end
    if pa2.Parent ~= nil or Grapple2 then
        local size = (RLegGrapple.Position-pa2.Position).magnitude
            ropePA2.Size = Vector3.new(.2, size, .2) 
            ropePA2.CFrame = CFrame.new(RLegGrapple.Position, pa2.Position) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -size/2, 0)
    end
    if Grapple1 and Grapple1Hit.Parent == nil then
        pcall(function() Gweld:remove() end)
        pa.Parent = nil
        Grapple1 = false
        ro:Abort()
    end
    if Grapple2 and Grapple2Hit.Parent == nil then
        pcall(function() Gweld2:remove() end)
        pa2.Parent = nil
        Grapple2 = false
        ro2:Abort()
    end
    if Grapple1 and Grapple2 then
        local distance = (pa.Position-pa2.Position).magnitude
        if not Spinning then
        bodygyro.Parent = nil
        torso.CFrame = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
        end
        pa3.Parent = char
            if distance <= .5 then
                pa3.CFrame = pa.CFrame
            elseif distance > .5 then
                pa3.CFrame = CFrame.new(pa.Position, pa2.Position) * CFrame.new(0, 0, -distance/2)
            end
        if not MidPointUsed then
        ro3=Instance.new("RocketPropulsion",torso3)
        ro3.Name = 'RockatPropoolsun3'
        ro3.MaxSpeed=250
        ro3.MaxThrust=20000
        ro3.TurnP = 0
        ro3.TurnD = 0
        ro3.MaxTorque=Vector3.new(14e16,14e16,14e16)
        if humanoid.PlatformStand or not hitz then
            ro:Abort()
            ro2:Abort()
        end
            ro3.Target = pa3
            if humanoid.PlatformStand or not hitz then
                ro3:Fire()
            end
            MidPointUsed = true
        end
    elseif (not Grapple1 or not Grapple2) and MidPointUsed == true and (humanoid.PlatformStand or not hitz) then
        pa3.Parent = nil
        MidPointUsed = false
        ro3:Abort()
        ro3:Destroy()
        if Grapple1 then
            ro:Fire()
        end
        if Grapple2 then
            ro2:Fire()
        end
    end
    if (Grapple1 or Grapple2) then
        if not Spinning then
            bodygyro.Parent = torso
        end
        humanoid.PlatformStand = true
        if not debounce then
            lm.C0 = lsc0 * CFrame.Angles(-.45, 0, -.25)
            rm.C0 = rsc0 * CFrame.Angles(-.45, 0, .25)
        end
        rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
        llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
        if Grapple1 and Offset1 and Grapple1Hit then
            pa.CFrame = Grapple1Hit.CFrame * Offset1
        end
        if Grapple2 and Offset2 and Grapple2Hit then
            pa2.CFrame = Grapple2Hit.CFrame * Offset2
        end
    end
    if (Grapple1 or Grapple2) or humanoid.PlatformStand then
        if not Spinning then
            bodygyro.Parent = torso
            bodygyro.cframe = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
        end
        rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
        llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
        if not debounce then
            lm.C0 = lsc0 * CFrame.Angles(-.45, 0, -.25)
            rm.C0 = rsc0 * CFrame.Angles(-.45, 0, .25)
        end
    end
    if (Grapple1 or Grapple2) and SpeedGas and GasLeft >= .1 then
        pcall(function()
            ro.MaxSpeed = 300
            ro2.MaxSpeed = 300
        end)
        Gas.Enabled = true
        GasLeft = GasLeft - .1
        GasGui:TweenSize(UDim2.new(0, GasLeft*1.8, 0, 19), 'Out', 'Quad', .5, true)
    elseif GasLeft <= .1 or not SpeedGas then
        Gas.Enabled = false
        SpeedGas = false
        pcall(function()
            ro.MaxSpeed = 150
            ro2.MaxSpeed = 150
        end)
    elseif not (Grapple1 and Grapple2) then
        Gas.Enabled = false
    end
    if Sharpness <= 0 then
        Blade1.DamagingBlade.Transparency = 1
        Blade1.BladeReflective.Transparency = 1
        Blade1.BladeTip.Transparency = 1
        Blade2.DamagingBlade.Transparency = 1
        Blade2.BladeReflective.Transparency = 1
        Blade2.BladeTip.Transparency = 1
    end
end)