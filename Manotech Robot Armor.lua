local player = "LocalPlayer"
local Character = game.Players[player].Character
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
mr = math.rad
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local Anim = "Idle"
local Effects = {}
local armorparts = {}
local armorwelds = {}
local weaponparts = {}
local weaponwelds = {}
local Hands = {}
local necko = euler(0, 0, 0) * cf(0, 1.3, 0)
local attack = false
local jump = false
local start = false
local move = 10
local hitfloor, posfloor = nil, nil
local run = Instance.new("NumberValue")
run.Name = "DecreaseMvmt"
run.Value = -0.5
local bName = "Manotech"
local MainColor = BrickColor.new("Black")
NoOutline = function(Part)
  Part.TopSurface = 10
end
part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  return fp
end
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
weld = function(parent, part0, part1, c0)
  local weld = it("Motor6D")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end
gui = function(GuiType, parent, text, backtrans, backcol, pos, size, image)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.Position = pos
  gui.Size = size
  if GuiType == "TextLabel" then
    gui.Text = text
    gui.TextXAlignment = "Center"
    gui.TextYAlignment = "Center"
    gui.Font = "SourceSans"
    gui.FontSize = "Size14"
    gui.TextWrapped = false
    gui.TextStrokeTransparency = 0
    gui.TextColor = BrickColor.new("White")
  else
    if GuiType == "ImageLabel" then
      gui.Image = "rbxassetid://" .. image
      gui.ImageColor3 = backcol
    end
  end
  return gui
end
local handle = nil
AesthPart = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  prt.Material = neon
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(handle, prt, wldpar, ceef)
  v = it("NumberValue", prt)
  v.Value = trans
  v.Name = "MainTransparency"
  return prt, msh, wld
end
AesthPartHand = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef, wldpare)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  prt.Material = neon
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(wldpare, prt, wldpar, ceef)
  v = it("NumberValue", prt)
  v.Value = trans
  v.Name = "MainTransparency"
  return prt, msh, wld
