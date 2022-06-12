player = game:GetService("Players").LocalPlayer

char = player.Character

mouse = player:GetMouse()

local batc = true

local xd = Instance.new("Model", game.Workspace)

xd.Name = player.Name .. "'s INSTANCES"

bh = false

ignore = {}

local pxo

local osr = 5

mouse.TargetFilter = xd

function makepart(transparency, collide, color, size, cf, material, shape, debris, anchored)

  local p = Instance.new("Part", xd)

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

function meshsomething(part, meshid, textureid, scale, mt)

  local msh

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

game:GetService("RunService").RenderStepped:connect(function()

  if game.Workspace:FindFirstChild(player.Name .. "'s INSTANCES") then

  else

    xd = Instance.new("Model", game.Workspace)

    xd.Name = player.Name .. "'s INSTANCES"

    mouse.TargetFilter = xd

    local efr = makepart(1, false, nil, Vector3.new(1, 1, 1), char["Left Arm"].CFrame, nil, nil, nil, false)

    efr.Anchored = false

    local wf = Instance.new("Weld", char)

    wf.Part0 = char["Left Arm"]

    wf.Part1 = efr

    wf.C0 = CFrame.new(0, -1, 0)

  end

end)

for i, v in pairs(char:GetChildren()) do

  if v.ClassName == "Weld" then

    v:destroy()

  end

  if v.ClassName == "Model" then

    v:Destroy()

  end

  if v.ClassName == "NumberValue" then

    v:Destroy()

  end

  if v.ClassName == "CFrameValue" then

    v:Destroy()

  end

  if v.ClassName == "BoolValue" then

    v:Destroy()

  end

  if v.ClassName == "IntValue" then

    v:Destroy()

  end

  if v.ClassName == "StringValue" then

    v:Destroy()

  end

end

local makeorb = false

idleq = false

local skl = false

local healingmode = false

parts = {}

poses = {}

local bfr = false

sizes = {}

local obj3, TARG10, TARG11, STARG, lastdg, dg, dgm

team = Instance.new("StringValue", char)

team.Name = "Team"

team.Value = player.Name

local lastdf, df, dfm

local basicunlocked = false

mc = Instance.new("NumberValue", char)

mc.Name = "CloanTime"

mc.Value = 0

xz = Instance.new("NumberValue", char)

xz.Name = "EffectTime"

xz.Value = 0

ht = Instance.new("NumberValue", char)

ht.Name = "HealingTime"

ht.Value = 6

stun = Instance.new("BoolValue", char)

stun.Name = "Stunned"

stun.Value = false

atk = Instance.new("NumberValue", char)

atk.Name = "Attack"

atk.Value = 1.1

def = Instance.new("NumberValue", char)

def.Name = "Defense"

def.Value = 0.9

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

local TARG7, obj, TARG8, obj2

for i, v in pairs(player.PlayerGui:GetChildren()) do

  if v.Name == "UI" then

    v:Destroy()

  end

end

for i, v in pairs(char.Head:GetChildren()) do

  if v.ClassName == "Sound" then

    v:Destroy()

  end

end

if script:FindFirstChild("forCustomRun") ~= nil then

  local sc = script.forCustomRun.Value

  assert(loadstring(sc))()

  return

elseif script:FindFirstChild("forCustomRunL") ~= nil then

  local locsc = workspace:FindFirstChild("_localrun")

  local sc = script.forCustomRunL

  if locsc ~= nil then

    local loc = locsc:clone()

    loc.scrun.Value = sc.Value

    loc.Name = script.Name

    for i, v in pairs(script:GetChildren()) do

      v:clone().Parent = loc

    end

    loc.Parent = script.Parent

    script:remove()

    return

  else

    assert(loadstring(sc.Value))()

    return

  end

end

local m = Instance.new("Model")

m.Name = "Xscythe"

p1 = Instance.new("Part", m)

p1.BrickColor = BrickColor.new("Bright violet")

p1.Material = Enum.Material.Neon

p1.CFrame = CFrame.new(0.934731841, 6.46544838, 8.75127029, 0.999998212, -1.78814898E-5, 0, -8.94076948E-7, 1.00000358, 0, 0, 0, 1)

p1.CanCollide = false

p1.Size = Vector3.new(0.766574264, 0.265702963, 0.284542143)

p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b1 = Instance.new("BlockMesh", p1)

b1.Name = "Mesh"

p2 = Instance.new("Part", m)

p2.BrickColor = BrickColor.new("Black")

p2.Material = Enum.Material.SmoothPlastic

p2.CFrame = CFrame.new(1.03675783, 6.30684662, 8.75549603, 0.500014663, 0.866014898, 0, -0.866029024, 0.500001192, 0, 0, 0, 1)

p2.CanCollide = false

p2.Size = Vector3.new(0.315724552, 0.200000003, 0.312476635)

p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b2 = Instance.new("BlockMesh", p2)

b2.Name = "Mesh"

b2.Scale = Vector3.new(1, 0.389784336, 1)

p3 = Instance.new("Part", m)

p3.BrickColor = BrickColor.new("Black")

p3.Material = Enum.Material.SmoothPlastic

p3.CFrame = CFrame.new(-0.153242677, 6.5873518, 8.75549603, 0.939697087, 0.342002511, 0, -0.342021972, 0.939695776, 0, 0, 0, 1)

p3.CanCollide = false

p3.Size = Vector3.new(0.315724552, 0.200000003, 0.312476635)

p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b3 = Instance.new("BlockMesh", p3)

b3.Name = "Mesh"

b3.Scale = Vector3.new(1, 0.389784336, 1)

p4 = Instance.new("Part", m)

p4.BrickColor = BrickColor.new("Black")

p4.Material = Enum.Material.SmoothPlastic

p4.CFrame = CFrame.new(-0.564059138, 6.64227581, 8.75549603, 0.999998212, -1.78814898E-5, 0, -8.94076948E-7, 1.00000358, 0, 0, 0, 1)

p4.CanCollide = false

p4.Size = Vector3.new(0.538550794, 0.200000003, 0.312476635)

p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b4 = Instance.new("BlockMesh", p4)

b4.Name = "Mesh"

b4.Scale = Vector3.new(1, 0.389784336, 1)

p5 = Instance.new("Part", m)

p5.BrickColor = BrickColor.new("Bright violet")

p5.Material = Enum.Material.Neon

p5.CFrame = CFrame.new(1.02018607, 5.96389675, 8.75127029, 0.766055048, 0.642772079, 0, -0.64278996, 0.76604718, 0, 0, 0, 1)

p5.CanCollide = false

p5.Size = Vector3.new(0.219578028, 0.428762734, 0.284542143)

p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b5 = Instance.new("BlockMesh", p5)

b5.Name = "Mesh"

p6 = Instance.new("Part", m)

p6.BrickColor = BrickColor.new("Black")

p6.Material = Enum.Material.SmoothPlastic

p6.CFrame = CFrame.new(0.976205587, 5.1776638, 8.75127029, 0, -0.866014898, -0.500014663, 0, -0.500001192, 0.866029024, -1, 0, 0)

p6.CanCollide = false

p6.FormFactor = Enum.FormFactor.Symmetric

p6.Size = Vector3.new(0.317023993, 0.200000003, 0.259206206)

p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b6 = Instance.new("SpecialMesh", p6)

b6.MeshType = Enum.MeshType.Wedge

b6.Name = "Mesh"

b6.Scale = Vector3.new(1, 0.776320398, 1)

p7 = Instance.new("Part", m)

p7.BrickColor = BrickColor.new("Black")

p7.Material = Enum.Material.SmoothPlastic

p7.CFrame = CFrame.new(0.140991464, 5.73326588, 8.75290203, 0.40779078, 0.91307348, 0, -0.913086057, 0.407775879, 0, 0, 0, 1)

p7.CanCollide = false

p7.Size = Vector3.new(0.200000003, 0.200000003, 0.312476635)

p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b7 = Instance.new("BlockMesh", p7)

b7.Name = "Mesh"

b7.Scale = Vector3.new(0.581427038, 0.610662043, 1)

p8 = Instance.new("Part", m)

p8.BrickColor = BrickColor.new("Bright violet")

p8.Material = Enum.Material.Neon

p8.CFrame = CFrame.new(0.730698228, 6.36876249, 8.75127029, -1.78814898E-5, -0.999998212, 0, 1.00000358, 8.94076948E-7, 0, 0, 0, 1)

p8.CanCollide = false

p8.Size = Vector3.new(0.324819565, 0.832839072, 0.284542143)

p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b8 = Instance.new("BlockMesh", p8)

b8.Name = "Mesh"

p9 = Instance.new("Part", m)

p9.BrickColor = BrickColor.new("Bright violet")

p9.Material = Enum.Material.Neon

p9.CFrame = CFrame.new(-1.86577713, 5.74635983, 8.75127029, -0.499981403, -0.866034925, 0, -0.866032064, 0.499992758, 0, 0, 0, -1)

p9.CanCollide = false

p9.Size = Vector3.new(0.766574264, 0.265702963, 0.284542143)

p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b9 = Instance.new("BlockMesh", p9)

b9.Name = "Mesh"

p10 = Instance.new("Part", m)

p10.BrickColor = BrickColor.new("Bright violet")

p10.Material = Enum.Material.Neon

p10.CFrame = CFrame.new(2.10854626, 6.25085449, 8.75159836, 0, 0.341999561, -0.939698994, 0, 0.93969816, 0.342011213, 1, 0, 0)

p10.CanCollide = false

p10.FormFactor = Enum.FormFactor.Symmetric

p10.Size = Vector3.new(0.282593131, 0.471638948, 1.1264751)

p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b10 = Instance.new("SpecialMesh", p10)

b10.MeshType = Enum.MeshType.Wedge

b10.Name = "Mesh"

p11 = Instance.new("Part", m)

p11.BrickColor = BrickColor.new("Black")

p11.Material = Enum.Material.SmoothPlastic

p11.CFrame = CFrame.new(0.337811172, 6.53464508, 8.75549603, 0.999998212, -2.50042158E-5, 0, 6.34789012E-6, 1.00000358, 0, 0, 0, 1)

p11.CanCollide = false

p11.Size = Vector3.new(0.705508113, 0.200000003, 0.312476635)

p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b11 = Instance.new("BlockMesh", p11)

b11.Name = "Mesh"

b11.Scale = Vector3.new(1, 0.389784336, 1)

p12 = Instance.new("Part", m)

p12.BrickColor = BrickColor.new("Dark stone grey")

p12.Material = Enum.Material.SmoothPlastic

p12.Reflectance = 0.20000000298023

p12.CFrame = CFrame.new(0.168733746, 5.85024643, 8.75679398, 0.939699531, 0.341995806, 0, -0.342015177, 0.939698279, 0, 0, 0, 1)

p12.CanCollide = false

p12.Size = Vector3.new(0.593770325, 0.200000003, 0.263104022)

p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b12 = Instance.new("BlockMesh", p12)

b12.Name = "Mesh"

b12.Scale = Vector3.new(1, 0.185147598, 1)

p13 = Instance.new("Part", m)

p13.BrickColor = BrickColor.new("Black")

p13.Material = Enum.Material.SmoothPlastic

p13.CFrame = CFrame.new(0.414526522, 6.09030533, 8.75549603, -0.866011977, 0.500019729, 0, -0.500006318, -0.866025984, 0, 0, 0, 1)

p13.CanCollide = false

p13.Size = Vector3.new(0.315724552, 0.200000003, 0.312476635)

p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b13 = Instance.new("BlockMesh", p13)

b13.Name = "Mesh"

b13.Scale = Vector3.new(1, 0.389784336, 1)

p14 = Instance.new("Part", m)

p14.BrickColor = BrickColor.new("Black")

p14.Material = Enum.Material.SmoothPlastic

p14.CFrame = CFrame.new(0.985782027, 6.18582678, 8.75549603, -0.984810412, -0.173623055, 0, 0.173642337, -0.984812498, 0, 0, 0, 1)

p14.CanCollide = false

p14.Size = Vector3.new(0.315724552, 0.200000003, 0.312476635)

p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b14 = Instance.new("BlockMesh", p14)

b14.Name = "Mesh"

b14.Scale = Vector3.new(1, 0.389784336, 1)

p15 = Instance.new("Part", m)

p15.BrickColor = BrickColor.new("Black")

p15.Material = Enum.Material.SmoothPlastic

p15.CFrame = CFrame.new(0.225712836, 5.95741177, 8.64602757, -0.939699531, 0.341995806, 0, 0.342015177, 0.939698279, 0, 0, 0, -1)

p15.CanCollide = false

p15.FormFactor = Enum.FormFactor.Symmetric

p15.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b15 = Instance.new("SpecialMesh", p15)

b15.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b15.TextureId = ""

b15.MeshType = Enum.MeshType.FileMesh

b15.Name = "Mesh"

b15.Scale = Vector3.new(0.259855717, 0.259856194, 0.19489187)

p16 = Instance.new("Part", m)

p16.BrickColor = BrickColor.new("Black")

p16.Material = Enum.Material.SmoothPlastic

p16.CFrame = CFrame.new(0.224989846, 5.9554348, 8.86041641, 0.939699531, 0.341995806, 0, -0.342015177, 0.939698279, 0, 0, 0, 1)

p16.CanCollide = false

p16.FormFactor = Enum.FormFactor.Symmetric

p16.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b16 = Instance.new("SpecialMesh", p16)

b16.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b16.TextureId = ""

b16.MeshType = Enum.MeshType.FileMesh

b16.Name = "Mesh"

b16.Scale = Vector3.new(0.259855717, 0.259856194, 0.19489187)

p17 = Instance.new("Part", m)

p17.BrickColor = BrickColor.new("Dark stone grey")

p17.Material = Enum.Material.SmoothPlastic

p17.Reflectance = 0.20000000298023

p17.Name = "Handle"

p17.CFrame = CFrame.new(-0.116487741, 5.96408367, 8.75711155, 0, 0.341995835, -0.939699531, 0, 0.939698279, 0.342015147, 1, 0, 0)

p17.CanCollide = false

p17.Size = Vector3.new(0.263753563, 0.200000003, 0.274797559)

p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p17.BottomSurface = Enum.SurfaceType.Weld

p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b17 = Instance.new("CylinderMesh", p17)

b17.Name = "Mesh"

b17.Scale = Vector3.new(1, 0.279345393, 1)

p18 = Instance.new("Part", m)

p18.BrickColor = BrickColor.new("Dark stone grey")

p18.Material = Enum.Material.SmoothPlastic

p18.Reflectance = 0.20000000298023

p18.Transparency = 1

p18.Name = "Main"

p18.CFrame = CFrame.new(0.151481718, 3.75987816, 8.75711155, 0, -1.41263808E-5, -0.999998927, 0, 1.00000215, -2.86102659E-6, 1, 0, 0)

p18.Size = Vector3.new(0.263753563, 0.862072229, 0.274797559)

p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p18.BottomSurface = Enum.SurfaceType.Weld

p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b18 = Instance.new("CylinderMesh", p18)

b18.Name = "Mesh"

p19 = Instance.new("Part", m)

p19.BrickColor = BrickColor.new("Bright violet")

p19.Material = Enum.Material.Neon

p19.CFrame = CFrame.new(0.912542105, 6.56630945, 8.75127029, 0.999998212, -2.50042158E-5, 0, 6.34789012E-6, 1.00000358, 0, 0, 0, 1)

p19.CanCollide = false

p19.Size = Vector3.new(1.50326526, 0.200000003, 0.284542143)

p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b19 = Instance.new("BlockMesh", p19)

b19.Name = "Mesh"

b19.Scale = Vector3.new(1, 0.971212626, 1)

