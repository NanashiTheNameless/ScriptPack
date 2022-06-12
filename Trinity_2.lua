--fixed the regular shot and move anims
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
m = Instance.new("Model", Character)
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
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
TorsoColor = Torso.BrickColor
Colorpart1 = Torso.BrickColor.r
Colorpart2 = Torso.BrickColor.g
Colorpart3 = Torso.BrickColor.b
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
Bulletcount = 6
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

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
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

GunHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle", Vector3.new(0.381150067, 0.381150067, 0.381150067))
GunHandleweld = weld(m, Character["Right Arm"], GunHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.268424988, -0.889885187, -1.09672546e-005, 1.33454066e-007, 0.342020243, -0.939692557, -2.71807494e-007, -0.939692557, -0.342020243, -1, 3.01059487e-007, -3.24421308e-008))
mesh("SpecialMesh", GunHandle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -0.953024864, 0.129212379, -4.37114096e-008, 1.59872116e-014, -1, -0.939692676, 0.342020005, 4.10753103e-008, 0.342020005, 0.939692676, -1.49501655e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Torso, "", Vector3.new(0, 0, 0), Vector3.new(0.899999976, 1, 1.10000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.17971992, 0.11357975, 0, 0.939692616, 0.342020094, 2.63613131e-009, -0.342020094, 0.939692616, 1.4950194e-008, 2.6361171e-009, -1.49502029e-008, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(7.5, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.0182886124, -1.77848053, 8.56958948e-009, 1.90287484e-008, -1, -0.342020094, 0.939692616, 1.4950194e-008, 0.939692616, 0.342020094, 1.45609942e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 0.403200001, 0.403200001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.0182931423, 5.51375294, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.11357975, 5.51375103, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.208868504, 5.51374912, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.208867311, 2.84569836, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.0182921886, 2.84569836, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.113578558, 2.84569359, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.113579512, 4.17971992, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.25, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.113581657, 4.94202137, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.25, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.113580942, 3.41741848, 1.32045113e-008, -1.71789978e-007, 1, -0.342020392, 0.939692497, 1.65945977e-007, -0.939692497, -0.342020392, -4.63474912e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.25, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.66413498, 0.113578558, 0, 0.939692616, 0.342020094, 7.61535688e-008, -0.342020094, 0.939692616, -3.01059487e-007, -1.74529333e-007, 2.56857305e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(6, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99341202, -0.442775249, 0, 0.996194661, 0.0871559829, 1.52967971e-007, -0.0871559829, 0.996194661, -2.82404528e-007, -1.76999123e-007, 2.67997791e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.71560287, -0.943623543, 0, 0.984807849, -0.173647612, 2.22336723e-007, 0.173647612, 0.984807849, -2.44504179e-007, -1.76501374e-007, 2.79397881e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.31763077, -1.35550165, 0, 0.906307995, -0.422617674, 2.79532543e-007, 0.422617674, 0.906307995, -1.89941261e-007, -1.73070049e-007, 2.90280695e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.826614857, -1.65033817, 0, 0.766044676, -0.642787278, 3.20657591e-007, 0.642787278, 0.766044676, -1.22434102e-007, -1.66938946e-007, 2.99904627e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.237905979, -1.80804634, 0, 0.573577225, -0.819151521, 3.42909118e-007, 0.819151521, 0.573577225, -4.65834837e-008, -1.58525921e-007, 3.07613732e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21473026, 1.17686081, 0, -0.422618568, -0.906307578, 2.33652415e-007, -0.906307578, 0.422618568, -2.35821346e-007, 1.14980821e-007, -3.11423435e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.4658556, 0.484131813, 0, -0.819152176, -0.573576212, 9.02945203e-008, -0.573576212, 0.819152176, -2.99197779e-007, 9.7647785e-008, -2.96879307e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.689001441, 1.65122223, 0, 0.0871550441, -0.99619472, 3.2611581e-007, -0.99619472, -0.0871550441, -1.0925686e-007, 1.37263726e-007, -3.15352565e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.38589287, 0.847026825, 0, -0.642787814, -0.766044259, 1.66145298e-007, -0.766044259, 0.642787814, -2.76946309e-007, 1.05356911e-007, -3.05292332e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.964036465, 1.4511528, 0, -0.173648596, -0.98480773, 2.88215375e-007, -0.98480773, 0.173648596, -1.78625584e-007, 1.25863636e-007, -3.14854816e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.0182888508, -1.77848053, 8.56958948e-009, 1.90287484e-008, -1, -0.342020094, 0.939692616, 1.4950194e-008, 0.939692616, 0.342020094, 1.45609942e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.910000026, 1.5, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.670000553, -0.0719742775, -5.36790085, 1.33454066e-007, -2.71807494e-007, -1, -0.342020601, 0.939692438, -3.01059487e-007, 0.939692438, 0.342020601, 3.24420135e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=92135524", Vector3.new(0, 0, 0), Vector3.new(0.190575033, 0.190575033, 0.190575033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.659999847, -0.0719754696, -5.36789989, 1.33454066e-007, -2.71807494e-007, -1, -0.342020392, 0.939692497, -3.01059487e-007, 0.939692497, 0.342020392, 3.24420846e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=92135508", Vector3.new(0, 0, 0), Vector3.new(0.190575033, 0.190575033, 0.190575033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.4897995, 0.0615938902, 0, 0.965925753, 0.258819044, 1.48945745e-009, -0.258819044, 0.965925753, 1.13133343e-008, 1.48941481e-009, -1.13133485e-008, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.323446274, 0.0280549526, 0, 0.98480773, 0.173648268, 6.64051925e-010, -0.173648268, 0.98480773, 7.59049534e-009, 6.64112321e-010, -7.59047314e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.172198296, 0.0073826313, 0, 0.996194661, 0.0871557742, 1.66355818e-010, -0.0871557742, 0.996194661, 3.80969301e-009, 1.66313185e-010, -3.80967968e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.172844887, 0.00577545166, 0, 0.99619472, -0.0871556699, 1.66338054e-010, 0.0871556699, 0.99619472, -3.80969656e-009, 1.66338054e-010, 3.80970278e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.345030785, 0.0304279327, 0, 0.98480773, -0.173648208, 6.64124755e-010, 0.173648208, 0.98480773, -7.59039764e-009, 6.64048372e-010, 7.59040564e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515238762, 0.0700221062, 0, 0.965925813, -0.258818954, 1.48945389e-009, 0.258818954, 0.965925813, -1.13132934e-008, 1.48938284e-009, 1.13132979e-008, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.682182312, 0.126252174, 0, 0.939692676, -0.342019945, 2.63611533e-009, 0.342019945, 0.939692676, -1.49501673e-008, 2.63610644e-009, 1.49501904e-008, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.323209524, -4.17972374, -4.37114096e-008, 1.59872116e-014, -1, -0.342020094, 0.939692616, 1.4950194e-008, 0.939692616, 0.342020094, -4.10752889e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.190575033, 0.57172507, 0.190575033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, 0.323212624, -4.94202137, -4.37114096e-008, 1.59872116e-014, -1, -0.342020094, 0.939692616, 1.4950194e-008, 0.939692616, 0.342020094, -4.10752889e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.190575033, 0.57172507, 0.190575033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.323210716, -3.41741848, -4.37114096e-008, 1.59872116e-014, -1, -0.342020094, 0.939692616, 1.4950194e-008, 0.939692616, 0.342020094, -4.10752889e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.190575033, 0.57172507, 0.190575033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.132636786, -2.46454144, -4.37114096e-008, 1.59872116e-014, -1, -0.342020094, 0.939692616, 1.4950194e-008, 0.939692616, 0.342020094, -4.10752889e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.381150067, 0.952875078, 0.476437539))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.0182888508, -1.77848053, 8.56958948e-009, 1.90287484e-008, -1, -0.342020094, 0.939692616, 1.4950194e-008, 0.939692616, 0.342020094, 1.45609924e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.238218769, 1.90575016, 0.285862535))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.128981352, -0.489798546, -4.37113954e-008, 2.13162821e-014, -1, -0.258819014, 0.965925753, 1.13133352e-008, 0.965925753, 0.258819014, -4.22219593e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.247747526, 0.476437539, 0.381150067))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.183193088, -0.172199249, -4.37114096e-008, 1.77635684e-014, -1, -0.0871557742, 0.996194661, 3.80972143e-009, 0.996194661, 0.0871557742, -4.3545068e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.247747526, 0.476437539, 0.381150067))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.108569622, 0.172843933, 1.33454066e-007, -2.71807494e-007, -1, 0.0871556997, 0.996194661, -2.59141927e-007, 0.996194661, -0.0871556997, 1.56635821e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.175938845, -0.489797592, 1.33454066e-007, -2.71807494e-007, -1, -0.258819014, 0.965925753, -2.97086331e-007, 0.965925753, 0.258819014, 5.85577808e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0604324341, -0.48746109, 1.33454066e-007, -2.71807494e-007, -1, -0.258819014, 0.965925753, -2.97086331e-007, 0.965925753, 0.258819014, 5.85577808e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
SwordHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "SwordHandle", Vector3.new(0.381150067, 0.381150067, 0.381150067))
SwordHandleweld = weld(m, GunHandle, SwordHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.17971992, 0.11357975, 0, 0.939692616, 0.342020094, 2.63613131e-009, -0.342020094, 0.939692616, 1.4950194e-008, 2.6361171e-009, -1.49502029e-008, 1))
mesh("SpecialMesh", SwordHandle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(7.5999999, 1.10000002, 0.899999976))
BulletHole = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BulletHole", Vector3.new(0.381150067, 0.381150067, 0.381150067))
BulletHoleweld = weld(m, GunHandle, BulletHole, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.61284924, 0.113579512, 0, 0.939692616, 0.342020094, 2.63613131e-009, -0.342020094, 0.939692616, 1.4950194e-008, 2.6361171e-009, -1.49502029e-008, 1))
mesh("SpecialMesh", BulletHole, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.100000001, 0.75, 0.75))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.61094379, 0.113578796, 0, 0.939692616, 0.342020094, 2.63613131e-009, -0.342020094, 0.939692616, 1.4950194e-008, 2.6361171e-009, -1.49502029e-008, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.100000001, 0.899999976, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515238762, 0.0700221062, 0, 0.965925813, -0.258818954, 1.48945389e-009, 0.258818954, 0.965925813, -1.13132934e-008, 1.48938284e-009, 1.13132979e-008, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.20000005, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.184798479, 0.17284584, 1.33454066e-007, -2.71807494e-007, -1, 0.0871556997, 0.996194661, -2.59141927e-007, 0.996194661, -0.0871556997, 1.56635821e-007))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.247747526, 0.476437539, 0.381150067))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.120551586, 0.515238762, 1.33454066e-007, -2.71807494e-007, -1, 0.258818954, 0.965925813, -2.28005462e-007, 0.965925813, -0.258818954, 1.99255666e-007))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.247747526, 0.476437539, 0.381150067))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.184368134, 0.515237808, 1.33454066e-007, -2.71807494e-007, -1, 0.258818954, 0.965925813, -2.28005462e-007, 0.965925813, -0.258818954, 1.99255666e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0443205833, 0.515239716, 1.33454066e-007, -2.71807494e-007, -1, 0.258818954, 0.965925813, -2.28005462e-007, 0.965925813, -0.258818954, 1.99255666e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.4897995, 0.061593771, 0, 0.965925753, 0.258819014, 1.02269169e-007, -0.258819014, 0.965925753, -2.97086331e-007, -1.75676021e-007, 2.60494147e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.20000005, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.172198296, 0.00738239288, 0, 0.996194661, 0.0871557742, 1.66355818e-010, -0.0871557742, 0.996194661, 3.80969301e-009, 1.66313185e-010, -3.80967968e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.20000005, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.121727228, -0.172197342, 1.33454066e-007, -2.71807494e-007, -1, -0.0871557742, 0.996194661, -2.82404471e-007, 0.996194661, 0.0871557742, 1.09256646e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.106962085, -0.172197342, 1.33454066e-007, -2.71807494e-007, -1, -0.0871557742, 0.996194661, -2.82404471e-007, 0.996194661, 0.0871557742, 1.09256646e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.172844887, 0.00577545166, 0, 0.99619472, -0.0871556699, 1.66338054e-010, 0.0871556699, 0.99619472, -3.80969656e-009, 1.66338054e-010, 3.80970278e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.20000005, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.120121241, 0.17284584, 1.33454066e-007, -2.71807494e-007, -1, 0.0871556997, 0.996194661, -2.59141927e-007, 0.996194661, -0.0871556997, 1.56635821e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158e-007, 0.856247663, 1.77848053, 2.58338559e-007, -5.6264372e-007, -1, 0.342020243, -0.939692557, 6.1706919e-007, -0.939692557, -0.342020243, -5.03233153e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158e-007, 0.856247425, 1.77848053, 2.58338559e-007, -5.6264372e-007, -1, 0.342020243, -0.939692557, 6.1706919e-007, -0.939692557, -0.342020243, -5.03233153e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1.75, 0.75, 1.75))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158e-007, 0.856247425, 1.77848053, 2.58338559e-007, -5.6264372e-007, -1, 0.342020243, -0.939692557, 6.1706919e-007, -0.939692557, -0.342020243, -5.03233153e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(2, 0.5, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158e-007, 0.856247425, 1.77848053, 2.58338559e-007, -5.6264372e-007, -1, 0.342020243, -0.939692557, 6.1706919e-007, -0.939692557, -0.342020243, -5.03233153e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(2.25, 0.25, 2.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-007, 0.0182888508, -1.77848053, 8.56958948e-009, 1.90287484e-008, -1, -0.342020094, 0.939692616, 1.4950194e-008, 0.939692616, 0.342020094, 1.45609942e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.920000017, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.67055988, -1.02164078, 0, 0.642787814, 0.766044259, -7.87225218e-008, 0.766044259, -0.642787814, 2.76946309e-007, 1.61551213e-007, -2.38322642e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.25393057, -1.4192028, 0, 0.422618568, 0.906307578, -1.46229652e-007, 0.906307578, -0.422618568, 2.35821346e-007, 1.5192731e-007, -2.32191539e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.93903637, -0.645702362, 0, 0.819152057, 0.573576331, -2.87178992e-009, 0.573576331, -0.819152057, 2.99197779e-007, 1.69260346e-007, -2.46735681e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.04205418, 1.40610981, 0, -0.766044855, 0.642787099, -2.33234758e-007, -0.642787099, -0.766044855, 1.22434187e-007, -9.99691849e-008, 2.43710389e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.27842999, 1.11316061, 0, -0.906307995, 0.422617674, -1.92109766e-007, -0.422617674, -0.906307995, 1.89941261e-007, -9.38380822e-008, 2.53334292e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.776017189, 1.62790489, 0, -0.573577285, 0.819151461, -2.55486327e-007, -0.819151461, -0.573577285, 4.65834908e-008, -1.08382203e-007, 2.36001242e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.748598099, -1.69538212, 0, 0.173648387, 0.98480773, -2.00792655e-007, 0.98480773, -0.173648387, 1.78625527e-007, 1.41044467e-007, -2.28760186e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43093586, 0.76900959, 0, -0.984807849, 0.173647612, -1.34913961e-007, -0.173647612, -0.984807849, 2.44504179e-007, -9.04067505e-008, 2.64217107e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.15088892, -1.83136272, 0, -0.0871550143, 0.99619478, -2.38693019e-007, 0.99619478, 0.0871550143, 1.0925686e-007, 1.29644391e-007, -2.28262437e-007, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52022934, 0.281204462, 0, -0.996194661, -0.0871562362, -6.55451302e-008, 0.0871562362, -0.996194661, 2.82404528e-007, -8.99090082e-008, 2.75617197e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 0.899999976))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.0612716675, 1.0129261, 1.33454066e-007, -2.71807494e-007, -1, 0.342020243, -0.939692557, 3.01059487e-007, -0.939692557, -0.342020243, -3.24421308e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.247747526, 0.476437539, 0.381150067))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.242487907, 0.986351013, 1.33454066e-007, -2.71807494e-007, -1, 0.342020243, -0.939692557, 3.01059487e-007, -0.939692557, -0.342020243, -3.24421308e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.996317863, -0.128578424, 0, -0.939692557, -0.342020243, 1.12692575e-008, 0.342020243, -0.939692557, 3.01059487e-007, -9.23787979e-008, 2.86757682e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.20000005, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.0612716675, 1.37292576, 1.33454066e-007, -2.71807494e-007, -1, 0.342020243, -0.939692557, 3.01059487e-007, -0.939692557, -0.342020243, -3.24421308e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.247747526, 0.476437539, 0.381150067))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.35631847, -0.128578424, 0, -0.939692557, -0.342020243, 1.12692575e-008, 0.342020243, -0.939692557, 3.01059487e-007, -9.23787979e-008, 2.86757682e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.20000005, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.242487907, 1.34635162, 1.33454066e-007, -2.71807494e-007, -1, 0.342020243, -0.939692557, 3.01059487e-007, -0.939692557, -0.342020243, -3.24421308e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.00248789787, 0.986351013, 1.33454066e-007, -2.71807494e-007, -1, 0.342020243, -0.939692557, 3.01059487e-007, -0.939692557, -0.342020243, -3.24421308e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.00248789787, 1.34635162, 1.33454066e-007, -2.71807494e-007, -1, 0.342020243, -0.939692557, 3.01059487e-007, -0.939692557, -0.342020243, -3.24421308e-008))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.00999999, 0.100000001, 0.100000001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.655434608, -0.288022995, -5.37018013, 2.79783706e-007, 7.8075999e-009, 1, 0.342020094, -0.939692616, -8.83548879e-008, 0.939692616, 0.342020094, -2.65581036e-007))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=92135524", Vector3.new(0, 0, 0), Vector3.new(0.190575033, 0.190575033, 0.190575033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, GunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.66565752, -0.288024902, -5.36789989, -1.85097718e-007, 4.13697137e-007, 1, 0.342020392, -0.939692497, 4.52055303e-007, 0.939692497, 0.342020392, 3.24420846e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=92135508", Vector3.new(0, 0, 0), Vector3.new(0.190575033, 0.190575033, 0.190575033))
CoreHandle = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Handle", Vector3.new(0.381150067, 0.381150067, 0.381150067))
CoreHandleweld = weld(m, Character.Torso, CoreHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.126105309, -0.124328613, -0.0193977356, 0.866025567, -0.499999732, -1.54855613e-008, 0.499999732, 0.866025567, -8.94058605e-009, 1.78811828e-008, 0, 1))
mesh("SpecialMesh", CoreHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(7.5, 7.5, 7.5))
Ring1ReferencePoint = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, TorsoColor, "Handle", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Ring1ReferencePointweld = weld(m, CoreHandle, Ring1ReferencePoint, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.126105309, -0.124329567, -0.0193977356, 0.866025567, -0.499999702, -1.54855613e-008, 0.499999702, 0.866025567, -8.94058605e-009, 1.78811828e-008, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0487003326, 0.170000553, -2.0073452, 0.707106769, 3.61242698e-008, -0.707106709, 1.49011612e-007, 1, 9.83475559e-008, 0.707106709, -1.55333566e-007, 0.707106829))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0345611572, -0.170001507, -2.08923244, -0.25881952, 1.12944072e-007, -0.965925694, -1.78813934e-007, -1.00000012, -6.85452335e-008, -0.965925694, 1.76499938e-007, 0.25881952))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0654983521, 0.170000076, -1.98813725, 0.50000006, -3.696071e-008, -0.866025388, 1.1920929e-007, 1, 8.94058783e-009, 0.866025329, -1.53481906e-007, 0.50000006))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00164413452, -0.17000246, -1.94940472, 0.25881955, -3.09876853e-008, 0.965925694, -8.94069672e-008, -1, -3.87429111e-008, 0.965925694, -5.72906451e-008, -0.25881955))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0628457069, -0.17000103, -2.05058289, -1, 1.49011612e-007, 3.04476913e-007, -1.49011612e-007, -1, -8.56288374e-010, 3.04476941e-007, -8.5632923e-010, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0513486862, -0.17000246, -2.08439445, -0.866025627, 2.13086551e-007, -0.499999732, -2.08616257e-007, -1, 5.96057159e-009, -0.499999702, 1.26367681e-007, 0.866025567))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0869293213, 0.170001507, -2.02276611, -0.866025269, 1.7434364e-007, 0.500000298, 2.38418579e-007, 1, 5.36440723e-008, -0.500000238, 1.71655543e-007, -0.866025269))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00387001038, -0.170002937, -1.9525547, 0.500000417, -8.22485759e-008, 0.86602515, -5.96046448e-008, -1, -3.87429111e-008, 0.86602515, -5.51343469e-008, -0.500000417))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0341186523, 0.169999599, -1.95340586, 2.32048365e-007, -5.22409245e-008, -1, 2.08616257e-007, 1, -5.22408925e-008, 1, -2.08616257e-007, 2.32048379e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0219216347, -0.170001984, -1.95992088, 0.866025507, -1.53481906e-007, 0.499999762, -1.78813934e-007, -0.99999994, -2.38417499e-008, 0.499999762, -5.18618677e-008, -0.866025507))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0774993896, 0.17000246, -2.00134659, -0.965925753, 2.95709214e-007, 0.258819312, 3.57627869e-007, 1, 4.61934953e-008, -0.258819312, 1.35295807e-007, -0.965925753))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0341739655, 0.170001507, -2.07081223, -0.258819073, 7.33204431e-008, 0.965925813, 1.78813934e-007, 1, -5.06640561e-008, -0.965925813, 1.51325608e-007, -0.258819103))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0670967102, 0.170000553, -1.96782446, 0.258819103, -1.03122765e-007, -0.965925813, 1.78813934e-007, 1, -5.06640561e-008, 0.965925813, -1.51325608e-007, 0.258819103))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0439095497, -0.17000103, -1.96881485, 0.965925932, -6.19186338e-008, 0.258818865, -1.1920929e-007, -1, 1.25169862e-007, 0.258818865, -1.47826256e-007, -0.965925813))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0628457069, -0.170001984, -1.9794178, 1, -5.96046412e-008, -2.65629694e-007, -5.96046448e-008, -1, -2.09936371e-008, -2.65629666e-007, 2.09936495e-008, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0341186523, -0.17000246, -2.07909966, -7.37518917e-007, 7.7378985e-008, -1, -2.08616257e-007, -1, -7.73789282e-008, -1, 2.08616257e-007, 7.37518974e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0623283386, 0.170000553, -2.03755379, 0.965925813, -2.74883263e-008, -0.258819252, 5.96046448e-008, 1, 8.34463947e-008, 0.258819252, -9.80429107e-008, 0.965925753))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00162315369, -0.17000103, -1.95702171, 0.707107127, -3.61242662e-008, 0.707106352, -1.78813934e-007, -0.99999994, 5.06640561e-008, 0.707106352, -1.12887335e-007, -0.707107186))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0575027466, 0.170001507, -2.02154922, 0.866025329, -5.51343504e-008, -0.500000179, 8.94069672e-008, 1, 2.38417499e-008, 0.500000179, -6.73474148e-008, 0.866025329))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0904979706, 0.170001984, -2.0459013, -0.707106829, 2.34803732e-008, 0.707106769, 2.08616257e-007, 0.99999994, 6.85452335e-008, -0.707106709, 1.85135889e-007, -0.707106829))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0589771271, 0.169999599, -2.06140852, -0.49999994, 6.67630289e-008, 0.866025448, 1.78813934e-007, 0.99999994, 3.87429111e-008, -0.866025448, 1.53481906e-007, -0.49999994))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0590806007, -0.17000103, -2.07008362, -0.965925932, 1.21523286e-007, -0.258818775, -1.49011612e-007, -1, 5.96057337e-009, -0.258818775, 3.60675401e-008, 0.965925932))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00265312195, -0.170001984, -2.09698868, -0.500000536, 2.01457866e-007, -0.86602509, -2.38418579e-007, -1, -1.28149878e-007, -0.86602509, 8.49366728e-008, 0.500000536))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring1ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0401754379, -0.17000103, -2.09622192, -0.707107186, 1.85135875e-007, -0.707106352, -2.38418579e-007, -1, 5.06640561e-008, -0.707106352, 1.7249198e-007, 0.707107186))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Ring2ReferencePoint = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, TorsoColor, "Handle", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Ring2ReferencePointweld = weld(m, CoreHandle, Ring2ReferencePoint, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0446195602, -0.171374798, -0.0193977356, 0.866025269, 0.500000298, -1.54855613e-008, -0.500000298, 0.866025269, -8.94058516e-009, 8.94059227e-009, 1.54855577e-008, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.178648949, -0.0305736065, -2.37941742, 1, 2.60665813e-015, -2.76067851e-007, -9.33221395e-017, -1, -2.914188e-009, -2.76067851e-007, 2.914188e-009, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.155764103, -0.0305743217, -2.33884048, 0.965925932, -1.21523286e-007, 0.258818924, -1.1920929e-007, -1, 1.34111557e-008, 0.258818924, -3.60675401e-008, -0.965925813))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.122206688, -0.0305736065, -2.30201721, 0.866025567, -1.23679584e-007, 0.499999762, -1.49011612e-007, -1, -5.36440723e-008, 0.499999762, -2.20595489e-008, -0.866025507))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0802621841, -0.0305736065, -2.27513695, 0.707107246, -1.2553123e-007, 0.707106411, -2.38418579e-007, -1.00000012, -8.94058871e-009, 0.707106411, -1.12887335e-007, -0.707107186))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0617694855, -0.0305755138, -2.25226593, 0.500000477, 2.20595506e-008, 0.86602515, -2.98023224e-008, -1, -8.94058516e-009, 0.866025209, 4.47029702e-009, -0.500000477))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0283260345, -0.0305755138, -2.23754883, 0.25881952, -3.84382659e-008, 0.965925753, 4.6150569e-016, -1, -3.87429075e-008, 0.965925753, 3.2116322e-008, -0.25881952))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0341186523, 0.0305724144, -2.23760414, 2.3204862e-007, 7.0121942e-008, -1, -1.1920929e-007, 1, 7.01219491e-008, 1, 1.1920929e-007, 2.32048635e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.097070694, 0.0305728912, -2.25596666, 0.258819103, 1.12944072e-007, -0.965925813, -2.98023224e-008, 1, 9.83475488e-008, 0.965925813, -2.31399389e-009, 0.258819103))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.123401642, 0.0305736065, -2.28784943, 0.50000006, 9.71497371e-008, -0.866025388, -1.49011612e-007, 1, 8.9405825e-009, 0.866025388, 1.7434364e-007, 0.50000006))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.130586624, 0.0305733681, -2.32545948, 0.707106888, 9.57289146e-008, -0.707106769, -5.96046448e-008, 1, 6.85452264e-008, 0.707106769, 2.34803732e-008, 0.707106829))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.157791138, 0.0305743217, -2.36365128, 0.866025388, 3.02493504e-007, -0.500000179, -1.1920929e-007, 1, 1.57952201e-007, 0.500000179, -3.75450959e-008, 0.866025269))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.174186707, 0.0305743217, -2.40757751, 0.965925813, 6.19186409e-008, -0.258819252, -5.96046448e-008, 1, -1.34111584e-008, 0.258819252, 4.35181207e-008, 0.965925753))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.178647041, -0.030575037, -2.4505806, -1, 5.96046412e-008, 3.04476941e-007, -5.96046448e-008, -1, -8.56271498e-010, 3.04476941e-007, -8.56285709e-010, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.170937061, -0.0305745602, -2.50005341, -0.965925932, 6.19186338e-008, -0.258818775, -5.96046448e-008, -1, -3.1292327e-008, -0.258818775, -8.63594263e-009, 0.965925932))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.151638031, -0.0305743217, -2.54229546, -0.866025567, 6.4074932e-008, -0.499999732, -5.96046448e-008, -1, -6.85452335e-008, -0.499999762, -5.24462607e-008, 0.866025567))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.122059822, -0.0305738449, -2.57810593, -0.707107306, 6.32194475e-009, -0.707106352, 2.98023224e-008, -1, -8.94058427e-009, -0.707106352, -3.61242769e-008, 0.707107246))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0552463531, -0.0305752754, -2.59727478, -0.500000477, 7.74277087e-009, -0.86602509, -5.96046448e-008, -1, -8.94058516e-009, -0.866025209, 2.53320245e-008, 0.500000477))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00459098816, -0.0305759907, -2.60108852, -0.25881952, 3.09876818e-008, -0.965925694, -2.38418579e-007, -1, 5.06640561e-008, -0.965925694, 2.36104583e-007, 0.258819491))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0341205597, -0.0305759907, -2.59490204, -7.37519429e-007, 5.97119367e-008, -1, -1.49011612e-007, -1, -5.97117662e-008, -1, 1.49011612e-007, 7.37519429e-007))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0641441345, 0.0305731297, -2.58266878, -0.258819073, -7.56911689e-008, 0.965925872, 2.08616257e-007, 1, 1.28149878e-007, -0.965925872, 2.10930253e-007, -0.258819073))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.116876602, 0.0305738449, -2.56169653, -0.499999821, 1.26367681e-007, 0.866025507, 2.08616257e-007, 1, -5.06640561e-008, -0.866025567, 1.53481906e-007, -0.499999821))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.172384262, 0.0305747986, -2.52778625, -0.707106709, 2.32096625e-007, 0.707106829, 2.68220901e-007, 1, -8.04663784e-008, -0.707106829, 1.25531244e-007, -0.707106709))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Institutional white", "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.18721962, 0.0305728912, -2.48066711, -0.866025269, 1.44541318e-007, 0.500000238, 2.08616257e-007, 1, 6.85452335e-008, -0.500000238, 1.41853221e-007, -0.866025269))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, TorsoColor, "Part", Vector3.new(0.381150067, 0.381150067, 0.381150067))
Partweld = weld(m, Ring2ReferencePoint, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.18935585, 0.030575037, -2.43131638, -0.965925753, 1.16895293e-007, 0.258819401, 1.78813934e-007, 1, 9.08969753e-008, -0.258819431, 1.27845226e-007, -0.965925694))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 0.5, 0.5))
local particleemitter = Instance.new("ParticleEmitter", CoreHandle)
particleemitter.Lifetime = NumberRange.new(1)
particleemitter.Speed = NumberRange.new(0)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 5), NumberSequenceKeypoint.new(1, 5)})
particleemitter.RotSpeed = NumberRange.new(9000)
particleemitter.Rotation = NumberRange.new(-360, 360)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0), NumberSequenceKeypoint.new(0.9, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0.5
particleemitter.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
particleemitter.Enabled = false
local particleemitter2 = Instance.new("ParticleEmitter", CoreHandle)
particleemitter2.VelocitySpread = 360
particleemitter2.Lifetime = NumberRange.new(0.5)
particleemitter2.Speed = NumberRange.new(10)
particleemitter2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 0.5)})
particleemitter2.RotSpeed = NumberRange.new(9000)
particleemitter2.Rate = 100
particleemitter2.Rotation = NumberRange.new(-360, 360)
particleemitter2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.7, 1), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(0.9, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter2.LightEmission = 0.5
particleemitter2.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
particleemitter2.Enabled = false
coreaura = Instance.new("PointLight", CoreHandle)
coreaura.Brightness = 5
coreaura.Range = 5
coreaura.Color = Color3.new(Colorpart1, Colorpart3, Colorpart3)
local gunfirelight = Instance.new("PointLight", BulletHole)
gunfirelight.Shadows = true
gunfirelight.Color = Color3.new(Colorpart1, Colorpart3, Colorpart3)
gunfirelight.Range = 10
gunfirelight.Brightness = 7.5
gunfirelight.Enabled = false
local gunfireeffect = Instance.new("ParticleEmitter", BulletHole)
gunfireeffect.Lifetime = NumberRange.new(0.1)
gunfireeffect.Speed = NumberRange.new(0)
gunfireeffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 3)})
gunfireeffect.Rate = 100
gunfireeffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
gunfireeffect.Name = "GunfireEffect"
gunfireeffect.LightEmission = 0.5
gunfireeffect.Texture = "http://www.roblox.com/asset/?id=243728166"
gunfireeffect.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
gunfireeffect.Enabled = false
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
local m = Instance.new("Model", Character)
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
local co2 = 30
local co3 = 50
local co4 = 60
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 3
local critdamageaddmax = 7
local maxstamina = 100
local stamina = 0
local skill1stam = 15
local skill2stam = 30
local skill3stam = 25
local skill4stam = 75
local recovermana = 3
local defensevalue = 1
local speedvalue = 1
local mindamage = 5
local maxdamage = 7
local damagevalue = 1
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
local aiming = false
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
framesk5 = makeframe(scrn, 0.5, ud(0.23, 0, 0.75, 0), ud(0.1, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar5 = makeframe(framesk5, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[C] Sprint")
text2 = makelabel(framesk2, "[V] Overdrive")
text3 = makelabel(framesk3, "[X] Shoot Combo")
text4 = makelabel(framesk4, "[Z] Reload")
ammolabel = Instance.new("TextLabel", framesk5)
ammolabel.BackgroundTransparency = 1
ammolabel.Size = ud(1, 0, 1, 0)
ammolabel.Position = ud(0, 0, 0, 0)
ammolabel.TextColor3 = c3(255, 255, 255)
ammolabel.TextStrokeTransparency = 0
ammolabel.FontSize = Enum.FontSize.Size32
ammolabel.Font = Enum.Font.SourceSansBold
ammolabel.BorderSizePixel = 0
ammolabel.TextScaled = true
ammolabel.Text = "Ammo [" .. Bulletcount .. "]"
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(Colorpart1, Colorpart2, Colorpart3))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(Colorpart1 + 0.15, Colorpart2 + 0.15, Colorpart3 + 0.15))
staminatext = makelabel(staminabar, "Energy")
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
gyro = Instance.new("BodyGyro")
gyro.Parent = nil
gyro.P = 10000000
gyro.D = 1000
gyro.MaxTorque = Vector3.new(0, 10000000, 0)
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
      fat.Event:wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end
)()
  return p
