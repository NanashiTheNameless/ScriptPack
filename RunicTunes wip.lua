-- params : ...

player = game:GetService("Players").LocalPlayer
char = player.Character
mouse = player:GetMouse()
for i,v in pairs(char:GetChildren()) do
  if v.ClassName == "BoolValue" then
    v:Destroy()
  else
    if v.ClassName == "NumberValue" then
      v:Destroy()
    else
      if v.ClassName == "IntValue" then
        v:Destroy()
      else
        if v.ClassName == "CFrameValue" then
          v:Destroy()
        else
          if v.ClassName == "Model" then
            v:Destroy()
          end
        end
      end
    end
  end
end
local makeorb = false
idleq = false
local skl = false
local healingmode = false
parts = {}
poses = {}
sizes = {}
local obj3, HBOX1, HBOX2, TARG10, TARG11, STARG, lastdg, objs, objs2, dg, dgm = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local active = true
local spinning = false
team = Instance.new("StringValue", char)
team.Name = "Team"
team.Value = player.Name
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

local lastdf, df, dfm = nil, nil, nil
local basicunlocked = false
stats=Instance.new("BoolValue", char)
stats.Name="Stats"
stats.Value=false
mc = Instance.new("NumberValue", stats)
mc.Name = "CloanTime"
mc.Value = 0
ht = Instance.new("NumberValue", stats)
ht.Name = "HealingTime"
ht.Value = 6
stun = Instance.new("BoolValue", stats)
stun.Name = "Stunned"
stun.Value = false
atk = Instance.new("NumberValue", stats)
atk.Name = "Attack"
atk.Value = 1
def = Instance.new("NumberValue", stats)
def.Name = "Defense"
def.Value = 1
spd = Instance.new("NumberValue", stats)
spd.Name = "Speed"
spd.Value = 1
deft = Instance.new("NumberValue", stats)
deft.Name = "DefenseTime"
deft.Value = 0
atkt = Instance.new("NumberValue", stats)
atkt.Name = "AttackTime"
atkt.Value = 0
spdt = Instance.new("NumberValue", stats)
spdt.Name = "SpeedTime"
spdt.Value = 0
posd = Instance.new("BoolValue", stats)
posd.Name = "Posioned"
posd.Value = false
pt = Instance.new("NumberValue", stats)
pt.Name = "PoisonTime"
pt.Value = 0
bl = Instance.new("BoolValue", stats)
bl.Name = "Blocking"
bl.Value = false
bll = Instance.new("BoolValue", stats)
bll.Name = "BlockingLabel"
bll.Value = false
blt = Instance.new("NumberValue", stats)
blt.Name = "BlockingLeft"
blt.Value = 50
pb = Instance.new("BoolValue", stats)
pb.Name = "PauseBlock"
pb.Value = false
blm = 100
gd = Instance.new("BoolValue", stats)
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
m.Name = "Runic Tunes"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Lily white")
p1.Material = Enum.Material.SmoothPlastic
p1.Name = "BLD"
p1.CFrame = CFrame.new(158.814728, 7.5604434, 68.9112091, 0.118325084, -0.0106279431, -0.992919028, 0.00754601555, 0.999924302, -0.00980370957, 0.992947757, -0.00633254647, 0.118396461)
p1.CanCollide = false
p1.Size = Vector3.new(0.200000003, 1.96283054, 0.200000003)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.648554683, 1, 0.684892654)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Steel blue")
p2.Material = Enum.Material.Neon
p2.Name = "BLD"
p2.CFrame = CFrame.new(158.814041, 7.5597086, 68.9119949, 0.118325084, -0.0106279431, -0.992919028, 0.00754601555, 0.999924302, -0.00980370957, 0.992947757, -0.00633254647, 0.118396461)
p2.CanCollide = false
p2.Size = Vector3.new(0.200000003, 1.97707105, 0.200000003)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.557979703, 1, 0.633331835)
p3 = Instance.new("WedgePart", m)
p3.BrickColor = BrickColor.new("Steel blue")
p3.Material = Enum.Material.Neon
p3.Name = "BLD"
p3.CFrame = CFrame.new(156.878372, 13.0602722, 69.0994492, -0.11835397, -0.992914915, -0.0106989695, -0.00756300753, -0.00987302419, 0.999923646, -0.992943823, 0.118426017, -0.0063409037)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(0.200000003, 0.402665049, 0.777830362)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.498162329, 1, 1)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Steel blue")
p4.Material = Enum.Material.Neon
p4.Name = "BLD"
p4.CFrame = CFrame.new(157.307724, 12.1233807, 69.0564804, 0.118310027, 0.529905677, -0.839764893, 0.00755101116, 0.845199645, 0.534398854, 0.992949247, -0.0695658773, 0.0959944203)
p4.CanCollide = false
p4.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.50920862, 1, 1)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Steel blue")
p5.Material = Enum.Material.Neon
p5.Name = "BLD"
p5.CFrame = CFrame.new(160.176987, 12.1517935, 68.714447, -0.118335038, -0.547754049, 0.828229785, -0.0075480137, 0.834562182, 0.550863683, -0.992946565, 0.0589350685, -0.10289254)
p5.CanCollide = false
p5.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.50920862, 1, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Steel blue")
p6.Material = Enum.Material.Neon
p6.Name = "BLD"
p6.CFrame = CFrame.new(157.422958, 12.2590694, 69.0417023, 0.118307069, 0.747301161, -0.653870761, 0.00755501352, 0.657798648, 0.753157079, 0.992949605, -0.0940439478, 0.0721764714)
p6.CanCollide = false
p6.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.50920862, 1, 1)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Lily white")
p7.Material = Enum.Material.SmoothPlastic
p7.Name = "BLD"
p7.CFrame = CFrame.new(158.754517, 12.4360352, 68.8841705, 0.11835397, -0.99291575, 0.0106354216, 0.00756300753, -0.00980902929, -0.999924123, 0.992943823, 0.118425608, 0.00634848187)
p7.CanCollide = false
p7.Size = Vector3.new(0.200000003, 1.43592846, 0.234207362)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.58933264, 1, 1)
p8 = Instance.new("WedgePart", m)
p8.BrickColor = BrickColor.new("Steel blue")
p8.Material = Enum.Material.Neon
p8.Name = "BLD"
p8.CFrame = CFrame.new(157.24379, 11.7580929, 69.0659103, -0.11835397, -0.992914915, -0.0106989695, -0.00756300753, -0.00987302419, 0.999923646, -0.992943823, 0.118426017, -0.0063409037)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(0.200000003, 0.402665049, 0.777830362)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.498162329, 1, 1)
p9 = Instance.new("WedgePart", m)
p9.BrickColor = BrickColor.new("Steel blue")
p9.Material = Enum.Material.Neon
p9.Name = "BLD"
p9.CFrame = CFrame.new(160.248718, 11.7879009, 68.7096558, 0.118293986, 0.992922843, -0.0106371325, 0.00756400824, 0.00981101859, 0.999924242, 0.992950976, -0.11836566, -0.00634988351)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(0.200000003, 0.402665049, 0.777830362)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Wedge
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.498162329, 1, 1)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Lily white")
p10.Material = Enum.Material.SmoothPlastic
p10.Name = "BLD"
p10.CFrame = CFrame.new(159.46701, 12.4445133, 68.7992249, 0.118308052, 0.694607854, -0.709595263, 0.00755301397, 0.713963687, 0.700143218, 0.992949486, -0.0881922767, 0.0792213902)
p10.CanCollide = false
p10.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.58933264, 0.815570593, 0.824843287)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Steel blue")
p11.Material = Enum.Material.Neon
p11.Name = "BLD"
p11.CFrame = CFrame.new(159.728104, 12.4282827, 68.7657394, -0.118352018, -0.982557595, 0.143443584, -0.00755901122, 0.145346135, 0.989352942, -0.99294436, 0.116007797, -0.0246291868)
p11.CanCollide = false
p11.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.50920862, 1, 1)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Steel blue")
p12.Material = Enum.Material.Neon
p12.Name = "BLD"
p12.CFrame = CFrame.new(160.058914, 12.2851906, 68.727478, -0.118341058, -0.761105955, 0.6377424, -0.00755101349, 0.642926514, 0.765891731, -0.992945552, 0.0858209506, -0.0818318427)
p12.CanCollide = false
p12.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.50920862, 1, 1)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Steel blue")
p13.Material = Enum.Material.Neon
p13.Name = "BLD"
p13.CFrame = CFrame.new(157.750641, 12.4086933, 69.0015106, 0.118294001, 0.97926718, -0.164452553, 0.00756200869, 0.164722145, 0.986311972, 0.992951095, -0.117918529, 0.0120804515)
p13.CanCollide = false
p13.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.50920862, 1, 1)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Steel blue")
p14.Material = Enum.Material.Neon
p14.Name = "BLD"
p14.CFrame = CFrame.new(159.909805, 12.3785143, 68.7444763, -0.118348099, -0.916854024, 0.381280303, -0.0075570154, 0.384799153, 0.922970295, -0.992944837, 0.106350563, -0.0524689853)
p14.CanCollide = false
p14.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.50920862, 1, 1)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Steel blue")
p15.Material = Enum.Material.Neon
p15.Name = "BLD"
p15.CFrame = CFrame.new(157.570007, 12.3553028, 69.0234451, 0.118300028, 0.908478975, -0.400840968, 0.00755601097, 0.402840227, 0.915240228, 0.992950439, -0.111301847, 0.0407916084)
p15.CanCollide = false
p15.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.50920862, 1, 1)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Steel blue")
p16.Material = Enum.Material.Neon
p16.Name = "BLD"
p16.CFrame = CFrame.new(158.742798, 12.4337044, 68.8831253, 0.118293986, 0.992922843, -0.0106371325, 0.00756400824, 0.00981101859, 0.999924242, 0.992950976, -0.11836566, -0.00634988351)
p16.CanCollide = false
p16.Size = Vector3.new(0.200000003, 1.83073652, 0.486118287)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.50920862, 1, 1)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Lily white")
p17.Material = Enum.Material.SmoothPlastic
p17.Name = "BLD"
p17.CFrame = CFrame.new(158.041702, 12.4303865, 68.9691162, 0.118307985, 0.694608331, -0.709595621, 0.00755301351, 0.713964105, 0.700143635, 0.992949724, -0.0881923735, 0.0792214721)
p17.CanCollide = false
p17.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.58933264, 0.815570593, 0.824843287)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Steel blue")
p18.Material = Enum.Material.Neon
p18.Name = "BLD"
p18.CFrame = CFrame.new(160.275757, 13.6879368, 68.6909027, -0.11834804, -0.91685462, 0.381280571, -0.0075570168, 0.384799421, 0.922970891, -0.992945075, 0.10635069, -0.0524690524)
p18.CanCollide = false
p18.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.50920862, 1, 1)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Steel blue")
p19.Material = Enum.Material.Neon
p19.Name = "BLD"
p19.CFrame = CFrame.new(160.094055, 13.7376461, 68.7121124, -0.118351959, -0.982558072, 0.143443704, -0.00755901216, 0.145346209, 0.989353597, -0.992944598, 0.116007946, -0.0246292129)
p19.CanCollide = false
p19.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.50920862, 1, 1)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Steel blue")
p20.Material = Enum.Material.Neon
p20.Name = "BLD"
p20.CFrame = CFrame.new(160.543045, 13.4612131, 68.660759, -0.118334994, -0.547754407, 0.828230321, -0.00754801324, 0.834562838, 0.550863981, -0.992946804, 0.0589351282, -0.102892645)
p20.CanCollide = false
p20.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.50920862, 1, 1)
p21 = Instance.new("WedgePart", m)
p21.BrickColor = BrickColor.new("Steel blue")
p21.Material = Enum.Material.Neon
p21.Name = "BLD"
p21.CFrame = CFrame.new(160.61467, 13.0973186, 68.6560059, 0.118293941, 0.992923439, -0.0106371343, 0.00756401056, 0.0098110307, 0.999924839, 0.992951334, -0.118365787, -0.0063498863)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Symmetric
p21.Size = Vector3.new(0.200000003, 0.402665049, 0.777830362)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.498162329, 1, 1)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Steel blue")
p22.Material = Enum.Material.Neon
p22.Name = "BLD"
p22.CFrame = CFrame.new(160.42485, 13.5945854, 68.6738205, -0.118341006, -0.761106491, 0.637742817, -0.00755101489, 0.642926931, 0.765892208, -0.99294579, 0.0858210698, -0.0818319246)
p22.CanCollide = false
p22.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("BlockMesh", p22)
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.50920862, 1, 1)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Lily white")
p23.Material = Enum.Material.SmoothPlastic
p23.Name = "BLD"
p23.CFrame = CFrame.new(158.827927, 6.39995003, 68.9178162, 0.118325025, -0.0106279431, -0.992919743, 0.00754601602, 0.999924898, -0.00980372261, 0.992947996, -0.00633254927, 0.11839661)
p23.CanCollide = false
p23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("BlockMesh", p23)
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.718227684, 0.506206095, 0.73399806)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Lily white")
p24.Material = Enum.Material.SmoothPlastic
p24.Name = "BLD"
p24.CFrame = CFrame.new(158.827576, 6.39646339, 68.9185486, 0.118325025, -0.0106279431, -0.992919743, 0.00754601602, 0.999924898, -0.00980372261, 0.992947996, -0.00633254927, 0.11839661)
p24.CanCollide = false
p24.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("BlockMesh", p24)
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.648554683, 0.687896371, 0.684892654)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Steel blue")
p25.Material = Enum.Material.Neon
p25.Name = "BLD"
p25.CFrame = CFrame.new(158.736465, 14.890851, 68.865036, 0.118337922, -0.709601462, -0.694597363, 0.00755000906, 0.700135171, -0.713972449, 0.992946208, 0.0792460293, 0.0882102326)
p25.CanCollide = false
p25.Size = Vector3.new(0.200000003, 0.345786512, 0.341257185)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("BlockMesh", p25)
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.50920862, 1, 1)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Lily white")
p26.Material = Enum.Material.SmoothPlastic
p26.Name = "BLD"
p26.CFrame = CFrame.new(158.801727, 8.90960407, 68.9055328, 0.118325025, -0.0106279431, -0.992919743, 0.00754601602, 0.999924898, -0.00980372261, 0.992947996, -0.00633254927, 0.11839661)
p26.CanCollide = false
p26.Size = Vector3.new(0.200000003, 0.346768677, 0.492501974)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("BlockMesh", p26)
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.58933264, 1, 1)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Lily white")
p27.Material = Enum.Material.SmoothPlastic
p27.Name = "Main"
p27.CFrame = CFrame.new(158.815582, 7.5606904, 68.9103928, 0.118325055, -0.0106279459, -0.992918789, 0.0075460095, 0.999924064, -0.00980370119, 0.992947042, -0.00633254554, 0.118396379)
p27.Size = Vector3.new(0.200000003, 1.93370783, 0.200000003)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("BlockMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.718227684, 1, 0.73399806)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Lily white")
p28.Material = Enum.Material.SmoothPlastic
p28.Name = "BLD"
p28.CFrame = CFrame.new(158.93222, 6.67016792, 68.9040375, 0.0761855617, -0.992928326, 0.0911706984, 0.712377787, -0.00977398362, -0.70173943, 0.697660565, 0.118399531, 0.706581771)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Symmetric
p28.Elasticity = 0
p28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("SpecialMesh", p28)
b28.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.0979999974, 0.0979999974, 0.0979999974)
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Lily white")
p29.Material = Enum.Material.SmoothPlastic
p29.Name = "BLD"
p29.CFrame = CFrame.new(158.808517, 8.45066643, 68.9044189, 0.118325025, -0.0106279431, -0.992919743, 0.00754601602, 0.999924898, -0.00980372261, 0.992947996, -0.00633254927, 0.11839661)
p29.CanCollide = false
p29.Size = Vector3.new(0.200000003, 0.200000003, 0.201797724)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("BlockMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.718227684, 0.502999544, 1)
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Lily white")
p30.Material = Enum.Material.SmoothPlastic
p30.Name = "BLD"
p30.CFrame = CFrame.new(158.909317, 8.45204735, 68.8931046, 0.0761855543, -0.992928326, 0.0911706984, 0.712377965, -0.00977396779, -0.701739252, 0.697660387, 0.118399531, 0.706581891)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Symmetric
p30.Elasticity = 0
p30.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p30)
b30.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b30.TextureId = ""
b30.MeshType = Enum.MeshType.FileMesh
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.0979999974, 0.0979999974, 0.0979999974)
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Lily white")
p31.Material = Enum.Material.SmoothPlastic
p31.Name = "BLD"
p31.CFrame = CFrame.new(158.708908, 8.45005894, 68.917038, 0.0761882216, -0.992918432, 0.0911584049, 0.712373853, -0.0097635109, -0.701733112, 0.697653294, 0.118402772, 0.70658499)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Symmetric
p31.Elasticity = 0
p31.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("SpecialMesh", p31)
b31.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b31.TextureId = ""
b31.MeshType = Enum.MeshType.FileMesh
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.0979999974, 0.0979999974, 0.0979999974)
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Steel blue")
p32.Material = Enum.Material.Neon
p32.Name = "Ray"
p32.CFrame = CFrame.new(158.769913, 11.8427038, 68.8844223, 0.118325047, -0.0106279496, -0.992918074, 0.00754600298, 0.999923468, -0.00980368629, 0.992946327, -0.00633254042, 0.118396193)
p32.CanCollide = false
p32.Size = Vector3.new(0.200000003, 6.09162045, 0.486118287)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("BlockMesh", p32)
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.50920862, 1, 1)
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Lily white")
p33.Material = Enum.Material.SmoothPlastic
p33.Name = "BLD"
p33.CFrame = CFrame.new(158.767548, 11.5664883, 68.8892365, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p33.CanCollide = false
p33.Size = Vector3.new(0.200000003, 4.97152424, 0.234207362)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("BlockMesh", p33)
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.58933264, 1, 1)
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Lily white")
p34.Material = Enum.Material.SmoothPlastic
p34.Name = "BLD"
p34.CFrame = CFrame.new(158.730392, 13.741621, 68.8770142, 0.118353955, -0.992916465, 0.0106354197, 0.00756301219, -0.00980904698, -0.999924719, 0.992944539, 0.118425779, 0.00634848466)
p34.CanCollide = false
p34.Size = Vector3.new(0.200000003, 2.02519441, 0.234207362)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("BlockMesh", p34)
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.58933264, 1, 1)
p35 = Instance.new("Part", m)
p35.BrickColor = BrickColor.new("Lily white")
p35.Material = Enum.Material.SmoothPlastic
p35.Name = "BLD"
p35.CFrame = CFrame.new(158.740524, 14.0519733, 68.8734207, 0.11830803, 0.69460839, -0.70959568, 0.0075530177, 0.713964105, 0.700143576, 0.992950201, -0.0881924033, 0.0792214945)
p35.CanCollide = false
p35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.58933264, 0.815570593, 0.824843287)
p36 = Instance.new("Part", m)
p36.BrickColor = BrickColor.new("Lily white")
p36.Material = Enum.Material.SmoothPlastic
p36.Name = "BLD"
p36.CFrame = CFrame.new(159.735458, 13.7529106, 68.7572479, 0.11830803, 0.69460839, -0.70959568, 0.0075530177, 0.713964105, 0.700143576, 0.992950201, -0.0881924033, 0.0792214945)
p36.CanCollide = false
p36.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("BlockMesh", p36)
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.58933264, 0.815570593, 0.824843287)
p37 = Instance.new("Part", m)
p37.BrickColor = BrickColor.new("Lily white")
p37.Material = Enum.Material.SmoothPlastic
p37.Name = "BLD"
p37.CFrame = CFrame.new(157.725037, 13.7329903, 68.9969025, 0.11830803, 0.69460839, -0.70959568, 0.0075530177, 0.713964105, 0.700143576, 0.992950201, -0.0881924033, 0.0792214945)
p37.CanCollide = false
p37.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("BlockMesh", p37)
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.58933264, 0.815570593, 0.824843287)
p38 = Instance.new("Part", m)
p38.BrickColor = BrickColor.new("Lily white")
p38.Material = Enum.Material.SmoothPlastic
p38.Name = "BLD"
p38.CFrame = CFrame.new(158.827896, 6.39891052, 68.9171371, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p38.CanCollide = false
p38.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("BlockMesh", p38)
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.362895161, 0.388352871, 0.856761694)
p39 = Instance.new("Part", m)
p39.BrickColor = BrickColor.new("Steel blue")
p39.Material = Enum.Material.Neon
p39.Name = "BLD"
p39.CFrame = CFrame.new(157.20462, 13.6575089, 69.0570068, 0.118300013, 0.908479631, -0.400841266, 0.00755601563, 0.402840495, 0.915240765, 0.992951155, -0.111301988, 0.0407916717)
p39.CanCollide = false
p39.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("BlockMesh", p39)
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.50920862, 1, 1)
p40 = Instance.new("Part", m)
p40.BrickColor = BrickColor.new("Steel blue")
p40.Material = Enum.Material.Neon
p40.Name = "BLD"
p40.CFrame = CFrame.new(157.385162, 13.7107983, 69.0350876, 0.118293993, 0.979267836, -0.164452657, 0.00756201334, 0.164722264, 0.986312509, 0.99295181, -0.117918685, 0.0120804729)
p40.CanCollide = false
p40.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("BlockMesh", p40)
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.50920862, 1, 1)
p41 = Instance.new("Part", m)
p41.BrickColor = BrickColor.new("Lily white")
p41.Material = Enum.Material.SmoothPlastic
p41.Name = "BLD"
p41.CFrame = CFrame.new(158.731781, 6.6681776, 68.9279327, 0.0761882588, -0.992918432, 0.0911583677, 0.712373495, -0.00976354349, -0.70173341, 0.697653711, 0.118402772, 0.706584513)
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Symmetric
p41.Elasticity = 0
p41.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("SpecialMesh", p41)
b41.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b41.TextureId = ""
b41.MeshType = Enum.MeshType.FileMesh
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.0979999974, 0.0979999974, 0.0979999974)
p42 = Instance.new("Part", m)
p42.BrickColor = BrickColor.new("Lily white")
p42.Material = Enum.Material.SmoothPlastic
p42.Name = "BLD"
p42.CFrame = CFrame.new(158.83139, 6.66878939, 68.9153366, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p42.CanCollide = false
p42.Size = Vector3.new(0.200000003, 0.200000003, 0.201797724)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("BlockMesh", p42)
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.718227684, 0.502999544, 1)
p43 = Instance.new("Part", m)
p43.BrickColor = BrickColor.new("Lily white")
p43.Material = Enum.Material.SmoothPlastic
p43.Name = "BLD"
p43.CFrame = CFrame.new(158.801743, 8.72985172, 68.9037323, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p43.CanCollide = false
p43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("BlockMesh", p43)
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.648554683, 0.687896371, 0.684892654)
p44 = Instance.new("Part", m)
p44.BrickColor = BrickColor.new("Lily white")
p44.Material = Enum.Material.SmoothPlastic
p44.Name = "BLD"
p44.CFrame = CFrame.new(158.801895, 8.74922943, 68.9028854, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p44.CanCollide = false
p44.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("BlockMesh", p44)
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.718227684, 0.665798903, 0.73399806)
p45 = Instance.new("Part", m)
p45.BrickColor = BrickColor.new("Steel blue")
p45.Material = Enum.Material.Neon
p45.Name = "BLD"
p45.CFrame = CFrame.new(158.801086, 8.72885609, 68.9045486, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p45.CanCollide = false
p45.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b45 = Instance.new("BlockMesh", p45)
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.557979703, 0.75173372, 0.633331835)
p46 = Instance.new("WedgePart", m)
p46.BrickColor = BrickColor.new("Lily white")
p46.Material = Enum.Material.SmoothPlastic
p46.Name = "BLD"
p46.CFrame = CFrame.new(158.917816, 8.71354866, 68.8893967, 0.118293978, 0.992923558, -0.0106371325, 0.00756401243, 0.00981103629, 0.999924839, 0.992951691, -0.118365817, -0.00634988584)
p46.CanCollide = false
p46.FormFactor = Enum.FormFactor.Symmetric
p46.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b46 = Instance.new("SpecialMesh", p46)
b46.MeshType = Enum.MeshType.Wedge
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.627057493, 0.434583604, 0.228340343)
p47 = Instance.new("Part", m)
p47.BrickColor = BrickColor.new("Lily white")
p47.Material = Enum.Material.SmoothPlastic
p47.Name = "BLD"
p47.CFrame = CFrame.new(158.807114, 8.77627563, 68.9024124, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p47.CanCollide = false
p47.Size = Vector3.new(0.200000003, 0.200000003, 0.559285402)
p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b47 = Instance.new("BlockMesh", p47)
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.254901916, 0.542615652, 1)
p48 = Instance.new("Part", m)
p48.BrickColor = BrickColor.new("Lily white")
p48.Material = Enum.Material.SmoothPlastic
p48.Name = "BLD"
p48.CFrame = CFrame.new(158.80629, 8.78682137, 68.9031525, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p48.CanCollide = false
p48.Size = Vector3.new(0.200000003, 0.200000003, 0.505760431)
p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b48 = Instance.new("BlockMesh", p48)
b48.Name = "Mesh"
b48.Scale = Vector3.new(0.847122908, 0.506206095, 1)
p49 = Instance.new("Part", m)
p49.BrickColor = BrickColor.new("Steel blue")
p49.Material = Enum.Material.Neon
p49.Name = "BLD"
p49.CFrame = CFrame.new(156.942291, 13.4255161, 69.0900345, 0.118310012, 0.529906094, -0.839765429, 0.00755101535, 0.845200121, 0.534399152, 0.992949963, -0.0695659742, 0.0959945396)
p49.CanCollide = false
p49.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b49 = Instance.new("BlockMesh", p49)
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.50920862, 1, 1)
p50 = Instance.new("Part", m)
p50.BrickColor = BrickColor.new("Steel blue")
p50.Material = Enum.Material.Neon
p50.Name = "BLD"
p50.CFrame = CFrame.new(157.057526, 13.5612326, 69.0752792, 0.118307047, 0.747301638, -0.653871238, 0.00755501771, 0.657799125, 0.753157496, 0.99295032, -0.094044067, 0.0721765757)
p50.CanCollide = false
p50.Size = Vector3.new(0.200000003, 0.254450023, 0.486118287)
p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b50 = Instance.new("BlockMesh", p50)
b50.Name = "Mesh"
b50.Scale = Vector3.new(0.50920862, 1, 1)
p51 = Instance.new("Part", m)
p51.BrickColor = BrickColor.new("Steel blue")
p51.Material = Enum.Material.Neon
p51.Name = "BLD"
p51.CFrame = CFrame.new(158.826889, 6.39547873, 68.9193802, 0.118325077, -0.0106279412, -0.992919743, 0.00754601927, 0.999924898, -0.00980372727, 0.992948472, -0.0063325502, 0.118396625)
p51.CanCollide = false
p51.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b51 = Instance.new("BlockMesh", p51)
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.557979703, 0.75173372, 0.633331835)
p52 = Instance.new("WedgePart", m)
p52.BrickColor = BrickColor.new("Lily white")
p52.Material = Enum.Material.SmoothPlastic
p52.Name = "BLD"
p52.CFrame = CFrame.new(158.686249, 8.71128845, 68.9170303, -0.118353955, -0.99291575, -0.0106989676, -0.00756301219, -0.00987304188, 0.999924242, -0.992944539, 0.118426189, -0.00634090649)
p52.CanCollide = false
p52.FormFactor = Enum.FormFactor.Symmetric
p52.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b52 = Instance.new("SpecialMesh", p52)
b52.MeshType = Enum.MeshType.Wedge
b52.Name = "Mesh"
b52.Scale = Vector3.new(0.627057493, 0.434583604, 0.228340343)
p53 = Instance.new("Part", m)
p53.BrickColor = BrickColor.new("Steel blue")
p53.Material = Enum.Material.Neon
p53.Name = "BLD"
p53.CFrame = CFrame.new(158.743073, 13.739521, 68.873085, 0.118293978, 0.992923558, -0.0106371325, 0.00756401243, 0.00981103629, 0.999924839, 0.992951691, -0.118365817, -0.00634988584)
p53.CanCollide = false
p53.Size = Vector3.new(0.200000003, 2.56731892, 0.486118287)
p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b53 = Instance.new("BlockMesh", p53)
b53.Name = "Mesh"
b53.Scale = Vector3.new(0.50920862, 1, 1)
w1 = Instance.new("Weld", p27)
w1.Name = "Handle1"
w1.Part0 = p27
w1.C0 = CFrame.new(0.000709533691, -0.000243186951, 0.000946044922, 1.00000072, 9.31322575e-10, 5.21540642e-08, 9.31322575e-10, 1.00000024, -5.58793545e-09, 5.21540642e-08, -5.52972779e-09, 1.00000024)
w1.Part1 = p1
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p27)
w2.Name = "Handle2"
w2.Part0 = p27
w2.C0 = CFrame.new(0.00140380859, -0.000975608826, 0.00172424316, 1.00000072, 9.31322575e-10, 5.21540642e-08, 9.31322575e-10, 1.00000024, -5.58793545e-09, 5.21540642e-08, -5.52972779e-09, 1.00000024)
w2.Part1 = p2
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p27)
w3.Name = "Blade"
w3.Part0 = p27
w3.C0 = CFrame.new(0, 5.51854897, 1.89195251, -1.00000036, 2.93627381e-05, -1.670653e-05, -1.67097896e-05, -6.95463386e-05, 1.00000036, 2.925843e-05, 1.00000036, 6.95349881e-05)
w3.Part1 = p3
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p27)
w4.Name = "Blade"
w4.Part0 = p27
w4.C0 = CFrame.new(0.00106811523, 4.57743835, 1.46974182, 1.00000048, 3.86685133e-06, -1.54301524e-05, 5.14695421e-06, 0.839943171, 0.54267472, 1.51395798e-05, -0.542674839, 0.839943349)
w4.Part1 = p4
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p27)
w5.Name = "Blade"
w5.Part0 = p27
w5.C0 = CFrame.new(0.00116729736, 4.57752132, -1.41996765, -1.00000072, 3.88547778e-06, -9.53674316e-06, -1.90036371e-06, 0.839946151, 0.542670369, 9.99867916e-06, 0.542670369, -0.83994621)
w5.Part1 = p5
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p27)
w6.Name = "Blade"
w6.Part0 = p27
w6.C0 = CFrame.new(0.00105285645, 4.71198559, 1.35224915, 1.00000048, 7.68899918e-06, -1.8671155e-05, 9.17818397e-06, 0.650401175, 0.759591222, 1.80751085e-05, -0.75959152, 0.650401294)
w6.Part1 = p6
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p27)
w7.Name = "Handle1"
w7.Part0 = p27
w7.C0 = CFrame.new(0.00352478027, 4.87578297, 0.00973510742, 1.00000036, 2.93403864e-05, 1.6707927e-05, 1.67097896e-05, -5.54521102e-06, -1.00000024, -2.925843e-05, 1.00000048, -5.53508289e-06)
w7.Part1 = p7
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p27)
w8.Name = "Blade"
w8.Part0 = p27
w8.C0 = CFrame.new(0.000114440918, 4.21279812, 1.53791809, -1.00000036, 2.93627381e-05, -1.670653e-05, -1.67097896e-05, -6.95463386e-05, 1.00000036, 2.925843e-05, 1.00000036, 6.95349881e-05)
w8.Part1 = p8
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p27)
w9.Name = "Blade"
w9.Part0 = p27
w9.C0 = CFrame.new(0.00215148926, 4.212924, -1.4881897, 1.00000036, 3.10391188e-05, -1.83014199e-05, 1.83028169e-05, 7.07939034e-06, 1.00000036, 3.11434269e-05, -1.00000048, 7.06792343e-06)
w9.Part1 = p9
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p27)
w10.Name = "Handle1"
w10.Part0 = p27
w10.C0 = CFrame.new(0.00354766846, 4.87722778, -0.707855225, 1.00000048, 6.95884228e-06, -1.70990825e-05, 7.16885552e-06, 0.707084835, 0.707129061, 1.71065331e-05, -0.70712924, 0.707084954)
w10.Part1 = p10
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p27)
w11.Name = "Blade"
w11.Part0 = p27
w11.C0 = CFrame.new(0.00106811523, 4.85843468, -0.970901489, -1.0000006, 2.50265002e-05, -1.68140978e-05, -1.27311796e-05, 0.155042872, 0.987908125, 2.72244215e-05, 0.987908304, -0.155042902)
w11.Part1 = p11
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p27)
w12.Name = "Blade"
w12.Part0 = p27
w12.C0 = CFrame.new(0.00114440918, 4.71208, -1.30250549, -1.00000048, 9.14186239e-06, -1.42306089e-05, -4.84287739e-06, 0.650422513, 0.759572983, 1.61081553e-05, 0.759573102, -0.650422573)
w12.Part1 = p12
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p27)
w13.Name = "Blade"
w13.Part0 = p27
w13.C0 = CFrame.new(0.00104522705, 4.85837078, 1.0206604, 1.00000048, 2.81631947e-05, -2.0920299e-05, 1.6302336e-05, 0.155048564, 0.987907231, 3.11657786e-05, -0.987907231, 0.155048579)
w13.Part1 = p13
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p27)
w14.Name = "Blade"
w14.Part0 = p27
w14.C0 = CFrame.new(0.00108337402, 4.80687332, -1.15335083, -1.0000006, 1.72033906e-05, -1.90958381e-05, -1.07740052e-05, 0.393840313, 0.919179142, 2.3253262e-05, 0.919179261, -0.393840432)
w14.Part1 = p14
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p27)
w15.Name = "Blade"
w15.Part0 = p27
w15.C0 = CFrame.new(0.00105285645, 4.80676365, 1.20314026, 1.00000048, 1.89840794e-05, -1.92858279e-05, 1.02454796e-05, 0.393858731, 0.919171393, 2.51531601e-05, -0.919171453, 0.393858761)
w15.Part1 = p15
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p27)
w16.Name = "Blade"
w16.Part0 = p27
w16.C0 = CFrame.new(0.00108337402, 4.87358475, 0.021270752, 1.00000036, 3.10391188e-05, -1.83014199e-05, 1.83028169e-05, 7.07939034e-06, 1.00000036, 3.11434269e-05, -1.00000048, 7.06792343e-06)
w16.Part1 = p16
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p27)
w17.Name = "Handle1"
w17.Part0 = p27
w17.C0 = CFrame.new(0.0034866333, 4.8771739, 0.727615356, 1.00000072, 6.92158937e-06, -1.70618296e-05, 7.16745853e-06, 0.707085252, 0.707129538, 1.719594e-05, -0.707129717, 0.707085311)
w17.Part1 = p17
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p27)
w18.Name = "Blade"
w18.Part0 = p27
w18.C0 = CFrame.new(0.00106811523, 6.11264467, -1.53588867, -1.00000083, 1.72555447e-05, -1.91256404e-05, -1.07744709e-05, 0.393840581, 0.919179738, 2.31638551e-05, 0.919179857, -0.3938407)
w18.Part1 = p18
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p27)
w19.Name = "Blade"
w19.Part0 = p27
w19.C0 = CFrame.new(0.00100708008, 6.1641469, -1.35345459, -1.00000083, 2.5101006e-05, -1.6823411e-05, -1.27311796e-05, 0.155042946, 0.987908781, 2.71350145e-05, 0.9879089, -0.155043021)
w19.Part1 = p19
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p27)
w20.Name = "Blade"
w20.Part0 = p27
w20.C0 = CFrame.new(0.00105285645, 5.88328886, -1.80262756, -1.00000095, 3.91155481e-06, -9.57399607e-06, -1.89943239e-06, 0.839946806, 0.542670667, 9.91672277e-06, 0.542670727, -0.839946747)
w20.Part1 = p20
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p27)
w21.Name = "Blade"
w21.Part0 = p27
w21.C0 = CFrame.new(0.00206756592, 5.51869154, -1.8707428, 1.00000072, 3.09795141e-05, -1.83000229e-05, 1.83028169e-05, 7.08643347e-06, 1.00000095, 3.12253833e-05, -1.00000107, 7.06332503e-06)
w21.Part1 = p21
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p27)
w22.Name = "Blade"
w22.Part0 = p27
w22.C0 = CFrame.new(0.00104522705, 6.01782465, -1.68502808, -1.00000072, 9.20146704e-06, -1.42678618e-05, -4.84287739e-06, 0.650422931, 0.75957346, 1.60336494e-05, 0.759573638, -0.65042299)
w22.Part1 = p22
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p27)
w23.Name = "Handle1"
w23.Part0 = p27
w23.C0 = CFrame.new(7.62939453e-05, -1.16082907, 0, 1.00000095, 2.79396772e-09, 1.1920929e-07, 9.31322575e-10, 1.00000083, -1.26310624e-08, 1.41561031e-07, -1.19907781e-08, 1.00000095)
w23.Part1 = p23
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p27)
w24.Name = "Handle1"
w24.Part0 = p27
w24.C0 = CFrame.new(0.000732421875, -1.16431618, 0.000473022461, 1.00000095, 2.79396772e-09, 1.1920929e-07, 9.31322575e-10, 1.00000083, -1.26310624e-08, 1.41561031e-07, -1.19907781e-08, 1.00000095)
w24.Part1 = p24
w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p27)
w25.Name = "Blade"
w25.Part0 = p27
w25.C0 = CFrame.new(0.000915527344, 7.33072329, 0.00132751465, 1.00000072, 6.57886267e-06, 1.20475888e-05, 3.86778265e-06, 0.707120955, -0.707093894, -1.29193068e-05, 0.707094073, 0.707121015)
w25.Part1 = p25
w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26 = Instance.new("Weld", p27)
w26.Name = "Handle1"
w26.Part0 = p27
w26.C0 = CFrame.new(0.00371551514, 1.34898758, -4.57763672e-05, 1.00000095, 2.79396772e-09, 1.1920929e-07, 9.31322575e-10, 1.00000083, -1.26310624e-08, 1.41561031e-07, -1.19907781e-08, 1.00000095)
w26.Part1 = p26
w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27 = Instance.new("Weld", p27)
w27.Name = "Handle1"
w27.Part0 = p27
w27.C0 = CFrame.new(0.000770568848, -0.891653061, -0.107833862, 0.70712918, 2.22027302e-06, 0.707089603, 0.707095206, 2.97963852e-05, -0.707128704, -2.96384096e-05, 1.00000954, 1.11237168e-05)
w27.Part1 = p28
w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28 = Instance.new("Weld", p27)
w28.Name = "Handle"
w28.Part0 = p27
w28.C0 = CFrame.new(-5.34057617e-05, 0.89002037, -0.00241088867, 1.00000095, 2.79396772e-09, 1.1920929e-07, 9.31322575e-10, 1.00000083, -1.26310624e-08, 1.41561031e-07, -1.19907781e-08, 1.00000095)
w28.Part1 = p29
w28.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29 = Instance.new("Weld", p27)
w29.Name = "Handle1"
w29.Part0 = p27
w29.C0 = CFrame.new(0.000648498535, 0.890401363, -0.103851318, 0.707129002, 2.22027302e-06, 0.707089722, 0.707095385, 2.98122177e-05, -0.707128525, -2.96533108e-05, 1.00000954, 1.1138618e-05)
w29.Part1 = p30
w29.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30 = Instance.new("Weld", p27)
w30.Name = "Handle1"
w30.Part0 = p27
w30.C0 = CFrame.new(0.000686645508, 0.89039135, 0.0979919434, 0.707122207, 6.69282372e-06, 0.707091391, 0.707091331, 4.01428624e-05, -0.707122266, -3.31173142e-05, 1, 2.36534725e-05)
w30.Part1 = p31
w30.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31 = Instance.new("Weld", p27)
w31.Name = "Blade"
w31.Part0 = p27
w31.C0 = CFrame.new(0.001121521, 4.2823329, 0.000289916992, 1.00000072, 1.86264515e-09, 7.4505806e-08, 0, 1.0000006, -1.03609636e-08, 1.04308128e-07, -8.09086487e-09, 1.00000072)
w31.Part1 = p32
w31.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w32 = Instance.new("Weld", p27)
w32.Name = "Handle1"
w32.Part0 = p27
w32.C0 = CFrame.new(0.00354003906, 4.00613403, 0.00592041016, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w32.Part1 = p33
w32.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w33 = Instance.new("Weld", p27)
w33.Name = "Handle1"
w33.Part0 = p27
w33.C0 = CFrame.new(0.00341796875, 6.18157005, 0.02003479, 1.00000107, 2.94297934e-05, 1.67060643e-05, 1.67102553e-05, -5.55609586e-06, -1.00000083, -2.91615725e-05, 1.00000119, -5.5267592e-06)
w33.Part1 = p34
w33.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w34 = Instance.new("Weld", p27)
w34.Name = "Handle1"
w34.Part0 = p27
w34.C0 = CFrame.new(0.00338745117, 6.49181366, 0.00651550293, 1.00000119, 6.89923763e-06, -1.70469284e-05, 7.16838986e-06, 0.707085252, 0.707129478, 1.72108412e-05, -0.707129776, 0.707085371)
w34.Part1 = p35
w34.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w35 = Instance.new("Weld", p27)
w35.Name = "Handle1"
w35.Part0 = p27
w35.C0 = CFrame.new(0.00350952148, 6.18293571, -0.992202759, 1.00000119, 6.89923763e-06, -1.70469284e-05, 7.16838986e-06, 0.707085252, 0.707129478, 1.72108412e-05, -0.707129776, 0.707085371)
w35.Part1 = p36
w35.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w36 = Instance.new("Weld", p27)
w36.Name = "Handle1"
w36.Part0 = p27
w36.C0 = CFrame.new(0.00344085693, 6.1828661, 1.032547, 1.00000119, 6.89923763e-06, -1.70469284e-05, 7.16838986e-06, 0.707085252, 0.707129478, 1.72108412e-05, -0.707129776, 0.707085371)
w36.Part1 = p37
w36.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w37 = Instance.new("Weld", p27)
w37.Name = "Handle1"
w37.Part0 = p27
w37.C0 = CFrame.new(-0.000610351563, -1.1618638, -4.57763672e-05, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w37.Part1 = p38
w37.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w38 = Instance.new("Weld", p27)
w38.Name = "Blade"
w38.Part0 = p27
w38.C0 = CFrame.new(0.000968933105, 6.1125412, 1.55714417, 1.00000119, 1.89244747e-05, -1.92523003e-05, 1.02459453e-05, 0.393858969, 0.919171929, 2.52500176e-05, -0.919172108, 0.393859059)
w38.Part1 = p39
w38.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w39 = Instance.new("Weld", p27)
w39.Name = "Blade"
w39.Part0 = p27
w39.C0 = CFrame.new(0.000968933105, 6.16404724, 1.37475586, 1.00000119, 2.80886889e-05, -2.09063292e-05, 1.63028017e-05, 0.155048668, 0.987907767, 3.12551856e-05, -0.987907946, 0.155048683)
w39.Part1 = p40
w39.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w40 = Instance.new("Weld", p27)
w40.Name = "Handle1"
w40.Part0 = p27
w40.C0 = CFrame.new(0.000762939453, -0.891664505, 0.094039917, 0.707122624, 6.69388146e-06, 0.707090914, 0.707090974, 4.01102079e-05, -0.707122564, -3.30949588e-05, 1, 2.3629651e-05)
w40.Part1 = p41
w40.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w41 = Instance.new("Weld", p27)
w41.Name = "Handle"
w41.Part0 = p27
w41.C0 = CFrame.new(4.57763672e-05, -0.89203167, -0.00636291504, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w41.Part1 = p42
w41.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w42 = Instance.new("Weld", p27)
w42.Name = "Handle1"
w42.Part0 = p27
w42.C0 = CFrame.new(0.00057220459, 1.1692605, 0.00149536133, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w42.Part1 = p43
w42.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w43 = Instance.new("Weld", p27)
w43.Name = "Handle1"
w43.Part0 = p27
w43.C0 = CFrame.new(-0.000106811523, 1.18864012, 0.00105285645, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w43.Part1 = p44
w43.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w44 = Instance.new("Weld", p27)
w44.Name = "Handle2"
w44.Part0 = p27
w44.C0 = CFrame.new(0.00129699707, 1.16826677, 0.00224304199, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w44.Part1 = p45
w44.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w45 = Instance.new("Weld", p27)
w45.Name = "Handle1"
w45.Part0 = p27
w45.C0 = CFrame.new(-5.34057617e-05, 1.15181541, -0.11529541, 1.00000107, 3.0964613e-05, -1.82990916e-05, 1.83028169e-05, 7.09027518e-06, 1.00000095, 3.12328339e-05, -1.00000119, 7.06140418e-06)
w45.Part1 = p46
w45.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w46 = Instance.new("Weld", p27)
w46.Name = "Handle1"
w46.Part0 = p27
w46.C0 = CFrame.new(0.000244140625, 1.21563244, -0.00445556641, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w46.Part1 = p47
w46.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w47 = Instance.new("Weld", p27)
w47.Name = "Handle1"
w47.Part0 = p27
w47.C0 = CFrame.new(0.000961303711, 1.22618103, -0.00364685059, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w47.Part1 = p48
w47.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w48 = Instance.new("Weld", p27)
w48.Name = "Blade"
w48.Part0 = p27
w48.C0 = CFrame.new(0.0009765625, 5.88314533, 1.8237915, 1.00000119, 3.82214785e-06, -1.53705478e-05, 5.14695421e-06, 0.839943647, 0.542675018, 1.52364373e-05, -0.542675316, 0.839943945)
w48.Part1 = p49
w48.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w49 = Instance.new("Weld", p27)
w49.Name = "Blade"
w49.Part0 = p27
w49.C0 = CFrame.new(0.000984191895, 6.01771927, 1.70629883, 1.00000119, 7.62939453e-06, -1.86190009e-05, 9.17818397e-06, 0.650401652, 0.759591639, 1.81794167e-05, -0.759591997, 0.650401771)
w49.Part1 = p50
w49.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w50 = Instance.new("Weld", p27)
w50.Name = "Handle2"
w50.Part0 = p27
w50.C0 = CFrame.new(0.00146484375, -1.16529894, 0.00126647949, 1.00000143, 2.32830644e-09, 1.34110451e-07, 4.65661287e-10, 1.00000083, -1.74040906e-08, 1.49011612e-07, -1.3911631e-08, 1.00000095)
w50.Part1 = p51
w50.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w51 = Instance.new("Weld", p27)
w51.Name = "Handle1"
w51.Part0 = p27
w51.C0 = CFrame.new(-3.05175781e-05, 1.15184164, 0.117919922, -1.00000107, 2.94372439e-05, -1.67046674e-05, -1.67102553e-05, -6.95563504e-05, 1.00000095, 2.91615725e-05, 1.00000119, 6.95275958e-05)
w51.Part1 = p52
w51.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w52 = Instance.new("Weld", p27)
w52.Name = "Blade"
w52.Part0 = p27
w52.C0 = CFrame.new(0.000999450684, 6.17936039, 0.00700378418, 1.00000107, 3.0964613e-05, -1.82990916e-05, 1.83028169e-05, 7.09027518e-06, 1.00000095, 3.12328339e-05, -1.00000119, 7.06140418e-06)
w52.Part1 = p53
w52.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
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
SWELD.Part1 = p27
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
local walk = {ll.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0, 0, 0.5) * CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0)), ll.C0 * CFrame.new(0, 0, 0.5) * CFrame.Angles(math.rad(-45), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)), ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), w4.C0 * CFrame.new(0, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), w3.C0 * CFrame.new(0, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20))}
local equip = {nc.C0 * CFrame.Angles(math.rad(-10), math.rad(0), 0), w3.C0 * CFrame.new(-1.1, -0.1, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(90)), w4.C0 * CFrame.new(1.1, -0.2, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(-90))}
local idle = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0), nc.C0 * CFrame.Angles(0, math.rad(25), 0), ll.C0 * CFrame.new(-0.1, 0, -0.1) * CFrame.Angles(math.rad(5), math.rad(20), math.rad(0)), rl.C0 * CFrame.new(0.2, 0, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(5)), w3.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(10)), w4.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-5))}
local PA1 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), w3.C0 * CFrame.new(0, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), w4.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(190), math.rad(-50), math.rad(-70))}
local PA1B = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), w3.C0 * CFrame.new(0, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90))}
local PA21 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), 0), w3.C0 * CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(40), math.rad(0)), w4.C0 * CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(-40), math.rad(0))}
local PA2 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), 0), ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-5)), rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(5)), nc.C0 * CFrame.Angles(math.rad(0), math.rad(-90), 0), w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-90)), w3.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(40))}
local SK2 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), 0), ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-5)), rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(5)), nc.C0 * CFrame.Angles(math.rad(0), math.rad(-90), 0), w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-90)), w3.C0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(40))}
local SK3 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0), ll.C0 * CFrame.new(-0.1, 0, -0.1) * CFrame.Angles(math.rad(5), math.rad(20), math.rad(0)), rl.C0 * CFrame.new(0.2, 0, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(5)), nc.C0 * CFrame.Angles(0, math.rad(85), 0), w4.C0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), w3.C0 * CFrame.new(-1.3, 2, 0) * CFrame.Angles(math.rad(-180), math.rad(0), math.rad(-50))}
local SK4 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), w3.C0 * CFrame.new(-1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))}
local spin = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), w3.C0 * CFrame.new(-1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), w4.C0 * CFrame.new(0, 0.3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20))}
local med = {ts.C0 * CFrame.new(0, -1.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), ll.C0 * CFrame.new(0, 1, -0.5) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(90)), rl.C0 * CFrame.new(0, 1, -0.5) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(-90)), nc.C0 * CFrame.Angles(math.rad(-20), math.rad(0), 0), w4.C0 * CFrame.new(1.1, -0.2, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(-90)), w3.C0 * CFrame.new(-1.1, -0.1, -1.2) * CFrame.Angles(math.rad(-160), 0, math.rad(90))}
local PA3 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(4), math.rad(-80), math.rad(5)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), w4.C0 * CFrame.new(0.5, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-70)), w3.C0 * CFrame.new(-2, -0.7, 0.8) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-90)), ll.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))}
local PA3B = {ts.C0 * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), nc.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), w4.C0 * CFrame.new(0.5, -0.3, -0.5) * CFrame.Angles(math.rad(90), math.rad(-40), math.rad(0)), w3.C0 * CFrame.new(-0.5, -0.3, -0.5) * CFrame.Angles(math.rad(90), math.rad(40), math.rad(0)), ll.C0 * CFrame.new(0, 1, -0.5) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), rl.C0 * CFrame.new(0, 0.3, 0.6) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0))}
local heal = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), nc.C0 * CFrame.Angles(math.rad(-10), math.rad(0), 0), w4.C0 * CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), w3.C0 * CFrame.new(-1, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), ll.C0 * CFrame.new(-0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), rl.C0 * CFrame.new(0.1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5))}
local PA4 = {ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(60), math.rad(-60), 0), nc.C0 * CFrame.Angles(math.rad(-25), math.rad(50), 0), w4.C0 * CFrame.new(0.4, 1, 0.7) * CFrame.Angles(math.rad(50), 0, math.rad(-70)), w3.C0 * CFrame.new(-1.2, -0.2, 1) * CFrame.Angles(math.rad(-40), math.rad(20), math.rad(-50)), ll.C0 * CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(-30)), rl.C0 * CFrame.new(1, 0.5, 0.5) * CFrame.Angles(0, math.rad(-20), math.rad(40))}
local jump = {nc.C0 * CFrame.Angles(math.rad(10), 0, 0), w4.C0 * CFrame.new(0, 0.1, -0.1) * CFrame.Angles(math.rad(20), 0, math.rad(-10)), w3.C0 * CFrame.new(0, 0.1, -0.1) * CFrame.Angles(math.rad(10), 0, math.rad(10)), ll.C0 * CFrame.new(-0.1, 0, 0.3) * CFrame.Angles(math.rad(-20), 0, math.rad(0)), rl.C0 * CFrame.new(0.2, 0, 0) * CFrame.Angles(0, 0, math.rad(10)), ts.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0)}
local jump2 = {nc.C0 * CFrame.Angles(math.rad(-10), 0, 0), w4.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-20)), w3.C0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(20)), ll.C0 * CFrame.new(-0.15, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(30), math.rad(-10)), rl.C0 * CFrame.new(0.15, 0, 0) * CFrame.Angles(math.rad(5), math.rad(-30), math.rad(10))}
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
f1l.Text = "[Z] Death Frost"
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
f2l.Text = "[X] Icebound"
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
f3l.Text = "[C] Phantic Guardian"
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
f4l.Text = "[V] Ice Age "
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
f6f.BackgroundColor3 = BrickColor.new("Deep blue").Color
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
local PartsToTransparency = {}
local pars = {}
local sizes = {}
local poses = {}
local part_to_fade = false
local pa2f = nil
iceeffect = function(part)
  
  local l = Instance.new("Part", char)
  l.BrickColor = BrickColor.new("Medium blue")
  l.Size = Vector3.new(1, 1, 1)
  l.Shape = "Ball"
  l.TopSurface = "Smooth"
  l.BottomSurface = "Smooth"
  l.Material = "Neon"
  l.CanCollide = false
  l.Anchored = true
  l.Transparency = 0
  l.CFrame = part.CFrame
  game.Debris:AddItem(l, 5)
  table.insert(PartsToTransparency, l)
  table.insert(pars, l)
  table.insert(poses, l.CFrame)
  table.insert(sizes, Vector3.new(40, 40, 40))
