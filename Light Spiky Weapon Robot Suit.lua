--[[
==================================]}
//{Script: Zen (WORK IN PROGRESS)        
//{User: Solavenge (Citrus)
//{Model credit: NightOwlAce             
==================================]}
//{Controls:              
// Z - Megaton Smash
// X - Gravity Well
// C - Skewer Trap
// V - Aether Beam
==================================]}
//-----[{ PHOENIX WEAPONRY }]-----]}
==================================]}
--]]

-- Moves/Move names subject to change --

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


Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
z = Instance.new("Sound", Torso)
z.SoundId = "159665268" -- Put Music ID Here.
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.1)
z:Play()
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
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
local necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
local LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
local RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
local RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
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
cam=workspace.CurrentCamera
RocketTarget=nil
Targetting=false
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local keys={}
local Trapping = false

player=nil 
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

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0

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

function part2(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
        local fp = Instance.new("Part")
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
                fp.Material = material
        
        NoOutline(fp)
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
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end

function weld2(parent, part0, part1, c0, c1)
        local Weld = Instance.new("Weld")
                Weld.Parent = parent
                Weld.Part0 = part0
                Weld.Part1 = part1
                Weld.C0 = c0
                Weld.C1 = c1
        
        return Weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")


--[[Credit to SazErenos for Artificial Heartbeat]]--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 /40
tf = 0
allowframeloss = true
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
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

function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
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

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
        if hit.Parent == nil then
                return
        end
        local h = hit.Parent:FindFirstChild("Humanoid")
        for _, v in pairs(hit.Parent:children()) do
                if v:IsA("Humanoid") then
                        h = v
                end
        end
        if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
                if hit.Parent:findFirstChild("DebounceHit") ~= nil then
                        if hit.Parent.DebounceHit.Value == true then
                                return
                        end
                end
                if h.MaxHealth >= math.huge then
                        hit:BreakJoints()
                end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                local c = Instance.new("ObjectValue")
                        c.Name = "creator"
                        c.Value = game:service("Players").LocalPlayer
                        c.Parent = h
                
                game:GetService("Debris"):AddItem(c, .5)
                if HitSound ~= nil and HitPitch ~= nil then
                        so(HitSound, hit, 1, HitPitch) 
                end
                local Damage = math.random(minim, maxim)
--                h:TakeDamage(Damage)
                local blocked = false
                local block = hit.Parent:findFirstChild("Block")
                if block ~= nil then
                        if block.className == "IntValue" then
                                if block.Value > 0 then
                                        blocked = true
                                        block.Value = block.Value - 1
                                        print(block.Value)
                                end
                        end
                end
                if blocked == false then
--                h:TakeDamage(Damage)
                        h.Health = h.Health - Damage
                        if Damage ~= 0 then
                        Showdamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Institutional white").Color)
                        end
                else
                        h.Health = h.Health - (Damage / 2)
                        if Damage ~=0 then
                        Showdamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Institutional white").Color)
                        end
                end
                if Type == "Knockdown" then
                        local hum = hit.Parent.Humanoid
                        hum.PlatformStand = true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand = false
                        end), hum)
                        local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
                        local bodvol = Instance.new("BodyVelocity")
                                bodvol.velocity = angle * knockback
                                bodvol.P = 5000
                                bodvol.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
                                bodvol.Parent = hit
                        
                        local rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                rl.Parent = hit
                        
                        game:GetService("Debris"):AddItem(bodvol, .5)
                        game:GetService("Debris"):AddItem(rl, .5)
                elseif Type == "Plat" then
                        local hum = hit.Parent.Humanoid
                        hum.PlatformStand = true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(2)
                                HHumanoid.PlatformStand = false
                        end), hum)

                        local rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(100, 100, 100) * 500
                                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                rl.Parent = hit
                                
                        game:GetService("Debris"):AddItem(rl, .5)
                elseif Type == "Normal" then
                        local vp = Instance.new("BodyVelocity")
                                vp.P = 500
                                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                                vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                        
                        if knockback > 0 then
                                vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, .5)
				elseif Type == "Gravitate" then
						local tor = hit.Parent.Torso
                        local bp = Instance.new("BodyPosition",tor)
                                bp.P = 500
                                bp.maxForce = Vector3.new(4000, 1000, 4000)
                                bp.Position = Character.Torso.Position
                        game:GetService("Debris"):AddItem(bp, Delay)
                elseif Type == "Up" then
                        local bodyVelocity = Instance.new("BodyVelocity")
                                bodyVelocity.velocity = vt(0, 20, 0)
                                bodyVelocity.P = 5000
                                bodyVelocity.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
                                bodyVelocity.Parent = hit
                        
                        game:GetService("Debris"):AddItem(bodyVelocity, .5)
                elseif Type == "Snare" then
                        local bp = Instance.new("BodyPosition")
                                bp.P = 2000
                                bp.D = 100
                                bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                bp.position = hit.Parent.Torso.Position
                                bp.Parent = hit.Parent.Torso
                        game:GetService("Debris"):AddItem(bp, 1)

                elseif Type == "Freeze" then
                        local BodPos = Instance.new("BodyPosition")
                                BodPos.P = 50000
                                BodPos.D = 1000
                                BodPos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                BodPos.position = hit.Parent.Torso.Position
                                BodPos.Parent = hit.Parent.Torso
                        
                        local BodGy = Instance.new("BodyGyro") 
                                BodGy.maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge 
                                BodGy.P = 20e+003
                                BodGy.Parent = hit.Parent.Torso
                                BodGy.cframe = hit.Parent.Torso.CFrame
                        
                        hit.Parent.Torso.Anchored = true
                        coroutine.resume(coroutine.create(function(Part) 
                                swait(1.5)
                                Part.Anchored = false
                        end), hit.Parent.Torso)
                        game:GetService("Debris"):AddItem(BodPos, 3)
                        game:GetService("Debris"):AddItem(BodGy, 3)
                
                
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
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
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
                
                local debounce = Instance.new("BoolValue")
                debounce.Name = "DebounceHit"
                debounce.Parent = hit.Parent
                debounce.Value = true
                game:GetService("Debris"):AddItem(debounce, Delay)
                c = Instance.new("ObjectValue")
                c.Name = "creator"
                c.Value = Player
                c.Parent = h
                game:GetService("Debris"):AddItem(c, .5)
        end
end

