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
plrmouse = plr:GetMouse()
char = plr.Character
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

local rm = Instance.new("Weld")
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = 'Right Shoulder'

local lm = Instance.new("Weld")
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = 'Left Shoulder'

local tool = Instance.new('HopperBin', plr.Backpack)
tool.Name = 'Dual M1911'

function scan(parent)
    local parts,last = {}
        for _,v in pairs(parent:GetChildren()) do
            if (v:IsA("BasePart")) then
            v.Anchored = true
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

--1-Torso
holsters=Instance.new("Model")
holsters.Name="Torso"
holsters.Parent=char
--2-HolsterWeldTo2
obj2=Instance.new("Part")
obj2.CFrame=CFrame.new(Vector3.new(14.8519955,1.44200003,35.6479988)) * CFrame.Angles(1.8325955867767,-1.4901161193848e-008,-3.1415927410126)
obj2.FormFactor=Enum.FormFactor.Custom
obj2.LeftSurface=10
obj2.Transparency=1
obj2.TopSurface=10
obj2.RightSurface=10
obj2.Material="SmoothPlastic"
obj2.Size=Vector3.new(0.200000003,0.200000003,1.60000014)
obj2.FrontSurface=10
obj2.BottomSurface=10
obj2.BackSurface=10
obj2.BrickColor=BrickColor.new("Dark stone grey")
obj2.Name="HolsterWeldTo2"
obj2.Parent=holsters
--3-Mesh
obj3=Instance.new("BlockMesh")
obj3.Scale=Vector3.new(0.999499977,1,1)
obj3.Parent=obj2
--4-Belt
obj4=Instance.new("Part")
obj4.CFrame=CFrame.new(Vector3.new(13.6000061,1.49000156,35.8999977)) * CFrame.Angles(-1.4901162970204e-008,0,-0)
obj4.FormFactor=Enum.FormFactor.Custom
obj4.LeftSurface=10
obj4.TopSurface=10
obj4.RightSurface=10
obj4.Material="SmoothPlastic"
obj4.Size=Vector3.new(2,0.200000003,1)
obj4.FrontSurface=10
obj4.BottomSurface=10
obj4.BackSurface=10
obj4.BrickColor=BrickColor.new("Dark stone grey")
obj4.Name="Belt"
obj4.Parent=holsters
--5-Mesh
obj5=Instance.new("BlockMesh")
obj5.Scale=Vector3.new(1.10000002,1,1.10000002)
obj5.Parent=obj4
--6-Hold2
obj6=Instance.new("Part")
obj6.CFrame=CFrame.new(Vector3.new(14.8000011,1.0950017,35.6999893)) * CFrame.Angles(0.26179936528206,0,-0)
obj6.FormFactor=Enum.FormFactor.Custom
obj6.LeftSurface=10
obj6.TopSurface=10
obj6.RightSurface=10
obj6.Material="SmoothPlastic"
obj6.Size=Vector3.new(0.400000006,1.00999999,0.600000024)
obj6.FrontSurface=10
obj6.BottomSurface=10
obj6.BackSurface=10
obj6.BrickColor=BrickColor.new("Dark stone grey")
obj6.Name="Hold2"
obj6.Parent=holsters
--7-TorsoWeld
obj7=Instance.new("Part")
obj7.CFrame=CFrame.new(Vector3.new(13.6000061,1.99000168,35.8999939)) * CFrame.Angles(-0,0,-0)
obj7.FormFactor=Enum.FormFactor.Custom
obj7.LeftSurface=10
obj7.Transparency=1
obj7.TopSurface=10
obj7.RightSurface=10
obj7.Size=Vector3.new(2,2,1)
obj7.FrontSurface=10
obj7.BottomSurface=10
obj7.BackSurface=10
obj7.BrickColor=BrickColor.new("Bright blue")
obj7.Name="TorsoWeld"
obj7.Parent=holsters
--8-HolsterWeldTo
obj8=Instance.new("Part")
obj8.CFrame=CFrame.new(Vector3.new(12.342,1.44200003,35.6479988)) * CFrame.Angles(1.8325955867767,-1.4901161193848e-008,-3.1415927410126)
obj8.FormFactor=Enum.FormFactor.Custom
obj8.LeftSurface=10
obj8.Transparency=1
obj8.TopSurface=10
obj8.RightSurface=10
obj8.Material="SmoothPlastic"
obj8.Size=Vector3.new(0.200000003,0.200000003,1.60000014)
obj8.FrontSurface=10
obj8.BottomSurface=10
obj8.BackSurface=10
obj8.BrickColor=BrickColor.new("Dark stone grey")
obj8.Name="HolsterWeldTo"
obj8.Parent=holsters
--9-Mesh
obj9=Instance.new("BlockMesh")
obj9.Scale=Vector3.new(0.999499977,1,1)
obj9.Parent=obj8
--10-Hold
obj10=Instance.new("Part")
obj10.CFrame=CFrame.new(Vector3.new(12.4000053,1.09500158,35.6999893)) * CFrame.Angles(0.26179936528206,0,-0)
obj10.FormFactor=Enum.FormFactor.Custom
obj10.LeftSurface=10
obj10.TopSurface=10
obj10.RightSurface=10
obj10.Material="SmoothPlastic"
obj10.Size=Vector3.new(0.400000006,1.00999999,0.600000024)
obj10.FrontSurface=10
obj10.BottomSurface=10
obj10.BackSurface=10
obj10.BrickColor=BrickColor.new("Dark stone grey")
obj10.Name="Hold"
obj10.Parent=holsters
holsters:MakeJoints()
scan(holsters)