end
local modelzorz = Instance.new("Model")
modelzorz.Parent = workspace.CurrentCamera
modelzorz.Name = "ManotechBody"
local Torso = Character.Torso
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local RootPart = Character.HumanoidRootPart
handle = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Handle", vt())
local handlewld = weld(handle, handle, Torso, euler(0, 0, -0.8) * cf(0, 0, -0.7))
Tprt01 = AesthPart(modelzorz, Torso, 0, 0, "Fossil", "Torso Part01", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.1, 12.1, 12.1, euler(0, mr(-90), 0) * cf(0, 0, 0))
Tprt02 = AesthPart(modelzorz, Tprt01, 0, 0, "Pastel light blue", "Torso Part02", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.2, 12.2, 4, euler(mr(90), 0, 0) * cf(0, -0.84, 0))
Tprt03 = AesthPart(modelzorz, Tprt01, 0, 0, "Storm blue", "Torso Part03", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.14, 12.14, 4, euler(mr(90), 0, 0) * cf(0, -0.01, 0))
Tprt04 = AesthPart(modelzorz, Tprt01, 0, 0, "Medium blue", "Torso Part04", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.15, 12.15, 2, euler(mr(90), 0, 0) * cf(0, -0.01, 0))
Tprt05 = AesthPart(modelzorz, Tprt01, 0, 0, "Pastel light blue", "Torso Part05", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.2, 12.2, 4, euler(mr(90), 0, 0) * cf(0, 0.83, 0))
Tprt06 = AesthPart(modelzorz, Tprt01, 0, 0, "Storm blue", "Torso Part06", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.5, 12.5, 2, euler(mr(90), 0, 0) * cf(0, 1.03, 0))
Tprt07 = AesthPart(modelzorz, Tprt01, 0, 0, "Medium blue", "Torso Part07", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.6, 12.6, 1, euler(mr(90), 0, 0) * cf(0, 1.14, 0))
Tprt08 = AesthPart(modelzorz, Tprt01, 0, 0, "Storm blue", "Torso Part08", "SmoothPlastic", "SpecialMesh", "Cylinder", "nil", 1, 5, 5, euler(mr(90), 0, 0) * cf(-0.562, 0.82, 0))
Tprt09 = AesthPart(modelzorz, Tprt01, 0, 0, "Institutional white", "Torso Part09", "Neon", "SpecialMesh", "Cylinder", "nil", 1, 4, 4, euler(mr(90), 0, 0) * cf(-0.572, 0.82, 0))
Tprt10 = AesthPart(modelzorz, Tprt01, 0, 0, "Medium blue", "Torso Part10", "SmoothPlastic", "SpecialMesh", "FileMesh", "9756362", 0.2, 1, 0.4, euler(mr(90), 0, 0) * cf(-0.662, 0.82, 0))
Tprt11 = AesthPart(modelzorz, Tprt01, 0, 0, "Institutional white", "Torso Part11", "Neon", "SpecialMesh", "Sphere", "nil", 1, 0.4, 2, euler(mr(90), 0, 0) * cf(-0.722, 0.82, 0))
Tprt12 = AesthPart(modelzorz, Tprt01, 0, 0, "Storm blue", "Torso Part12", "SmoothPlastic", "SpecialMesh", "FileMesh", "26340522", 1, 1, 1.4, euler(0, mr(90), 0) * cf(0, -0.34, 0))
Tprt13 = AesthPart(modelzorz, Tprt01, 0, 0, "Storm blue", "Torso Part13", "SmoothPlastic", "SpecialMesh", "FileMesh", "189759018", 3, 4, 3.5, euler(0, mr(90), 0) * cf(0, -0.55, -0.06))
LAprt01 = AesthPart(modelzorz, LeftArm, 0, 0, "Fossil", "Left Arm Part01", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.1, 12.1, 6.1, euler(0, mr(-90), 0) * cf(0, 0, 0))
LAprt01a = AesthPart(modelzorz, LAprt01, 0, 0, "Fossil", "Left Arm Part01a", "SmoothPlastic", "BlockMesh", "nil", "nil", 0, 0, 0, euler(0, mr(90), 0) * cf(0, 0, 0))
RAprt01 = AesthPart(modelzorz, RightArm, 0, 0, "Fossil", "Right Arm Part01", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.1, 12.1, 6.1, euler(0, mr(90), 0) * cf(0, 0, 0))
RAprt01a = AesthPart(modelzorz, RAprt01, 0, 0, "Fossil", "Right Arm Part01a", "SmoothPlastic", "BlockMesh", "nil", "nil", 0, 0, 0, euler(0, mr(90), 0) * cf(0, 0, 0))
LLprt01 = AesthPart(modelzorz, LeftLeg, 0, 0, "Fossil", "Left Leg Part01", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.1, 6.1, 12.1, euler(mr(90), 0, 0) * cf(0, 0, 0))
LLprt01a = AesthPart(modelzorz, LLprt01, 0, 0, "Fossil", "Left Leg Part01a", "SmoothPlastic", "BlockMesh", "nil", "nil", 0, 0, 0, euler(0, 0, mr(90)) * cf(0, 0, 0))
RLprt01 = AesthPart(modelzorz, RightLeg, 0, 0, "Fossil", "Right Leg Part01", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.1, 6.1, 12.1, euler(mr(90), 0, 0) * cf(0, 0, 0))
RLprt01a = AesthPart(modelzorz, RLprt01, 0, 0, "Fossil", "Right Leg Part01a", "SmoothPlastic", "BlockMesh", "nil", "nil", 0, 0, 0, euler(0, 0, mr(-90)) * cf(0, 0, 0))
local thPart = LAprt01a
local thPart2 = LLprt01a
for i = -1, 1, 2 do
  if i == 1 then
    thPart = RAprt01a
    thPart2 = RLprt01a
  end
  Aprt02 = AesthPart(modelzorz, thPart, 0, 0, "Storm blue", "Arm Part02", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.5, 4, 3, euler(mr(90), mr(90), 0) * cf(-0.23, -0.93, 0))
  Aprt03 = AesthPart(modelzorz, thPart, 0, 0, "Storm blue", "Arm Part03", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.5, 3, 7, euler(mr(90), mr(90), 0) * cf(0.43, -0.82, 0))
  Aprt04 = AesthPart(modelzorz, thPart, 0, 0, "Storm blue", "Arm Part04", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 6.5, 3, 3, euler(mr(-90), mr(-90), mr(59.815)) * cf(0.23, 0.01, 0))
  Aprt05 = AesthPart(modelzorz, thPart, 0, 0, "Storm blue", "Arm Part05", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 6.5, 3, 3, euler(mr(-90), mr(-90), mr(90)) * cf(0.43, 0.18, 0))
  Aprt06 = AesthPart(modelzorz, thPart, 0, 0, "Storm blue", "Arm Part06", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 6.5, 3, 3, euler(mr(-90), mr(-90), mr(32.321)) * cf(0.05, -0.2, 0))
  Aprt07 = AesthPart(modelzorz, thPart, 0, 0, "Black", "Arm Part07", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.2, 4, 6.2, euler(0, mr(90), 0) * cf(0, 0.82, 0))
  Aprt08 = AesthPart(modelzorz, thPart, 0, 0, "Storm blue", "Arm Part08", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.3, 3, 6.3, euler(0, mr(90), 0) * cf(0, 0.82, 0))
  Aprt09 = AesthPart(modelzorz, thPart, 0, 0, "Medium blue", "Arm Part09", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 7, 5, 5, euler(0, mr(90), mr(103.229)) * cf(-0.1, -0.87, 0))
  Aprt10 = AesthPart(modelzorz, thPart, 0, 0, "Medium blue", "Arm Part10", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 7, 5, 5, euler(0, mr(90), mr(90)) * cf(0.26, -0.85, 0))
  Aprt11 = AesthPart(modelzorz, thPart, 0, 0, "Black", "Arm Part11", "SmoothPlastic", "CylinderMesh", "nil", "nil", 3.5, 7.5, 3.5, euler(mr(90), 0, 0) * cf(0.47, -1.3, 0))
  Lprt02 = AesthPart(modelzorz, thPart2, 0, 0, "Medium blue", "Leg Part02", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.3, 6.3, 3, euler(0, 0, 0) * cf(0, 0, -0.92))
  Lprt03 = AesthPart(modelzorz, thPart2, 0, 0, "Black", "Leg Part03", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.25, 6.25, 3, euler(0, 0, 0) * cf(0, 0, -0.67))
  Lprt04 = AesthPart(modelzorz, thPart2, 0, 0, "Medium blue", "Leg Part04", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 3, 2, euler(0, 0, mr(180)) * cf(0.53 * i, 0.33, -0.42))
  Lprt05 = AesthPart(modelzorz, thPart2, 0, 0, "Medium blue", "Leg Part05", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 3, 2, euler(0, 0, 0) * cf(0.53 * i, -0.33, -0.42))
  Lprt06 = AesthPart(modelzorz, thPart2, 0, 0, "Medium blue", "Leg Part06", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 3, 2, euler(0, 0, mr(180)) * cf(-0.53 * i, 0.33, -0.42))
  Lprt07 = AesthPart(modelzorz, thPart2, 0, 0, "Medium blue", "Leg Part07", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 3, 2, euler(0, 0, 0) * cf(-0.53 * i, -0.33, -0.42))
  Lprt08 = AesthPart(modelzorz, thPart2, 0, 0, "Storm blue", "Leg Part08", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.6, 6.6, 3, euler(0, 0, 0) * cf(0, 0, 0.37))
  Lprt09 = AesthPart(modelzorz, thPart2, 0, 0, "Black", "Leg Part09", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.5, 6.5, 3, euler(0, 0, 0) * cf(0, 0, 0.91))
  Lprt10 = AesthPart(modelzorz, thPart2, 0, 0, "Institutional white", "Leg Part10", "Neon", "BlockMesh", "nil", "nil", 0.5, 1, 3, euler(0, 0, mr(90)) * cf(-0.52 * i, 0, -0.22))
  Lprt11 = AesthPart(modelzorz, thPart2, 0, 0, "Institutional white", "Leg Part11", "Neon", "BlockMesh", "nil", "nil", 0.5, 1, 3, euler(0, mr(-30), mr(90)) * cf(-0.52 * i, 0.2, -0.22))
  Lprt12 = AesthPart(modelzorz, thPart2, 0, 0, "Institutional white", "Leg Part12", "Neon", "BlockMesh", "nil", "nil", 0.5, 1, 3, euler(0, mr(30), mr(90)) * cf(-0.52 * i, -0.2, -0.22))
  Lprt13 = AesthPart(modelzorz, thPart2, 0, 0, "Storm blue", "Leg Part13", "SmoothPlastic", "CylinderMesh", "nil", "nil", 2, 1, 2, euler(0, 0, mr(90)) * cf(-0.62 * i, 0, 0.03))
  Lprt14 = AesthPart(modelzorz, thPart2, 0, 0, "Medium blue", "Leg Part14", "SmoothPlastic", "CylinderMesh", "nil", "nil", 1.7, 1.1, 1.7, euler(0, 0, mr(90)) * cf(-0.62 * i, 0, 0.03))
  Lprt15 = AesthPart(modelzorz, thPart2, 0, 0, "Institutional white", "Leg Part15", "Neon", "CylinderMesh", "nil", "nil", 1, 1.2, 1, euler(0, 0, mr(90)) * cf(-0.62 * i, 0, 0.03))
  Lprt16 = AesthPart(modelzorz, thPart2, 0, 0, "Medium blue", "Leg Part16", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 1.5, 4, euler(0, 0, mr(180)) * cf(-0.6 * i, 0.14, 0.35))
  Lprt17 = AesthPart(modelzorz, thPart2, 0, 0, "Medium blue", "Leg Part17", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 1.5, 4, euler(0, 0, 0) * cf(-0.6 * i, -0.16, 0.35))
  Lprt18 = AesthPart(modelzorz, thPart2, 0, 0, "Black", "Leg Part18", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 1.5, 4, euler(mr(15), 0, mr(180)) * cf(-0.6 * i, 0.35, 0.35))
  Lprt19 = AesthPart(modelzorz, thPart2, 0, 0, "Black", "Leg Part19", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 1.5, 4, euler(mr(15), 0, 0) * cf(-0.6 * i, -0.37, 0.35))