function Showdamage(Pos, Text, Time, Color)
        local Rate = (1 / 30)
        local Pos = (Pos or Vector3.new(0, 0, 0))
        local Text = (Text or "")
        local Time = (Time or 2)
        local Color = (Color or Color3.new(1, 0, 0))
        local EffectPart = part2("Custom", workspace, "Neon", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
        EffectPart.Anchored = true
        local BillboardGui = Instance.new("BillboardGui")
                BillboardGui.Size = UDim2.new(3, 0, 3, 0)
                BillboardGui.Adornee = EffectPart
                BillboardGui.Parent = EffectPart
        
        local TextLabel = Instance.new("TextLabel")
                TextLabel.BackgroundTransparency = 1
                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.Text = Text
                TextLabel.TextColor3 = Color
                TextLabel.TextScaled = true
                TextLabel.Font = Enum.Font.ArialBold
                TextLabel.Parent = BillboardGui
        
        game.Debris:AddItem(EffectPart, (Time + 0.1))
        EffectPart.Parent = game:GetService("Workspace")
        delay(0, function()
                local Frames = (Time / Rate)
                for Frame = 1, Frames do
                        wait(Rate)
                        local Percent = (Frame / Frames)
                        EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
                        TextLabel.TextTransparency = Percent
                end
                if EffectPart and EffectPart.Parent then
                        EffectPart:Destroy()
                end
        end)
end

function BlastEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2)
        local prt = part2(3, workspace, "Neon", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
        coroutine.resume(coroutine.create(function() 
                for i = 0, 1, 0.05 do
                        wait()
                        prt.Transparency = i
                        msh.Scale = msh.Scale + vt(x2, y2, z2)
                end
                prt.Parent = nil
        end))
end

function weld(parent, part0, part1, c0, c1)
        local Weld = Instance.new("Weld")
                Weld.Parent = parent
                Weld.Part0 = part0
                Weld.Part1 = part1
                Weld.C0 = c0
                Weld.C1 = c1
        
        return Weld
end

function MagniDamage(Hit, Part, magni, mindam, maxdam, knock, Type)
        for _, c in pairs(workspace:children()) do
                local hum = c:findFirstChild("Humanoid")
                if hum ~= nil then
                        local head = c:findFirstChild("Torso")
                        if head ~= nil then
                                local targ = head.Position - Part.Position
                                local mag = targ.magnitude
                                if mag <= magni and c.Name ~= Player.Name then 
                                        Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, .2, 1, 3)
                                end
                        end
                end
        end
end

function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, lifetime)
        local prt = part2(3, workspace, "Neon", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, lifetime)
        coroutine.resume(coroutine.create(function(Part, Mesh) 
                for i = 0, 1, delay do
                        swait()
                        Part.CFrame = Part.CFrame
                        Part.Transparency = i
                        Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
                end
                Part.Parent = nil
        end), prt, msh)
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
        local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
        prt.Anchored=true
        prt.CFrame=cframe
        local msh = mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
        game:GetService("Debris"):AddItem(prt,2)
        coroutine.resume(coroutine.create(function(Part,Mesh) 
                for i=0,1,delay do
                        swait()
                        Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                        Part.Transparency=i
                        Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
                end
                Part.Parent=nil
        end),prt,msh)
end 

--C
function SpellCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,lifetime)
		local spng = true
        local prt=part2(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
        prt.Anchored=true
        prt.CFrame=cframe
		prt.Transparency=1
        local dec = Instance.new("Decal",prt)
		dec.Texture = "http://www.roblox.com/asset/?id=504647035"
		dec.Face = "Top"
 		local dec2 = Instance.new("Decal",prt)
		dec2.Texture = "http://www.roblox.com/asset/?id=504647035"
		dec2.Face = "Bottom"
        game:GetService("Debris"):AddItem(prt,lifetime)
        coroutine.resume(coroutine.create(function()
                for i=0,1,delay do
                        swait()
                        prt.CFrame=prt.CFrame*euler(0,i,0)
						prt.Size=prt.Size+vt(x3,y3,z3)
                end
                prt.Parent=nil
        end))
end 
--C

user=game:service'Players'.localPlayer
char=user.Character
mouse=user:GetMouse()
zen=Instance.new('Model',char)
zen.Name = "Zen"

local grip = Instance.new("Part", zen)
grip.FormFactor = Enum.FormFactor.Custom
grip.CanCollide = false
grip.TopSurface = Enum.SurfaceType.SmoothNoOutlines
grip.Material = Enum.Material.Neon
grip.Size = Vector3.new(0.47, 2.6, 0.44)
grip.Name = "Grip"
grip.CFrame = CFrame.new(-93.277, 182.77, -46.392) * CFrame.Angles(0.00021399257821031, -3.1005700293463e-005, -3.0992428946774e-005)
grip.BrickColor = BrickColor.new("Bright bluish green")
grip.Friction = 0.3
grip.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local maincore = Instance.new("Part", zen)
maincore.FormFactor = Enum.FormFactor.Custom
maincore.CanCollide = false
maincore.Reflectance = 0.6
maincore.Material = Enum.Material.Neon
maincore.Size = Vector3.new(0.2, 0.2, 0.4)
maincore.Name = "MainCore"
maincore.CFrame = CFrame.new(-93.212, 185.57, -43.912) * CFrame.Angles(-0.78519427776337, -1.652482933423e-005, -4.0553699363954e-005)
maincore.BrickColor = BrickColor.new("Bright bluish green")
maincore.Friction = 0.3

local mesh_7 = Instance.new("SpecialMesh", maincore)
mesh_7.Scale = Vector3.new(0.4, 1.774, 0.45)
mesh_7.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_7.TextureId = "rbxassetid://5808536"
mesh_7.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_7.MeshType = Enum.MeshType.FileMesh

local weld = Instance.new("ManualWeld", maincore)
weld.Part1 = grip
weld.Name = "Weld"
weld.C1 = CFrame.new(0.065, 2.8, 2.479) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld.Part0 = maincore
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0.78519433736801, 4.0357146644965e-005, 1.6999225408654e-005)

local maincore_8 = Instance.new("Part", zen)
maincore_8.FormFactor = Enum.FormFactor.Custom
maincore_8.CanCollide = false
maincore_8.Reflectance = 0.6
maincore_8.Material = Enum.Material.Neon
maincore_8.Size = Vector3.new(0.2, 0.2, 0.4)
maincore_8.Name = "MainCore"
maincore_8.CFrame = CFrame.new(-93.212, 185.571, -48.911) * CFrame.Angles(-2.3560318946838, 1.7195610780618e-005, -3.9879607356852e-005)
maincore_8.BrickColor = BrickColor.new("Bright bluish green")
maincore_8.Friction = 0.3

local mesh_8 = Instance.new("SpecialMesh", maincore_8)
mesh_8.Scale = Vector3.new(0.4, 1.774, 0.45)
mesh_8.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_8.TextureId = "rbxassetid://5808536"
mesh_8.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_8.MeshType = Enum.MeshType.FileMesh

local weld_2 = Instance.new("ManualWeld", maincore_8)
weld_2.Part1 = grip
weld_2.Name = "Weld"
weld_2.C1 = CFrame.new(0.065, 2.8, -2.52) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_2.Part0 = maincore_8
weld_2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(2.3560318946838, 4.03608828492e-005, -1.6033427527873e-005)

local maincore_9 = Instance.new("Part", zen)
maincore_9.FormFactor = Enum.FormFactor.Custom
maincore_9.CanCollide = false
maincore_9.Reflectance = 0.6
maincore_9.Material = Enum.Material.Neon
maincore_9.Size = Vector3.new(0.2, 0.2, 0.6)
maincore_9.Name = "MainCore"
maincore_9.CFrame = CFrame.new(-93.212, 184.67, -46.382) * CFrame.Angles(-3.1413786411285, 3.1000115995994e-005, -3.0041814170545e-005)
maincore_9.BrickColor = BrickColor.new("Bright bluish green")
maincore_9.Friction = 0.3

