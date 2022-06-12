--noob fix xd by kent
player = game:GetService("Players").LocalPlayer
char = player.Character
mouse = player:GetMouse()
attack = false
local makeorb = false
idleq = false
local skl = false
local healingmode = false
parts = {}
poses = {}
sizes = {}
local obj3, TARG10, TARG11, STARG, lastdg, dg, dgm, lastdf, df, dfm = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local basicunlocked = false
mc = Instance.new("NumberValue", char)
mc.Name = "CloanTime"
mc.Value = 0
ht = Instance.new("NumberValue", char)
ht.Name = "HealingTime"
ht.Value = 6
stun = Instance.new("BoolValue", char)
stun.Name = "Stunned"
stun.Value = false
atk = Instance.new("NumberValue", char)
atk.Name = "Attack"
atk.Value = 1
def = Instance.new("NumberValue", char)
def.Name = "Defense"
def.Value = 1.1
spd = Instance.new("NumberValue", char)
spd.Name = "Speed"
spd.Value = 1
deft = Instance.new("NumberValue", char)
deft.Name = "DefenseTime"
deft.Value = 0
atkt = Instance.new("NumberValue", char)
atkt.Name = "AttackTime"
atkt.Value = 0
spdt = Instance.new("NumberValue", char)
spdt.Name = "SpeedTime"
spdt.Value = 0
posd = Instance.new("BoolValue", char)
posd.Name = "Posioned"
posd.Value = false
pt = Instance.new("NumberValue", char)
pt.Name = "PoisonTime"
pt.Value = 0
bl = Instance.new("BoolValue", char)
bl.Name = "Blocking"
bl.Value = false
bll = Instance.new("BoolValue", char)
bll.Name = "BlockingLabel"
bll.Value = false
blt = Instance.new("NumberValue", char)
blt.Name = "BlockingLeft"
blt.Value = 50
pb = Instance.new("BoolValue", char)
pb.Name = "PauseBlock"
pb.Value = false
blm = 100
gd = Instance.new("BoolValue", char)
gd.Name = "Ground"
local TARG7, obj, TARG8, obj2 = nil, nil, nil, nil
for i,v in pairs(char:GetChildren()) do
  if v.ClassName == "Weld" then
    v:destroy()
  end
  if v.ClassName == "Model" then
    v:Destroy()
  end
end
for i,v in pairs(player.PlayerGui:GetChildren()) do
  if v.Name == "UI" then
    v:Destroy()
  end
end
for i,v in pairs(char.Head:GetChildren()) do
  if v.ClassName == "Sound" then
    v:Destroy()
  end