end

game:GetService("RunService").RenderStepped:connect(function()
  
  for i = 1, #PartsToTransparency do
    local part = PartsToTransparency[i]
    if part ~= nil then
      part.Transparency = part.Transparency + 0.035
      if part.Transparency > 1 then
        table.remove(PartsToTransparency, i)
      end
    end
  end
end
)
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
end
)
makeice = function(chr)
  
  local num = 0
  print("OUTPUT FROM MAKICE FOUND!")
  for i,v in pairs(chr.Torso:GetChildren()) do
    if v.ClassName == "Part" then
      num = num + 1
    end
  end
  print("I GOT " .. tostring(num) .. " ICE")
  if num == 0 then
    local ice = makepart(0.4, false, "Medium blue", Vector3.new(1.2, 1.2, 1.2), char.Torso.CFrame, "Ice", nil, 20, false)
    ice.Anchored = false
    ice.Parent = chr.Torso
    ice.Name = "ICE1"
    local weld = Instance.new("Weld", chr)
    weld.Part0 = chr["Right Arm"]
    weld.Part1 = ice
    weld.C0 = CFrame.new(-0.7, 0.8, 0) * CFrame.Angles(math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()))
    iceeffect(ice)
  else
    do
      if num == 1 then
        local ice = makepart(0.4, false, "Medium blue", Vector3.new(1.2, 1.2, 1.2), char.Torso.CFrame, "Ice", nil, 20, false)
        ice.Anchored = false
        ice.Parent = chr.Torso
        ice.Name = "ICE2"
        local weld = Instance.new("Weld", chr)
        weld.Part0 = chr["Left Arm"]
        weld.Part1 = ice
        weld.C0 = CFrame.new(0.7, 0.8, 0) * CFrame.Angles(math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()))
        iceeffect(ice)
      else
        do
          if num == 2 then
            local ice = makepart(0.4, false, "Medium blue", Vector3.new(1.2, 1.2, 1.2), char.Torso.CFrame, "Ice", nil, 20, false)
            ice.Anchored = false
            ice.Parent = chr.Torso
            ice.Name = "ICE3"
            local weld = Instance.new("Weld", chr)
            weld.Part0 = chr["Left Leg"]
            weld.Part1 = ice
            weld.C0 = CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()))
            iceeffect(ice)
          else
            do
              if num == 3 then
                local ice = makepart(0.4, false, "Medium blue", Vector3.new(1.2, 1.2, 1.2), char.Torso.CFrame, "Ice", nil, 20, false)
                ice.Anchored = false
                ice.Parent = chr.Torso
                ice.Name = "ICE4"
                local weld = Instance.new("Weld", chr)
                weld.Part0 = chr["Right Leg"]
                weld.Part1 = ice
                weld.C0 = CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()))
                iceeffect(ice)
              else
                do
                  local ice = makepart(0.4, false, "Medium blue", Vector3.new(1.2, 1.2, 1.2), char.Torso.CFrame, "Ice", nil, 20, false)
                  ice.Anchored = false
                  ice.Parent = chr.Torso
                  ice.Name = "ICE1"
                  local weld = Instance.new("Weld", chr)
                  weld.Part0 = chr["Right Arm"]
                  weld.Part1 = ice
                  weld.C0 = CFrame.new(-0.7, 0.8, 0) * CFrame.Angles(math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()), math.rad(math.random(1, 5) * tick()))
                  iceeffect(ice)
                end
              end
            end
          end
        end
      end
    end
  end