--1-M1911
gun=Instance.new("Model")
gun.Name="M1911"
gun.Parent=char
--2-Handle
obj2=Instance.new("Part")
obj2.CFrame=CFrame.new(Vector3.new(12.3420238,1.86332655,36.3927727)) * CFrame.Angles(1.5707963705063,-4.4703483581543e-008,3.1415927410126)
obj2.FormFactor=Enum.FormFactor.Custom
obj2.LeftSurface=10
obj2.TopSurface=10
obj2.RightSurface=10
obj2.Material=Enum.Material.Wood
obj2.Size=Vector3.new(0.200000003,0.99999994,0.400000036)
obj2.FrontSurface=10
obj2.BottomSurface=10
obj2.BackSurface=10
obj2.BrickColor=BrickColor.new("Brown")
obj2.Name="Handle"
obj2.Parent=gun
--3-Decor
obj3=Instance.new("Part")
obj3.CFrame=CFrame.new(Vector3.new(12.3420143,2.28510284,35.9773712)) * CFrame.Angles(1.832595705986,0,-3.1415927410126)
obj3.FormFactor=Enum.FormFactor.Custom
obj3.LeftSurface=10
obj3.TopSurface=10
obj3.RightSurface=10
obj3.Material="SmoothPlastic"
obj3.Size=Vector3.new(0.200000003,0.200000003,0.200000003)
obj3.FrontSurface=10
obj3.BottomSurface=10
obj3.BackSurface=10
obj3.BrickColor=BrickColor.new("Dark stone grey")
obj3.Name="Decor"
obj3.Parent=gun
--4-Mesh
obj4=Instance.new("BlockMesh")
obj4.Offset=Vector3.new(0,0.00999999978,0.0399999991)
obj4.Scale=Vector3.new(0.699999988,0.200000003,0.800000012)
obj4.Parent=obj3
--5-Decor
obj5=Instance.new("Part")
obj5.CFrame=CFrame.new(Vector3.new(12.3420143,1.46716928,35.8617401)) * CFrame.Angles(1.8325955867767,-1.4901161193848e-008,-3.1415927410126)
obj5.FormFactor=Enum.FormFactor.Custom
obj5.LeftSurface=10
obj5.TopSurface=10
obj5.RightSurface=10
obj5.Material="SmoothPlastic"
obj5.Size=Vector3.new(0.200000003,0.400000006,0.200000003)
obj5.FrontSurface=10
obj5.BottomSurface=10
obj5.BackSurface=10
obj5.BrickColor=BrickColor.new("Dark stone grey")
obj5.Name="Decor"
obj5.Parent=gun
--6-Mesh
obj6=Instance.new("BlockMesh")
obj6.Scale=Vector3.new(0.600000024,1,0.200000003)
obj6.Parent=obj5
--7-Decor
obj7=Instance.new("Part")
obj7.CFrame=CFrame.new(Vector3.new(12.3420124,1.55429673,36.0928192)) * CFrame.Angles(0.45686540007591,-1.1175870895386e-008,3.141592502594)
obj7.FormFactor=Enum.FormFactor.Custom
obj7.LeftSurface=10
obj7.TopSurface=10
obj7.RightSurface=10
obj7.Material="SmoothPlastic"
obj7.Size=Vector3.new(0.200000003,0.310000002,0.200000003)
obj7.FrontSurface=10
obj7.BottomSurface=10
obj7.BackSurface=10
obj7.BrickColor=BrickColor.new("Dark stone grey")
obj7.Name="Decor"
obj7.Parent=gun
--8-Mesh
obj8=Instance.new("BlockMesh")
obj8.Scale=Vector3.new(0.600000024,1,0.200000003)
obj8.Parent=obj7
--9-Decor
obj9=Instance.new("Part")
obj9.CFrame=CFrame.new(Vector3.new(12.3420258,2.21372294,35.8965569)) * CFrame.Angles(0.76370096206665,-1.4901161193848e-008,-3.1415927410126)
obj9.FormFactor=Enum.FormFactor.Custom
obj9.LeftSurface=10
obj9.TopSurface=10
obj9.RightSurface=10
obj9.Material="SmoothPlastic"
obj9.Size=Vector3.new(0.200000003,0.200000003,0.200000003)
obj9.FrontSurface=10
obj9.BottomSurface=10
obj9.BackSurface=10
obj9.BrickColor=BrickColor.new("Dark stone grey")
obj9.Name="Decor"
obj9.Parent=gun
--10-Mesh
obj10=Instance.new("BlockMesh")
obj10.Scale=Vector3.new(0.400000006,0.200000003,1)
obj10.Parent=obj9
--11-Decor
obj11=Instance.new("Part")
obj11.CFrame=CFrame.new(Vector3.new(12.3420229,1.8633275,36.2927704)) * CFrame.Angles(1.5707963705063,-4.4703483581543e-008,3.1415927410126)
obj11.FormFactor=Enum.FormFactor.Custom
obj11.LeftSurface=10
obj11.TopSurface=10
obj11.RightSurface=10
obj11.Material="SmoothPlastic"
obj11.Size=Vector3.new(0.200000003,1.20000005,0.400000036)
obj11.FrontSurface=10
obj11.BottomSurface=10
obj11.BackSurface=10
obj11.BrickColor=BrickColor.new("Dark stone grey")
obj11.Name="Decor"
obj11.Parent=gun
--12-Mesh
obj12=Instance.new("BlockMesh")
obj12.Offset=Vector3.new(0,-0.0700000003,0)
obj12.Scale=Vector3.new(0.995000005,0.949999988,1.20000005)
obj12.Parent=obj11
--13-Decor
obj13=Instance.new("Part")
obj13.CFrame=CFrame.new(Vector3.new(12.3420258,2.30202365,35.8373909)) * CFrame.Angles(1.756756901741,-1.0430812835693e-007,3.1415927410126)
obj13.FormFactor=Enum.FormFactor.Custom
obj13.LeftSurface=10
obj13.TopSurface=10
obj13.RightSurface=10
obj13.Material="SmoothPlastic"
obj13.Size=Vector3.new(0.200000003,0.200000003,0.200000003)
obj13.FrontSurface=10
obj13.BottomSurface=10
obj13.BackSurface=10
obj13.BrickColor=BrickColor.new("Dark stone grey")
obj13.Name="Decor"
obj13.Parent=gun
--14-Mesh
obj14=Instance.new("BlockMesh")
obj14.Scale=Vector3.new(0.400000006,0.200000003,0.400000006)
obj14.Parent=obj13
--15-BulletCase
obj15=Instance.new("Part")
obj15.CFrame=CFrame.new(Vector3.new(12.3420229,1.44165683,35.6482697)) * CFrame.Angles(1.8325955867767,-1.4901161193848e-008,-3.1415927410126)
obj15.FormFactor=Enum.FormFactor.Custom
obj15.LeftSurface=10
obj15.TopSurface=10
obj15.RightSurface=10
obj15.Material="SmoothPlastic"
obj15.Size=Vector3.new(0.200000003,0.200000003,1.60000014)
obj15.FrontSurface=10
obj15.BottomSurface=10
obj15.BackSurface=10
obj15.BrickColor=BrickColor.new("Dark stone grey")
obj15.Name="BulletCase"
obj15.Parent=gun
--16-Mesh
obj16=Instance.new("BlockMesh")
obj16.Scale=Vector3.new(0.999499977,1,1)
obj16.Parent=obj15
--17-Flashlight
obj17=Instance.new("Part")
obj17.CFrame=CFrame.new(Vector3.new(12.3420115,0.729269207,35.601902)) * CFrame.Angles(-2.8797931671143,-1.7763568394003e-015,-3.1415927410126)
obj17.FormFactor=Enum.FormFactor.Custom
obj17.LeftSurface=10
obj17.TopSurface=10
obj17.RightSurface=10
obj17.Material="SmoothPlastic"
obj17.Size=Vector3.new(0.200000003,0.200000003,0.200000003)
obj17.FrontSurface=10
obj17.BottomSurface=10
obj17.BackSurface=10
obj17.BrickColor=BrickColor.new("Pastel yellow")
obj17.Name="Flashlight"
obj17.Parent=gun
--18-Mesh
obj18=Instance.new("CylinderMesh")
obj18.Offset=Vector3.new(0,0,0.0500000007)
obj18.Scale=Vector3.new(0.5,1.01999998,0.5)
obj18.Parent=obj17
--19-Decor
obj19=Instance.new("Part")
obj19.CFrame=CFrame.new(Vector3.new(12.3420143,2.1178081,35.8290215)) * CFrame.Angles(1.832595705986,0,-3.1415927410126)
obj19.FormFactor=Enum.FormFactor.Custom
obj19.LeftSurface=10
obj19.TopSurface=10
obj19.RightSurface=10
obj19.Material="SmoothPlastic"
obj19.Size=Vector3.new(0.200000003,0.400000036,0.200000003)
obj19.FrontSurface=10
obj19.BottomSurface=10
obj19.BackSurface=10
obj19.BrickColor=BrickColor.new("Black")
obj19.Name="Decor"
obj19.Parent=gun
--20-Mesh
obj20=Instance.new("BlockMesh")
obj20.Scale=Vector3.new(0.5,0.5,1.10000002)
obj20.Parent=obj19
--21-Decor
obj21=Instance.new("Part")
obj21.CFrame=CFrame.new(Vector3.new(12.2895117,2.05304575,35.6843338)) * CFrame.Angles(1.832595705986,1.5699505805969,-3.1415927410126)
obj21.FormFactor=Enum.FormFactor.Custom
obj21.LeftSurface=10
obj21.TopSurface=10
obj21.RightSurface=10
obj21.Material="SmoothPlastic"
obj21.Size=Vector3.new(0.399999976,0.200000003,0.200000003)
obj21.FrontSurface=10
obj21.BottomSurface=10
obj21.BackSurface=10
obj21.BrickColor=BrickColor.new("Dark stone grey")
obj21.Name="Decor"
obj21.Parent=gun
--22-Mesh
obj22=Instance.new("SpecialMesh")
obj22.MeshType=Enum.MeshType.Wedge
obj22.Scale=Vector3.new(1,0.25,0.50999999)
obj22.Parent=obj21
--23-Decor
obj23=Instance.new("Part")
obj23.CFrame=CFrame.new(Vector3.new(12.3420172,1.41577363,35.744442)) * CFrame.Angles(-2.8797931671143,-1.7763568394003e-015,-3.1415927410126)
obj23.FormFactor=Enum.FormFactor.Custom
obj23.LeftSurface=10
obj23.TopSurface=10
obj23.RightSurface=10
obj23.Material="SmoothPlastic"
obj23.Size=Vector3.new(0.200000003,1.60000002,0.200000003)
obj23.FrontSurface=10
obj23.BottomSurface=10
obj23.BackSurface=10
obj23.BrickColor=BrickColor.new("Dark stone grey")
obj23.Name="Decor"
obj23.Parent=gun
--24-Mesh
obj24=Instance.new("CylinderMesh")
obj24.Parent=obj23
--25-ShellCaseSpawner
obj25=Instance.new("Part")
obj25.CFrame=CFrame.new(Vector3.new(12.3420172,1.75731552,35.6289024)) * CFrame.Angles(-2.8797931671143,-1.7763568394003e-015,-3.1415927410126)
obj25.FormFactor=Enum.FormFactor.Custom
obj25.LeftSurface=10
obj25.TopSurface=10
obj25.RightSurface=10
obj25.Material="SmoothPlastic"
obj25.Size=Vector3.new(0.200000003,0.200000003,0.200000003)
obj25.FrontSurface=10
obj25.BottomSurface=10
obj25.BackSurface=10
obj25.Name="ShellCaseSpawner"
obj25.Parent=gun
--26-Mesh
obj26=Instance.new("CylinderMesh")
obj26.Offset=Vector3.new(0.0149999997,0,-0.0350000001)
obj26.Scale=Vector3.new(0.75,1,0.75)
obj26.Parent=obj25
--27-Decor
obj27=Instance.new("Part")
obj27.CFrame=CFrame.new(Vector3.new(12.3420115,0.765501678,35.4666672)) * CFrame.Angles(-2.8797931671143,-1.7763568394003e-015,-3.1415927410126)
obj27.FormFactor=Enum.FormFactor.Custom
obj27.LeftSurface=10
obj27.TopSurface=10
obj27.RightSurface=10
obj27.Material="SmoothPlastic"
obj27.Size=Vector3.new(0.200000003,0.200000003,0.200000003)
obj27.FrontSurface=10
obj27.BottomSurface=10
obj27.BackSurface=10
obj27.BrickColor=BrickColor.new("Black")
obj27.Name="Decor"
obj27.Parent=gun
--28-Mesh
obj28=Instance.new("CylinderMesh")
obj28.Offset=Vector3.new(0,0,0.0500000007)
obj28.Scale=Vector3.new(0.5,1.01999998,0.5)
obj28.Parent=obj27
--29-Decor
obj29=Instance.new("Part")
obj29.CFrame=CFrame.new(Vector3.new(12.3920164,1.4734931,35.5290413)) * CFrame.Angles(-1.3089969158173,-1.5701057910919,-0)
obj29.FormFactor=Enum.FormFactor.Custom
obj29.LeftSurface=10
obj29.TopSurface=10
obj29.RightSurface=10
obj29.Material="SmoothPlastic"
obj29.Size=Vector3.new(1.60000002,0.200000003,0.200000003)
obj29.FrontSurface=10
obj29.BottomSurface=10
obj29.BackSurface=10
obj29.BrickColor=BrickColor.new("Dark stone grey")
obj29.Name="Decor"
obj29.Parent=gun
--30-Mesh
obj30=Instance.new("SpecialMesh")
obj30.MeshType=Enum.MeshType.Wedge
obj30.Scale=Vector3.new(1,0.25,0.5)
obj30.Parent=obj29
--31-Decor
obj31=Instance.new("Part")
obj31.CFrame=CFrame.new(Vector3.new(12.2895117,1.18371284,35.4513969)) * CFrame.Angles(1.832595705986,1.5699505805969,-3.1415927410126)
obj31.FormFactor=Enum.FormFactor.Custom
obj31.LeftSurface=10
obj31.TopSurface=10
obj31.RightSurface=10
obj31.Material="SmoothPlastic"
obj31.Size=Vector3.new(1,0.200000003,0.200000003)
obj31.FrontSurface=10
obj31.BottomSurface=10
obj31.BackSurface=10
obj31.BrickColor=BrickColor.new("Dark stone grey")
obj31.Name="Decor"
obj31.Parent=gun
--32-Mesh
obj32=Instance.new("SpecialMesh")
obj32.MeshType=Enum.MeshType.Wedge
obj32.Scale=Vector3.new(1,0.25,0.50999999)
obj32.Parent=obj31
gun:MakeJoints()
scan(gun)

