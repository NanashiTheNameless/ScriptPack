--Runs with no error. Still no actual script running--

wait(3)
script.Parent = nil
Character = game.Players.localPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
TagService = require(game:GetService("ReplicatedStorage"):WaitForChild("TagService"))
Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
hitsounds = {"199149137", "199149186", "199149221", "199149235", "199149269", "199149297"}
blocksounds = {"199148933", "199148947"}
armorsounds = {"199149321", "199149338", "199149367", "199149409", "199149452"}
woosh = {Heavy1 = "320557353", Heavy2 = "320557382", Heavy3 = "320557453", Heavy4 = "199144226", Heavy5 = "203691447", Heavy6 = "203691467", Heavy7 = "203691492", Light1 = "320557413", Light2 = "320557487", Light3 = "199145095", Light4 = "199145146", Light5 = "199145887", Light6 = "199145913", Light7 = "199145841", Medium1 = "320557518", Medium2 = "320557537", Medium3 = "320557563", Medium4 = "199145204"}
music = {Breaking = "179281636", FinalReckoning = "357375770", NotDeadYet = "346175829", Intense = "151514610", JumpP1 = "160536628", JumpP2 = "60536666", SonsOfWar = "158929777", WrathOfSea = "165520893", ProtectorsOfEarth = "160542922", SkyTitans = "179282324", ArchAngel = "144043274", Anticipation = "168614529", TheMartyred = "186849544", AwakeP1 = "335631255", AwakeP2 = "335631297", ReadyAimFireP1 = "342455387", ReadyAimFireP2 = "342455399", DarkLordP1 = "209567483", DarkLordP2 = "209567529", BloodDrainP1 = "162914123", BloodDrainP2 = "162914203", DanceOfSwords = "320473062", Opal = "286415112", Calamity = "190454307", Hypnotica = "155968128", Nemisis = "160453802", Breathe = "276963903", GateToTheRift = "270655227", InfernalBeserking = "244143404", Trust = "246184492", AwakeningTheProject = "245121821", BloodPain = "242545577", Chaos = "247241693", NightmareFictionHighStake = "248062278", TheWhiteWeapon = "247236446", Gale = "256851659", ImperialCode = "256848383", Blitzkrieg = "306431437", RhapsodyRage = "348690251", TheGodFist = "348541501", BattleForSoul = "321185592", TheDarkColossus = "305976780", EmpireOfAngels = "302580452", Kronos = "302205297", Exorcist = "299796054", CrimsonFlames = "297799220", UltimatePower = "295753229", DrivingInTheDark = "295753229", AscendToPower = "293860654", GodOfTheSun = "293612495", DarkRider = "293861765", Vengeance = "293375555", SoundOfWar = "293376196", HellsCrusaders = "293012202", Legend = "293011823", RisingSouls = "290524959"}
misc = {GroundSlam = "199145477", LaserSlash = "199145497", RailGunFire = "199145534", Charge1 = "199145659", Charge2 = "169380469", Charge3 = "169380479", EmptyGun = "203691822", GunShoot = "203691837", Stomp1 = "200632875", Stomp2 = "200632561", TelsaCannonCharge = "169445572", TelsaCannonShoot = "169445602", AncientHymm = "245313442"}
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
it = Instance.new
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
equipped = false
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
ShotTarget = RootPart
player = nil
mana = 0
Humanoid:findFirstChild("Animator"):Destroy()
print("Harbaceus loaded.")
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
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
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
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
m = Instance.new("Model", Character)
m.Name = "Harbaceus"
Handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handleweld = weld(m, Character["Left Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149982452, 0.0603427887, 0.939049006, 1, 4.2277577e-08, 2.58397517e-08, 2.5839757e-08, 0, -0.999999881, -4.22775805e-08, 0.999999762, 0))
mesh("SpecialMesh", Handle, Enum.MeshType.Head, "", Vector3.new(0, 0, 0), Vector3.new(2.5, 5.5, 2.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.979997635, 0, 0, -4.37113812e-08, 0.999999762, 7.55569324e-16, -1, -4.37113812e-08, 1.0658141e-14, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(12, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.489999771, -4.76837158e-07, 1, 8.8817842e-15, -1.42108547e-14, 8.8817842e-15, 0.999999762, -1.09244243e-15, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(2.04999995, 2, 2.04999995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699998856, 0, 0, -3.78551768e-08, 0.999999762, 5.07983287e-16, -0.866025627, -3.7279051e-08, 0.499999374, 0.499999583, -1.68824528e-08, 0.86602515))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699998856, 0, 4.76837158e-07, -1.13133867e-08, 0.999999762, 5.96046235e-08, -0.258820474, -6.62924933e-08, 0.965924978, 0.965925455, -4.84303975e-09, 0.258820355))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699998856, 0, 0, -3.09086339e-08, 0.999999762, 2.14300262e-16, -0.707107186, -7.78761162e-08, 0.707106054, 0.707106352, 7.78760949e-08, 0.707106888))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699998856, 4.76837158e-07, 0, -4.22219557e-08, 0.999999762, 6.92600047e-16, -0.965925872, -5.47616068e-08, 0.258818686, 0.258818805, 6.6878143e-09, 0.965925395))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699998856, 0, 0, -4.37113812e-08, 0.999999762, 7.55569324e-16, -1, -4.37113812e-08, 1.0658141e-14, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699998856, 4.76837158e-07, 0, -2.18557243e-08, 0.999999762, -1.68434884e-16, -0.500000834, -4.27222204e-08, 0.866024673, 0.866024911, -3.72267621e-08, 0.500000715))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00999832, -4.76837158e-07, -4.76837158e-07, -3.09086339e-08, 0.999999762, 2.14300262e-16, -0.707107186, -7.78761162e-08, 0.707106054, 0.707106352, 7.78760949e-08, 0.707106888))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00999832, -7.15255737e-07, 4.76837158e-07, -1.13133867e-08, 0.999999762, 5.96046235e-08, -0.258820474, -6.62924933e-08, 0.965924978, 0.965925455, -4.84303975e-09, 0.258820355))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00999832, 4.76837158e-07, -7.15255737e-07, -4.22219557e-08, 0.999999762, 6.92600047e-16, -0.965925872, -5.47616068e-08, 0.258818686, 0.258818805, 6.6878143e-09, 0.965925395))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00999832, -4.76837158e-07, -5.96046448e-07, -3.78551768e-08, 0.999999762, 5.07983287e-16, -0.866025627, -3.7279051e-08, 0.499999374, 0.499999583, -1.68824528e-08, 0.86602515))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00999832, 0, 0, -2.18557243e-08, 0.999999762, -1.68434884e-16, -0.500000834, -4.27222204e-08, 0.866024673, 0.866024911, -3.72267621e-08, 0.500000715))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00999832, 0, -7.15255737e-07, -4.37113812e-08, 0.999999762, 7.55569324e-16, -1, -4.37113812e-08, 1.0658141e-14, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.31999779, -4.76837158e-07, -5.96046448e-07, -3.78551768e-08, 0.999999762, 5.07983287e-16, -0.866025627, -3.7279051e-08, 0.499999374, 0.499999583, -1.68824528e-08, 0.86602515))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.31999779, -7.15255737e-07, 4.76837158e-07, -1.13133867e-08, 0.999999762, 5.96046235e-08, -0.258820474, -6.62924933e-08, 0.965924978, 0.965925455, -4.84303975e-09, 0.258820355))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.31999779, -4.76837158e-07, -4.76837158e-07, -3.09086339e-08, 0.999999762, 2.14300262e-16, -0.707107186, -7.78761162e-08, 0.707106054, 0.707106352, 7.78760949e-08, 0.707106888))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.31999779, 4.76837158e-07, -7.15255737e-07, -4.22219557e-08, 0.999999762, 6.92600047e-16, -0.965925872, -5.47616068e-08, 0.258818686, 0.258818805, 6.6878143e-09, 0.965925395))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.31999779, 0, 0, -2.18557243e-08, 0.999999762, -1.68434884e-16, -0.500000834, -4.27222204e-08, 0.866024673, 0.866024911, -3.72267621e-08, 0.500000715))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.31999779, 0, -7.15255737e-07, -4.37113812e-08, 0.999999762, 7.55569324e-16, -1, -4.37113812e-08, 1.0658141e-14, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.61999893, 0, 0, -2.18557243e-08, 0.999999762, -1.68434884e-16, -0.500000834, -4.27222204e-08, 0.866024673, 0.866024911, -3.72267621e-08, 0.500000715))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.61999893, 0, -4.76837158e-07, -3.09086339e-08, 0.999999762, 2.14300262e-16, -0.707107186, -7.78761162e-08, 0.707106054, 0.707106352, 7.78760949e-08, 0.707106888))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.61999893, 4.76837158e-07, -4.76837158e-07, -4.22219557e-08, 0.999999762, 6.92600047e-16, -0.965925872, -5.47616068e-08, 0.258818686, 0.258818805, 6.6878143e-09, 0.965925395))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.61999893, -4.76837158e-07, -3.57627869e-07, -3.78551768e-08, 0.999999762, 5.07983287e-16, -0.866025627, -3.7279051e-08, 0.499999374, 0.499999583, -1.68824528e-08, 0.86602515))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.61999893, 0, -4.76837158e-07, -4.37113812e-08, 0.999999762, 7.55569324e-16, -1, -4.37113812e-08, 1.0658141e-14, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.61999893, -4.76837158e-07, 4.76837158e-07, -1.13133867e-08, 0.999999762, 5.96046235e-08, -0.258820474, -6.62924933e-08, 0.965924978, 0.965925455, -4.84303975e-09, 0.258820355))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.9299984, -4.76837158e-07, -3.57627869e-07, -3.78551768e-08, 0.999999762, 5.07983287e-16, -0.866025627, -3.7279051e-08, 0.499999374, 0.499999583, -1.68824528e-08, 0.86602515))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.9299984, -4.76837158e-07, 4.76837158e-07, -1.13133867e-08, 0.999999762, 5.96046235e-08, -0.258820474, -6.62924933e-08, 0.965924978, 0.965925455, -4.84303975e-09, 0.258820355))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.9299984, 0, -4.76837158e-07, -3.09086339e-08, 0.999999762, 2.14300262e-16, -0.707107186, -7.78761162e-08, 0.707106054, 0.707106352, 7.78760949e-08, 0.707106888))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.9299984, 4.76837158e-07, -4.76837158e-07, -4.22219557e-08, 0.999999762, 6.92600047e-16, -0.965925872, -5.47616068e-08, 0.258818686, 0.258818805, 6.6878143e-09, 0.965925395))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.9299984, 0, -4.76837158e-07, -4.37113812e-08, 0.999999762, 7.55569324e-16, -1, -4.37113812e-08, 1.0658141e-14, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.9299984, 0, 0, -2.18557243e-08, 0.999999762, -1.68434884e-16, -0.500000834, -4.27222204e-08, 0.866024673, 0.866024911, -3.72267621e-08, 0.500000715))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2, 2))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.42128563, -1.9869709, 0, -4.37113954e-08, -0.707106709, -0.707106411, 1.77635684e-14, 0.70710659, -0.707106531, 1, -3.09086055e-08, -3.09086161e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 5, 0.600000024))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.42128563, -1.9869709, 0, -4.37113954e-08, -0.707106709, -0.707106411, 1.77635684e-14, 0.70710659, -0.707106531, 1, -3.09086055e-08, -3.09086161e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.735219002, -2.99343491, 4.76837158e-07, -4.37113812e-08, -0.500000179, -0.866024792, 1.0658141e-14, 0.866024971, -0.50000006, 1, -2.18556941e-08, -3.7855159e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 2.5, 0.600000024))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.735219002, -2.99343491, 4.76837158e-07, -4.37113812e-08, -0.500000179, -0.866024792, 1.0658141e-14, 0.866024971, -0.50000006, 1, -2.18556941e-08, -3.7855159e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.735218048, -2.99343491, -9.53674316e-07, -4.37114167e-08, -0.500000179, 0.866024792, 1.0658141e-14, 0.866024971, 0.50000006, -1, 2.18556941e-08, -3.78551199e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.42128563, -1.9869709, -4.76837158e-07, -4.37114096e-08, -0.707106709, 0.707106411, 0, 0.70710659, 0.707106531, -1, 3.09086126e-08, -3.09085912e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.42128563, -1.9869709, -4.76837158e-07, -4.37114096e-08, -0.707106709, 0.707106411, 0, 0.70710659, 0.707106531, -1, 3.09086126e-08, -3.09085912e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 5, 0.600000024))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.735218048, -2.99343491, -9.53674316e-07, -4.37114167e-08, -0.500000179, 0.866024792, 1.0658141e-14, 0.866024971, 0.50000006, -1, 2.18556941e-08, -3.78551199e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 2.5, 0.600000024))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.969996214, -3.38000107, 0, -4.37113918e-08, -7.45057946e-07, -0.999999642, 1.24344979e-14, 0.999999881, -7.45057775e-07, 1, -2.48689958e-14, -4.37113883e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 2.5, 0.600000024))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.969996214, -3.38000107, 0, -4.37113918e-08, -7.45057946e-07, -0.999999642, 1.24344979e-14, 0.999999881, -7.45057775e-07, 1, -2.48689958e-14, -4.37113883e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.969997168, -3.38000107, 0, -4.37113883e-08, -7.45057946e-07, 0.999999642, 7.10542736e-15, 0.999999881, 7.45057775e-07, -1, 2.84217094e-14, -4.37113563e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 2.5, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.0699966, -3.38000298, 0, -4.37113918e-08, -7.45057946e-07, -0.999999642, 1.24344979e-14, 0.999999881, -7.45057775e-07, 1, -2.48689958e-14, -4.37113883e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.354999989, 0.0700000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.63521862, -2.99343491, 4.76837158e-07, -4.37113812e-08, -0.500000179, -0.866024792, 1.0658141e-14, 0.866024971, -0.50000006, 1, -2.18556941e-08, -3.7855159e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.349999994, 0.0700000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.32128525, -1.98696899, 0, -4.37113954e-08, -0.707106709, -0.707106411, 1.77635684e-14, 0.70710659, -0.707106531, 1, -3.09086055e-08, -3.09086161e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.699999988, 0.0700000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.06929064, -3.38000107, -4.76837158e-07, -2.06416678e-15, -7.45057946e-07, 0.999999523, 4.39843859e-08, 0.999999881, 7.45057775e-07, -0.999999881, 4.39843504e-08, 1.77635684e-14))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.354999989, 0.0700000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.635828018, -2.99308205, -4.76837158e-07, -1.77635684e-15, -0.500000179, 0.866024792, 0, 0.866024971, 0.50000006, -0.999999881, 2.21286811e-08, 0))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.349999994, 0.0700000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.969289303, -3.37999535, -4.76837158e-07, -2.06416678e-15, -7.45057946e-07, 0.999999523, 4.39843859e-08, 0.999999881, 7.45057775e-07, -0.999999881, 4.39843504e-08, 1.77635684e-14))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 2.5, 0.600000024))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.32178497, -1.98646927, 0, -1.24344979e-14, -0.707106709, 0.707106411, 7.10542736e-15, 0.70710665, 0.707106471, -0.999999881, 1.30757876e-08, 7.10542736e-15))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.699999988, 0.0700000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-07, -4.1099987, -1.43051147e-06, 1, 8.8817842e-15, -1.42108547e-14, 8.8817842e-15, 0.999999762, -1.09244243e-15, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.06374645, -3.96995544, -1.43051147e-06, 0.965925813, 0.258819044, 1.87676186e-08, -0.258819073, 0.965925574, 1.09422427e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.05499935, -3.55936432, -1.43051147e-06, 0.866025388, 0.499999911, -2.17123013e-08, -0.5, 0.866025269, -3.8465835e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.90620995, -2.90620995, -1.43051147e-06, 0.707106769, 0.70710665, -9.24522681e-11, -0.707106709, 0.70710665, 2.98947604e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.55936432, -2.05500031, -1.43051147e-06, 0.499999881, 0.866025209, -5.09410967e-08, -0.866025329, 0.499999791, 2.17123013e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.55936432, -2.05500031, -1.43051147e-06, 0.499999881, 0.866025209, -5.09410967e-08, -0.866025329, 0.499999791, 2.17123013e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.96995544, -1.06374741, -1.43051147e-06, 0.258819044, 0.965925634, -1.09422444e-08, -0.965925813, 0.258819044, -1.87676186e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-07, -4.1099987, -4.76837158e-07, 1, 8.8817842e-15, -1.42108547e-14, 1.59872116e-14, 0.999999881, -1.49011555e-07, -7.40313657e-15, 1.49011598e-07, 0.999999642))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(6.5, 6.5, 16))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-07, -4.07999611, -1.16929173, 1, 8.8817842e-15, -1.42108547e-14, 8.8817842e-15, 0.999999762, -1.09244243e-15, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.05598116, -3.94097519, -1.16929173, 0.965925813, 0.258819044, 1.87676186e-08, -0.258819073, 0.965925574, 1.09422427e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.03999805, -3.53338242, -1.16929173, 0.866025388, 0.499999911, -2.17123013e-08, -0.5, 0.866025269, -3.8465835e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.88499451, -2.88499451, -1.16929173, 0.707106769, 0.70710665, -9.24522681e-11, -0.707106709, 0.70710665, 2.98947604e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.53338242, -2.03999901, -1.16929173, 0.499999881, 0.866025209, -5.09410967e-08, -0.866025329, 0.499999791, 2.17123013e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.94097519, -1.05598164, -1.16929173, 0.258818954, 0.965925574, -1.094224e-08, -0.965925694, 0.258818924, -1.87676221e-08, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-07, -4.08000183, 1.16999853, 1, 7.81597009e-14, 7.62850789e-07, 1.59872116e-14, 0.999999881, -1.49011555e-07, -7.62851073e-07, 1.49011584e-07, 0.999999642))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
EffectPart = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, TorsoColor, "EffectPart", Vector3.new(0.200000003, 0.200000003, 0.200000003))
EffectPartweld = weld(m, Handle, EffectPart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -4.07999611, -1.46929336, 1, 8.8817842e-15, -1.42108547e-14, 8.8817842e-15, 0.999999762, -1.09244243e-15, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", EffectPart, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.05598116, -3.940979, 1.16999888, 0.965925813, 0.258818984, 7.78726587e-07, -0.258819073, 0.965925574, -1.38069311e-07, -7.89761543e-07, -2.14996884e-14, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.03999901, -3.53338432, 1.16999972, 0.866025388, 0.499999881, 7.38246626e-07, -0.5, 0.866025269, -9.80704584e-08, -7.62851016e-07, -1.49011612e-07, 0.999999642))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.88499737, -2.88499641, 1.17000055, 0.707106769, 0.70710665, 7.44965348e-07, -0.707106709, 0.707106531, -1.78721422e-07, -6.83953544e-07, -4.47034807e-07, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.53338432, -2.03999901, 1.17000151, 0.499999881, 0.86602509, 7.23919015e-07, -0.866025329, 0.499999821, -2.01805037e-07, -5.58445663e-07, -5.96046391e-07, 0.999999642))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.940979, -1.05598259, 1.17000198, 0.258818954, 0.965925515, 7.04313265e-07, -0.965925694, 0.258818924, -2.12482661e-07, -3.94880828e-07, -6.85453358e-07, 0.999999523))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 3))
Effect2Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, TorsoColor, "Effect2Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Effect2Partweld = weld(m, Handle, Effect2Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -4.07999611, 1.46999896, 1, 8.8817842e-15, -1.42108547e-14, 8.8817842e-15, 0.999999762, -1.09244243e-15, -1.0658141e-14, -1.09244243e-15, 0.999999523))
mesh("SpecialMesh", Effect2Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-07, -4.11000061, -0.700001717, 1, 8.8817842e-15, -1.42108547e-14, 1.59872116e-14, 0.999999881, -1.49011555e-07, -7.40313657e-15, 1.49011598e-07, 0.999999642))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(6.5, 6.5, 8))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158e-07, -4.11000061, 0.699997306, 1, 8.8817842e-15, -1.42108547e-14, 1.59872116e-14, 0.999999881, -1.49011555e-07, -7.40313657e-15, 1.49011598e-07, 0.999999642))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(6.5, 6.5, 8))
Hitbox = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Hitbox", Vector3.new(1.5, 5, 1.5))
Hitboxweld = weld(m, Handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.43051147e-06, 4.11000061, 1, -1.643782e-08, -4.22775805e-08, 4.22775734e-08, 0, 0.999999642, -1.64378289e-08, -0.999999881, 1.78739389e-15))
Handleweld.Part0 = Torso
Handleweld.Part1 = Handle
Handleweld.C0 = cf(-1.5, 0.5, 0.75) * angles(math.rad(-90), math.rad(-45), math.rad(90))
Hitbox.CanCollide = false
hammeraura = Instance.new("Sound", Hitbox)
hammeraura.SoundId = "http://roblox.com/asset/?id=143301643"
hammeraura.Looped = true
hammeraura.Pitch = 0
hammeraura.Volume = 0
for i,v in pairs(Character:GetChildren()) do
  if v:IsA("Model") then
    for _,c in pairs(v:GetChildren()) do
      if c:IsA("Part") then
        c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
      end
    end
  end