end

local wpb = true
local num = 1
mouse.Button1Down:connect(function()
  
  if current == true and opend == true and stun.Value == false and healingmode == true then
    energy = energy - 20
    S2T = 0
    HBOX1:Destroy()
    local POS = HBOX2.CFrame
    do
      HBOX2:Destroy()
      local s = Instance.new("Part", game.Workspace)
      s.Transparency = 1
      s.Size = Vector3.new(0.2, 0.2, 0.2)
      s.Anchored = false
      s.CanCollide = false
      s.Position = POS.p
      healingmode = false
      local fpos = nil
      s.Touched:connect(function()
    
    fpos = s.CFrame
    s:Destroy()
    print(fpos)
  end
)
      repeat
        wait()
      until fpos ~= nil
      local dsn = true
      print(" FPOS FOUND : " .. tostring(fpos))
      local ice1 = makepart(0, false, "Steel blue", Vector3.new(0.2, 1, 0.2), fpos, "Neon", nil, 5, true)
      meshsomething(ice1, nil, nil, nil, "CylinderMesh")
      local ice2 = makepart(0, false, "Toothpaste", Vector3.new(0.2, 1.2, 0.2), fpos, "Neon", nil, 5, true)
      meshsomething(ice2, nil, nil, nil, "CylinderMesh")
      game:GetService("RunService").RenderStepped:connect(function()
    
    if dsn == true then
      ice1.Size = ice1.Size:lerp(Vector3.new(24, 1, 24), 0.1)
      ice2.Size = ice2.Size:lerp(Vector3.new(20, 1.2, 20), 0.1)
      ice1.CFrame = fpos
      ice2.CFrame = fpos
      if ice1.Size.X == 24 or ice1.Size.X > 24 or ice1.Size.X > 23.7 then
        dsn = false
        print("Done!")
      end
    end
  end
)
      wait(1)
      local getsnearme = function(studs)
    
    local list = game.Workspace:GetChildren()
    local targs = {}
    for i = 1, #list do
      local target = list[i]
      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - ice1.Position).magnitude < studs and target ~= nil then
        table.insert(targs, target)
      end
    end
    return targs
  end

      local f = getsnearme(23)
      for i,v in pairs(f) do
        wait()
        print(v.Name)
        if v:FindFirstChild("Team").Value ~= team.Value then
          if v:FindFirstChild("Attack") then
            if v:FindFirstChild("Blocking").Value == true then
              v.BlockingLabel.Value = true
            else
              game.Workspace.CagePlayer:InvokeServer(v, team.Value)
              iceeffect(v.Torso)
              local dtd = math.floor(math.random(3, 5) * atk.Value / v:FindFirstChild("Defense").Value)
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
                local dtd = math.floor(math.random(3, 5) * atk.Value)
                v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
                dfm = 5
                df = nil
                wait()
                dfm = dtd
                df = v:FindFirstChild("Head")
                -- DECOMPILER ERROR at PC237: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC237: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                -- DECOMPILER ERROR at PC237: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC237: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC237: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
      for i = 0, 20 do
        wait()
        ice1.Transparency = ice1.Transparency + 0.05
        ice2.Transparency = ice2.Transparency + 0.05
      end
      return 
    end
  end
  do
    if current == true and idleq == false and opend == true and wpb == true and stun.Value == false and bl.Value == false and healingmode == false then
      local fs = nil
      if num == 1 then
        wpb = false
        current = false
        fr = true
        p32.Touched:connect(function(hit)
    
    if not fr then
      return 
    end
    if hit.Parent:FindFirstChild("Defense") then
      fs = math.floor(math.random(5, 7) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
    else
      fs = math.floor(math.random(5, 7) * atk.Value)
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
          if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
            hit.Parent.BlockingLabel.Value = true
          end
          stun.Value = true
        else
          if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
            hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
            DGU(hit, fs)
            fr = false
          end
        end
      else
--        if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
          hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
          DGU(hit, fs)
          fr = false
--        end
      end
    end
  end
)
        local tar = CFrame.new(0, -0.7, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(140))
        wait(0.1)
        TARG1 = PA1[5]
        TARG2 = PA1[6]
        TARG3 = PA1[4]
        TARG4 = PA1[3]
        TARG5 = PA1[2]
        TARG6 = PA1[1]
        STARG = tar
        wait(0.05)
        TARG1 = PA1[5]
        TARG2 = PA1[6]
        TARG3 = PA1[4]
        TARG4 = PA1[3]
        TARG5 = PA1[2]
        TARG6 = PA1[1]
        STARG = tar
        wait(0.05)
        TARG1 = PA1[5]
        TARG2 = PA1[6]
        TARG3 = PA1[4]
        TARG4 = PA1[3]
        TARG5 = PA1[2]
        TARG6 = PA1[1]
        STARG = tar
        TARG1 = PA1[5]
        TARG2 = PA1[6]
        TARG3 = PA1[4]
        TARG4 = PA1[3]
        TARG5 = PA1[2]
        TARG6 = PA1[1]
        STARG = tar
        s4:Play()
        local tar2 = CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180))
        wait(0.05)
        TARG1 = PA1B[5]
        TARG2 = PA1B[6]
        TARG3 = PA1B[4]
        TARG4 = PA1B[3]
        TARG5 = PA1B[2]
        TARG6 = PA1B[1]
        STARG = tar2
        wait(0.05)
        TARG1 = PA1B[5]
        TARG2 = PA1B[6]
        TARG3 = PA1B[4]
        TARG4 = PA1B[3]
        TARG5 = PA1B[2]
        TARG6 = PA1B[1]
        STARG = tar2
        wait(0.05)
        TARG1 = PA1B[5]
        TARG2 = PA1B[6]
        TARG3 = PA1B[4]
        TARG4 = PA1B[3]
        TARG5 = PA1B[2]
        TARG6 = PA1B[1]
        STARG = tar2
        wait(0.05)
        TARG1 = PA1B[5]
        TARG2 = PA1B[6]
        TARG3 = PA1B[4]
        TARG4 = PA1B[3]
        TARG5 = PA1B[2]
        TARG6 = PA1B[1]
        STARG = tar2
        wait(0.1)
        current = true
        fr = false
        wait(0.1)
        wpb = true
        num = num + 1
        return 
      end
      do
        if num == 2 then
          wpb = false
          current = false
          fr = true
          p32.Touched:connect(function(hit)
    
    if not fr then
      return 
    end
    if hit.Parent:FindFirstChild("Defense") then
      fs = math.floor(math.random(7, 8) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
    else
      fs = math.floor(math.random(7, 8) * atk.Value)
    end
    if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
      fr = false
      if hit.Parent:FindFirstChild("Blocking") then
        if hit.Parent:FindFirstChild("Blocking").Value == true then
          if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
            hit.Parent.PauseBlock.Value = true
            wait()
            hit.Parent.BlockingLeft.Value = 5
            wait()
            hit.Parent.PauseBlock.Value = true
          end
          if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
            hit.Parent.BlockingLabel.Value = true
          end
          stun.Value = true
        else
          if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
            hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
            DGU(hit, fs)
            fr = false
          end
        end
      else
--        if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
          hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
          DGU(hit, fs)
          fr = false
        --end
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
          STARG = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), 0, 0)
          wait(0.1)
          TARG1 = PA2[6]
          TARG2 = PA2[5]
          TARG3 = PA2[4]
          TARG4 = PA2[3]
          TARG5 = PA2[2]
          TARG6 = PA2[1]
          STARG = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), 0, 0)
          wait(0.1)
          TARG1 = PA2[6]
          TARG2 = PA2[5]
          TARG3 = PA2[4]
          TARG4 = PA2[3]
          TARG5 = PA2[2]
          TARG6 = PA2[1]
          STARG = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), 0, 0)
          wait(0.1)
          TARG1 = PA2[6]
          TARG2 = PA2[5]
          TARG3 = PA2[4]
          TARG4 = PA2[3]
          TARG5 = PA2[2]
          TARG6 = PA2[1]
          STARG = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), 0, 0)
          wait(0.2)
          current = true
          fr = false
          wait(0.1)
          wpb = true
          num = num + 1
          return 
        end
        do
          if num == 3 then
            wpb = false
            current = false
            fr = true
            char["Left Arm"].Touched:connect(function(hit)
    
    if not fr then
      return 
    end
    if hit.Parent:FindFirstChild("Defense") then
      fs = math.floor(math.random(8, 10) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
    else
      fs = math.floor(math.random(8, 10) * atk.Value)
    end
    if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
      fr = false
      if hit.Parent:FindFirstChild("Blocking") then
        if hit.Parent:FindFirstChild("Blocking").Value == true then
          if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
            hit.Parent.PauseBlock.Value = true
            wait()
            hit.Parent.BlockingLeft.Value = 5
            wait()
            hit.Parent.PauseBlock.Value = true
          end
          --if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
            hit.Parent.BlockingLabel.Value = true
          --end
          stun.Value = true
        else
          --if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
            hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
            DGU(hit, fs)
            fr = false
          --end
        end
      else
--        if hit.Parent:FindFirstChild("Team").Value ~= team.Value then
          hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
          DGU(hit, fs)
          fr = false
        --end
      end
    end
  end
)
            s1.Pitch = 0.8
            s1:Play()
            wait(0.1)
            char.Torso.Velocity = char.HumanoidRootPart.CFrame.lookVector * 40
            local tar = CFrame.new(-0.4, -1, 0) * CFrame.Angles(math.rad(60), math.rad(50), math.rad(160))
            STARG = tar
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
            STARG = tar
            wait(0.1)
            TARG1 = PA3[4]
            TARG2 = PA3[3]
            TARG3 = PA3[2]
            TARG4 = PA3[6]
            TARG5 = PA3[5]
            STARG = tar
            TARG6 = PA3[1]
            wait(0.1)
            TARG1 = PA3[4]
            TARG2 = PA3[3]
            TARG3 = PA3[2]
            TARG4 = PA3[6]
            TARG5 = PA3[5]
            TARG6 = PA3[1]
            STARG = tar
            wait(0.2)
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

local pos = 0
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
local num = 0
game:GetService("RunService").RenderStepped:connect(function()
  
  if spinning == true then
    char.Torso.CFrame = CFrame.new(char.Torso.Position) * CFrame.fromEulerAnglesXYZ(0, num, 0)
    num = num + 0.5
  end
end
)
mouse.KeyDown:connect(function(key)
  
  key = key:lower()
  if key == "z" and current == true and opend == true and stun.Value == false and energy > 19 and S1 == true and healingmode == false then
    energy = energy - 20
    S1T = 0
    current = false
    wait(0.1)
    local cf = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(-90))
    do
      TARG1 = spin[5]
      TARG2 = spin[6]
      TARG3 = spin[4]
      TARG4 = spin[3]
      TARG5 = spin[2]
      TARG6 = spin[1]
      STARG = cf
      wait(0.05)
      TARG1 = spin[5]
      TARG2 = spin[6]
      TARG3 = spin[4]
      TARG4 = spin[3]
      TARG5 = spin[2]
      TARG6 = spin[1]
      STARG = cf
      local ice = makepart(0, false, "Medium blue", Vector3.new(0.2, 0.2, 0.2), char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(math.rad(90), 0, 0), "Plastic", nil, 5, true)
      meshsomething(ice, nil, nil, nil, "CylinderMesh")
      local skull = makepart(0, false, "Medium blue", Vector3.new(0.2, 0.2, 0.2), char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, 0, 0), "Plastic", nil, 5, true)
      local sk = meshsomething(skull, "http://www.roblox.com/asset/?id=4770583", nil, (Vector3.new(1, 1, 1)), nil)
      obj = ice
      objs = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(math.rad(90), 0, 0)
      TARG7 = Vector3.new(9, 0.5, 9)
      TARG8 = Vector3.new(20, 20, 20)
      objs2 = char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -8)
      skull.Anchored = true
      ice.Anchored = true
      ice.CanCollide = false
      skull.CanCollide = false
      wait(0.05)
      obj2 = sk
      wait(0.2)
      current = true
      local getsnearme = function(studs)
    
    local list = (game.Workspace:GetChildren())
    local targ = nil
    for i = 1, #list do
      local target = list[i]
      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - skull.Position).magnitude < studs and target ~= nil then
        targ = target
        studs = (target.Torso.Position - skull.Position).magnitude
      end
    end
    return targ
  end

      local v = getsnearme(5)
      wait(0.1)
      if v ~= nil --[[and v:FindFirstChild("Team").Value ~= team.Value--]] then
	if v:FindFirstChild("Stats")==nil then
		stats:Clone().Parent=v
	end
        if v.Stats:FindFirstChild("Attack") then
          if v.Stats:FindFirstChild("Blocking").Value == true then
            v.Stats.BlockingLabel.Value = true
          else
            makeice(v)
            local dtd = math.floor(math.random(7, 11) * atk.Value / v.Stats:FindFirstChild("Defense").Value)
            v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
            dfm = 5
            df = nil
            wait()
            dfm = dtd
            df = v:FindFirstChild("Head")
          end
        else
              local dtd = math.floor(math.random(7, 11) * atk.Value / v.Stats:FindFirstChild("Defense").Value)
              v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
              dfm = 5
              df = nil
              wait()
              dfm = dtd
              df = v:FindFirstChild("Head")
            end
      end
