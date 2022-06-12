--Converted by Chromium
script.Parent = nil
Character = game.Players.localPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
hitsounds = {"199149137", "199149186", "199149221", "199149235", "199149269", "199149297"}
blocksounds = {"199148933", "199148947"}
armorsounds = {"199149321", "199149338", "199149367", "199149409", "199149452"}
woosh = {Heavy1 = "320557353", Heavy2 = "320557382", Heavy3 = "320557453", Heavy4 = "199144226", Heavy5 = "203691447", Heavy6 = "203691467", Heavy7 = "203691492", Light1 = "320557413", Light2 = "320557487", Light3 = "199145095", Light4 = "199145146", Light5 = "199145887", Light6 = "199145913", Light7 = "199145841", Medium1 = "320557518", Medium2 = "320557537", Medium3 = "320557563", Medium4 = "199145204"}
music = {Breaking = "179281636", FinalReckoning = "357375770", NotDeadYet = "346175829", Intense = "151514610", JumpP1 = "160536628", JumpP2 = "60536666", SonsOfWar = "158929777", WrathOfSea = "165520893", ProtectorsOfEarth = "160542922", SkyTitans = "179282324", ArchAngel = "144043274", Anticipation = "168614529", TheMartyred = "186849544", AwakeP1 = "335631255", AwakeP2 = "335631297", ReadyAimFireP1 = "342455387", ReadyAimFireP2 = "342455399", DarkLordP1 = "209567483", DarkLordP2 = "209567529", BloodDrainP1 = "162914123", BloodDrainP2 = "162914203", DanceOfSwords = "320473062", Opal = "286415112", Calamity = "190454307", Hypnotica = "155968128", Nemisis = "160453802", Breathe = "276963903", GateToTheRift = "270655227", InfernalBeserking = "244143404", Trust = "246184492", AwakeningTheProject = "245121821", BloodPain = "242545577", Chaos = "247241693", NightmareFictionHighStake = "248062278", TheWhiteWeapon = "247236446", Gale = "256851659", ImperialCode = "256848383", Blitzkrieg = "306431437", RhapsodyRage = "348690251", TheGodFist = "348541501", BattleForSoul = "321185592", TheDarkColossus = "305976780", EmpireOfAngels = "302580452", Kronos = "302205297", Exorcist = "299796054", CrimsonFlames = "297799220", UltimatePower = "295753229", DrivingInTheDark = "295753229", AscendToPower = "293860654", GodOfTheSun = "293612495", DarkRider = "293861765", Vengeance = "293375555", SoundOfWar = "293376196", HellsCrusaders = "293012202", Legend = "293011823", RisingSouls = "290524959"}
misc = {GroundSlam = "199145477", LaserSlash = "199145497", RailGunFire = "199145534", Charge1 = "199145659", Charge2 = "169380469", Charge3 = "169380479", EmptyGun = "203691822", GunShoot = "203691837", Stomp1 = "200632875", Stomp2 = "200632561", TelsaCannonCharge = "169445572", TelsaCannonShoot = "169445602", AncientHymm = "245313442"}
wait(0.016666666666667)
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 0
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local gun = false
local shoot = false
player = nil
mana = 0
Character:FindFirstChild("Animate"):Destroy()
Humanoid:findFirstChild("Animator"):Destroy()
Humanoid.WalkSpeed = 12
print("Gladiator loaded.")
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NoOutline = function(Part)
  Part.TopSurface = 10
end
player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
m.Name = "Gladiator\'s Greatsword"
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
it = Instance.new
nooutline = function(part)
  part.TopSurface = 10