end
wait(0.1)
hammeraura:Play()
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
local co1 = 0
local co2 = 0
local co3 = 0
local co4 = 0
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 2
local critdamageaddmax = 7
local maxstamina = 100
local stamina = 0
local skill1stam = 0
local skill2stam = 0
local skill3stam = 0
local skill4stam = 0
local recovermana = 4
local defensevalue = 1.2
local speedvalue = 1
local mindamage = 4
local maxdamage = 7
local damagevalue = 1
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
text1 = makelabel(framesk1, "[C] Ability 3 (Finished)")
text2 = makelabel(framesk2, "[V] Ability 4 (Does nothing at the moment)")
text3 = makelabel(framesk3, "[X] Ability 2 (Finished)")
text4 = makelabel(framesk4, "[Z] Ability 1 (Finished)")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0.23921568627451, 0.67058823529412, 1))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.23921568627451, 0.67058823529412, 1))
staminatext = makelabel(staminabar, "Mana")
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
    swait()
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
swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Stepped:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Stepped:wait(0)
    end
  end
end
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
    swait()
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
  c.Parent = workspace
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  c.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", c)
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
      c.Transparency = 1
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
    if blocked == false then
      local D = math.random(minim, maxim) * damagea.Value
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
      if not h.Parent:FindFirstChild("Stats") then
        do
          h.Health = h.Health - D
          makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
          local D = math.random(minim, maxim) * damagea.Value
          if h.Parent:FindFirstChild("Stats") then
            D = D / h.Parent:FindFirstChild("Stats").Defence.Value
          else
          end
          if not h.Parent:FindFirstChild("Stats") then
            do
              h.Health = h.Health - D / 2
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
                    if Type == "LaserShot" then
                      so("http://www.roblox.com/asset/?id=201858072", hit, 1, math.random(100, 200) / 100)
                      so("http://www.roblox.com/asset/?id=180204650", hit, 1, math.random(50, 100) / 100)
                      so("http://www.roblox.com/asset/?id=151790502", hit, 1, math.random(100, 200) / 100)
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
JumpEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(90), 0, 0)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
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
OrbEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
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
BlockShockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
CylinderShockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
Laser2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
Laser3 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
SphereShockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
SphereShockwave2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
Shockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
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
canwalk = true
canidle = true
aimtorso = false
MMouse = mouse
gyro = Instance.new("BodyGyro")
gyro.Parent = nil
gyro.P = 10000000
gyro.D = 1000
gyro.MaxTorque = Vector3.new(0, 10000000, 0)
EquiporUnequip = function()
  attack = true
  if equipped == false then
    equipped = true
    so("http://roblox.com/asset/?id=200633077", Hitbox, 1, 0.8)
    for i = 0, 1, 0.75 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(15)), 0.6)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(145), math.rad(0), math.rad(15)), 0.6)
    end
    for i = 0, 1, 0.15 do
      fat.Event:wait()
      hammeraura.Pitch = 0 + 0.8 * i
      hammeraura.Volume = 0 + 1 * i
      EffectPart.Transparency = 1 - 2 * i
      Effect2Part.Transparency = 1 - 2 * i
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.6)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(210), math.rad(30), math.rad(30)), 0.6)
    end
    hammeraura.Pitch = 0.8
    hammeraura.Volume = 1
    Handleweld.Part0 = LeftArm
    Handleweld.Part1 = Handle
    Handleweld.C0 = cf(0, 0, -0.5) * angles(math.rad(-30), math.rad(-90), math.rad(0))
    for i = 0, 1, 0.5 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(45)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(15)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(135), math.rad(0), math.rad(-30)), 0.45)
      Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, -0.5) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    end
  else
    do
      if equipped == true then
        equipped = false
        so("http://roblox.com/asset/?id=200633029", Hitbox, 1, 0.8)
        for i = 0, 1, 0.75 do
          fat.Event:wait()
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.45)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.45)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(15)), 0.6)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(145), math.rad(0), math.rad(15)), 0.6)
          Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, -0.5) * angles(math.rad(-30), math.rad(-90), math.rad(0)), 0.3)
        end
        for i = 0, 1, 0.15 do
          fat.Event:wait()
          hammeraura.Pitch = 0.8 - 0.8 * i
          hammeraura.Volume = 1 - 1 * i
          EffectPart.Transparency = 0 + 2 * i
          Effect2Part.Transparency = 0 + 2 * i
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.45)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15)), 0.45)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.6)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(210), math.rad(30), math.rad(30)), 0.6)
          Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, -0.5) * angles(math.rad(-30), math.rad(-90), math.rad(0)), 0.3)
        end
        hammeraura.Pitch = 0
        hammeraura.Volume = 0
        Handleweld.Part0 = Torso
        Handleweld.Part1 = Handle
        Handleweld.C0 = cf(-1.5, 0.5, 0.75) * angles(math.rad(-90), math.rad(-45), math.rad(90))
        for i = 0, 1, 0.75 do
          fat.Event:wait()
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.45)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.45)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(15)), 0.6)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(145), math.rad(0), math.rad(15)), 0.6)
        end
      end
      do
        attack = false
      end
    end
  end