end
            local m = Instance.new("Model")
            m.Name = "Cortex"
            p1 = Instance.new("Part", m)
            p1.BrickColor = BrickColor.new("Bright orange")
            p1.Name = "P1"
            p1.CFrame = CFrame.new(74.4850006, 0.896979809, -80.3010025, 0.0250819121, -0.998309731, 0.0522681326, -0.86434716, -0.0479167439, -0.500589728, 0.502244949, -0.032613717, -0.864100158)
            p1.CanCollide = false
            p1.FormFactor = Enum.FormFactor.Custom
            p1.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b1 = Instance.new("BlockMesh", p1)
            b1.Name = "Mesh"
            b1.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p2 = Instance.new("Part", m)
            p2.BrickColor = BrickColor.new("Br. yellowish orange")
            p2.Name = "P2"
            p2.CFrame = CFrame.new(74.4646378, 1.25767887, -80.2053528, 0.0524596013, -0.998304963, -0.0248665046, -0.500721753, -0.0478316285, 0.864275277, -0.864011943, -0.0328799896, -0.502379239)
            p2.CanCollide = false
            p2.FormFactor = Enum.FormFactor.Custom
            p2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b2 = Instance.new("BlockMesh", p2)
            b2.Name = "Mesh"
            b2.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p3 = Instance.new("Part", m)
            p3.BrickColor = BrickColor.new("Bright orange")
            p3.Name = "P3"
            p3.CFrame = CFrame.new(74.4763031, 1.09725058, -80.3280258, 0.0546606034, -0.998306096, 0.0195044391, -0.965169787, -0.0478129238, 0.257183164, -0.255825788, -0.0328745358, -0.966154933)
            p3.CanCollide = false
            p3.FormFactor = Enum.FormFactor.Custom
            p3.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b3 = Instance.new("BlockMesh", p3)
            b3.Name = "Mesh"
            b3.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p4 = Instance.new("Part", m)
            p4.BrickColor = BrickColor.new("Br. yellowish orange")
            p4.Name = "P4"
            p4.CFrame = CFrame.new(74.4558029, 1.21352983, -79.8729706, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p4.CanCollide = false
            p4.FormFactor = Enum.FormFactor.Custom
            p4.Size = Vector3.new(0.200000003, 0.240367845, 0.721103489)
            p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b4 = Instance.new("BlockMesh", p4)
            b4.Name = "Mesh"
            b4.Scale = Vector3.new(0.80122602, 1, 1)
            p5 = Instance.new("Part", m)
            p5.BrickColor = BrickColor.new("Br. yellowish orange")
            p5.Name = "P5"
            p5.CFrame = CFrame.new(74.4283676, 1.6955595, -79.7407761, -0.998334646, 0.024735868, -0.0519541278, -0.0474555828, -0.864426851, 0.500495851, -0.0325219966, 0.502124786, 0.864173353)
            p5.CanCollide = false
            p5.FormFactor = Enum.FormFactor.Custom
            p5.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b5 = Instance.new("BlockMesh", p5)
            b5.Name = "Mesh"
            b5.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p6 = Instance.new("Part", m)
            p6.BrickColor = BrickColor.new("Br. yellowish orange")
            p6.Name = "P6"
            p6.CFrame = CFrame.new(74.4612656, 1.28415167, -80.1418076, 0.0443101786, -0.998302639, -0.0375729874, -0.260042369, -0.0478305817, 0.964402497, -0.964573622, -0.0329539329, -0.26171425)
            p6.CanCollide = false
            p6.FormFactor = Enum.FormFactor.Custom
            p6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b6 = Instance.new("BlockMesh", p6)
            b6.Name = "Mesh"
            b6.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p7 = Instance.new("Part", m)
            p7.BrickColor = BrickColor.new("Br. yellowish orange")
            p7.Name = "P7"
            p7.CFrame = CFrame.new(74.5116653, 1.13120699, -81.4558029, -0.047846213, -0.998299301, -0.0330535844, 0.998841882, -0.0479081944, 0.00134743063, -0.00291989627, -0.0329424888, 0.999444366)
            p7.CanCollide = false
            p7.FormFactor = Enum.FormFactor.Custom
            p7.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b7 = Instance.new("BlockMesh", p7)
            b7.Name = "Mesh"
            b7.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p8 = Instance.new("Part", m)
            p8.BrickColor = BrickColor.new("Br. yellowish orange")
            p8.Name = "P8"
            p8.CFrame = CFrame.new(74.5073547, 1.37105012, -81.6752472, 0.0477833003, -0.998318195, 0.0325690359, -0.998844683, -0.0478465706, -0.00143165409, 0.0029787838, -0.0324546471, -0.999460161)
            p8.CanCollide = false
            p8.FormFactor = Enum.FormFactor.Custom
            p8.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b8 = Instance.new("BlockMesh", p8)
            b8.Name = "Mesh"
            b8.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p9 = Instance.new("Part", m)
            p9.BrickColor = BrickColor.new("Br. yellowish orange")
            p9.Name = "P9"
            p9.CFrame = CFrame.new(74.293251, 1.23596191, -74.9483643, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p9.CanCollide = false
            p9.FormFactor = Enum.FormFactor.Custom
            p9.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b9 = Instance.new("BlockMesh", p9)
            b9.Name = "Mesh"
            b9.Scale = Vector3.new(0.40061301, 0.640980899, 0.40061301)
            p10 = Instance.new("Part", m)
            p10.BrickColor = BrickColor.new("Bright orange")
            p10.Name = "P10"
            p10.CFrame = CFrame.new(74.2423935, 1.30802619, -74.7262878, 0.0546606034, -0.998306096, 0.0195044391, -0.965169787, -0.0478129238, 0.257183164, -0.255825788, -0.0328745358, -0.966154933)
            p10.CanCollide = false
            p10.FormFactor = Enum.FormFactor.Custom
            p10.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b10 = Instance.new("SpecialMesh", p10)
            b10.MeshType = Enum.MeshType.Wedge
            b10.Name = "Mesh"
            b10.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p11 = Instance.new("Part", m)
            p11.BrickColor = BrickColor.new("Reddish brown")
            p11.Name = "Handle"
            p11.CFrame = CFrame.new(74.4855194, 1.25221145, -80.8340607, 0.998325169, -0.0328403264, 0.0474501625, 0.0475116409, 0.0013576051, -0.998860717, 0.0327301435, 0.999451339, 0.00290685217)
            p11.FormFactor = Enum.FormFactor.Custom
            p11.Size = Vector3.new(0.240367815, 1.76269746, 0.240367845)
            p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b11 = Instance.new("CylinderMesh", p11)
            b11.Name = "Mesh"
            p12 = Instance.new("Part", m)
            p12.BrickColor = BrickColor.new("Br. yellowish orange")
            p12.Name = "P12"
            p12.CFrame = CFrame.new(74.3949356, 1.1679045, -77.9511261, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p12.CanCollide = false
            p12.FormFactor = Enum.FormFactor.Custom
            p12.Size = Vector3.new(3.68563962, 0.200000003, 0.200000003)
            p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b12 = Instance.new("BlockMesh", p12)
            b12.Name = "Mesh"
            b12.Scale = Vector3.new(1, 0.640980899, 0.40061301)
            p13 = Instance.new("Part", m)
            p13.BrickColor = BrickColor.new("Br. yellowish orange")
            p13.Name = "P66"
            p13.CFrame = CFrame.new(74.3665009, 1.35283399, -77.3510208, 0.0331627727, -0.998302579, -0.0477015376, -0.00155824423, -0.0477707386, 0.998848021, -0.999440372, -0.0330418944, -0.00313103199)
            p13.CanCollide = false
            p13.FormFactor = Enum.FormFactor.Custom
            p13.Size = Vector3.new(5.04772425, 0.200000003, 0.240367845)
            p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b13 = Instance.new("BlockMesh", p13)
            b13.Name = "Mesh"
            b13.Scale = Vector3.new(1, 0.640980899, 1)
            p14 = Instance.new("Part", m)
            p14.BrickColor = BrickColor.new("Bright orange")
            p14.Name = "P14"
            p14.CFrame = CFrame.new(74.3404083, 1.09644794, -74.9578629, -0.0408099443, 0.998314857, -0.0410502069, 0.17482619, 0.04757661, 0.983440042, 0.98374635, 0.032949131, -0.176466092)
            p14.CanCollide = false
            p14.FormFactor = Enum.FormFactor.Custom
            p14.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b14 = Instance.new("SpecialMesh", p14)
            b14.MeshType = Enum.MeshType.Wedge
            b14.Name = "Mesh"
            b14.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p15 = Instance.new("Part", m)
            p15.BrickColor = BrickColor.new("Br. yellowish orange")
            p15.Name = "P15"
            p15.CFrame = CFrame.new(74.518837, 1.13096368, -81.6745529, 0.0477833003, -0.998318195, 0.0325690359, -0.998844683, -0.0478465706, -0.00143165409, 0.0029787838, -0.0324546471, -0.999460161)
            p15.CanCollide = false
            p15.FormFactor = Enum.FormFactor.Custom
            p15.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b15 = Instance.new("BlockMesh", p15)
            b15.Name = "Mesh"
            b15.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p16 = Instance.new("Part", m)
            p16.BrickColor = BrickColor.new("Bright orange")
            p16.Name = "P16"
            p16.CFrame = CFrame.new(74.3224258, 1.31191719, -74.7236786, -0.0547425598, 0.998297811, 0.019693315, 0.965134799, 0.0478394888, 0.257309258, 0.25593999, 0.0330841243, -0.966117382)
            p16.CanCollide = false
            p16.FormFactor = Enum.FormFactor.Custom
            p16.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b16 = Instance.new("SpecialMesh", p16)
            b16.MeshType = Enum.MeshType.Wedge
            b16.Name = "Mesh"
            b16.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p17 = Instance.new("Part", m)
            p17.BrickColor = BrickColor.new("Br. yellowish orange")
            p17.Name = "P17"
            p17.CFrame = CFrame.new(74.4683762, 1.21568036, -80.259903, 0.0571767092, -0.998301923, -0.0103862695, -0.707385659, -0.0478431173, 0.705194473, -0.704506218, -0.0329656862, -0.708920002)
            p17.CanCollide = false
            p17.FormFactor = Enum.FormFactor.Custom
            p17.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b17 = Instance.new("BlockMesh", p17)
            b17.Name = "Mesh"
            b17.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p18 = Instance.new("Part", m)
            p18.BrickColor = BrickColor.new("Br. yellowish orange")
            p18.Transparency = 1
            p18.Name = "P65"
            p18.CFrame = CFrame.new(74.4222488, 1.69581449, -79.5537949, -0.99832958, 0.0574649423, -0.0043799039, -0.0476420708, -0.865793467, -0.498110175, -0.0324076116, -0.497081518, 0.867088437)
            p18.CanCollide = false
            p18.FormFactor = Enum.FormFactor.Custom
            p18.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b18 = Instance.new("BlockMesh", p18)
            b18.Name = "Mesh"
            b18.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p19 = Instance.new("Part", m)
            p19.BrickColor = BrickColor.new("Bright orange")
            p19.Name = "P19"
            p19.CFrame = CFrame.new(74.3157806, 1.43817937, -74.7073364, -0.047846213, 0.998305321, 0.0328707919, 0.998841882, 0.0479079448, -0.00135614304, -0.00291983667, 0.0327594876, -0.999450326)
            p19.CanCollide = false
            p19.FormFactor = Enum.FormFactor.Custom
            p19.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b19 = Instance.new("SpecialMesh", p19)
            b19.MeshType = Enum.MeshType.Wedge
            b19.Name = "Mesh"
            b19.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p20 = Instance.new("Part", m)
            p20.BrickColor = BrickColor.new("Bright orange")
            p20.Name = "P20"
            p20.CFrame = CFrame.new(74.482811, 0.960588753, -80.327652, 0.0376285762, -0.99831003, 0.0440947786, -0.964450777, -0.0478217751, -0.259864569, 0.261527956, -0.0327405669, -0.964631498)
            p20.CanCollide = false
            p20.FormFactor = Enum.FormFactor.Custom
            p20.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b20 = Instance.new("BlockMesh", p20)
            b20.Name = "Mesh"
            b20.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p21 = Instance.new("Part", m)
            p21.BrickColor = BrickColor.new("Bright orange")
            p21.Name = "P64"
            p21.CFrame = CFrame.new(74.4723816, 1.16090846, -80.3017731, 0.0579402298, -0.998300374, 0.00467805378, -0.865818024, -0.0479083695, 0.498040795, -0.496982932, -0.0328980386, -0.867126048)
            p21.CanCollide = false
            p21.FormFactor = Enum.FormFactor.Custom
            p21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b21 = Instance.new("BlockMesh", p21)
            b21.Name = "Mesh"
            b21.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p22 = Instance.new("Part", m)
            p22.BrickColor = BrickColor.new("Br. yellowish orange")
            p22.Name = "P63"
            p22.CFrame = CFrame.new(74.3594208, 1.47329617, -77.3113251, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p22.CanCollide = false
            p22.FormFactor = Enum.FormFactor.Custom
            p22.Size = Vector3.new(4.9676013, 0.200000003, 0.200000003)
            p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b22 = Instance.new("BlockMesh", p22)
            b22.Name = "Mesh"
            b22.Scale = Vector3.new(1, 0.801226139, 0.40061301)
            p23 = Instance.new("Part", m)
            p23.BrickColor = BrickColor.new("Bright orange")
            p23.Name = "P23"
            p23.CFrame = CFrame.new(74.2357559, 1.43437028, -74.7099991, 0.0477872491, -0.998318255, 0.0325632654, -0.998844862, -0.0478465483, -0.00130974781, 0.00285680452, -0.0324547142, -0.999460518)
            p23.CanCollide = false
            p23.FormFactor = Enum.FormFactor.Custom
            p23.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b23 = Instance.new("SpecialMesh", p23)
            b23.MeshType = Enum.MeshType.Wedge
            b23.Name = "Mesh"
            b23.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p24 = Instance.new("Part", m)
            p24.BrickColor = BrickColor.new("Br. yellowish orange")
            p24.Name = "P24"
            p24.CFrame = CFrame.new(74.4876328, 0.80141902, -80.2416992, 0.0524596013, -0.998304963, -0.0248665046, -0.500721753, -0.0478316285, 0.864275277, -0.864011943, -0.0328799896, -0.502379239)
            p24.CanCollide = false
            p24.FormFactor = Enum.FormFactor.Custom
            p24.Size = Vector3.new(0.240367815, 0.240367845, 0.200000003)
            p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b24 = Instance.new("BlockMesh", p24)
            b24.Name = "Mesh"
            b24.Scale = Vector3.new(1, 1, 0.801226139)
            p25 = Instance.new("Part", m)
            p25.BrickColor = BrickColor.new("Bright orange")
            p25.Name = "P25"
            p25.CFrame = CFrame.new(74.2489777, 1.20300317, -74.7749939, 0.0581113175, -0.998301685, -0.000360328704, -0.819068611, -0.0478758439, 0.571678638, -0.570737362, -0.0329175182, -0.820462048)
            p25.CanCollide = false
            p25.FormFactor = Enum.FormFactor.Custom
            p25.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b25 = Instance.new("SpecialMesh", p25)
            b25.MeshType = Enum.MeshType.Wedge
            b25.Name = "Mesh"
            b25.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p26 = Instance.new("Part", m)
            p26.BrickColor = BrickColor.new("Br. yellowish orange")
            p26.Name = "RAY"
            p26.CFrame = CFrame.new(74.3758087, 1.20065057, -77.3905945, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p26.CanCollide = false
            p26.FormFactor = Enum.FormFactor.Custom
            p26.Size = Vector3.new(4.80735636, 0.200000003, 0.200000003)
            p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b26 = Instance.new("BlockMesh", p26)
            b26.Name = "Mesh"
            b26.Scale = Vector3.new(1, 0.640980899, 0.40061301)
            p27 = Instance.new("Part", m)
            p27.BrickColor = BrickColor.new("Br. yellowish orange")
            p27.Name = "P27"
            p27.CFrame = CFrame.new(74.4763412, 0.896838307, -80.0377121, 0.0473471135, -0.998302162, -0.0336809494, -0.343099177, -0.047912471, 0.93806684, -0.938099384, -0.0328505039, -0.344780028)
            p27.CanCollide = false
            p27.FormFactor = Enum.FormFactor.Custom
            p27.Size = Vector3.new(0.240367815, 0.240367845, 0.200000003)
            p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b27 = Instance.new("BlockMesh", p27)
            b27.Name = "Mesh"
            b27.Scale = Vector3.new(1, 1, 0.801226139)
            p28 = Instance.new("Part", m)
            p28.BrickColor = BrickColor.new("Br. yellowish orange")
            p28.Name = "P28"
            p28.CFrame = CFrame.new(74.4585876, 1.29327106, -80.0734253, 0.0331607275, -0.998304665, -0.0476598851, -0.00151514332, -0.0477276258, 0.998850226, -0.99944061, -0.0330420434, -0.00308647985)
            p28.CanCollide = false
            p28.FormFactor = Enum.FormFactor.Custom
            p28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b28 = Instance.new("BlockMesh", p28)
            b28.Name = "Mesh"
            b28.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p29 = Instance.new("Part", m)
            p29.BrickColor = BrickColor.new("Bright orange")
            p29.Name = "P29"
            p29.CFrame = CFrame.new(74.454628, 1.22144091, -79.8730316, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p29.CanCollide = false
            p29.FormFactor = Enum.FormFactor.Custom
            p29.Size = Vector3.new(0.200000003, 0.32049045, 0.640980899)
            p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b29 = Instance.new("BlockMesh", p29)
            b29.Name = "Mesh"
            b29.Scale = Vector3.new(0.40061301, 1, 1)
            p30 = Instance.new("Part", m)
            p30.BrickColor = BrickColor.new("Br. yellowish orange")
            p30.Name = "P30"
            p30.CFrame = CFrame.new(74.4193573, 1.1349299, -78.6716156, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p30.CanCollide = false
            p30.FormFactor = Enum.FormFactor.Custom
            p30.Size = Vector3.new(2.243433, 0.200000003, 0.200000003)
            p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b30 = Instance.new("BlockMesh", p30)
            b30.Name = "Mesh"
            b30.Scale = Vector3.new(1, 0.640980899, 0.40061301)
            p31 = Instance.new("Part", m)
            p31.BrickColor = BrickColor.new("Bright orange")
            p31.Name = "P31"
            p31.CFrame = CFrame.new(74.3461914, 1.07678747, -75.106041, -0.0371449776, 0.998314679, -0.0443998799, 0.0883789733, 0.0475296788, 0.994943321, 0.995386481, 0.0330247842, -0.0899875611)
            p31.CanCollide = false
            p31.FormFactor = Enum.FormFactor.Custom
            p31.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b31 = Instance.new("SpecialMesh", p31)
            b31.MeshType = Enum.MeshType.Wedge
            b31.Name = "Mesh"
            b31.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p32 = Instance.new("Part", m)
            p32.BrickColor = BrickColor.new("Br. yellowish orange")
            p32.Name = "P32"
            p32.CFrame = CFrame.new(74.5144348, 1.25105679, -81.7149429, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p32.CanCollide = false
            p32.FormFactor = Enum.FormFactor.Custom
            p32.Size = Vector3.new(0.200000003, 0.32049045, 0.32049045)
            p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b32 = Instance.new("BlockMesh", p32)
            b32.Name = "Mesh"
            b32.Scale = Vector3.new(0.80122602, 1, 1)
            p33 = Instance.new("Part", m)
            p33.BrickColor = BrickColor.new("Br. yellowish orange")
            p33.Name = "P33"
            p33.CFrame = CFrame.new(74.4974442, 1.4659605, -81.511467, 0.00499837659, -0.998306513, -0.0578139275, 0.49804318, -0.047639817, 0.86583221, -0.867123663, -0.0331132412, 0.496973723)
            p33.CanCollide = false
            p33.FormFactor = Enum.FormFactor.Custom
            p33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b33 = Instance.new("BlockMesh", p33)
            b33.Name = "Mesh"
            b33.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p34 = Instance.new("Part", m)
            p34.BrickColor = BrickColor.new("Bright orange")
            p34.Name = "P34"
            p34.CFrame = CFrame.new(74.3349228, 1.13621974, -74.8491211, -0.0524816141, 0.998312116, -0.0245321598, 0.500629246, 0.047549706, 0.864344478, 0.864064336, 0.0330723301, -0.502276599)
            p34.CanCollide = false
            p34.FormFactor = Enum.FormFactor.Custom
            p34.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b34 = Instance.new("SpecialMesh", p34)
            b34.MeshType = Enum.MeshType.Wedge
            b34.Name = "Mesh"
            b34.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p35 = Instance.new("Part", m)
            p35.BrickColor = BrickColor.new("Br. yellowish orange")
            p35.Name = "P35"
            p35.CFrame = CFrame.new(74.5204849, 1.02183568, -81.5648575, -0.0327107832, -0.998305142, 0.0479601398, 0.00157983182, -0.0480287634, -0.998835742, 0.999455273, -0.0325885825, 0.00313943322)
            p35.CanCollide = false
            p35.FormFactor = Enum.FormFactor.Custom
            p35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b35 = Instance.new("BlockMesh", p35)
            b35.Name = "Mesh"
            b35.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p36 = Instance.new("Part", m)
            p36.BrickColor = BrickColor.new("Br. yellowish orange")
            p36.Name = "P36"
            p36.CFrame = CFrame.new(74.4320755, 1.65369916, -79.7905045, -0.9983325, 0.00546072423, -0.0573197752, -0.0474776067, -0.641084969, 0.765988171, -0.0325556472, 0.767433643, 0.640287757)
            p36.CanCollide = false
            p36.FormFactor = Enum.FormFactor.Custom
            p36.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b36 = Instance.new("BlockMesh", p36)
            b36.Name = "Mesh"
            b36.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p37 = Instance.new("Part", m)
            p37.BrickColor = BrickColor.new("Bright orange")
            p37.Name = "P37"
            p37.CFrame = CFrame.new(74.3484573, 1.02189076, -77.54216, 0.0339996666, -0.998298109, -0.0472013615, -0.0190592688, -0.0478590988, 0.998663247, -0.999231935, -0.0330462493, -0.0206454061)
            p37.CanCollide = false
            p37.FormFactor = Enum.FormFactor.Custom
            p37.Size = Vector3.new(4.72723389, 0.200000003, 0.240367845)
            p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b37 = Instance.new("SpecialMesh", p37)
            b37.MeshType = Enum.MeshType.Wedge
            b37.Name = "Mesh"
            b37.Scale = Vector3.new(1, 0.40061307, 1)
            p38 = Instance.new("Part", m)
            p38.BrickColor = BrickColor.new("Bright orange")
            p38.Name = "P38"
            p38.CFrame = CFrame.new(74.5166855, 1.25886393, -81.7949753, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p38.CanCollide = false
            p38.FormFactor = Enum.FormFactor.Custom
            p38.Size = Vector3.new(0.200000003, 0.240367845, 0.240367845)
            p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b38 = Instance.new("BlockMesh", p38)
            b38.Name = "Mesh"
            b38.Scale = Vector3.new(0.80122602, 1, 1)
            p39 = Instance.new("Part", m)
            p39.BrickColor = BrickColor.new("Bright orange")
            p39.Name = "P39"
            p39.CFrame = CFrame.new(74.4284592, 1.02568734, -77.5395355, -0.0339458846, 0.998315811, -0.0468670502, 0.0188027117, 0.0475150794, 0.998684525, 0.99923861, 0.0330116563, -0.0203753691)
            p39.CanCollide = false
            p39.FormFactor = Enum.FormFactor.Custom
            p39.Size = Vector3.new(4.72723389, 0.200000003, 0.240367845)
            p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b39 = Instance.new("SpecialMesh", p39)
            b39.MeshType = Enum.MeshType.Wedge
            b39.Name = "Mesh"
            b39.Scale = Vector3.new(1, 0.40061307, 1)
            p40 = Instance.new("Part", m)
            p40.BrickColor = BrickColor.new("Bright orange")
            p40.Name = "P40"
            p40.CFrame = CFrame.new(74.2661438, 1.07290602, -75.1086884, 0.0371716507, -0.998303354, -0.0446883366, -0.0885947496, -0.0478268377, 0.994915545, -0.995369256, -0.0330207422, -0.0902140513)
            p40.CanCollide = false
            p40.FormFactor = Enum.FormFactor.Custom
            p40.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b40 = Instance.new("SpecialMesh", p40)
            b40.MeshType = Enum.MeshType.Wedge
            b40.Name = "Mesh"
            b40.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p41 = Instance.new("Part", m)
            p41.BrickColor = BrickColor.new("Br. yellowish orange")
            p41.Name = "P41"
            p41.CFrame = CFrame.new(74.5011063, 1.4657886, -81.6207886, 0.0524596013, -0.998304963, -0.0248665046, -0.500721753, -0.0478316285, 0.864275277, -0.864011943, -0.0328799896, -0.502379239)
            p41.CanCollide = false
            p41.FormFactor = Enum.FormFactor.Custom
            p41.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b41 = Instance.new("BlockMesh", p41)
            b41.Name = "Mesh"
            b41.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p42 = Instance.new("Part", m)
            p42.BrickColor = BrickColor.new("Br. yellowish orange")
            p42.Name = "P42"
            p42.CFrame = CFrame.new(74.4392319, 1.53358483, -79.8338776, -0.998325825, -0.0326749459, -0.0475505628, -0.0476029031, 0.00109051703, 0.998856723, -0.032577388, 0.999457061, -0.00263533345)
            p42.CanCollide = false
            p42.FormFactor = Enum.FormFactor.Custom
            p42.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b42 = Instance.new("BlockMesh", p42)
            b42.Name = "Mesh"
            b42.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p43 = Instance.new("Part", m)
            p43.BrickColor = BrickColor.new("Bright orange")
            p43.Name = "P43"
            p43.CFrame = CFrame.new(74.3290787, 1.20679891, -74.7723618, -0.0581035241, 0.998302221, -0.000131290406, 0.8189587, 0.0477318875, 0.571848154, 0.57089591, 0.0331105255, -0.820344031)
            p43.CanCollide = false
            p43.FormFactor = Enum.FormFactor.Custom
            p43.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b43 = Instance.new("SpecialMesh", p43)
            b43.MeshType = Enum.MeshType.Wedge
            b43.Name = "Mesh"
            b43.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p44 = Instance.new("Part", m)
            p44.BrickColor = BrickColor.new("Bright orange")
            p44.Name = "P44"
            p44.CFrame = CFrame.new(74.254837, 1.13231885, -74.8517838, 0.0524596013, -0.998304963, -0.0248665046, -0.500721753, -0.0478316285, 0.864275277, -0.864011943, -0.0328799896, -0.502379239)
            p44.CanCollide = false
            p44.FormFactor = Enum.FormFactor.Custom
            p44.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b44 = Instance.new("SpecialMesh", p44)
            b44.MeshType = Enum.MeshType.Wedge
            b44.Name = "Mesh"
            b44.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p45 = Instance.new("Part", m)
            p45.BrickColor = BrickColor.new("Br. yellowish orange")
            p45.Name = "P45"
            p45.CFrame = CFrame.new(74.5147476, 1.07657385, -81.4702911, -0.0574037507, -0.998330653, -0.00488479249, 0.865681469, -0.0473294891, -0.498334706, 0.497283787, -0.0328266025, 0.86695683)
            p45.CanCollide = false
            p45.FormFactor = Enum.FormFactor.Custom
            p45.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b45 = Instance.new("BlockMesh", p45)
            b45.Name = "Mesh"
            b45.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p46 = Instance.new("Part", m)
            p46.BrickColor = BrickColor.new("Br. yellowish orange")
            p46.Name = "P46"
            p46.CFrame = CFrame.new(74.521553, 1.03643513, -81.6195755, -0.00440586172, -0.998309135, 0.0578165613, -0.498106778, -0.0479342304, -0.8657794, 0.867090285, -0.0326049812, -0.497065514)
            p46.CanCollide = false
            p46.FormFactor = Enum.FormFactor.Custom
            p46.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b46 = Instance.new("BlockMesh", p46)
            b46.Name = "Mesh"
            b46.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p47 = Instance.new("Part", m)
            p47.BrickColor = BrickColor.new("Br. yellowish orange")
            p47.Name = "P47"
            p47.CFrame = CFrame.new(74.4980774, 1.42602015, -81.4712448, -0.0245325584, -0.998317242, -0.0523835458, 0.864265561, -0.0475060567, 0.500769675, -0.502412498, -0.0329797827, 0.863988936)
            p47.CanCollide = false
            p47.FormFactor = Enum.FormFactor.Custom
            p47.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b47 = Instance.new("BlockMesh", p47)
            b47.Name = "Mesh"
            b47.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p48 = Instance.new("Part", m)
            p48.BrickColor = BrickColor.new("Br. yellowish orange")
            p48.Transparency = 1
            p48.Name = "P48"
            p48.CFrame = CFrame.new(74.4862061, 0.842368245, -80.2588806, 0.0106396191, -0.998316407, 0.0568720587, -0.705345929, -0.0477984995, -0.707237244, 0.70876503, -0.0325813927, -0.704679608)
            p48.CanCollide = false
            p48.FormFactor = Enum.FormFactor.Custom
            p48.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b48 = Instance.new("BlockMesh", p48)
            b48.Name = "Mesh"
            b48.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p49 = Instance.new("Part", m)
            p49.BrickColor = BrickColor.new("Br. yellowish orange")
            p49.Name = "P49"
            p49.CFrame = CFrame.new(74.518013, 1.03648925, -81.5102005, -0.0520766452, -0.998332024, 0.0245817993, 0.500477791, -0.0473831333, -0.864441395, 0.864176571, -0.0327062085, 0.502107501)
            p49.CanCollide = false
            p49.FormFactor = Enum.FormFactor.Custom
            p49.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b49 = Instance.new("BlockMesh", p49)
            b49.Name = "Mesh"
            b49.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p50 = Instance.new("Part", m)
            p50.BrickColor = BrickColor.new("Br. yellowish orange")
            p50.Name = "P50"
            p50.CFrame = CFrame.new(74.4254074, 1.71774864, -79.6798553, -0.998332798, 0.0410985909, -0.0403206572, -0.0475317053, -0.983475089, 0.174640924, -0.0324685164, 0.17625919, 0.983799458)
            p50.CanCollide = false
            p50.FormFactor = Enum.FormFactor.Custom
            p50.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b50 = Instance.new("BlockMesh", p50)
            b50.Name = "Mesh"
            b50.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p51 = Instance.new("Part", m)
            p51.BrickColor = BrickColor.new("Br. yellowish orange")
            p51.Name = "P51"
            p51.CFrame = CFrame.new(74.435791, 1.59756637, -79.8227997, -0.998324037, -0.0144562852, -0.0558864549, -0.0476279929, -0.340493679, 0.93903023, -0.032595519, 0.940123737, 0.339245856)
            p51.CanCollide = false
            p51.FormFactor = Enum.FormFactor.Custom
            p51.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b51 = Instance.new("BlockMesh", p51)
            b51.Name = "Mesh"
            b51.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p52 = Instance.new("Part", m)
            p52.BrickColor = BrickColor.new("Bright orange")
            p52.Name = "P52"
            p52.CFrame = CFrame.new(74.4798431, 1.02888262, -80.3367844, 0.0477833003, -0.998318195, 0.0325690359, -0.998844683, -0.0478465706, -0.00143165409, 0.0029787838, -0.0324546471, -0.999460161)
            p52.CanCollide = false
            p52.FormFactor = Enum.FormFactor.Custom
            p52.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b52 = Instance.new("BlockMesh", p52)
            b52.Name = "Mesh"
            b52.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p53 = Instance.new("Part", m)
            p53.BrickColor = BrickColor.new("Bright orange")
            p53.Name = "P53"
            p53.CFrame = CFrame.new(74.2603378, 1.0926019, -74.9605255, 0.0409791954, -0.998298466, -0.041280102, -0.174987525, -0.0478384197, 0.983398616, -0.983710587, -0.0330670364, -0.176643103)
            p53.CanCollide = false
            p53.FormFactor = Enum.FormFactor.Custom
            p53.Size = Vector3.new(0.200000003, 0.200000003, 0.240367845)
            p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b53 = Instance.new("SpecialMesh", p53)
            b53.MeshType = Enum.MeshType.Wedge
            b53.Name = "Mesh"
            b53.Scale = Vector3.new(0.80122602, 0.40061307, 1)
            p54 = Instance.new("Part", m)
            p54.BrickColor = BrickColor.new("Br. yellowish orange")
            p54.Name = "P54"
            p54.CFrame = CFrame.new(74.4578781, 1.25330591, -79.9932709, 0.0331607275, -0.998304665, -0.0476598851, -0.00151514332, -0.0477276258, 0.998850226, -0.99944061, -0.0330420434, -0.00308647985)
            p54.CanCollide = false
            p54.FormFactor = Enum.FormFactor.Custom
            p54.Size = Vector3.new(0.200000003, 0.240367845, 0.32049045)
            p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b54 = Instance.new("BlockMesh", p54)
            b54.Name = "Mesh"
            b54.Scale = Vector3.new(0.40061301, 1, 1)
            p55 = Instance.new("Part", m)
            p55.BrickColor = BrickColor.new("Br. yellowish orange")
            p55.Name = "P55"
            p55.CFrame = CFrame.new(74.5032578, 1.31667686, -81.4709473, -0.0574037507, -0.998330653, -0.00488479249, 0.865681469, -0.0473294891, -0.498334706, 0.497283787, -0.0328266025, 0.86695683)
            p55.CanCollide = false
            p55.FormFactor = Enum.FormFactor.Custom
            p55.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b55 = Instance.new("BlockMesh", p55)
            b55.Name = "Mesh"
            b55.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p56 = Instance.new("Part", m)
            p56.BrickColor = BrickColor.new("Br. yellowish orange")
            p56.Name = "P56"
            p56.CFrame = CFrame.new(74.5002518, 1.37134469, -81.4565201, -0.047846213, -0.998299301, -0.0330535844, 0.998841882, -0.0479081944, 0.00134743063, -0.00291989627, -0.0329424888, 0.999444366)
            p56.CanCollide = false
            p56.FormFactor = Enum.FormFactor.Custom
            p56.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b56 = Instance.new("BlockMesh", p56)
            b56.Name = "Mesh"
            b56.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p57 = Instance.new("Part", m)
            p57.BrickColor = BrickColor.new("Br. yellowish orange")
            p57.Name = "P57"
            p57.CFrame = CFrame.new(74.5094986, 1.18583572, -81.4706192, -0.0245325584, -0.998317242, -0.0523835458, 0.864265561, -0.0475060567, 0.500769675, -0.502412498, -0.0329797827, 0.863988936)
            p57.CanCollide = false
            p57.FormFactor = Enum.FormFactor.Custom
            p57.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b57 = Instance.new("BlockMesh", p57)
            b57.Name = "Mesh"
            b57.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p58 = Instance.new("Part", m)
            p58.BrickColor = BrickColor.new("Br. yellowish orange")
            p58.Name = "P58"
            p58.CFrame = CFrame.new(74.5042648, 1.42576611, -81.6607285, 0.0579402298, -0.998300374, 0.00467805378, -0.865818024, -0.0479083695, 0.498040795, -0.496982932, -0.0328980386, -0.867126048)
            p58.CanCollide = false
            p58.FormFactor = Enum.FormFactor.Custom
            p58.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b58 = Instance.new("BlockMesh", p58)
            b58.Name = "Mesh"
            b58.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p59 = Instance.new("Part", m)
            p59.BrickColor = BrickColor.new("Bright orange")
            p59.Name = "P59"
            p59.CFrame = CFrame.new(74.4232178, 1.71791637, -79.6149521, -0.998327017, 0.0524968728, -0.0238843542, -0.0476160161, -0.983933747, -0.172014907, -0.0325225107, -0.170600072, 0.984794736)
            p59.CanCollide = false
            p59.FormFactor = Enum.FormFactor.Custom
            p59.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b59 = Instance.new("BlockMesh", p59)
            b59.Name = "Mesh"
            b59.Scale = Vector3.new(0.40061301, 0.40061307, 0.40061301)
            p60 = Instance.new("Part", m)
            p60.BrickColor = BrickColor.new("Br. yellowish orange")
            p60.Name = "P60"
            p60.CFrame = CFrame.new(74.4985809, 1.48057747, -81.5661469, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p60.CanCollide = false
            p60.FormFactor = Enum.FormFactor.Custom
            p60.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b60 = Instance.new("BlockMesh", p60)
            b60.Name = "Mesh"
            b60.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p61 = Instance.new("Part", m)
            p61.BrickColor = BrickColor.new("Br. yellowish orange")
            p61.Name = "P61"
            p61.CFrame = CFrame.new(74.5210037, 1.07631004, -81.6597672, 0.0250819121, -0.998309731, 0.0522681326, -0.86434716, -0.0479167439, -0.500589728, 0.502244949, -0.032613717, -0.864100158)
            p61.CanCollide = false
            p61.FormFactor = Enum.FormFactor.Custom
            p61.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
            p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b61 = Instance.new("BlockMesh", p61)
            b61.Name = "Mesh"
            b61.Scale = Vector3.new(0.40061301, 0.801226139, 0.40061301)
            p62 = Instance.new("Part", m)
            p62.BrickColor = BrickColor.new("Br. yellowish orange")
            p62.Name = "P62"
            p62.CFrame = CFrame.new(74.4692383, 0.933352768, -79.8722534, 0.0331627764, -0.998302519, -0.0477015413, -0.00155824434, -0.0477707312, 0.99884814, -0.999440432, -0.0330418944, -0.00313103222)
            p62.CanCollide = false
            p62.FormFactor = Enum.FormFactor.Custom
            p62.Size = Vector3.new(0.200000003, 0.240367845, 0.200000003)
            p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b62 = Instance.new("BlockMesh", p62)
            b62.Name = "Mesh"
            b62.Scale = Vector3.new(0.80122602, 1, 0.801226139)
            w1 = Instance.new("Weld", p11)
            w1.Name = "P1"
            w1.Part0 = p11
            w1.C0 = CFrame.new(5.34057617e-005, 0.532310486, 0.35636282, 0.000409020868, -1, 0.000102993094, 0.499988496, 0.000115310409, -0.866032124, 0.866032004, 0.000405720522, 0.499988526)
            w1.Part1 = p1
            w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w2 = Instance.new("Weld", p11)
            w2.Name = "P2"
            w2.Part0 = p11
            w2.C0 = CFrame.new(0, 0.629066467, -0.00461864471, 0.000290755852, -0.99999994, -0.000201782546, -0.865950406, -0.000150862688, -0.500129819, 0.500129759, 0.000320149353, -0.865950406)
            w2.Part1 = p2
            w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w3 = Instance.new("Weld", p11)
            w3.Name = "P3"
            w3.Part0 = p11
            w3.C0 = CFrame.new(0, 0.505859375, 0.155825138, 0.000328774011, -1, 6.23916349e-005, -0.25878635, -0.000145348458, -0.965934634, 0.965934575, 0.000301428081, -0.25878638)
            w3.Part1 = p3
            w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w4 = Instance.new("Weld", p11)
            w4.Name = "P4"
            w4.Part0 = p11
            w4.C0 = CFrame.new(-3.81469727e-005, 0.961502075, 0.0400307178, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w4.Part1 = p4
            w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w5 = Instance.new("Weld", p11)
            w5.Name = "P5"
            w5.Part0 = p11
            w5.C0 = CFrame.new(-0.000198364258, 1.0951767, -0.442374706, -1, 5.58271495e-005, 0.000208427198, 0.000208424593, 0.499879658, 0.866094828, -5.58369138e-005, 0.866094887, -0.499879628)
            w5.Part1 = p5
            w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w6 = Instance.new("Weld", p11)
            w6.Name = "P6"
            w6.Part0 = p11
            w6.C0 = CFrame.new(-3.05175781e-005, 0.692726135, -0.0310366154, 0.000299799605, -1, -0.000249866163, -0.965866387, -0.000224840973, -0.259040594, 0.259040475, 0.000318997598, -0.965866446)
            w6.Part1 = p6
            w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w7 = Instance.new("Weld", p11)
            w7.Name = "P7"
            w7.Part0 = p11
            w7.C0 = CFrame.new(0, -0.622436523, 0.120296478, -0.000396716408, -1, -0.000213616528, -5.96028258e-008, -0.000213616528, 1, -1, 0.000396716408, 2.51449421e-008)
            w7.Part1 = p7
            w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w8 = Instance.new("Weld", p11)
            w8.Name = "P8"
            w8.Part0 = p11
            w8.C0 = CFrame.new(-9.15527344e-005, -0.841293335, -0.120121956, 0.000335703604, -0.99999994, -0.000274647959, 6.09774143e-005, 0.000274668448, -1, 1, 0.00033568684, 6.10696079e-005)
            w8.Part1 = p8
            w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w9 = Instance.new("Weld", p11)
            w9.Name = "P9"
            w9.Part0 = p11
            w9.C0 = CFrame.new(-3.05175781e-005, 5.88885498, 0.0242705345, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w9.Part1 = p9
            w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w10 = Instance.new("Weld", p11)
            w10.Name = "P10"
            w10.Part0 = p11
            w10.C0 = CFrame.new(-0.0401077271, 6.11257935, -0.0494781733, 0.000328774011, -1, 6.23916349e-005, -0.25878635, -0.000145348458, -0.965934634, 0.965934575, 0.000301428081, -0.25878638)
            w10.Part1 = p10
            w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w11 = Instance.new("Weld", p11)
            w11.Name = "P12"
            w11.Part0 = p11
            w11.C0 = CFrame.new(-5.34057617e-005, 2.88426208, 0.0883207321, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w11.Part1 = p12
            w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w12 = Instance.new("Weld", p11)
            w12.Name = "P66"
            w12.Part0 = p11
            w12.C0 = CFrame.new(-7.62939453e-006, 3.48522949, -0.0960006714, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w12.Part1 = p13
            w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w13 = Instance.new("Weld", p11)
            w13.Name = "P14"
            w13.Part0 = p11
            w13.C0 = CFrame.new(0.0401077271, 5.87762451, 0.165837526, -0.000227210985, 1, -2.56693547e-005, 0.984799027, 0.000219298425, -0.173697904, -0.173697904, -6.47452107e-005, -0.984799027)
            w13.Part1 = p14
            w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w14 = Instance.new("Weld", p11)
            w14.Name = "P15"
            w14.Part0 = p11
            w14.C0 = CFrame.new(-1.52587891e-005, -0.841300964, 0.12024188, 0.000335703604, -0.99999994, -0.000274647959, 6.09774143e-005, 0.000274668448, -1, 1, 0.00033568684, 6.10696079e-005)
            w14.Part1 = p15
            w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w15 = Instance.new("Weld", p11)
            w15.Name = "P16"
            w15.Part0 = p11
            w15.C0 = CFrame.new(0.0400619507, 6.11257172, -0.0495603085, -0.000408517197, 0.999999881, 0.000258168846, 0.258903146, 0.000355132564, -0.965903223, -0.965903163, -0.000327747373, -0.258903265)
            w15.Part1 = p16
            w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w16 = Instance.new("Weld", p11)
            w16.Name = "P17"
            w16.Part0 = p11
            w16.C0 = CFrame.new(-5.34057617e-005, 0.574363708, 0.037350893, 0.000401318073, -1.00000024, -6.7204237e-005, -0.706963122, -0.00023663044, -0.707250774, 0.707250714, 0.000331521034, -0.706963301)
            w16.Part1 = p17
            w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w17 = Instance.new("Weld", p11)
            w17.Name = "P65"
            w17.Part0 = p11
            w17.C0 = CFrame.new(-0.00016784668, 1.28225708, -0.442374229, -1, -4.76508685e-005, 0.000344658969, 0.000322328269, -0.49987185, 0.866099298, 0.000131014953, 0.866099358, 0.49987185)
            w17.Part1 = p18
            w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w18 = Instance.new("Weld", p11)
            w18.Name = "P19"
            w18.Part0 = p11
            w18.C0 = CFrame.new(0.0399627686, 6.12928772, -0.175948501, -0.000396716408, 1, 3.05166359e-005, 0, 3.05166468e-005, -1, -1, -0.000396716408, -1.2101367e-008)
            w18.Part1 = p19
            w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w19 = Instance.new("Weld", p11)
            w19.Name = "P20"
            w19.Part0 = p11
            w19.C0 = CFrame.new(1.52587891e-005, 0.505836487, 0.292643547, 0.000296961196, -0.99999994, 9.13158656e-005, 0.258852482, -1.13343931e-005, -0.965916872, 0.965916812, 0.000310477131, 0.258852482)
            w19.Part1 = p20
            w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w20 = Instance.new("Weld", p11)
            w20.Name = "P64"
            w20.Part0 = p11
            w20.C0 = CFrame.new(-3.05175781e-005, 0.532310486, 0.0921292305, 0.000428915024, -0.999999583, -5.15282154e-005, -0.49978894, -0.000169157982, -0.866146803, 0.866146684, 0.000396966934, -0.499788523)
            w20.Part1 = p21
            w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w21 = Instance.new("Weld", p11)
            w21.Name = "P63"
            w21.Part0 = p11
            w21.C0 = CFrame.new(-5.34057617e-005, 3.52529907, -0.216547966, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w21.Part1 = p22
            w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w22 = Instance.new("Weld", p11)
            w22.Name = "P23"
            w22.Part0 = p11
            w22.C0 = CFrame.new(-0.0401992798, 6.12924957, -0.175948143, 0.000335643999, -1, -0.000274625578, -6.10668212e-005, 0.000274605118, -1, 1, 0.000335660763, -6.09746457e-005)
            w22.Part1 = p23
            w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w23 = Instance.new("Weld", p11)
            w23.Name = "P24"
            w23.Part0 = p11
            w23.C0 = CFrame.new(8.39233398e-005, 0.591369629, 0.452114344, 0.000290755852, -0.99999994, -0.000201782546, -0.865950406, -0.000150862688, -0.500129819, 0.500129759, 0.000320149353, -0.865950406)
            w23.Part1 = p24
            w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w24 = Instance.new("Weld", p11)
            w24.Name = "P25"
            w24.Part0 = p11
            w24.C0 = CFrame.new(-0.0401153564, 6.06354523, 0.0555975437, 0.000406615087, -1, -5.44825052e-005, -0.573446751, -0.000188537713, -0.819242835, 0.819242775, 0.000364359352, -0.573446751)
            w24.Part1 = p25
            w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w25 = Instance.new("Weld", p11)
            w25.Name = "RAY"
            w25.Part0 = p11
            w25.C0 = CFrame.new(0.000755310059, 3.44516754, 0.0563380718, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w25.Part1 = p26
            w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w26 = Instance.new("Weld", p11)
            w26.Name = "P27"
            w26.Part0 = p11
            w26.C0 = CFrame.new(2.28881836e-005, 0.79574585, 0.356861115, 0.000251524471, -1, -0.00033528902, -0.939617932, -0.000121592449, -0.342225492, 0.342225403, 0.000401121652, -0.939617872)
            w26.Part1 = p27
            w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w27 = Instance.new("Weld", p11)
            w27.Name = "P28"
            w27.Part0 = p11
            w27.C0 = CFrame.new(-3.05175781e-005, 0.761169434, -0.0400733948, 0.000312735385, -1, -0.000215752894, -1, -0.000312698132, -0.00017266089, 0.000172593413, 0.000215806882, -1)
            w27.Part1 = p28
            w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w28 = Instance.new("Weld", p11)
            w28.Name = "P29"
            w28.Part0 = p11
            w28.C0 = CFrame.new(-0.000839233398, 0.961494446, 0.0320725441, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w28.Part1 = p29
            w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w29 = Instance.new("Weld", p11)
            w29.Name = "P30"
            w29.Part0 = p11
            w29.C0 = CFrame.new(-0.000831604004, 2.16330719, 0.120316029, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w29.Part1 = p30
            w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w30 = Instance.new("Weld", p11)
            w30.Name = "P31"
            w30.Part0 = p11
            w30.C0 = CFrame.new(0.0401000977, 5.72930908, 0.18531847, -0.000295270613, 1, 8.10020629e-006, 0.996196032, 0.000294853264, -0.0871398449, -0.0871398374, -1.76604408e-005, -0.996196151)
            w30.Part1 = p31
            w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w31 = Instance.new("Weld", p11)
            w31.Name = "P32"
            w31.Part0 = p11
            w31.C0 = CFrame.new(-3.05175781e-005, -0.881362915, -4.33921814e-005, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w31.Part1 = p32
            w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w32 = Instance.new("Weld", p11)
            w32.Name = "P33"
            w32.Part0 = p11
            w32.C0 = CFrame.new(-0.000114440918, -0.677146912, -0.214918613, 0.000268456817, -1, -0.000302448607, -0.86615485, -0.000383681647, 0.499775618, -0.499775708, 0.000127799169, -0.866154909)
            w32.Part1 = p33
            w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w33 = Instance.new("Weld", p11)
            w33.Name = "P34"
            w33.Part0 = p11
            w33.C0 = CFrame.new(0.0400848389, 5.98654175, 0.126167297, -0.000315413316, 1, 0.000138656687, 0.866003335, 0.000342482643, -0.500038147, -0.500038207, -3.7641541e-005, -0.866003394)
            w33.Part1 = p34
            w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w34 = Instance.new("Weld", p11)
            w34.Name = "P35"
            w34.Part0 = p11
            w34.C0 = CFrame.new(3.05175781e-005, -0.731864929, 0.229645252, 0.000140018819, -0.99999994, 0.000517935201, 1, 0.000140130593, 0.00021574751, -0.000215820037, 0.000517904991, 0.99999994)
            w34.Part1 = p35
            w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w35 = Instance.new("Weld", p11)
            w35.Name = "P36"
            w35.Part0 = p11
            w35.C0 = CFrame.new(-0.000114440918, 1.04529572, -0.400530338, -1, 0.000112058558, 0.00013821898, 0.000174690591, 0.765981495, 0.642862558, -3.38349309e-005, 0.642862618, -0.765981495)
            w35.Part1 = p36
            w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w36 = Instance.new("Weld", p11)
            w36.Name = "P37"
            w36.Part0 = p11
            w36.C0 = CFrame.new(-0.0400085449, 3.29434204, 0.233157873, 0.000323406741, -0.999999881, -0.00034174521, -0.999842703, -0.000317294121, -0.0177375581, 0.0177374501, 0.000347427878, -0.999842644)
            w36.Part1 = p37
            w36.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w37 = Instance.new("Weld", p11)
            w37.Name = "P38"
            w37.Part0 = p11
            w37.C0 = CFrame.new(-3.05175781e-005, -0.961418152, -0.00796818733, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w37.Part1 = p38
            w37.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w38 = Instance.new("Weld", p11)
            w38.Name = "P39"
            w38.Part0 = p11
            w38.C0 = CFrame.new(0.0401306152, 3.29434204, 0.23316884, -0.000281685148, 1, 1.86586863e-006, 0.999847233, 0.000281674729, -0.0174786132, -0.0174786113, -3.05788194e-006, -0.999847293)
            w38.Part1 = p39
            w38.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w39 = Instance.new("Weld", p11)
            w39.Name = "P40"
            w39.Part0 = p11
            w39.C0 = CFrame.new(-0.0400848389, 5.72928619, 0.185390234, 0.000312209129, -1.00000274, -0.000288609415, -0.996179938, -0.000291585922, -0.087356776, 0.0873566866, 0.000315029174, -0.996182799)
            w39.Part1 = p40
            w39.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w40 = Instance.new("Weld", p11)
            w40.Name = "P41"
            w40.Part0 = p11
            w40.C0 = CFrame.new(-4.57763672e-005, -0.786529541, -0.214891911, 0.000290755852, -0.99999994, -0.000201782546, -0.865950406, -0.000150862688, -0.500129819, 0.500129759, 0.000320149353, -0.865950406)
            w40.Part1 = p41
            w40.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w41 = Instance.new("Weld", p11)
            w41.Name = "P42"
            w41.Part0 = p11
            w41.C0 = CFrame.new(-9.15527344e-005, 1.00154877, -0.280337453, -1, 0.000152600463, -9.15317796e-005, 0.000152575318, 0.99999994, 0.000274665188, 9.15736891e-005, 0.000274651218, -1)
            w41.Part1 = p42
            w41.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w42 = Instance.new("Weld", p11)
            w42.Name = "P43"
            w42.Part0 = p11
            w42.C0 = CFrame.new(0.0401153564, 6.06355286, 0.0556137562, -0.000398867851, 1, 0.000186098972, 0.573604763, 0.00038123221, -0.819132149, -0.819132149, -0.000219978247, -0.573604882)
            w42.Part1 = p43
            w42.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w43 = Instance.new("Weld", p11)
            w43.Name = "P44"
            w43.Part0 = p11
            w43.C0 = CFrame.new(-0.0401382446, 5.98651123, 0.126256704, 0.000290755852, -0.99999994, -0.000201782546, -0.865950406, -0.000150862688, -0.500129819, 0.500129759, 0.000320149353, -0.865950406)
            w43.Part1 = p44
            w43.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w44 = Instance.new("Weld", p11)
            w44.Name = "P45"
            w44.Part0 = p11
            w44.C0 = CFrame.new(0, -0.637084961, 0.174972057, 0.000110034518, -1, -0.000174376502, 0.500071824, -9.598209e-005, 0.865984023, -0.865983903, -0.00018248889, 0.500071824)
            w44.Part1 = p45
            w44.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w45 = Instance.new("Weld", p11)
            w45.Name = "P46"
            w45.Part0 = p11
            w45.C0 = CFrame.new(0, -0.786567688, 0.214953423, 0.000318960956, -1, 0.000304582762, 0.86610198, 0.000124001788, -0.499867409, 0.49986726, 0.000423237914, 0.86610198)
            w45.Part1 = p46
            w45.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w46 = Instance.new("Weld", p11)
            w46.Name = "P47"
            w46.Part0 = p11
            w46.C0 = CFrame.new(-6.10351563e-005, -0.637023926, -0.174875617, 0.000130058354, -1, -0.000213304491, -0.500174046, -0.00024975749, 0.865924954, -0.865924954, -5.93141567e-006, -0.500174046)
            w46.Part1 = p47
            w46.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w47 = Instance.new("Weld", p11)
            w47.Name = "P48"
            w47.Part0 = p11
            w47.C0 = CFrame.new(3.81469727e-005, 0.574295044, 0.411092997, 0.000307865994, -1, 9.85547595e-005, 0.707087398, 0.000147997533, -0.7071262, 0.707126141, 0.000287386938, 0.707087457)
            w47.Part1 = p48
            w47.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w48 = Instance.new("Weld", p11)
            w48.Name = "P49"
            w48.Part0 = p11
            w48.C0 = CFrame.new(5.34057617e-005, -0.677139282, 0.215050459, 8.53582751e-005, -1, -9.9242221e-005, 0.86610198, 2.43210234e-005, 0.499867409, -0.49986738, -0.000128621687, 0.86610204)
            w48.Part1 = p49
            w48.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w49 = Instance.new("Weld", p11)
            w49.Name = "P50"
            w49.Part0 = p11
            w49.C0 = CFrame.new(-9.91821289e-005, 1.15619659, -0.464501381, -1, 6.55345139e-005, 0.000254195882, 0.000261710753, 0.173489466, 0.984835744, 2.04404205e-005, 0.984835744, -0.173489481)
            w49.Part1 = p50
            w49.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w50 = Instance.new("Weld", p11)
            w50.Name = "P51"
            w50.Part0 = p11
            w50.C0 = CFrame.new(-0.000129699707, 1.01282501, -0.344378352, -1, 0.000166169106, -6.36503828e-005, 0.000134359943, 0.939639211, 0.34216705, 0.000116665979, 0.34216705, -0.939639211)
            w50.Part1 = p51
            w50.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w51 = Instance.new("Weld", p11)
            w51.Name = "P52"
            w51.Part0 = p11
            w51.C0 = CFrame.new(0, 0.496894836, 0.2242589, 0.000335703604, -0.99999994, -0.000274647959, 6.09774143e-005, 0.000274668448, -1, 1, 0.00033568684, 6.10696079e-005)
            w51.Part1 = p52
            w51.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w52 = Instance.new("Weld", p11)
            w52.Name = "P53"
            w52.Part0 = p11
            w52.C0 = CFrame.new(-0.0401000977, 5.87759399, 0.165872812, 0.000389685971, -0.999999881, -0.000262950693, -0.984769046, -0.000338032172, -0.173867315, 0.173867196, 0.000326699344, -0.984769106)
            w52.Part1 = p53
            w52.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w53 = Instance.new("Weld", p11)
            w53.Name = "P54"
            w53.Part0 = p11
            w53.C0 = CFrame.new(-1.52587891e-005, 0.841255188, 4.69684601e-005, 0.000312735385, -1, -0.000215752894, -1, -0.000312698132, -0.00017266089, 0.000172593413, 0.000215806882, -1)
            w53.Part1 = p54
            w53.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w54 = Instance.new("Weld", p11)
            w54.Name = "P55"
            w54.Part0 = p11
            w54.C0 = CFrame.new(-7.62939453e-005, -0.637046814, -0.0654084682, 0.000110034518, -1, -0.000174376502, 0.500071824, -9.598209e-005, 0.865984023, -0.865983903, -0.00018248889, 0.500071824)
            w54.Part1 = p55
            w54.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w55 = Instance.new("Weld", p11)
            w55.Name = "P56"
            w55.Part0 = p11
            w55.C0 = CFrame.new(-7.62939453e-006, -0.622451782, -0.120115519, -0.000396716408, -1, -0.000213616528, -5.96028258e-008, -0.000213616528, 1, -1, 0.000396716408, 2.51449421e-008)
            w55.Part1 = p56
            w55.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w56 = Instance.new("Weld", p11)
            w56.Name = "P57"
            w56.Part0 = p11
            w56.C0 = CFrame.new(-5.34057617e-005, -0.63710022, 0.0655829906, 0.000130058354, -1, -0.000213304491, -0.500174046, -0.00024975749, 0.865924954, -0.865924954, -5.93141567e-006, -0.500174046)
            w56.Part1 = p57
            w56.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w57 = Instance.new("Weld", p11)
            w57.Name = "P58"
            w57.Part0 = p11
            w57.C0 = CFrame.new(-9.91821289e-005, -0.82660675, -0.174880862, 0.000428915024, -0.999999583, -5.15282154e-005, -0.49978894, -0.000169157982, -0.866146803, 0.866146684, 0.000396966934, -0.499788523)
            w57.Part1 = p58
            w57.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w58 = Instance.new("Weld", p11)
            w58.Name = "P59"
            w58.Part0 = p11
            w58.C0 = CFrame.new(-0.000152587891, 1.22113037, -0.464583635, -1, 6.71830494e-005, 0.000222479764, 0.000207442936, -0.173560232, 0.984823287, 0.000104777064, 0.984823287, 0.173560217)
            w58.Part1 = p59
            w58.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w59 = Instance.new("Weld", p11)
            w59.Name = "P60"
            w59.Part0 = p11
            w59.C0 = CFrame.new(-7.62939453e-005, -0.731819153, -0.229624748, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w59.Part1 = p60
            w59.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w60 = Instance.new("Weld", p11)
            w60.Name = "P61"
            w60.Part0 = p11
            w60.C0 = CFrame.new(3.05175781e-005, -0.826667786, 0.174979925, 0.000409020868, -1, 0.000102993094, 0.499988496, 0.000115310409, -0.866032124, 0.866032004, 0.000405720522, 0.499988526)
            w60.Part1 = p61
            w60.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            w61 = Instance.new("Weld", p11)
            w61.Name = "P62"
            w61.Part0 = p11
            w61.C0 = CFrame.new(8.39233398e-005, 0.961402893, 0.320533037, 0.000312735385, -0.999999881, -0.000258901709, -1, -0.000312679476, -0.000215824606, 0.000215743639, 0.000258969172, -1)
            w61.Part1 = p62
            w61.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            m.Parent = char
            m:MakeJoints()
            local tr = char:WaitForChild("Torso")
            local lr = char:WaitForChild("Left Arm")
            local ra = char:WaitForChild("Right Arm")
            local s1 = Instance.new("Sound", char.Head)
            s1.Volume = 1
            s1.SoundId = "rbxassetid://419372077"
            s1.Pitch = 1
            local s2 = Instance.new("Sound", char.Head)
            s2.Volume = 1
            s2.SoundId = "rbxassetid://419378177"
            local s3 = Instance.new("Sound", char.Head)
            s3.Volume = 1
            s3.SoundId = "rbxassetid://419378177"
            local s4 = Instance.new("Sound", char.Head)
            s4.Volume = 1
            s4.SoundId = "rbxassetid://320557518"
            local s5 = Instance.new("Sound", char.Head)
            s5.Volume = 1
            s5.SoundId = "rbxassetid://320557537"
            local s6 = Instance.new("Sound", char.Head)
            s6.Volume = 1
            s6.SoundId = "rbxassetid://433087655"
            local s7 = Instance.new("Sound", char.Head)
            s7.Volume = 1
            s7.SoundId = "rbxassetid://338586299"
            local s8 = Instance.new("Sound", char.Head)
            s8.Volume = 1
            s8.SoundId = "rbxassetid://338586318"
            local s9 = Instance.new("Sound", char.Head)
            s9.Volume = 1
            s9.SoundId = "rbxassetid://338586331"
            local w3 = Instance.new("Weld", char)
            run = game:GetService("RunService")
            w3.Part0 = lr
            w3.Part1 = tr
            w3.C0 = CFrame.new(1.5, 0, 0)
            local w4 = Instance.new("Weld", char)
            w4.Part0 = ra
            w4.Part1 = tr
            w4.C0 = CFrame.new(-1.5, 0, 0)
            local nc = Instance.new("Weld", char)
            nc.Part0 = char.Torso
            nc.Part1 = char.Head
            nc.C0 = CFrame.new(0, 1.5, 0)
            local ll = Instance.new("Weld", char)
            ll.Part0 = char.Torso
            ll.Part1 = char["Left Leg"]
            ll.C0 = CFrame.new(-0.5, -2, 0)
            local rl = Instance.new("Weld", char)
            rl.Part0 = char.Torso
            rl.Part1 = char["Right Leg"]
            rl.C0 = CFrame.new(0.5, -2, 0)
            local ts = Instance.new("Weld", char)
            ts.Part0 = char.HumanoidRootPart
            ts.Part1 = char.Torso
            ts.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
            SWELD = Instance.new("Weld", char)
            SWELD.Part0 = char["Right Arm"]
            SWELD.Part1 = p11
            turnonwelds = function()
  w3.Part1 = tr
  w4.Part1 = tr
  nc.Part1 = char.Head
  ll.Part1 = char["Left Leg"]
  rl.Part1 = char["Right Leg"]
end

            turnoffwelds = function()
  w3.Part1 = nil
  w4.Part1 = nil
  nc.Part1 = nil
  ll.Part1 = nil
  rl.Part1 = nil
end

            turnoffwelds()
            local walk = {ll.C0 * CFrame.new(0.4, 0, 0.4) * CFrame.Angles(math.rad(0), math.rad(150), math.rad(-50)), rl.C0 * CFrame.new(-0.4, 0, -0.4) * CFrame.Angles(math.rad(0), math.rad(150), math.rad(50)), ll.C0 * CFrame.new(-0.4, 0, -0.4) * CFrame.Angles(math.rad(0), math.rad(150), math.rad(50)), rl.C0 * CFrame.new(0.4, 0, -0.4) * CFrame.Angles(math.rad(0), math.rad(150), math.rad(-50)), ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-70), 0), nc.C0 * CFrame.Angles(math.rad(0), math.rad(70), 0), w4.C0 * CFrame.new(0.2, 1, -0.5) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-30)), w3.C0 * CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(50), math.rad(0))}
            local equip = {nc.C0 * CFrame.Angles(math.rad(-10), math.rad(0), 0), w3.C0 * CFrame.new(-1.1, -0.1, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(90)), w4.C0 * CFrame.new(1.1, -0.2, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(-90))}
            local idle = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-90), 0), nc.C0 * CFrame.Angles(0, math.rad(90), 0), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), w3.C0 * CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(40), math.rad(0)), w4.C0 * CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(-40), math.rad(0))}
            local PA1 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(430), math.rad(0)), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), nc.C0 * CFrame.Angles(math.rad(-5), math.rad(-40), 0), w3.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-120), math.rad(40), math.rad(20)), w4.C0 * CFrame.new(1, 1, 0.6) * CFrame.Angles(math.rad(-90), math.rad(-30), math.rad(20))}
            local PA21 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), 0), w3.C0 * CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(40), math.rad(0)), w4.C0 * CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(-40), math.rad(0))}
            local PA2 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), 0), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), w4.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-150), math.rad(-40), math.rad(-10)), w3.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-150), math.rad(40), math.rad(10))}
            local SK2 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), 0), ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-5)), rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(5)), nc.C0 * CFrame.Angles(math.rad(0), math.rad(-90), 0), w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-90)), w3.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(40))}
            local SK3 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-40), 0), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), nc.C0 * CFrame.Angles(math.rad(10), math.rad(40), 0), w4.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)), w3.C0 * CFrame.new(-0.3, 1.7, 0) * CFrame.Angles(math.rad(-110), math.rad(-20), math.rad(0))}
            local SK4 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), ll.C0 * CFrame.new(-0.1, 0, -0.2) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, -0.2) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(5)), nc.C0 * CFrame.Angles(math.rad(10), math.rad(0), 0), w4.C0 * CFrame.new(0, 1, 0.5) * CFrame.Angles(math.rad(-100), math.rad(0), math.rad(0)), w3.C0 * CFrame.new(0, 1, 0.5) * CFrame.Angles(math.rad(-100), math.rad(0), math.rad(0))}
            local med = {ts.C0 * CFrame.new(0, -1.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), ll.C0 * CFrame.new(0, 1, -0.5) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(90)), rl.C0 * CFrame.new(0, 1, -0.5) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(-90)), nc.C0 * CFrame.Angles(math.rad(-20), math.rad(0), 0), w4.C0 * CFrame.new(1.1, -0.2, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(-90)), w3.C0 * CFrame.new(-1.1, -0.1, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(90))}
            local PA3 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(-40), 0), nc.C0 * CFrame.Angles(math.rad(-20), math.rad(40), 0), w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(-90)), w3.C0 * CFrame.new(-1, 2, 0) * CFrame.Angles(math.rad(30), math.rad(40), math.rad(70)), ll.C0 * CFrame.new(-1, 1, -0.7) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-40)), rl.C0 * CFrame.new(0.5, 0.5, 0.5) * CFrame.Angles(math.rad(-20), math.rad(-40), math.rad(40))}
            local heal = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), nc.C0 * CFrame.Angles(math.rad(-10), math.rad(0), 0), w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), w3.C0 * CFrame.new(-1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5))}
            local PA4 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(60), math.rad(-60), 0), nc.C0 * CFrame.Angles(math.rad(-25), math.rad(50), 0), w4.C0 * CFrame.new(0.4, 1, 0.7) * CFrame.Angles(math.rad(50), 0, math.rad(-70)), w3.C0 * CFrame.new(-1.2, -0.2, 1) * CFrame.Angles(math.rad(-40), math.rad(20), math.rad(-50)), ll.C0 * CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(-30)), rl.C0 * CFrame.new(1, 0.5, 0.5) * CFrame.Angles(0, math.rad(-20), math.rad(40))}
            local jump = {nc.C0 * CFrame.Angles(math.rad(20), 0, 0), w4.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, math.rad(-30)), w3.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, math.rad(30)), ll.C0 * CFrame.new(-0.3, 0, 0) * CFrame.Angles(0, 0, math.rad(-20)), rl.C0 * CFrame.new(0.3, 0, 0) * CFrame.Angles(0, 0, math.rad(20))}
            local stunned = {nc.C0 * CFrame.Angles(0, math.rad(90), 0), w4.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, math.rad(-50)), w3.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, math.rad(50)), ll.C0 * CFrame.new(-0.3, 0, 0) * CFrame.Angles(0, 0, math.rad(-20)), rl.C0 * CFrame.new(0.3, 0, 0) * CFrame.Angles(0, 0, math.rad(20)), ts.C0 * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), 0, 0)}
            local PA1C = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(-40), math.rad(-30)), ll.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(20), math.rad(30), math.rad(-10)), rl.C0 * CFrame.new(0, -0.05, -0.5) * CFrame.Angles(math.rad(20), math.rad(-30), math.rad(10)), nc.C0 * CFrame.Angles(math.rad(-7), math.rad(-20), 0), w3.C0 * CFrame.new(0, 0.5, -0.2) * CFrame.Angles(math.rad(-100), math.rad(40), math.rad(30)), w4.C0 * CFrame.new(0, 0.6, 0) * CFrame.Angles(math.rad(30), 0, math.rad(-20))}
            local Stomp = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), 0), nc.C0 * CFrame.Angles(math.rad(-13), math.rad(-20), 0), ll.C0 * CFrame.new(-0.05, 0, 0) * CFrame.new(math.rad(0), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0, 0.6, -0.6) * CFrame.Angles(math.rad(0), 0, math.rad(0)), w3.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(30)), w4.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-30))}
            local Stomp2 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), 0), nc.C0 * CFrame.Angles(math.rad(-25), math.rad(-20), 0), ll.C0 * CFrame.new(-0.05, 0, 0) * CFrame.new(math.rad(0), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0, 0, -0.6) * CFrame.Angles(math.rad(0), 0, math.rad(0)), w3.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(35)), w4.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-35))}
            local dropkick = {ts.C0 * CFrame.new(0, 0.8, 0) * CFrame.Angles(math.rad(90), math.rad(45), 0), nc.C0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(-30), math.rad(-20), 0), ll.C0 * CFrame.new(-0.2, 0, -0.3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(-0.05, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), w3.C0 * CFrame.new(-2.7, 1.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(170)), w4.C0 * CFrame.new(2.7, 1.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-160))}
            local block = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-9), math.rad(0), 0), ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), w3.C0 * CFrame.new(-0.8, 1.3, -0.6) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0)), w4.C0 * CFrame.new(0.8, 1.3, -0.6) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0))}
            local sjump = {ts.C0 * CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(0), 0), ll.C0 * CFrame.new(0, 0.4, 0.8) * CFrame.Angles(math.rad(-70), 0, 0), rl.C0 * CFrame.new(0, 0.8, -0.5) * CFrame.Angles(math.rad(-10), 0, 0), w3.C0 * CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0)), w4.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0))}
            local UpSideDownPunch = {ts.C0 * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(180), 0, 0), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), ll.C0 * CFrame.new(-0.4, 0, 0) * CFrame.Angles(0, 0, math.rad(-20)), rl.C0 * CFrame.new(0.4, 0, 0) * CFrame.Angles(0, 0, math.rad(20)), w3.C0 * CFrame.new(0, 1.7, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), w4.C0 * CFrame.new(0, 1.7, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0))}
            local BackBreaker = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(15), 0), nc.C0 * CFrame.Angles(math.rad(-15), math.rad(-5), 0), w4.C0 * CFrame.new(0, 0.1, 0.3) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), w3.C0 * CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), math.rad(20), math.rad(0)), ll.C0 * CFrame.new(-0.3, 0, 0.3) * CFrame.Angles(math.rad(-20), math.rad(30), math.rad(-10)), rl.C0 * CFrame.new(-0.2, 1, -0.5) * CFrame.Angles(math.rad(-40), 0, math.rad(0))}
            local FrontFlipKick1 = {ts.C0 * CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(-8), math.rad(0), 0), nc.C0 * CFrame.Angles(math.rad(-15), math.rad(-5), 0), w4.C0 * CFrame.new(0, 1, -0.3) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(0)), w3.C0 * CFrame.new(0, 1, -0.3) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(0)), ll.C0 * CFrame.new(0, 1, 1) * CFrame.Angles(math.rad(-110), 0, math.rad(0)), rl.C0 * CFrame.new(0, 1, -1) * CFrame.Angles(math.rad(110), 0, math.rad(0))}
            f = Instance.new("ScreenGui", player.PlayerGui)
            f.Name = "UI"
            f1 = Instance.new("Frame", f)
            f1.BorderSizePixel = 0
            f1.BackgroundColor3 = Color3.new(0, 0, 0)
            f1.Size = UDim2.new(0.3, 0, 0.05, 0)
            f1.Position = UDim2.new(0.2, 0, 0.84, 0)
            f1f = Instance.new("Frame", f1)
            f1f.BorderSizePixel = 0
            f1f.BackgroundColor3 = Color3.new(255, 255, 255)
            f1f.Size = UDim2.new(1, 0, 1, 0)
            f1l = Instance.new("TextLabel", f1)
            f1l.TextScaled = true
            f1l.TextStrokeTransparency = 0
            f1l.BackgroundTransparency = 1
            f1l.TextColor3 = Color3.new(255, 255, 255)
            f1l.BorderSizePixel = 0
            f1l.Size = UDim2.new(1, 0, 1, 0)
            f1l.Text = "[Z] Heal"
            f2 = Instance.new("Frame", f)
            f2.BorderSizePixel = 0
            f2.BackgroundColor3 = Color3.new(0, 0, 0)
            f2.Size = UDim2.new(0.3, 0, 0.05, 0)
            f2.Position = UDim2.new(0.52, 0, 0.84, 0)
            f2f = Instance.new("Frame", f2)
            f2f.BorderSizePixel = 0
            f2f.BackgroundColor3 = Color3.new(255, 255, 255)
            f2f.Size = UDim2.new(1, 0, 1, 0)
            f2l = Instance.new("TextLabel", f2)
            f2l.TextScaled = true
            f2l.TextStrokeTransparency = 0
            f2l.BackgroundTransparency = 1
            f2l.TextColor3 = Color3.new(255, 255, 255)
            f2l.BorderSizePixel = 0
            f2l.Size = UDim2.new(1, 0, 1, 0)
            f2l.Text = "[X] Cleanse"
            f3 = Instance.new("Frame", f)
            f3.BorderSizePixel = 0
            f3.BackgroundColor3 = Color3.new(0, 0, 0)
            f3.Size = UDim2.new(0.3, 0, 0.05, 0)
            f3.Position = UDim2.new(0.2, 0, 0.9, 0)
            f3f = Instance.new("Frame", f3)
            f3f.BorderSizePixel = 0
            f3f.BackgroundColor3 = Color3.new(255, 255, 255)
            f3f.Size = UDim2.new(1, 0, 1, 0)
            f3l = Instance.new("TextLabel", f3)
            f3l.TextScaled = true
            f3l.TextStrokeTransparency = 0
            f3l.BackgroundTransparency = 1
            f3l.TextColor3 = Color3.new(255, 255, 255)
            f3l.BorderSizePixel = 0
            f3l.Size = UDim2.new(1, 0, 1, 0)
            f3l.Text = "[C] Purify"
            f4 = Instance.new("Frame", f)
            f4.BorderSizePixel = 0
            f4.BackgroundColor3 = Color3.new(0, 0, 0)
            f4.Size = UDim2.new(0.3, 0, 0.05, 0)
            f4.Position = UDim2.new(0.52, 0, 0.9, 0)
            f4f = Instance.new("Frame", f4)
            f4f.BorderSizePixel = 0
            f4f.BackgroundColor3 = Color3.new(255, 255, 255)
            f4f.Size = UDim2.new(1, 0, 1, 0)
            f4l = Instance.new("TextLabel", f4)
            f4l.TextScaled = true
            f4l.TextStrokeTransparency = 0
            f4l.BackgroundTransparency = 1
            f4l.TextColor3 = Color3.new(255, 255, 255)
            f4l.BorderSizePixel = 0
            f4l.Size = UDim2.new(1, 0, 1, 0)
            f4l.Text = "[V] Banish "
            f5 = Instance.new("Frame", f)
            f5.BorderSizePixel = 0
            f5.BackgroundColor3 = Color3.new(255, 255, 255)
            f5.Size = UDim2.new(0.3, 0, 0.03, 0)
            f5.Position = UDim2.new(0.52, 0, 0.8, 0)
            f5f = Instance.new("Frame", f5)
            f5f.BorderSizePixel = 0
            f5f.BackgroundColor3 = Color3.new(0, 255, 0)
            f5f.Size = UDim2.new(1, 0, 1, 0)
            f5l = Instance.new("TextLabel", f5)
            f5l.TextScaled = true
            f5l.TextStrokeTransparency = 0
            f5l.BackgroundTransparency = 1
            f5l.TextColor3 = Color3.new(255, 255, 255)
            f5l.BorderSizePixel = 0
            f5l.Size = UDim2.new(1, 0, 1, 0)
            f5l.Text = "Health"
            f6 = Instance.new("Frame", f)
            f6.BorderSizePixel = 0
            f6.BackgroundColor3 = Color3.new(255, 255, 255)
            f6.Size = UDim2.new(0.3, 0, 0.03, 0)
            f6.Position = UDim2.new(0.2, 0, 0.8, 0)
            f6f = Instance.new("Frame", f6)
            f6f.BorderSizePixel = 0
            f6f.BackgroundColor3 = BrickColor.new("Forest green").Color
            f6f.Size = UDim2.new(1, 0, 1, 0)
            f6l = Instance.new("TextLabel", f6)
            f6l.TextScaled = true
            f6l.TextStrokeTransparency = 0
            f6l.BackgroundTransparency = 1
            f6l.TextColor3 = Color3.new(255, 255, 255)
            f6l.BorderSizePixel = 0
            f6l.Size = UDim2.new(1, 0, 1, 0)
            f6l.Text = "Mana"
            fa = Instance.new("TextLabel", f)
            fa.TextScaled = true
            fa.TextStrokeTransparency = 0
            fa.BackgroundTransparency = 0.5
            fa.BackgroundColor3 = Color3.new(0, 0, 0)
            fa.TextColor3 = Color3.new(255, 0, 0)
            fa.BorderSizePixel = 0
            fa.Size = UDim2.new(0.2, 0, 0.05, 0)
            fa.Position = UDim2.new(0.2, 0, 0.74, 0)
            fa.Text = "Attack : 1"
            fa2 = Instance.new("TextLabel", f)
            fa2.TextScaled = true
            fa2.TextStrokeTransparency = 0
            fa2.BackgroundTransparency = 0.5
            fa2.BackgroundColor3 = Color3.new(0, 0, 0)
            fa2.TextColor3 = Color3.new(0, 255, 0)
            fa2.BorderSizePixel = 0
            fa2.Size = UDim2.new(0.2, 0, 0.05, 0)
            fa2.Position = UDim2.new(0.41, 0, 0.74, 0)
            fa2.Text = "Speed : 1"
            fa3 = Instance.new("TextLabel", f)
            fa3.TextScaled = true
            fa3.TextStrokeTransparency = 0
            fa3.BackgroundTransparency = 0.5
            fa3.BackgroundColor3 = Color3.new(0, 0, 0)
            fa3.TextColor3 = Color3.new(0, 0, 255)
            fa3.BorderSizePixel = 0
            fa3.Size = UDim2.new(0.2, 0, 0.05, 0)
            fa3.Position = UDim2.new(0.62, 0, 0.74, 0)
            fa3.Text = "Defense : 1"
            S1 = true
            S1T = 0
            S1TF = 7
            S2 = true
            S2T = 0
            S2TF = 15
            S3 = true
            S3T = 0
            S3TF = 12
            S4 = true
            S4T = 0
            S4TF = 30
            energy = 0
            local Close1 = CFrame.new(1.5, 0, 0)
            local Close2 = CFrame.new(-1.5, 0, 0)
            local Speed = 0.3
            local Open4 = w4.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, math.rad(-30))
            local h1 = nc.C0 * CFrame.Angles(math.rad(20), math.rad(-30), 0)
            local h2 = CFrame.new(0, 1.5, 0)
            local h3 = nc.C0 * CFrame.Angles(math.rad(-20), math.rad(30), 0)
            local opend = false
            local current = true
            local DGU = function(p, txt)
  s2:Play()
  local par = Instance.new("Part", game.Workspace)
  par.Transparency = 1
  par.Anchored = true
  par.CFrame = p.CFrame
  par.CanCollide = false
  game.Debris:AddItem(par, 10)
  local f = Instance.new("BillboardGui", par)
  f.Size = UDim2.new(1.2, 0, 1.2, 0)
  f.AlwaysOnTop = true
  f.StudsOffset = Vector3.new(0, 2, 0)
  local fr = Instance.new("Frame", f)
  fr.BackgroundTransparency = 1
  fr.Size = UDim2.new(1, 0, 1, 0)
  fr.ClipsDescendants = true
  local fe = Instance.new("TextLabel", fr)
  fe.Size = UDim2.new(1, 0, 1, 0)
  fe.BackgroundTransparency = 1
  fe.TextColor3 = BrickColor.new("Bright yellow").Color
  fe.TextStrokeTransparency = 0
  fe.Text = txt
  fe.TextScaled = true
  fe.Font = "Legacy"
  fe.Position = UDim2.new(0, 0, 1, 0)
  fe:TweenPosition(UDim2.new(0, 0, 0, 0), "In", "Linear", 0.5)
  wait(2)
  fe:TweenPosition(UDim2.new(0, 0, -1, 0), "In", "Linear", 0.4)
  for i = 0, 10 do
    wait()
    fe.TextTransparency = fe.TextTransparency + 0.1
  end