for i = 1, 20 do
                wait(0.05)
                ice.Transparency = ice.Transparency + 0.05
                skull.Transparency = skull.Transparency + 0.1
              end
    end
  end
end
)
local r2d = false
local rb = nil
local r = false
game:GetService("RunService").RenderStepped:connect(function()
  
  if healingmode == true and HBOX1 ~= nil and HBOX2 ~= nil then
    HBOX1.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X, char.HumanoidRootPart.CFrame.Y, char.HumanoidRootPart.CFrame.Z) * CFrame.new(0, -3, 0)
    local pos = char.Torso.Position
    local posx = math.abs(mouse.Target.Position.X - pos.X)
    local posz = math.abs(mouse.Target.Position.Z - pos.Z)
    local radius = math.sqrt(posx ^ 2 + posz ^ 2)
    if radius < 60 then
      HBOX2.CFrame = CFrame.new(mouse.Hit.X, mouse.Hit.Y + 1, mouse.Hit.Z)
    end
  end
end
)
mouse.KeyDown:connect(function(key)
  
  key = key:lower()
  -- DECOMPILER ERROR at PC25: Unhandled construct in 'MakeBoolean' P1

  -- DECOMPILER ERROR at PC25: Unhandled construct in 'MakeBoolean' P1

  if key == "x" and healingmode == false and current == true and opend == true and stun.Value == false and energy > 19 and S2 == true then
    healingmode = true
    local p1 = makepart(0.5, false, "Cyan", Vector3.new(70, 0.2, 70), char.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0), "Neon", nil, nil, true)
    meshsomething(p1, nil, nil, nil, "CylinderMesh")
    p1.Parent = game.Workspace.CurrentCamera
    HBOX1 = p1
    local p2 = makepart(0.2, false, "Really red", Vector3.new(20, 0.2, 20), char.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0), "Neon", nil, nil, true)
    meshsomething(p2, nil, nil, nil, "CylinderMesh")
    p2.Parent = game.Workspace.CurrentCamera
    HBOX2 = p2
    mouse.TargetFilter = HBOX2
    healingmode = false
    HBOX1:Destroy()
    HBOX2:Destroy()
  end
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
local go1, go2, gos1, gos2, p2cf = nil, nil, nil, nil, nil
local acto = false
game:GetService("RunService").RenderStepped:connect(function()
  
  if acto == true and go1 ~= nil and go2 ~= nil and p2cf ~= nil then
    go1.Size = go1.Size:lerp(gos1, 0.05)
    go2.Size = go2.Size:lerp(gos2, 0.05)
    go1.CFrame = go1.CFrame:lerp(char.HumanoidRootPart.CFrame * CFrame.new(-4, 2.5, 0) * CFrame.new(0.5, 1 + math.sin(tick()), 0), 0.1)
    go2.CFrame = go1.CFrame:lerp(char.HumanoidRootPart.CFrame * CFrame.new(-4, 2.5, 0) * CFrame.new(0.5, 1 + math.sin(tick()), 0), 0.1)
  end
end
)
local getsnearme = function(studs, object)
  
  local list = (game.Workspace:GetChildren())
  local targ = nil
  for i = 1, #list do
    local target = list[i]
    if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - object.Position).magnitude < studs and target ~= nil then
      targ = target
      studs = (target.Torso.Position - object.Position).magnitude
    end
  end
  return targ