end
unequipattackone = function()
  attack = true
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-45)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(60), math.rad(0), math.rad(-60)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.45)
  end
  con1 = LeftArm.Touched:connect(function(hit)
    Damagefunc(hit, 4, 6, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=200632136", LeftArm, 1, 1)
  Torso.Velocity = RootPart.CFrame.lookVector * 25
  for i = 0, 1, 0.25 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(-10), math.rad(45)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.45)
  end
  con1:disconnect()
  attack = false
end
unequipattacktwo = function()
  canwalk = false
  canidle = false
  attack = true
  Humanoid.WalkSpeed = 0 * speed.Value
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(-10), math.rad(-30)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.25) * angles(math.rad(60), math.rad(0), math.rad(15)), 0.45)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, -0.5) * angles(math.rad(-30), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * angles(math.rad(20), math.rad(-60), math.rad(0)) * angles(math.rad(-7.5), math.rad(0), math.rad(0)), 0.45)
  end
  con1 = RightLeg.Touched:connect(function(hit)
    Damagefunc(hit, 4, 6, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=200632211", RightLeg, 1, 1)
  Torso.Velocity = RootPart.CFrame.lookVector * 25
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(-10), math.rad(-15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-45), math.rad(0), math.rad(-15)), 0.45)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, -0.5) * angles(math.rad(75), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * angles(math.rad(-20), math.rad(-60), math.rad(0)) * angles(math.rad(-7.5), math.rad(0), math.rad(0)), 0.45)
  end
  Humanoid.WalkSpeed = 16 * speed.Value
  canwalk = true
  canidle = true
  con1:disconnect()
  attack = false