local gun2 = gun:clone()
gun2.Parent = char

local torsoweld = Instance.new('Weld', char)
torsoweld.Part0 = torso
torsoweld.Part1 = holsters.TorsoWeld
torsoweld.C1 = CFrame.Angles(0,math.pi,0)

local gunweld = Instance.new('Weld', char)
gunweld.Part0 = gun.BulletCase
gunweld.Part1 = holsters.HolsterWeldTo

local gunweld2 = Instance.new('Weld', char)
gunweld2.Part0 = gun2.BulletCase
gunweld2.Part1 = holsters.HolsterWeldTo2

local bodygyro = Instance.new('BodyGyro')
bodygyro.maxTorque = Vector3.new(14e16,14e16,14e16)
bodygyro.P = 15000

local rsc0 = rm.C0
local lsc0 = lm.C0
local angle = 0
local anglespeed = .5
local speed = .3
local side = 0
local Equipped = false
local origneckc0 = neck.C0
local origneckc1 = neck.C1
local neckc0 = CFrame.new(0, 1, 0)
local firing = false
local pistol = 1
local light = false

local gunlight = Instance.new('SpotLight', gun.Flashlight)
gunlight.Range = 40
gunlight.Angle = 60
gunlight.Face = 'Bottom'
gunlight.Shadows = true
gunlight.Enabled = false