end

clangy = function(cframe)
  fat.Event:wait(0.016666666666667)
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
        fat.Event:wait(0.016666666666667)
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
        fat.Event:wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end
)()
    end
  end
)()
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
      fat.Event:wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end
)()
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
      fat.Event:wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end
)()
end

pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end

CreateSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    fat.Event:wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

clangy = function(cframe)
  fat.Event:wait(0.016666666666667)
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
        fat.Event:wait(0.016666666666667)
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
        fat.Event:wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end
)()
    end
  end
)()
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
  end
))
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
    fat.Event:wait(1)
    untag(h)
  end
)()
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
  end
))
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
end
)
nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
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
  end
))
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
  end
)()
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
    TagService:NewTag(h.Parent, Player, "Trinity", D)
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
  end
), humanoid)
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
                so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
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
  prt.Material = "Neon"
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
  end
), prt, msh)
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
  end
), prt, msh)
end

Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
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
  end
), prt, msh)
end

MMouse = mouse
LaserTarget = RootPart
gunidle = false
torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
velocity = RootPart.Velocity.y
sine = sine + change
hit = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velderp = RootPart.Velocity.y
canwalk = true
canidle = true
GunStance = function()
  attack = true
  gun = true
  canwalk = false
  canidle = false
  aiming = true
  Humanoid.WalkSpeed = 0 * speed.Value
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(75)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  gunidle = true
  Humanoid.WalkSpeed = 0 * speed.Value
  while gun == true do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    canwalk = false
    canidle = false
  end
  if shoot == true then
    gunidle = false
    gunfireeffect.Enabled = true
    gunfirelight.Enabled = true
    Bulletcount = Bulletcount - 1
    local spread = vt(0, 0, 0)
    local MouseLook = cf((BulletHole.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
    local hit, pos = rayCast(BulletHole.Position, MouseLook.lookVector, 999, LaserTarget.Parent)
    local mag = (BulletHole.Position - pos).magnitude
    Laser(TorsoColor, CFrame.new((BulletHole.Position + pos) / 2, pos) * angles(1.57, 0, 0), 0.1, mag * 2, 0.1, 0.2, 0, 0.2, 0.125)
    if hit ~= nil and hit.Name ~= "Effect" and hit.Name ~= "BillboardGui" then
      local g = hit:FindFirstChild("BodyPosition")
      if g == nil then
        local ref = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        ref.Anchored = true
        ref.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(ref, 0.01)
        Shockwave(TorsoColor, cf(pos), 1, 1, 1, 1, 1, 1, 0.1)
        if not hit.Parent:FindFirstChild("Torso") then
          local h = hit.Parent.Parent:FindFirstChild("Torso")
        end
        if h then
          Damagefunc(h, 9, 12, 0, "Target", RootPart, 0)
        end
      end
    end
    do
      so("http://www.roblox.com/asset/?id=138084889", GunHandle, 1, 0.9)
      so("http://www.roblox.com/asset/?id=199144089", BulletHole, 1, math.random(80, 120) / 100)
      ammolabel.Text = "Ammo [" .. Bulletcount .. "]"
      for i = 0, 1, 0.14 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, -1) * angles(math.rad(-10), math.rad(10), math.rad(-90)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(13.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-17.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      gunfireeffect.Enabled = false
      gunfirelight.Enabled = false
      for i = 0, 1, 0.1 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(75)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      for i = 0, 1, 0.1 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      for i = 1, 1 do
        local bulletpart = part(3, Character, "SmoothPlastic", 0, 0, TorsoColor, "Bullet", vt(0.2, 0.2, 0.2))
        bulletpart.Anchored = false
        bulletpart.Material = Enum.Material.SmoothPlastic
        bulletpart.CanCollide = true
        bulletpart.Friction = 1
        bulletpart.Velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        bulletpart.CFrame = cf(GunHandle.Position) * cf(math.random(-10, 10) / 100, 1, math.random(-10, 10) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        bulletmesh = Instance.new("FileMesh", bulletpart)
        bulletmesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
        bulletmesh.Scale = Vector3.new(1, 0.25, 0.25)
        game:GetService("Debris"):AddItem(bulletpart, 5)
      end
      for i = 0, 1, 0.13 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(15)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      for i = 0, 1, 0.13 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      do
        Humanoid.WalkSpeed = 16 * speed.Value
        gun = false
        gunidle = false
        shoot = false
        canwalk = true
        canidle = true
        attack = false
        aiming = false
      end
    end
  end
end

Reload = function()
  attack = true
  so("http://www.roblox.com/asset/?id=266022905", GunHandle, 1, 0.9)
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(135), math.rad(0), math.rad(45)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  for i = 1, Bulletcount do
    local bulletpart = part(3, Character, "SmoothPlastic", 0, 0, TorsoColor, "Bullet", vt(0.2, 0.2, 0.2))
    bulletpart.Anchored = false
    bulletpart.Material = Enum.Material.SmoothPlastic
    bulletpart.CanCollide = true
    bulletpart.Friction = 1
    bulletpart.Velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
    bulletpart.CFrame = cf(GunHandle.Position) * cf(math.random(-10, 10) / 100, 1, math.random(-10, 10) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    bulletmesh = Instance.new("FileMesh", bulletpart)
    bulletmesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
    bulletmesh.Scale = Vector3.new(1, 0.25, 0.25)
    game:GetService("Debris"):AddItem(bulletpart, 5)
  end
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.4, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.25, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  for i = 0, 1, 0.09 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  for i = 0, 1, 0.09 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(-15)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.25, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(135), math.rad(0), math.rad(45)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  for i = 0, 1, 0.14 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.25, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.25, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.4)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  Bulletcount = 6
  ammolabel.Text = "Ammo [" .. Bulletcount .. "]"
  shoot = false
  gun = false
  attack = false
end

ShootCombo = function()
  gunidle = false
  canwalk = false
  canidle = false
  if shoot == false then
    shoot = true
    canwalk = false
    canidle = false
    for i = 1, 3 do
      local spread = vt(0, 0, 0)
      local MouseLook = cf((BulletHole.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
      local hit, pos = rayCast(BulletHole.Position, MouseLook.lookVector, 999, LaserTarget.Parent)
      local mag = BulletHole.Position - pos.magnitude
      Laser(TorsoColor, CFrame.new((BulletHole.Position + pos) / 2, pos) * angles(1.57, 0, 0), 0.1, mag * 2, 0.1, 0.2, 0, 0.2, 0.125)
      if hit ~= nil and hit.Name ~= "Effect" and hit.Name ~= "BillboardGui" then
        local g = hit:FindFirstChild("BodyPosition")
        if g == nil then
          local ref = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
          ref.Anchored = true
          ref.CFrame = cf(pos)
          game:GetService("Debris"):AddItem(ref, 0.01)
          Shockwave(TorsoColor, cf(pos), 1, 1, 1, 1, 1, 1, 0.11)
          if not hit.Parent:FindFirstChild("Torso") then
            local h = hit.Parent.Parent:FindFirstChild("Torso")
          end
          if h then
            Damagefunc(h, 9, 11, 0, "Target", RootPart, 0)
          end
        end
      end
      do
        so("http://www.roblox.com/asset/?id=199144089", BulletHole, 1, math.random(80, 120) / 100)
        gunfireeffect.Enabled = true
        gunfirelight.Enabled = true
        Bulletcount = Bulletcount - 1
        ammolabel.Text = "Ammo [" .. Bulletcount .. "]"
        for i = 0, 1, 0.24 do
          fat.Event:wait()
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, -1) * angles(math.rad(-10), math.rad(10), math.rad(-90)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(13.5), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-17.5), math.rad(0), math.rad(0)), 0.3)
          GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
          CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
          Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        end
        gunfireeffect.Enabled = false
        gunfirelight.Enabled = false
        for i = 0, 1, 0.22 do
          fat.Event:wait()
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(75)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
          GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
          CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
          Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        end
        -- DECOMPILER ERROR at PC810: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
    so("http://www.roblox.com/asset/?id=138084889", BulletHole, 1, 0.8)
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(75)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    end
    for i = 0, 1, 0.06 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    end
    for i = 1, 3 do
      local bulletpart = part(3, Character, "SmoothPlastic", 0, 0, TorsoColor, "Bullet", vt(0.2, 0.2, 0.2))
      bulletpart.Anchored = false
      bulletpart.Material = Enum.Material.SmoothPlastic
      bulletpart.CanCollide = true
      bulletpart.Friction = 1
      bulletpart.Velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      bulletpart.CFrame = cf(GunHandle.Position) * cf(math.random(-10, 10) / 100, 1, math.random(-10, 10) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      bulletmesh = Instance.new("FileMesh", bulletpart)
      bulletmesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
      bulletmesh.Scale = Vector3.new(1, 0.25, 0.25)
      game:GetService("Debris"):AddItem(bulletpart, 5)
    end
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(15)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    end
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    end
  end
  do
    Humanoid.WalkSpeed = 16 * speed.Value
    shoot = false
    gunidle = false
    gun = false
    canwalk = true
    canidle = true
    attack = false
  end
end

Sprint = function()
  local spde = 50
  canwalk = false
  canidle = false
  attack = true
  Humanoid.WalkSpeed = 4 * speed.Value
  local body = Instance.new("BodyVelocity", Torso)
  body.MaxForce = Vector3.new(10000, 0, 10000)
  body.P = 0.01
  for i = 1, 3 do
    for i = 0, 1, 0.2 do
      fat.Event:wait()
      Humanoid.WalkSpeed = 4 * speed.Value
      body.Velocity = Vector3.new(RootPart.CFrame.lookVector.x * spde, 0, RootPart.CFrame.lookVector.z * spde)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(20), math.rad(0) + RootPart.RotVelocity.Y / 20, math.rad(15)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15) + Head.RotVelocity.Y / 15), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-60), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    end
    for i = 0, 1, 0.6 do
      fat.Event:wait()
      Humanoid.WalkSpeed = 4 * speed.Value
      body.Velocity = Vector3.new(RootPart.CFrame.lookVector.x * spde, 0, RootPart.CFrame.lookVector.z * spde)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(20), math.rad(0) + RootPart.RotVelocity.Y / 20, math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0) + Head.RotVelocity.Y / 15), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    end
    for i = 0, 1, 0.2 do
      fat.Event:wait()
      Humanoid.WalkSpeed = 4 * speed.Value
      body.Velocity = Vector3.new(RootPart.CFrame.lookVector.x * spde, 0, RootPart.CFrame.lookVector.z * spde)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(20), math.rad(0) + RootPart.RotVelocity.Y / 20, math.rad(-15)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(15) + Head.RotVelocity.Y / 15), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(60), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    end
    for i = 0, 1, 0.6 do
      fat.Event:wait()
      Humanoid.WalkSpeed = 4 * speed.Value
      body.Velocity = Vector3.new(RootPart.CFrame.lookVector.x * spde, 0, RootPart.CFrame.lookVector.z * spde)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(20), math.rad(0) + RootPart.RotVelocity.Y / 20, math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0) + Head.RotVelocity.Y / 15), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    end
  end
  for i = 0, 1, 0.05 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 4 * speed.Value
    body.Velocity = Vector3.new(RootPart.CFrame.lookVector.x * (spde - spde * i), 0, RootPart.CFrame.lookVector.z * (spde - spde * i))
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-10), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-60) + Head.RotVelocity.Y / 30), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(-30), math.rad(120), math.rad(75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(120), math.rad(75)), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.5) * angles(math.rad(10), math.rad(30), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * angles(math.rad(-10), math.rad(-75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  body.Parent = nil
  LeftLeg.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5, 1, 1)
  RightLeg.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5, 1, 1)
  Humanoid.WalkSpeed = 16 * speed.Value
  canwalk = true
  canidle = true
  attack = false
end

Overdrive = function()
  gunidle = false
  canwalk = false
  canidle = false
  if shoot == false then
    shoot = true
    canwalk = false
    canidle = false
    for i = 0, 1, 0.08 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(30), math.rad(-10), math.rad(75)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-5, 0.5, -2.4) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    gunfireeffect.Enabled = true
    gunfirelight.Enabled = true
    particleemitter.Enabled = true
    particleemitter2.Enabled = true
    so("http://www.roblox.com/asset/?id=203691378", BulletHole, 1, 1.4)
    so("http://www.roblox.com/asset/?id=203691346", BulletHole, 0.75, 1.4)
    for i = 0, 1, 0.009 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(30), math.rad(-10), math.rad(75)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
      GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
      CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-5, 0.5, -2.4) * angles(math.rad(0 + 1800 * i), math.rad(0 + 3600 * i), math.rad(45)), 0.3)
      Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    local MouseLook = cf((BulletHole.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
    local hit, pos = rayCast(BulletHole.Position, MouseLook.lookVector, 999, LaserTarget.Parent)
    local mag = BulletHole.Position - pos.magnitude
    Laser(TorsoColor, CFrame.new((BulletHole.Position + pos) / 2, pos) * angles(1.57, 0, 0), 0.1, mag * 2, 0.1, 1, 0, 1, 0.025)
    do
      if hit ~= nil then
        local ref = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        ref.Anchored = true
        ref.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(ref, 5)
        so("http://www.roblox.com/asset/?id=156572165", BulletHole, 0.75, 1)
        so("http://roblox.com/asset/?id=168586586", ref, 0.75, 0.75)
        so("http://roblox.com/asset/?id=168586586", ref, 0.75, 0.5)
        so("http://roblox.com/asset/?id=168586586", ref, 0.75, 0.25)
        so("http://roblox.com/asset/?id=168586586", ref, 0.75, 0.1)
        so("http://roblox.com/asset/?id=160740121", ref, 0.75, 0.75)
        so("http://roblox.com/asset/?id=168586621", ref, 1, 0.5)
        Shockwave(TorsoColor, cf(pos), 1, 1, 1, 1, 1, 1, 0.01)
        Shockwave2(TorsoColor, cf(pos), 0.35, 0.35, 0.35, 0.35, 0.35, 0.35, 0.01)
        MagniDamage(ref, 25, 10 * Bulletcount / 2, 12 * Bulletcount, 50, "Normal")
        so("http://www.roblox.com/asset/?id=199144089", BulletHole, 1, math.random(80, 120) / 100)
        Torso.Velocity = RootPart.CFrame.lookVector * -100
      end
      so("http://www.roblox.com/asset/?id=138084889", BulletHole, 1, 0.8)
      particleemitter.Enabled = false
      particleemitter2.Enabled = false
      Bulletcount = 0
      ammolabel.Text = "Ammo [" .. Bulletcount .. "]"
      for i = 0, 1, 0.12 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, -1) * angles(math.rad(-10), math.rad(10), math.rad(-90)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(13.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-17.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      gunfireeffect.Enabled = false
      gunfirelight.Enabled = false
      for i = 0, 1, 0.1 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(75)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      for i = 0, 1, 0.06 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      for i = 1, 6 - Bulletcount do
        local bulletpart = part(3, Character, "SmoothPlastic", 0, 0, TorsoColor, "Bullet", vt(0.2, 0.2, 0.2))
        bulletpart.Anchored = false
        bulletpart.Material = Enum.Material.SmoothPlastic
        bulletpart.CanCollide = true
        bulletpart.Friction = 1
        bulletpart.Velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        bulletpart.CFrame = cf(GunHandle.Position) * cf(math.random(-10, 10) / 100, 1, math.random(-10, 10) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        bulletmesh = Instance.new("FileMesh", bulletpart)
        bulletmesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
        bulletmesh.Scale = Vector3.new(1, 0.25, 0.25)
        game:GetService("Debris"):AddItem(bulletpart, 5)
      end
      for i = 0, 1, 0.1 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(15)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      for i = 0, 1, 0.1 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(45)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      end
      do
        Humanoid.WalkSpeed = 16 * speed.Value
        shoot = false
        gunidle = false
        gun = false
        canwalk = true
        canidle = true
        attack = false
      end
    end
  end
end

attackone = function()
  attack = true
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  con1 = LeftArm.Touched:connect(function(hit)
    Damagefunc(hit, 5, 7, 5, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=169445092", LeftArm, 1, 0.8)
  for i = 0, 1, 0.14 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(75)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.4)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  con1:disconnect()
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(75)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  con1 = LeftArm.Touched:connect(function(hit)
    Damagefunc(hit, 5, 7, 5, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=169445092", LeftArm, 1, 1)
  for i = 0, 1, 0.14 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(-75)), 0.4)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.4)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  con1:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  canwalk = false
  canidle = false
  Humanoid.WalkSpeed = 0 * speed.Value
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(20), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-75), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  con1 = LeftLeg.Touched:connect(function(hit)
    Damagefunc(hit, 5, 7, 5, "Normal", RootPart, 0.2, 1)
  end
)
  Torso.Velocity = RootPart.CFrame.lookVector * 50
  so("http://roblox.com/asset/?id=169445092", LeftLeg, 1, 1.2)
  Humanoid.WalkSpeed = 0 * speed.Value
  for i = 0, 1, 0.14 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-20)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(75), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.4)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.4)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5, 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  Humanoid.WalkSpeed = 16 * speed.Value
  con1:disconnect()
  canwalk = true
  canidle = true
  attack = false
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.16 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-120)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-7.5, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
  end
  so("http://roblox.com/asset/?id=169445092", LeftArm, 1, 0.6)
  for i = 0, 1, 0.14 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-15), math.rad(-90)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-7.5, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(180)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-180)), 0.15)
  end
  so("http://roblox.com/asset/?id=233091183", CoreHandle, 1, 1.5)
  Shockwave(TorsoColor, cf(CoreHandle.Position), 1, 1, 1, 1, 1, 1, 0.05)
  MagniDamage(CoreHandle, 8, 5, 7, 10, "Normal")
  for i = 0, 1, 0.14 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-15), math.rad(-90)), 0.3)
    GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
    CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-7.5, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(360)), 0.15)
    Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-360)), 0.15)
  end
  attack = false