end
unequipattackthree = function()
  attack = true
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(0), math.rad(75)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-15)), 0.45)
  end
  con1 = RightArm.Touched:connect(function(hit)
    Damagefunc(hit, 4, 6, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=200632136", RightArm, 1, 0.8)
  Torso.Velocity = RootPart.CFrame.lookVector * 25
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(45)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(75)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.45)
  end
  con1:disconnect()
  attack = false
end
unequipattackfour = function()
  canidle = false
  canwalk = false
  attack = true
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.25) * angles(math.rad(20), math.rad(0), math.rad(-45)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.45)
    RH.C0 = clerp(RH.C0, cf(0.8, -0.75, -0.1) * angles(math.rad(-10), math.rad(75), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1.25, -0.65, -0.25) * angles(math.rad(20), math.rad(-45), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.45)
  end
  con1 = RightLeg.Touched:connect(function(hit)
    Damagefunc(hit, 4, 6, 5, "Normal", RootPart, 0.2, 1)
  end)
  con2 = LeftLeg.Touched:connect(function(hit)
    Damagefunc(hit, 4, 6, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 1)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    Torso.Velocity = RootPart.CFrame.lookVector * 25
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(-10), math.rad(0), math.rad(45 + 360 * i)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-75), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-75), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  canidle = true
  canwalk = true
  attack = false