local gunlight2 = gunlight:clone()
gunlight2.Parent = gun2.Flashlight

local fire = Instance.new('Sound', head)
fire.SoundId = "rbxassetid://132373536"
fire.Volume = 1

local reload = Instance.new('Sound', head)
reload.SoundId = "rbxassetid://138109513"
reload.Volume = 1

local ammo = 14
local scrgui = Instance.new('ScreenGui', plrgui)
scrgui.Name = 'DualGunsGui'

local ammonution = Instance.new('TextLabel', scrgui)
ammonution.Size = UDim2.new(0,150,0,50)
ammonution.Position = UDim2.new(1, -250, 1, -70)
ammonution.BackgroundTransparency = 1
ammonution.TextColor3 = Color3.new(1,1,1)
ammonution.TextStrokeTransparency = .1
ammonution.Text = ('| '):rep(ammo)
ammonution.TextXAlignment = 'Right'
ammonution.ZIndex = 2
ammonution.FontSize = 'Size18'

local ammonution2 = Instance.new('TextLabel', scrgui)
ammonution2.Size = UDim2.new(0,150,0,50)
ammonution2.Position = UDim2.new(1, -250, 1, -70)
ammonution2.BackgroundTransparency = 1
ammonution2.TextColor3 = Color3.new(.5,.5,.5)
ammonution2.TextStrokeTransparency = .1
ammonution2.TextXAlignment = 'Right'
ammonution2.Text = ('| '):rep(ammo)
ammonution2.FontSize = 'Size18'