local mesh_9 = Instance.new("SpecialMesh", maincore_9)
mesh_9.Scale = Vector3.new(0.4, 0.486, 0.264)
mesh_9.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_9.TextureId = "rbxassetid://5808536"
mesh_9.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_9.MeshType = Enum.MeshType.FileMesh

local weld_3 = Instance.new("ManualWeld", maincore_9)
weld_3.Part1 = grip
weld_3.Name = "Weld"
weld_3.C1 = CFrame.new(0.065, 1.9, 0.009) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_3.Part0 = maincore_9
weld_3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1413786411285, 3.1006537028588e-005, -3.003515121236e-005)

local part_9 = Instance.new("Part", zen)
part_9.FormFactor = Enum.FormFactor.Custom
part_9.CanCollide = false
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Material = Enum.Material.Neon
part_9.Size = Vector3.new(0.4, 3, 0.4)
part_9.CFrame = CFrame.new(-93.282, 185.303, -47.042) * CFrame.Angles(-0.52338141202927, -2.1764006305602e-005, -3.8031364965718e-005)
part_9.BrickColor = BrickColor.new("Light stone grey")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_4 = Instance.new("ManualWeld", part_9)
weld_4.Part1 = grip
weld_4.Name = "Weld"
weld_4.C1 = CFrame.new(-0.005, 2.533, -0.651) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_4.Part0 = part_9
weld_4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0.52338141202927, 3.7859299482079e-005, 2.2061974959797e-005)

local part_10 = Instance.new("Part", zen)
part_10.FormFactor = Enum.FormFactor.Custom
part_10.CanCollide = false
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Material = Enum.Material.Neon
part_10.Size = Vector3.new(0.4, 3, 0.4)
part_10.CFrame = CFrame.new(-93.282, 185.304, -45.741) * CFrame.Angles(0.52375590801239, -3.8037556805648e-005, -2.1747335267719e-005)
part_10.BrickColor = BrickColor.new("Light stone grey")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_5 = Instance.new("ManualWeld", part_10)
weld_5.Part1 = grip
weld_5.Name = "Weld"
weld_5.C1 = CFrame.new(-0.005, 2.534, 0.65) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_5.Part0 = part_10
weld_5.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0.52375590801239, 2.2061027266318e-005, 3.7856505514355e-005)

local maincore_11 = Instance.new("Part", zen)
maincore_11.FormFactor = Enum.FormFactor.Custom
maincore_11.CanCollide = false
maincore_11.Reflectance = 0.6
maincore_11.Material = Enum.Material.Neon
maincore_11.Size = Vector3.new(0.2, 2.6, 0.8)
maincore_11.Name = "MainCore"
maincore_11.CFrame = CFrame.new(-93.242, 182.77, -46.173) * CFrame.Angles(-3.1413333415985, -1.5707963705063, 0)
maincore_11.BrickColor = BrickColor.new("Bright bluish green")
maincore_11.Friction = 0.3

local mesh_11 = Instance.new("SpecialMesh", maincore_11)
mesh_11.Scale = Vector3.new(0.19, 1.678, 0.264)
mesh_11.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_11.TextureId = "rbxassetid://5808536"
mesh_11.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_11.MeshType = Enum.MeshType.FileMesh

local weld_6 = Instance.new("ManualWeld", maincore_11)
weld_6.Part1 = grip
weld_6.Name = "Weld"
weld_6.C1 = CFrame.new(0.035, 0, 0.219) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_6.Part0 = maincore_11
weld_6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1415491104126, -1.5707963705063, 0)

local maincore_10 = Instance.new("Part", zen)
maincore_10.FormFactor = Enum.FormFactor.Custom
maincore_10.CanCollide = false
maincore_10.Reflectance = 0.6
maincore_10.Material = Enum.Material.Neon
maincore_10.Size = Vector3.new(0.2, 2.6, 0.8)
maincore_10.Name = "MainCore"
maincore_10.CFrame = CFrame.new(-93.512, 182.77, -46.372) * CFrame.Angles(-3.1413786411285, 3.1000115995994e-005, -3.0041814170545e-005)
maincore_10.BrickColor = BrickColor.new("Bright bluish green")
maincore_10.Friction = 0.3

local mesh_10 = Instance.new("SpecialMesh", maincore_10)
mesh_10.Scale = Vector3.new(0.19, 1.678, 0.264)
mesh_10.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_10.TextureId = "rbxassetid://5808536"
mesh_10.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_10.MeshType = Enum.MeshType.FileMesh

local weld_7 = Instance.new("ManualWeld", maincore_10)
weld_7.Part1 = grip
weld_7.Name = "Weld"
weld_7.C1 = CFrame.new(-0.235, 0, 0.02) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_7.Part0 = maincore_10
weld_7.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1413786411285, 3.1006537028588e-005, -3.003515121236e-005)

local maincore_13 = Instance.new("Part", zen)
maincore_13.FormFactor = Enum.FormFactor.Custom
maincore_13.CanCollide = false
maincore_13.Reflectance = 0.6
maincore_13.Material = Enum.Material.Neon
maincore_13.Size = Vector3.new(0.2, 2.6, 0.8)
maincore_13.Name = "MainCore"
maincore_13.CFrame = CFrame.new(-93.042, 182.77, -46.372) * CFrame.Angles(-3.1413786411285, 3.1000115995994e-005, -3.0041814170545e-005)
maincore_13.BrickColor = BrickColor.new("Bright bluish green")
maincore_13.Friction = 0.3

local mesh_13 = Instance.new("SpecialMesh", maincore_13)
mesh_13.Scale = Vector3.new(0.19, 1.678, 0.264)
mesh_13.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_13.TextureId = "rbxassetid://5808536"
mesh_13.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_13.MeshType = Enum.MeshType.FileMesh

local weld_8 = Instance.new("ManualWeld", maincore_13)
weld_8.Part1 = grip
weld_8.Name = "Weld"
weld_8.C1 = CFrame.new(0.235, 0, 0.02) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_8.Part0 = maincore_13
weld_8.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1413786411285, 3.1006537028588e-005, -3.003515121236e-005)

local maincore_12 = Instance.new("Part", zen)
maincore_12.FormFactor = Enum.FormFactor.Custom
maincore_12.CanCollide = false
maincore_12.Reflectance = 0.6
maincore_12.Material = Enum.Material.Neon
maincore_12.Size = Vector3.new(0.2, 2.6, 0.8)
maincore_12.Name = "MainCore"
maincore_12.CFrame = CFrame.new(-93.242, 182.771, -46.572) * CFrame.Angles(-3.1413333415985, -1.5707963705063, 0)
maincore_12.BrickColor = BrickColor.new("Bright bluish green")
maincore_12.Friction = 0.3

local mesh_12 = Instance.new("SpecialMesh", maincore_12)
mesh_12.Scale = Vector3.new(0.19, 1.678, 0.264)
mesh_12.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_12.TextureId = "rbxassetid://5808536"
mesh_12.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_12.MeshType = Enum.MeshType.FileMesh

local weld_9 = Instance.new("ManualWeld", maincore_12)
weld_9.Part1 = grip
weld_9.Name = "Weld"
weld_9.C1 = CFrame.new(0.035, 0.001, -0.18) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_9.Part0 = maincore_12
weld_9.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1415491104126, -1.5707963705063, 0)