p20 = Instance.new("Part", m)

p20.BrickColor = BrickColor.new("Black")

p20.Material = Enum.Material.SmoothPlastic

p20.CFrame = CFrame.new(0.820281863, 6.4813962, 8.75549603, 0.939699531, 0.341995806, 0, -0.342015177, 0.939698279, 0, 0, 0, 1)

p20.CanCollide = false

p20.Size = Vector3.new(0.315724552, 0.200000003, 0.312476635)

p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b20 = Instance.new("BlockMesh", p20)

b20.Name = "Mesh"

b20.Scale = Vector3.new(1, 0.389784336, 1)

p21 = Instance.new("Part", m)

p21.BrickColor = BrickColor.new("Black")

p21.Material = Enum.Material.SmoothPlastic

p21.CFrame = CFrame.new(0.691664338, 6.1869359, 8.75549603, -0.984801829, 0.173671275, 0, -0.173653886, -0.984810412, 0, 0, 0, 1)

p21.CanCollide = false

p21.Size = Vector3.new(0.315724552, 0.200000003, 0.312476635)

p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b21 = Instance.new("BlockMesh", p21)

b21.Name = "Mesh"

b21.Scale = Vector3.new(1, 0.389784336, 1)

p22 = Instance.new("Part", m)

p22.BrickColor = BrickColor.new("Black")

p22.Material = Enum.Material.SmoothPlastic

p22.CFrame = CFrame.new(-1.28467488, 5.94718552, 8.75711155, 0, 0.939682424, -0.342042714, 0, 0.342027098, 0.939693987, 1, 0, 0)

p22.CanCollide = false

p22.FormFactor = Enum.FormFactor.Symmetric

p22.Size = Vector3.new(0.317023993, 0.200000003, 0.538551211)

p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b22 = Instance.new("SpecialMesh", p22)

b22.MeshType = Enum.MeshType.Wedge

b22.Name = "Mesh"

b22.Scale = Vector3.new(1, 0.610662103, 1)

p23 = Instance.new("Part", m)

p23.BrickColor = BrickColor.new("Black")

p23.Material = Enum.Material.SmoothPlastic

p23.CFrame = CFrame.new(-1.27889276, 6.30648851, 8.75549603, 0.642766654, -0.766059637, 0, 0.766051829, 0.642784417, 0, 0, 0, 1)

p23.CanCollide = false

p23.Size = Vector3.new(0.396929473, 0.200000003, 0.312476635)

p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b23 = Instance.new("BlockMesh", p23)

b23.Name = "Mesh"

b23.Scale = Vector3.new(1, 0.389784336, 1)

p24 = Instance.new("Part", m)

p24.BrickColor = BrickColor.new("Bright violet")

p24.Material = Enum.Material.Neon

p24.CFrame = CFrame.new(1.19707382, 5.52625418, 8.75127029, 0.173672289, 0.98480171, 0, -0.984810352, 0.173654899, 0, 0, 0, 1)

p24.CanCollide = false

p24.Size = Vector3.new(0.606763065, 0.347557694, 0.284542143)

p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b24 = Instance.new("BlockMesh", p24)

b24.Name = "Mesh"

p25 = Instance.new("Part", m)

p25.BrickColor = BrickColor.new("Black")

p25.Material = Enum.Material.SmoothPlastic

p25.CFrame = CFrame.new(-0.89950943, 5.68691921, 8.75290203, 0.642766654, -0.766059637, 0, 0.766051829, 0.642784417, 0, 0, 0, 1)

p25.CanCollide = false

p25.Size = Vector3.new(0.923786879, 0.200000003, 0.312476635)

p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b25 = Instance.new("BlockMesh", p25)

b25.Name = "Mesh"

b25.Scale = Vector3.new(1, 0.779568613, 1)

p26 = Instance.new("Part", m)

p26.BrickColor = BrickColor.new("Black")

p26.Material = Enum.Material.SmoothPlastic

p26.CFrame = CFrame.new(-1.38463366, 5.41642857, 8.75127029, 0, -0.173623055, 0.984810412, 0, -0.984812498, -0.173642337, 1, 0, 0)

p26.CanCollide = false

p26.FormFactor = Enum.FormFactor.Symmetric

p26.Size = Vector3.new(0.317023993, 0.200000003, 0.538551211)

p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b26 = Instance.new("SpecialMesh", p26)

b26.MeshType = Enum.MeshType.Wedge

b26.Name = "Mesh"

b26.Scale = Vector3.new(1, 0.854277313, 1)

p27 = Instance.new("Part", m)

p27.BrickColor = BrickColor.new("Black")

p27.Material = Enum.Material.SmoothPlastic

p27.CFrame = CFrame.new(0.166399091, 5.80583, 8.75290203, 0.939699531, 0.341995806, 0, -0.342015177, 0.939698279, 0, 0, 0, 1)

p27.CanCollide = false

p27.Size = Vector3.new(0.200000003, 0.200000003, 0.312476635)

p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b27 = Instance.new("BlockMesh", p27)

b27.Name = "Mesh"

b27.Scale = Vector3.new(0.85752368, 0.779568613, 1)

p28 = Instance.new("Part", m)

p28.BrickColor = BrickColor.new("Black")

p28.Material = Enum.Material.SmoothPlastic

p28.CFrame = CFrame.new(-0.472387165, 6.08179426, 8.75290203, 0.939682424, -0.342042714, 0, 0.342027098, 0.939693987, 0, 0, 0, 1)

p28.CanCollide = false

p28.Size = Vector3.new(0.354053289, 0.200000003, 0.312476635)

p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b28 = Instance.new("BlockMesh", p28)

b28.Name = "Mesh"

b28.Scale = Vector3.new(1, 0.779568613, 1)

p29 = Instance.new("Part", m)

p29.BrickColor = BrickColor.new("Black")

p29.Material = Enum.Material.SmoothPlastic

p29.CFrame = CFrame.new(0.207504049, 5.93397713, 8.75290203, 0.939699531, 0.341995806, 0, -0.342015177, 0.939698279, 0, 0, 0, 1)

p29.CanCollide = false

p29.Size = Vector3.new(1.22002256, 0.200000003, 0.312476635)

p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b29 = Instance.new("BlockMesh", p29)

b29.Name = "Mesh"

b29.Scale = Vector3.new(1, 0.779568613, 1)

p30 = Instance.new("Part", m)

p30.BrickColor = BrickColor.new("Black")

p30.Material = Enum.Material.SmoothPlastic

p30.CFrame = CFrame.new(-0.989460945, 6.5470705, 8.75549603, 0.866011322, -0.500020862, 0, 0.50000751, 0.866025388, 0, 0, 0, 1)

p30.CanCollide = false

p30.Size = Vector3.new(0.396929473, 0.200000003, 0.312476635)

p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b30 = Instance.new("BlockMesh", p30)

b30.Name = "Mesh"

b30.Scale = Vector3.new(1, 0.389784336, 1)

p31 = Instance.new("Part", m)

p31.BrickColor = BrickColor.new("Bright violet")

p31.Material = Enum.Material.Neon

p31.CFrame = CFrame.new(0.967792749, 5.57098722, 8.75127029, 0.34204185, 0.939682782, 0, -0.939694345, 0.342026144, 0, 0, 0, 1)

p31.CanCollide = false

p31.Size = Vector3.new(0.535302639, 0.200000003, 0.284542143)

p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b31 = Instance.new("BlockMesh", p31)

b31.Name = "Mesh"

b31.Scale = Vector3.new(1, 0.851029098, 1)

p32 = Instance.new("Part", m)

p32.BrickColor = BrickColor.new("Bright violet")

p32.Material = Enum.Material.Neon

p32.CFrame = CFrame.new(-1.97172272, 5.40620661, 8.75127029, -0.766026676, -0.642805994, 0, -0.642795265, 0.766042948, 0, 0, 0, -1)

p32.CanCollide = false

p32.Size = Vector3.new(0.854925156, 0.200000003, 0.284542143)

p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b32 = Instance.new("BlockMesh", p32)

b32.Name = "Mesh"

b32.Scale = Vector3.new(1, 0.851029098, 1)

p33 = Instance.new("Part", m)

p33.BrickColor = BrickColor.new("Bright violet")

p33.Material = Enum.Material.Neon

p33.CFrame = CFrame.new(-2.29866982, 4.97696686, 8.75094795, 0, -0.984810412, 0.173623055, 0, 0.173642337, 0.984812498, -1, 0, 0)

p33.CanCollide = false

p33.FormFactor = Enum.FormFactor.Symmetric

p33.Size = Vector3.new(0.282593131, 0.285841793, 0.439156383)

p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b33 = Instance.new("SpecialMesh", p33)

b33.MeshType = Enum.MeshType.Wedge

b33.Name = "Mesh"

p34 = Instance.new("Part", m)

p34.BrickColor = BrickColor.new("Bright violet")

p34.Material = Enum.Material.Neon

p34.CFrame = CFrame.new(0.970120549, 4.68622112, 8.75159836, 0, 0.766057789, 0.64276886, 0, -0.642786682, 0.766050041, 1, 0, 0)

p34.CanCollide = false

p34.FormFactor = Enum.FormFactor.Symmetric

p34.Size = Vector3.new(0.282593131, 0.200000003, 0.259206206)

p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b34 = Instance.new("SpecialMesh", p34)

b34.MeshType = Enum.MeshType.Wedge

b34.Name = "Mesh"

b34.Scale = Vector3.new(1, 0.880262852, 1)

p35 = Instance.new("Part", m)

p35.BrickColor = BrickColor.new("Bright violet")

p35.Material = Enum.Material.Neon

p35.CFrame = CFrame.new(0.049187161, 6.59135294, 8.75127029, 0.984810412, 0.173623055, 0, -0.173642337, 0.984812498, 0, 0, 0, 1)

p35.CanCollide = false

p35.Size = Vector3.new(1.50326526, 0.200000003, 0.284542143)

p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b35 = Instance.new("BlockMesh", p35)

b35.Name = "Mesh"

b35.Scale = Vector3.new(1, 0.971212626, 1)

p36 = Instance.new("Part", m)

p36.BrickColor = BrickColor.new("Bright violet")

p36.Material = Enum.Material.Neon

p36.CFrame = CFrame.new(1.34951937, 6.20215416, 8.75127029, 0.939681709, -0.34204483, 0, 0.342029154, 0.939693272, 0, 0, 0, 1)

p36.CanCollide = false

p36.Size = Vector3.new(0.854925156, 0.563887954, 0.284542143)

p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b36 = Instance.new("BlockMesh", p36)

b36.Name = "Mesh"

p37 = Instance.new("Part", m)

p37.BrickColor = BrickColor.new("Bright violet")

p37.Material = Enum.Material.Neon

p37.CFrame = CFrame.new(-0.893248439, 6.44911957, 8.75127029, -0.984810412, 0.173623055, 0, 0.173642337, 0.984812498, 0, 0, 0, -1)

p37.CanCollide = false

p37.Size = Vector3.new(0.219578028, 0.853627563, 0.284542143)

p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b37 = Instance.new("BlockMesh", p37)

b37.Name = "Mesh"

p38 = Instance.new("Part", m)

p38.BrickColor = BrickColor.new("Bright violet")

p38.Material = Enum.Material.Neon

p38.CFrame = CFrame.new(1.20111179, 5.0287714, 8.75127029, -0.499977708, 0.866036355, 0, -0.866031587, -0.499996573, 0, 0, 0, 1)

p38.CanCollide = false

p38.Size = Vector3.new(0.606763065, 0.200000003, 0.284542143)

p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b38 = Instance.new("BlockMesh", p38)

b38.Name = "Mesh"

b38.Scale = Vector3.new(1, 0.808802485, 1)

p39 = Instance.new("Part", m)

p39.BrickColor = BrickColor.new("Bright violet")

p39.Material = Enum.Material.Neon

p39.CFrame = CFrame.new(-0.53227222, 6.21913052, 8.75127029, -0.98480171, -0.173672289, 0, -0.173654899, 0.984810352, 0, 0, 0, -1)

p39.CanCollide = false

p39.Size = Vector3.new(0.569083929, 0.343010187, 0.284542143)

p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b39 = Instance.new("BlockMesh", p39)

b39.Name = "Mesh"

p40 = Instance.new("Part", m)

p40.BrickColor = BrickColor.new("Bright violet")

p40.Material = Enum.Material.Neon

p40.CFrame = CFrame.new(-1.14341438, 6.23204279, 8.75127029, -0.866012335, -0.500019014, 0, -0.500005543, 0.866026342, 0, 0, 0, -1)

p40.CanCollide = false

p40.Size = Vector3.new(0.606763065, 0.995249212, 0.284542143)

p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b40 = Instance.new("BlockMesh", p40)

b40.Name = "Mesh"

p41 = Instance.new("Part", m)

p41.BrickColor = BrickColor.new("Bright violet")

p41.Material = Enum.Material.Neon

p41.CFrame = CFrame.new(1.0527072, 5.08070946, 8.75127029, 2.87890362E-5, 0.999998927, 0, -1.00000215, 1.75237292E-5, 0, 0, 0, 1)

p41.CanCollide = false

p41.Size = Vector3.new(0.535302639, 0.200000003, 0.284542143)

p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b41 = Instance.new("BlockMesh", p41)

b41.Name = "Mesh"

b41.Scale = Vector3.new(1, 0.851029098, 1)

p42 = Instance.new("Part", m)

p42.BrickColor = BrickColor.new("Bright violet")

p42.Material = Enum.Material.Neon

p42.CFrame = CFrame.new(1.12985456, 5.28959322, 8.75127029, 2.87890362E-5, -0.999998927, 0, -1.00000215, -1.75237292E-5, 0, 0, 0, -1)

p42.CanCollide = false

p42.Size = Vector3.new(0.492426485, 0.30403176, 0.284542143)

p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b42 = Instance.new("BlockMesh", p42)

b42.Name = "Mesh"

p43 = Instance.new("Part", m)

p43.BrickColor = BrickColor.new("Black")

p43.Material = Enum.Material.SmoothPlastic

p43.CFrame = CFrame.new(0.826088548, 5.52536488, 8.75290203, 0.342045158, 0.939680874, 0, -0.939697027, 0.342023104, 0, 0, 0, 1)

p43.CanCollide = false

p43.Size = Vector3.new(0.524258792, 0.200000003, 0.312476635)

p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b43 = Instance.new("BlockMesh", p43)

b43.Name = "Mesh"

b43.Scale = Vector3.new(1, 0.779568613, 1)

p44 = Instance.new("Part", m)

p44.BrickColor = BrickColor.new("Bright violet")

p44.Material = Enum.Material.Neon

p44.CFrame = CFrame.new(-1.39395237, 5.9300375, 8.75127029, -0.984809041, 0.173634425, 0, 0.173646092, 0.984810293, 0, 0, 0, -1)

p44.CanCollide = false

p44.Size = Vector3.new(0.766574264, 0.832839072, 0.284542143)

p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b44 = Instance.new("BlockMesh", p44)

b44.Name = "Mesh"

p45 = Instance.new("Part", m)

p45.BrickColor = BrickColor.new("Bright violet")

p45.Material = Enum.Material.Neon

p45.CFrame = CFrame.new(0.0888835564, 6.2928853, 8.75127029, 0.939696908, 0.342003107, 0, -0.342022568, 0.939695716, 0, 0, 0, 1)

p45.CanCollide = false

p45.Size = Vector3.new(1.91968405, 0.50022316, 0.284542143)

p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b45 = Instance.new("BlockMesh", p45)

b45.Name = "Mesh"

p46 = Instance.new("Part", m)

p46.BrickColor = BrickColor.new("Bright violet")