end
equipattackone = function()
  attack = true
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(-5), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(165), math.rad(30), math.rad(-60)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -1, -1) * angles(math.rad(-60), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=203691447", Hitbox, 1, 0.9)
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(75)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.75, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(255), math.rad(90), math.rad(-165)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -1.5, -0.5) * angles(math.rad(-120), math.rad(0), math.rad(0)), 0.3)
  end
  con1:disconnect()
  attack = false
end
equipattacktwo = function()
  attack = true
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-105)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(75)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.75, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(235), math.rad(90), math.rad(-165)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -1.5, -0.5) * angles(math.rad(-120), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=203691467", Hitbox, 1, 0.9)
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(-5), math.rad(-45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(175), math.rad(30), math.rad(-105)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -1.5, -0.5) * angles(math.rad(-120), math.rad(0), math.rad(0)), 0.3)
  end
  con1:disconnect()
  attack = false
end
equipattackthree = function()
  attack = true
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-1, -0.6, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end)
  for i = 1, 3 do
    so("http://roblox.com/asset/?id=203691492", Hitbox, 1, 0.9)
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30 - 360 * i)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
      Handleweld.C0 = clerp(Handleweld.C0, cf(-1, -0.6, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)), 0.3)
    end
  end
  con1:disconnect()
  attack = false
end
equipattackfour = function()
  attack = true
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(135), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(135), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -0.25, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=203691467", Hitbox, 1, 1.1)
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.25, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.25, -0.5) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -0.25, -0.5) * angles(math.rad(-30), math.rad(30), math.rad(-45)), 0.3)
  end
  con1:disconnect()
  attack = false
end
Ability1 = function()
  attack = true
  holdz = true
  local prepare = 1
  damagebonus = 1
  gyro.Parent = RootPart
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 8 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(60), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(60), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-1, -0.6, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)), 0.3)
  end
  so("http://roblox.com/asset/?id=2101137", Hitbox, 1, math.random(100, 150) / 100)
  while holdz == true do
    do
      for i = 0, 1, 0.5 do
        fat.Event:wait()
        Humanoid.WalkSpeed = 8 * speed.Value
        BlockShockwave(TorsoColor, cf(Effect2Part.Position), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0 + prepare), math.rad(0), math.rad(-75 - prepare)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(60), math.rad(0), math.rad(-45 + prepare * 1.5)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(60), math.rad(0), math.rad(45 + prepare * 1.5)), 0.3)
        Handleweld.C0 = clerp(Handleweld.C0, cf(-1, -0.6, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)), 0.3)
      end
    end
    prepare = prepare + 1
    damagebonus = damagebonus + 1
    print(damagebonus)
    if holdz == false or damagebonus == 20 then
      damagebonus = damagebonus / 2
      holdz = false
      print("Damage capability multiplied by " .. damagebonus .. ".")
    end
  end
  if holdz == false or damagebonus == 10 then
    holdz = false
    con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 5 * (damagebonus / 2), 5, "Normal", RootPart, 0.2, 1)
  end)
    so("http://roblox.com/asset/?id=203691492", Hitbox, 1, 1.1)
    for i = 0, 1, 0.08 do
      fat.Event:wait()
      BlockShockwave(TorsoColor, cf(Effect2Part.Position), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30 + 360 * i)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
      Handleweld.C0 = clerp(Handleweld.C0, cf(-1, -0.6, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)), 0.3)
    end
    so("http://roblox.com/asset/?id=203691467", Hitbox, 1, 1.1)
    for i = 0, 1, 0.16 do
      fat.Event:wait()
      if damagebonus == 10 then
        so("http://roblox.com/asset/?id=378352088", Hitbox, 0.25, math.random(120, 140) / 100)
        so("http://roblox.com/asset/?id=340143970", Hitbox, 0.25, math.random(120, 140) / 100)
        local spread = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
        local MainPos = Hitbox.Position
        local MainPos2 = MMouse.Hit.p + spread
        local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
        local speed = 0
        local num = 300
        local dropspeed = 0
        coroutine.resume(coroutine.create(function()
    repeat
      fat.Event:wait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, ShotTarget.Parent)
      local mag = MainPos - pos.magnitude
      Laser(TorsoColor, CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
      MainPos = MainPos + MouseLook.lookVector * speed
      num = num - 1
      speed = speed + 0.01
      dropspeed = dropspeed - 0.01
      MouseLook = MouseLook * angles(math.rad(dropspeed), 0, 0)
      if speed >= 1 then
        speed = 1
      end
      if hit ~= nil then
        num = 0
        refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        refpart.Anchored = true
        refpart.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(refpart, 2)
        so("http://roblox.com/asset/?id=114488148", refpart, 0.5, math.random(120, 140) / 100)
        so("http://roblox.com/asset/?id=340143964", refpart, 0.5, math.random(120, 140) / 100)
        so("http://roblox.com/asset/?id=340143970", refpart, 0.5, math.random(120, 140) / 100)
        Damagefunc(hit, 4, 8, 10, "LaserShot", RootPart, 0)
        MagniDamage(refpart, 2.5, 2, 4, 5, "LaserShot")
        for i = 1, math.random(2, 4) do
          OrbEffect(TorsoColor, cf(refpart.Position), 0.1, 0.1, 0.1, 0.25, 0.25, 0.25, 0.075)
          BlockShockwave(TorsoColor, cf(refpart.Position), 1, 1, 1, 0.25, 0.25, 0.25, 0.075)
        end
      end
      do
        if num <= 0 then
          refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
          refpart.Anchored = true
          refpart.CFrame = cf(MainPos)
          game:GetService("Debris"):AddItem(refpart, 2)
          so("http://roblox.com/asset/?id=114488148", refpart, 0.5, math.random(120, 140) / 100)
          so("http://roblox.com/asset/?id=340143964", refpart, 0.5, math.random(120, 140) / 100)
          so("http://roblox.com/asset/?id=340143970", refpart, 0.5, math.random(120, 140) / 100)
          MagniDamage(refpart, 2.5, 2, 4, 5, "LaserShot")
          for i = 1, math.random(2, 4) do
            OrbEffect(TorsoColor, cf(refpart.Position), 0.1, 0.1, 0.1, 0.25, 0.25, 0.25, 0.075)
            BlockShockwave(TorsoColor, cf(refpart.Position), 1, 1, 1, 0.25, 0.25, 0.25, 0.075)
          end
        end
      end
    until num <= 0
  end))
      end
      do
        do
          Humanoid.WalkSpeed = 8 * speed.Value
          BlockShockwave(TorsoColor, cf(Effect2Part.Position), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(75)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.15)
          RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
          Handleweld.C0 = clerp(Handleweld.C0, cf(-1, -0.6, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)), 0.3)
          -- DECOMPILER ERROR at PC816: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
  gyro.Parent = nil
  con1:disconnect()
  Humanoid.WalkSpeed = 16 * speed.Value
  attack = false