local maincore_14 = Instance.new("Part", zen)
maincore_14.FormFactor = Enum.FormFactor.Custom
maincore_14.CanCollide = false
maincore_14.Reflectance = 0.6
maincore_14.Material = Enum.Material.Neon
maincore_14.Size = Vector3.new(0.2, 0.2, 0.6)
maincore_14.Name = "MainCore"
maincore_14.CFrame = CFrame.new(-93.502, 178.671, -46.383) * CFrame.Angles(-3.1413786411285, 3.1000119633973e-005, -3.0041814170545e-005)
maincore_14.BrickColor = BrickColor.new("Bright bluish green")
maincore_14.Friction = 0.3

local mesh_14 = Instance.new("SpecialMesh", maincore_14)
mesh_14.Scale = Vector3.new(0.19, 0.722, 0.264)
mesh_14.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_14.TextureId = "rbxassetid://5808536"
mesh_14.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_14.MeshType = Enum.MeshType.FileMesh

local weld_10 = Instance.new("ManualWeld", maincore_14)
weld_10.Part1 = grip
weld_10.Name = "Weld"
weld_10.C1 = CFrame.new(-0.225, -4.1, 0.01) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_10.Part0 = maincore_14
weld_10.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1413786411285, 3.100653339061e-005, -3.003515121236e-005)

local part_11 = Instance.new("Part", zen)
part_11.FormFactor = Enum.FormFactor.Custom
part_11.CanCollide = false
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Material = Enum.Material.Neon
part_11.Size = Vector3.new(0.4, 5, 0.4)
part_11.CFrame = CFrame.new(-93.282, 181.77, -46.392) * CFrame.Angles(0.00021399914112408, -3.1006638891995e-005, -3.0993338441476e-005)
part_11.BrickColor = BrickColor.new("Light stone grey")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_11 = Instance.new("ManualWeld", part_11)
weld_11.Part1 = grip
weld_11.Name = "Weld"
weld_11.C1 = CFrame.new(-0.005, -1, 0) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_11.Part0 = part_11
weld_11.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0.00021399999968708, 3.0999992304714e-005, 3.1000010494608e-005)

local maincore_15 = Instance.new("Part", zen)
maincore_15.FormFactor = Enum.FormFactor.Custom
maincore_15.CanCollide = false
maincore_15.Reflectance = 0.6
maincore_15.Material = Enum.Material.Neon
maincore_15.Size = Vector3.new(0.2, 0.2, 0.6)
maincore_15.Name = "MainCore"
maincore_15.CFrame = CFrame.new(-93.072, 178.671, -46.383) * CFrame.Angles(-3.1413786411285, 3.1000119633973e-005, -3.0041814170545e-005)
maincore_15.BrickColor = BrickColor.new("Bright bluish green")
maincore_15.Friction = 0.3

local mesh_15 = Instance.new("SpecialMesh", maincore_15)
mesh_15.Scale = Vector3.new(0.19, 0.722, 0.264)
mesh_15.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_15.TextureId = "rbxassetid://5808536"
mesh_15.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_15.MeshType = Enum.MeshType.FileMesh

local weld_12 = Instance.new("ManualWeld", maincore_15)
weld_12.Part1 = grip
weld_12.Name = "Weld"
weld_12.C1 = CFrame.new(0.205, -4.1, 0.01) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_12.Part0 = maincore_15
weld_12.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1413786411285, 3.100653339061e-005, -3.003515121236e-005)

local part_13 = Instance.new("Part", zen)
part_13.FormFactor = Enum.FormFactor.Custom
part_13.CanCollide = false
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Material = Enum.Material.Neon
part_13.Size = Vector3.new(1.11, 0.43, 1.26)
part_13.CFrame = CFrame.new(-93.287, 178.645, -46.383) * CFrame.Angles(0.00025933136930689, -4.3659179937094e-005, 1.5707423686981)
part_13.BrickColor = BrickColor.new("Light stone grey")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_17 = Instance.new("CylinderMesh", part_13)

local weld_13 = Instance.new("ManualWeld", part_13)
weld_13.Part1 = grip
weld_13.Name = "Weld"
weld_13.C1 = CFrame.new(-0.01, -4.125, 0.01) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_13.Part0 = part_13
weld_13.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(4.3645191908581e-005, 0.00025933363940567, -1.5707423686981)

local part_12 = Instance.new("Part", zen)
part_12.FormFactor = Enum.FormFactor.Custom
part_12.CanCollide = false
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Material = Enum.Material.Neon
part_12.Size = Vector3.new(1.27, 0.4, 1.64)
part_12.CFrame = CFrame.new(-93.282, 178.635, -46.373) * CFrame.Angles(0.00025933136930689, -4.3659179937094e-005, 1.5707423686981)
part_12.BrickColor = BrickColor.new("Bright bluish green")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_16 = Instance.new("CylinderMesh", part_12)

local weld_14 = Instance.new("ManualWeld", part_12)
weld_14.Part1 = grip
weld_14.Name = "Weld"
weld_14.C1 = CFrame.new(-0.005, -4.135, 0.02) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_14.Part0 = part_12
weld_14.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(4.3645191908581e-005, 0.00025933363940567, -1.5707423686981)

local part = Instance.new("Part", zen)
part.FormFactor = Enum.FormFactor.Custom
part.CanCollide = false
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Material = Enum.Material.Neon
part.Size = Vector3.new(0.4, 2, 0.4)
part.CFrame = CFrame.new(-93.242, 189.37, -45.371) * CFrame.Angles(2.3564615249634, 3.9876555092633e-005, -1.5840341802686e-005)
part.BrickColor = BrickColor.new("Light stone grey")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_15 = Instance.new("ManualWeld", part)
weld_15.Part1 = grip
weld_15.Name = "Weld"
weld_15.C1 = CFrame.new(0.035, 6.6, 1.02) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_15.Part0 = part
weld_15.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-2.3564615249634, 1.7006688722176e-005, -3.9393224142259e-005)

local maincore_2 = Instance.new("Part", zen)
maincore_2.FormFactor = Enum.FormFactor.Custom
maincore_2.CanCollide = false
maincore_2.Reflectance = 0.6
maincore_2.Material = Enum.Material.Neon
maincore_2.Size = Vector3.new(0.2, 0.2, 0.72)
maincore_2.Name = "MainCore"
maincore_2.CFrame = CFrame.new(-93.212, 190.171, -46.351) * CFrame.Angles(-3.1413786411285, 3.1000119633973e-005, -3.0041814170545e-005)
maincore_2.BrickColor = BrickColor.new("Bright bluish green")
maincore_2.Friction = 0.3

local mesh = Instance.new("SpecialMesh", maincore_2)
mesh.Scale = Vector3.new(0.448, 1.774, 0.664)
mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh.TextureId = "rbxassetid://5808536"
mesh.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh.MeshType = Enum.MeshType.FileMesh

local weld_16 = Instance.new("ManualWeld", maincore_2)
weld_16.Part1 = grip
weld_16.Name = "Weld"
weld_16.C1 = CFrame.new(0.065, 7.401, 0.04) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_16.Part0 = maincore_2
weld_16.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1413786411285, 3.100653339061e-005, -3.003515121236e-005)