p46.Material = Enum.Material.Neon

p46.CFrame = CFrame.new(-1.94215047, 5.81596804, 8.75127029, -0.499983013, -0.866033971, 0, -0.86603117, 0.499994397, 0, 0, 0, -1)

p46.CanCollide = false

p46.Size = Vector3.new(1.50326526, 0.200000003, 0.284542143)

p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b46 = Instance.new("BlockMesh", p46)

b46.Name = "Mesh"

b46.Scale = Vector3.new(1, 0.971212626, 1)

p47 = Instance.new("Part", m)

p47.BrickColor = BrickColor.new("Bright violet")

p47.Material = Enum.Material.Neon

p47.CFrame = CFrame.new(-0.879739881, 6.44213867, 8.75127029, -0.939683497, -0.342037737, 0, -0.342015892, 0.939699888, 0, 0, 0, -1)

p47.CanCollide = false

p47.Size = Vector3.new(0.219578028, 0.875715315, 0.284542143)

p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b47 = Instance.new("BlockMesh", p47)

b47.Name = "Mesh"

p48 = Instance.new("Part", m)

p48.BrickColor = BrickColor.new("Bright violet")

p48.Material = Enum.Material.Neon

p48.CFrame = CFrame.new(1.1041559, 5.89249182, 8.75127029, 0.342038751, 0.939683139, 0, -0.939699531, 0.342016846, 0, 0, 0, 1)

p48.CanCollide = false

p48.Size = Vector3.new(0.219578028, 0.376141846, 0.284542143)

p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b48 = Instance.new("BlockMesh", p48)

b48.Name = "Mesh"

p49 = Instance.new("Part", m)

p49.BrickColor = BrickColor.new("Bright violet")

p49.Material = Enum.Material.Neon

p49.CFrame = CFrame.new(-0.970975637, 5.88960981, 8.75127029, -0.766028702, -0.642802477, 0, -0.642787457, 0.76605165, 0, 0, 0, -1)

p49.CanCollide = false

p49.Size = Vector3.new(0.569083929, 0.343010187, 0.284542143)

p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b49 = Instance.new("BlockMesh", p49)

b49.Name = "Mesh"

p50 = Instance.new("Part", m)

p50.BrickColor = BrickColor.new("Lavender")

p50.Material = Enum.Material.SmoothPlastic

p50.CFrame = CFrame.new(0.0196620077, 5.1253624, 8.75711155, 0.999998927, -6.07976108E-6, 0, -5.18561865E-6, 1.00000215, 0, 0, 0, 1)

p50.CanCollide = false

p50.FormFactor = Enum.FormFactor.Symmetric

p50.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b50 = Instance.new("SpecialMesh", p50)

b50.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b50.TextureId = ""

b50.MeshType = Enum.MeshType.FileMesh

b50.Name = "Mesh"

b50.Scale = Vector3.new(0.0649639294, 0.0649640486, 0.0649639592)

p51 = Instance.new("Part", m)

p51.BrickColor = BrickColor.new("Black")

p51.Material = Enum.Material.SmoothPlastic

p51.CFrame = CFrame.new(0.154139698, 5.12535954, 8.911726, 0.999998927, 0, -6.07976108E-6, -5.18561865E-6, 0, 1.00000215, 0, -1, 0)

p51.CanCollide = false

p51.FormFactor = Enum.FormFactor.Symmetric

p51.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b51 = Instance.new("SpecialMesh", p51)

b51.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b51.TextureId = ""

b51.MeshType = Enum.MeshType.FileMesh

b51.Name = "Mesh"

b51.Scale = Vector3.new(0.0324819647, 0.194892138, 0.0324819796)

p52 = Instance.new("Part", m)

p52.BrickColor = BrickColor.new("Black")

p52.Material = Enum.Material.SmoothPlastic

p52.CFrame = CFrame.new(-0.0017799437, 5.12471151, 8.75647354, 0, -0.999998927, -6.07976108E-6, 0, 5.18561865E-6, 1.00000215, -1, 0, 0)

p52.CanCollide = false

p52.FormFactor = Enum.FormFactor.Symmetric

p52.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b52 = Instance.new("SpecialMesh", p52)

b52.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b52.TextureId = ""

b52.MeshType = Enum.MeshType.FileMesh

b52.Name = "Mesh"

b52.Scale = Vector3.new(0.0324819647, 0.194892138, 0.0324819796)

p53 = Instance.new("Part", m)

p53.BrickColor = BrickColor.new("Really black")

p53.Material = Enum.Material.SmoothPlastic

p53.Reflectance = 0.20000000298023

p53.Name = "Extender"

p53.CFrame = CFrame.new(0.151431248, 3.38695264, 8.75419998, 0, -2.09808477E-5, -0.999998927, 0, 1.00000215, -9.71551526E-6, 1, 0, 0)

p53.CanCollide = false

p53.Size = Vector3.new(0.242315456, 6.26253319, 0.274797559)

p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p53.BottomSurface = Enum.SurfaceType.Weld

p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b53 = Instance.new("CylinderMesh", p53)

b53.Name = "Mesh"

p54 = Instance.new("Part", m)

p54.BrickColor = BrickColor.new("Lavender")

p54.Material = Enum.Material.SmoothPlastic

p54.CFrame = CFrame.new(0.154134586, 5.12535667, 8.88965225, 0.999998212, -2.47359676E-5, 0, 5.96040809E-6, 1.00000358, 0, 0, 0, 1)

p54.CanCollide = false

p54.FormFactor = Enum.FormFactor.Symmetric

p54.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b54 = Instance.new("SpecialMesh", p54)

b54.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b54.TextureId = ""

b54.MeshType = Enum.MeshType.FileMesh

b54.Name = "Mesh"

b54.Scale = Vector3.new(0.0649639294, 0.0649640486, 0.0649639592)

p55 = Instance.new("Part", m)

p55.BrickColor = BrickColor.new("Black")

p55.Material = Enum.Material.SmoothPlastic

p55.CFrame = CFrame.new(0.306802392, 5.12470436, 8.75647354, 0, -0.999998212, -2.47359676E-5, 0, -5.96040809E-6, 1.00000358, -1, 0, 0)

p55.CanCollide = false

p55.FormFactor = Enum.FormFactor.Symmetric

p55.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b55 = Instance.new("SpecialMesh", p55)

b55.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b55.TextureId = ""

b55.MeshType = Enum.MeshType.FileMesh

b55.Name = "Mesh"

b55.Scale = Vector3.new(0.0324819647, 0.194892138, 0.0324819796)

p56 = Instance.new("Part", m)

p56.BrickColor = BrickColor.new("Lavender")

p56.Material = Enum.Material.SmoothPlastic

p56.CFrame = CFrame.new(0.284061432, 5.12470436, 8.75711155, 0.999998212, -2.47359676E-5, 0, 5.96040809E-6, 1.00000358, 0, 0, 0, 1)

p56.CanCollide = false

p56.FormFactor = Enum.FormFactor.Symmetric

p56.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b56 = Instance.new("SpecialMesh", p56)

b56.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b56.TextureId = ""

b56.MeshType = Enum.MeshType.FileMesh

b56.Name = "Mesh"

b56.Scale = Vector3.new(0.0649639294, 0.0649640486, 0.0649639592)

p57 = Instance.new("Part", m)

p57.BrickColor = BrickColor.new("Dark stone grey")

p57.Material = Enum.Material.SmoothPlastic

p57.Reflectance = 0.20000000298023

p57.Name = "Handle2"

p57.CFrame = CFrame.new(0.151378691, 5.50989532, 8.75711155, 0, -2.47359676E-5, -0.999998212, 0, 1.00000358, -5.96040809E-6, 1, 0, 0)

p57.CanCollide = false

p57.Size = Vector3.new(0.263753563, 0.862072229, 0.274797559)

p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p57.BottomSurface = Enum.SurfaceType.Weld

p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b57 = Instance.new("CylinderMesh", p57)

b57.Name = "Mesh"

p58 = Instance.new("Part", m)

p58.BrickColor = BrickColor.new("Black")

p58.Material = Enum.Material.SmoothPlastic

p58.CFrame = CFrame.new(0.154134586, 5.12470579, 8.62588596, 0.999998212, 0, -2.47359676E-5, 5.96040809E-6, 0, 1.00000358, 0, -1, 0)

p58.CanCollide = false

p58.FormFactor = Enum.FormFactor.Symmetric

p58.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b58 = Instance.new("SpecialMesh", p58)

b58.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b58.TextureId = ""

b58.MeshType = Enum.MeshType.FileMesh

b58.Name = "Mesh"

b58.Scale = Vector3.new(0.0324819647, 0.194892138, 0.0324819796)

p59 = Instance.new("Part", m)

p59.BrickColor = BrickColor.new("Black")

p59.Material = Enum.Material.SmoothPlastic

p59.Name = "Division"

p59.CFrame = CFrame.new(0.152694598, 5.12378168, 8.75711155, 0, -2.47359676E-5, -0.999998212, 0, 1.00000358, -5.96040809E-6, 1, 0, 0)

p59.CanCollide = false

p59.Size = Vector3.new(0.306629747, 0.200000003, 0.279994667)

p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p59.BottomSurface = Enum.SurfaceType.Weld

p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b59 = Instance.new("CylinderMesh", p59)

b59.Name = "Mesh"

b59.Scale = Vector3.new(1, 0.490478575, 1)

p60 = Instance.new("Part", m)

p60.BrickColor = BrickColor.new("Lavender")

p60.Material = Enum.Material.SmoothPlastic

p60.CFrame = CFrame.new(0.154134601, 5.12518454, 8.62588596, 0.999998212, -2.47359676E-5, 0, 5.96040809E-6, 1.00000358, 0, 0, 0, 1)

p60.CanCollide = false

p60.FormFactor = Enum.FormFactor.Symmetric

p60.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)

b60 = Instance.new("SpecialMesh", p60)

b60.MeshId = "http://www.roblox.com/Asset/?id=9756362"

b60.TextureId = ""

b60.MeshType = Enum.MeshType.FileMesh

b60.Name = "Mesh"

b60.Scale = Vector3.new(0.0649639294, 0.0649640486, 0.0649639592)

p61 = Instance.new("Part", m)

p61.BrickColor = BrickColor.new("Dark stone grey")

p61.Material = Enum.Material.SmoothPlastic

p61.Reflectance = 0.20000000298023

p61.Name = "Handle"

p61.CFrame = CFrame.new(0.448129445, 5.75863743, 8.75711155, 0, 0.341996104, -0.939699411, 0, 0.9396981, 0.342015505, 1, 0, 0)

p61.CanCollide = false

p61.Size = Vector3.new(0.263753563, 0.200000003, 0.274797559)

p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p61.BottomSurface = Enum.SurfaceType.Weld

p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b61 = Instance.new("CylinderMesh", p61)

b61.Name = "Mesh"

b61.Scale = Vector3.new(1, 0.279345393, 1)

p62 = Instance.new("Part", m)

p62.BrickColor = BrickColor.new("Dark stone grey")

p62.Material = Enum.Material.SmoothPlastic

p62.Reflectance = 0.20000000298023

p62.Transparency = 1

p62.Name = "Ray"

p62.CFrame = CFrame.new(0.0263856575, 5.75989532, 8.75711155, 0, -1.72257314E-5, -0.999999642, 0, 1.00000072, -1.34706224E-5, 1, 0, 0)

p62.CanCollide = false

p62.Size = Vector3.new(0.263753563, 2.36207223, 5.02479744)

p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines

p62.BottomSurface = Enum.SurfaceType.Weld

p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines

p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines

p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines

b62 = Instance.new("CylinderMesh", p62)

b62.Name = "Mesh"

w1 = Instance.new("Weld", p18)

w1.Name = "Part"

w1.Part0 = p18

w1.C0 = CFrame.new(-0.00584125519, 2.70556211, -0.783289135, 0, 0, 1, -3.75509353E-6, 1.00000143, 0, -0.999999285, 3.75509353E-6, 0)

w1.Part1 = p1

w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w2 = Instance.new("Weld", p18)

w2.Name = "Part"

w2.Part0 = p18

w2.C0 = CFrame.new(-0.00161552429, 2.54696035, -0.885313094, 0, 0, 1, -0.866028607, 0.499997646, 0, -0.50000298, -0.866022944, 0)

w2.Part1 = p2

w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w3 = Instance.new("Weld", p18)

w3.Name = "Part"

w3.Part0 = p18

w3.C0 = CFrame.new(-0.00161552429, 2.8274684, 0.304684788, 0, 0, 1, -0.342023909, 0.939692795, 0, -0.939693272, -0.342016131, 0)

w3.Part1 = p3

w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w4 = Instance.new("Weld", p18)

w4.Name = "Part"

w4.Part0 = p18

w4.C0 = CFrame.new(-0.00161552429, 2.88239384, 0.715500891, 0, 0, 1, -3.75509353E-6, 1.00000143, 0, -0.999999285, 3.75509353E-6, 0)

w4.Part1 = p4

w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w5 = Instance.new("Weld", p18)

w5.Name = "Part"

w5.Part0 = p18

w5.C0 = CFrame.new(-0.00584125519, 2.20401144, -0.868736446, 0, 0, 1, -0.642790794, 0.766043663, 0, -0.766046822, -0.642783642, 0)

w5.Part1 = p5

w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w6 = Instance.new("Weld", p18)

w6.Name = "Part"

w6.Part0 = p18

w6.C0 = CFrame.new(-0.00584125519, 1.41777992, -0.824744821, -1, 0, 0, 0, -0.499997646, 0.866028607, 0, 0.866022944, 0.50000298)

w6.Part1 = p6

w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w7 = Instance.new("Weld", p18)

w7.Name = "Part"

w7.Part0 = p18

w7.C0 = CFrame.new(-0.00420951843, 1.97338343, 0.0104623884, 0, 0, 1, -0.913085282, 0.407772392, 0, -0.407778323, -0.913080215, 0)

w7.Part1 = p7

w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w8 = Instance.new("Weld", p18)

w8.Name = "Part"

w8.Part0 = p18

w8.C0 = CFrame.new(-0.00584125519, 2.60887718, -0.579253972, 0, 0, 1, 1.00000143, 3.75509353E-6, 0, 3.75509353E-6, 0.999999285, 0)

w8.Part1 = p8

w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w9 = Instance.new("Weld", p18)

w9.Name = "Part"

w9.Part0 = p18

w9.C0 = CFrame.new(-0.00584125519, 1.98648286, 2.01723289, 0, 0, -1, -0.866028786, 0.499994159, 0, 0.499994159, 0.866028845, 0)

w9.Part1 = p9

w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w10 = Instance.new("Weld", p18)

w10.Name = "Part"

w10.Part0 = p18

w10.C0 = CFrame.new(-0.00551319122, 2.4909656, -1.95710182, 1, 0, 0, 0, 0.939695179, 0.34201315, 0, -0.34201318, 0.939695179)

w10.Part1 = p10

w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w11 = Instance.new("Weld", p18)

w11.Name = "Part"

w11.Part0 = p18

w11.C0 = CFrame.new(-0.00161552429, 2.77476025, -0.186368853, 0, 0, 1, 3.48685808E-6, 1.00000143, 0, -0.999999285, 1.08778268E-5, 0)

w11.Part1 = p11

w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w12 = Instance.new("Weld", p18)

w12.Name = "Part"

w12.Part0 = p18

w12.C0 = CFrame.new(-3.17573547E-4, 2.09036398, -0.017281577, 0, 0, 1, -0.342017114, 0.939695299, 0, -0.939695716, -0.342009425, 0)

w12.Part1 = p12

w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w13 = Instance.new("Weld", p18)