end
Ability2 = function()
  attack = true
  Humanoid.Jump = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5 - 5 * i) * angles(math.rad(20 + 360 * i), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(165), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(165), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -0.25, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
  end
  Humanoid.WalkSpeed = 0 * speed.Value
  so("http://roblox.com/asset/?id=203691492", Hitbox, 1, 1.1)
  canwalk = false
  canidle = false
  for i = 0, 1, 0.24 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, 0, -0.5) * angles(math.rad(20), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-45), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -0.25, -0.5) * angles(math.rad(-30), math.rad(30), math.rad(-45)), 0.45)
  end
  hitfloor = nil
  while hitfloor == nil do
    local hit, pos = rayCast(Hitbox.Position, CFrame.new(Hitbox.Position, Hitbox.Position - Vector3.new(0, 1, 0)).lookVector, 5, Character)
    for i = 0, 1, 0.24 do
      do
        fat.Event:wait()
        Humanoid.WalkSpeed = 0 * speed.Value
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.45)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.45)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)), 0.45)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.45)
        RH.C0 = clerp(RH.C0, cf(1, 0, -0.5) * angles(math.rad(20), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-45), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -0.25, -0.5) * angles(math.rad(-30), math.rad(30), math.rad(-45)), 0.45)
      end
    end
  end
  do
    wait()
    actualstartingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
    actualstartingrefpart.Anchored = true
    actualstartingrefpart.CFrame = RootPart.CFrame * cf(0, 0, inc)
    game:GetService("Debris"):AddItem(actualstartingrefpart, 5)
    local inc = -5
    for i = 1, 5 do
      Humanoid.WalkSpeed = 0 * speed.Value
      startingrefpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
      startingrefpart.Anchored = true
      startingrefpart.CFrame = actualstartingrefpart.CFrame * cf(0, 0, inc)
      game:GetService("Debris"):AddItem(startingrefpart, 3)
      local hit, pos = rayCast(startingrefpart.Position, CFrame.new(startingrefpart.Position, startingrefpart.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
      if hit ~= nil then
        floor = true
        local Color = hit.BrickColor
        local Materials = hit.Material
        refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        refpart.Anchored = true
        refpart.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(refpart, 3)
        so("http://roblox.com/asset/?id=203691510", refpart, 1, math.random(80, 120) / 100)
        for i = 1, 10 do
          local actualgroundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
          actualgroundpart.Anchored = true
          actualgroundpart.Material = Materials
          actualgroundpart.CanCollide = true
          actualgroundpart.Friction = 1
          actualgroundpart.CFrame = cf(refpart.Position) * cf(math.random(-250, 250) / 100, 0, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
          game:GetService("Debris"):AddItem(actualgroundpart, 5.5)
          coroutine.resume(coroutine.create(function()
    wait(5)
    while 1 do
      swait()
      actualgroundpart.Transparency = actualgroundpart.Transparency + 0.05
    end
    actualgroundpart:Destroy()
  end))
        end
        BlockShockwave(Color, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.05)
        SphereShockwave(Color, cf(refpart.Position), 0.1, 0.1, 0.1, 0.5, 1.5, 0.5, 0.025)
        JumpEffect(Color, cf(refpart.Position), 0.5, 0.5, 1, 0.25, 0.25, 0.25, 0.025)
        MagniDamage(refpart, 10, 10, 20, 10, "Normal")
      end
      do
        inc = inc - 5
        for i = 0, 1, 15 do
          fat.Event:wait()
          Humanoid.WalkSpeed = 0 * speed.Value
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.45)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.45)
          RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)), 0.45)
          LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.45)
          RH.C0 = clerp(RH.C0, cf(1, 0, -0.5) * angles(math.rad(20), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-45), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
          Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -0.25, -0.5) * angles(math.rad(-30), math.rad(30), math.rad(-45)), 0.45)
        end
        -- DECOMPILER ERROR at PC1218: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
    canwalk = true
    canidle = true
    Humanoid.WalkSpeed = 16 * speed.Value
    attack = false
  end