local maincore_3 = Instance.new("Part", zen)
maincore_3.FormFactor = Enum.FormFactor.Custom
maincore_3.CanCollide = false
maincore_3.Reflectance = 0.6
maincore_3.Material = Enum.Material.Neon
maincore_3.Size = Vector3.new(0.2, 0.2, 0.4)
maincore_3.Name = "MainCore"
maincore_3.CFrame = CFrame.new(-93.212, 188.67, -45.111) * CFrame.Angles(-1.8324282169342, 6.2179042288335e-006, -4.313464887673e-005)
maincore_3.BrickColor = BrickColor.new("Bright bluish green")
maincore_3.Friction = 0.3

local mesh_2 = Instance.new("SpecialMesh", maincore_3)
mesh_2.Scale = Vector3.new(0.4, 1.774, 0.45)
mesh_2.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_2.TextureId = "rbxassetid://5808536"
mesh_2.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_2.MeshType = Enum.MeshType.FileMesh

local weld_17 = Instance.new("ManualWeld", maincore_3)
weld_17.Part1 = grip
weld_17.Name = "Weld"
weld_17.C1 = CFrame.new(0.065, 5.9, 1.28) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_17.Part0 = maincore_3
weld_17.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.8324282169342, 4.3275031202938e-005, -5.1507608986867e-006)

local part_2 = Instance.new("Part", zen)
part_2.FormFactor = Enum.FormFactor.Custom
part_2.CanCollide = false
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Material = Enum.Material.Neon
part_2.Size = Vector3.new(0.4, 2, 0.4)
part_2.CFrame = CFrame.new(-93.242, 187.771, -47.771) * CFrame.Angles(2.880030632019, 3.4582724765642e-005, -2.5689705580589e-005)
part_2.BrickColor = BrickColor.new("Light stone grey")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_18 = Instance.new("ManualWeld", part_2)
weld_18.Part1 = grip
weld_18.Name = "Weld"
weld_18.C1 = CFrame.new(0.035, 5.001, -1.38) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_18.Part0 = part_2
weld_18.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-2.880030632019, 2.676337135199e-005, -3.3758635254344e-005)

local part_3 = Instance.new("Part", zen)
part_3.FormFactor = Enum.FormFactor.Custom
part_3.CanCollide = false
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Material = Enum.Material.Neon
part_3.Size = Vector3.new(0.4, 2, 0.4)
part_3.CFrame = CFrame.new(-93.242, 189.371, -47.37) * CFrame.Angles(-2.3560318946838, 1.7195608961629e-005, -3.9879607356852e-005)
part_3.BrickColor = BrickColor.new("Light stone grey")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_19 = Instance.new("ManualWeld", part_3)
weld_19.Part1 = grip
weld_19.Name = "Weld"
weld_19.C1 = CFrame.new(0.035, 6.6, -0.98) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_19.Part0 = part_3
weld_19.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(2.3560318946838, 4.03608828492e-005, -1.6033423889894e-005)

local maincore_4 = Instance.new("Part", zen)
maincore_4.FormFactor = Enum.FormFactor.Custom
maincore_4.CanCollide = false
maincore_4.Reflectance = 0.6
maincore_4.Material = Enum.Material.Neon
maincore_4.Size = Vector3.new(0.2, 0.2, 0.4)
maincore_4.Name = "MainCore"
maincore_4.CFrame = CFrame.new(-93.212, 188.671, -47.711) * CFrame.Angles(-1.3088328838348, -5.300061275193e-006, -4.3381543946452e-005)
maincore_4.BrickColor = BrickColor.new("Bright bluish green")
maincore_4.Friction = 0.3

local mesh_3 = Instance.new("SpecialMesh", maincore_4)
mesh_3.Scale = Vector3.new(0.4, 1.774, 0.45)
mesh_3.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_3.TextureId = "rbxassetid://5808536"
mesh_3.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_3.MeshType = Enum.MeshType.FileMesh

local weld_20 = Instance.new("ManualWeld", maincore_4)
weld_20.Part1 = grip
weld_20.Name = "Weld"
weld_20.C1 = CFrame.new(0.065, 5.9, -1.321) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_20.Part0 = maincore_4
weld_20.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.3088328838348, 4.3274096242385e-005, 6.1156251831562e-006)

local maincore_5 = Instance.new("Part", zen)
maincore_5.FormFactor = Enum.FormFactor.Custom
maincore_5.CanCollide = false
maincore_5.Reflectance = 0.6
maincore_5.Material = Enum.Material.Neon
maincore_5.Size = Vector3.new(0.2, 0.2, 0.6)
maincore_5.Name = "MainCore"
maincore_5.CFrame = CFrame.new(-93.212, 186.681, -46.371) * CFrame.Angles(-3.1413786411285, 3.1000119633973e-005, -3.0041814170545e-005)
maincore_5.BrickColor = BrickColor.new("Bright bluish green")
maincore_5.Friction = 0.3

local mesh_4 = Instance.new("SpecialMesh", maincore_5)
mesh_4.Scale = Vector3.new(0.4, 0.486, 0.264)
mesh_4.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_4.TextureId = "rbxassetid://5808536"
mesh_4.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_4.MeshType = Enum.MeshType.FileMesh

local weld_21 = Instance.new("ManualWeld", maincore_5)
weld_21.Part1 = grip
weld_21.Name = "Weld"
weld_21.C1 = CFrame.new(0.065, 3.91, 0.02) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_21.Part0 = maincore_5
weld_21.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(3.1413786411285, 3.100653339061e-005, -3.003515121236e-005)

local part_4 = Instance.new("Part", zen)
part_4.FormFactor = Enum.FormFactor.Custom
part_4.CanCollide = false
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Material = Enum.Material.Neon
part_4.Size = Vector3.new(0.4, 2, 0.4)
part_4.CFrame = CFrame.new(-93.242, 186.471, -45.972) * CFrame.Angles(2.6182346343994, 3.7555360904662e-005, -2.0926678189426e-005)
part_4.BrickColor = BrickColor.new("Light stone grey")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_22 = Instance.new("ManualWeld", part_4)
weld_22.Part1 = grip
weld_22.Name = "Weld"
weld_22.C1 = CFrame.new(0.035, 3.7, 0.419) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_22.Part0 = part_4
weld_22.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-2.6182346343994, 2.2069436454331e-005, -3.6895373341395e-005)

local part_5 = Instance.new("Part", zen)
part_5.FormFactor = Enum.FormFactor.Custom
part_5.CanCollide = false
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.Material = Enum.Material.Neon
part_5.Size = Vector3.new(0.4, 2, 0.4)
part_5.CFrame = CFrame.new(-93.242, 186.47, -46.771) * CFrame.Angles(-2.6178369522095, 2.2236754375626e-005, -3.7206133129075e-005)
part_5.BrickColor = BrickColor.new("Light stone grey")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_23 = Instance.new("ManualWeld", part_5)
weld_23.Part1 = grip
weld_23.Name = "Weld"
weld_23.C1 = CFrame.new(0.035, 3.7, -0.38) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_23.Part0 = part_5
weld_23.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(2.6178369522095, 3.7863967008889e-005, -2.1097104763612e-005)