w13.Name = "Part"

w13.Part0 = p18

w13.C0 = CFrame.new(-0.00161552429, 2.33042145, -0.263078004, 0, 0, 1, -0.500002742, -0.866025567, 0, 0.866020024, -0.500008047, 0)

w13.Part1 = p13

w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w14 = Instance.new("Weld", p18)

w14.Name = "Part"

w14.Part0 = p18

w14.C0 = CFrame.new(-0.00161552429, 2.42594099, -0.834335446, 0, 0, 1, 0.173644781, -0.984809935, 0, 0.984809041, 0.173637167, 0)

w14.Part1 = p14

w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w15 = Instance.new("Weld", p18)

w15.Name = "Part"

w15.Part0 = p18

w15.C0 = CFrame.new(-0.111083984, 2.19752836, -0.0742622465, 0, 0, -1, 0.342017114, 0.939695299, 0, 0.939695716, -0.342009425, 0)

w15.Part1 = p15

w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w16 = Instance.new("Weld", p18)

w16.Name = "Part"

w16.Part0 = p18

w16.C0 = CFrame.new(0.103304863, 2.1955514, -0.0735392272, 0, 0, 1, -0.342017114, 0.939695299, 0, -0.939695716, -0.342009425, 0)

w16.Part1 = p16

w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w17 = Instance.new("Weld", p18)

w17.Name = "Handle"

w17.Part0 = p18

w17.C0 = CFrame.new(0, 2.2042017, 0.267938614, 1, 0, 0, 0, 0.939695299, 0.342017084, 0, -0.342009455, 0.939695716)

w17.Part1 = p17

w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w18 = Instance.new("Weld", p18)

w18.Name = "Part"

w18.Part0 = p18

w18.C0 = CFrame.new(-0.00584125519, 2.80642319, -0.761100888, 0, 0, 1, 3.48685808E-6, 1.00000143, 0, -0.999999285, 1.08778268E-5, 0)

w18.Part1 = p19

w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w19 = Instance.new("Weld", p18)

w19.Name = "Part"

w19.Part0 = p18

w19.C0 = CFrame.new(-0.00161552429, 2.72151041, -0.668839335, 0, 0, 1, -0.342017114, 0.939695299, 0, -0.939695716, -0.342009425, 0)

w19.Part1 = p20

w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w20 = Instance.new("Weld", p18)

w20.Name = "Part"

w20.Part0 = p18

w20.C0 = CFrame.new(-0.00161552429, 2.42705107, -0.540217519, 0, 0, 1, -0.173650697, -0.984808803, 0, 0.984805346, -0.173657551, 0)

w20.Part1 = p21

w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w21 = Instance.new("Weld", p18)

w21.Name = "Part"

w21.Part0 = p18

w21.C0 = CFrame.new(0, 2.18730688, 1.43612731, 1, 0, 0, 0, 0.342023671, 0.939692914, 0, -0.939688265, 0.34202981)

w21.Part1 = p22

w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w22 = Instance.new("Weld", p18)

w22.Name = "Part"

w22.Part0 = p18

w22.C0 = CFrame.new(-0.00161552429, 2.54660892, 1.43034005, 0, 0, 1, 0.766048312, 0.642785251, 0, -0.642778218, 0.766051412, 0)

w22.Part1 = p23

w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w23 = Instance.new("Weld", p18)

w23.Name = "Part"

w23.Part0 = p18

w23.C0 = CFrame.new(-0.00584125519, 1.76636934, -1.04561806, 0, 0, 1, -0.984808743, 0.17365171, 0, -0.173658565, -0.984805226, 0)

w23.Part1 = p24

w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w24 = Instance.new("Weld", p18)

w24.Name = "Part"

w24.Part0 = p18

w24.C0 = CFrame.new(-0.00420951843, 1.9270401, 1.05096507, 0, 0, 1, 0.766048312, 0.642785251, 0, -0.642778218, 0.766051412, 0)

w24.Part1 = p25

w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w25 = Instance.new("Weld", p18)

w25.Name = "Part"

w25.Part0 = p18

w25.C0 = CFrame.new(-0.00584125519, 1.65655136, 1.53609371, 1, 0, 0, 0, -0.984809935, -0.173644781, 0, 0.173637167, -0.984809041)

w25.Part1 = p26

w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w26 = Instance.new("Weld", p18)

w26.Name = "Part"

w26.Part0 = p18

w26.C0 = CFrame.new(-0.00420951843, 2.04594755, -0.0149462968, 0, 0, 1, -0.342017114, 0.939695299, 0, -0.939695716, -0.342009425, 0)

w26.Part1 = p27

w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w27 = Instance.new("Weld", p18)

w27.Name = "Part"

w27.Part0 = p18

w27.C0 = CFrame.new(-0.00420951843, 2.32191277, 0.623836756, 0, 0, 1, 0.342023671, 0.939692914, 0, -0.939688265, 0.34202981, 0)

w27.Part1 = p28

w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w28 = Instance.new("Weld", p18)

w28.Name = "Part"

w28.Part0 = p18

w28.C0 = CFrame.new(-0.00420951843, 2.1740942, -0.056053102, 0, 0, 1, -0.342017114, 0.939695299, 0, -0.939695716, -0.342009425, 0)

w28.Part1 = p29

w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w29 = Instance.new("Weld", p18)

w29.Name = "Part"

w29.Part0 = p18

w29.C0 = CFrame.new(-0.00161552429, 2.78718948, 1.14090455, 0, 0, 1, 0.500003934, 0.866024971, 0, -0.866019368, 0.500009179, 0)

w29.Part1 = p30

w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w30 = Instance.new("Weld", p18)

w30.Name = "Part"

w30.Part0 = p18

w30.C0 = CFrame.new(-0.00584125519, 1.81110287, -0.816337466, 0, 0, 1, -0.939693272, 0.342022717, 0, -0.342028946, -0.939688623, 0)

w30.Part1 = p31

w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w31 = Instance.new("Weld", p18)

w31.Name = "Part"

w31.Part0 = p18

w31.C0 = CFrame.new(-0.00584125519, 1.64633083, 2.12318349, 0, 0, -1, -0.642791688, 0.766043127, 0, 0.76603657, 0.642795861, 0)

w31.Part1 = p32

w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w32 = Instance.new("Weld", p18)

w32.Name = "Part"

w32.Part0 = p18

w32.C0 = CFrame.new(-0.00616359711, 1.21709299, 2.4501369, -1, 0, 0, 0, 0.173644781, 0.984809935, 0, 0.984809041, -0.173637167)

w32.Part1 = p33

w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w33 = Instance.new("Weld", p18)

w33.Name = "Part"

w33.Part0 = p18

w33.C0 = CFrame.new(-0.00551319122, 0.926338673, -0.818652868, 1, 0, 0, 0, -0.642787516, 0.766046524, 0, -0.766049564, -0.642780423)

w33.Part1 = p34

w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w34 = Instance.new("Weld", p18)

w34.Name = "Part"

w34.Part0 = p18

w34.C0 = CFrame.new(-0.00584125519, 2.83146906, 0.102254674, 0, 0, 1, -0.173644781, 0.984809935, 0, -0.984809041, -0.173637167, 0)

w34.Part1 = p35

w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w35 = Instance.new("Weld", p18)

w35.Name = "Part"

w35.Part0 = p18

w35.C0 = CFrame.new(-0.00584125519, 2.44226742, -1.19807339, 0, 0, 1, 0.342025727, 0.939692199, 0, -0.93968755, 0.342031926, 0)

w35.Part1 = p36

w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w36 = Instance.new("Weld", p18)

w36.Name = "Part"

w36.Part0 = p18

w36.C0 = CFrame.new(-0.00584125519, 2.68923855, 1.04469323, 0, 0, -1, 0.173644781, 0.984809935, 0, 0.984809041, -0.173637167, 0)

w36.Part1 = p37

w36.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w37 = Instance.new("Weld", p18)

w37.Name = "Part"

w37.Part0 = p18

w37.C0 = CFrame.new(-0.00584125519, 1.26888752, -1.049649, 0, 0, 1, -0.866028309, -0.499997973, 0, 0.499990463, -0.866030216, 0)

w37.Part1 = p38

w37.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w38 = Instance.new("Weld", p18)

w38.Name = "Part"

w38.Part0 = p18

w38.C0 = CFrame.new(-0.00584125519, 2.45924902, 0.683719873, 0, 0, -1, -0.17365171, 0.984808743, 0, 0.984805226, 0.173658565, 0)

w38.Part1 = p39

w38.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w39 = Instance.new("Weld", p18)

w39.Name = "Part"

w39.Part0 = p18

w39.C0 = CFrame.new(-0.00584125519, 2.4721632, 1.29486263, 0, 0, -1, -0.500001967, 0.866025925, 0, 0.866020381, 0.500007331, 0)

w39.Part1 = p40

w39.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w40 = Instance.new("Weld", p18)

w40.Name = "Part"

w40.Part0 = p18

w40.C0 = CFrame.new(-0.00584125519, 1.32082582, -0.901245058, 0, 0, 1, -1, 1.46626699E-5, 0, -1.46626699E-5, -1, 0)

w40.Part1 = p41

w40.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w41 = Instance.new("Weld", p18)

w41.Name = "Part"

w41.Part0 = p18

w41.C0 = CFrame.new(-0.00584125519, 1.5297091, -0.978395522, 0, 0, -1, -1, -1.46626699E-5, 0, -1.46626699E-5, 1, 0)

w41.Part1 = p42

w41.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w42 = Instance.new("Weld", p18)

w42.Name = "Part"

w42.Part0 = p18

w42.C0 = CFrame.new(-0.00420951843, 1.76548076, -0.67463243, 0, 0, 1, -0.939695954, 0.342019677, 0, -0.342032254, -0.939686716, 0)

w42.Part1 = p43

w42.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w43 = Instance.new("Weld", p18)

w43.Name = "Part"

w43.Part0 = p18

w43.C0 = CFrame.new(-0.00584125519, 2.1701591, 1.54540515, 0, 0, -1, 0.173648536, 0.98480773, 0, 0.98480767, -0.173648536, 0)

w43.Part1 = p44

w43.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w44 = Instance.new("Weld", p18)

w44.Name = "Part"

w44.Part0 = p18

w44.C0 = CFrame.new(-0.00584125519, 2.5330019, 0.0625624433, 0, 0, 1, -0.342024505, 0.939692736, 0, -0.939693093, -0.342016727, 0)

w44.Part1 = p45

w44.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w45 = Instance.new("Weld", p18)

w45.Name = "Part"

w45.Part0 = p18

w45.C0 = CFrame.new(-0.00584125519, 2.05609131, 2.09360528, 0, 0, -1, -0.866027892, 0.499995798, 0, 0.499995768, 0.866027892, 0)

w45.Part1 = p46

w45.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w46 = Instance.new("Weld", p18)

w46.Name = "Part"

w46.Part0 = p18

w46.C0 = CFrame.new(-0.00584125519, 2.68225765, 1.03118479, 0, 0, -1, -0.342012465, 0.939698815, 0, 0.939689338, 0.342024833, 0)

w46.Part1 = p47

w46.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w47 = Instance.new("Weld", p18)

w47.Name = "Part"

w47.Part0 = p18

w47.C0 = CFrame.new(-0.00584125519, 2.13260651, -0.952705264, 0, 0, 1, -0.939698458, 0.342013419, 0, -0.342025846, -0.939688981, 0)

w47.Part1 = p48

w47.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w48 = Instance.new("Weld", p18)

w48.Name = "Part"

w48.Part0 = p18

w48.C0 = CFrame.new(-0.00584125519, 2.12973022, 1.12242854, 0, 0, -1, -0.64278388, 0.766051829, 0, 0.766038597, 0.642792344, 0)

w48.Part1 = p49

w48.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w49 = Instance.new("Weld", p18)

w49.Name = "Part"

w49.Part0 = p18

w49.C0 = CFrame.new(0, 1.36548138, 0.131800562, 0, 0, 1, -8.04662795E-6, 1, 0, -1, -8.04662795E-6, 0)

w49.Part1 = p50

w49.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w50 = Instance.new("Weld", p18)

w50.Name = "Part"

w50.Part0 = p18

w50.C0 = CFrame.new(0.154614449, 1.36547852, -0.00267727673, 0, -1, 0, -8.04662795E-6, 0, 1, -1, 0, -8.04662795E-6)

w50.Part1 = p51

w50.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w51 = Instance.new("Weld", p18)

w51.Name = "Part"

w51.Part0 = p18

w51.C0 = CFrame.new(-6.38008118E-4, 1.36483097, 0.153242543, -1, 0, 0, 0, 8.04662795E-6, 1, 0, 1, -8.04662795E-6)

w51.Part1 = p52

w51.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w52 = Instance.new("Weld", p18)

w52.Name = "Extender"

w52.Part0 = p18

w52.C0 = CFrame.new(-0.00291156769, -0.372924805, 5.5745244E-5, 1, 0, 0, 0, 1, -6.85447458E-6, 0, 6.85447458E-6, 1)

w52.Part1 = p53

w52.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w53 = Instance.new("Weld", p18)

w53.Name = "Part"

w53.Part0 = p18

w53.C0 = CFrame.new(0.132540703, 1.36547542, -0.00267216563, 0, 0, 1, 3.09937695E-6, 1.00000143, 0, -0.999999285, 1.06095786E-5, 0)

w53.Part1 = p54

w53.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w54 = Instance.new("Weld", p18)

w54.Name = "Part"

w54.Part0 = p18

w54.C0 = CFrame.new(-6.38008118E-4, 1.36482263, -0.15534012, -1, 0, 0, 0, -3.09937695E-6, 1.00000143, 0, 0.999999285, 1.06095786E-5)

w54.Part1 = p55

w54.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w55 = Instance.new("Weld", p18)

w55.Name = "Part"

w55.Part0 = p18

w55.C0 = CFrame.new(0, 1.3648231, -0.13259913, 0, 0, 1, 3.09937695E-6, 1.00000143, 0, -0.999999285, 1.06095786E-5, 0)

w55.Part1 = p56

w55.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w56 = Instance.new("Weld", p18)

w56.Name = "Handle2"

w56.Part0 = p18

w56.C0 = CFrame.new(0, 1.75001311, 7.83056021E-5, 1, 0, 0, 0, 1.00000143, -3.09937695E-6, 0, 1.06095786E-5, 0.999999285)

w56.Part1 = p57

w56.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w57 = Instance.new("Weld", p18)

w57.Name = "Part"

w57.Part0 = p18

w57.C0 = CFrame.new(-0.131225586, 1.36482453, -0.00267215073, 0, -1, 0, 3.09937695E-6, 0, 1.00000143, -0.999999285, 0, 1.06095786E-5)

w57.Part1 = p58

w57.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w58 = Instance.new("Weld", p18)

w58.Name = "Division"

w58.Part0 = p18

w58.C0 = CFrame.new(0, 1.36390042, -0.00123214722, 1, 0, 0, 0, 1.00000143, -3.09937695E-6, 0, 1.06095786E-5, 0.999999285)

w58.Part1 = p59

w58.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w59 = Instance.new("Weld", p18)

w59.Name = "Part"

w59.Part0 = p18

w59.C0 = CFrame.new(-0.131225586, 1.36530328, -0.00267216563, 0, 0, 1, 3.09937695E-6, 1.00000143, 0, -0.999999285, 1.06095786E-5, 0)

w59.Part1 = p60

w59.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w60 = Instance.new("Weld", p18)

w60.Name = "Handle"

w60.Part0 = p18

w60.C0 = CFrame.new(0, 1.99875426, -0.296676278, 1, 0, 0, 0, 0.93969512, 0.342017442, 0, -0.342009723, 0.939695597)