end

mouse.Button1Down:connect(function()
  if gun == true and Bulletcount ~= 0 and shoot == false then
    shoot = true
    gun = false
  end
  if attack == false and gun == false then
    if attacktype == 1 then
      attacktype = 2
      attackone()
    else
      if attacktype == 2 then
        attacktype = 3
        attacktwo()
      else
        if attacktype == 3 then
          attacktype = 4
          attackthree()
        else
          if attacktype == 4 then
            attacktype = 1
            attackfour()
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
  end
))
end
)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "e" and gun == false and shoot == false and attack == false then
    GunStance()
  end
  if k == "e" and shoot == false and gun == true then
    gun = false
  end
  if k == "z" and gun == false and shoot == false and attack == false and co1 <= cooldown1 and skill1stam <= stamina then
    cooldown1 = 0
    subtractstamina(skill1stam)
    Reload()
  end
  if k == "x" and gun == true and shoot == false and Bulletcount >= 3 and co2 <= cooldown2 and skill2stam <= stamina then
    cooldown2 = 0
    subtractstamina(skill2stam)
    ShootCombo()
  end
  if k == "c" and gun == false and shoot == false and attack == false and co3 <= cooldown3 and skill3stam <= stamina then
    cooldown3 = 0
    subtractstamina(skill3stam)
    Sprint()
  end
  if k == "v" and gun == true and shoot == false and Bulletcount ~= 0 and co4 <= cooldown4 and skill4stam <= stamina then
    cooldown4 = 0
    subtractstamina(skill4stam)
    Overdrive()
  end