end
LAprt12 = AesthPart(modelzorz, LAprt01a, 0, 0, "Medium blue", "Left Arm Part12", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 7, 2, euler(mr(180), mr(-90), mr(103.229)) * cf(1.05, -1.48, 0.71))
LAprt13 = AesthPart(modelzorz, LAprt01a, 0, 0, "Medium blue", "Left Arm Part13", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 1, 7, 2, euler(mr(180), mr(-90), mr(103.229)) * cf(1.05, -1.48, -0.71))
RAprt12 = AesthPart(modelzorz, RAprt01a, 0, 0, "Medium blue", "Right Arm Part12", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 6.5, 3, 6, euler(mr(180), mr(90), mr(9.214)) * cf(1.217, -1.384, 0))
RAprt13 = AesthPart(modelzorz, RAprt01a, 0, 0, "Medium blue", "Right Arm Part13", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 6, 3, 6, euler(mr(180), mr(90), mr(-10.361)) * cf(1.108, -1.116, 0))
RAprt14 = AesthPart(modelzorz, RAprt01a, 0, 0, "Medium blue", "Right Arm Part14", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 5.5, 3, 6, euler(mr(180), mr(90), mr(-42.832)) * cf(1.002, -0.856, 0))
RAprt15 = AesthPart(modelzorz, RAprt01a, 0, 0, "Institutional white", "Right Arm Part15", "Neon", "BlockMesh", "nil", "nil", 6.5, 0.2, 6.5, euler(0, mr(90), 0) * cf(0, 0.82, 0))
RAprt16 = AesthPart(modelzorz, RAprt01a, 0, 0, "Institutional white", "Right Arm Part16", "Neon", "BlockMesh", "nil", "nil", 6.5, 0.2, 6.5, euler(0, mr(90), mr(6.849)) * cf(0, 0.97, 0))
RAprt17 = AesthPart(modelzorz, RAprt01a, 0, 0, "Institutional white", "Right Arm Part17", "Neon", "BlockMesh", "nil", "nil", 6.5, 0.2, 6.5, euler(0, mr(90), mr(-6.849)) * cf(0, 0.66, 0))
RAprt18 = AesthPart(modelzorz, RAprt01a, 0, 0, "Steel blue", "Right Arm Part18", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.4, 0.6, 6.4, euler(0, mr(90), 0) * cf(0, 0.82, 0))
RAprt19 = AesthPart(modelzorz, RAprt01a, 0, 0, "Steel blue", "Right Arm Part19", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.4, 0.6, 6.4, euler(0, mr(90), mr(6.849)) * cf(0, 0.97, 0))
RAprt20 = AesthPart(modelzorz, RAprt01a, 0, 0, "Steel blue", "Right Arm Part20", "SmoothPlastic", "BlockMesh", "nil", "nil", 6.4, 0.6, 6.4, euler(0, mr(90), mr(-6.849)) * cf(0, 0.66, 0))
RAprt21 = AesthPart(modelzorz, RAprt01a, 0, 0, "Storm blue", "Right Arm Part21", "SmoothPlastic", "CylinderMesh", "nil", "nil", 3.5, 1, 3.5, euler(mr(90), mr(90), 0) * cf(0.55, 0.82, 0))
RAprt22 = AesthPart(modelzorz, RAprt01a, 0, 0, "Steel blue", "Right Arm Part22", "SmoothPlastic", "CylinderMesh", "nil", "nil", 3, 1.1, 3, euler(mr(90), mr(90), 0) * cf(0.55, 0.82, 0))
RAprt23 = AesthPart(modelzorz, RAprt01a, 0, 0, "Institutional white", "Right Arm Part23", "Neon", "CylinderMesh", "nil", "nil", 1, 1.2, 1, euler(mr(90), mr(90), 0) * cf(0.55, 0.82, 0))
for i = 0, 135, 45 do
  RAprt24 = AesthPart(modelzorz, RAprt01a, 0, 0, "Institutional white", "Right Arm Part24", "Neon", "BlockMesh", "nil", "nil", 1.5, 1, 0.2, euler(mr(90), mr(90), 0) * euler(mr(i), 0, 0) * cf(0.57, 0.82, 0))