end

            local HL = function(p, txt)
  local par = Instance.new("Part", game.Workspace)
  par.Transparency = 1
  par.Anchored = true
  par.CFrame = p.CFrame
  par.CanCollide = false
  game.Debris:AddItem(par, 10)
  local f = Instance.new("BillboardGui", par)
  f.Size = UDim2.new(1.2, 0, 1.2, 0)
  f.AlwaysOnTop = true
  f.StudsOffset = Vector3.new(0, 2, 0)
  local fr = Instance.new("Frame", f)
  fr.BackgroundTransparency = 1
  fr.Size = UDim2.new(1, 0, 1, 0)
  fr.ClipsDescendants = true
  local fe = Instance.new("TextLabel", fr)
  fe.Size = UDim2.new(1, 0, 1, 0)
  fe.BackgroundTransparency = 1
  fe.TextColor3 = BrickColor.new("Lime green").Color
  fe.TextStrokeTransparency = 0
  fe.Text = txt
  fe.TextScaled = true
  fe.Font = "Legacy"
  fe.Position = UDim2.new(0, 0, 1, 0)
  fe:TweenPosition(UDim2.new(0, 0, 0, 0), "In", "Linear", 0.5)
  wait(2)
  fe:TweenPosition(UDim2.new(0, 0, -1, 0), "In", "Linear", 0.4)
  for i = 0, 10 do
    wait()
    fe.TextTransparency = fe.TextTransparency + 0.1
  end