end
rainParts = {}
part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  if brickcolor == TorsoColor then
    table.insert(rainParts, #rainParts + 1, fp)
  end
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
local wep = Instance.new("Model")
wep.Name = "Gladiator's Greatsword"
p1 = Instance.new("Part", wep)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.SmoothPlastic
p1.Transparency = 1
p1.Name = "Handle"
p1.CFrame = CFrame.new(-1306.18677, 523.897644, 334.908051, 0.409549743, -0.797001302, -0.443912029, 0.824144244, 0.531893909, -0.194615349, 0.391222775, -0.286142886, 0.874681056)
p1.Anchored = true
p1.Locked = true
p1.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p2 = Instance.new("Part", wep)
p2.BrickColor = BrickColor.new("Smoky grey")
p2.Material = Enum.Material.Metal
p2.Transparency = 1
p2.Name = "Hitbox"
p2.CFrame = CFrame.new(-1308.26184, 518.222229, 332.590515, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p2.Anchored = true
p2.Locked = true
p2.Size = Vector3.new(0.75, 1, 8.25)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p3 = Instance.new("Part", wep)
p3.BrickColor = BrickColor.new("Smoky grey")
p3.Material = Enum.Material.Metal
p3.Transparency = 1
p3.Name = "Hitbox2"
p3.CFrame = CFrame.new(-1310.73596, 514.769653, 330.566284, 0.444127917, -0.390199929, 0.806532323, 0.194764882, 0.920704424, 0.338186413, -0.874538183, 0.00688612461, 0.484907776)
p3.Anchored = true
p3.Locked = true
p3.Size = Vector3.new(0.75, 1, 3)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p4 = Instance.new("Part", wep)
p4.BrickColor = BrickColor.new("Bright blue")
p4.Material = Enum.Material.Metal
p4.Reflectance = 0.25
p4.CFrame = CFrame.new(-1305.52661, 525.2276, 335.539337, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p4.Anchored = true
p4.Locked = true
p4.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p4)
b1.MeshType = Enum.MeshType.Sphere
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.25, 1.25, 1.25)
p5 = Instance.new("Part", wep)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.Metal
p5.CFrame = CFrame.new(-1310.34631, 515.390808, 330.902191, 0.447369576, -0.851413667, -0.273779511, 0.194162816, -0.206359267, 0.959018588, -0.873018503, -0.48219353, 0.072994031)
p5.Anchored = true
p5.Locked = true
p5.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p5)
b2.MeshType = Enum.MeshType.Cylinder
b2.Name = "Mesh"
b2.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p6 = Instance.new("Part", wep)
p6.BrickColor = BrickColor.new("Bright blue")
p6.Material = Enum.Material.Metal
p6.Reflectance = 0.25
p6.CFrame = CFrame.new(-1306.85242, 522.556946, 334.271576, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p6.Anchored = true
p6.Locked = true
p6.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p6)
b3.MeshType = Enum.MeshType.Sphere
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.25, 1.25, 1.25)
p7 = Instance.new("Part", wep)
p7.BrickColor = BrickColor.new("Bright red")
p7.Material = Enum.Material.Metal
p7.CFrame = CFrame.new(-1306.18677, 523.897644, 334.908051, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p7.Anchored = true
p7.Locked = true
p7.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p7)
b4.MeshType = Enum.MeshType.Cylinder
b4.Name = "Mesh"
b4.Scale = Vector3.new(10, 1, 1)
p8 = Instance.new("Part", wep)
p8.BrickColor = BrickColor.new("Black")
p8.Material = Enum.Material.Metal
p8.CFrame = CFrame.new(-1309.79358, 517.488098, 331.649963, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p8.Anchored = true
p8.Locked = true
p8.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p8)
b5.MeshType = Enum.MeshType.Cylinder
b5.Name = "Mesh"
b5.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p9 = Instance.new("Part", wep)
p9.BrickColor = BrickColor.new("Bright blue")
p9.Material = Enum.Material.Metal
p9.CFrame = CFrame.new(-1307.08569, 522.087097, 334.048523, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p9.Anchored = true
p9.Locked = true
p9.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p9)
b6.MeshId = "http://www.roblox.com/asset/?id=12221505"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.075000003, 1.13999999, 0.764999986)
p10 = Instance.new("Part", wep)
p10.BrickColor = BrickColor.new("Medium stone grey")
p10.Material = Enum.Material.Metal
p10.Reflectance = 0.25
p10.CFrame = CFrame.new(-1306.80029, 522.662048, 334.321442, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p10.Anchored = true
p10.Locked = true
p10.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p10)
b7.MeshType = Enum.MeshType.Cylinder
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.100000001, 1.20000005, 1.20000005)
p11 = Instance.new("Part", wep)
p11.BrickColor = BrickColor.new("Bright blue")
p11.Material = Enum.Material.Metal
p11.Reflectance = 0.25
p11.CFrame = CFrame.new(-1306.81567, 522.631042, 334.306793, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p11.Anchored = true
p11.Locked = true
p11.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p11)
b8.MeshType = Enum.MeshType.Sphere
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.5, 1.25, 1.25)
p12 = Instance.new("Part", wep)
p12.BrickColor = BrickColor.new("Medium stone grey")
p12.Material = Enum.Material.Metal
p12.Reflectance = 0.25
p12.CFrame = CFrame.new(-1306.82788, 522.606384, 334.295044, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p12.Anchored = true
p12.Locked = true
p12.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p12)
b9.MeshType = Enum.MeshType.Cylinder
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.100000001, 1.20000005, 1.20000005)
p13 = Instance.new("Part", wep)
p13.BrickColor = BrickColor.new("Black")
p13.Material = Enum.Material.Metal
p13.CFrame = CFrame.new(-1311.06421, 515.869385, 330.644745, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p13.Anchored = true
p13.Locked = true
p13.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p13)
b10.MeshType = Enum.MeshType.Cylinder
b10.Name = "Mesh"
b10.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p14 = Instance.new("Part", wep)
p14.BrickColor = BrickColor.new("Black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(-1311.55664, 514.883362, 330.175385, 0.444127917, -0.390199929, 0.806532323, 0.194764882, 0.920704424, 0.338186413, -0.874538183, 0.00688612461, 0.484907776)
p14.Anchored = true
p14.Locked = true
p14.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p14)
b11.MeshType = Enum.MeshType.Cylinder
b11.Name = "Mesh"
b11.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p15 = Instance.new("Part", wep)
p15.BrickColor = BrickColor.new("Medium stone grey")
p15.Material = Enum.Material.Metal
p15.Reflectance = 0.25
p15.CFrame = CFrame.new(-1305.55725, 525.16571, 335.509979, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p15.Anchored = true
p15.Locked = true
p15.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p15)
b12.MeshType = Enum.MeshType.Cylinder
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.100000001, 1.20000005, 1.20000005)
p16 = Instance.new("Part", wep)
p16.BrickColor = BrickColor.new("Black")
p16.Material = Enum.Material.Metal
p16.CFrame = CFrame.new(-1310.40747, 516.251648, 331.063049, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p16.Anchored = true
p16.Locked = true
p16.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p16)
b13.MeshType = Enum.MeshType.Cylinder
b13.Name = "Mesh"
b13.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p17 = Instance.new("Part", wep)
p17.BrickColor = BrickColor.new("Black")
p17.Material = Enum.Material.Metal
p17.CFrame = CFrame.new(-1308.505, 519.100159, 332.662872, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p17.Anchored = true
p17.Locked = true
p17.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p17)
b14.MeshType = Enum.MeshType.Cylinder
b14.Name = "Mesh"
b14.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p18 = Instance.new("Part", wep)
p18.BrickColor = BrickColor.new("Ghost grey")
p18.Material = Enum.Material.Metal
p18.CFrame = CFrame.new(-1310.82727, 514.71521, 330.506653, -0.443798274, 0.390326768, 0.806652427, -0.19477433, -0.920650065, 0.338328958, 0.874703407, -0.00696536899, 0.484608531)
p18.Anchored = true
p18.Locked = true
p18.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p18)
b15.MeshType = Enum.MeshType.Torso
b15.Name = "Mesh"
b15.Scale = Vector3.new(2, 2.5, 7.5)
p19 = Instance.new("Part", wep)
p19.BrickColor = BrickColor.new("Smoky grey")
p19.Material = Enum.Material.Metal
p19.CFrame = CFrame.new(-1310.9751, 515.053345, 330.507202, -0.443847209, 0.797172487, 0.409286857, -0.194840506, -0.531665742, 0.8242383, 0.87466383, 0.286090195, 0.391299844)
p19.Anchored = true
p19.Locked = true
p19.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p19)
b16.MeshType = Enum.MeshType.Wedge
b16.Name = "Mesh"
b16.Scale = Vector3.new(2, 4.5, 6)
p20 = Instance.new("Part", wep)
p20.BrickColor = BrickColor.new("Ghost grey")
p20.Material = Enum.Material.Metal
p20.CFrame = CFrame.new(-1308.3396, 518.117981, 332.527374, -0.443847209, 0.797172487, 0.409286857, -0.194840506, -0.531665742, 0.8242383, 0.87466383, 0.286090195, 0.391299844)
p20.Anchored = true
p20.Locked = true
p20.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p20)
b17.MeshType = Enum.MeshType.Torso
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.60000002, 2.5, 25)
p21 = Instance.new("Part", wep)
p21.BrickColor = BrickColor.new("Black")
p21.Material = Enum.Material.Metal
p21.CFrame = CFrame.new(-1307.95203, 521.197327, 333.410797, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p21.Anchored = true
p21.Locked = true
p21.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p21)
b18.MeshType = Enum.MeshType.Cylinder
b18.Name = "Mesh"
b18.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p22 = Instance.new("Part", wep)
p22.BrickColor = BrickColor.new("Black")
p22.Material = Enum.Material.Metal
p22.CFrame = CFrame.new(-1307.27734, 521.573059, 333.836761, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p22.Anchored = true
p22.Locked = true
p22.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p22)
b19.MeshType = Enum.MeshType.Cylinder
b19.Name = "Mesh"
b19.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p23 = Instance.new("Part", wep)
p23.BrickColor = BrickColor.new("Black")
p23.Material = Enum.Material.Metal
p23.CFrame = CFrame.new(-1309.22266, 519.578674, 332.405579, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p23.Anchored = true
p23.Locked = true
p23.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("SpecialMesh", p23)
b20.MeshType = Enum.MeshType.Cylinder
b20.Name = "Mesh"
b20.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p24 = Instance.new("Part", wep)
p24.BrickColor = BrickColor.new("Fossil")
p24.Material = Enum.Material.Metal
p24.CFrame = CFrame.new(-1307.14709, 521.96344, 333.989838, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p24.Anchored = true
p24.Locked = true
p24.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p24)
b21.MeshId = "http://www.roblox.com/asset/?id=12221505"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.075000003, 1.13999999, 0.764999986)
p25 = Instance.new("Part", wep)
p25.BrickColor = BrickColor.new("Black")
p25.Material = Enum.Material.Metal
p25.CFrame = CFrame.new(-1309.83643, 518.342224, 331.818634, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p25.Anchored = true
p25.Locked = true
p25.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p25)
b22.MeshType = Enum.MeshType.Cylinder
b22.Name = "Mesh"
b22.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p26 = Instance.new("Part", wep)
p26.BrickColor = BrickColor.new("Medium stone grey")
p26.Material = Enum.Material.Metal
p26.Reflectance = 0.25
p26.CFrame = CFrame.new(-1306.91992, 522.420959, 334.207001, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p26.Anchored = true
p26.Locked = true
p26.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p26)
b23.MeshType = Enum.MeshType.Cylinder
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.200000003, 1.39999998, 1.39999998)
p27 = Instance.new("Part", wep)
p27.BrickColor = BrickColor.new("Black")
p27.Material = Enum.Material.Metal
p27.CFrame = CFrame.new(-1310.45032, 517.105896, 331.231689, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p27.Anchored = true
p27.Locked = true
p27.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p27)
b24.MeshType = Enum.MeshType.Cylinder
b24.Name = "Mesh"
b24.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p28 = Instance.new("Part", wep)
p28.BrickColor = BrickColor.new("Black")
p28.Material = Enum.Material.Metal
p28.CFrame = CFrame.new(-1309.1189, 517.863831, 332.075928, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p28.Anchored = true
p28.Locked = true
p28.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("SpecialMesh", p28)
b25.MeshType = Enum.MeshType.Cylinder
b25.Name = "Mesh"
b25.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p29 = Instance.new("Part", wep)
p29.BrickColor = BrickColor.new("Black")
p29.Material = Enum.Material.Metal
p29.CFrame = CFrame.new(-1308.56592, 519.960876, 332.823853, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p29.Anchored = true
p29.Locked = true
p29.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("SpecialMesh", p29)
b26.MeshType = Enum.MeshType.Cylinder
b26.Name = "Mesh"
b26.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p30 = Instance.new("Part", wep)
p30.BrickColor = BrickColor.new("Smoky grey")
p30.Material = Enum.Material.Metal
p30.CFrame = CFrame.new(-1306.96289, 522.33429, 334.165924, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p30.Anchored = true
p30.Locked = true
p30.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("SpecialMesh", p30)
b27.MeshId = "http://www.roblox.com/asset/?id=12221505"
b27.TextureId = ""
b27.MeshType = Enum.MeshType.FileMesh
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.150000006, 1.20000005, 0.825000048)
p31 = Instance.new("Part", wep)
p31.BrickColor = BrickColor.new("Ghost grey")
p31.Material = Enum.Material.Metal
p31.CFrame = CFrame.new(-1308.23535, 518.328186, 332.627167, -0.443847209, 0.797172487, 0.409286857, -0.194840506, -0.531665742, 0.8242383, 0.87466383, 0.286090195, 0.391299844)
p31.Anchored = true
p31.Locked = true
p31.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("SpecialMesh", p31)
b28.MeshType = Enum.MeshType.Torso
b28.Name = "Mesh"
b28.Scale = Vector3.new(2, 2.5, 25)
p32 = Instance.new("Part", wep)
p32.BrickColor = BrickColor.new("Medium stone grey")
p32.Material = Enum.Material.Metal
p32.Reflectance = 0.25
p32.CFrame = CFrame.new(-1306.88928, 522.482727, 334.236359, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p32.Anchored = true
p32.Locked = true
p32.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("SpecialMesh", p32)
b29.MeshType = Enum.MeshType.Cylinder
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.100000001, 1.20000005, 1.20000005)
p33 = Instance.new("Part", wep)
p33.BrickColor = BrickColor.new("Black")
p33.Material = Enum.Material.Metal
p33.CFrame = CFrame.new(-1307.89124, 520.336609, 333.249817, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p33.Anchored = true
p33.Locked = true
p33.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p33)
b30.MeshType = Enum.MeshType.Cylinder
b30.Name = "Mesh"
b30.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p34 = Instance.new("Part", wep)
p34.BrickColor = BrickColor.new("Black")
p34.Material = Enum.Material.Metal
p34.CFrame = CFrame.new(-1307.99487, 522.051453, 333.579437, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p34.Anchored = true
p34.Locked = true
p34.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("SpecialMesh", p34)
b31.MeshType = Enum.MeshType.Cylinder
b31.Name = "Mesh"
b31.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p35 = Instance.new("Part", wep)
p35.BrickColor = BrickColor.new("Smoky grey")
p35.Material = Enum.Material.Metal
p35.CFrame = CFrame.new(-1307.08569, 522.087097, 334.048523, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p35.Anchored = true
p35.Locked = true
p35.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("SpecialMesh", p35)
b32.MeshId = "http://www.roblox.com/asset/?id=12221505"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.600000024, 1.125, 0.75)
p36 = Instance.new("Part", wep)
p36.BrickColor = BrickColor.new("Smoky grey")
p36.Material = Enum.Material.Metal
p36.CFrame = CFrame.new(-1307.2085, 521.839783, 333.931152, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p36.Anchored = true
p36.Locked = true
p36.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("SpecialMesh", p36)
b33.MeshId = "http://www.roblox.com/asset/?id=12221505"
b33.TextureId = ""
b33.MeshType = Enum.MeshType.FileMesh
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.150000006, 1.20000005, 0.825000048)
p37 = Instance.new("Part", wep)
p37.BrickColor = BrickColor.new("Ghost grey")
p37.Material = Enum.Material.Metal
p37.CFrame = CFrame.new(-1310.63367, 514.796448, 330.622986, -0.443798274, 0.390326768, 0.806652427, -0.19477433, -0.920650065, 0.338328958, 0.874703407, -0.00696536899, 0.484608531)
p37.Anchored = true
p37.Locked = true
p37.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("SpecialMesh", p37)
b34.MeshType = Enum.MeshType.Torso
b34.Name = "Mesh"
b34.Scale = Vector3.new(1.60000002, 2.5, 7.5)
p38 = Instance.new("Part", wep)
p38.BrickColor = BrickColor.new("Black")
p38.Material = Enum.Material.Metal
p38.CFrame = CFrame.new(-1309.17981, 518.724426, 332.236908, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p38.Anchored = true
p38.Locked = true
p38.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("SpecialMesh", p38)
b35.MeshType = Enum.MeshType.Cylinder
b35.Name = "Mesh"
b35.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p39 = Instance.new("Part", wep)
p39.BrickColor = BrickColor.new("Black")
p39.Material = Enum.Material.Metal
p39.CFrame = CFrame.new(-1308.60876, 520.815002, 332.992523, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p39.Anchored = true
p39.Locked = true
p39.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("SpecialMesh", p39)
b36.MeshType = Enum.MeshType.Cylinder
b36.Name = "Mesh"
b36.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p40 = Instance.new("Part", wep)
p40.BrickColor = BrickColor.new("Black")
p40.Material = Enum.Material.Metal
p40.CFrame = CFrame.new(-1309.73279, 516.62738, 331.488983, 0.443940967, -0.797059774, 0.409404665, 0.194779128, 0.53181088, 0.824159145, -0.874629974, -0.286134481, 0.391343206)
p40.Anchored = true
p40.Locked = true
p40.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("SpecialMesh", p40)
b37.MeshType = Enum.MeshType.Cylinder
b37.Name = "Mesh"
b37.Scale = Vector3.new(2.00999999, 0.25, 0.25)
p41 = Instance.new("Part", wep)
p41.BrickColor = BrickColor.new("Medium stone grey")
p41.Material = Enum.Material.Metal
p41.Reflectance = 0.25
p41.CFrame = CFrame.new(-1306.90161, 522.457947, 334.224609, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p41.Anchored = true
p41.Locked = true
p41.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("SpecialMesh", p41)
b38.MeshType = Enum.MeshType.Cylinder
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.100000001, 1.29999995, 1.29999995)
p42 = Instance.new("Part", wep)
p42.BrickColor = BrickColor.new("Fossil")
p42.Material = Enum.Material.Metal
p42.CFrame = CFrame.new(-1307.02429, 522.210754, 334.107239, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p42.Anchored = true
p42.Locked = true
p42.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("SpecialMesh", p42)
b39.MeshId = "http://www.roblox.com/asset/?id=12221505"
b39.TextureId = ""
b39.MeshType = Enum.MeshType.FileMesh
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.075000003, 1.13999999, 0.764999986)
p43 = Instance.new("Part", wep)
p43.BrickColor = BrickColor.new("Smoky grey")
p43.Material = Enum.Material.Metal
p43.CFrame = CFrame.new(-1309.07275, 518.886292, 332.32724, 0.409496605, -0.797047198, -0.44387874, 0.824162066, 0.531843722, -0.194676951, 0.391240835, -0.286108464, 0.874684274)
p43.Anchored = true
p43.Locked = true
p43.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("SpecialMesh", p43)
b40.MeshType = Enum.MeshType.Brick
b40.Name = "Mesh"
b40.Scale = Vector3.new(25, 4.5, 2)
p44 = Instance.new("Part", wep)
p44.BrickColor = BrickColor.new("Black")
p44.Material = Enum.Material.Metal
p44.Transparency = 1
p44.Name = "EffectReference"
p44.CFrame = CFrame.new(-1310.57117, 514.809265, 330.655945, 0.44746393, -0.778704464, -0.43976745, 0.194297373, -0.395347267, 0.897746682, -0.872940183, -0.487154871, -0.0256034248)
p44.Anchored = true
p44.Locked = true
p44.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p45 = Instance.new("Part", wep)
p45.BrickColor = BrickColor.new("Black")
p45.Material = Enum.Material.Metal
p45.Transparency = 1
p45.Name = "EffectReference2"
p45.CFrame = CFrame.new(-1310.48181, 514.848145, 330.481323, 0.44746393, -0.778704464, -0.43976745, 0.194297373, -0.395347267, 0.897746682, -0.872940183, -0.487154871, -0.0256034248)
p45.Anchored = true
p45.Locked = true
p45.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p46 = Instance.new("Part", wep)
p46.BrickColor = BrickColor.new("Black")
p46.Material = Enum.Material.Metal
p46.Transparency = 1
p46.Name = "EffectReference3"
p46.CFrame = CFrame.new(-1310.66052, 514.770447, 330.830566, 0.44746393, -0.778704464, -0.43976745, 0.194297373, -0.395347267, 0.897746682, -0.872940183, -0.487154871, -0.0256034248)
p46.Anchored = true
p46.Locked = true
p46.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wep.Parent = Character
wep:MakeJoints()
Handle = wep.Handle
Handleweld = weld(m, Character["Left Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00593662262, 0.999967575, -0.00341796875, 0.00495308638, -0.000796281383, 0.999987423, 5.21182892e-06, 0.999999464, 0.000796210894, -0.999987781, 1.26810494e-06, 0.00495308917))
Hitbox = wep.Hitbox
Hitbox2 = wep.Hitbox2
EffectReference = wep.EffectReference
EffectReference2 = wep.EffectReference2
EffectReference3 = wep.EffectReference3
weldScript = function(weldTo)
  local weldModel = Instance.new("Model", weldTo)
  weldModel.Name = "Welds"
  local makeWeld = function(part1, part0)
    local w = Instance.new("Weld", weldModel)
    w.Part0 = part0
    w.Part1 = part1
    local CFrameOrigin = CFrame.new(part0.Position)
    local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
    local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
    w.C0 = CFrame0
    w.C1 = CFrame1
  end
  for i,v in pairs(weldTo.Parent:children()) do
    if (v.ClassName == "Part" or v.Name == "Part" or v:isA("WedgePart")) and v ~= weldTo then
      makeWeld(v, weldTo)
      v.Anchored = false
      v.CanCollide = false
      v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
    end
  end
  weldTo.Anchored = false
  weldTo.CanCollide = false
  weldTo.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
end
weldScript(Handle)
for i,v in pairs(Character:GetChildren()) do
  if v:IsA("Model") then
    for _,c in pairs(v:GetChildren()) do
      if c:IsA("Part") then
        c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
      end
    end
  end
end
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 17.5
local co2 = 37.5
local co3 = 57.5
local co4 = 90
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 3
local critdamageaddmax = 6
local maxstamina = 100
local stamina = 0
local skill1stam = 15
local skill2stam = 30
local skill3stam = 45
local skill4stam = 75
local recovermana = 3
local defensevalue = 1.4
local speedvalue = 0.6
local mindamage = 5
local maxdamage = 10
local damagevalue = 0.9
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end
makelabel = function(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end
framesk1 = makeframe(scrn, 0.5, ud(0.23, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, ud(0.5, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, ud(0.5, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, ud(0.23, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[C] Tornado")
text2 = makelabel(framesk2, "[V] Aerial Smash")
text3 = makelabel(framesk3, "[X] Crack")
text4 = makelabel(framesk4, "[Z] Bash")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 0.61960784313725, 0))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 0))
staminatext = makelabel(staminabar, "Strength")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
healthtext = makelabel(healthbar, "Health")
local stats = Instance.new("Folder", Character)
stats.Name = "Stats"
local block = Instance.new("BoolValue", stats)
block.Name = "Block"
block.Value = false
local stun = Instance.new("BoolValue", stats)
stun.Name = "Stun"
stun.Value = false
local defense = Instance.new("NumberValue", stats)
defense.Name = "Defence"
defense.Value = defensevalue
local speed = Instance.new("NumberValue", stats)
speed.Name = "Speed"
speed.Value = speedvalue
local damagea = Instance.new("NumberValue", stats)
damagea.Name = "Damage"
damagea.Value = damagevalue
makeeffect = function(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.FormFactor = "Custom"
  nooutline(p)
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  if id ~= nil and type == nil then
    mesh.MeshId = "rbxassetid://" .. id
  else
    if id == nil and type ~= nil then
      mesh.MeshType = type
    else
      if id == nil and type == nil then
        mesh.MeshType = "Brick"
      end
    end
  end
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end)()
  return p
end
clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
circle = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("CylinderMesh", p)
  mesh.Scale = Vector3.new(0, 0, 0)
  coroutine.wrap(function()
    for i = 0, 5, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
firespaz1 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 15, 0.1 do
      wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end
sound = function(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or Torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  wait()
  s:play()
  game.Debris:AddItem(s, last or 120)
end
clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
end
getclosest = function(obj, dis, player)
  if player.Torso.CFrame.p - obj.magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= Character and v.Torso.Position - obj.magnitude <= dis then
          table.insert(list, v)
        end
      end
      do return list end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end
tag = function(hum, player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = player
  creator.Name = "creator"
end
untag = function(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end
tagplayer = function(h)
  coroutine.wrap(function()
    tag(h, player)
    wait(1)
    untag(h)
  end)()
end
randomizer = function(percent)
  local randomized = math.random(0, 100)
  if randomized <= percent then
    return true
  else
    if percent <= randomized then
      return false
    end
  end
end
turncrit = function()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(0.25)
    crit = false
  end))
end
subtractstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
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
nooutline = function(part)
  part.TopSurface = 10
end
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  local TrailColor = "Dark grey"
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(TrailColor)
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new(TrailColor)
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.01})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    fat.Event:wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
end
clerp = function(a, b, t)
  local qa = {QuaternionFromCFrame(a)}
  local qb = {QuaternionFromCFrame(b)}
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
local clerp = CFrame.new().lerp
local clerp = CFrame.new().lerp
QuaternionFromCFrame = function(cf)
  local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  local trace = m00 + m11 + m22
  if trace > 0 then
    local s = math.sqrt(1 + trace)
    local recip = 0.5 / s
    return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
  else
    do
      local i = 0
      if m00 < m11 then
        i = 1
      end
      if i == 0 and m00 or m11 < m22 then
        i = 2
      end
      if i == 0 then
        local s = math.sqrt(m00 - m11 - m22 + 1)
        local recip = 0.5 / s
        return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
      else
        do
          if i == 1 then
            local s = math.sqrt(m11 - m22 - m00 + 1)
            local recip = 0.5 / s
            return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
          else
            do
              if i == 2 then
                local s = math.sqrt(m22 - m00 - m11 + 1)
                local recip = 0.5 / s
                return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
              end
            end
          end
        end
      end
    end
  end
end
QuaternionToCFrame = function(px, py, pz, x, y, z, w)
  local xs, ys, zs = x + x, y + y, z + z
  local wx, wy, wz = w * xs, w * ys, w * zs
  local xx = x * xs
  local xy = x * ys
  local xz = x * zs
  local yy = y * ys
  local yz = y * zs
  local zz = z * zs
  return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
QuaternionSlerp = function(a, b, t)
  local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
  local startInterp, finishInterp = nil, nil
  if cosTheta >= 0.0001 then
    if 1 - cosTheta > 0.0001 then
      local theta = math.acos(cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((1 - t) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      do
        startInterp = 1 - t
        finishInterp = t
        if 1 + cosTheta > 0.0001 then
          local theta = math.acos(-cosTheta)
          local invSinTheta = 1 / math.sin(theta)
          startInterp = math.sin((t - 1) * theta) * invSinTheta
          finishInterp = math.sin(t * theta) * invSinTheta
        else
          do
            startInterp = t - 1
            finishInterp = t
            return a[1] * (startInterp) + b[1] * finishInterp, a[2] * (startInterp) + b[2] * finishInterp, a[3] * (startInterp) + b[3] * finishInterp, a[4] * (startInterp) + b[4] * finishInterp
          end
        end
      end
    end
  end
end
rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
local m = Instance.new("Model", Character)
makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", m)
  game:GetService("Debris"):AddItem(bg, 6.5)
  bg.Adornee = c
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  if crit == true then
    tl.TextColor3 = Color3.new(0.70588235294118, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.70588235294118, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      fat.Event:wait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end)()
end
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    blocked = false
    block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    local D = math.random(minim, maxim) * damagea.Value
    TagService:NewTag(h.Parent, Player, "Trigiator", D)
    if blocked == false then
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
      if not h.Parent:FindFirstChild("Stats") then
        game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
        makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
        if h.Parent:FindFirstChild("Stats") then
          D = D / h.Parent:FindFirstChild("Stats").Defence.Value
        else
        end
        if not h.Parent:FindFirstChild("Stats") then
          game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D / 2, 1)
          makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
          if Type == "Knockdown" then
            humanoid = hit.Parent.Humanoid
            humanoid.PlatformStand = true
            coroutine.resume(coroutine.create(function(Humanoid)
    fat.Event:wait()
    Humanoid.PlatformStand = false
  end), humanoid)
            local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
            local bodvol = Instance.new("BodyVelocity")
            bodvol.velocity = angle * knockback
            bodvol.P = 5000
            bodvol.maxForce = Vector3.new(8000, 8000, 8000)
            bodvol.Parent = hit
            rl = Instance.new("BodyAngularVelocity")
            rl.P = 3000
            rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
            rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
            rl.Parent = hit
            game:GetService("Debris"):AddItem(bodvol, 0.5)
            game:GetService("Debris"):AddItem(rl, 0.5)
          else
            do
              if Type == "Normal" then
                so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                if KnockbackType == 1 then
                  vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                else
                  if KnockbackType == 2 then
                    vp.velocity = Property.CFrame.lookVector * knockback
                  end
                end
                if knockback > 0 then
                  vp.Parent = hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp, 0.5)
              else
                if Type == "Up" then
                  local bodyVelocity = Instance.new("BodyVelocity")
                  bodyVelocity.velocity = vt(0, 60, 0)
                  bodyVelocity.P = 5000
                  bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
                  bodyVelocity.Parent = hit
                  game:GetService("Debris"):AddItem(bodyVelocity, 1)
                  rl = Instance.new("BodyAngularVelocity")
                  rl.P = 3000
                  rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                  rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                  rl.Parent = hit
                  game:GetService("Debris"):AddItem(rl, 0.5)
                else
                  do
                    if Type == "Snare" then
                      bp = Instance.new("BodyPosition")
                      bp.P = 2000
                      bp.D = 100
                      bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                      bp.position = hit.Parent.Torso.Position
                      bp.Parent = hit.Parent.Torso
                      game:GetService("Debris"):AddItem(bp, 1)
                    else
                      if Type == "Target" then
                        so("http://www.roblox.com/asset/?id=199144144", hit, 1, math.random(150, 200) / 100)
                        vp = Instance.new("BodyVelocity")
                        vp.P = 500
                        vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                        if KnockbackType == 1 then
                          vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                        else
                          if KnockbackType == 2 then
                            vp.velocity = Property.CFrame.lookVector * knockback
                          end
                        end
                        if knockback > 0 then
                          vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, 0.5)
                      end
                    end
                    debounce = Instance.new("BoolValue")
                    debounce.Name = "DebounceHit"
                    debounce.Parent = hit.Parent
                    debounce.Value = true
                    game:GetService("Debris"):AddItem(debounce, Delay)
                    c = Instance.new("ObjectValue")
                    c.Name = "creator"
                    c.Value = Player
                    c.Parent = h
                    game:GetService("Debris"):AddItem(c, 0.5)
                    CRIT = false
                    hitDeb = true
                    AttackPos = 6
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3, 1)
        end
      end
    end
  end
end
Shockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "SmoothPlastic"
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 4)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
Shockwave2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 4)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
BashEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(90), math.rad(0), math.rad(0))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end), prt, msh)
end
BashEffect2 = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(0), math.rad(0), math.rad(0))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 6)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end), prt, msh)
end
Shockwave3 = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(90), math.rad(0), math.rad(0))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 6)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end), prt, msh)
end
Shockwave4 = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-75, 75)), math.rad(math.random(-75, 75)), math.rad(math.random(-75, 75)))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 6)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end), prt, msh)
end
MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3, 1)
        end
      end
    end
  end