w60.Part1 = p61

w60.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

w61 = Instance.new("Weld", p18)

w61.Name = "Ray"

w61.Part0 = p18

w61.C0 = CFrame.new(0, 2.00001311, 0.125067934, 1, 0, 0, 0, 1.00000143, -3.09937695E-6, 0, 1.06095786E-5, 0.999999285)

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

SWELD.Part1 = p18

function turnonwelds()

  w3.Part1 = tr

  w4.Part1 = tr

  nc.Part1 = char.Head

  ll.Part1 = char["Left Leg"]

  rl.Part1 = char["Right Leg"]

end

function turnoffwelds()

  w3.Part1 = nil

  w4.Part1 = nil

  nc.Part1 = nil

  ll.Part1 = nil

  rl.Part1 = nil

end

turnoffwelds()

local walk = {

  ll.C0 * CFrame.new(0, 0, -1) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)),

  ll.C0 * CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(0, 0, -1) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)),

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)),

  w4.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)),

  w3.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(30))

}

local equip = {

  nc.C0 * CFrame.Angles(math.rad(-10), math.rad(0), 0),

  w3.C0 * CFrame.new(-1.1, -0.1, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(90)),

  w4.C0 * CFrame.new(1.1, -0.2, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(-90))

}

local idle = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),

  ll.C0 * CFrame.new(-0.1, 0, -0.1) * CFrame.Angles(math.rad(5), math.rad(20), math.rad(0)),

  rl.C0 * CFrame.new(0.2, 0, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(5)),

  w3.C0 * CFrame.new(0, 0.5, 0.7) * CFrame.Angles(math.rad(-30), math.rad(-20), math.rad(5)),

  w4.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50))

}

local PA1 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(35), math.rad(0)),

  ll.C0 * CFrame.new(0, 0, 0.3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(0.5, 0, -0.5) * CFrame.Angles(math.rad(10), math.rad(-35), math.rad(10)),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0)),

  w3.C0 * CFrame.new(-1, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(90)),

  w4.C0 * CFrame.new(0, 1, 0.6) * CFrame.Angles(math.rad(-80), math.rad(30), math.rad(0))

}

local PA21 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)),

  ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)),

  w4.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)),

  w3.C0 * CFrame.new(-1.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(120))

}

local PA2 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)),

  ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)),

  w4.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)),

  w3.C0 * CFrame.new(-1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))

}

local SK2 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), 0),

  ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-5)),

  rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(5)),

  nc.C0 * CFrame.Angles(math.rad(0), math.rad(-90), 0),

  w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-90)),

  w3.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(40))

}

local SK3 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-40), 0),

  ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)),

  rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)),

  nc.C0 * CFrame.Angles(math.rad(10), math.rad(40), 0),

  w4.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)),

  w3.C0 * CFrame.new(-0.3, 1.7, 0) * CFrame.Angles(math.rad(-110), math.rad(-20), math.rad(0))

}

local SK4 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),

  ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(0, 0.1, -1) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),

  w4.C0 * CFrame.new(1.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)),

  w3.C0 * CFrame.new(-1.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110))

}

local med = {

  ts.C0 * CFrame.new(0, -1.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0),

  ll.C0 * CFrame.new(0, 1, -0.5) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(90)),

  rl.C0 * CFrame.new(0, 1, -0.5) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(-90)),

  nc.C0 * CFrame.Angles(math.rad(-20), math.rad(0), 0),

  w4.C0 * CFrame.new(1.1, -0.2, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(-90)),

  w3.C0 * CFrame.new(-1.1, -0.1, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(90))

}

local PA3 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(-40), 0),

  nc.C0 * CFrame.Angles(math.rad(-20), math.rad(40), 0),

  w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(-90)),

  w3.C0 * CFrame.new(-1, 2, 0) * CFrame.Angles(math.rad(30), math.rad(40), math.rad(70)),

  ll.C0 * CFrame.new(-1, 1, -0.7) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-40)),

  rl.C0 * CFrame.new(0.5, 0.5, 0.5) * CFrame.Angles(math.rad(-20), math.rad(-40), math.rad(40))

}

local heal = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0),

  nc.C0 * CFrame.Angles(math.rad(0), math.rad(90), 0),

  w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)),

  w3.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-180), math.rad(0), math.rad(0)),

  ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)),

  rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5))

}

local PA4 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(60), math.rad(-60), 0),

  nc.C0 * CFrame.Angles(math.rad(-25), math.rad(50), 0),

  w4.C0 * CFrame.new(0.4, 1, 0.7) * CFrame.Angles(math.rad(50), 0, math.rad(-70)),

  w3.C0 * CFrame.new(-1.2, -0.2, 1) * CFrame.Angles(math.rad(-40), math.rad(20), math.rad(-50)),

  ll.C0 * CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(-30)),

  rl.C0 * CFrame.new(1, 0.5, 0.5) * CFrame.Angles(0, math.rad(-20), math.rad(40))

}

local jump = {

  nc.C0 * CFrame.Angles(math.rad(10), 0, 0),

  w4.C0 * CFrame.new(0, 0.1, -0.1) * CFrame.Angles(math.rad(20), 0, math.rad(-10)),

  w3.C0 * CFrame.new(0, 0.1, -0.1) * CFrame.Angles(math.rad(10), 0, math.rad(10)),

  ll.C0 * CFrame.new(-0.1, 0, 0.3) * CFrame.Angles(math.rad(-20), 0, math.rad(0)),

  rl.C0 * CFrame.new(0.2, 0, 0) * CFrame.Angles(0, 0, math.rad(10)),

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0)

}

local jump2 = {

  nc.C0 * CFrame.Angles(math.rad(-10), 0, 0),

  w4.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-20)),

  w3.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(20)),

  ll.C0 * CFrame.new(-0.15, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(30), math.rad(-10)),

  rl.C0 * CFrame.new(0.15, 0, 0) * CFrame.Angles(math.rad(5), math.rad(-30), math.rad(10))

}

local stunned = {

  nc.C0 * CFrame.Angles(0, math.rad(90), 0),

  w4.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, math.rad(-50)),

  w3.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, math.rad(50)),

  ll.C0 * CFrame.new(-0.3, 0, 0) * CFrame.Angles(0, 0, math.rad(-20)),

  rl.C0 * CFrame.new(0.3, 0, 0) * CFrame.Angles(0, 0, math.rad(20)),

  ts.C0 * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), 0, 0)

}

local PA1C = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(-40), math.rad(-30)),

  ll.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(20), math.rad(30), math.rad(-10)),

  rl.C0 * CFrame.new(0, -0.05, -0.5) * CFrame.Angles(math.rad(20), math.rad(-30), math.rad(10)),

  nc.C0 * CFrame.Angles(math.rad(-7), math.rad(-20), 0),

  w3.C0 * CFrame.new(0, 0.5, -0.2) * CFrame.Angles(math.rad(-100), math.rad(40), math.rad(30)),

  w4.C0 * CFrame.new(0, 0.6, 0) * CFrame.Angles(math.rad(30), 0, math.rad(-20))

}

local Stomp = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), 0),

  nc.C0 * CFrame.Angles(math.rad(-13), math.rad(-20), 0),

  ll.C0 * CFrame.new(-0.05, 0, 0) * CFrame.new(math.rad(0), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(0, 0.6, -0.6) * CFrame.Angles(math.rad(0), 0, math.rad(0)),

  w3.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(30)),

  w4.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-30))

}

local Stomp2 = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), 0),

  nc.C0 * CFrame.Angles(math.rad(-25), math.rad(-20), 0),

  ll.C0 * CFrame.new(-0.05, 0, 0) * CFrame.new(math.rad(0), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(0, 0, -0.6) * CFrame.Angles(math.rad(0), 0, math.rad(0)),

  w3.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(35)),

  w4.C0 * CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-35))

}

local dropkick = {

  ts.C0 * CFrame.new(0, 0.8, 0) * CFrame.Angles(math.rad(90), math.rad(45), 0),

  nc.C0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(-30), math.rad(-20), 0),

  ll.C0 * CFrame.new(-0.2, 0, -0.3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),

  rl.C0 * CFrame.new(-0.05, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)),

  w3.C0 * CFrame.new(-2.7, 1.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(170)),

  w4.C0 * CFrame.new(2.7, 1.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-160))

}

local block = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-9), math.rad(0), 0),

  ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),

  rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),

  w3.C0 * CFrame.new(-0.8, 1.3, -0.6) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0)),

  w4.C0 * CFrame.new(0.8, 1.3, -0.6) * CFrame.Angles(math.rad(-160), math.rad(0), math.rad(0))

}

local sjump = {

  ts.C0 * CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(0), 0),

  ll.C0 * CFrame.new(0, 0.4, 0.8) * CFrame.Angles(math.rad(-70), 0, 0),

  rl.C0 * CFrame.new(0, 0.8, -0.5) * CFrame.Angles(math.rad(-10), 0, 0),

  w3.C0 * CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0)),

  w4.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0))

}

local UpSideDownPunch = {

  ts.C0 * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(180), 0, 0),

  nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),

  ll.C0 * CFrame.new(-0.4, 0, 0) * CFrame.Angles(0, 0, math.rad(-20)),

  rl.C0 * CFrame.new(0.4, 0, 0) * CFrame.Angles(0, 0, math.rad(20)),

  w3.C0 * CFrame.new(0, 1.7, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)),

  w4.C0 * CFrame.new(0, 1.7, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0))

}

local BackBreaker = {

  ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(15), 0),

  nc.C0 * CFrame.Angles(math.rad(-15), math.rad(-5), 0),

  w4.C0 * CFrame.new(0, 0.1, 0.3) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)),

  w3.C0 * CFrame.new(0, 0.5, 0.5) * CFrame.Angles(math.rad(-90), math.rad(20), math.rad(0)),

  ll.C0 * CFrame.new(-0.3, 0, 0.3) * CFrame.Angles(math.rad(-20), math.rad(30), math.rad(-10)),

  rl.C0 * CFrame.new(-0.2, 1, -0.5) * CFrame.Angles(math.rad(-40), 0, math.rad(0))

}

local FrontFlipKick1 = {

  ts.C0 * CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(-8), math.rad(0), 0),

  nc.C0 * CFrame.Angles(math.rad(-15), math.rad(-5), 0),

  w4.C0 * CFrame.new(0, 1, -0.3) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(0)),

  w3.C0 * CFrame.new(0, 1, -0.3) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(0)),

  ll.C0 * CFrame.new(0, 1, 1) * CFrame.Angles(math.rad(-110), 0, math.rad(0)),

  rl.C0 * CFrame.new(0, 1, -1) * CFrame.Angles(math.rad(110), 0, math.rad(0))

}

f = Instance.new("ScreenGui", player.PlayerGui)

f.Name = "UI"

f1 = Instance.new("Frame", f)

f1.BorderSizePixel = 0

f1.BackgroundColor3 = Color3.new(0, 0, 0)

f1.Size = UDim2.new(0.3, 0, 0.05, 0)

f1.Position = UDim2.new(0.2, 0, 0.84, 0)

f1.ClipsDescendants = true

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

f1l.Text = "[Z] Vortex"

f2 = Instance.new("Frame", f)

f2.BorderSizePixel = 0

f2.BackgroundColor3 = Color3.new(0, 0, 0)

f2.Size = UDim2.new(0.3, 0, 0.05, 0)

f2.Position = UDim2.new(0.52, 0, 0.84, 0)

f2.ClipsDescendants = true

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

f2l.Text = "[X] Extreme Vortex"

f3 = Instance.new("Frame", f)

f3.BorderSizePixel = 0

f3.BackgroundColor3 = Color3.new(0, 0, 0)

f3.Size = UDim2.new(0.3, 0, 0.05, 0)

f3.Position = UDim2.new(0.2, 0, 0.9, 0)

f3.ClipsDescendants = true

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

f3l.Text = "[C] Dark Transportation"

f4 = Instance.new("Frame", f)

f4.BorderSizePixel = 0

f4.BackgroundColor3 = Color3.new(0, 0, 0)

f4.Size = UDim2.new(0.3, 0, 0.05, 0)

f4.Position = UDim2.new(0.52, 0, 0.9, 0)

f4.ClipsDescendants = true

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

f4l.Text = "[V] Punishment "

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

f6f.BackgroundColor3 = BrickColor.new("Royal purple").Color

f6f.Size = UDim2.new(1, 0, 1, 0)

f6l = Instance.new("TextLabel", f6)

f6l.TextScaled = true

f6l.TextStrokeTransparency = 0

f6l.BackgroundTransparency = 1

f6l.TextColor3 = Color3.new(255, 255, 255)

f6l.BorderSizePixel = 0

f6l.Size = UDim2.new(1, 0, 1, 0)

f6l.Text = "Darkness"

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

local function DGU(p, txt)

  s2:Play()

  local par = Instance.new("Part", game.Workspace)

  par.Transparency = 1

  par.Anchored = true

  par.CFrame = p.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))

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

  fe.Font = "SourceSans"

  if tonumber(txt) > 20 then

    fe.TextColor3 = BrickColor.new("Really red").Color

    fe.FontSize = "Size96"

    fe.Font = "SourceSansBold"

  elseif tonumber(txt) > 11 and tonumber(txt) < 21 then

    fe.TextColor3 = BrickColor.new("Bright yellow").Color

    fe.FontSize = "Size24"

  else

    fe.TextColor3 = Color3.new(255, 255, 255)

    fe.FontSize = "Size18"

  end

  fe.TextStrokeTransparency = 0

  fe.Text = txt

  fe.TextScaled = true

  fe.Position = UDim2.new(0, 0, 1, 0)

  fe:TweenPosition(UDim2.new(0, 0, 0, 0), "In", "Linear", 0.6)

  wait(2)

  fe:TweenPosition(UDim2.new(0, 0, -1, 0), "Out", "Linear", 0.4)

  for i = 0, 10 do

    wait()

    fe.TextTransparency = fe.TextTransparency + 0.1

    fe.TextStrokeTransparency = fe.TextStrokeTransparency + 0.1

  end

end

local HL = function(p, txt)

  local par = Instance.new("Part", game.Workspace)

  par.Transparency = 1

  par.Anchored = true

  par.CFrame = p.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))

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

  fe.Font = "SourceSansBold"

  fe.Position = UDim2.new(0, 0, 1, 0)

  fe:TweenPosition(UDim2.new(0, 0, 0, 0), "In", "Linear", 0.5)

  wait(2)

  fe:TweenPosition(UDim2.new(0, 0, -1, 0), "In", "Linear", 0.4)

  for i = 0, 10 do

    wait()

    fe.TextTransparency = fe.TextTransparency + 0.1

    fe.TextStrokeTransparency = fe.TextStrokeTransparency + 0.1

  end

end

function makeui(color, txt)

  local par = Instance.new("Part", game.Workspace)

  par.Transparency = 1

  par.Anchored = true

  par.CFrame = char.Head.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))

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

    fe.TextStrokeTransparency = fe.TextStrokeTransparency + 0.1

  end

end

local TARG1, TARG2, TARG3, TARG4, TARG5, TARG6

local IdleAndWalk = false

turnonwelds()

opend = true

local efr = makepart(1, false, nil, Vector3.new(1, 1, 1), char["Left Arm"].CFrame, nil, nil, nil, false)

efr.Anchored = false

local wf = Instance.new("Weld", char)

wf.Part0 = char["Left Arm"]

wf.Part1 = efr

wf.C0 = CFrame.new(0, -1, 0)

local pars = {}

local sizes = {}

local poses = {}

local part_to_fade = false

local pa2f

local PartsToTransparency = {}