end

            makeui = function(color, txt)
  local par = Instance.new("Part", game.Workspace)
  par.Transparency = 1
  par.Anchored = true
  par.CFrame = char.Head.CFrame
  par.CanCollide = false
  game.Debris:AddItem(par, 10)
  local f = Instance.new("BillboardGui", par)
  f.Size = UDim2.new(1.2, 0, 1.2, 0)
  f.AlwaysOnTop = true
  f.StudsOffset = Vector3.new(0, 4, 0)
  local fr = Instance.new("Frame", f)
  fr.BackgroundTransparency = 1
  fr.Size = UDim2.new(2, 0, 2, 0)
  fr.ClipsDescendants = true
  local fe = Instance.new("TextLabel", fr)
  fe.Size = UDim2.new(1, 0, 1, 0)
  fe.BackgroundTransparency = 1
  fe.TextColor3 = Color3.new(255, 255, 255)
  fe.TextStrokeTransparency = 0
  fe.Text = txt
  fe.TextScaled = true
  fe.Font = "SourceSansBold"
  game.Debris:AddItem(f, 4)
  fe.Position = UDim2.new(0, 0, 1, 0)
  fe:TweenPosition(UDim2.new(0, 0, 0, 0), "In", "Linear", 0.5)
  wait(2)
  fe:TweenPosition(UDim2.new(0, 0, -1, 0), "In", "Linear", 0.4)
  for i = 0, 10 do
    wait()
    fe.TextTransparency = fe.TextTransparency + 0.1
  end