end
canwalk = true
canidle = true
ragemode = false
local rain = Color3.new()
sincolor = function(sine)
  sine = math.deg(sine)
  local radcolor = function(col)
    return math.rad(col / 255 * 360)
  end
  local r = math.abs(math.sin(radcolor(sine + 0)))
  local g = math.abs(math.sin(radcolor(sine + 85)))
  local b = math.abs(math.sin(radcolor(sine + 170)))
  return Color3.new(r, g, b)
end
rainhats = {}
prepareCharacter = function()
  for _,v in pairs(Character:children()) do
    if v:isA("Shirt") or v:isA("Pants") then
      v:Destroy()
    else
      if v:isA("Part") then
        v.BrickColor = BrickColor.new("White")
        if v.Name == "Head" and v:FindFirstChild("face") then
          v.face:Destroy()
        end
      else
        if v.Name == "BodyColors" then
          v:Destroy()
        else
          if v:isA("Hat") then
            table.insert(rainhats, #rainhats + 1, v.Handle.Mesh)
            v.Handle.Mesh.TextureId = "rbxassetid://37912058"
          end
        end
      end
    end
  end
end
--[[
prepareCharacter()
spawn(function()
  while wait(7) do
    for _,v in pairs(Character:children()) do
      if v:isA("Part") then
        v.BrickColor = BrickColor.new("White")
      end
    end
  end
end)
]]
updatecolor = function()
  for _,x in pairs(rainParts) do
    x.BrickColor = BrickColor.new(rain)
  end
  for _,x in pairs(rainhats) do
    x.VertexColor = Vector3.new(rain.r, rain.g, rain.b)
  end
  TorsoColor = BrickColor.new(rain)
end
Rage = function()
  if ragemode == false and attack == false and stamina >= 50 then
    attack = true
    ragemode = true
    speed.Value = 0.4
    Humanoid.WalkSpeed = 16 * speed.Value
    for i = 0, 1, 0.08 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 20 * i), math.rad(0), math.rad(20)), 0.15)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10 - 30 * i), math.rad(0), math.rad(20)), 0.15)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(45 + 90 * i), math.rad(-45), math.rad(-10)), 0.15)
      Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 - 360 * i), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    speed.Value = 0.4
    Humanoid.WalkSpeed = 16 * speed.Value
    so("http://roblox.com/asset/?id=199145095", Handle, 0.25, math.random(80, 120) / 100)
    for i = 0, 1, 0.08 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.15)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.15)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.9, 0) * angles(math.rad(180), math.rad(-45), math.rad(-10)), 0.15)
      Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    damagea.Value = 1.1
    defense.Value = 0.8
    speed.Value = 0.9
    Humanoid.WalkSpeed = 16 * speed.Value
    attack = false
  else
    if ragemode == true and attack == false then
      for i = 0, 1, 0.4 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.9, 0) * angles(math.rad(180), math.rad(-45), math.rad(-10)), 0.15)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      attack = true
      ragemode = false
      damagea.Value = 1.1
      defense.Value = 0.8
      speed.Value = 0.4
      Humanoid.WalkSpeed = 16 * speed.Value
      for i = 0, 1, 0.08 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10 + 20 * i), math.rad(0), math.rad(20)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20 + 30 * i), math.rad(0), math.rad(20)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.9, 0) * angles(math.rad(180 - 135 * i), math.rad(-45), math.rad(-10)), 0.15)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      speed.Value = 0.4
      Humanoid.WalkSpeed = 16 * speed.Value
      so("http://roblox.com/asset/?id=199145095", Handle, 0.25, math.random(80, 120) / 100)
      for i = 0, 1, 0.08 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(45), math.rad(-45), math.rad(-10)), 0.15)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      damagea.Value = 0.8
      defense.Value = 1.4
      speed.Value = 0.6
      Humanoid.WalkSpeed = 16 * speed.Value
      attack = false
    end
  end
  while ragemode == true and stamina >= 0 do
    fat.Event:wait()
    stamina = stamina - 0.1
    speed.Value = 0.9
    defense.Value = 0.8
    damagea.Value = 1.1
    Humanoid.WalkSpeed = 16 * speed.Value
  end
  while stamina <= 0 do
    if stamina <= 0 then
      if attack == true then
        fat.Event:wait()
        -- DECOMPILER ERROR at PC982: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC982: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC982: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC982: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  attack = true
  ragemode = false
  speed.Value = 0.4
  Humanoid.WalkSpeed = 16 * speed.Value
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10 + 20 * i), math.rad(0), math.rad(20)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20 + 30 * i), math.rad(0), math.rad(20)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.9, 0) * angles(math.rad(180 - 135 * i), math.rad(-45), math.rad(-10)), 0.15)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  speed.Value = 0.4
  Humanoid.WalkSpeed = 16 * speed.Value
  so("http://roblox.com/asset/?id=199145095", Handle, 0.5, math.random(80, 120) / 100)
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(45), math.rad(-45), math.rad(-10)), 0.15)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  damagea.Value = 0.9
  defense.Value = 1.4
  speed.Value = 0.6
  Humanoid.WalkSpeed = 16 * speed.Value
  attack = false