end
Ability3 = function()
  attack = true
  so("http://roblox.com/asset/?id=200633077", Hitbox, 1, 1.2)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    Effect2Part.Transparency = 0 + 2 * i
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(10), math.rad(0), math.rad(-15)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  gyro.Parent = RootPart
  do
    for i = 1, 5 do
      so("http://roblox.com/asset/?id=378352088", Effect2Part, 0.5, math.random(80, 120) / 100)
      so("http://roblox.com/asset/?id=340143970", Effect2Part, 0.5, math.random(80, 120) / 100)
      local spread = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
      local MainPos = Effect2Part.Position
      local MainPos2 = MMouse.Hit.p + spread
      local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
      local speed = 10
      local num = 30
      coroutine.resume(coroutine.create(function()
    repeat
      fat.Event:wait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, ShotTarget.Parent)
      local mag = MainPos - pos.magnitude
      Laser(TorsoColor, CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
      MainPos = MainPos + MouseLook.lookVector * speed
      num = num - 1
      MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
      if hit ~= nil then
        num = 0
        refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
        refpart.Anchored = true
        refpart.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(refpart, 2)
        so("http://roblox.com/asset/?id=114488148", refpart, 0.5, math.random(80, 120) / 100)
        so("http://roblox.com/asset/?id=340143964", refpart, 0.5, math.random(80, 120) / 100)
        so("http://roblox.com/asset/?id=340143970", refpart, 0.5, math.random(80, 120) / 100)
        Damagefunc(hit, 5, 10, 10, "LaserShot", RootPart, 0)
        MagniDamage(refpart, 10, 5, 10, 5, "LaserShot")
        for i = 1, math.random(2, 4) do
          OrbEffect(TorsoColor, cf(refpart.Position), 0.1, 0.1, 0.1, 1, 1, 1, 0.075)
          BlockShockwave(TorsoColor, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.075)
        end
      end
      do
        if num <= 0 then
          refpart = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
          refpart.Anchored = true
          refpart.CFrame = cf(pos)
          game:GetService("Debris"):AddItem(refpart, 2)
          so("http://roblox.com/asset/?id=114488148", refpart, 0.5, math.random(80, 120) / 100)
          so("http://roblox.com/asset/?id=340143964", refpart, 0.5, math.random(80, 120) / 100)
          so("http://roblox.com/asset/?id=340143970", refpart, 0.5, math.random(80, 120) / 100)
          MagniDamage(refpart, 10, 5, 10, 5, "LaserShot")
          for i = 1, math.random(2, 4) do
            OrbEffect(TorsoColor, cf(refpart.Position), 0.1, 0.1, 0.1, 1, 1, 1, 0.075)
            BlockShockwave(TorsoColor, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.075)
          end
        end
      end
    until num <= 0
  end))
      for i = 1, math.random(2, 4) do
        BlockShockwave(TorsoColor, cf(Effect2Part.Position), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.125)
      end
      for i = 0, 1, 0.24 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(-10), math.rad(0), math.rad(15)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-15)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.5, -0.5) * angles(math.rad(105), math.rad(0), math.rad(-90)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, 0) * angles(math.rad(105), math.rad(0), math.rad(15)), 0.3)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
      end
      for i = 0, 1, 0.24 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(10), math.rad(0), math.rad(-15)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-75)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.3)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    end
  end
  gyro.Parent = nil
  so("http://roblox.com/asset/?id=200633029", Hitbox, 1, 1.2)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    Effect2Part.Transparency = 1 - 2 * i
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(10), math.rad(0), math.rad(-15)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end
mouse.Button1Down:connect(function()
  if attack == false then
    if attacktype == 1 then
      attacktype = 2
      if equipped == false then
        unequipattackone()
      else
        if equipped == true then
          equipattackone()
        end
      end
    else
      if attacktype == 2 then
        attacktype = 3
        if equipped == false then
          unequipattacktwo()
        else
          if equipped == true then
            equipattacktwo()
          end
        end
      else
        if attacktype == 3 then
          attacktype = 4
          if equipped == false then
            unequipattackthree()
          else
            if equipped == true then
              equipattackthree()
            end
          end
        else
          if attacktype == 4 then
            attacktype = 1
            if equipped == false then
              unequipattackfour()
            else
              if equipped == true then
                equipattackfour()
              end
            end
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
idletype = 1
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "q" and attack == false then
    idle = 300
    idletype = math.random(1, 2)
  end
  if k == "e" and attack == false then
    EquiporUnequip()
  end
  if k == "z" and attack == false and equipped == true and co1 <= cooldown1 and skill1stam <= stamina then
    cooldown1 = 0
    subtractstamina(skill1stam)
    Ability1()
  end
  if k == "x" and attack == false and equipped == true and co2 <= cooldown2 and skill2stam <= stamina then
    cooldown2 = 0
    subtractstamina(skill2stam)
    Ability2()
  end
  if k == "c" and attack == false and equipped == true and co3 <= cooldown3 and skill3stam <= stamina then
    cooldown3 = 0
    subtractstamina(skill3stam)
    Ability3()
  end
end)
mouse.KeyUp:connect(function(k)
  k = k:lower()
  if k == "z" and holdz == true then
    holdz = false
  end
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
game:GetService("RunService").Heartbeat:connect(function()
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
  gyro.CFrame = CFrame.new(Vector3.new(), mouse.Hit.p - RootPart.CFrame.p.unit * 100)
  sine = sine + change
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velderp = RootPart.Velocity.y
  hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if Anim == "Idle" and attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if idle == 300 and attack == false then
      idletype = math.random(1, 2)
    end
    if RootPart.Velocity.y > 1 and hitfloor == nil then
      Anim = "Jump"
      if attack == false and equipped == false then
        fat.Event:wait()
        Humanoid.WalkSpeed = 16 * speed.Value
        change = 2
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(15)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-15)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-15), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.75, -0.25) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
        Handleweld.C0 = clerp(Handleweld.C0, cf(-1.5, 0.5, 0.75) * angles(math.rad(-90), math.rad(-45), math.rad(90)), 0.15)
      else
        if attack == false and equipped == true then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.225, 0) * angles(math.rad(90), math.rad(15), math.rad(-30)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.225, -0.5) * angles(math.rad(-45), math.rad(-135), math.rad(-120)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          Handleweld.C0 = clerp(Handleweld.C0, cf(1, -0.75, 0) * angles(math.rad(15), math.rad(0), math.rad(-90)), 0.3)
        else
          if attack == true then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-15), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.75, -0.25) * angles(math.rad(-5), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
          end
        end
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false and equipped == false then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.75, -0.25) * angles(math.rad(-30), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.75, -0.25) * angles(math.rad(-30), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
          Handleweld.C0 = clerp(Handleweld.C0, cf(-1.5, 0.5, 0.75) * angles(math.rad(-90), math.rad(-45), math.rad(90)), 0.15)
        else
          if attack == false and equipped == true then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.225, 0) * angles(math.rad(90), math.rad(15), math.rad(-30)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.225, -0.5) * angles(math.rad(-45), math.rad(-135), math.rad(-120)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
            Handleweld.C0 = clerp(Handleweld.C0, cf(1, -0.75, 0) * angles(math.rad(15), math.rad(0), math.rad(-90)), 0.3)
          else
            if attack == true then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RH.C0 = clerp(RH.C0, cf(1, -0.75, -0.25) * angles(math.rad(-30), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -0.75, -0.25) * angles(math.rad(-30), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
            end
          end
        end
      else
        if torvel < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false and equipped == true and idletype == 1 and idle >= 300 then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 30)) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.15)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 2.5 * math.cos(sine / 30)) + -math.sin(sine / 30) / 15, math.rad(0), math.rad(-15)), 0.15)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.025 * math.cos(sine / 30) + math.sin(sine / 30) / 15, 0) * angles(math.rad(5 + 5 * math.cos(sine / 30)), math.rad(0), math.rad(15 - 5 * math.cos(sine / 30))), 0.15)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.025 * math.cos(sine / 30) + math.sin(sine / 30) / 15, 0) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.15)
            RH.C0 = clerp(RH.C0, cf(1, -0.9 - 0.1 * math.cos(sine / 30), 0) * angles(math.rad(0), math.rad(75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9 - 0.1 * math.cos(sine / 30), 0) * angles(math.rad(0), math.rad(-80), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
            Handleweld.C0 = clerp(Handleweld.C0, cf(0, -0.25, 0.5) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.15)
          else
            if attack == false and equipped == true and idletype == 2 and idle >= 300 then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 30)) * angles(math.rad(5), math.rad(0), math.rad(0)), 0.15)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 2.5 * math.cos(sine / 30)) + -math.sin(sine / 30) / 15, math.rad(0), math.rad(0)), 0.15)
              RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5 + 0.025 * math.cos(sine / 30), -0.5) * angles(math.rad(95 - 5 * math.cos(sine / 30)), math.rad(0), math.rad(-45)), 0.15)
              LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 + 0.025 * math.cos(sine / 30), -0.5) * angles(math.rad(95 - 5 * math.cos(sine / 30)), math.rad(0), math.rad(45)), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -0.9 - 0.1 * math.cos(sine / 30), 0.1) * angles(math.rad(5), math.rad(75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9 - 0.1 * math.cos(sine / 30), 0.1) * angles(math.rad(5), math.rad(-75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
              Handleweld.C0 = clerp(Handleweld.C0, cf(0.5, -1.75, -1 + 0.1 * math.cos(sine / 30)) * angles(math.rad(-180 + 2.5 * math.cos(sine / 30)), math.rad(0 + 2.5 * math.cos(sine / 30)), math.rad(-45)), 0.15)
            else
              if attack == false and equipped == false and idletype == 1 and idle >= 300 then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                change = 2
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 30)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5 * math.cos(sine / 30)) + -math.sin(sine / 30) / 15, math.rad(0), math.rad(0)), 0.15)
                RW.C0 = clerp(RW.C0, CFrame.new(1, 0.25 + 0.025 * math.cos(sine / 30) + math.sin(sine / 30) / 15, 0.25) * angles(math.rad(-45), math.rad(0), math.rad(-45)), 0.15)
                LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.25 + 0.025 * math.cos(sine / 30) + math.sin(sine / 30) / 15, 0.25) * angles(math.rad(-45), math.rad(0), math.rad(45)), 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -0.9 - 0.1 * math.cos(sine / 30), 0.1) * angles(math.rad(0), math.rad(75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9 - 0.1 * math.cos(sine / 30), 0.1) * angles(math.rad(0), math.rad(-75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                Handleweld.C0 = clerp(Handleweld.C0, cf(-1.5, 0.5, 0.75) * angles(math.rad(-90), math.rad(-45), math.rad(90)), 0.15)
              else
                if attack == false and equipped == false and idletype == 2 and idle >= 300 then
                  fat.Event:wait()
                  Humanoid.WalkSpeed = 16 * speed.Value
                  change = 2
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.1 + 0.1 * math.cos(sine / 30)) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.15)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5 * math.cos(sine / 30)) + -math.sin(sine / 30) / 15, math.rad(0), math.rad(15)), 0.15)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5 + 0.025 * math.cos(sine / 30) + math.sin(sine / 30) / 15, -0.25) * angles(math.rad(80 - 5 * math.cos(sine / 30)), math.rad(0), math.rad(-45)), 0.15)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.025 * math.cos(sine / 30) + math.sin(sine / 30) / 15, 0) * angles(math.rad(15 + 5 * math.cos(sine / 30)), math.rad(0), math.rad(-15 + 5 * math.cos(sine / 30))), 0.15)
                  RH.C0 = clerp(RH.C0, cf(1, 0.1 - 0.1 * math.cos(sine / 30), -0.5) * angles(math.rad(10), math.rad(75), math.rad(0)) * angles(math.rad(2.5), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.9 - 0.1 * math.cos(sine / 30), 0) * angles(math.rad(-60), math.rad(-75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                  Handleweld.C0 = clerp(Handleweld.C0, cf(-1.5, 0.5, 0.75) * angles(math.rad(-90), math.rad(-45), math.rad(90)), 0.15)
                else
                  if attack == false and equipped == false then
                    fat.Event:wait()
                    Humanoid.WalkSpeed = 16 * speed.Value
                    change = 2
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(-5), math.rad(-30)), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.525 + 0.025 * math.cos(sine / 20) + math.sin(sine / 20) / 20, 0) * angles(math.rad(0), math.rad(0), math.rad(10 - 5 * math.cos(sine / 20))), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.525 + 0.025 * math.cos(sine / 20) + math.sin(sine / 20) / 20, 0) * angles(math.rad(0), math.rad(0), math.rad(-10 + 5 * math.cos(sine / 20))), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -0.9 - 0.1 * math.cos(sine / 20), 0) * angles(math.rad(7.5), math.rad(60), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -0.9 - 0.1 * math.cos(sine / 20), 0) * angles(math.rad(-7.5), math.rad(-75), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
                    Handleweld.C0 = clerp(Handleweld.C0, cf(-1.5, 0.5, 0.75) * angles(math.rad(-90), math.rad(-45), math.rad(90)), 0.15)
                  else
                    if attack == false and equipped == true then
                      fat.Event:wait()
                      Humanoid.WalkSpeed = 16 * speed.Value
                      change = 2
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 20)) * angles(math.rad(10), math.rad(-5), math.rad(-45)), 0.3)
                      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(5), math.rad(45)), 0.3)
                      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.225 + 0.025 * math.cos(sine / 20) + math.sin(sine / 20) / 20, 0) * angles(math.rad(90), math.rad(15), math.rad(-30)), 0.3)
                      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.225 + 0.025 * math.cos(sine / 20) + math.sin(sine / 20) / 20, -0.5) * angles(math.rad(-45), math.rad(-135), math.rad(-120)), 0.3)
                      RH.C0 = clerp(RH.C0, cf(1, -0.9 - 0.1 * math.cos(sine / 20), 0) * angles(math.rad(-5), math.rad(75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                      LH.C0 = clerp(LH.C0, cf(-1.2, -0.9 - 0.1 * math.cos(sine / 20), 0.2) * angles(math.rad(5), math.rad(-45), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
                      Handleweld.C0 = clerp(Handleweld.C0, cf(1, -0.75, 0) * angles(math.rad(15), math.rad(0), math.rad(-90)), 0.3)
                    else
                      if attack == true and canidle == true then
                        fat.Event:wait()
                        Humanoid.WalkSpeed = 16 * speed.Value
                        change = 2
                        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
                        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
                      end
                    end
                  end
                end
              end
            end
          end
        else
          if torvel > 2 and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false and equipped == false then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 4)) * angles(math.rad(10), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(5 * math.cos(sine / 8))), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-5 * math.cos(sine / 8)) + Head.RotVelocity.Y / 15), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45 * math.cos(sine / 8)) + math.sin(sine / 8) / 4, math.rad(0), math.rad(5)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-45 * math.cos(sine / 8)) + -math.sin(sine / 8) / 4, math.rad(0), math.rad(-5)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1 - 0.5 * math.cos(sine / 8) / 2, 0.25 * math.cos(sine / 8) / 2) * angles(math.rad(-15 - 45 * math.cos(sine / 8)) + -math.sin(sine / 8) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.5 * math.cos(sine / 8) / 2, -0.25 * math.cos(sine / 8) / 2) * angles(math.rad(-15 + 45 * math.cos(sine / 8)) + math.sin(sine / 8) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
              Handleweld.C0 = clerp(Handleweld.C0, cf(-1.5, 0.5, 0.75) * angles(math.rad(-90), math.rad(-45), math.rad(90)), 0.15)
            else
              if attack == false and equipped == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                change = 2
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.2 * math.cos(sine / 3)) * angles(math.rad(10), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-45 + 5 * math.cos(sine / 6))), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(5), math.rad(45 - 5 * math.cos(sine / 6)) + Head.RotVelocity.Y / 15), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.225, 0) * angles(math.rad(90), math.rad(15), math.rad(-30)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.225, -0.5) * angles(math.rad(-45), math.rad(-135), math.rad(-120)), 0.3)
                RH.C0 = clerp(RH.C0, cf(0.8 + 0.2 * math.cos(sine / 6) / 2, -1, 0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-5 - 30 * math.cos(sine / 6)) + -math.sin(sine / 6) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(-30 * math.cos(sine / 6) + -math.sin(sine / 6) / 2.5), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1 - 0.2 * math.cos(sine / 6) / 2, -0.8, -0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-5 + 30 * math.cos(sine / 6)) + math.sin(sine / 6) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(-30 * math.cos(sine / 6) + math.sin(sine / 6) / 2.5), math.rad(0), math.rad(0)), 0.3)
                Handleweld.C0 = clerp(Handleweld.C0, cf(1, -0.75, 0) * angles(math.rad(15), math.rad(0), math.rad(-90)), 0.3)
              else
                if attack == true and canwalk == true then
                  fat.Event:wait()
                  Humanoid.WalkSpeed = 16 * speed.Value
                  change = 2
                  RH.C0 = clerp(RH.C0, cf(1, -1 - 0.5 * math.cos(sine / 8) / 2, 0.25 * math.cos(sine / 8) / 2) * angles(math.rad(-15 - 45 * math.cos(sine / 8)) + -math.sin(sine / 8) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.5 * math.cos(sine / 8) / 2, -0.25 * math.cos(sine / 8) / 2) * angles(math.rad(-15 + 45 * math.cos(sine / 8)) + math.sin(sine / 8) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
                end
              end
            end
          end
        end
      end
    end
  end
end)