end

            local TARG1, TARG2, TARG3, TARG4, TARG5, TARG6 = nil, nil, nil, nil, nil, nil
            local IdleAndWalk = false
            turnonwelds()
            opend = true
            local wpb = true
            local num = 1
            mouse.Button1Down:connect(function()
  if current == true and idleq == false and opend == true and wpb == true and stun.Value == false and bl.Value == false and healingmode == false then
    local fs = nil
    do
      if num == 1 then
	attack = true
        wpb = false
        current = false
        fr = true
        p26.Touched:connect(function(hit)
    if not fr then
      return 
    end
    if hit.Parent:FindFirstChild("Defense") then
      fs = math.floor(math.random(4, 8) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
    else
      fs = math.floor(math.random(4, 8) * atk.Value)
    end
    if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
      fr = false
      if hit.Parent:FindFirstChild("Blocking") then
        if hit.Parent:FindFirstChild("Blocking").Value == true then
          hit.Parent.PauseBlock.Value = true
          wait()
          wait()
          hit.Parent.BlockingLeft.Value = 5
          wait()
          wait()
          hit.Parent.PauseBlock.Value = false
          hit.Parent.BlockingLabel.Value = true
          stun.Value = true
        else
          hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
          DGU(hit, fs)
          fr = false
        end
      else
        hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
        DGU(hit, fs)
        fr = false
      end
    end
  end
)
        s4:Play()
        local tar = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-100))
        wait(0.1)
        TARG1 = PA1[5]
        TARG2 = PA1[6]
        TARG3 = PA1[4]
        TARG4 = PA1[3]
        TARG5 = PA1[2]
        TARG6 = PA1[1]
        STARG = tar
        wait(0.1)
        TARG1 = PA1[5]
        TARG2 = PA1[6]
        TARG3 = PA1[4]
        TARG4 = PA1[3]
        TARG5 = PA1[2]
        TARG6 = PA1[1]
        STARG = tar
        wait(0.1)
        TARG1 = PA1[5]
        TARG2 = PA1[6]
        TARG3 = PA1[4]
        TARG4 = PA1[3]
        TARG5 = PA1[2]
        TARG6 = PA1[1]
        STARG = tar
        wait(0.1)
        TARG1 = PA1[5]
        TARG2 = PA1[6]
        TARG3 = PA1[4]
        TARG4 = PA1[3]
        TARG5 = PA1[2]
        TARG6 = PA1[1]
        STARG = tar
        wait(0.2)
        current = true
        fr = false
        wait(0.1)
        wpb = true
        num = num + 1