local rel = Instance.new('TextButton', scrgui)
rel.Size = UDim2.new(0,500,0,250)
rel.Position = UDim2.new(.5, -250, .8, -250)
rel.BackgroundTransparency = 1
rel.TextColor3 = Color3.new(.7,0,0)
rel.Visible = false
rel.Text = 'Reload (r)'
rel.FontSize = 'Size24'

rel.MouseButton1Down:connect(function()
            if ammo >= 14 or firing then return end
            dontclerpneck = true
            firing = true
            local dropammo = gun.Handle:clone()
            dropammo:ClearAllChildren()
            dropammo.CanCollide = true
            dropammo.BrickColor = BrickColor.Black()
            dropammo.Parent = workspace
            dropammo.CFrame = gun.Handle.CFrame
            local dropammo2 = dropammo:clone()
            dropammo2.Parent = workspace
            dropammo2.CFrame = gun2.Handle.CFrame * CFrame.new(0, -.5, 0)
            game:service'Debris':AddItem(dropammo,15)
            game:service'Debris':AddItem(dropammo2,15)
            wait(.5)
            reload:play()
            for i = 1, 65 do
                firing = true
                rscf = rsc0 * CFrame.Angles(math.pi/2, 0, 0)
                lscf = lsc0 * CFrame.new(1.2, 0, -.4) * CFrame.Angles(math.pi/4 + math.sin(angle)*math.random()/20, math.rad(30), math.pi/3.2)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rm.C0 = clerp(rm.C0,rscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            reload:play()
            for i = 1, 65 do
                firing = true
                rscf = rsc0 * CFrame.new(-1.2, 0, -.4) * CFrame.Angles(math.pi/4 + math.sin(angle)*math.random()/20, -math.rad(30), -math.pi/3.2)
                lscf = lsc0 * CFrame.Angles(math.pi/2, 0, 0)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rm.C0 = clerp(rm.C0,rscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            dontclerpneck = false
            firing = false
            ammo = 14
            ammonution.Text = ('| '):rep(ammo)
end)
tool.Selected:connect(function(mouse)
	Equipped = true
    bodygyro.Parent = torso
    bodygyro.cframe = torso.CFrame
    rs.Parent = nil
    ls.Parent = nil
	rm.Parent = torso
	lm.Parent = torso
    neck.C0 = CFrame.new(0, 1, 0)
    neck.C1 = CFrame.new(0, -0.5, 0)
    gunweld.Part0 = gun.Handle
    gunweld2.Part0 = gun2.Handle
    gunweld.Part1 = ra
    gunweld2.Part1 = la
    gunweld.C1 = CFrame.new(0, -.8, 0)
    gunweld.C0 = CFrame.Angles(math.pi/2-math.rad(15), 0, math.pi)
    gunweld2.C1 = CFrame.new(0, -.8, 0)
    gunweld2.C0 = CFrame.Angles(math.pi/2-math.rad(15), 0, math.pi)
    mouse.KeyDown:connect(function(k)
        if k == "r" then
            if ammo >= 14 or firing then return end
            dontclerpneck = true
            firing = true
            local dropammo = gun.Handle:clone()
            dropammo:ClearAllChildren()
            dropammo.CanCollide = true
            dropammo.BrickColor = BrickColor.Black()
            dropammo.Parent = workspace
            dropammo.CFrame = gun.Handle.CFrame
            local dropammo2 = dropammo:clone()
            dropammo2.Parent = workspace
            dropammo2.CFrame = gun2.Handle.CFrame * CFrame.new(0, -.5, 0)
            game:service'Debris':AddItem(dropammo,15)
            game:service'Debris':AddItem(dropammo2,15)
            wait(.5)
            reload:play()
            for i = 1, 65 do
                firing = true
                rscf = rsc0 * CFrame.Angles(math.pi/2, 0, 0)
                lscf = lsc0 * CFrame.new(1.2, 0, -.4) * CFrame.Angles(math.pi/4 + math.sin(angle)*math.random()/20, math.rad(30), math.pi/3.2)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rm.C0 = clerp(rm.C0,rscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            reload:play()
            for i = 1, 65 do
                firing = true
                rscf = rsc0 * CFrame.new(-1.2, 0, -.4) * CFrame.Angles(math.pi/4 + math.sin(angle)*math.random()/20, -math.rad(30), -math.pi/3.2)
                lscf = lsc0 * CFrame.Angles(math.pi/2, 0, 0)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rm.C0 = clerp(rm.C0,rscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            dontclerpneck = false
            firing = false
            ammo = 14
            ammonution.Text = ('| '):rep(ammo)
        end
        if k == "f" then
            light = not light
            local sound = Instance.new('Sound', head)
            sound.SoundId = "rbxassetid://115959318"
            sound.Volume = 1
            sound:play()
            game:service'Debris':AddItem(sound,1)
        end
    end)
	mouse.Button1Down:connect(function()
        if ammo <= 0 then
            local sound = Instance.new('Sound', head)
            sound.SoundId = "rbxassetid://132464034"
            sound.Volume = 1
            sound:play()
            game:service'Debris':AddItem(sound,1)
        end
        if firing or ammo <= 0 then return end
        ammo = ammo - 1
        ammonution.Text = ('| '):rep(ammo)
        firing = true
            local pa = Instance.new('Part')
            pa.CanCollide = false
            pa.Anchored = true
            pa.Locked = true
            pa.FormFactor = 'Custom'
            pa.BrickColor = BrickColor.new('New Yeller')
            pa.Size = Vector3.new(.2,3,.2)
            Instance.new('BlockMesh', pa).Scale = Vector3.new(.2,3,.2)
            local thegun
            if pistol == 1 then
                thegun = gun.BulletCase
            elseif pistol == 2 then
                thegun = gun2.BulletCase
            end
            local muzzle = Instance.new('PointLight', thegun)
            muzzle.Range = 12
            muzzle.Color = Color3.new(1,.6,.1)
            game:service'Debris':AddItem(muzzle, .05)
            local shell = pa:clone()
            shell:ClearAllChildren()
            shell.Anchored = false
            shell.CFrame = thegun.Parent.ShellCaseSpawner.CFrame
            shell.Size = Vector3.new(.2,.5,.2)
            shell.Parent = workspace
            shell.BrickColor = BrickColor.new('Bright yellow')
            shell.CanCollide = true
            game:service'Debris':AddItem(shell, 5)
            local bulletpos = thegun.Position
            local bulletvelocity = (mouse.Hit.p - bulletpos).unit*15
            local lastbulletpos = thegun.Position 
            fire:play()
            coroutine.wrap(function()
                while game:service'RunService'.Stepped:wait() do
                    lastbulletpos = bulletpos 
                    bulletpos = bulletpos + bulletvelocity
                    local RayCast = Ray.new(lastbulletpos, (bulletpos - lastbulletpos))
                    local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
                    if (torso.Position - pa.Position).magnitude > 800 then
                        pa:Destroy()
                        break
                    end
                    pa.Anchored = true
                    pa.CFrame = CFrame.new(bulletpos, bulletpos+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                    if hit then
                        local damage
                        local sound = Instance.new('Sound', pa)
                        sound.SoundId = "rbxassetid://166423137"
                        sound.Pitch = 1.2+math.random()/3
                        sound.Volume = 1
                        sound:play()
                        pa:Destroy()
                        game:service'Debris':AddItem(sound,4)
                        local ray = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
                        local hitz, enz = workspace:FindPartOnRay(ray, char)
                        local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
                        if hum then
                            damage = math.random(5,10)
                            hum:TakeDamage(damage)
                        end
                        local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
                        if hum then
                            damage = math.random(5,10)
                            hum:TakeDamage(damage)
                        end
                        break
                    end
                    pa.Anchored = true
                    pa.Parent = char
                    pa.CFrame = CFrame.new(bulletpos, bulletpos+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                end
            end)()

        if pistol == 1 then
            pistol = 2
            for i = 1, 4 do
                rscf = CFrame.new(Vector3.new(rsc0.x, rsc0.y, rsc0.z), torso.CFrame:pointToObjectSpace(plrmouse.Hit.p)) * CFrame.new(0, 0, .5) * CFrame.Angles(math.pi/1.5 + math.sin(angle)*math.random()/20, 0, math.cos(angle)*math.random()/20)
    	        lscf = CFrame.new(Vector3.new(lsc0.x, lsc0.y, lsc0.z), torso.CFrame:pointToObjectSpace(plrmouse.Hit.p)) * CFrame.Angles(math.pi/2 + math.sin(angle)*math.random()/20, 0, -math.cos(angle)*math.random()/20)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rm.C0 = clerp(rm.C0,rscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
        elseif pistol == 2 then
            for i = 1, 4 do
                rscf = CFrame.new(Vector3.new(rsc0.x, rsc0.y, rsc0.z), torso.CFrame:pointToObjectSpace(plrmouse.Hit.p)) * CFrame.Angles(math.pi/2 + math.sin(angle)*math.random()/20, 0, math.cos(angle)*math.random()/20)
                lscf = CFrame.new(Vector3.new(lsc0.x, lsc0.y, lsc0.z), torso.CFrame:pointToObjectSpace(plrmouse.Hit.p)) * CFrame.new(0, 0, .5) * CFrame.Angles(math.pi/1.5 + math.sin(angle)*math.random()/20, 0, -math.cos(angle)*math.random()/20)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rm.C0 = clerp(rm.C0,rscf,speed)
                game:service'RunService'.RenderStepped:wait()
            end
            pistol = 1
        end
        firing = false
    end)
end)
tool.Deselected:connect(function()
	Equipped = false
    rm.Parent = nil
    lm.Parent = nil
	rs.Parent = torso
	ls.Parent = torso
    neck.C0 = origneckc0
    neck.C1 = origneckc1
	lm.C0 = lsc0
	rm.C0 = rsc0
    gunweld.Part0 = gun.BulletCase
    gunweld.Part1 = holsters.HolsterWeldTo
    gunweld.C0 = CFrame.new()
    gunweld.C1 = CFrame.new()
    gunweld2.Part0 = gun2.BulletCase
    gunweld2.Part1 = holsters.HolsterWeldTo2
    gunweld2.C0 = CFrame.new()
    gunweld2.C1 = CFrame.new()
    bodygyro.Parent = nil
end)

game:service'RunService'.RenderStepped:connect(function()
	if Equipped then
        if ammo <= 0 then
            rel.Visible = true
        else
            rel.Visible = false
        end
        if light then
            gunlight.Enabled = true
            gunlight2.Enabled = true
        else
            gunlight.Enabled = false
            gunlight2.Enabled = false
        end
		angle = angle + (0.05+math.random()/20)
        local rscf = rsc0
        local lscf = lsc0
        local ncf = neckc0
        local rmx,rmy,rmz = rm.C0:toEulerAnglesXYZ()
        if rmz >= 1 then
            bodygyro.cframe = bodygyro.cframe * CFrame.Angles(0, -rmz/5, 0)
        elseif rmz <= -1 then
            bodygyro.cframe = bodygyro.cframe * CFrame.Angles(0, -rmz/5, 0)
        end
    	rscf = CFrame.new(Vector3.new(rsc0.x, rsc0.y, rsc0.z), torso.CFrame:pointToObjectSpace(plrmouse.Hit.p)) * CFrame.Angles(math.pi/2 + math.sin(angle)*math.random()/20, 0, math.cos(angle)*math.random()/20)
    	lscf = CFrame.new(Vector3.new(lsc0.x, lsc0.y, lsc0.z), torso.CFrame:pointToObjectSpace(plrmouse.Hit.p)) * CFrame.Angles(math.pi/2 + math.sin(angle)*math.random()/20, 0, -math.cos(angle)*math.random()/20)
        ncf = neckc0 * CFrame.new(Vector3.new(), torso.CFrame:pointToObjectSpace(plrmouse.Hit.p))
        if not firing then
        	lm.C0 = clerp(lm.C0,lscf,speed)
        	rm.C0 = clerp(rm.C0,rscf,speed)
        end
        if not dontclerpneck then
            neck.C0 = clerp(neck.C0,ncf,speed)
        end
	end
    if light and not Equipped then
        gunlight.Enabled = false
        gunlight2.Enabled = false
    end
end)