local part_6 = Instance.new("Part", zen)
part_6.FormFactor = Enum.FormFactor.Custom
part_6.CanCollide = false
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Material = Enum.Material.Neon
part_6.Size = Vector3.new(0.4, 2, 0.4)
part_6.CFrame = CFrame.new(-93.242, 187.77, -44.972) * CFrame.Angles(-2.8795969486237, 2.6863865059568e-005, -3.3906086173374e-005)
part_6.BrickColor = BrickColor.new("Light stone grey")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_24 = Instance.new("ManualWeld", part_6)
weld_24.Part1 = grip
weld_24.Name = "Weld"
weld_24.C1 = CFrame.new(0.035, 5, 1.419) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_24.Part0 = part_6
weld_24.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(2.8795969486237, 3.4729095204966e-005, -2.5791048756219e-005)

local part_7 = Instance.new("Part", zen)
part_7.FormFactor = Enum.FormFactor.Custom
part_7.CanCollide = false
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Material = Enum.Material.Neon
part_7.Size = Vector3.new(0.4, 2, 0.4)
part_7.CFrame = CFrame.new(-93.242, 186.27, -44.571) * CFrame.Angles(-0.78519427776337, -1.652482933423e-005, -4.0553695725976e-005)
part_7.BrickColor = BrickColor.new("Light stone grey")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_25 = Instance.new("ManualWeld", part_7)
weld_25.Part1 = grip
weld_25.Name = "Weld"
weld_25.C1 = CFrame.new(0.035, 3.5, 1.82) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_25.Part0 = part_7
weld_25.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0.78519433736801, 4.0357146644965e-005, 1.6999229046633e-005)

local maincore_7 = Instance.new("Part", zen)
maincore_7.FormFactor = Enum.FormFactor.Custom
maincore_7.CanCollide = false
maincore_7.Reflectance = 0.6
maincore_7.Material = Enum.Material.Neon
maincore_7.Size = Vector3.new(0.2, 0.2, 0.4)
maincore_7.Name = "MainCore"
maincore_7.CFrame = CFrame.new(-93.212, 185.671, -46.912) * CFrame.Angles(-1.5706560611725, 4.7674936354269e-007, -4.3644846300595e-005)
maincore_7.BrickColor = BrickColor.new("Bright bluish green")
maincore_7.Friction = 0.3

local mesh_6 = Instance.new("SpecialMesh", maincore_7)
mesh_6.Scale = Vector3.new(0.4, 0.486, 0.264)
mesh_6.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_6.TextureId = "rbxassetid://5808536"
mesh_6.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_6.MeshType = Enum.MeshType.FileMesh

local weld_26 = Instance.new("ManualWeld", maincore_7)
weld_26.Part1 = grip
weld_26.Name = "Weld"
weld_26.C1 = CFrame.new(0.065, 2.901, -0.52) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_26.Part0 = maincore_7
weld_26.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5706560611725, 4.3644766265061e-005, 4.8289967935489e-007)

local part_8 = Instance.new("Part", zen)
part_8.FormFactor = Enum.FormFactor.Custom
part_8.CanCollide = false
part_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.Material = Enum.Material.Neon
part_8.Size = Vector3.new(0.4, 2, 0.4)
part_8.CFrame = CFrame.new(-93.242, 186.271, -48.172) * CFrame.Angles(-2.3560318946838, 1.7195608961629e-005, -3.9879607356852e-005)
part_8.BrickColor = BrickColor.new("Light stone grey")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_27 = Instance.new("ManualWeld", part_8)
weld_27.Part1 = grip
weld_27.Name = "Weld"
weld_27.C1 = CFrame.new(0.035, 3.5, -1.78) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_27.Part0 = part_8
weld_27.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(2.3560318946838, 4.03608828492e-005, -1.6033423889894e-005)

local maincore_6 = Instance.new("Part", zen)
maincore_6.FormFactor = Enum.FormFactor.Custom
maincore_6.CanCollide = false
maincore_6.Reflectance = 0.6
maincore_6.Material = Enum.Material.Neon
maincore_6.Size = Vector3.new(0.2, 0.2, 0.4)
maincore_6.Name = "MainCore"
maincore_6.CFrame = CFrame.new(-93.212, 185.671, -45.912) * CFrame.Angles(-1.5706560611725, 4.7674936354269e-007, -4.3644846300595e-005)
maincore_6.BrickColor = BrickColor.new("Bright bluish green")
maincore_6.Friction = 0.3

local mesh_5 = Instance.new("SpecialMesh", maincore_6)
mesh_5.Scale = Vector3.new(0.4, 0.486, 0.264)
mesh_5.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh_5.TextureId = "rbxassetid://5808536"
mesh_5.VertexColor = Vector3.new(0.1, 0.6, 0.5)
mesh_5.MeshType = Enum.MeshType.FileMesh

local weld_28 = Instance.new("ManualWeld", maincore_6)
weld_28.Part1 = grip
weld_28.Name = "Weld"
weld_28.C1 = CFrame.new(0.065, 2.901, 0.479) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_28.Part0 = maincore_6
weld_28.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5706560611725, 4.3644766265061e-005, 4.8289967935489e-007)

local hbx = Instance.new("Part", zen)
hbx.FormFactor = Enum.FormFactor.Custom
hbx.CanCollide = false
hbx.Transparency = 1
hbx.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hbx.Material = Enum.Material.Neon
hbx.Size = Vector3.new(0.4, 4.1, 6.5)
hbx.Name = "hbx"
hbx.CFrame = CFrame.new(-93.242, 187.386, -46.38) * CFrame.Angles(1.5710632801056, 3.9004538848531e-005, 1.6989586583804e-005)
hbx.BrickColor = BrickColor.new("Light stone grey")
hbx.Friction = 0.3
hbx.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_29 = Instance.new("ManualWeld", hbx)
weld_29.Part1 = grip
weld_29.Name = "Weld"
weld_29.C1 = CFrame.new(0.035, 4.616, 0.01) * CFrame.Angles(-0.00021399348042905, 3.0999068258097e-005, 3.0999075534055e-005)
weld_29.Part0 = hbx
weld_29.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.5710632801056, 1.700000029814e-005, -3.8999998650979e-005)

zen.Parent = char
zen:MakeJoints()
print("Zen loaded.")

gripweld = Instance.new("Weld", char.Zen)
gripweld.Part0 = RightArm
gripweld.Part1 = grip
gripweld.C0 = CFrame.new(0, -1.1, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))

local function weldBetween(a, b, name)
    local weld = Instance.new("ManualWeld")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse() * a.CFrame
    weld.Parent = a
        weld.Name=name or 'weldb1'
        weld.Parent=m
    return weld;
end        
                                        
Asset = "http://www.roblox.com/asset/?id="
local mhitsounds = {199149137,199149186,199149221,199149235,199149269,199149297}
local magicshots = {263609809,263609836,263609864,263609874,263609898}
local ptches = {0.9, 0.95, 1, 1.05}

rings=Instance.new('Model',Character)

ring=function(way,way2,where,vector,rv1,rv2,rv3,c1,c2)
        local rng = Instance.new("Part", rings)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Bright blue")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = .5
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = where.CFrame * CFrame.Angles(math.rad(way), math.rad(way2), 0) 
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