attack = false
        return 
      end
      do
        if num == 2 then
	attack = true
          wpb = false
          current = false
          fr = true
          p26.Touched:connect(function(hit)
    if not fr then
      return 
    end
    if hit.Parent:FindFirstChild("Defense") then
      fs = math.floor(math.random(4, 8) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
    else
      fs = math.floor(math.random(4, 8) * atk.Value)
    end
    if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
      fr = false
      if hit.Parent:FindFirstChild("Blocking") then
        if hit.Parent:FindFirstChild("Blocking").Value == true then
          hit.Parent.PauseBlock.Value = true
          wait()
          hit.Parent.BlockingLeft.Value = 5
          wait()
          hit.Parent.PauseBlock.Value = true
          hit.Parent.BlockingLabel.Value = true
          stun.Value = true
        else
          hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
          DGU(hit, fs)
          fr = false
        end
      else
        hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
        DGU(hit, fs)
        fr = false
      end
    end
  end
)
          s5:Play()
          wait(0.1)
          local tar = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(160))
          local tar2 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(160))
          TARG1 = PA2[6]
          TARG2 = PA2[5]
          TARG3 = PA2[4]
          TARG4 = PA2[3]
          TARG5 = PA2[2]
          TARG6 = PA2[1]
          STARG = tar
          wait(0.02)
          TARG1 = PA2[6]
          TARG2 = PA2[5]
          TARG3 = PA2[4]
          TARG4 = PA2[3]
          TARG5 = PA2[2]
          TARG6 = PA2[1]
          STARG = tar
          wait(0.02)
          TARG1 = PA2[6]
          TARG2 = PA2[5]
          TARG3 = PA2[4]
          TARG4 = PA2[3]
          TARG5 = PA2[2]
          TARG6 = PA2[1]
          wait(0.02)
          STARG = tar
          TARG1 = PA2[6]
          TARG2 = PA2[5]
          TARG3 = PA2[4]
          TARG4 = PA2[3]
          TARG5 = PA2[2]
          TARG6 = PA2[1]
          STARG = tar
          wait(0.02)
          TARG1 = PA21[6]
          TARG2 = PA21[5]
          TARG3 = PA21[4]
          TARG4 = PA21[3]
          TARG5 = PA21[2]
          TARG6 = PA21[1]
          STARG = tar2
          wait(0.02)
          TARG1 = PA21[6]
          TARG2 = PA21[5]
          TARG3 = PA21[4]
          TARG4 = PA21[3]
          TARG5 = PA21[2]
          TARG6 = PA21[1]
          STARG = tar2
          wait(0.02)
          TARG1 = PA21[6]
          TARG2 = PA21[5]
          TARG3 = PA21[4]
          TARG4 = PA21[3]
          TARG5 = PA21[2]
          TARG6 = PA21[1]
          STARG = tar2
          wait(0.02)
          TARG1 = PA21[6]
          TARG2 = PA21[5]
          TARG3 = PA21[4]
          TARG4 = PA21[3]
          TARG5 = PA21[2]
          TARG6 = PA21[1]
          STARG = tar2
          wait(0.2)
          current = true
          fr = false
          wait(0.1)
          wpb = true
          num = num + 1
         attack = false
          return 
        end
        do
          if num == 3 then
	attack = true
            do
              wpb = false
              current = false
              fr = true
              char["Left Leg"].Touched:connect(function(hit)
    if not fr then
      return 
    end
    if hit.Parent:FindFirstChild("Defense") then
      fs = math.floor(math.random(4, 8) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
    else
      fs = math.floor(math.random(4, 8) * atk.Value)
    end
    if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
      fr = false
      if hit.Parent:FindFirstChild("Blocking") then
        if hit.Parent:FindFirstChild("Blocking").Value == true then
          hit.Parent.PauseBlock.Value = true
          wait()
          hit.Parent.BlockingLeft.Value = 5
          wait()
          hit.Parent.PauseBlock.Value = true
          hit.Parent.BlockingLabel.Value = true
          stun.Value = true
        else
          hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
          DGU(hit, fs)
          fr = false
        end
      else
        hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
        DGU(hit, fs)
        fr = false
      end
    end
  end
)
              s1.Pitch = 0.8
              s1:Play()
              wait(0.1)
              TARG1 = PA3[4]
              TARG2 = PA3[3]
              TARG3 = PA3[2]
              TARG4 = PA3[6]
              TARG5 = PA3[5]
              TARG6 = PA3[1]
              wait(0.1)
              TARG1 = PA3[4]
              TARG2 = PA3[3]
              TARG3 = PA3[2]
              TARG4 = PA3[6]
              TARG5 = PA3[5]
              TARG6 = PA3[1]
              wait(0.1)
              TARG1 = PA3[4]
              TARG2 = PA3[3]
              TARG3 = PA3[2]
              TARG4 = PA3[6]
              TARG5 = PA3[5]
              TARG6 = PA3[1]
              wait(0.1)
              TARG1 = PA3[4]
              TARG2 = PA3[3]
              TARG3 = PA3[2]
              TARG4 = PA3[6]
              TARG5 = PA3[5]
              TARG6 = PA3[1]
              wait(0.2)
              current = true
              fr = false
              wait(0.1)
              wpb = true
              num = 1
attack = false
              do return  end
              -- DECOMPILER ERROR at PC545: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC545: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
  end
end
)
            local rtb = true
            local orb = nil
            healplrs = function()
  local plrs = {}
  local healpoints = math.floor(math.random(3, 5))
  local num = 0
  local getsnearme = function(studs)
    local list = game.Workspace:GetChildren()
    local targs = {}
    for i = 1, #list do
      local target = list[i]
      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - char.Torso.Position).magnitude < studs then
        table.insert(targs, target)
      end
    end
    return targs
  end

  makeorb = true
  dgm = healpoints
  dg = nil
  wait(0.1)
  local hum = char:FindFirstChild("Humanoid")
  hum.Health = hum.Health + healpoints
  def.Value = def.Value + 0.03
  dgm = healpoints
  dg = char.Head
  wait()
  local f = getsnearme(30)
  if f ~= nil then
    for i,v in pairs(f) do
      if v:FindFirstChild("Attack") then
        wait(0.1)
        local hum = v:FindFirstChild("Humanoid")
        hum.Health = hum.Health + healpoints
        v:FindFirstChild("Defense").Value = v:FindFirstChild("Defense").Value + 0.03
        dgm = healpoints
        dg = v.Head
      else
        do
          wait(0.1)
          do
            local hum = v:FindFirstChild("Humanoid")
            hum.Health = hum.Health + healpoints
            dgm = healpoints
            dg = v.Head
            -- DECOMPILER ERROR at PC85: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC85: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC85: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end

            game:GetService("RunService").RenderStepped:connect(function()
  if healingmode == true and ht.Value > 0.9 then
    ht.Value = ht.Value - 0.02
  end
  if ht.Value < 1.1 and healingmode == true then
    ht.Value = 5
    healplrs()
  end
end
)
            mouse.KeyDown:connect(function(key)
  key = key:lower()
  if key == "e" and rtb == true and stun.Value == false then
    if healingmode == false then
	attack = true
      skl = true
      healingmode = true
      char.Humanoid.WalkSpeed = 0
      wait(0.05)
      SWELD.Part0 = char.Torso
      local cf = CFrame.new(0, 0, -3) * CFrame.Angles(math.rad(180), 0, 0)
      TARG1 = med[6]
      TARG2 = med[5]
      TARG3 = med[4]
      TARG4 = med[3]
      TARG5 = med[2]
      TARG6 = med[1]
      STARG = cf
      wait(0.05)
      TARG1 = med[6]
      TARG2 = med[5]
      TARG3 = med[4]
      TARG4 = med[3]
      TARG5 = med[2]
      TARG6 = med[1]
      STARG = cf
      wait(0.05)
      TARG1 = med[6]
      TARG2 = med[5]
      TARG3 = med[4]
      TARG4 = med[3]
      TARG5 = med[2]
      TARG6 = med[1]
      STARG = cf
      wait(0.05)
      TARG1 = med[6]
      TARG2 = med[5]
      TARG3 = med[4]
      TARG4 = med[3]
      TARG5 = med[2]
      TARG6 = med[1]
      STARG = cf
      local r = Instance.new("Part", char)
      r.Transparency = 1
      r.CanCollide = false
      r.Name = "Circle"
      r.CFrame = char.Torso.CFrame * CFrame.new(0, -1.7, 0)
      r.Size = Vector3.new(50, 1, 50)
      r.Anchored = true
      local c = Instance.new("Decal", r)
      c.Face = "Top"
      c.Texture = "http://www.roblox.com/asset/?id=332014171"
      orb = r
      wait()
      r.CFrame = char.Torso.CFrame * CFrame.new(0, -1.7, 0)
      return 
    else
      do
        SWELD.Part0 = char["Right Arm"]
        healingmode = false
        skl = false
attack = false
        if orb ~= nil then
          orb:Destroy()
        end
        do return  end
      end
    end
  end
end
)
            game:GetService("RunService").RenderStepped:connect(function()
  if healingmode == false and orb ~= nil then
    orb:Destroy()
    if char:FindFirstChild("Circle") then
      char:FindFirstChild("Circle"):Destroy()
    end
  end
end
)
            local pos = 0
            game:GetService("RunService").RenderStepped:connect(function()
  if healingmode == true and orb ~= nil then
    orb.CFrame = char.Torso.CFrame * CFrame.new(0, -1.7, 0) * CFrame.fromEulerAnglesXYZ(0, pos, 0)
    pos = pos + 0.05
    local cf = CFrame.new(0, 0, -3) * CFrame.Angles(math.rad(180), 0, 0)
    TARG1 = med[6]
    TARG2 = med[5]
    TARG3 = med[4]
    TARG4 = med[3]
    TARG5 = med[2]
    TARG6 = med[1]
    STARG = cf
  end
  do
    if healingmode == true and stun.Value == true then
      orb:Destroy()
      if char:FindFirstChild("Circle") then
        char:FindFirstChild("Circle"):Destroy()
      end
      healingmode = false
      skl = false
      SWELD.Part0 = char["Right Arm"]
    end
  end
end
)
            local pr, sz, ps = nil, nil, nil
            local act = false
            game:GetService("RunService").RenderStepped:connect(function()
  if makeorb == true then
    makeorb = false
    local l = Instance.new("Part", game.Workspace)
    l.BrickColor = BrickColor.new("Forest green")
    l.Size = Vector3.new(1, 1, 1)
    l.Shape = "Ball"
    l.TopSurface = "Smooth"
    l.BottomSurface = "Smooth"
    l.Material = "Neon"
    l.CanCollide = false
    l.Anchored = true
    l.Transparency = 0
    l.CFrame = char.Torso.CFrame
    game.Debris:AddItem(l, 2)
    sz = Vector3.new(120, 120, 120)
    ps = char.Torso.CFrame
    pr = l
    for i = 0, 20 do
      wait()
      l.Transparency = l.Transparency + 0.05
    end
  end
end
)
            game:GetService("RunService").RenderStepped:connect(function()
  if pr ~= nil and pr.Size ~= Vector3.new(40, 40, 40) then
    pr.Size = pr.Size:lerp(Vector3.new(40, 40, 40), 0.05)
    pr.CFrame = char.Torso.CFrame
  end
end
)
            game:GetService("RunService").RenderStepped:connect(function()
  if dg ~= lastdg then
    lastdg = dg
    if dg ~= nil then
      HL(dg, dgm)
    end
  end
end
)
            game:GetService("RunService").RenderStepped:connect(function()
  if df ~= lastdf then
    lastdf = df
    if df ~= nil then
      DGU(df, dfm)
    end
  end
end
)
            mouse.KeyDown:connect(function(key)
  key = key:lower()
  if key == "z" and current == true and opend == true and stun.Value == false and energy > 19 and S1 == true and healingmode == false then
	attack = true
    energy = energy - 20
    S1T = 0
    current = false
    wait()
    SWELD.Part0 = char.Torso
    local cf = CFrame.new(0, 0, -2) * CFrame.Angles(math.rad(180), 0, 0)
    SWELD.Part0 = char.Torso
    makeorb = true
    TARG1 = heal[4]
    TARG2 = heal[3]
    TARG3 = heal[2]
    TARG4 = heal[6]
    TARG5 = heal[5]
    TARG6 = heal[1]
    STARG = cf
    wait(0.05)
    TARG1 = heal[4]
    TARG2 = heal[3]
    TARG3 = heal[2]
    TARG4 = heal[6]
    TARG5 = heal[5]
    TARG6 = heal[1]
    STARG = cf
    wait(0.05)
    TARG1 = heal[4]
    TARG2 = heal[3]
    TARG3 = heal[2]
    TARG4 = heal[6]
    TARG5 = heal[5]
    TARG6 = heal[1]
    STARG = cf
    wait(0.05)
    TARG1 = heal[4]
    TARG2 = heal[3]
    TARG3 = heal[2]
    TARG4 = heal[6]
    TARG5 = heal[5]
    TARG6 = heal[1]
    STARG = cf
    local plrs = {}
    local healpoints = math.floor(math.random(10, 14))
    local num = 0
    local getsnearme = function(studs)
    local list = game.Workspace:GetChildren()
    local targs = {}
    for i = 1, #list do
      local target = list[i]
      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - char.Torso.Position).magnitude < studs then
        table.insert(targs, target)
      end
    end
    return targs
  end

    local f = getsnearme(30)
    dgm = healpoints
    dg = nil
    wait(0.1)
    local hum = char:FindFirstChild("Humanoid")
    hum.Health = hum.Health + healpoints
    def.Value = def.Value + 0.05
    dgm = healpoints
    dg = char.Head
    wait()
    for i,v in pairs(f) do
      if v:FindFirstChild("Defense") then
        wait(0.1)
        local hum = v:FindFirstChild("Humanoid")
        hum.Health = hum.Health + healpoints
        v:FindFirstChild("Defense").Value = v:FindFirstChild("Defense").Value + 0.05
        dgm = healpoints
        dg = v.Head
      else
        do
          wait(0.1)
          do
            local hum = v:FindFirstChild("Humanoid")
            hum.Health = hum.Health + healpoints
            dgm = healpoints
            dg = v.Head
            -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC225: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    wait(0.5)
    SWELD.Part0 = char["Right Arm"]
    current = true
  end