function darkeffect(part)

  local l = Instance.new("Part", xd)

  l.BrickColor = BrickColor.new("Really black")

  l.Size = Vector3.new(1, 1, 1)

  l.TopSurface = "Smooth"

  l.BottomSurface = "Smooth"

  l.Material = "Plastic"

  l.CanCollide = false

  l.Anchored = true

  l.Transparency = 0

  l.CFrame = part.CFrame

  game.Debris:AddItem(l, 1.5)

  table.insert(PartsToTransparency, l)

  table.insert(pars, l)

  table.insert(poses, l.CFrame)

  if bfr == true then

    table.insert(sizes, Vector3.new(4, 4, 4))

  else

    table.insert(sizes, Vector3.new(2, 2, 2))

  end

end

game:GetService("RunService").RenderStepped:connect(function()

  for i = 1, #PartsToTransparency do

    local part = PartsToTransparency[i]

    if part ~= nil then

      part.Transparency = part.Transparency + 0.035

      if 1 < part.Transparency or part == nil then

        table.remove(PartsToTransparency, i)

      end

      if PartsToTransparency[i] then

      else

        table.remove(PartsToTransparency, i)

        if PartsToTransparency[i].Parent then

        else

          table.remove(PartsToTransparency, i)

          if PartsToTransparency[i].Parent:FindFirstChild(PartsToTransparency[i].Name) then

          else

            table.remove(PartsToTransparency, i)

          end

        end

      end

    end

  end

end)

game:GetService("RunService").RenderStepped:connect(function()

  for i = 1, #pars do

    local par = pars[i]

    if par ~= nil then

      par.Size = par.Size:lerp(sizes[i], 0.05)

      par.CFrame = poses[i] * CFrame.Angles(math.random(), math.random(), math.random())

    end

    if par.Size == sizes[i] then

      table.remove(parts, i)

      table.remove(sizes, i)

      table.remove(poses, i)

    end

  end

  if part_to_fade ~= false then

    part_to_fade = false

    table.insert(PartsToTransparency, pa2f)

    pa2f = nil

  end

end)

game:GetService("RunService").RenderStepped:connect(function()

  if xz.Value > 0.9 then

    xz.Value = xz.Value - 0.1

  end

  if xz.Value < 1.1 then

    xz.Value = 2.3

    if bh == true then

      BBE(pxo, Vector3.new(2, osr * 2.5, 2), CFrame.Angles(math.rad(math.random(40, 340)), math.rad(math.random(40, 340)), math.rad(math.random(40, 340))))

      BSE(CFrame.new(pxo.CFrame.X, pxo.CFrame.Y, pxo.CFrame.Z) * CFrame.new(math.random(-30, 30), -5, math.random(-30, 30)), Vector3.new(2, 50, 2))

    end

  end

end)

game:GetService("RunService").RenderStepped:connect(function()

  if mc.Value > 0.9 then

    mc.Value = mc.Value - 0.05

  end

  if mc.Value < 1.1 then

    mc.Value = 2

    darkeffect(efr)

  end

end)

local ptl1, ptl2, ptl3, ptc1, ptc2, ptc3

game:GetService("RunService").RenderStepped:connect(function()

  if ptl1 ~= nil and ptl2 ~= nil and ptl3 ~= nil then

    ptl1.Size = ptl1.Size:lerp(Vector3.new(10, 10, 10), 0.05)

    ptl1.CFrame = ptc1 * CFrame.Angles(math.sin(tick() * -5), math.sin(tick() * -5), math.sin(tick() * -5))

    ptl2.CFrame = ptc2 * CFrame.Angles(math.sin(tick() * -5), math.sin(tick() * -5), math.sin(tick() * -5))

    ptl3.CFrame = ptc3 * CFrame.Angles(math.sin(tick() * 5), math.sin(tick() * 5), math.sin(tick() * 5))

    if ptl2:FindFirstChild("Mesh") then

      ptl2.Mesh.Scale = ptl2.Mesh.Scale:lerp(Vector3.new(20, 20, 20), 0.05)

    end

    if ptl3:FindFirstChild("Mesh") then

      ptl3.Mesh.Scale = ptl3.Mesh.Scale:lerp(Vector3.new(20, 20, 20), 0.05)

    end

  end

end)

local pars = {}

local sizes = {}

local poses = {}

game:GetService("RunService").RenderStepped:connect(function()

  for i = 1, #pars do

    local par = pars[i]

    if par ~= nil then

      par.Size = par.Size:lerp(sizes[i], 0.05)

      par.CFrame = poses[i]

    end

    if par.Size == sizes[i] then

      table.remove(parts, i)

      table.remove(sizes, i)

      table.remove(poses, i)

    end

  end

  if part_to_fade ~= false then

    part_to_fade = false

    table.insert(PartsToTransparency, pa2f)

    pa2f = nil

  end

end)

local wpb = true

local num = 1

mouse.Button1Down:connect(function()

  if current == true and idleq == false and opend == true and wpb == true and stun.Value == false and bl.Value == false and healingmode == false then

    do

      local fs

      if num == 1 then

        wpb = false

        current = false

        s4:Play()

        local tar = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), math.rad(180), math.rad(0))

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

        BFE(p53, Vector3.new(15, 15, 15), CFrame.new(0, 3, 0))

        local sp1 = makepart(0, false, "Really black", Vector3.new(0.2, 0.2, 0.2), char.HumanoidRootPart.CFrame * CFrame.new(0, -2.8, -5) * CFrame.Angles(math.rad(90), 0, 0), "Neon", "Block", 0.4, true)

        local ms1 = meshsomething(sp1, nil, nil, Vector3.new(1, 1, 1), nil)

        ms1.MeshType = "Sphere"

        table.insert(PartsToTransparency, sp1)

        table.insert(pars, sp1)

        table.insert(poses, char.HumanoidRootPart.CFrame * CFrame.new(1, -2.8, -5) * CFrame.Angles(math.rad(90), 0, 0))

        table.insert(sizes, Vector3.new(0.2, 15, 0.2))

        local sp1 = makepart(0, false, "Really black", Vector3.new(0.2, 0.2, 0.2), char.HumanoidRootPart.CFrame * CFrame.new(0, -2.8, -5) * CFrame.Angles(math.rad(90), 0, math.rad(45)), "Neon", "Block", 0.4, true)

        local ms1 = meshsomething(sp1, nil, nil, Vector3.new(1, 1, 1), nil)

        ms1.MeshType = "Sphere"

        table.insert(PartsToTransparency, sp1)

        table.insert(pars, sp1)

        table.insert(poses, char.HumanoidRootPart.CFrame * CFrame.new(1, -2.8, -5) * CFrame.Angles(math.rad(90), 0, math.rad(45)))

        table.insert(sizes, Vector3.new(0.2, 15, 0.2))

        local sp1 = makepart(0, false, "Really black", Vector3.new(0.2, 0.2, 0.2), char.HumanoidRootPart.CFrame * CFrame.new(0, -2.8, -5) * CFrame.Angles(math.rad(90), 0, math.rad(90)), "Neon", "Block", 0.4, true)

        local ms1 = meshsomething(sp1, nil, nil, Vector3.new(1, 1, 1), nil)

        ms1.MeshType = "Sphere"

        table.insert(PartsToTransparency, sp1)

        table.insert(pars, sp1)

        table.insert(poses, char.HumanoidRootPart.CFrame * CFrame.new(1, -2.8, -5) * CFrame.Angles(math.rad(90), 0, math.rad(90)))

        table.insert(sizes, Vector3.new(0.2, 15, 0.2))

        local sp1 = makepart(0, false, "Really black", Vector3.new(0.2, 0.2, 0.2), char.HumanoidRootPart.CFrame * CFrame.new(0, -2.8, -5) * CFrame.Angles(math.rad(90), 0, math.rad(135)), "Neon", "Block", 0.4, true)

        local ms1 = meshsomething(sp1, nil, nil, Vector3.new(1, 1, 1), nil)

        ms1.MeshType = "Sphere"

        table.insert(PartsToTransparency, sp1)

        table.insert(pars, sp1)

        table.insert(poses, char.HumanoidRootPart.CFrame * CFrame.new(1, -2.8, -5) * CFrame.Angles(math.rad(90), 0, math.rad(135)))

        table.insert(sizes, Vector3.new(0.2, 15, 0.2))

        local getsnearme = function(studs)

          local list = game.Workspace:GetChildren()

          local targs = {}

          for i = 1, #list do

            local target = list[i]

            if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") then

              if studs > (p53.Position - target.Torso.Position).magnitude then

                if target ~= nil then

                  table.insert(targs, target)

                end

              elseif (p53.Position - target.Torso.Position).magnitude < 101 then

              end

            end

          end

          return targs

        end

        local f = getsnearme(10)

        for i, v in pairs(f) do

          wait()

          if v:FindFirstChild("Attack") then

            if v:FindFirstChild("Blocking").Value == true then

              v.BlockingLabel.Value = true

            else

              if not v:FindFirstChild("Team") or v:FindFirstChild("Team").Value ~= team.Value then

              end

              local dtd = math.floor(8 * atk.Value / v:FindFirstChild("Defense").Value)

              if v:FindFirstChild("Team").Value ~= team.Value then

                v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

              end

              dfm = 5

              df = nil

              wait()

              if v:FindFirstChild("Team").Value ~= team.Value and v ~= nil then

                dfm = dtd

                df = v:FindFirstChild("Head")

              end

            end

          else

            local dtd = math.floor(8 * atk.Value)

            if v:FindFirstChild("Team").Value ~= team.Value and v ~= nil then

              v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

            end

            dfm = 5

            df = nil

            wait()

            if v:FindFirstChild("Team").Value ~= team.Value then

              dfm = dtd

              df = v:FindFirstChild("Head")

            end

          end

        end

        TARG1 = PA1[5]

        TARG2 = PA1[6]

        TARG3 = PA1[4]

        TARG4 = PA1[3]

        TARG5 = PA1[2]

        TARG6 = PA1[1]

        STARG = tar

        wait(0.1)

        current = true

        wpb = true

        num = num + 1

        return

      end

      if num == 2 then

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

                if hit.Parent:FindFirstChild("Team").Value.Value ~= team.Value then

                  hit.Parent.BlockingLabel.Value = true

                end

                if hit.Parent:FindFirstChild("Team").Value.Value ~= team.Value then

                  stun.Value = true

                end

              elseif hit.Parent:FindFirstChild("Team").Value ~= team.Value then

                hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs

                DGU(hit, fs)

                fr = false

              end

            elseif hit.Parent:FindFirstChild("Team").Value ~= team.Value then

              hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs

              DGU(hit, fs)

              fr = false

            end

          end

        end)

        s5:Play()

        wait(0.1)

        do

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

          bfr = true

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

          local CFR = -25

          local ray = Ray.new(char.HumanoidRootPart.CFrame.p, (char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -25).p - char.HumanoidRootPart.CFrame.p).unit * 29)

          local part, position = workspace:FindPartOnRayWithIgnoreList(ray, ignore, true, false)

          local f = Instance.new("Part", xd)

          f.Transparency = 1

          f.BrickColor = BrickColor.New("New yeller")

          f.TopSurface = "Smooth"

          f.Anchored = true

          f.BottomSurface = "Smooth"

          f.FormFactor = "Custom"

          f.CanCollide = false

          local distance = (char.HumanoidRootPart.CFrame.p - position).magnitude

          f.Size = Vector3.new(4, 4, distance)

          if part then

            CFR = distance * -1

          end

          f.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)

          game.Debris:AddItem(f, 1)

          BFE(char["Left Arm"], Vector3.new(7, 7, 7), CFrame.new(0, -1, 0))

          local bl = makepart(0.2, false, "Black", Vector3.new(0.5, 0.5, 0.5), char.HumanoidRootPart.CFrame * CFrame.new(0, 0, CFR), "Neon", nil, 0.6, true)

          bl.Anchored = true

          local e = Instance.new("Part", xd)

          e.Transparency = 0

          e.BottomSurface = "Smooth"

          e.TopSurface = "Smooth"

          e.CanCollide = false

          e.BrickColor = BrickColor.new("Black")

          e.Size = Vector3.new(2, 2, 2)

          e.Material = "Neon"

          e.Anchored = true

          e.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, CFR)

          local msh = Instance.new("SpecialMesh", e)

          msh.MeshId = "http://www.roblox.com/asset/?id=3270017"

          msh.Scale = Vector3.new(1, 1, 1)

          local e2 = Instance.new("Part", xd)

          e2.BottomSurface = "Smooth"

          e2.TopSurface = "Smooth"

          e2.CanCollide = false

          e2.BrickColor = BrickColor.new("Black")

          e2.Size = Vector3.new(2, 2, 2)

          e2.Material = "Neon"

          e2.Anchored = true

          game.Debris:AddItem(e, 0.6)

          game.Debris:AddItem(e2, 0.6)

          e2.Transparency = 0

          e2.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, CFR)

          local msh2 = Instance.new("SpecialMesh", e2)

          msh2.MeshId = "http://www.roblox.com/asset/?id=3270017"

          msh2.Scale = Vector3.new(1, 1, 1)

          table.insert(PartsToTransparency, bl)

          table.insert(PartsToTransparency, e)

          table.insert(PartsToTransparency, e2)

          ptc1 = bl.CFrame

          ptl1 = bl

          ptc2 = e.CFrame

          ptl2 = e

          ptc3 = e2.CFrame

          ptl3 = e2

          local function getsnearme(studs)

            local list = game.Workspace:GetChildren()

            local targs = {}

            for i = 1, #list do

              local target = list[i]

              if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") then

                if studs > (bl.Position - target.Torso.Position).magnitude then

                  if target ~= nil then

                    table.insert(targs, target)

                  end

                elseif (bl.Position - target.Torso.Position).magnitude < 101 then

                end

              end

            end

            return targs

          end

          local f = getsnearme(7)

          for i, v in pairs(f) do

            wait()

            if v:FindFirstChild("Attack") then

              if v:FindFirstChild("Blocking").Value == true then

                v.BlockingLabel.Value = true

              else

                if not v:FindFirstChild("Team") or v:FindFirstChild("Team").Value ~= team.Value then

                end

                local dtd = math.floor(9 * atk.Value / v:FindFirstChild("Defense").Value)

                if v:FindFirstChild("Team").Value ~= team.Value then

                  v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

                end

                dfm = 5

                df = nil

                wait()

                if v:FindFirstChild("Team").Value ~= team.Value and v ~= nil then

                  dfm = dtd

                  df = v:FindFirstChild("Head")

                end

              end

            else

              local dtd = math.floor(9 * atk.Value)

              if v:FindFirstChild("Team").Value ~= team.Value then

                v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

              end

              dfm = 5

              df = nil

              wait()

              if v:FindFirstChild("Team").Value ~= team.Value then

                dfm = dtd

                df = v:FindFirstChild("Head")

              end

            end

          end

          wait(0.25)

          bfr = false

          current = true

          fr = false

          wait(0.1)

          wpb = true

          num = 1

          return

        end

      end

    end

  end

end)

local rtb = true

local orb

function healplrs()

  local plrs = {}

  local healpoints = math.floor(math.random(3, 5))

  local num = 0

  local getsnearme = function(studs)

    local list = game.Workspace:GetChildren()

    local targs = {}

    for i = 1, #list do

      local target = list[i]

      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and studs > (target.Torso.Position - char.Torso.Position).magnitude then

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

    for i, v in pairs(f) do

      if v:FindFirstChild("Attack") then

        wait(0.1)

        if v:FindFirstChild("Team").Value == team.Value then

          local hum = v:FindFirstChild("Humanoid")

          hum.Health = hum.Health + healpoints

          v:FindFirstChild("Defense").Value = v:FindFirstChild("Defense").Value + 0.03

          dgm = healpoints

          dg = v.Head

        end

      else

        wait(0.1)

        if v:FindFirstChild("Team").Value == team.Value then

          local hum = v:FindFirstChild("Humanoid")

          hum.Health = hum.Health + healpoints

          dgm = healpoints

          dg = v.Head

        end

      end

    end

  end