player=game.Players.localPlayer
char=player.Character
Effects={}
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
m=Instance.new("Model",char)

function atktype(s, e)
        coroutine.resume(coroutine.create(function()
                attacktype = e
                swait(80)
                attacktype = s
        end))
end

mouse.Button1Down:connect(function()
        if equipped==true and hand==false then
                if attacktype==1 then
                        attackone()
                elseif attacktype==2 then
                        attacktwo()
                elseif attacktype==3 then
                        attackthree()
                end
        end
end)

mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=="z" and attack == false then
        	MegatonSmash()
		elseif k=="x" and attack == false then
			GravityWell()
        end
end)

function attackone()
if attack==false and attacktype==1 then
        attacktype=2
        attack=true

        for i=0,1,0.1 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-0.2,0,-.5),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(-30,-25,0)*euler(0,-.2,0),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
                RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(-0.2,.5,0),.3)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(-0.2,.5,0),.3)
				gripweld.C0=clerp(gripweld.C0,cf(0,-1.1,-3)*angles(math.rad(-90),math.rad(0),math.rad(20)),.2)
        end
        so("http://www.roblox.com/asset/?id=320557563",hbx,1,.8)
          --so(Asset..magicshots[math.random(1,#magicshots)],hbx,1,ptches[math.random(1,#ptches)])
        con1=hbx.Touched:connect(function(hit) Damagefunc(hbx, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, Asset..mhitsounds[math.random(1,#mhitsounds)], 1) end)
        for i=0,1,0.2 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
                RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(0,0,0)*euler(0,0,0),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
                --gripweld.C0 = CFrame.new(0, -1.1, -5) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
				gripweld.C0=clerp(gripweld.C0,cf(0,-1.1,-5)*angles(math.rad(-90),math.rad(0),math.rad(0)),.2)
        end
        for i=0,1,0.1 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-1)*euler(0,-.7,0),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
				RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
				LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
				gripweld.C0=clerp(gripweld.C0,cf(0,-1.1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.2)
        end
        con1:disconnect()
        attack=false
        atktype(1, 2)
end
end

function attacktwo()
        if attack==false and attacktype==2 then
        attacktype=3
        attack=true 
        for i=0,1,0.75 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(0,0,0),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,1)*euler(0,1.6,0),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
                LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
                gripweld.C0 = CFrame.new(0, -1.1, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
        end
        for i=0,1,0.1 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.2,0,0),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.7),.3)
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.57,0,-1)*euler(0,1.2,0),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.8,0,-.4),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                RH.C0=clerp(RH.C0,cf(.8,-1,.2)*euler(0,1.57,0)*euler(0,-.7,0),.3)
                LH.C0=clerp(LH.C0,cf(-.8,-1,.2)*euler(0,-1.57,0)*euler(0,-.7,0),.3)
        end
        so("http://www.roblox.com/asset/?id=203691492",hbx,1,1)
        --so("http://www.roblox.com/asset/?id=200633077",hbx,1,1)        
        --so(Asset..magicshots[math.random(1,#magicshots)],hbx,1,ptches[math.random(1,#ptches)])
        con1=hbx.Touched:connect(function(hit) Damagefunc(hbx, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, Asset..mhitsounds[math.random(1,#mhitsounds)], 1) end)
        for i=0,1,0.2 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(0,0,0),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,1)*euler(0,1.6,0),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
                LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
                gripweld.C0 = CFrame.new(0, -1.1, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
        end
        for i=0,1,0.1 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(.1,0,0),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.8)*euler(0,1.3,0),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
                LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
                gripweld.C0 = CFrame.new(0, -1.1, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
        end
        attack=false
        atktype(1, 3)
        con1:disconnect()
        end
end


function attackthree()
if attack==false and attacktype==3 then
        attacktype=1
        attack=true
        for i=0,1,0.1 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
                RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
                LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
        end
        
        so("http://www.roblox.com/asset/?id=320557563",hbx,1,.7)
        for i=0,1,0.2 do
                swait()
                Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
                RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(0,0,0)*euler(0,0,0),.3)
                RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.3)
                LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
                LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
                gripweld.C0 = CFrame.new(0, -1.1, -1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
        end
        so("http://www.roblox.com/asset/?id=231917788",hbx,1,1.4)
        MagniDamage(hbx,hbx,5,10,25,0,"Normal")
        attack=false
        atktype(1, 1)
end
end
--
function addvel(x,y,z,lv,dur) -- Format: (x, y, z, lookvector velocity..optional, duration)
	coroutine.resume(coroutine.create(function()
	local BV = Instance.new("BodyVelocity", RootPart)
        		BV.maxForce = Vector3.new(200000,200000,200000)
        		BV.P = 100000
				if lv then
					BV.velocity = RootPart.CFrame.lookVector*lv+Vector3.new(x,y,z)
				else
        			BV.velocity = Vector3.new(x,y,z)
				end
				wait(dur)
				BV:Remove()
	end))		 	
end
--C

function MegatonSmash()
                attack=true
				Humanoid.JumpPower=0
				Humanoid.WalkSpeed=9
                for i=0,1,0.075 do
                        swait()
                        Neck.C0=clerp(Neck.C0,necko*euler(0.3,0,0),.3)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
						RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(80 + 2.5*math.cos(40)),math.rad(10),math.rad(60)),.3)
						LW.C0=clerp(LW.C0,cf(-1.3,0.5,-0.8)*angles(math.rad(5 + 2.5*math.cos(90)),math.rad(50),math.rad(80)),.3)
                        RH.C0=clerp(RH.C0,cf(1,-0.9,-0.5)*euler(0,1,0)*euler(0,.5,0.1),.3)
                        LH.C0=clerp(LH.C0,cf(-1,-1,-0.1)*euler(0,-1,0)*euler(0,-.5,0.3),.3)
						gripweld.C0=clerp(gripweld.C0,cf(0,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-105)),.3)
                end
				Humanoid.WalkSpeed = 0 
				addvel(0,100,0,40,0.2)
					so("http://roblox.com/asset/?id=320557563", Torso, 1, 0.7)
					so("http://roblox.com/asset/?id=203691492", Torso, 1, 1)
                for i=0,1,0.075 do
                        swait()
                        Neck.C0=clerp(Neck.C0,necko*euler(-0.3,0,0),.3)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0-360*(-i))), .3)
						RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(80 + 2.5*math.cos(40)),math.rad(10),math.rad(60)),.3)
						LW.C0=clerp(LW.C0,cf(-1.3,0.5,-0.8)*angles(math.rad(5 + 2.5*math.cos(90)),math.rad(50),math.rad(80)),.3)
                        RH.C0=clerp(RH.C0,cf(1,-0.9,-1)*euler(0,1,0)*euler(0,.5,-0.5),.3)
                        LH.C0=clerp(LH.C0,cf(-1,-1,-0.1)*euler(0,-1,0)*euler(0,-.5,0.3),.3)
						gripweld.C0=clerp(gripweld.C0,cf(1,2,-0.5)*angles(math.rad(10),math.rad(20),math.rad(-10)),.3)
                end			
                con1=hbx.Touched:connect(function(hit) 
					Damagefunc(hbx, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, Asset..mhitsounds[math.random(1,#mhitsounds)], 1) 
				end)
                for i=0,1,0.075 do 
                        swait()
                        Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
                        RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
                        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0)*euler(-90,0,0),.3)
                        RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                        LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-1,0,0)*euler(0,0,0),.3)
                        LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                        RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1,1,0)*euler(0,.5,0),.3)
                        LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-1,-1,0)*euler(0,-.5,0),.3)
                        gripweld.C0=clerp(gripweld.C0,cf(0,-2,-1)*angles(math.rad(-130),math.rad(0),math.rad(0)),.3)
                end
				if hitfloor==nil then
				so("http://roblox.com/asset/?id=234365549",hbx,1,0.6)
				addvel(0,-150,0,40,0.2)
				while hitfloor == nil do
				for i=0,1,0.075 do 
                        --swait()
                        Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
                        RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.5,0,0),.3)
                        RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*euler(90,0,-7),.3)
                        RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                        LW.C0=clerp(LW.C0,cf(-1.5,0.5,-0.5)*euler(90,0,-5.5),.3)
                        LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                        RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(1.5,1,0)*euler(0,.5,0),.3)
                        LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(1.5,-1,0)*euler(0,-.5,0),.3)
                        gripweld.C0=clerp(gripweld.C0,cf(2.3,-4.5,0)*angles(math.rad(-180),math.rad(0),math.rad(-40)),.3)
						swait()
				end
				end
				hit,pos=rayCast(RightLeg.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
				if hit~=nil then
				print("Land")
				so("http://roblox.com/asset/?id=157878578",hbx,.6,1.5)
				MagniDamage(hbx,hbx,15,30,80,0,"Plat")
				MagicCircle(BrickColor.new("Institutional white"),hbx.CFrame*CFrame.new(0,-3,0),2,0.5,2,4,0.5,4,0.05)
				BlastEffect(BrickColor.new("Bright bluish green"),hbx.CFrame*CFrame.new(0,-3,0),.2,.2,.2,1,1,1)
				end
				Humanoid.WalkSpeed = 12
				Humanoid.JumpPower=50
				else
				end 
                attack=false
                con1:disconnect()
end
--Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
--function MagniDamage(Hit, Part, magni, mindam, maxdam, knock, Type)
function GravityWell()
	            attack=true
				so("rbxassetid://506850625",hbx,.6,1.5)
				Humanoid.JumpPower=0
				Humanoid.WalkSpeed=0
				local gravitating = true
				
				coroutine.resume(coroutine.create(function()
					SpellCircle(BrickColor.new("Institutional white"),cf(Torso.CFrame.x,Torso.CFrame.y,Torso.CFrame.z)*CFrame.new(0,-2.8,0),2,0.05,2,1,0.005,1,0.005,5)
					MagicCircle(BrickColor.new("Institutional white"),cf(Torso.CFrame.x,Torso.CFrame.y,Torso.CFrame.z)*CFrame.new(0,-2.7,0),3,0.1,3,2,0.01,2,0.008,5)
					wait(0.8)
					local PortalSnd = it("Sound",Torso)
					PortalSnd.Volume = 0
					PortalSnd.SoundId = "rbxassetid://506851033"
					PortalSnd.Looped = true
					wait()
					PortalSnd:play()
					for i = 0,1,0.1 do
					wait(0.05)
					PortalSnd.Volume = i
					end
					wait(3)
					so("rbxassetid://506851188",hbx,.6,1.5)
					MagicCircle(BrickColor.new("Institutional white"),cf(Torso.CFrame.x,Torso.CFrame.y,Torso.CFrame.z)*CFrame.new(0,-2,0),200,0.1,200,-2,-0.01,-2,0.008,5)
					MagicCircle(BrickColor.new("Institutional white"),cf(Torso.CFrame.x,Torso.CFrame.y,Torso.CFrame.z)*CFrame.new(0,-2.1,0),300,0.1,300,-2,-0.01,-2,0.008,5)
					wait(0.4)
					MagicCircle(BrickColor.new("Institutional white"),cf(Torso.CFrame.x,Torso.CFrame.y,Torso.CFrame.z)*CFrame.new(0,-1.8,0),400,0.1,400,-3,-0.01,-3,0.01,5)
					for i = 1,0,-0.1 do
					wait(0.05)
					PortalSnd.Volume = i
					end			
					PortalSnd:remove()
					gravitating = false
				end))				
		
				while gravitating == true do 
                
				for i=0,1,0.075 do	
					Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
                    RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1)*euler(0.5,0,0),.3)
                    RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*euler(90,0,-7),.3)
                    RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                    LW.C0=clerp(LW.C0,cf(-1.5,0.5,-0.5)*euler(90,0,-5.5),.3)
                    LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
                    RH.C0=clerp(RH.C0,cf(1,-1,0.5)*euler(-1,1,0),.3)
                    LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(1,-1,0),.3)
                    gripweld.C0=clerp(gripweld.C0,cf(0,-1.5,0.5)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
					swait()	
				end
                end

--SpellCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,lifetime)
--function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, lifetime)
				
				
				Humanoid.JumpPower=50
				Humanoid.WalkSpeed=12
                attack=false