end
)
            local r2d = false
            local rb = nil
            local r = false
attack = false
            mouse.KeyDown:connect(function(key)
  key = key:lower()
  if key == "x" then
    if r2d == true then
      rb = char.B1.CFrame
      r = true
      char:FindFirstChild("B1"):Destroy()
      char:FindFirstChild("B2"):Destroy()
      f2l.Text = "[X] Cleanse"
      r2d = false
    end
    if current == true and opend == true and stun.Value == false and energy > 24 and S2 == true and healingmode == false and r2d == false then
	attack = true
      energy = energy - 25
      S2T = 0
      current = false
      TARG1 = SK2[6]
      TARG2 = SK2[5]
      TARG3 = SK2[4]
      TARG4 = SK2[3]
      TARG5 = SK2[2]
      TARG6 = SK2[1]
      local cf = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), math.rad(-90), 0)
      STARG = cf
      wait(0.05)
      TARG1 = SK2[6]
      TARG2 = SK2[5]
      TARG3 = SK2[4]
      TARG4 = SK2[3]
      TARG5 = SK2[2]
      TARG6 = SK2[1]
      STARG = cf
      wait(0.05)
      TARG1 = SK2[6]
      TARG2 = SK2[5]
      TARG3 = SK2[4]
      TARG4 = SK2[3]
      TARG5 = SK2[2]
      TARG6 = SK2[1]
      STARG = cf
      wait(0.05)
      TARG1 = SK2[6]
      TARG2 = SK2[5]
      TARG3 = SK2[4]
      TARG4 = SK2[3]
      TARG5 = SK2[2]
      TARG6 = SK2[1]
      STARG = cf
      local d1 = Instance.new("Part", char)
      d1.BrickColor = BrickColor.new("Lime green")
      d1.Shape = "Ball"
      d1.Size = Vector3.new(5.95, 5.95, 5.95)
      d1.CanCollide = false
      d1.Transparency = 0.6
      d1.Position = p18.CFrame.p + Vector3.new(0, 0, 0)
      d1.TopSurface = "Smooth"
      d1.BottomSurface = "Smooth"
      d1.Material = "Neon"
      d1.Name = "B1"
      local v = Instance.new("BodyVelocity", d1)
      v.maxForce = Vector3.new(math.huge, math.huge, math.huge)
      v.velocity = char.HumanoidRootPart.CFrame.lookVector * 80
      local d2 = Instance.new("Part", char)
      d2.BrickColor = BrickColor.new("Lime green")
      d2.Shape = "Ball"
      d2.Size = Vector3.new(8.12, 8.12, 8.12)
      d2.CanCollide = false
      d2.Position = d1.CFrame.p
      d2.TopSurface = "Smooth"
      d2.BottomSurface = "Smooth"
      d2.Material = "Neon"
      d2.Name = "B2"
      d2.Transparency = 0.8
      game.Debris:AddItem(d1, 5)
      game.Debris:AddItem(d2, 5)
      local w = Instance.new("Weld", d1)
      w.Part0 = d1
      w.Part1 = d2
      r2d = true
      f2l.Text = "[X] Detonate"
      wait()
      d1.CFrame = p18.CFrame
      wait(0.5)
      current = true
      wait(4.4)
      r2d = false
      f2l.Text = "[X] Cleanse"
    end
  end
attack = false
end
)
            ma = function()
  local f = Instance.new("Part", char)
  game.Debris:AddItem(f, 1.1)
  f.TopSurface = "Smooth"
  f.BottomSurface = "Smooth"
  f.BrickColor = BrickColor.new("Lime green")
  f.Size = Vector3.new(2, 2.4, 2)
  f.CanCollide = false
  f.Anchored = true
  local fm = Instance.new("SpecialMesh", f)
  fm.MeshId = "http://www.roblox.com/asset/?id=20329976"
  fm.Scale = Vector3.new(6, 1, 6)
  f.CFrame = CFrame.new(char.B1.CFrame.X, char.B1.CFrame.Y + -3, char.B1.CFrame.Z)
  for i = 0, 10 do
    wait()
    f.Transparency = f.Transparency + 0.1
  end
end

            game:GetService("RunService").RenderStepped:connect(function()
  if r2d == true and mc.Value > 0.9 then
    mc.Value = mc.Value - 0.15
  end
  if mc.Value < 1.1 and r2d == true then
    mc.Value = 2
    ma()
  end
end
)
            game:GetService("RunService").RenderStepped:connect(function()
  if r == true then
    r = false
    local l = Instance.new("Part", game.Workspace)
    do
      l.BrickColor = BrickColor.new("Forest green")
      l.Size = Vector3.new(1, 1, 1)
      l.Shape = "Ball"
      l.TopSurface = "Smooth"
      l.BottomSurface = "Smooth"
      l.Material = "Neon"
      l.CanCollide = false
      l.Anchored = true
      l.Transparency = 0
      l.CFrame = rb
      local dmg = true
      local getsnearme = function(studs)
    local list = game.Workspace:GetChildren()
    local targs = {}
    for i = 1, #list do
      local target = list[i]
      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - l.Position).magnitude < studs and target ~= nil then
        table.insert(targs, target)
      end
    end
    return targs
  end

      local f = getsnearme(20)
      for i,v in pairs(f) do
        wait(0.1)
        if v:FindFirstChild("Attack") then
          if v:FindFirstChild("Blocking").Value == true then
            v.BlockingLabel.Value = true
          else
            v:FindFirstChild("Attack").Value = v:FindFirstChild("Attack").Value - 0.1
            v:FindFirstChild("Attack").Value = v:FindFirstChild("Attack").Value - 0.1
            local dtd = math.floor(math.random(12, 14) * atk.Value / v:FindFirstChild("Defense").Value)
            v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
            dfm = 5
            df = nil
            wait()
            dfm = dtd
            df = v:FindFirstChild("Head")
          end
        else
          do
            do
              local dtd = math.floor(math.random(12, 14) * atk.Value)
              v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
              dfm = 5
              df = nil
              wait()
              dfm = dtd
              df = v:FindFirstChild("Head")
              -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC145: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
      game.Debris:AddItem(l, 2)
      sz = Vector3.new(120, 120, 120)
      pl = l
      for i = 0, 20 do
        wait()
        l.Transparency = l.Transparency + 0.05
      end
    end
  end
end
)
            game:GetService("RunService").RenderStepped:connect(function()
  if pl ~= nil and pl.Size ~= Vector3.new(40, 40, 40) then
    pl.Size = pl.Size:lerp(Vector3.new(40, 40, 40), 0.05)
    pl.CFrame = rb
  end
end
)
            makepart = function(transparency, collide, color, size, cf, material, shape, debris, anchored)
  local p = Instance.new("Part", game.Workspace)
  if transparency ~= nil then
    p.Transparency = transparency
  end
  p.Anchored = true
  if collide ~= nil then
    p.CanCollide = collide
    if color ~= nil then
      p.BrickColor = BrickColor.new(color)
    end
    if size ~= nil then
      p.Size = size
    end
    if cf ~= nil then
      p.CFrame = cf
    end
    if material ~= nil then
      p.Material = material
    end
    if shape ~= nil then
      p.Shape = shape
    end
    if debris ~= nil then
      game.Debris:AddItem(p, debris)
    end
    p.TopSurface = "SmoothNoOutlines"
    p.BottomSurface = "SmoothNoOutlines"
    p.LeftSurface = "SmoothNoOutlines"
    p.RightSurface = "SmoothNoOutlines"
    p.FrontSurface = "SmoothNoOutlines"
    p.BackSurface = "SmoothNoOutlines"
    return p
  end
end

            meshsomething = function(part, meshid, textureid, scale, mt)
  local msh = nil
  if mt ~= nil then
    msh = Instance.new(mt, part)
  else
    msh = Instance.new("SpecialMesh", part)
  end
  if meshid ~= nil then
    msh.MeshId = meshid
  end
  if textureid ~= nil then
    msh.TextureId = textureid
  end
  if scale ~= nil then
    msh.Scale = scale
  end
  return msh
end

            local spk, spkcf, spkm = nil, nil, nil
            local cf = Instance.new("CFrameValue", char)
            game:GetService("RunService").RenderStepped:connect(function()
  if spk ~= nil and spkcf ~= nil and spkm ~= nil then
    spk.Size = spk.Size:lerp(Vector3.new(8.02, 15, 9.39), 0.05)
    spk.CFrame = cf
    spkm.Scale = spkm.Scale:lerp(Vector3.new(10, 10, 10), 0.05)
  end
end
)
            mouse.KeyDown:connect(function(key)
  key = key:lower()
  if key == "c" and current == true and opend == true and stun.Value == false and energy > 34 and S3 == true and healingmode == false then
	attack = true
    energy = energy - 26
    S3T = 0
    local dmg = true
    do
      current = false
      skl = true
      char.Humanoid.WalkSpeed = 0
      TARG1 = SK3[6]
      TARG2 = SK3[5]
      TARG3 = SK3[4]
      TARG4 = SK3[3]
      TARG5 = SK3[2]
      TARG6 = SK3[1]
      wait(0.05)
      TARG1 = SK3[6]
      TARG2 = SK3[5]
      TARG3 = SK3[4]
      TARG4 = SK3[3]
      TARG5 = SK3[2]
      TARG6 = SK3[1]
      wait(0.05)
      TARG1 = SK3[6]
      TARG2 = SK3[5]
      TARG3 = SK3[4]
      TARG4 = SK3[3]
      TARG5 = SK3[2]
      TARG6 = SK3[1]
      wait(0.05)
      TARG1 = SK3[6]
      TARG2 = SK3[5]
      TARG3 = SK3[4]
      TARG4 = SK3[3]
      TARG5 = SK3[2]
      TARG6 = SK3[1]
      wait(0.05)
      local p1 = makepart(0, false, "Lime green", Vector3.new(2, 2.4, 2), char.HumanoidRootPart.CFrame * CFrame.new(0, -2.7, -8), "Plastic", nil, 4, true)
      local m1 = meshsomething(p1, "http://www.roblox.com/asset/?id=20329976", nil, Vector3.new(8, 1, 8))
      local p2 = makepart(0, false, "Lime green", Vector3.new(10.81, 1.2, 10.4), char.HumanoidRootPart.CFrame * CFrame.new(0, -3, -7.5), "Neon", nil, 4, true)
      local m2 = meshsomething(p2, nil, nil, Vector3.new(1, 1, 1), "CylinderMesh")
      local p3 = makepart(0, false, "Lime green", Vector3.new(8.02, 0.2, 9.39), char.HumanoidRootPart.CFrame * CFrame.new(0, -3, -7.5), "Neon", nil, 4, true)
      local m3 = meshsomething(p3, "http://www.roblox.com/asset/?id=1323306", nil, Vector3.new(10, 0, 10))
      spkm = m3
      spkcf = p3.CFrame
      spk = p3
      cf = char.HumanoidRootPart.CFrame * CFrame.new(0, -3, -7.5)
      local getsnearme = function(studs)
    local list = game.Workspace:GetChildren()
    local targs = {}
    for i = 1, #list do
      local target = list[i]
      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - p1.Position).magnitude < studs and target ~= nil then
        table.insert(targs, target)
      end
    end
    return targs
  end

      local f = getsnearme(7)
      for i,v in pairs(f) do
        wait(0.1)
        if v:FindFirstChild("Attack") then
          if v:FindFirstChild("Blocking").Value == true then
            v.BlockingLabel.Value = true
          else
            v:FindFirstChild("Attack").Value = v:FindFirstChild("Attack").Value - 0.1
            v:FindFirstChild("Attack").Value = v:FindFirstChild("Attack").Value - 0.2
            local dtd = math.floor(math.random(15, 19) * atk.Value / v:FindFirstChild("Defense").Value)
            v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
            dfm = 5
            df = nil
            wait()
            dfm = dtd
            df = v:FindFirstChild("Head")
          end
        else
          do
            do
              local dtd = math.floor(math.random(15, 17) * atk.Value)
              v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
              dfm = 5
              df = nil
              wait()
              dfm = dtd
              df = v:FindFirstChild("Head")
              -- DECOMPILER ERROR at PC356: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC356: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC356: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
      wait(0.2)
      current = true
      skl = false
      for i = 0, 20 do
        wait()
        p1.Transparency = p1.Transparency + 0.05
        p2.Transparency = p2.Transparency + 0.05
      end
      wait(0.1)
      for i = 0, 10 do
        wait()
        p3.Transparency = p3.Transparency + 0.1
      end
      wait(0.5)
      dmg = false
    end
  end