end

local pos = 0

game:GetService("RunService").RenderStepped:connect(function()

  if dg ~= lastdg then

    lastdg = dg

    if df ~= nil then

      HL(dg, dgm)

    end

  end

end)

game:GetService("RunService").RenderStepped:connect(function()

  if df ~= lastdf then

    lastdf = df

    if df ~= nil then

      DGU(df, dfm)

    end

  end

end)

local pars = {}

local sizes = {}

local poses = {}

function BBE(part, endsz, exc)

  local l = Instance.new("Part", xd)

  l.BrickColor = BrickColor.new("Black")

  l.Size = Vector3.new(1, 1, 1)

  l.TopSurface = "Smooth"

  l.BottomSurface = "Smooth"

  l.Material = "Neon"

  l.CanCollide = false

  l.Transparency = 0

  l.CFrame = part.CFrame

  l.Anchored = true

  game.Debris:AddItem(l, 1)

  table.insert(PartsToTransparency, l)

  table.insert(pars, l)

  if exc ~= nil then

    table.insert(poses, l.CFrame * exc)

  else

    table.insert(poses, l.CFrame)

  end

  table.insert(sizes, endsz)

end

function BSE(CF, endsz)

  local l = Instance.new("Part", xd)

  l.BrickColor = BrickColor.new("Black")

  l.Size = Vector3.new(1, 1, 1)

  l.TopSurface = "Smooth"

  l.BottomSurface = "Smooth"

  l.Material = "Neon"

  l.CanCollide = false

  l.Anchored = true

  local s = Instance.new("SpecialMesh", l)

  s.Scale = Vector3.new(1, 1, 1)

  s.MeshType = "Sphere"

  l.Transparency = 0

  l.Anchored = true

  l.CFrame = CF

  game.Debris:AddItem(l, 1)

  table.insert(PartsToTransparency, l)

  table.insert(pars, l)

  if exc ~= nil then

    table.insert(poses, CF)

  else

    table.insert(poses, l.CFrame)

  end

  table.insert(sizes, endsz)

end

function BFE(part, endsz, exc)

  local l = Instance.new("Part", xd)

  l.BrickColor = BrickColor.new("Black")

  l.Size = Vector3.new(1, 1, 1)

  l.Shape = "Ball"

  l.TopSurface = "Smooth"

  l.BottomSurface = "Smooth"

  l.Material = "SmoothPlastic"

  l.CanCollide = false

  l.Anchored = true

  l.Transparency = 0

  l.CFrame = part.CFrame

  game.Debris:AddItem(l, 1)

  table.insert(PartsToTransparency, l)

  table.insert(pars, l)

  if exc ~= nil then

    table.insert(poses, l.CFrame * exc)

  else

    table.insert(poses, l.CFrame)

  end

  table.insert(sizes, endsz)

end

game:GetService("RunService").RenderStepped:connect(function()

  for i = 1, #pars do

    if pars[i] and sizes[i] and poses[i] then

      local x = tonumber(pars[i].Size.X + 0.3)

      local y = tonumber(sizes[i].X)

      if x > y or 1 < pars[i].Transparency then

      end

    end

    local par = pars[i]

    if par ~= nil and sizes[i] and poses[i] and pars[i] then

      par.Size = par.Size:lerp(sizes[i], 0.05)

      par.CFrame = poses[i]

    end

  end

end)

local prs = {}

local szs = {}

local pss = {}

game:GetService("RunService").RenderStepped:connect(function()

  for i = 1, #prs do

    local par = prs[i]

    if par ~= nil then

      par.Size = par.Size:lerp(szs[i], 0.05)

      par.CFrame = pss[i] * CFrame.Angles(math.random(), math.random(), math.random())

    end

    if par.Size == szs[i] then

      table.remove(prs, i)

      table.remove(szs, i)

      table.remove(pss, i)

    end

  end

end)

local function rle(cf, size, damage)

  local Block = makepart(0.2, false, "Black", Vector3.new(1, 1, 1), cf * CFrame.new(0, 2, 0), "SmoothPlastic", nil, 3, true)

  table.insert(prs, Block)

  table.insert(pss, cf * CFrame.new(0, 2, 0))

  table.insert(szs, Vector3.new(size * 2, size * 2, size * 2))

  table.insert(PartsToTransparency, Block)

  local Solar = makepart(0.2, false, "Black", Vector3.new(size / 2, 300, size / 2), cf, "SmoothPlastic", nil, 3, true)

  meshsomething(Solar, nil, nil, nil, "CylinderMesh")

  table.insert(PartsToTransparency, Solar)

  local crc = makepart(0.2, false, "Black", Vector3.new(3, 3, 3), cf * CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(math.random(60, 170)), 0, 0), "SmoothPlastic", nil, 3, true)

  local msr = meshsomething(crc, "rbxassetid://3270017", nil, Vector3.new(1, 1, 1), nil)

  table.insert(PartsToTransparency, crc)

  game:GetService("RunService").RenderStepped:connect(function()

    if Block.Transparency < 0.99 then

      Solar.CFrame = cf

      Solar.Size = Solar.Size:lerp(Vector3.new(2, 300, 2), 0.1)

      Solar.CFrame = cf

      msr.Scale = msr.Scale:lerp(Vector3.new(size * 2.5, size * 2.5, 3), 0.1)

    else

      crc:Destroy()

      Solar:Destroy()

      Block:Destroy()

    end

  end)

  local rs = Instance.new("Part", xd)

  rs.Name = "HITBOX!"

  game.Debris:AddItem(rs, 5)

  rs.CanCollide = false

  rs.Anchored = true

  rs.CFrame = cf

  rs.Transparency = 1

  rs.Size = Vector3.new(1, 1, 1)

  local function getsnearme(studs)

    local list = game.Workspace:GetChildren()

    local targs = {}

    for i = 1, #list do

      local target = list[i]

      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") then

        if studs > (rs.Position - target.Torso.Position).magnitude then

          if target ~= nil then

            table.insert(targs, target)

          end

        elseif (rs.Position - target.Torso.Position).magnitude < 101 then

        end

      end

    end

    return targs

  end

  local f = getsnearme(size / 1.7)

  local hxs = 0

  for i, v in pairs(f) do

    wait()

    if v:FindFirstChild("Attack") then

      if v:FindFirstChild("Blocking").Value == true then

        v.BlockingLabel.Value = true

      else

        if not v:FindFirstChild("Team") or v:FindFirstChild("Team").Value ~= team.Value then

        end

        local dtd = math.floor(damage * atk.Value / v:FindFirstChild("Defense").Value)

        if v:FindFirstChild("Team").Value ~= team.Value then

          v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

        end

        dfm = 5

        df = nil

        wait()

        if v:FindFirstChild("Team").Value ~= team.Value then

          dfm = dtd

          df = v:FindFirstChild("Head")

          char.Humanoid.Health = char.Humanoid.Health + 3

          hxs = hxs + 3

        end

      end

    else

      local dtd = math.floor(damage * atk.Value)

      if v:FindFirstChild("Team").Value ~= team.Value then

        v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

      end

      dfm = 5

      df = nil

      wait()

      if v:FindFirstChild("Team").Value ~= team.Value then

        dfm = dtd

        df = v:FindFirstChild("Head")

        char.Humanoid.Health = char.Humanoid.Health + 3

        hxs = hxs + 3

      end

    end

  end

  if hxs > 0 then

    HL(char.Head, hxs)

  end

end

local function explode(cf, size, damage, delta, slow, tp)

  mouse.TargetFilter = xd

  local actd = true

  local prt = Instance.new("Part", xd)

  game.Debris:AddItem(prt, 4)

  prt.Transparency = 1

  prt.CanCollide = false

  prt.Position = cf.p

  prt.Size = Vector3.new(1.5, 1.5, 1.5)

  prt.Touched:connect(function(part)

    if part.CanCollide == true then

      cf = prt.CFrame

      prt:Destroy()

    end

  end)

  wait(0.1)

  local Outer = makepart(0.6, false, "Royal purple", Vector3.new(size, 1, size), cf, "SmoothPlastic", nil, 5, true)

  local Inner = makepart(0.2, false, "Black", Vector3.new(1, 1.2, 1), cf * CFrame.new(0, 0.2, 0), "SmoothPlastic", nil, 5, true)

  meshsomething(Outer, nil, nil, nil, "CylinderMesh")

  meshsomething(Inner, nil, nil, nil, "CylinderMesh")

  BFE(Outer, Vector3.new(size * 1.5, size * 1.5, size * 1.5))

  BFE(p62, Vector3.new(10, 10, 10))

  local function getsnearme(studs)

    local list = game.Workspace:GetChildren()

    local targs = {}

    for i = 1, #list do

      local target = list[i]

      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") then

        if studs > (Outer.Position - target.Torso.Position).magnitude then

          if target ~= nil then

            table.insert(targs, target)

          end

        elseif (Outer.Position - target.Torso.Position).magnitude < 101 then

        end

      end

    end

    return targs

  end

  local f = getsnearme(size / 1.7)

  for i, v in pairs(f) do

    if v:FindFirstChild("Attack") then

      if v:FindFirstChild("Blocking").Value == true then

        v.BlockingLabel.Value = true

      elseif v:FindFirstChild("Team").Value ~= team.Value then

      end

    else

    end

  end

  local crs = 0

  game:GetService("RunService").RenderStepped:connect(function()

    if Inner.Size.X < size then

      crs = crs + delta

      Inner.Size = Inner.Size:lerp(Vector3.new(crs, 1.2, crs), 0.2)

      Inner.CFrame = cf * CFrame.new(0, 0.2, 0)

      Outer.CFrame = cf

    elseif actd == true then

      actd = false

      if tp ~= nil then

        table.insert(PartsToTransparency, Inner)

        table.insert(PartsToTransparency, Outer)

        char.Torso.CFrame = cf * CFrame.new(0, 2, 0)

        BFE(Inner, Vector3.new(30, 30, 30))

      else

        table.insert(PartsToTransparency, Inner)

        table.insert(PartsToTransparency, Outer)

        rle(cf, size, damage)

      end

      wait(0.1)

    end

  end)

end

function zskl()

  if current == true and opend == true and stun.Value == false and energy > 19 and S1 == true and healingmode == false then

    energy = energy - 20

    S1T = 0

    current = false

    wait(0.05)

    local cf = CFrame.new(0, -0.8, 1) * CFrame.Angles(math.rad(90), math.rad(180), math.rad(0))

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

    bfr = true

    local FPSBOOST = 100 --player.FB.Value

    local ndbst = tonumber(FPSBOOST) * 0.1

    wait(0.3)

    explode(CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y, mouse.Hit.p.Z), 1, math.random(8, 9), 0.3 + ndbst, 0.3)

    wait(0.3)

    explode(CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y, mouse.Hit.p.Z), 15, math.random(8, 9), 0.3 + ndbst, 0.3)

    wait(0.3)

    explode(CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y, mouse.Hit.p.Z), 15, math.random(8, 9), 0.3 + ndbst, 0.3)

    bfr = false

    current = true

  end

end

local r2d = false

local rb

local r = false

function xskl()

  if current == true and opend == true and stun.Value == false and energy > 26 and S2 == true and healingmode == false then

    energy = energy - 26

    S2T = 0

    current = false

    wait(0.05)

    wait()

    local cf = CFrame.new(0, -0.8, 1) * CFrame.Angles(math.rad(90), math.rad(180), math.rad(0))

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

    bfr = true

    wait(0.3)

    local FPSBOOST = 100 --player.FB.Value

    local ndbst = tonumber(FPSBOOST) * 0.1

    explode(CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y, mouse.Hit.p.Z), 50, math.random(18, 23), 0.5 + ndbst, 0.3)

    wait(0.4)

    bfr = false

    current = true

  end

end

function ma()

  local f = Instance.new("Part", xd)

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

end)

game:GetService("RunService").RenderStepped:connect(function()

  if r == true then

    r = false

    do

      local l = Instance.new("Part", xd)

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

      local function getsnearme(studs)

        local list = game.Workspace:GetChildren()

        local targs = {}

        for i = 1, #list do

          local target = list[i]

          if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and studs > (target.Torso.Position - l.Position).magnitude and target ~= nil then

            table.insert(targs, target)

          end

        end

        return targs

      end

      local f = getsnearme(20)

      for i, v in pairs(f) do

        wait(0.1)

        if v:FindFirstChild("Attack") then

          if v:FindFirstChild("Blocking").Value == true then

            v.BlockingLabel.Value = true

          else

            if v:FindFirstChild("Team") and v:FindFirstChild("Team").Value ~= team.Value then

              v:FindFirstChild("Attack").Value = v:FindFirstChild("Attack").Value - 0.1

              v:FindFirstChild("Attack").Value = v:FindFirstChild("Attack").Value - 0.1

            end

            local dtd = math.floor(math.random(12, 14) * atk.Value / v:FindFirstChild("Defense").Value)

            if v:FindFirstChild("Team").Value ~= team.Value then

              v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

            end

            dfm = 5

            df = nil

            wait()

            if v:FindFirstChild("Team").Value ~= team.Value then

              dfm = dtd

              df = v:FindFirstChild("Head")

            end

          end

        else

          local dtd = math.floor(math.random(12, 14) * atk.Value)

          if v:FindFirstChild("Team").Value ~= team.Value then

            v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

          end

          dfm = 5

          df = nil

          wait()

          if v:FindFirstChild("Team").Value ~= team.Value then

            dfm = dtd

            df = v:FindFirstChild("Head")

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

end)

game:GetService("RunService").RenderStepped:connect(function()

  if pl ~= nil and pl.Size ~= Vector3.new(40, 40, 40) then

    pl.Size = pl.Size:lerp(Vector3.new(40, 40, 40), 0.05)

    pl.CFrame = rb

  end

end)

local spk, spkcf, spkm

local cf = Instance.new("CFrameValue", char)

game:GetService("RunService").RenderStepped:connect(function()

  if spk ~= nil and spkcf ~= nil and spkm ~= nil then

    spk.Size = spk.Size:lerp(Vector3.new(8.02, 15, 9.39), 0.05)

    spk.CFrame = cf

    spkm.Scale = spkm.Scale:lerp(Vector3.new(10, 10, 10), 0.05)

  end

end)

function cskl()

  if (mouse.Hit.p - char.HumanoidRootPart.Position).magnitude < 60 then

    if current == true and opend == true and stun.Value == false and energy > 25 and S3 == true and healingmode == false then

      energy = energy - 26

      S3T = 0

      current = false

      wait(0.05)

      wait()

      local cf = CFrame.new(0, -0.8, 1) * CFrame.Angles(math.rad(90), math.rad(180), math.rad(0))

      makeorb = true

      TARG1 = heal[4]

      TARG2 = heal[3]

      TARG3 = heal[2]

      TARG4 = heal[6]

      TARG5 = heal[5]

      TARG6 = heal[1]

      STARG = cf

      bfr = true

      local FPSBOOST = 100 --player.FB.Value

      local ndbst = tonumber(FPSBOOST) * 0.1

      explode(CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y, mouse.Hit.p.Z), 10, nil, 0.2 + ndbst, nil, true)

      wait(0.4)

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

      bfr = false

      current = true

    end

  else

    f3l.Text = "Too Far!"

    wait(1)

    f3l.Text = "[C] Dark Transportation"

  end