end
Hprt01 = AesthPart(modelzorz, Head, 0, 0, "Fossil", "Head Part01", "SmoothPlastic", "SpecialMesh", "Sphere", "nil", 8.5, 9, 9, euler(0, 0, 0) * cf(0, -0.21, 0))
Hprt02 = AesthPart(modelzorz, Hprt01, 0, 0, "Fossil", "Head Part02", "SmoothPlastic", "CylinderMesh", "nil", "nil", 7.5, 0.6, 7.5, euler(0, 0, 0) * cf(0, 0.47, 0))
Hprt03 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part03", "SmoothPlastic", "CylinderMesh", "nil", "nil", 9, 1, 9, euler(mr(9.321), 0, 0) * cf(0, -0.15, 0.03))
Hprt04 = AesthPart(modelzorz, Hprt01, 0, 0, "Pastel blue", "Head Part04", "Neon", "CylinderMesh", "nil", "nil", 9.1, 0.2, 9.1, euler(mr(9.321), 0, 0) * cf(0, -0.15, 0.03))
Hprt05 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part05", "SmoothPlastic", "BlockMesh", "nil", "nil", 1, 4, 3, euler(mr(90), 0, 0) * cf(0.82, -0.07, 0.06))
Hprt06 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part06", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 3, 1, 2, euler(0, mr(180), mr(-90)) * cf(1.02, -0.07, -0.14))
Hprt07 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part07", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 3, 1, 2, euler(0, 0, mr(-90)) * cf(1.02, -0.07, 0.26))
Hprt08 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part08", "SmoothPlastic", "BlockMesh", "nil", "nil", 1, 4, 3, euler(mr(90), 0, 0) * cf(-0.81, -0.07, 0.06))
Hprt09 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part09", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 3, 1, 2, euler(0, mr(180), mr(90)) * cf(-1.01, -0.07, -0.14))
Hprt10 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part10", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 3, 1, 2, euler(0, 0, mr(90)) * cf(-1.01, -0.07, 0.26))
Hprt11 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part11", "SmoothPlastic", "CylinderMesh", "nil", "nil", 3, 1, 3, euler(mr(90), 0, 0) * cf(0, 0.02, 0.86))
Hprt12 = AesthPart(modelzorz, Hprt01, 0, 0, "Institutional white", "Head Part12", "Neon", "CylinderMesh", "nil", "nil", 2, 1.1, 2, euler(mr(90), 0, 0) * cf(0, 0.02, 0.86))
Hprt13 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part13", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 1, 4, euler(mr(90), mr(-90), 0) * cf(0.1, 0.59, 0.91))
Hprt14 = AesthPart(modelzorz, Hprt01, 0, 0, "Medium blue", "Head Part14", "SmoothPlastic", "SpecialMesh", "Wedge", "nil", 0.5, 1, 4, euler(mr(90), mr(90), 0) * cf(-0.1, 0.59, 0.91))