end
)
            local ttl, cfr, ttl2, cfr2 = nil, nil, nil, nil
            game:GetService("RunService").RenderStepped:connect(function()
  if ttl ~= nil then
    ttl.CFrame = ttl.CFrame:lerp(cfr, 0.2)
  end
end
)
            game:GetService("RunService").RenderStepped:connect(function()
  if ttl2 ~= nil then
    ttl2.CFrame = ttl2.CFrame:lerp(cfr2, 0.005)
  end
attack = false
end
)
            mouse.KeyDown:connect(function(key)
  key = key:lower()
  if key == "v" and current == true and opend == true and stun.Value == false and energy > 49 and S4 == true and healingmode == false then
	attack = true
    current = false
    skl = true
    wait(0.05)
    local dmg = nil
    do
      S4T = 0
      energy = energy - 59
      wait()
      char.Humanoid.WalkSpeed = 0
      TARG1 = SK4[6]
      TARG2 = SK4[5]
      TARG3 = SK4[4]
      TARG4 = SK4[3]
      TARG5 = SK4[2]
      TARG6 = SK4[1]
      wait(0.05)
      TARG1 = SK4[6]
      TARG2 = SK4[5]
      TARG3 = SK4[4]
      TARG4 = SK4[3]
      TARG5 = SK4[2]
      TARG6 = SK4[1]
      wait(0.05)
      TARG1 = SK4[6]
      TARG2 = SK4[5]
      TARG3 = SK4[4]
      TARG4 = SK4[3]
      TARG5 = SK4[2]
      TARG6 = SK4[1]
      wait(0.05)
      TARG1 = SK4[6]
      TARG2 = SK4[5]
      TARG3 = SK4[4]
      TARG4 = SK4[3]
      TARG5 = SK4[2]
      TARG6 = SK4[1]
      local p2 = makepart(0, false, "Lime green", Vector3.new(16.48, 0.2, 2.85), char.HumanoidRootPart.CFrame * CFrame.new(0, -3, -3), "Neon", nil, 4, true)
      local p3 = makepart(0, false, "Lime green", Vector3.new(2, 2.4, 2), char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3), "Neon", nil, 4, true)
      local m3 = meshsomething(p3, "http://www.roblox.com/asset/?id=20329976", nil, Vector3.new(10, 10, 2))
      dmg = true
      local p1 = makepart(0, false, "Lime green", Vector3.new(15.68, 11.17, 2), char.HumanoidRootPart.CFrame * CFrame.new(0, -15, -3), "Neon", nil, 3, false)
      ttl = p1
      cfr = p1.CFrame * CFrame.new(0, 18.5, 0)
      p1.Parent = game.Workspace
      p1.Transparency = 0.5
      dmg = true
      p1.Touched:connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= player.Name and dmg == true then
      if hit.Parent:FindFirstChild("Attack") then
        if hit.Parent:FindFirstChild("Blocking").Value == true then
          hit.Parent.BlockingLabel.Value = true
        else
          hit.Parent.Stunned.Value = true
          local dtd = math.floor(math.random(15, 24) * atk.Value * hit.Parent.Defense.Value)
          hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - dtd
          p1:Destroy()
          DGU(hit.Parent.Head, dtd)
        end
      else
        do
          local dtd = math.floor(math.random(15, 24) * atk.Value)
          hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - dtd
          p1:Destroy()
          DGU(hit.Parent.Head, dtd)
        end
      end
    end
  end
)
      wait(0.4)
      current = true
      skl = false
      ttl = nil
      ttl2 = p1
      cfr2 = p1.CFrame * CFrame.new(0, 0, -400)
      dmg = true
      wait(0.1)
      dmg = true
      p1.Touched:connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= player.Name and dmg == true then
      if hit.Parent:FindFirstChild("Attack") then
        if hit.Parent:FindFirstChild("Blocking").Value == true then
          hit.Parent.BlockingLabel.Value = true
        else
          hit.Parent.Stunned.Value = true
          local dtd = math.floor(math.random(15, 24) * atk.Value / hit.Parent.Defense.Value)
          hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - dtd
          p1:Destroy()
          DGU(hit.Parent.Head, dtd)
        end
      else
        do
          local dtd = math.floor(math.random(15, 24) * atk.Value)
          hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - dtd
          p1:Destroy()
          DGU(hit.Parent.Head, dtd)
        end
      end
    end
  end
)
      for i = 0, 20 do
        wait()
        p2.Transparency = p2.Transparency + 0.05
        p3.Transparency = p3.Transparency + 0.05
      end
    end
  end
attack = false
end
)
            local Speed = 0.4
            local lspeed = 0.2
            game:GetService("RunService").RenderStepped:connect(function()
  if Vector3.new(char.Torso.Velocity.X, 0, char.Torso.Velocity.Z).magnitude > 2 then
    IdleAndWalk = true
  else
    IdleAndWalk = false
  end
  if TARG4 ~= nil then
    rl.C0 = rl.C0:lerp(TARG4, lspeed)
  end
  if TARG5 ~= nil then
    ll.C0 = ll.C0:lerp(TARG5, lspeed)
  end
  if TARG3 ~= nil then
    nc.C0 = nc.C0:lerp(TARG3, lspeed)
  end
  if TARG1 ~= nil then
    w3.C0 = w3.C0:lerp(TARG1, Speed)
  end
  if TARG2 ~= nil then
    w4.C0 = w4.C0:lerp(TARG2, Speed)
  end
  if TARG6 ~= nil then
    ts.C0 = ts.C0:lerp(TARG6, Speed)
  end
  if STARG ~= nil then
    SWELD.C0 = SWELD.C0:lerp(STARG, Speed)
  end
  if TARG7 ~= nil and obj ~= nil then
    obj.Scale = obj.Scale:lerp(TARG7, 0.05)
  end
  if TARG8 ~= nil and obj2 ~= nil then
    obj2.Size = obj2.Size:lerp(TARG8, 0.4)
    obj2.CFrame = char.Torso.CFrame * CFrame.new(0, -2.5, 0)
  end
  if TARG10 ~= nil and obj3 ~= nil and TARG11 ~= nil then
    obj3.Size = obj3.Size:lerp(TARG10, 0.05)
    obj3.CFrame = char.Torso.CFrame * CFrame.new(0, -2.5, 0) * TARG11
  end
  if TARG10 ~= nil and obj3 ~= nil and obj3.Transparency ~= 1 then
    obj2.Transparency = obj2.Transparency + 0.05
    obj3.Transparency = obj3.Transparency + 0.05
    wait(0.1)
  end
  if char.Humanoid.Jump == true then
    gd.Value = true
  else
    gd.Value = false
  end
  if energy < 100 and current == true then
    energy = energy + 0.05
  end
  for i = 1, #parts do
    local Part = parts[i]
    Part.Size = Part.Size:lerp(Vector3.new(6, 32, 7), 0.05)
    for x = 1, #poses do
      Part.CFrame = poses[i]
    end
  end
  if blt.Value < 99 and bl.Value == false and stun.Value == false then
    blt.Value = blt.Value + 0.03
  end
  if bl.Value == true and blt.Value < 5 then
    bl.Value = false
    current = true
    skl = false
  end
  if posd.Value == true and pt.Value > 0 then
    pt.Value = pt.Value - 0.02
    char.Humanoid.Health = char.Humanoid.Health - 0.11
  end
  if pt.Value < 1 then
    posd.Value = false
  end
  if bl.Value == true then
    blt.Value = blt.Value - 0.5
  end
  if atkt.Value > 0 then
    atkt.Value = atkt.Value - 0.02
  else
    atk.Value = 1
  end
  if deft.Value > 0 then
    deft.Value = deft.Value - 0.02
  else
    def.Value = 1.1
  end
  if spdt.Value > 0 then
    spdt.Value = spdt.Value - 0.02
  else
    wait()
    if spdt.Value < 1 then
      spd.Value = 1
    end
  end
  local DV2 = S1T / S1TF
  local initX6 = f1.Size.X.Scale
  f1f:TweenSize(UDim2.new(initX6 * DV2 * 1.665, 0, 1, 0), "In", "Linear", 1)
  if S1T < 14 then
    S1T = S1T + 0.04
    S1 = false
  else
    S1 = true
  end
  if S1T == 14 then
    S1 = true
  end
  local DV2 = S2T / S2TF
  local initX6 = f2.Size.X.Scale
  f2f:TweenSize(UDim2.new(initX6 * DV2 * 3.566, 0, 1, 0), "In", "Linear", 1)
  if S2T < 14 then
    S2T = S2T + 0.01
    S2 = false
  else
    S2 = true
  end
  if S2T == 15 then
    S2 = true
  end
  local DV2 = S3T / S3TF
  local initX6 = f3.Size.X.Scale
  f3f:TweenSize(UDim2.new(initX6 * DV2 * 2.855, 0, 1, 0), "In", "Linear", 1)
  if S3T < 14 then
    S3T = S3T + 0.01
    S3 = false
  else
    S3 = true
  end
  if S3T == 15 then
    S3 = true
  end
  local DV2 = S4T / S4TF
  local initX6 = f4.Size.X.Scale
  f4f:TweenSize(UDim2.new(initX6 * DV2 * 3.45, 0, 1, 0), "In", "Linear", 1)
  if S4T < 29 then
    S4T = S4T + 0.01
    S4 = false
  else
    S4 = true
  end
  if S4T == 30 then
    S4 = true
  end
end
)
            satk = atk.Value
            sdef = def.Value
            sspd = spd.Value
            atk.Changed:connect(function()
  if atk.Value < satk then
    atkt.Value = atkt.Value + 4
    makeui(Color3.new(255, 0, 0), "-Damage")
    satk = atk.Value
  else
    atkt.Value = atkt.Value + 4
    makeui(Color3.new(255, 0, 0), "+Damage")
    satk = atk.Value
  end
end
)
            posd.Changed:connect(function()
  if posd.Value == false then
    makeui(Color3.new(255, 0, 0), "-Poison")
  else
    makeui(Color3.new(255, 0, 0), "+Poison")
  end
end
)
            def.Changed:connect(function()
  if def.Value < sdef then
    deft.Value = deft.Value + 4
    makeui(Color3.new(0, 0, 255), "-Defense")
    sdef = def.Value
  else
    deft.Value = deft.Value + 4
    makeui(Color3.new(0, 0, 255), "+Defense")
    sdef = def.Value
  end
end
)
            spd.Changed:connect(function()
  if spd.Value < sspd then
    spdt.Value = spdt.Value + 4
    makeui(Color3.new(0, 255, 0), "-Speed")
    sspd = spd.Value
  else
    spdt.Value = spdt.Value + 4
    makeui(Color3.new(0, 255, 0), "+Speed")
    sspd = spd.Value
  end
end
)
            bll.Changed:connect(function()
  if bll.Value == true then
    local c = Instance.new("Part", game.Workspace)
    c.Anchored = true
    c.CanCollide = false
    c.BrickColor = BrickColor.new("Medium stone grey")
    c.Shape = "Ball"
    c.Size = Vector3.new(1, 1, 1)
    c.CFrame = char.Torso.CFrame
    c.TopSurface = "Smooth"
    c.BottomSurface = "Smooth"
    c.Transparency = 0.1
    local v = Instance.new("Part", game.Workspace)
    v.Anchored = true
    v.CanCollide = false
    v.BrickColor = BrickColor.new("Medium stone grey")
    v.Size = Vector3.new(1, 1, 1)
    v.CFrame = char.Torso.CFrame
    v.TopSurface = "Smooth"
    v.BottomSurface = "Smooth"
    v.Transparency = 0.1
    obj2 = c
    TARG8 = Vector3.new(30, 30, 30)
    obj3 = v
    TARG10 = Vector3.new(15, 21, 15)
    TARG11 = CFrame.new(0, 0, 0)
    makeui(BrickColor.new("Bright bluish green").Color, "Blocked!")
    bll.Value = false
  end
end
)
            stun.Changed:connect(function()
  if stun.Value == true then
    makeui(Color3.new(255, 255, 0), "+Stunned")
    wait(2)
    if opend == true then
      stun.Value = false
    end
  end
  if stun.Value == false then
    makeui(Color3.new(255, 255, 0), "-Stunned")
  end
end
)
RootPart = char.HumanoidRootPart
            while true do
                  wait()
local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
                  fa.Text = "Attack : " .. atk.Value
                  fa2.Text = "Speed : " .. spd.Value
                  fa3.Text = "Defense : " .. def.Value
                  local initX5 = f5.Size.X.Scale
                  local maxhp = char.Humanoid.MaxHealth
                  local hp = char.Humanoid.Health
                  local Pie = hp / maxhp
                  f5f:TweenSize(UDim2.new(initX5 * Pie * 3.33, 0, 1, 0), "In", "Linear", 1)
                  local DV1 = energy / 100
                  local initX6 = f6.Size.X.Scale
                  f6f:TweenSize(UDim2.new(initX6 * DV1 * 3.33, 0, 1, 0), "In", "Linear", 1)
                  if opend == true then
                    if current == true then
                      if idleq == false then
                        if stun.Value == true then
                          TARG1 = stunned[3]
                          TARG2 = stunned[2]
                          TARG3 = stunned[1]
                          TARG4 = stunned[5]
                          TARG5 = stunned[4]
                          TARG6 = stunned[6]
                          char.Humanoid.WalkSpeed = 0
                        end
                        if stun.Value == true then
                          char.Humanoid.JumpPower = 0
                        else
                          char.Humanoid.JumpPower = 50
                        end
                        if stun.Value == false and skl == false then
                          char.Humanoid.WalkSpeed = 16 * spd.Value
                        end
                        if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false and healingmode == false then
                          TARG1 = jump[3]
                          TARG2 = jump[2]
                          TARG3 = jump[1]
                          TARG4 = jump[5]
                          TARG5 = jump[4]
                          TARG6 = CFrame.new(0, 0, 0)
                        end
                        local lilwl = ll.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0))
                        local lirwl = rl.C0 * CFrame.new(0, 0, 0.5) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0))
                        local lilwr = ll.C0 * CFrame.new(0, 0, 0.5) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0))
                        local lirwr = rl.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0))
                        if bl.Value == false then
                          if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and healingmode == false then
                            TARG1 = walk[8]
                            TARG2 = walk[7]
                            TARG3 = walk[6]
                            TARG4 = walk[4]
                            TARG5 = walk[3]
                            TARG6 = walk[5]
                            STARG = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
                            if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then
                              wait(0.05)
                            end
                            if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then
                              wait(0.05)
                            end
                            if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then
                              wait(0.05)
                            end
                            if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then
                              wait(0.05)
                            end
                            if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then
                              TARG1 = walk[8]
                              TARG2 = walk[7]
                              TARG3 = walk[6]
                              TARG4 = walk[2]
                              TARG5 = walk[1]
                              TARG6 = walk[5]
                            end
                            if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then
                              wait(0.05)
                            end
                            if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then
                              wait(0.05)
                            end
                            if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then
                              wait(0.05)
                            end
                            if IdleAndWalk ~= true or char.Humanoid.Jump ~= false or stun.Value ~= false or bl.Value ~= false or healingmode == false then
                              wait(0.05)
                            end
                        end
                      end
                    end
                  end
end
              if IdleAndWalk ~= false or char.Humanoid.Jump ~= false or stun.Value ~= false or bl.Value ~= false or healingmode == false and attack == false and torvel < 1 and hitfloor ~= nil then
                TARG1 = idle[5] * CFrame.Angles(0.1 * math.sin(tick()), 0, 0)
                TARG2 = idle[6] * CFrame.Angles(0.1 * math.sin(tick()), 0, 0)
                TARG3 = idle[2] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)
                TARG4 = idle[4] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)
                TARG5 = idle[3] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)
                TARG6 = idle[1]
                STARG = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(-50))
              end
            end