end
attackone = function()
  attack = true
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.15)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(205), math.rad(30), math.rad(-10)), 0.15)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  so("http://roblox.com/asset/?id=199145146", Hitbox, 1, 1)
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(45), math.rad(-25)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(45), math.rad(-25)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
attacktwo = function()
  attack = true
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.15)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(-35), math.rad(-45)), 0.15)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-45), math.rad(-35), math.rad(-45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(35), math.rad(-45)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
attackthree = function()
  attack = true
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.15)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(5), math.rad(60)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(20)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(165), math.rad(-60), math.rad(90)), 0.15)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-15), math.rad(15), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  so("http://roblox.com/asset/?id=199145204", Hitbox, 1, 1)
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(5), math.rad(-45)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(7.565), math.rad(-14.862), math.rad(-62.778)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, -0.25) * angles(math.rad(-45), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(7.565), math.rad(-14.862), math.rad(-62.778)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, -0.25) * angles(math.rad(-45), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
attackfour = function()
  attack = true
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(-45)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(45)), 0.15)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1.1)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
attackoneRage = function()
  attack = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(205), math.rad(30), math.rad(-10)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  so("http://roblox.com/asset/?id=199145146", Hitbox, 1, 1)
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(45), math.rad(-25)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(45), math.rad(-25)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
attacktwoRage = function()
  attack = true
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(-35), math.rad(-45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-45), math.rad(-35), math.rad(-45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(35), math.rad(-45)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
attackthreeRage = function()
  attack = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(5), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(165), math.rad(-60), math.rad(90)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-15), math.rad(15), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  so("http://roblox.com/asset/?id=199145204", Hitbox, 1, 1)
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(5), math.rad(-45)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(7.565), math.rad(-14.862), math.rad(-62.778)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, -0.25) * angles(math.rad(-45), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(7.565), math.rad(-14.862), math.rad(-62.778)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, -0.25) * angles(math.rad(-45), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
attackfourRage = function()
  attack = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.4, 1)
  end)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1.1)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