end
)
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
      v:Destroy()
    end
  end
end
)
game:GetService("RunService").Heartbeat:connect(function()
  updateskills()
  if aiming == true then
    local aim = CFrame.new(RootPart.Position, mouse.Hit.p)
    local direction = aim.lookVector
    local headingA = math.atan2(direction.x, direction.z)
    headingA = math.deg(headingA)
    Humanoid.AutoRotate = false
    RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 177), math.rad(0))
  else
    do
      Humanoid.AutoRotate = true
      healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
      staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
      bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
      bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
      bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
      bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
    end
  end
end
)
local sine = 0
local change = 1
local val = 0
fat.Event:connect(function()
  sine = sine + change
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velderp = RootPart.Velocity.y
  local hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if ((idle >= 500 and attack ~= false) or RootPart.Velocity.y > 1) and hitfloor == nil then
      Anim = "Jump"
      if attack == false then
        fat.Event:wait()
        Humanoid.WalkSpeed = 16 * speed.Value
        change = 2
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(30)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.15)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.15)
        CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5 * math.cos(sine / 45), 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
        Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 180 * math.cos(sine / 30)), math.rad(0 + 180 * math.cos(sine / 60))), 0.15)
        Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 - 180 * math.cos(sine / 45)), math.rad(0 - 180 * math.cos(sine / 75))), 0.15)
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(60)), 0.15)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-75)), 0.15)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
          GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.15)
          CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5 * math.cos(sine / 45), 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
          Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 180 * math.cos(sine / 30)), math.rad(0 + 180 * math.cos(sine / 60))), 0.15)
          Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 - 180 * math.cos(sine / 45)), math.rad(0 - 180 * math.cos(sine / 75))), 0.15)
        end
      else
        if torvel.x < 1 and torvel.z < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false and gunidle == false then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 15)) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5 + 2.5 * math.cos(sine / 15)) + -math.sin(sine / 15) / 10, math.rad(0), math.rad(45)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.025 * math.cos(sine / 15) + -math.sin(sine / 15) / 10, 0) * angles(math.rad(60 + 5 * math.cos(sine / 15)), math.rad(0), math.rad(15)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.025 * math.cos(sine / 15) + -math.sin(sine / 15) / 10, 0) * angles(math.rad(10), math.rad(0), math.rad(-15 - 5 * math.cos(sine / 15))), 0.3)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.9 - 0.1 * math.cos(sine / 15), 0.1) * angles(math.rad(0), math.rad(75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1.1, -0.9 - 0.1 * math.cos(sine / 15), 0.1) * angles(math.rad(0), math.rad(-60), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
            GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
            CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5 * math.cos(sine / 45), 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
            Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 180 * math.cos(sine / 30)), math.rad(0 + 180 * math.cos(sine / 60))), 0.15)
            Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 - 180 * math.cos(sine / 45)), math.rad(0 - 180 * math.cos(sine / 75))), 0.15)
          else
            if attack == true and gunidle == true then
              fat.Event:wait()
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1 + 0.1 * math.cos(sine / 60)) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 2.5 * math.cos(sine / 60)) + -math.sin(sine / 60) / 10, math.rad(0), math.rad(75)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 60), 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -0.1 - 0.1 * math.cos(sine / 60), -0.5) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
              GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, -0.5, -1) * angles(math.rad(-90), math.rad(15), math.rad(0)), 0.3)
              CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5 * math.cos(sine / 45), 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
              Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 180 * math.cos(sine / 30)), math.rad(0 + 180 * math.cos(sine / 60))), 0.15)
              Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 - 180 * math.cos(sine / 45)), math.rad(0 - 180 * math.cos(sine / 75))), 0.15)
            else
              if attack == true and gunidle == false and canidle == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
              end
            end
          end
        else
          if torvel.x > 2 or torvel.z > 2 and torvel.x < 22 and torvel.z < 22 and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 4)) * angles(math.rad(10), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(5 * math.cos(sine / 8))), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5 - 2.5 * math.cos(sine / 4)), math.rad(0), math.rad(-5 * math.cos(sine / 8)) + Head.RotVelocity.Y / 15), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.025 * math.cos(sine / 4) + -math.sin(sine / 4) / 12, 0) * angles(math.rad(75 + 5 * math.cos(sine / 4)), math.rad(0), math.rad(30)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-45 * math.cos(sine / 8)) + -math.sin(sine / 8) / 4, math.rad(0), math.rad(-5)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 8) / 2, 0.5 * math.cos(sine / 8) / 2) * angles(math.rad(-15 - 30 * math.cos(sine / 8)) + -math.sin(sine / 8) / 2.5, math.rad(90 - 5 * math.cos(sine / 8)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 8) / 2, -0.5 * math.cos(sine / 8) / 2) * angles(math.rad(-15 + 30 * math.cos(sine / 8)) + math.sin(sine / 8) / 2.5, math.rad(-90 - 5 * math.cos(sine / 8)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
              CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5 * math.cos(sine / 45), 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
              Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 180 * math.cos(sine / 30)), math.rad(0 + 180 * math.cos(sine / 60))), 0.15)
              Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 - 180 * math.cos(sine / 45)), math.rad(0 - 180 * math.cos(sine / 75))), 0.15)
            else
              if attack == true and gunidle == false and canwalk == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 8) / 2, 0.5 * math.cos(sine / 8) / 2) * angles(math.rad(-15 - 45 * math.cos(sine / 8)) + -math.sin(sine / 8) / 2.5, math.rad(90 - 5 * math.cos(sine / 8)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 8) / 2, -0.5 * math.cos(sine / 8) / 2) * angles(math.rad(-15 + 45 * math.cos(sine / 8)) + math.sin(sine / 8) / 2.5, math.rad(-90 - 5 * math.cos(sine / 8)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              end
            end
          else
            if torvel.x >= 22 or torvel.z >= 22 and hitfloor ~= nil then
              Anim = "Run"
              if attack == false then
                fat.Event:wait()
                change = 2
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.05 + 0.1 * math.cos(sine / 4)) * angles(math.rad(5), math.rad(0), math.rad(5 * math.cos(sine / 8))), 0.15)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 5 * math.cos(sine / 4)), math.rad(0), math.rad(-5 * math.cos(sine / 8))), 0.15)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(75 + 5 * math.cos(sine / 4)), math.rad(0), math.rad(30)), 0.15)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-45 * math.cos(sine / 8)), math.rad(0), math.rad(-5)), 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 8) / 2, 0.5 * math.cos(sine / 8) / 2) * angles(math.rad(-15 - 45 * math.cos(sine / 8)) + -math.sin(sine / 8) / 2.5, math.rad(90 - 5 * math.cos(sine / 8)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 8) / 2, -0.5 * math.cos(sine / 8) / 2) * angles(math.rad(-15 + 45 * math.cos(sine / 8)) + math.sin(sine / 8) / 2.5, math.rad(-90 - 5 * math.cos(sine / 8)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                GunHandleweld.C0 = clerp(GunHandleweld.C0, cf(0, 0, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.15)
                CoreHandleweld.C0 = clerp(CoreHandleweld.C0, cf(-3, 0.5 * math.cos(sine / 45), 3) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.15)
                Ring1ReferencePointweld.C0 = clerp(Ring1ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 180 * math.cos(sine / 30)), math.rad(0 + 180 * math.cos(sine / 60))), 0.15)
                Ring2ReferencePointweld.C0 = clerp(Ring2ReferencePointweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 - 180 * math.cos(sine / 45)), math.rad(0 - 180 * math.cos(sine / 75))), 0.15)
              else
                if attack == true and gunidle == false and canwalk == true then
                  fat.Event:wait()
                  RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 8) / 2, 0.5 * math.cos(sine / 8) / 2) * angles(math.rad(0 - 45 * math.cos(sine / 8)) + -math.sin(sine / 8) / 2.5, math.rad(90 - 5 * math.cos(sine / 8)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 8) / 2, -0.5 * math.cos(sine / 8) / 2) * angles(math.rad(0 + 45 * math.cos(sine / 8)) + math.sin(sine / 8) / 2.5, math.rad(-90 - 5 * math.cos(sine / 8)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                end
              end
            end
          end
        end
      end
    end
  end
end
)