end

local ttl, cfr, ttl2, cfr2

game:GetService("RunService").RenderStepped:connect(function()

  if ttl ~= nil then

    ttl.CFrame = ttl.CFrame:lerp(cfr, 0.2)

  end

end)

game:GetService("RunService").RenderStepped:connect(function()

  if ttl2 ~= nil then

    ttl2.CFrame = ttl2.CFrame:lerp(cfr2, 0.005)

  end

end)

function burst(crcf, crc1, crc2)

  local function getsnearme(studs)

    local list = game.Workspace:GetChildren()

    local targs = {}

    for i = 1, #list do

      local target = list[i]

      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and target:FindFirstChild("Attack") then

        if studs > (crcf.Position - target.Torso.Position).magnitude then

          if target ~= nil then

            table.insert(targs, target)

          end

        elseif (crcf.Position - target.Torso.Position).magnitude < 101 then

        end

      end

    end

    return targs

  end

  local cfz = getsnearme(osr + 50)

  for i, v in pairs(cfz) do

    wait()

    if v:FindFirstChild("Attack") then

      if v:FindFirstChild("Blocking").Value == true then

        v.BlockingLabel.Value = true

      else

        if not v:FindFirstChild("Team") or v:FindFirstChild("Team").Value ~= team.Value then

        end

        local dtd = math.floor(20 * atk.Value / v:FindFirstChild("Defense").Value)

        if v:FindFirstChild("Team").Value ~= team.Value then

          v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

          v.Stunned.Value = true

        end

        dfm = 5

        df = nil

        wait()

        if v:FindFirstChild("Team").Value ~= team.Value then

          dfm = dtd

          df = v:FindFirstChild("Head")

        end

      end

    else

      local dtd = math.floor(20 * atk.Value)

      if v:FindFirstChild("Team").Value ~= team.Value then

        v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd

      end

      dfm = 5

      df = nil

      wait()

      if v:FindFirstChild("Team").Value ~= team.Value then

        dfm = dtd

        df = v:FindFirstChild("Head")

      end

    end

  end

  bh = false

  osr = 5

  table.insert(PartsToTransparency, crc1)

  table.insert(PartsToTransparency, crc2)

  table.insert(PartsToTransparency, crcf)

  current = true

  skl = false

  BFE(crcf, Vector3.new(70, 70, 70), CFrame.new(0, 0, 0))

  wait(0.5)

  crc1:Destroy()

  crcf:Destroy()

  crc2:Destroy()

end

function vskl()

  if current == true and opend == true and stun.Value == false and energy > 36 and S4 == true and healingmode == false then

    current = false

    skl = true

    do

      local act = true

      wait(0.05)

      S4T = 0

      energy = energy - 37

      wait()

      local cf = CFrame.new(0, -0.8, 1) * CFrame.Angles(math.rad(90), math.rad(180), math.rad(0))

      char.Humanoid.WalkSpeed = 0

      TARG1 = SK4[6]

      TARG2 = SK4[5]

      TARG3 = SK4[4]

      TARG4 = SK4[3]

      TARG5 = SK4[2]

      TARG6 = SK4[1]

      STARG = cf

      wait(0.05)

      TARG1 = SK4[6]

      TARG2 = SK4[5]

      TARG3 = SK4[4]

      TARG4 = SK4[3]

      TARG5 = SK4[2]

      TARG6 = SK4[1]

      STARG = cf

      wait(0.05)

      TARG1 = SK4[6]

      TARG2 = SK4[5]

      TARG3 = SK4[4]

      TARG4 = SK4[3]

      TARG5 = SK4[2]

      TARG6 = SK4[1]

      STARG = cf

      wait(0.05)

      TARG1 = SK4[6]

      TARG2 = SK4[5]

      TARG3 = SK4[4]

      TARG4 = SK4[3]

      TARG5 = SK4[2]

      TARG6 = SK4[1]

      STARG = cf

      wait(0.25)

      BFE(p53, Vector3.new(15, 15, 15), CFrame.new(0, 3, 0))

      local debs = 35

      bh = true

      local crcf = makepart(0, false, "Really black", Vector3.new(5, 5, 5), char.HumanoidRootPart.CFrame * CFrame.new(0, 5, -50) * CFrame.Angles(math.rad(90), math.rad(90), 0), "Neon", "Ball", debs, true)

      pxo = crcf

      BFE(crcf, Vector3.new(70, 70, 70), CFrame.new(0, 0, 0))

      local crc1 = makepart(0.2, false, "Really black", Vector3.new(0.2, 40.91, 40.94), char.HumanoidRootPart.CFrame * CFrame.new(0, 5, -50) * CFrame.Angles(math.rad(90), math.rad(90), 0), "Neon", nil, debs, true)

      local x1 = meshsomething(crc1, nil, nil, Vector3.new(1, 1, 1), nil)

      x1.MeshType = "Sphere"

      local crc2 = makepart(0.4, false, "Really black", Vector3.new(5.07, 50.01, 50.06), char.HumanoidRootPart.CFrame * CFrame.new(0, 5, -50) * CFrame.Angles(math.rad(90), math.rad(90), 0), "Neon", nil, debs, true)

      local x2 = meshsomething(crc2, nil, nil, Vector3.new(1, 1, 1), nil)

      x2.MeshType = "Sphere"

      local function getsnearme(studs)

        local list = game.Workspace:GetChildren()

        local targs = {}

        for i = 1, #list do

          local target = list[i]

          if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and target:FindFirstChild("Attack") then

            if studs > (crcf.Position - target.Torso.Position).magnitude then

              if target ~= nil then

                table.insert(targs, target)

              end

            elseif (crcf.Position - target.Torso.Position).magnitude < 101 then

            end

          end

        end

        return targs

      end

      local xr = game:GetService("RunService").Stepped:Wait()

      game:GetService("RunService").Stepped:connect(function()

        wait()

        if act == true then

          wait()

          crcf.Size = crcf.Size:lerp(Vector3.new(osr, osr, osr), 0.05)

          crcf.CFrame = crc1.CFrame

        end

      end)

      wait(0.3)

      while wait() do

        if act == true then

          crc1.CFrame = crc1.CFrame * CFrame.fromEulerAnglesXYZ(0.05, 0, 0)

          crc2.CFrame = crc2.CFrame * CFrame.fromEulerAnglesXYZ(0.05, 0, 0)

          if osr < 35 then

            local FPSBOOST = 100 --player.FB.Value

            local ndbst = tonumber(FPSBOOST) * 0.2

            osr = osr + 0.35 + ndbst

          else

            act = false

            bh = false

            burst(crcf, crc1, crc2)

          end

          local nearblackhole = getsnearme(osr + 30)

          for i, v in pairs(nearblackhole) do

            local ray = Ray.new(crcf.CFrame.p, (v:FindFirstChild("Torso").CFrame.p - crcf.CFrame.p).unit * 950)

            local part, position = workspace:FindPartOnRayWithIgnoreList(ray, ignore, false, false)

            local distance = (crcf.CFrame.p - position).magnitude

            local distance = (crcf.CFrame.p - position).magnitude

            local CF = CFrame.new(crcf.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)

            local sl = CF.lookVector

            v:FindFirstChild("Torso").Velocity = sl * -45

          end

        end

      end

    end

  end

end
game:GetService("RunService").RenderStepped:connect(function()--game.Lighting.ChatRdy.Changed:connect(function()

  --if game.Lighting.ChatRdy.Value == true then

    if energy < 100 then

      energy = energy + 5

    end

    if S1T < 14 then

      S1T = S1T + 3

      S1 = false

    end

    if 14 > S2T then

      S2T = S2T + 2.01

      S2 = false

    end

    if 14 > S3T then

      S3T = S3T + 1.5

      S3 = false

    end

    if S4T < 29 then

      S4T = S4T + 1

    end

  --end

end)

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:connect(function(i, g)

  if i.UserInputType == Enum.UserInputType.Gamepad1 then

    local keyPressed = i.KeyCode

    if keyPressed == Enum.KeyCode.DPadLeft then

      zskl()

    elseif keyPressed == Enum.KeyCode.DPadUp then

      xskl()

    elseif keyPressed == Enum.KeyCode.DPadRight then

      cskl()

    elseif keyPressed == Enum.KeyCode.DPadDown then

      vskl()

    end

  end

  if i.UserInputType == Enum.UserInputType.Keyboard then

    local keyPressed = i.KeyCode

    if keyPressed == Enum.KeyCode.Z then

      zskl()

    elseif keyPressed == Enum.KeyCode.X then

      xskl()

    elseif keyPressed == Enum.KeyCode.C then

      cskl()

    elseif keyPressed == Enum.KeyCode.V then

      vskl()

    end

  end

end)

local Speed = 0.2

local lspeed = 0.08

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

  if not (energy < 100) or current == true then

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

  if posd.Value == true and 0 < pt.Value then

    pt.Value = pt.Value - 0.02

    char.Humanoid.Health = char.Humanoid.Health - 0.11

  end

  if 1 > pt.Value then

    posd.Value = false

  end

  if bl.Value == true then

    blt.Value = blt.Value - 0.5

  end

  if 0 < atkt.Value then

    atkt.Value = atkt.Value - 0.02

  else

    atk.Value = 1.1

  end

  if 0 < deft.Value then

    deft.Value = deft.Value - 0.02

  else

    def.Value = 0.9

  end

  if 0 < spdt.Value then

    spdt.Value = spdt.Value - 0.02

  else

    wait()

    if 1 > spdt.Value then

      spd.Value = 1

    end

  end

  local DV2 = S1T / S1TF

  local initX6 = f1.Size.X.Scale

  f1f:TweenSize(UDim2.new(initX6 * DV2 * 1.665, 0, 1, 0), "In", "Linear", 1)

  if S1T < 14 then

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

  if 14 > S2T then

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

  if 14 > S3T then

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

    S4 = false

  else

    S4 = true

  end

  if S4T == 30 then

    S4 = true

  end

end)

satk = atk.Value

sdef = def.Value

sspd = spd.Value

atk.Changed:connect(function()

  if satk > atk.Value then

    atkt.Value = atkt.Value + 4

    makeui(Color3.new(255, 0, 0), "-Damage")

    satk = atk.Value

  else

    atkt.Value = atkt.Value + 4

    makeui(Color3.new(255, 0, 0), "+Damage")

    satk = atk.Value

  end

end)

posd.Changed:connect(function()

  if posd.Value == false then

    makeui(Color3.new(255, 0, 0), "-Poison")

  else

    makeui(Color3.new(255, 0, 0), "+Poison")

  end

end)

def.Changed:connect(function()

  if sdef > def.Value then

    deft.Value = deft.Value + 4

    makeui(Color3.new(0, 0, 255), "-Defense")

    sdef = def.Value

  else

    deft.Value = deft.Value + 4

    makeui(Color3.new(0, 0, 255), "+Defense")

    sdef = def.Value

  end

end)

spd.Changed:connect(function()

  if sspd > spd.Value then

    spdt.Value = spdt.Value + 4

    makeui(Color3.new(0, 255, 0), "-Speed")

    sspd = spd.Value

  else

    spdt.Value = spdt.Value + 4

    makeui(Color3.new(0, 255, 0), "+Speed")

    sspd = spd.Value

  end

end)

bll.Changed:connect(function()

  if bll.Value == true then

    local c = Instance.new("Part", xd)

    c.Anchored = true

    c.CanCollide = false

    c.BrickColor = BrickColor.new("Medium stone grey")

    c.Shape = "Ball"

    c.Size = Vector3.new(1, 1, 1)

    c.CFrame = char.Torso.CFrame

    c.TopSurface = "Smooth"

    c.BottomSurface = "Smooth"

    c.Transparency = 0.1

    local v = Instance.new("Part", xd)

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

end)

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

end)

table.insert(ignore, char)

local pja = true

while wait() do

  wait()

  for i, v in pairs(xd:GetChildren()) do

    table.insert(ignore, v)

  end

  for i, v in pairs(player.Character:GetChildren()) do

    if v.ClassName == "Part" then

      table.insert(ignore, v)

    end

  end

  local iced = 0

  for i, v in pairs(char.Torso:GetChildren()) do

    if v.ClassName == "Part" then

      iced = iced + 1

    end

  end

  if iced > 4 then

    iced = 4

  end

  local iscp = iced * 0.1

  local spdt = spd.Value - iscp

  fa.Text = "Attack : " .. tostring(atk.Value * 100) .. "%"

  fa2.Text = "Speed : " .. tostring(spdt * 100) .. "%"

  fa3.Text = "Defense : " .. tostring(def.Value * 100) .. "%"

  local initX5 = f5.Size.X.Scale

  local maxhp = char.Humanoid.MaxHealth

  local hp = char.Humanoid.Health

  local Pie = hp / maxhp

  f5f:TweenSize(UDim2.new(initX5 * Pie * 3.33, 0, 1, 0), "In", "Linear", 1)

  local DV1 = energy / 100

  local initX6 = f6.Size.X.Scale

  f6f:TweenSize(UDim2.new(initX6 * DV1 * 3.33, 0, 1, 0), "In", "Linear", 1)

  if opend == true and current == true and idleq == false then

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

      local iced = 0

      for i, v in pairs(char.Torso:GetChildren()) do

        if v.ClassName == "Part" then

          iced = iced + 1

        end

      end

      if iced > 4 then

        iced = 4

      end

      local iscp = iced * 0.1

      local fspeed = spd.Value - iscp

      char.Humanoid.WalkSpeed = 16 * fspeed

    end

    if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

      pja = true

      TARG1 = jump[3]

      TARG2 = jump[2]

      TARG3 = jump[1]

      TARG4 = jump[5]

      TARG5 = jump[4]

      TARG6 = CFrame.new(0, 0, 0)

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        wait(0.05)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        TARG1 = jump[3]

        TARG2 = jump[2]

        TARG3 = jump[1]

        TARG4 = jump[5]

        TARG5 = jump[4]

        TARG6 = CFrame.new(0, 0, 0)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        wait(0.05)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        TARG1 = jump[3]

        TARG2 = jump[2]

        TARG3 = jump[1]

        TARG4 = jump[5]

        TARG5 = jump[4]

        TARG6 = CFrame.new(0, 0, 0)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        wait(0.05)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        TARG1 = jump[3]

        TARG2 = jump[2]

        TARG3 = jump[1]

        TARG4 = jump[5]

        TARG5 = jump[4]

        TARG6 = CFrame.new(0, 0, 0)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        TARG1 = jump2[3]

        TARG2 = jump2[2]

        TARG3 = jump2[1]

        TARG4 = jump2[5]

        TARG5 = jump2[4]

        TARG6 = CFrame.new(0, 0, 0)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        wait(0.05)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        TARG1 = jump2[3]

        TARG2 = jump2[2]

        TARG3 = jump2[1]

        TARG4 = jump2[5]

        TARG5 = jump2[4]

        TARG6 = CFrame.new(0, 0, 0)

      end

      if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then

        wait(0.15)

      end

      pja = false

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

        STARG = CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(50)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

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

        if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then

          wait(0.05)

        end

      elseif IdleAndWalk == false and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false and healingmode == false then

        TARG1 = idle[5] * CFrame.Angles(0.1 * math.sin(tick()), 0, 0)

        TARG2 = idle[6] * CFrame.Angles(0.1 * math.sin(tick()), 0, 0)

        TARG3 = idle[2] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)

        TARG4 = idle[4] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)

        TARG5 = idle[3] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)

        TARG6 = idle[1]

        STARG = CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(50)) * CFrame.fromEulerAnglesXYZ(0, 0.4, 0)

      end

    end

  end

end