end

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
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = TorsoColor
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
w2.BrickColor = TorsoColor
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

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

local sine = 0
local change = 1
local val = 0

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
Mesh=Thing[1].Mesh
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
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(80 + 2.5*math.cos(sine/40)),math.rad(-10),math.rad(60)),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.3)
gripweld.C0=clerp(gripweld.C0,cf(0,1,-0.5)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(80 + 2.5*math.cos(sine/40)),math.rad(-10),math.rad(60)),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.3)
gripweld.C0=clerp(gripweld.C0,cf(0,1,-0.5)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
Humanoid.WalkSpeed = 12
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.25)*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(6+2.5*math.cos(sine/40)),math.rad(5+2.5*math.cos(sine/40)),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(80 + 2.5*math.cos(sine/40)),math.rad(-10),math.rad(60)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(5 + 2.5*math.cos(sine/40)),math.rad(0),math.rad(0)),.3)
RH.C0 = clerp(RH.C0, cf(1, -.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .3)
LH.C0 = clerp(LH.C0, cf(-1, -.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .3)
gripweld.C0=clerp(gripweld.C0,cf(0,1,-0.5)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.05 + .1 * math.cos(sine / 5)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(5 * math.cos(sine / 10))), .2)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-3), math.rad(0), math.rad(-5 * math.cos(sine / 10)) + RootPart.RotVelocity.Y / 15), .2)			
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(80 * math.cos(1/2)),math.rad(-10),math.rad(60)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10 * math.cos(sine / 13)), math.rad(0), math.rad(4 * math.cos(sine / 13))), .2)
RH.C0 = clerp(RH.C0, cf(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(10 * math.cos(sine / 13))), .2)
LH.C0 = clerp(LH.C0, cf(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10 * math.cos(sine / 13))), .2)
gripweld.C0=clerp(gripweld.C0,cf(0,1,-0.5)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
end
end


--[[
==================================]}
//{Base ver: ---
//{Collection: Phoenix
==================================]}
--]]