end

local ry, ryc, rys = nil, nil, nil
game:GetService("RunService").RenderStepped:connect(function()
  
  if ry ~= nil and ryc ~= nil and rys ~= nil then
    ry.Size = ry.Size:lerp(rys, 0.05)
    ry.CFrame = ryc
  end
end
)
mouse.KeyDown:connect(function(key)
  
  key = key:lower()
  if key == "c" and current == true and opend == true and stun.Value == false and energy > 34 and S3 == true and healingmode == false then
    energy = energy - 26
    S3T = 0
    local dmg = true
    do
      current = false
      wait(0.1)
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
      local out_orb = makepart(1, false, "Steel blue", Vector3.new(6, 6, 6), char.Torso.CFrame * CFrame.new(-4, 2.5, 0), "Neon", "Block", 20)
      local msh1 = meshsomething(out_orb, nil, nil, (Vector3.new(1, 1, 1)), nil)
      msh1.MeshType = "Sphere"
      local orb = makepart(1, false, "Toothpaste", Vector3.new(5, 5, 5), char.Torso.CFrame * CFrame.new(-4, 2.5, 0), "Neon", "Block", 20)
      local msh2 = meshsomething(orb, nil, nil, (Vector3.new(1, 1, 1)), nil)
      msh2.MeshType = "Sphere"
      wait(0.1)
      current = true
      p2cf = char.Torso.CFrame * CFrame.new(-4, 2.5, 0)
      go1 = out_orb
      go2 = orb
      gos1 = Vector3.new(3, 3, 3)
      gos2 = Vector3.new(2, 2, 2)
      acto = true
      for i = 0, 10 do
        wait(0.01)
        out_orb.Transparency = out_orb.Transparency - 0.07
        orb.Transparency = orb.Transparency - 0.1
      end
      wait(1)
      local getsnearme = function(studs)
    
    local list = (game.Workspace:GetChildren())
    local targ = nil
    for i = 1, #list do
      local target = list[i]
      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - out_orb.Position).magnitude < studs and target ~= nil then
        targ = target
        studs = (target.Torso.Position - out_orb.Position).magnitude
      end
    end
    return targ
  end

      local v = getsnearme(40)
      if v and v:FindFirstChild("Torso") and v:FindFirstChild("Attack") then
        local ray = Ray.new(out_orb.CFrame.p, v.Torso.CFrame.p - out_orb.CFrame.p.unit * 150)
        local part, position = workspace:FindPartOnRay(ray, player.Character, false, true)
        local r = Instance.new("Part", char)
        r.Material = "Neon"
        r.BrickColor = BrickColor.New("Deep blue")
        r.TopSurface = "Smooth"
        r.Anchored = true
        r.Transparency = 0.5
        r.BottomSurface = "Smooth"
        r.FormFactor = "Custom"
        r.Shape = "Cylinder"
        r.CanCollide = false
        local distance = (out_orb.CFrame.p - position).magnitude
        r.Size = Vector3.new(distance, 0.1, 0.1)
        print(r.Size)
        r.CFrame = CFrame.new(out_orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2) * CFrame.Angles(0, math.rad(90), 0)
        ryc = r.CFrame
        ry = r
        rys = Vector3.new(distance, 7, 7)
        game.Debris:AddItem(r, 1)
        do
          if v:FindFirstChild("Team").Value ~= team.Value then
            local damage = math.floor(math.random(7, 9) * atk.Value * v.Defense.Value)
            v.Humanoid.Health = v.Humanoid.Health - damage
            df = nil
            dfm = 5
            wait()
            df = v.Head
            dfm = damage
          end
          for i = 0, 20 do
            r.Transparency = r.Transparency + 0.05
            wait()
          end
          do
            wait(1)
            local v = getsnearme(40)
            if v and v:FindFirstChild("Torso") and v:FindFirstChild("Attack") then
              local ray = Ray.new(out_orb.CFrame.p, v.Torso.CFrame.p - out_orb.CFrame.p.unit * 150)
              local part, position = workspace:FindPartOnRay(ray, player.Character, false, true)
              local r = Instance.new("Part", char)
              r.Material = "Neon"
              r.BrickColor = BrickColor.New("Deep blue")
              r.TopSurface = "Smooth"
              r.Anchored = true
              r.Transparency = 0.5
              r.BottomSurface = "Smooth"
              r.FormFactor = "Custom"
              r.Shape = "Cylinder"
              r.CanCollide = false
              local distance = (out_orb.CFrame.p - position).magnitude
              r.Size = Vector3.new(distance, 0.1, 0.1)
              print(r.Size)
              r.CFrame = CFrame.new(out_orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2) * CFrame.Angles(0, math.rad(90), 0)
              ryc = r.CFrame
              ry = r
              rys = Vector3.new(distance, 7, 7)
              game.Debris:AddItem(r, 1)
              do
                if v:FindFirstChild("Team").Value ~= team.Value then
                  local damage = math.floor(math.random(7, 9) * atk.Value * v.Defense.Value)
                  v.Humanoid.Health = v.Humanoid.Health - damage
                  makeice(v)
                  df = nil
                  dfm = 5
                  wait()
                  df = v.Head
                  dfm = damage
                end
                for i = 0, 20 do
                  r.Transparency = r.Transparency + 0.05
                  wait()
                end
                do
                  wait(1)
                  local v = getsnearme(40)
                  if v and v:FindFirstChild("Torso") and v:FindFirstChild("Attack") then
                    local ray = Ray.new(out_orb.CFrame.p, v.Torso.CFrame.p - out_orb.CFrame.p.unit * 150)
                    local part, position = workspace:FindPartOnRay(ray, player.Character, false, true)
                    local r = Instance.new("Part", char)
                    r.Material = "Neon"
                    r.BrickColor = BrickColor.New("Deep blue")
                    r.TopSurface = "Smooth"
                    r.Anchored = true
                    r.Transparency = 0.5
                    r.BottomSurface = "Smooth"
                    r.FormFactor = "Custom"
                    r.Shape = "Cylinder"
                    r.CanCollide = false
                    local distance = (out_orb.CFrame.p - position).magnitude
                    r.Size = Vector3.new(distance, 0.1, 0.1)
                    print(r.Size)
                    r.CFrame = CFrame.new(out_orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2) * CFrame.Angles(0, math.rad(90), 0)
                    ryc = r.CFrame
                    ry = r
                    rys = Vector3.new(distance, 7, 7)
                    game.Debris:AddItem(r, 1)
                    do
                      if v:FindFirstChild("Team").Value ~= team.Value then
                        local damage = math.floor(math.random(7, 9) * atk.Value * v.Defense.Value)
                        v.Humanoid.Health = v.Humanoid.Health - damage
                        makeice(v)
                        df = nil
                        dfm = 5
                        wait()
                        df = v.Head
                        dfm = damage
                      end
                      for i = 0, 20 do
                        r.Transparency = r.Transparency + 0.05
                        wait()
                      end
                      do
                        wait(1)
                        gos1 = Vector3.new(10, 10, 10)
                        gos2 = Vector3.new(9, 9, 9)
                        for i = 0, 20 do
                          wait(0.01)
                          out_orb.Transparency = out_orb.Transparency + 0.05
                          orb.Transparency = orb.Transparency + 0.8
                        end
                        ryc = nil
                        ry = nil
                        rys = nil
                        acto = false
                        go1 = nil
                        go2 = nil
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
end
)
game:GetService("RunService").RenderStepped:connect(function()
  
  if makeorb == true then
    makeorb = false
    local l = Instance.new("Part", game.Workspace)
    l.BrickColor = BrickColor.new("Steel blue")
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
  if key == "v" and current == true and opend == true and stun.Value == false and energy > 49 and S4 == true and healingmode == false then
    current = false
    skl = true
    wait(0.05)
    S4T = 0
    char.Humanoid.WalkSpeed = 0
    energy = energy - 59
    SWELD.Part0 = char.HumanoidRootPart
    makeorb = true
    local sw = CFrame.new(0, -2, 2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
    STARG = sw
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
    STARG = sw
    wait(0.05)
    TARG1 = SK4[6]
    TARG2 = SK4[5]
    TARG3 = SK4[4]
    TARG4 = SK4[3]
    TARG5 = SK4[2]
    TARG6 = SK4[1]
    STARG = sw
    wait(0.05)
    TARG1 = SK4[6]
    TARG2 = SK4[5]
    TARG3 = SK4[4]
    TARG4 = SK4[3]
    TARG5 = SK4[2]
    TARG6 = SK4[1]
    STARG = sw
    wait(0.2)
    local getsnearme = function(studs)
    
    local list = game.Workspace:GetChildren()
    local targs = {}
    for i = 1, #list do
      local target = list[i]
      if target.ClassName == "Model" and target.Name ~= player.Name and target:FindFirstChild("Humanoid") and target:FindFirstChild("Torso") and (target.Torso.Position - char.Torso.Position).magnitude < studs and target ~= nil then
        table.insert(targs, target)
      end
    end
    return targs
  end

    local f = getsnearme(20)
    for i,v in pairs(f) do
      if v:FindFirstChild("Attack") then
        if v:FindFirstChild("Blocking").Value == true then
          v.BlockingLabel.Value = true
        else
          if v:FindFirstChild("Team").Value ~= team.Value then
            v.Stunned.Value = true
            print("CALLING MAKE ICE FUNCTION")
            makeice(v)
            game:GetService("RunService").RenderStepped:wait()
            makeice(v)
            game:GetService("RunService").RenderStepped:wait()
            makeice(v)
            game:GetService("RunService").RenderStepped:wait()
            makeice(v)
            game:GetService("RunService").RenderStepped:wait()
          end
          print("Called")
          if v:FindFirstChild("Team").Value ~= team.Value then
            local dtd = math.floor(math.random(12, 14) * atk.Value / v:FindFirstChild("Defense").Value)
            v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
            dfm = 5
            df = nil
            wait()
            dfm = dtd
            df = v:FindFirstChild("Head")
          end
        end
      else
        do
          do
            if v:FindFirstChild("Team").Value ~= team.Value then
              local dtd = math.floor(math.random(12, 14) * atk.Value)
              v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - dtd
              dfm = 5
              df = nil
              wait()
              dfm = dtd
              df = v:FindFirstChild("Head")
            end
            -- DECOMPILER ERROR at PC317: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC317: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC317: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    wait(0.2)
    SWELD.Part0 = char["Right Arm"]
    current = true
    skl = false
  end
end
)
local Speed = 0.2
local lspeed = 0.08
local ice = 0
game:GetService("RunService").RenderStepped:connect(function()
  
  if (Vector3.new(char.Torso.Velocity.X, 0, char.Torso.Velocity.Z)).magnitude > 2 then
    IdleAndWalk = true
  else
    IdleAndWalk = false
  end
  if active == true then
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
      w3.C0 = w3.C0:lerp(TARG1, 0.35)
    end
    if TARG2 ~= nil then
      w4.C0 = w4.C0:lerp(TARG2, 0.35)
    end
    if TARG6 ~= nil then
      ts.C0 = ts.C0:lerp(TARG6, Speed)
    end
    if STARG ~= nil then
      SWELD.C0 = SWELD.C0:lerp(STARG, Speed)
    end
  end
  if TARG7 ~= nil and obj ~= nil then
    obj.Size = obj.Size:lerp(TARG7, 0.05)
    obj.CFrame = objs
  end
  if TARG8 ~= nil and obj2 ~= nil then
    obj2.Scale = obj2.Scale:lerp(TARG8, 0.05)
    if obj2.Parent then
      obj2.Parent.CFrame = obj2.Parent.CFrame:lerp(objs2, 0.05)
    end
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
    def.Value = 1
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
local pja = false
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
    wait(1)
    if opend == true then
      stun.Value = false
    end
  end
  if stun.Value == false then
    makeui(Color3.new(255, 255, 0), "-Stunned")
  end
end
)
while true do
      wait()
      fa.Text = "Attack : " .. atk.Value
      local iced = 0
      for i,v in pairs(char.Torso:GetChildren()) do
        if v.ClassName == "Part" then
          iced = iced + 1
        end
      end
      if 4 < iced then
        iced = 4
      end
      local iscp = iced * 0.1
      local spdt = spd.Value - iscp
      fa2.Text = "Speed : " .. spdt
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
              local iced = 0
              for i,v in pairs(char.Torso:GetChildren()) do
                if v.ClassName == "Part" then
                  iced = iced + 1
                end
              end
              if 4 < iced then
                iced = 4
              end
              local iscp = iced * 0.1
              local fspeed = spd.Value - iscp
              char.Humanoid.WalkSpeed = 16 * fspeed
            end
              if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false and pja == false then
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
                if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
                  TARG1 = walk[8]
                  TARG2 = walk[7]
                  TARG3 = walk[6]
                  TARG4 = walk[4]
                  TARG5 = walk[3]
                  TARG6 = walk[5]
                  STARG = CFrame.new(0.2, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
                  if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
                    wait(0.05)
                  end
                  if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
                    wait(0.05)
                  end
                  if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
                    wait(0.05)
                  end
                  if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
                    wait(0.05)
                  end
                  if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
                    TARG1 = walk[8]
                    TARG2 = walk[7]
                    TARG3 = walk[6]
                    TARG4 = walk[2]
                    TARG5 = walk[1]
                    TARG6 = walk[5]
                  end
                  if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
                    wait(0.05)
                  end
                  if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
                    wait(0.05)
                  end
                  if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
                    wait(0.05)
                  end
                  if IdleAndWalk ~= true or char.Humanoid.Jump ~= false or stun.Value ~= false or bl.Value == false then
                    wait(0.05)
                  end
                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC15155: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
        end
      end
  if IdleAndWalk ~= false or char.Humanoid.Jump ~= false or stun.Value ~= false or bl.Value == false then
    TARG1 = idle[5] * CFrame.Angles(0, 0, 0.04 * math.sin(tick()))
    TARG2 = idle[6] * CFrame.Angles(0, 0, -0.04 * math.sin(tick()))
    TARG3 = idle[2] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)
    TARG4 = idle[4] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)
    TARG5 = idle[3] * CFrame.Angles(0.07 * math.sin(tick()), 0, 0)
    TARG6 = idle[1]
    STARG = CFrame.new(0.2, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40))
  end
end