Bash = function()
  attack = true
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-5, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 4, 8, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=2767090", Torso, 1, math.random(80, 120) / 100)
  BashEffect(TorsoColor, RootPart.CFrame, 1, 0.25, 1, 0.25, 0.25, 0.25, 0.025)
  BashEffect2(TorsoColor, RootPart.CFrame, 1, 1, 1, 0.25, 0.25, 0.25, 0.02)
  local body = Instance.new("BodyVelocity", Torso)
  body.MaxForce = Vector3.new(10000, 0, 10000)
  body.P = 0.01
  body.Velocity = RootPart.CFrame.lookVector * 40
  for i = 0, 1, 0.3 do
    fat.Event:wait()
    BashEffect2(TorsoColor, RootPart.CFrame, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.05)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-5, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-5, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  body.Parent = nil
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  attack = false
end
Smash = function()
  attack = true
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1.1)
  for i = 0, 1, 0.3 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  local hit, pos = rayCast(Hitbox.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if hit ~= nil then
    local Color = hit.BrickColor --TorsoColor
    refpart = part(3, workspace, "SmoothPlastic", 0, 1, TorsoColor, "Effect", vt())
    refpart.Anchored = true
    refpart.CFrame = cf(pos)
    game:GetService("Debris"):AddItem(refpart, 1)
    so("http://www.roblox.com/asset/?id=199145477", refpart, 1, 0.75)
    so("http://roblox.com/asset/?id=157878578", refpart, 1, 1)
    so("http://roblox.com/asset/?id=2760979", refpart, 1, 1)
    so("http://www.roblox.com/asset/?id=142070127", refpart, 1, 1)
    for i = 1, 10 do
      local Color = hit.BrickColor --TorsoColor
      local Materials = hit.Material
      local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(50, 100) / 100, math.random(50, 100) / 100, math.random(50, 100) / 100))
      groundpart.Anchored = false
      groundpart.Material = Materials
      groundpart.CanCollide = true
      groundpart.Friction = 0.1
      groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
      groundpart.CFrame = cf(pos) * cf(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      game:GetService("Debris"):AddItem(groundpart, 10)
    end
    for i = 1, 20 do
      local Color = hit.BrickColor --TorsoColor
      local Materials = hit.Material
      local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(25, 50) / 100, math.random(25, 50) / 100, math.random(25, 50) / 100))
      groundpart.Anchored = false
      groundpart.Material = Materials
      groundpart.CanCollide = true
      groundpart.Friction = 0.1
      groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
      groundpart.CFrame = cf(pos) * cf(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      game:GetService("Debris"):AddItem(groundpart, 10)
    end
    for i = 1, 10 do
      local Color = hit.BrickColor --TorsoColor
      local Materials = hit.Material
      local actualgroundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
      actualgroundpart.Anchored = true
      actualgroundpart.Material = Materials
      actualgroundpart.CanCollide = true
      actualgroundpart.Friction = 1
      actualgroundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      game:GetService("Debris"):AddItem(actualgroundpart, 10)
    end
    local Color = hit.BrickColor --TorsoColor
    Shockwave2(Color, cf(refpart.Position), 1, 0.25, 1, 0.5, 0.25, 0.5, 0.025)
    Shockwave3(Color, cf(refpart.Position), 1, 1, 0.25, 0.75, 0.75, 0.75, 0.02)
    MagniDamage(refpart, 8, 10, 15, 10, "Normal")
  end
  do
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.45)
      Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
    con1:disconnect()
    con2:disconnect()
    attack = false
  end
end
SpinSlash = function()
  attack = true
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(-10), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-1.25, -0.75, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end)
  for i = 1, 5 do
    so("http://roblox.com/asset/?id=199145146", Hitbox, 1, math.random(80, 120) / 100)
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.3)
      Handleweld.C0 = clerp(Handleweld.C0, cf(-1.25, -0.75, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
  end
  so("http://roblox.com/asset/?id=199145146", Hitbox, 1, math.random(80, 120) / 100)
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(-10), math.rad(45)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-1.25, -0.75, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end
Earthquake = function()
  attack = true
  canwalk = false
  canidle = false
  Humanoid.Jump = true
  Humanoid.WalkSpeed = 32 * speed.Value
  for i = 1, 5 do
    so("http://roblox.com/asset/?id=199145146", Hitbox, 1, 2)
    for i = 0, 1, 0.2 do
      fat.Event:wait()
      Torso.Velocity = vt(0, 50, 0)
      Humanoid.WalkSpeed = 32 * speed.Value
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(10), math.rad(10)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 1.25, 0) * angles(math.rad(180), math.rad(0), math.rad(-10)), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
      Handleweld.C0 = clerp(Handleweld.C0, cf(1 - 1.5 * i, -1, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(-90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
  end
  for i = 0, 1, 0.05 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 32 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-0.75, -0.25, 0) * angles(math.rad(0), math.rad(180), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  hitfloor = nil
  while hitfloor == nil do
    fat.Event:wait()
    hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  end
  local Color = hitfloor.BrickColor --TorsoColor
  print("touched")
  refpart = part(3, workspace, "SmoothPlastic", 0, 1, TorsoColor, "Effect", vt())
  refpart.Anchored = true
  refpart.CFrame = cf(posfloor)
  game:GetService("Debris"):AddItem(refpart, 1)
  for i = 1, 20 do
    local Color = hitfloor.BrickColor --TorsoColor
    local Materials = hitfloor.Material
    local actualgroundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(300, 600) / 100, math.random(300, 600) / 100, math.random(300, 600) / 100))
    actualgroundpart.Anchored = true
    actualgroundpart.Material = Materials
    actualgroundpart.CanCollide = true
    actualgroundpart.Friction = 1
    actualgroundpart.CFrame = cf(posfloor) * cf(math.random(-1500, 1500) / 100, 0, math.random(-1500, 1500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(actualgroundpart, 10)
  end
  for i = 1, 20 do
    local Color = hitfloor.BrickColor --TorsoColor
    local Materials = hitfloor.Material
    local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
    groundpart.Anchored = false
    groundpart.Material = Materials
    groundpart.CanCollide = true
    groundpart.Friction = 0.1
    groundpart.Velocity = Vector3.new(math.random(-100, 100), math.random(100, 150), math.random(-100, 100))
    groundpart.CFrame = cf(posfloor) * cf(math.random(-250, 250) / 100, 5, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(groundpart, 10)
  end
  for i = 1, 40 do
    local Color = hitfloor.BrickColor --TorsoColor
    local Materials = hitfloor.Material
    local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(50, 100) / 100, math.random(50, 100) / 100, math.random(50, 100) / 100))
    groundpart.Anchored = false
    groundpart.Material = Materials
    groundpart.CanCollide = true
    groundpart.Friction = 0.1
    groundpart.Velocity = Vector3.new(math.random(-100, 100), math.random(100, 150), math.random(-100, 100))
    groundpart.CFrame = cf(posfloor) * cf(math.random(-250, 250) / 100, 5, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(groundpart, 10)
  end
  local Color = hitfloor.BrickColor --TorsoColor
  so("http://www.roblox.com/asset/?id=199145477", refpart, 1, 0.6)
  so("http://roblox.com/asset/?id=157878578", refpart, 1, 0.6)
  so("http://roblox.com/asset/?id=2760979", refpart, 1, 0.6)
  so("http://www.roblox.com/asset/?id=142070127", refpart, 1, 0.6)
  so("http://roblox.com/asset/?id=168586621", refpart, 1, 0.5)
  Shockwave2(TorsoColor, cf(refpart.Position), 1, 0.25, 1, 1, 0.5, 1, 0.01)
  Shockwave(TorsoColor, cf(refpart.Position), 3, 3, 3, 3, 3, 3, 0.01)
  Shockwave3(TorsoColor, cf(refpart.Position), 1, 1, 0.25, 1.5, 1.5, 0.25, 0.01)
  for i = 0, math.random(4, 8) do
    Humanoid.WalkSpeed = 0 * speed.Value
    Torso.Velocity = vt(0, 0, 0)
    Shockwave4(TorsoColor, cf(refpart.Position), 1, 1, 1, 2, 2, 2, 0.01)
  end
  for i = 0, math.random(4, 8) do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    Torso.Velocity = vt(0, 0, 0)
    MagniDamage(refpart, 30, 5, 10, 10, "Normal")
    Shockwave3(TorsoColor, cf(refpart.Position), 0.1, 0.1, 0.1, 2, 2, 1, 0.01)
  end
  for i = 0, 1, 0.04 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    MagniDamage(refpart, 30, 5, 10, 10, "Normal")
    Torso.Velocity = vt(0, 0, 0)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-0.75, -0.25, 0) * angles(math.rad(0), math.rad(180), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  Humanoid.WalkSpeed = 16 * speed.Value
  canwalk = true
  canidle = true
  attack = false
end
mouse.Button1Down:connect(function()
  if attack == false and stamina >= 2.5 then
    if attacktype == 1 then
      attacktype = 2
      attackoneRage()
    else
      if attacktype == 2 then
        attacktype = 3
        attacktwoRage()
      else
        if attacktype == 3 then
          attacktype = 4
          attackthreeRage()
        else
          if attacktype == 4 then
            attacktype = 1
            attackfourRage()
          end
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        fat.Event:wait()
      end
    end
    if attack == false then
      attacktype = 1
    end
  end))
end)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "e" and attack == false then
    Rage()
  end
  if k == "z" and attack == false and stamina >= 2.5 and co1 <= cooldown1 and skill1stam <= stamina then
    cooldown1 = 0
    subtractstamina(skill1stam)
    Bash()
  end
  if k == "x" and attack == false and stamina >= 2.5 and co2 <= cooldown2 and skill2stam <= stamina then
    cooldown2 = 0
    subtractstamina(skill2stam)
    Smash()
  end
  if k == "c" and attack == false and stamina >= 2.5 and co3 <= cooldown3 and skill3stam <= stamina then
    cooldown3 = 0
    subtractstamina(skill3stam)
    SpinSlash()
  end
  if k == "v" and attack == false and stamina >= 2.5 and co4 <= cooldown4 and skill4stam <= stamina then
    cooldown4 = 0
    subtractstamina(skill4stam)
    Earthquake()
  end
end)
mouse.KeyUp:connect(function(k)
  k = k:lower()
end)
updateskills = function()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.033333333333333
  end
  if stamina <= skill1stam then
    bar4.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar4.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill2stam then
    bar3.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar3.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill3stam then
    bar1.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar1.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill4stam then
    bar2.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar2.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= maxstamina then
    stamina = stamina + recovermana / 30
  end
end
Character.Humanoid.Died:connect(function()
  for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Model") then
      v:Clone()
      v.Parent = workspace
      v.Children.CanCollide = true
    end
  end
end)
game:GetService("RunService").Heartbeat:connect(function()
  --rain = sincolor(tick() * 3)
  --updatecolor()
  updateskills()
  healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
end)
local sine = 0
local change = 1
local val = 0
fat.Event:connect(function()
  sine = sine + change
  local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  local velderp = RootPart.Velocity.y
  hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if ((idle >= 500 and attack ~= false) or RootPart.Velocity.y > 1) and hitfloor == nil then
      Anim = "Jump"
      if attack == false and ragemode == false then
        fat.Event:wait()
        Humanoid.WalkSpeed = 16 * speed.Value
        change = 2
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(0.25, 0.25, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(-5)), 0.15)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-157.5), math.rad(0), math.rad(180)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      else
        if attack == false and ragemode == true then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.15)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-45), math.rad(-20)), 0.15)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
          Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        end
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false and ragemode == false then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
          RW.C0 = clerp(RW.C0, CFrame.new(0.25, 0.25, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.15)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(-5)), 0.15)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
          Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-157.5), math.rad(0), math.rad(180)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        else
          if attack == false and ragemode == true then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.15)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(175), math.rad(-45), math.rad(0)), 0.15)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
            Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          end
        end
      else
        if torvel < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false and ragemode == false then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 15)) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.15)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5 + 1 * math.cos(sine / 15)) + -math.sin(sine / 15) / 15, math.rad(0), math.rad(-45)), 0.15)
            RW.C0 = clerp(RW.C0, CFrame.new(0.25, 0.25 + 0.05 * math.cos(sine / 15) + math.sin(sine / 15) / 15, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.15)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 15) + math.sin(sine / 15) / 15, 0) * angles(math.rad(-15), math.rad(-30), math.rad(-5)), 0.15)
            RH.C0 = clerp(RH.C0, cf(0.9, -0.9 - 0.1 * math.cos(sine / 15), 0.2) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            LH.C0 = clerp(LH.C0, cf(-0.9, -0.9 - 0.1 * math.cos(sine / 15), 0) * angles(math.rad(0), math.rad(-105), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-157.5 + 1 * math.cos(sine / 15)), math.rad(0), math.rad(180)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          else
            if attack == false and ragemode == true then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.15)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5 + 1 * math.cos(sine / 25)) + -math.sin(sine / 25) / 15, math.rad(0), math.rad(-15)), 0.15)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.05 * math.cos(sine / 25) + math.sin(sine / 25) / 15, 0) * angles(math.rad(10), math.rad(0), math.rad(15 + 5 * math.cos(sine / 25)) + math.sin(sine / 25) / 15), 0.15)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 25) + math.sin(sine / 25) / 15, 0) * angles(math.rad(175), math.rad(-45), math.rad(-10)), 0.15)
              RH.C0 = clerp(RH.C0, cf(1.05, -0.9 - 0.1 * math.cos(sine / 25), 0.1) * angles(math.rad(0), math.rad(75), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1.05, -0.9 - 0.1 * math.cos(sine / 25), 0.1) * angles(math.rad(0), math.rad(-75), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            else
              if attack == true and ragemode == false then
                fat.Event:wait()
                change = 2
                Humanoid.WalkSpeed = 16 * speed.Value
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
              else
                if attack == true and ragemode == true then
                  fat.Event:wait()
                  change = 2
                  Humanoid.WalkSpeed = 16 * speed.Value
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                end
              end
            end
          end
        else
          if torvel > 2 and torvel < 22 and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false and ragemode == false then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.05 - 0.05 * math.cos(sine / 3.5)) * angles(math.rad(0), math.rad(0), math.rad(60 + 5 * math.cos(sine / 7))), 0.25)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60 - 5 * math.cos(sine / 7))), 0.25)
              RW.C0 = clerp(RW.C0, CFrame.new(0.25, 0.25, -0.5) * angles(math.rad(0), math.rad(0 + 5 * math.cos(sine / 7)), math.rad(-50)), 0.25)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(-45 - 5 * math.cos(sine / 7)), math.rad(-15)), 0.25)
              RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 3.5) / 2, 0.5 * math.cos(sine / 3.5) / 2) * angles(math.rad(-30 * math.cos(sine / 3.5)) + -math.sin(sine / 3.5) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 3.5) / 2, -0.5 * math.cos(sine / 3.5) / 2) * angles(math.rad(30 * math.cos(sine / 3.5)) + math.sin(sine / 3.5) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              Handleweld.C0 = clerp(Handleweld.C0, cf(-0.25, 0, 0) * angles(math.rad(-150 - 2.5 * math.cos(sine / 7)), math.rad(15), math.rad(180)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.25)
            else
              if attack == false and ragemode == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                change = 2
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.2 * math.cos(sine / 3)) * angles(math.rad(10), math.rad(0), math.rad(5 * math.cos(sine / 6))), 0.15)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-5 * math.cos(sine / 6))), 0.15)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45 * math.cos(sine / 6)), math.rad(0), math.rad(5)), 0.15)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.4 + 0.1 * math.cos(sine / 3) + math.sin(sine / 3) / 6, 0) * angles(math.rad(175), math.rad(-45), math.rad(-10)), 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 6) / 2, 0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-5 - 60 * math.cos(sine / 6)) + -math.sin(sine / 6) / 2.5, math.rad(90 - 5 * math.cos(sine / 6)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 6) / 2, -0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-5 + 60 * math.cos(sine / 6)) + math.sin(sine / 6) / 2.5, math.rad(-90 - 5 * math.cos(sine / 6)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              else
                if attack == true and canwalk == true and ragemode == true then
                  fat.Event:wait()
                  Humanoid.WalkSpeed = 16 * speed.Value
                  change = 2
                  RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 6) / 2, 0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-15 - 60 * math.cos(sine / 6)) + -math.sin(sine / 6) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 6) / 2, -0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-15 + 60 * math.cos(sine / 6)) + math.sin(sine / 6) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                else
                  if attack == true and canwalk == true and ragemode == false then
                    fat.Event:wait()
                    Humanoid.WalkSpeed = 16 * speed.Value
                    change = 2
                    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 3.5) / 2, 0.5 * math.cos(sine / 3.5) / 2) * angles(math.rad(-30 * math.cos(sine / 3.5)) + -math.sin(sine / 3.5) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 3.5) / 2, -0.5 * math.cos(sine / 3.5) / 2) * angles(math.rad(30 * math.cos(sine / 3.5)) + math.sin(sine / 3.5) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                  end
                end
              end
            end
          else
            if torvel >= 22 and hitfloor ~= nil then
              Anim = "Run"
            end
          end
        end
      end
    end
  end
end)

