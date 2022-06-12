function TakeDamage(hum, dmg)
  hum:TakeDamage(dmg)
end
plr = game.Players.LocalPlayer
repeat
  wait(0.4)
until plr.Character
chr = plr.Character
human = chr:FindFirstChild("Humanoid")
human.MaxHealth, human.Health = math.huge, math.huge
mouse = plr:GetMouse()
cam = workspace.CurrentCamera
selected = false
equipd = false
tors = chr.Torso
rarm = chr["Right Arm"]
larm = chr["Left Arm"]
rleg = chr["Right Leg"]
lleg = chr["Left Leg"]
hrp = chr.HumanoidRootPart
hed = chr.Head
anim = human.Animator
activu = false
appeared = false
animpose = nil
POSU = false
local wherto = hrp
local addcfr = CFrame.new(0, 0, 0)
Heartbeat = Instance.new("BindableEvent")
Heartbeat.Name = "Heartbeat"
Heartbeat.Parent = script
frame = 0.03333333333333333
tf = 0
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if tf >= frame then
    for i = 1, math.floor(tf / frame) do
      Heartbeat:Fire()
    end
    tf = tf - frame * math.floor(tf / frame)
  end
end)
function swait(num)
  if num == 0 or num == nil then
    Heartbeat.Event:wait()
  else
    for i = 1, num do
      Heartbeat.Event:wait()
    end
  end
end
tool = Instance.new("Tool")
tool.CanBeDropped = false
tool.RequiresHandle = false
tool.TextureId = "rbxassetid://291302154"
tool.ToolTip = "NANI"
tool.Name = "AAAAAAAAAAAAAA"
tool.Parent = plr.Backpack
modz = Instance.new("Model")
modz.Name = "efx"
modz.Parent = chr
ZANOOB = Instance.new("Model")
ZANOOB.Name = "THE NOOB"
ZANOOB.Parent = chr
RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RS = tors:FindFirstChild("Right Shoulder")
LS = tors:FindFirstChild("Left Shoulder")
RH = tors:FindFirstChild("Right Hip")
LH = tors:FindFirstChild("Left Hip")
RJ = hrp:FindFirstChild("RootJoint")
N = tors:FindFirstChild("Neck")
cf = CFrame.new
ang = CFrame.Angles
rd = math.rad
rd2 = math.random
function nooutline(p)
  p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface, p.FrontSurface, p.BottomSurface = 10, 10, 10, 10, 10, 10
end
function makepart(color, name, reflec, mater, parnt, cfram)
  local port = Instance.new("Part")
  port.BrickColor = BrickColor.new(color)
  port.Name = name
  port.Transparency = 1
  nooutline(port)
  port.Reflectance = reflec
  port.Material = mater
  port.Anchored = false
  port.CanCollide = false
  port.Locked = true
  port.Size = Vector3.new(0.2, 0.2, 0.2)
  port.Parent = parnt
  return port
end
function makemesh(meshtype, scale, meshid, parent)
  local mes = Instance.new("SpecialMesh")
  mes.MeshType = meshtype
  mes.Scale = scale
  if meshtype == "FileMesh" then
    mes.MeshId = meshid
  end
  mes.Parent = parent
  return mes
end
function makemotor(parent, p0, p1, c0, c1)
  swait()
  local wel = Instance.new("Motor6D")
  wel.Part0 = p0
  wel.Part1 = p1
  wel.C0 = c0
  if c1 ~= nil then
    wel.C1 = c1
  end
  wel.Parent = parent
  return wel
end
local konodioda = Instance.new("Sound")
konodioda.SoundId = "rbxassetid://276263776"
konodioda.Volume = 3.5
konodioda.Parent = hrp
local bast = Instance.new("Sound")
bast.SoundId = "rbxassetid://616576465"
bast.Volume = 0.5
bast.Parent = hrp
local zaworld = Instance.new("Sound")
zaworld.SoundId = "rbxassetid://616576400"
zaworld.Volume = 0.8
zaworld.Parent = hrp
local wry = Instance.new("Sound")
wry.SoundId = "rbxassetid://721590903"
wry.Volume = 2.75
wry.Parent = hrp
function animo(yep)
  if yep == true then
    anim.Parent = human
    chr.Animate.Disabled = false
  elseif yep == false then
    chr.Animate.Disabled = true
    anim.Parent = nil
  end
end
animo(false)
function lerpz(joint, prop, cfrmz, alp)
  joint[prop] = joint[prop]:lerp(cfrmz, alp)
end
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
function resetlerp(whoever)
  if whoever == nil then
    RJ.C0 = RJC0
    RJ.C1 = RJC1
    N.C0 = NC0
    N.C1 = NC1
    RS.C0 = RSC0
    RS.C1 = RSC1
    LS.C0 = LSC0
    LS.C1 = LSC1
    RH.C0 = RHC0
    RH.C1 = RHC1
    LH.C0 = LHC0
    LH.C1 = LHC1
  elseif whoever ~= nil then
    nRJ.C0 = RJC0
    nRJ.C1 = RJC1
    nN.C0 = NC0
    nN.C1 = NC1
    nRS.C0 = RSC0
    nRS.C1 = RSC1
    nLS.C0 = LSC0
    nLS.C1 = LSC1
    nRH.C0 = RHC0
    nRH.C1 = RHC1
    nLH.C0 = LHC0
    nLH.C1 = LHC1
  end
end
function STANDO(cfr)
  local rooto = Instance.new("Part")
  nooutline(rooto)
  rooto.Name = "HumanoidRootPart"
  rooto.Anchored = true
  rooto.CFrame = cfr
  rooto.Size = Vector3.new(2, 2, 1)
  rooto.CanCollide = false
  rooto.Locked = true
  rooto.Transparency = 1
  rooto.Parent = ZANOOB
  local head = Instance.new("Part")
  nooutline(head)
  head.Anchored = false
  head.CFrame = rooto.CFrame * CFrame.new(0, 1.5, 0)
  head.Size = Vector3.new(2, 1, 1)
  head.BrickColor = BrickColor.new("Bright yellow")
  head.CanCollide = false
  head.Name = "Head"
  head.Locked = true
  head.Transparency = 1
  head.Parent = ZANOOB
  local headmesh = makemesh("Head", Vector3.new(1.25, 1.25, 1.25), nil, head)
  local headdecal = Instance.new("Decal")
  headdecal.Name = "face"
  headdecal.Texture = "rbxasset://textures/face.png"
  headdecal.Face = "Front"
  headdecal.Transparency = 1
  headdecal.Parent = head
  local torso = Instance.new("Part")
  nooutline(torso)
  torso.Name = "Torso"
  torso.Anchored = false
  torso.CFrame = rooto.CFrame * CFrame.new(0, 0, 0)
  torso.Size = Vector3.new(2, 1, 1)
  torso.BrickColor = BrickColor.new("Bright blue")
  torso.CanCollide = false
  torso.Transparency = 1
  torso.Locked = true
  torso.Parent = ZANOOB
  local torsomesh = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/torso.mesh", torso)
  local leftarm = Instance.new("Part")
  nooutline(leftarm)
  leftarm.Anchored = false
  leftarm.Name = "Left Arm"
  leftarm.CFrame = rooto.CFrame * CFrame.new(1.5, 0, 0)
  leftarm.Size = Vector3.new(1, 2, 1)
  leftarm.BrickColor = BrickColor.new("Bright yellow")
  leftarm.CanCollide = false
  leftarm.Transparency = 1
  leftarm.Locked = true
  leftarm.Parent = ZANOOB
  local leftarmmesh = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/leftarm.mesh", leftarm)
  local rightarm = Instance.new("Part")
  nooutline(rightarm)
  rightarm.Anchored = false
  rightarm.CFrame = rooto.CFrame * CFrame.new(-1.5, 0, 0)
  rightarm.Name = "Right Arm"
  rightarm.Size = Vector3.new(1, 2, 1)
  rightarm.BrickColor = BrickColor.new("Bright yellow")
  rightarm.CanCollide = false
  rightarm.Locked = true
  rightarm.Transparency = 1
  rightarm.Parent = ZANOOB
  local rightarmmesh = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/rightarm.mesh", rightarm)
  local leftleg = Instance.new("Part")
  nooutline(leftleg)
  leftleg.Anchored = false
  leftleg.CFrame = rooto.CFrame * CFrame.new(1.5, -1.5, 0)
  leftleg.Name = "Left Leg"
  leftleg.Size = Vector3.new(1, 2, 1)
  leftleg.BrickColor = BrickColor.new("Br. yellowish green")
  leftleg.CanCollide = false
  leftleg.Transparency = 1
  leftleg.Locked = true
  leftleg.Parent = ZANOOB
  local leftlegmesh = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/leftleg.mesh", leftleg)
  local rightleg = Instance.new("Part")
  nooutline(rightleg)
  rightleg.Anchored = false
  rightleg.CFrame = rooto.CFrame * CFrame.new(-1.5, -1.5, 0)
  rightleg.Name = "Right Leg"
  rightleg.Size = Vector3.new(1, 2, 1)
  rightleg.BrickColor = BrickColor.new("Br. yellowish green")
  rightleg.CanCollide = false
  rightleg.Locked = true
  rightleg.Transparency = 1
  rightleg.Parent = ZANOOB
  local rightlegmesh = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/rightleg.mesh", rightleg)
  local rootweld = makemotor(rooto, rooto, torso, RJC0, RJC1)
  rootweld.Name = "RootJoint"
  local neckweld = makemotor(torso, torso, head, NC0, NC1)
  neckweld.Name = "Neck"
  local rshoulderweld = makemotor(torso, torso, rightarm, RSC0, RSC1)
  rshoulderweld.Name = "Right Shoulder"
  local lshoulderweld = makemotor(torso, torso, leftarm, LSC0, LSC1)
  lshoulderweld.Name = "Left Shoulder"
  local rhipweld = makemotor(torso, torso, rightleg, RHC0, RHC1)
  rhipweld.Name = "Right Hip"
  local lhipweld = makemotor(torso, torso, leftleg, LHC0, LHC1)
  lhipweld.Name = "Left Hip"
  local pa1 = Instance.new("Part")
  nooutline(pa1)
  pa1.Anchored = false
  pa1.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa1.Name = "pa1"
  pa1.Size = Vector3.new(0.2, 0.2, 0.2)
  pa1.BrickColor = BrickColor.new("Bright yellow")
  pa1.CanCollide = false
  pa1.Locked = true
  pa1.Transparency = 1
  pa1.Parent = ZANOOB
  local pa1m = makemesh("FileMesh", Vector3.new(0.55, 0.55, 0.35), "rbxasset://fonts/torso.mesh", pa1)
  local pa1w = makemotor(pa1, pa1, torso, ang(rd(0), rd(90), rd(15)) * cf(-0.75, -0.75, 0.3), ang(rd(20), 0, 0))
  local pa2 = Instance.new("Part")
  nooutline(pa2)
  pa2.Anchored = false
  pa2.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa2.Name = "pa2"
  pa2.Size = Vector3.new(0.2, 0.2, 0.2)
  pa2.BrickColor = BrickColor.new("Bright yellow")
  pa2.CanCollide = false
  pa2.Locked = true
  pa2.Transparency = 1
  pa2.Parent = ZANOOB
  local pa2m = makemesh("FileMesh", Vector3.new(0.55, 0.55, 0.35), "rbxasset://fonts/torso.mesh", pa2)
  local pa2w = makemotor(pa2, pa2, torso, ang(rd(0), rd(90), rd(-15)) * cf(0.75, -0.75, 0.3), ang(rd(20), 0, 0))
  local pa3 = Instance.new("Part")
  nooutline(pa3)
  pa3.Anchored = false
  pa3.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa3.Name = "pa3"
  pa3.Size = Vector3.new(0.2, 0.2, 0.2)
  pa3.BrickColor = BrickColor.new("Bright yellow")
  pa3.CanCollide = false
  pa3.Locked = true
  pa3.Transparency = 1
  pa3.Parent = ZANOOB
  local pa3m = makemesh("FileMesh", Vector3.new(0.45, 0.45, 0.35), "rbxasset://fonts/torso.mesh", pa3)
  local pa3w = makemotor(pa3, pa3, torso, ang(rd(0), rd(90), rd(5)) * cf(-0.575, -0.1, 0.275), ang(rd(0), 0, 0))
  local pa4 = Instance.new("Part")
  nooutline(pa4)
  pa4.Anchored = false
  pa4.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa4.Name = "pa4"
  pa4.Size = Vector3.new(0.2, 0.2, 0.2)
  pa4.BrickColor = BrickColor.new("Bright yellow")
  pa4.CanCollide = false
  pa4.Locked = true
  pa4.Transparency = 1
  pa4.Parent = ZANOOB
  local pa4m = makemesh("FileMesh", Vector3.new(0.45, 0.45, 0.35), "rbxasset://fonts/torso.mesh", pa4)
  local pa4w = makemotor(pa4, pa4, torso, ang(rd(0), rd(90), rd(-5)) * cf(0.575, -0.1, 0.275), ang(rd(0), 0, 0))
  local pa5 = Instance.new("Part")
  nooutline(pa5)
  pa5.Anchored = false
  pa5.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa5.Name = "pa5"
  pa5.Size = Vector3.new(0.2, 0.2, 0.2)
  pa5.BrickColor = BrickColor.new("Bright yellow")
  pa5.CanCollide = false
  pa5.Locked = true
  pa5.Transparency = 1
  pa5.Parent = ZANOOB
  local pa5m = makemesh("FileMesh", Vector3.new(0.35, 0.35, 0.35), "rbxasset://fonts/torso.mesh", pa5)
  local pa5w = makemotor(pa5, pa5, torso, ang(rd(0), rd(90), rd(-15)) * cf(-0.625, 0.375, 0.45), ang(rd(-20), 0, 0))
  local pa6 = Instance.new("Part")
  nooutline(pa6)
  pa6.Anchored = false
  pa6.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa6.Name = "pa6"
  pa6.Size = Vector3.new(0.2, 0.2, 0.2)
  pa6.BrickColor = BrickColor.new("Bright yellow")
  pa6.CanCollide = false
  pa6.Locked = true
  pa6.Transparency = 1
  pa6.Parent = ZANOOB
  local pa6m = makemesh("FileMesh", Vector3.new(0.35, 0.35, 0.35), "rbxasset://fonts/torso.mesh", pa6)
  local pa6w = makemotor(pa6, pa6, torso, ang(rd(0), rd(90), rd(15)) * cf(0.625, 0.375, 0.45), ang(rd(-20), 0, 0))
  local pa7 = Instance.new("Part")
  nooutline(pa7)
  pa7.Anchored = false
  pa7.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa7.Name = "pa7"
  pa7.Size = Vector3.new(0.2, 0.2, 0.2)
  pa7.BrickColor = BrickColor.new("Bright yellow")
  pa7.CanCollide = false
  pa7.Locked = true
  pa7.Transparency = 1
  pa7.Parent = ZANOOB
  local pa7m = makemesh("FileMesh", Vector3.new(1.05, 0.201, 1.1), "rbxasset://fonts/torso.mesh", pa7)
  local pa7w = makemotor(pa7, pa7, torso, ang(rd(0), rd(0), rd(0)) * cf(0, 0.8, 0), ang(0, 0, 0))
  local pa8 = Instance.new("Part")
  nooutline(pa8)
  pa8.Anchored = false
  pa8.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa8.Name = "pa8"
  pa8.Size = Vector3.new(0.2, 0.2, 0.2)
  pa8.BrickColor = BrickColor.new("Bright yellow")
  pa8.CanCollide = false
  pa8.Locked = true
  pa8.Transparency = 1
  pa8.Parent = ZANOOB
  local pa8m = makemesh("FileMesh", Vector3.new(1.45, 1.45, 1), "rbxassetid://105992239", pa8)
  local pa8w = makemotor(pa8, pa8, torso, ang(rd(0), rd(0), rd(0)) * cf(0, 0.8, 0.7), ang(0, 0, 0))
  local pa9 = Instance.new("Part")
  nooutline(pa9)
  pa9.Anchored = false
  pa9.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa9.Name = "pa9"
  pa9.Size = Vector3.new(0.2, 0.2, 0.2)
  pa9.BrickColor = BrickColor.new("Br. yellowish green")
  pa9.CanCollide = false
  pa9.Locked = true
  pa9.Transparency = 1
  pa9.Parent = ZANOOB
  local pa9m = makemesh("FileMesh", Vector3.new(1.65, 1.65, 1), "rbxassetid://105992239", pa9)
  local pa9w = makemotor(pa9, pa9, torso, ang(rd(0), rd(0), rd(0)) * cf(0, 0.8, 0.675), ang(0, 0, 0))
  local pa10 = Instance.new("Part")
  nooutline(pa10)
  pa10.Anchored = false
  pa10.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa10.Name = "pa10"
  pa10.Size = Vector3.new(0.2, 0.2, 0.2)
  pa10.BrickColor = BrickColor.new("Bright yellow")
  pa10.CanCollide = false
  pa10.Locked = true
  pa10.Transparency = 1
  pa10.Parent = ZANOOB
  local pa10m = makemesh("Head", Vector3.new(4.5, 11.5, 4.5), nil, pa10)
  local pa10w = makemotor(pa10, pa10, torso, ang(rd(0), rd(0), rd(0)) * cf(0.425, 0, -0.8), ang(0, 0, 0))
  local pa11 = Instance.new("Part")
  nooutline(pa11)
  pa11.Anchored = false
  pa11.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  pa11.Name = "pa11"
  pa11.Size = Vector3.new(0.2, 0.2, 0.2)
  pa11.BrickColor = BrickColor.new("Bright yellow")
  pa11.CanCollide = false
  pa11.Locked = true
  pa11.Transparency = 1
  pa11.Parent = ZANOOB
  local pa11m = makemesh("Head", Vector3.new(4.5, 11.5, 4.5), nil, pa11)
  local pa11w = makemotor(pa11, pa11, torso, ang(rd(0), rd(0), rd(0)) * cf(-0.425, 0, -0.8), ang(0, 0, 0))
  local raemblem = Instance.new("Part")
  nooutline(raemblem)
  raemblem.Anchored = false
  raemblem.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  raemblem.Name = "raemblem"
  raemblem.Size = Vector3.new(0.2, 0.2, 0.2)
  raemblem.BrickColor = BrickColor.new("Bright yellow")
  raemblem.CanCollide = false
  raemblem.Locked = true
  raemblem.Material = "SmoothPlastic"
  raemblem.Transparency = 1
  raemblem.Parent = ZANOOB
  local raemblemm = makemesh("Brick", Vector3.new(0, 3, 3), nil, raemblem)
  local raemblemw = makemotor(raemblem, raemblem, rightarm, ang(rd(0.5), rd(0), rd(0)) * cf(-0.5, -0.5, 0), ang(rd(0), 0, 0))
  local emmes = Instance.new("Decal")
  emmes.Texture = "rbxassetid://291302154"
  emmes.Transparency = 1
  emmes.Face = "Right"
  emmes.Name = "embe"
  emmes.Parent = raemblem
  local ra1 = Instance.new("Part")
  nooutline(ra1)
  ra1.Anchored = false
  ra1.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  ra1.Name = "ra1"
  ra1.Size = Vector3.new(0.2, 0.2, 0.2)
  ra1.BrickColor = BrickColor.new("Bright yellow")
  ra1.CanCollide = false
  ra1.Locked = true
  ra1.Transparency = 1
  ra1.Parent = ZANOOB
  local ra1m = makemesh("FileMesh", Vector3.new(1.1, 0.25, 1.1), "rbxasset://fonts/rightarm.mesh", ra1)
  local ra1w = makemotor(ra1, ra1, rightarm, ang(rd(0), rd(0), rd(0)) * cf(0, 0.55, 0), ang(rd(0), 0, 0))
  local ra2 = Instance.new("Part")
  nooutline(ra2)
  ra2.Anchored = false
  ra2.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  ra2.Name = "ra2"
  ra2.Size = Vector3.new(0.2, 0.2, 0.2)
  ra2.BrickColor = BrickColor.new("Bright yellow")
  ra2.CanCollide = false
  ra2.Locked = true
  ra2.Transparency = 1
  ra2.Parent = ZANOOB
  local ra2m = makemesh("FileMesh", Vector3.new(0.75, 0.15, 1.1), "rbxasset://fonts/rightarm.mesh", ra2)
  local ra2w = makemotor(ra2, ra2, rightarm, ang(rd(0), rd(0), rd(0)) * cf(-0.175, 0.9, 0), ang(rd(0), 0, 0))
  local ra3 = Instance.new("Part")
  nooutline(ra3)
  ra3.Anchored = false
  ra3.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  ra3.Name = "ra3"
  ra3.Size = Vector3.new(0.2, 0.2, 0.2)
  ra3.BrickColor = BrickColor.new("Br. yellowish green")
  ra3.CanCollide = false
  ra3.Locked = true
  ra3.Transparency = 1
  ra3.Parent = ZANOOB
  local ra3m = makemesh("FileMesh", Vector3.new(1.15, 0.2, 1.15), "rbxasset://fonts/rightarm.mesh", ra3)
  local ra3w = makemotor(ra3, ra3, rightarm, ang(rd(0), rd(0), rd(0)) * cf(0, 0.55, 0), ang(rd(0), 0, 0))
  local ra4 = Instance.new("Part")
  nooutline(ra4)
  ra4.Anchored = false
  ra4.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  ra4.Name = "ra4"
  ra4.Size = Vector3.new(0.2, 0.2, 0.2)
  ra4.BrickColor = BrickColor.new("Br. yellowish green")
  ra4.CanCollide = false
  ra4.Locked = true
  ra4.Transparency = 1
  ra4.Parent = ZANOOB
  local ra4m = makemesh("FileMesh", Vector3.new(0.75, 0.15, 1.15), "rbxasset://fonts/rightarm.mesh", ra4)
  local ra4w = makemotor(ra4, ra4, rightarm, ang(rd(0), rd(0), rd(0)) * cf(-0.2, 0.85, 0), ang(rd(0), 0, 0))
  local ra5 = Instance.new("Part")
  nooutline(ra5)
  ra5.Anchored = false
  ra5.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  ra5.Name = "ra5"
  ra5.Size = Vector3.new(0.2, 0.2, 0.2)
  ra5.BrickColor = BrickColor.new("Bright yellow")
  ra5.CanCollide = false
  ra5.Locked = true
  ra5.Transparency = 1
  ra5.Parent = ZANOOB
  local ra5m = makemesh("FileMesh", Vector3.new(1.35, 1.35, 1.35), "rbxassetid://105992239", ra5)
  local ra5w = makemotor(ra5, ra5, rightarm, ang(rd(0), rd(90), rd(0)) * cf(-0.65, 0.7, 0), ang(rd(0), 0, 0))
  local la1 = Instance.new("Part")
  nooutline(la1)
  la1.Anchored = false
  la1.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  la1.Name = "la1"
  la1.Size = Vector3.new(0.2, 0.2, 0.2)
  la1.BrickColor = BrickColor.new("Bright yellow")
  la1.CanCollide = false
  la1.Locked = true
  la1.Transparency = 1
  la1.Parent = ZANOOB
  local la1m = makemesh("FileMesh", Vector3.new(1.1, 0.25, 1.1), "rbxasset://fonts/rightarm.mesh", la1)
  local la1w = makemotor(la1, la1, leftarm, ang(rd(0), rd(0), rd(0)) * cf(0, 0.55, 0), ang(rd(0), 0, 0))
  local la2 = Instance.new("Part")
  nooutline(la2)
  la2.Anchored = false
  la2.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  la2.Name = "la2"
  la2.Size = Vector3.new(0.2, 0.2, 0.2)
  la2.BrickColor = BrickColor.new("Bright yellow")
  la2.CanCollide = false
  la2.Locked = true
  la2.Transparency = 1
  la2.Parent = ZANOOB
  local la2m = makemesh("FileMesh", Vector3.new(0.75, 0.15, 1.1), "rbxasset://fonts/rightarm.mesh", la2)
  local la2w = makemotor(la2, la2, leftarm, ang(rd(0), rd(0), rd(0)) * cf(0.175, 0.9, 0), ang(rd(0), 0, 0))
  local la3 = Instance.new("Part")
  nooutline(la3)
  la3.Anchored = false
  la3.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  la3.Name = "la3"
  la3.Size = Vector3.new(0.2, 0.2, 0.2)
  la3.BrickColor = BrickColor.new("Br. yellowish green")
  la3.CanCollide = false
  la3.Locked = true
  la3.Transparency = 1
  la3.Parent = ZANOOB
  local la3m = makemesh("FileMesh", Vector3.new(1.15, 0.2, 1.15), "rbxasset://fonts/rightarm.mesh", la3)
  local la3w = makemotor(la3, la3, leftarm, ang(rd(0), rd(0), rd(0)) * cf(0, 0.55, 0), ang(rd(0), 0, 0))
  local la4 = Instance.new("Part")
  nooutline(la4)
  la4.Anchored = false
  la4.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  la4.Name = "la4"
  la4.Size = Vector3.new(0.2, 0.2, 0.2)
  la4.BrickColor = BrickColor.new("Br. yellowish green")
  la4.CanCollide = false
  la4.Locked = true
  la4.Transparency = 1
  la4.Parent = ZANOOB
  local la4m = makemesh("FileMesh", Vector3.new(0.75, 0.15, 1.15), "rbxasset://fonts/rightarm.mesh", la4)
  local la4w = makemotor(la4, la4, leftarm, ang(rd(0), rd(0), rd(0)) * cf(0.2, 0.85, 0), ang(rd(0), 0, 0))
  local la5 = Instance.new("Part")
  nooutline(la5)
  la5.Anchored = false
  la5.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  la5.Name = "la5"
  la5.Size = Vector3.new(0.2, 0.2, 0.2)
  la5.BrickColor = BrickColor.new("Bright yellow")
  la5.CanCollide = false
  la5.Locked = true
  la5.Transparency = 1
  la5.Parent = ZANOOB
  local la5m = makemesh("FileMesh", Vector3.new(1.35, 1.35, 1.35), "rbxassetid://105992239", la5)
  local la5w = makemotor(la5, la5, leftarm, ang(rd(0), rd(90), rd(0)) * cf(0.4, 0.7, 0), ang(rd(0), 0, 0))
  local ll1 = Instance.new("Part")
  nooutline(ll1)
  ll1.Anchored = false
  ll1.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  ll1.Name = "ll1"
  ll1.Size = Vector3.new(0.2, 0.2, 0.2)
  ll1.BrickColor = BrickColor.new("Br. yellowish green")
  ll1.CanCollide = false
  ll1.Locked = true
  ll1.Transparency = 1
  ll1.Parent = ZANOOB
  local ll1m = makemesh("FileMesh", Vector3.new(0.5, 0.35, 0.2), "rbxasset://fonts/leftleg.mesh", ll1)
  local ll1w = makemotor(ll1, ll1, leftleg, ang(rd(7), rd(30), rd(20)) * cf(-0.25, -0.3, 0.525), ang(0, 0, 0))
  local ll2 = Instance.new("Part")
  nooutline(ll2)
  ll2.Anchored = false
  ll2.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  ll2.Name = "ll2"
  ll2.Size = Vector3.new(0.2, 0.2, 0.2)
  ll2.BrickColor = BrickColor.new("Br. yellowish green")
  ll2.CanCollide = false
  ll2.Locked = true
  ll2.Transparency = 1
  ll2.Parent = ZANOOB
  local ll2m = makemesh("FileMesh", Vector3.new(0.5, 0.35, 0.2), "rbxasset://fonts/leftleg.mesh", ll2)
  local ll2w = makemotor(ll2, ll2, leftleg, ang(rd(7), rd(-30), rd(-20)) * cf(0.25, -0.3, 0.525), ang(0, 0, 0))
  local ll3 = Instance.new("Part")
  nooutline(ll3)
  ll3.Anchored = false
  ll3.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  ll3.Name = "ll3"
  ll3.Size = Vector3.new(0.2, 0.2, 0.2)
  ll3.BrickColor = BrickColor.new("Bright yellow")
  ll3.CanCollide = false
  ll3.Locked = true
  ll3.Transparency = 1
  ll3.Parent = ZANOOB
  local ll3m = makemesh("FileMesh", Vector3.new(1.4, 1.4, 1.3), "rbxassetid://105992239", ll3)
  local ll3w = makemotor(ll3, ll3, leftleg, ang(rd(15), rd(0), rd(0)) * cf(0, 0, 0.7), ang(0, 0, 0))
  local rr1 = Instance.new("Part")
  nooutline(rr1)
  rr1.Anchored = false
  rr1.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  rr1.Name = "rr1"
  rr1.Size = Vector3.new(0.2, 0.2, 0.2)
  rr1.BrickColor = BrickColor.new("Br. yellowish green")
  rr1.CanCollide = false
  rr1.Locked = true
  rr1.Transparency = 1
  rr1.Parent = ZANOOB
  local rr1m = makemesh("FileMesh", Vector3.new(0.5, 0.35, 0.2), "rbxasset://fonts/leftleg.mesh", rr1)
  local rr1w = makemotor(rr1, rr1, rightleg, ang(rd(7), rd(30), rd(20)) * cf(-0.25, -0.3, 0.525), ang(0, 0, 0))
  local rr2 = Instance.new("Part")
  nooutline(rr2)
  rr2.Anchored = false
  rr2.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  rr2.Name = "rr2"
  rr2.Size = Vector3.new(0.2, 0.2, 0.2)
  rr2.BrickColor = BrickColor.new("Br. yellowish green")
  rr2.CanCollide = false
  rr2.Locked = true
  rr2.Transparency = 1
  rr2.Parent = ZANOOB
  local rr2m = makemesh("FileMesh", Vector3.new(0.5, 0.35, 0.2), "rbxasset://fonts/leftleg.mesh", rr2)
  local rr2w = makemotor(rr2, rr2, rightleg, ang(rd(7), rd(-30), rd(-20)) * cf(0.25, -0.3, 0.525), ang(0, 0, 0))
  local rr3 = Instance.new("Part")
  nooutline(rr3)
  rr3.Anchored = false
  rr3.CFrame = rooto.CFrame * CFrame.new(0, 2, 1)
  rr3.Name = "rr3"
  rr3.Size = Vector3.new(0.2, 0.2, 0.2)
  rr3.BrickColor = BrickColor.new("Bright yellow")
  rr3.CanCollide = false
  rr3.Locked = true
  rr3.Transparency = 1
  rr3.Parent = ZANOOB
  local rr3m = makemesh("FileMesh", Vector3.new(1.4, 1.4, 1.3), "rbxassetid://105992239", rr3)
  local rr3w = makemotor(rr3, rr3, rightleg, ang(rd(15), rd(0), rd(0)) * cf(0, 0, 0.7), ang(0, 0, 0))
  return ZANOOB
end
local thenoob = STANDO(hrp.CFrame * CFrame.new(0, 0, 0))
coroutine.resume(coroutine.create(function()
  local rot = thenoob.HumanoidRootPart
  repeat
    swait()
    rot.CFrame = rot.CFrame:lerp(wherto.CFrame * addcfr, 0.5)
  until rot == nil
end))
local rot = thenoob.HumanoidRootPart
local ntorso = thenoob:FindFirstChild("Torso")
local rightarm = thenoob:FindFirstChild("Right Arm")
local leftarm = thenoob:FindFirstChild("Left Arm")
local leftleg = thenoob:FindFirstChild("Left Leg")
local rightleg = thenoob:FindFirstChild("Right Leg")
local head = thenoob:FindFirstChild("Head")
local face = head:FindFirstChild("face")
local emblem = thenoob:FindFirstChild("raemblem"):FindFirstChild("embe")
local embpart = thenoob:FindFirstChild("raemblem")
local nRJ = rot:FindFirstChild("RootJoint")
local nN = ntorso:FindFirstChild("Neck")
local nRS = ntorso:FindFirstChild("Right Shoulder")
local nLS = ntorso:FindFirstChild("Left Shoulder")
local nRH = ntorso:FindFirstChild("Right Hip")
local nLH = ntorso:FindFirstChild("Left Hip")
function standappear(nbz)
  if selected == false or activu == true then
    return
  end
  if appeared == false then
    appeared = true
    wherto = hrp
    addcfr = cf(-2, 1, 2)
    local apear = Instance.new("Sound")
    apear.SoundId = "rbxassetid://463010917"
    apear.Parent = rot
    apear.Volume = 1.25
    game.Debris:AddItem(apear, 1.5)
    apear:Play()
    for _, n in pairs(nbz:GetChildren()) do
      coroutine.resume(coroutine.create(function()
        for _ = 1, 5 do
          if n ~= rot and n ~= embpart and n.ClassName ~= "Sound" then
            swait()
            n.Transparency = n.Transparency - 0.2
            face.Transparency = face.Transparency - 0.2
            emblem.Transparency = emblem.Transparency - 0.2
          end
        end
        if n ~= rot and n ~= embpart then
          n.Transparency = 0
        end
        face.Transparency = 0
        emblem.Transparency = 0
      end))
    end
  elseif appeared == true then
    appeared = false
    wherto = hrp
    addcfr = cf(0, 0, 0)
    for _, n in pairs(nbz:GetChildren()) do
      coroutine.resume(coroutine.create(function()
        for _ = 1, 5 do
          if n ~= rot and n ~= embpart then
            swait()
            n.Transparency = n.Transparency + 0.2
            face.Transparency = face.Transparency + 0.2
            emblem.Transparency = emblem.Transparency + 0.2
          end
        end
        if n ~= rot and n ~= embpart then
          n.Transparency = 1
        end
        face.Transparency = 1
        emblem.Transparency = 1
      end))
    end
  end
end
function THREATENING()
  if selected == false or activu == true then
    return
  end
  if POSU == false then
    POSU = true
    human.WalkSpeed = 0
    local d = Instance.new("ParticleEmitter")
    d.Name = "MENACINGU"
    d.Lifetime = NumberRange.new(1)
    d.Rate = 2
    d.Texture = "rbxassetid://298768656"
    d.VelocitySpread = 60
    d.Parent = tors
    human:SetStateEnabled(3, false)
    local randomoth = math.random(1, 2)
    if randomoth == 1 then
      repeat
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.05) * ang(rd(-5), rd(0), rd(-30)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(30)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(-20), rd(-5)), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(140), rd(-70), rd(-50)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(-30), rd(10)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0.3, 0.1, -0.15) * ang(rd(-20), rd(50), rd(10)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-10)), 0.3)
      until POSU == false
    elseif randomoth == 2 then
      repeat
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(-2), rd(25)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(6), rd(0), rd(-50)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(-0.25, 0.3, -0.5) * ang(rd(-30), rd(-15), rd(200)), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0.25, 0.3, -0.5) * ang(rd(-32), rd(13), rd(-195)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-15), rd(-10)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(10), rd(-10)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      until POSU == false
    end
  elseif POSU == true then
    POSU = false
    human.WalkSpeed = 16
    human:SetStateEnabled(3, true)
    tors.MENACINGU:Destroy()
    activu = true
    activu = false
  end
end
local EHMMM = 0
function block()
  if EHMMM == 50 or selected == false or activu == true then
    return
  end
  if appeared == false then
    standappear(thenoob)
  end
  wherto = hrp
  addcfr = cf(0, 0, -3)
  local bep = true
  local humanshealth = human.Health
  activu = true
  human:SetStateEnabled(15, false)
  local de = mouse.KeyUp:connect(function(key)
    if key == "e" then
      bep = false
    end
  end)
  local poopes = 0
  repeat
    swait()
    poopes = poopes + 1
    human.Health = humanshealth
    lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(2), rd(0), rd(0)), 0.5)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(7), rd(0), rd(0)), 0.5)
    lerpz(nRS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(110), rd(160)), 0.5)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.5)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(-110), rd(-160)), 0.5)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.5)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  until bep == false or poopes > 240
  de:Disconnect()
  human:SetStateEnabled(15, true)
  activu = false
  EHMMM = 50
  coroutine.resume(coroutine.create(function()
    wait(7)
    EHMMM = 0
  end))
  wherto = hrp
  addcfr = cf(-2, 1, 2)
end
function MUDA()
  if selected == false or activu == true then
    return
  end
  if appeared == false then
    standappear(thenoob)
    wherto = hrp
    addcfr = cf(0, 0, -3.5)
  end
  wry:Stop()
  local bep = true
  activu = true
  wherto = hrp
  addcfr = cf(0, 0, -3.5)
  local function blur(limb)
    coroutine.resume(coroutine.create(function()
      local memedon = {}
      for i = 1, 6 do
        local b1 = Instance.new("Part")
        nooutline(b1)
        b1.Size = Vector3.new(1, 2, 1)
        b1.CFrame = limb.CFrame * CFrame.new(rd2(-5, 5) / 10, rd2(-5, 5) / 10, rd2(-5, 5) / 10)
        b1.CanCollide = false
        b1.BrickColor = limb.BrickColor
        b1.Anchored = true
        b1.Transparency = 0.7
        b1.Locked = true
        b1.Parent = modz
        table.insert(memedon, b1)
      end
      local num = 0
      repeat
        swait()
        num = num % 6 + 1
        memedon[num].CFrame = limb.CFrame * CFrame.new(rd2(-5, 5) / 10, rd2(-5, 5) / 10, rd2(-5, 5) / 10)
      until bep == false
      for i = 1, #memedon do
        swait()
        memedon[i]:Destroy()
      end
    end))
  end
  local de = mouse.KeyUp:connect(function(key)
    if key == "r" then
      bep = false
    end
  end)
  blur(rightarm)
  blur(leftarm)
local mudodo = Instance.new("Sound")
  mudodo.Volume = 7.5
  mudodo.SoundId = "rbxassetid://612888361"
mudodo.Looped = true
  mudodo.Parent = hrp
  mudodo:Play()
  repeat
    for _ = 1, 2 do
      swait()
      lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(4), rd(4), rd(30)), 0.85)
      lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2), rd(0), rd(-28)), 0.85)
      lerpz(nRS, "C0", RSC0 * cf(0.5, 0.25, -0.1) * ang(rd(20), rd(20), rd(105)), 0.85)
      lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nLS, "C0", LSC0 * cf(0.25, 0.1, 0) * ang(rd(30), rd(10), rd(-70)), 0.85)
      lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.85)
      lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.85)
      lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
    end
    hito(rightarm, 3.3, 5, 0.01, rot.CFrame.lookVector * 5)
    for _ = 1, 2 do
      swait()
      lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(5), rd(2), rd(-30)), 0.85)
      lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(2), rd(0), rd(31)), 0.85)
      lerpz(nRS, "C0", RSC0 * cf(-0.1, 0.05, -0.1) * ang(rd(-10), rd(-30), rd(75)), 0.85)
      lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nLS, "C0", LSC0 * cf(-0.5, 0.1, -0.2) * ang(rd(-30), rd(10), rd(-70)), 0.85)
      lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(10)), 0.85)
      lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(10)), 0.85)
      lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
    end
    hito(leftarm, 3.3, 5, 0.01, rot.CFrame.lookVector * 5)
    for _ = 1, 2 do
      swait()
      lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(3), rd(3), rd(32)), 0.85)
      lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2), rd(0), rd(-29)), 0.85)
      lerpz(nRS, "C0", RSC0 * cf(0.35, 0.25, 0.1) * ang(rd(-10), rd(-20), rd(95)), 0.85)
      lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nLS, "C0", LSC0 * cf(0.25, 0.1, 0) * ang(rd(-10), rd(10), rd(-80)), 0.85)
      lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.85)
      lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.85)
      lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
    end
    hito(rightarm, 3.3, 5, 0.01, rot.CFrame.lookVector * 5)
    for _ = 1, 2 do
      swait()
      lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-10), rd(3), rd(-40)), 0.85)
      lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(-2), rd(35)), 0.85)
      lerpz(nRS, "C0", RSC0 * cf(-0.1, 0.05, -0.1) * ang(rd(20), rd(-30), rd(65)), 0.85)
      lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nLS, "C0", LSC0 * cf(-0.5, 0.1, -0.2) * ang(rd(-30), rd(30), rd(-75)), 0.85)
      lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(10)), 0.85)
      lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
      lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(10)), 0.85)
      lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.85)
    end
    hito(leftarm, 3.3, 5, 0.01, rot.CFrame.lookVector * 5)
  until bep == false or 0 >= human.Health
  de:Disconnect()
mudodo:Stop()
  wry:Play()
  for _ = 1, 6 do
    swait()
    lerpz(nRJ, "C0", RJC0 * cf(0, 1.25, 0) * ang(rd(0), rd(4), rd(-85)), 0.75)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(3), rd(75)), 0.75)
    lerpz(nRS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(100)), 0.75)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-25), rd(10), rd(10)), 0.75)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.75)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(5)), 0.75)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
  end
  for _ = 1, 7 do
    swait()
    hito(rightarm, 3, 20, 0.35, rot.CFrame.lookVector * 50)
    lerpz(nRJ, "C0", RJC0 * cf(0, -1, 0) * ang(rd(0), rd(10), rd(75)), 0.75)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(-7), rd(-65)), 0.75)
    lerpz(nRS, "C0", RSC0 * cf(0.75, 0, 0.25) * ang(rd(10), rd(-60), rd(100)), 0.75)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.75)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-25), rd(10), rd(10)), 0.75)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.75)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(5)), 0.75)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
  end
  swait(5)
  wherto = hrp
mudodo:Destroy()
  addcfr = cf(-2, 1, 2)
  activu = false
end
function cability()
  if selected == false or activu == true then
    return
  end
  if appeared == false then
    standappear(thenoob)
    wherto = hrp
    addcfr = cf(0, 0, -3.75)
  end
  activu = true
  wherto = hrp
  addcfr = cf(0, 0, -3.5)
  local ZAWRUA = Instance.new("Sound")
  ZAWRUA.SoundId = "rbxassetid://257346558"
  ZAWRUA.Volume = 3
  ZAWRUA.Parent = hrp
  ZAWRUA:Play()
  game.Debris:AddItem(ZAWRUA, 2.5)
  local wate = Instance.new("Part")
  nooutline(wate)
  wate.Size = Vector3.new(0.2, 0.2, 0.2)
  wate.Material = "Neon"
  wate.Transparency = 1
  wate.BrickColor = BrickColor.new("Br. yellowish green")
  wate.CFrame = rightarm.CFrame * cf(0, -1.5, 0)
  wate.Anchored = true
  wate.CanCollide = false
  wate.Parent = modz
  local wmesh = makemesh("Sphere", Vector3.new(5, 5, 5), nil, wate)
  coroutine.resume(coroutine.create(function()
    repeat
      swait()
      wate.CFrame = rightarm.CFrame * cf(0, -1, 0)
      wmesh.Scale = wmesh.Scale:lerp(Vector3.new(10, 10, 10), 0.5)
    until not wate
  end))
  coroutine.resume(coroutine.create(function()
    local pt = {}
    for _ = 1, 10 do
      local wp = Instance.new("Part")
      nooutline(wp)
      wp.Size = Vector3.new(0.2, 0.2, 0.2)
      wp.Material = "Neon"
      wp.Transparency = 1
      wp.BrickColor = BrickColor.new("Br. yellowish green")
      wp.CFrame = wate.CFrame * ang(rd2(-100, 100) / 1000, rd2(-100, 100) / 1000, rd2(-100, 100) / 1000) * cf(0, -0.25, 0)
      wp.Anchored = true
      wp.CanCollide = false
      wp.Parent = modz
      local wmz = makemesh("Sphere", Vector3.new(0.5, 2, 0.5), nil, wp)
      table.insert(pt, wp)
      table.insert(pt, wmz)
    end
    for m = 1, 45 do
      swait()
      for _, hey in pairs(pt) do
        if hey.ClassName == "SpecialMesh" then
          hey.Scale = hey.Scale + Vector3.new(0.005, 0.04, 0.005)
        elseif hey.ClassName == "Part" then
          hey.CFrame = wate.CFrame * ang(rd(rd2(-360, 360)), rd(rd2(-360, 360)), rd(rd2(-360, 360))) * cf(0, -m / 25, 0)
          hey.Transparency = hey.Transparency - 0.015
        end
      end
    end
    for m = 45, 50 do
      swait()
      for _, hey in pairs(pt) do
        if hey.ClassName == "SpecialMesh" then
          hey.Scale = hey.Scale + Vector3.new(0.025, 0.08, 0.025)
        elseif hey.ClassName == "Part" then
          hey.CFrame = wate.CFrame * ang(rd(rd2(-360, 360)), rd(rd2(-360, 360)), rd(rd2(-360, 360))) * cf(0, -m / 25, 0)
          hey.Transparency = hey.Transparency + 0.2
        end
      end
    end
    for _, AAA in pairs(pt) do
      if AAA.ClassName == "Part" then
        AAA:Destroy()
      end
    end
  end))
  for _ = 1, 50 do
    swait()
    wmesh.Scale = Vector3.new(9, 9, 9)
    wate.Transparency = wate.Transparency - 0.008
    lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(4), rd(-125)), 0.2)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(3), rd(115)), 0.2)
    lerpz(nRS, "C0", RSC0 * cf(rd2(-1, 1) / 10, rd2(-1, 1) / 10, rd2(-1, 1) / 10) * ang(rd(rd2(-15, -5)), rd(rd2(-25, -15)), rd(rd2(95, 105))), 0.2)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-25), rd(10), rd(10)), 0.2)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.2)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(5)), 0.2)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
  end
  local pooo = Instance.new("Sound")
  pooo.SoundId = "rbxassetid://610041973"
  pooo.Volume = 3
  pooo.Parent = hrp
  pooo:Play()
  game.Debris:AddItem(pooo, 2.5)
  for _ = 1, 1 do
    swait()
    wate.Transparency = wate.Transparency + 0.15
    lerpz(nRJ, "C0", RJC0 * cf(0, -2, 0) * ang(rd(0), rd(10), rd(35)), 0.5)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(-7), rd(-30)), 0.5)
    lerpz(nRS, "C0", RSC0 * cf(0.75, 0, 0.25) * ang(rd(10), rd(-80), rd(100)), 0.5)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.5)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-25), rd(10), rd(10)), 0.5)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.5)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(5)), 0.5)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  local swoo = Instance.new("Part")
  nooutline(swoo)
  swoo.Size = Vector3.new(0.2, 0.2, 0.2)
  swoo.Material = "Neon"
  swoo.Transparency = 0.2
  swoo.BrickColor = BrickColor.new("Br. yellowish green")
  swoo.CFrame = rightarm.CFrame * ang(rd(0), rd(-15), rd(240)) * cf(1.5, -2.5, 0)
  swoo.Anchored = true
  swoo.CanCollide = false
  swoo.Parent = modz
  local wmesh = makemesh("FileMesh", Vector3.new(0.013333333333333334, 0.015384615384615385, 0.025), "rbxassetid://576041905", swoo)
  local pli = Instance.new("PointLight")
  pli.Brightness = 2
  pli.Color = Color3.new(0.45098039215686275, 1, 0)
  pli.Range = 10
  pli.Shadows = true
  pli.Parent = swoo
  hito(swoo, 5, 40, 0.15, rot.CFrame.lookVector * 80)
  tagability(swoo, 4)
  for _ = 1, 10 do
    swait()
    wate.Transparency = wate.Transparency + 0.05
    swoo.Transparency = swoo.Transparency + 0.075
    pli.Range = pli.Range - 1
    lerpz(nRJ, "C0", RJC0 * cf(0, -3, 0) * ang(rd(0), rd(10), rd(105)), 0.5)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(-7), rd(-65)), 0.5)
    lerpz(nRS, "C0", RSC0 * cf(0.75, 0, 0.25) * ang(rd(10), rd(-30), rd(100)), 0.5)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.5)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-25), rd(10), rd(10)), 0.5)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.5)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(5)), 0.5)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  wate:Destroy()
  swoo:Destroy()
  pli:Destroy()
  swait(15)
  wherto = hrp
  addcfr = cf(-2, 1, 2)
  activu = false
end
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=188959462")
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=616594208")
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=616576400")
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=291088606")
function THEBEST()
  if selected == false or activu == true or appeared == true or POSU == true then
    return
  end
  local dipperhat = chr:FindFirstChild("DXD_DipperHat")
  local dipperrot
  if dipperhat then
    dipperrot = dipperhat.Handle.HatAttachment.Rotation
  end
  activu = true
  POSU = true
  cam.CameraType = "Scriptable"
  chr.PrimaryPart = hrp
  human.WalkSpeed = 0
  human:SetStateEnabled(3, false)
  local actmus1 = Instance.new("Sound")
  actmus1.SoundId = "rbxassetid://188959462"
  actmus1.Volume = 1.5
  actmus1.RollOffMode = 1
  actmus1.TimePosition = 0
  actmus1.Parent = cam
  local actmus2 = Instance.new("Sound")
  actmus2.SoundId = "rbxassetid://188959462"
  actmus2.Volume = 1.5
  actmus2.RollOffMode = 1
  actmus2.TimePosition = 0
  actmus2.Parent = hrp
  actmus1:Play()
  actmus2:Play()
  local mus1 = Instance.new("Sound")
  mus1.SoundId = "rbxassetid://616594208"
  mus1.Volume = 1.25
  mus1.TimePosition = 0.45
  mus1.Parent = cam
  local mus2 = Instance.new("Sound")
  mus2.SoundId = "rbxassetid://616594208"
  mus2.Volume = 1.25
  mus2.TimePosition = 0.45
  mus2.Parent = hrp
  local zawarudoda = Instance.new("Sound")
  zawarudoda.SoundId = "rbxassetid://616576400"
  zawarudoda.Volume = 2
  zawarudoda.TimePosition = 0.3
  zawarudoda.Parent = hrp
  mus1:Play()
  mus2:Play()
  cam.CoordinateFrame = hrp.CFrame * ang(rd(20), rd(100), rd(0)) * cf(0, 0, 7)
  local regface = hed.face.Texture
  local whogothit, bodyvel
  local function checkhit(partoz, magn)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and not whogothit then
        whogothit = guy
        guy:FindFirstChild("Humanoid").PlatformStand = true
        do
          local derp = Instance.new("BodyPosition")
          derp.MaxForce = Vector3.new(999999999999, 999999999999, 999999999999)
          derp.P = 8000
          derp.D = 500
          derp.Position = hrp.Position + hrp.CFrame.lookVector * 20
          derp.Parent = guy:FindFirstChild("HumanoidRootPart")
          bodyvel = derp
          local derp2 = Instance.new("BodyAngularVelocity")
          derp2.MaxTorque = Vector3.new(999999999999, 999999999999, 999999999999)
          derp2.P = 8000
          derp2.AngularVelocity = Vector3.new(rd2(2, 4), rd2(50, 100), 0)
          derp2.Parent = guy:FindFirstChild("HumanoidRootPart")
          delay(0.1, function()
            derp2:Destroy()
          end)
          bodyvel = derp
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for _ = 1, 25 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-10), rd(-5), rd(-20)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(10), rd(20)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-10), rd(30), rd(-30)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(35), rd(-50), rd(-100)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-20), rd(-10), rd(-20)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(10)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    for _ = 1, 20 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-10), rd(-5), rd(-20)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(10), rd(20)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-10), rd(30), rd(-30)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0.4) * ang(rd(70), rd(-60), rd(-100)), 0.3)
      if dipperhat then
        dipperhat.Handle.HatAttachment.Rotation = dipperhat.Handle.HatAttachment.Rotation:lerp(dipperrot + Vector3.new(0, -40, 0), 0.3)
      end
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-20), rd(-10), rd(-20)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(10)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
  end))
  repeat
    swait()
    cam.CoordinateFrame = cam.CoordinateFrame * ang(rd(0), rd(1), rd(0)) * cf(0.15, 0, 0)
  until mus1.TimePosition > 2.9
  mus1:Pause()
  mus2:Pause()
  zawarudoda:Play()
  coroutine.resume(coroutine.create(function()
    for _ = 1, 7 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(-5)), 0.4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(2), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(10), rd(80), rd(80)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(10), rd(-80), rd(-70)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(10)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    for _ = 1, 16 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(-5)), 0.4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(8), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(10), rd(-80), rd(80)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(10), rd(80), rd(-70)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-15)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(15)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
  end))
  repeat
    swait()
  until zawarudoda.TimePosition > 1.4
  zawarudoda:Pause()
  activu = false
  standappear(thenoob)
  wherto = hrp
  addcfr = cf(3, 0.25, -1.5)
  activu = true
  cam.CoordinateFrame = hrp.CFrame * ang(rd(-25), rd(0), rd(0)) * cf(0, 2, 3)
  for _ = 1, 10 do
    swait()
    cam.CoordinateFrame = cam.CoordinateFrame * ang(rd(0), rd(0), rd(0)) * cf(0, 0, 1.5)
    lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(4), rd(-75)), 0.5)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(3), rd(45)), 0.5)
    lerpz(nRS, "C0", RSC0 * cf(rd2(-1, 1) / 10, rd2(-1, 1) / 10, rd2(-1, 1) / 10) * ang(rd(rd2(-15, -5)), rd(rd2(-25, -15)), rd(rd2(95, 105))), 0.5)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-25), rd(10), rd(10)), 0.5)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.5)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(5)), 0.5)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  wherto = hrp
  addcfr = cf(-3, 0.25, -1.5)
  for _ = 1, 25 do
    swait()
    checkhit(rightarm, 3)
    lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(4), rd(105)), 0.4)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(3), rd(-45)), 0.4)
    lerpz(nRS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(100)), 0.4)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-25), rd(10), rd(10)), 0.4)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.4)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(5)), 0.4)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
  end
  if whogothit then
    print("derp")
    cam.CoordinateFrame = hrp.CFrame * ang(rd(15), rd(140), rd(0)) * cf(0, 1, 4)
    local laugo = Instance.new("Sound")
    laugo.SoundId = "rbxassetid://291088606"
    laugo.Volume = 1.5
    laugo.Parent = hrp
    game.Debris:AddItem(laugo, 2.5)
    laugo:Play()
    local sda = 0
    local chn = 2
    local cs = math.cos
    for D = 1, 60 do
      swait()
      cam.CoordinateFrame = cam.CoordinateFrame * ang(rd(0), rd(0), rd(0)) * cf(0, 0, 0.15)
      sda = sda + chn
      lerpz(RJ, "C0", RJC0 * cf(0, 0.75, 1 * cs(sda / 2)) * ang(rd(-40), rd(0), rd(-5)), 0.8 / D)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-60 + 40 * cs(sda / 2)), rd(8), rd(0)), 0.8 / D)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(10), rd(-110 + 80 * cs(sda / 2)), rd(80)), 0.8 / D)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8 / D)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(10), rd(110 + 80 * cs(sda / 2)), rd(-70)), 0.8 / D)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8 / D)
      lerpz(RH, "C0", RHC0 * cf(0, -1 * cs(sda / 2), 0) * ang(rd(-10), rd(-10), rd(-40)), 0.8 / D)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8 / D)
      lerpz(LH, "C0", LHC0 * cf(0, -1 * cs(sda / 2), 0) * ang(rd(-10), rd(10), rd(40)), 0.8 / D)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8 / D)
    end
    hed.face.Texture = "rbxassetid://176777497"
    mus1.TimePosition = 2.75
    mus1:Play()
    for C = 1, 30 do
      swait()
      cam.CoordinateFrame = cam.CoordinateFrame * ang(rd(0), rd(0), rd(0)) * cf(0, 0, -(0.02 + C / 60))
      sda = sda + chn
      lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(20), rd(0), rd(-5)), 0.05 + C / 31)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(30), rd(0), rd(0)), 0.05 + C / 31)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-20)), 0.05 + C / 31)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + C / 31)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(35), rd(-50), rd(-100)), 0.05 + C / 31)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + C / 31)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(20)), 0.05 + C / 31)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + C / 31)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(20)), 0.05 + C / 31)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + C / 31)
    end
    for _ = 1, 5 do
      swait()
      cam.CoordinateFrame = cam.CoordinateFrame * ang(rd(0), rd(0), rd(0)) * cf(0, 0, 0.02)
      sda = sda + chn
      lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(20), rd(0), rd(-5)), 0.5)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(0)), 0.5)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-20)), 0.5)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(LS, "C0", LSC0 * cf(0, 0.25, 0) * ang(rd(60), rd(-60), rd(-100)), 0.5)
      if dipperhat then
        dipperhat.Handle.HatAttachment.Rotation = dipperhat.Handle.HatAttachment.Rotation:lerp(dipperrot + Vector3.new(0, 0, 0), 0.5)
      end
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(20)), 0.5)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(20)), 0.5)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    end
    wait(2)
  elseif whogothit == nil then
    print("noderp")
  end
  human:SetStateEnabled(3, true)
  activu = false
  standappear(thenoob)
  activu = true
  if dipperhat then
    dipperhat.Handle.HatAttachment.Rotation = dipperrot
  end
  actmus1:Destroy()
  actmus2:Destroy()
  bast:Play()
  if bodyvel then
    bodyvel:Destroy()
  end
  cam.CameraType = "Custom"
  hed.face.Texture = regface
  chr.PrimaryPart = head
  human.WalkSpeed = 16
  activu = false
  POSU = false
end
function hito(partoz, magn, dmg, debtim, bodyfdire)
  for _, guy in pairs(workspace:GetChildren()) do
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
      do
        local humz = guy:FindFirstChild("Humanoid")
        local horp = guy:FindFirstChild("HumanoidRootPart")
        TakeDamage(humz, dmg)
        local db = Instance.new("StringValue")
        db.Name = "alabo"
        db.Parent = horp
        delay(debtim, function()
          db:Destroy()
        end)
        local b = Instance.new("Part")
        nooutline(b)
        b.Size = Vector3.new(0.2, 0.2, 0.2)
        b.Transparency = 0.25
        b.Anchored = true
        b.CanCollide = false
        b.BrickColor = BrickColor.new("Institutional white")
        b.Locked = true
        b.CFrame = horp.CFrame * CFrame.new(rd2(-1, 1), rd2(-2, 2), rd2(-1, 1))
        b.Parent = modz
        local c = Instance.new("SpecialMesh")
        c.MeshType = "Sphere"
        c.Scale = Vector3.new(3.5, 3.5, 3.5)
        c.Parent = b
        game.Debris:AddItem(b, 1)
        if bodyfdire then
          local boopyve = Instance.new("BodyVelocity")
          boopyve.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
          boopyve.P = math.huge
          boopyve.Velocity = bodyfdire
          boopyve.Parent = horp
          game.Debris:AddItem(boopyve, debtim)
        end
        local bet = Instance.new("Sound")
        bet.Pitch = rd2(9, 11) / 10
        bet.Volume = rd2(12, 14) / 10
        bet.SoundId = "rbxassetid://165604684"
        bet.Parent = b
        bet:Play()
        coroutine.resume(coroutine.create(function()
          for _ = 1, 5 do
            swait()
            b.Transparency = b.Transparency + 0.15
            c.Scale = c.Scale + Vector3.new(0.8 * dmg, 0.8 * dmg, 0.8 * dmg)
          end
        end))
      end
    end
  end
end
function tagability(partoz, magn)
  for _, guy in pairs(workspace:GetChildren()) do
    if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("derbaba") == nil and guy:FindFirstChildOfClass("ForceField") == nil then
      do
        local humz = guy:FindFirstChild("Humanoid")
        humz.PlatformStand = true
        delay(1, function()
          humz.PlatformStand = false
        end)
        local horp = guy:FindFirstChild("HumanoidRootPart")
        local db = Instance.new("StringValue")
        db.Name = "dedrbaba"
        db.Parent = horp
        local bodyrot = Instance.new("BodyAngularVelocity")
        bodyrot.MaxTorque = Vector3.new(99999, 99999, 99999)
        bodyrot.P = math.huge
        bodyrot.AngularVelocity = Vector3.new(0, 5, 50)
        bodyrot.Parent = horp
        local hL, tL, aL, bL, cL, dL
        game.Debris:AddItem(bodyrot, 0.2)
        if guy:FindFirstChild("Head") then
          hL = guy:FindFirstChild("Head")
          hL.BrickColor = BrickColor.new("Bright yellow")
        end
        if guy:FindFirstChild("Torso") then
          tL = guy:FindFirstChild("Torso")
          tL.BrickColor = BrickColor.new("Bright blue")
        end
        if guy:FindFirstChild("Left Arm") then
          aL = guy:FindFirstChild("Left Arm")
          aL.BrickColor = BrickColor.new("Bright yellow")
        end
        if guy:FindFirstChild("Right Arm") then
          bL = guy:FindFirstChild("Right Arm")
          bL.BrickColor = BrickColor.new("Bright yellow")
        end
        if guy:FindFirstChild("Left Leg") then
          cL = guy:FindFirstChild("Left Leg")
          cL.BrickColor = BrickColor.new("Br. yellowish green")
        end
        if guy:FindFirstChild("Right Leg") then
          dL = guy:FindFirstChild("Right Leg")
          dL.BrickColor = BrickColor.new("Br. yellowish green")
        end
        coroutine.resume(coroutine.create(function()
          if aL then
            aL.Name = "Right Arm"
            wait()
          end
          if bL then
            bL.Name = "Left Leg"
            wait()
          end
          if cL then
            cL.Name = "Left Arm"
            wait()
          end
          if dL then
            dL.Name = "Right Leg"
          end
        end))
      end
    end
  end
end
mouse.KeyDown:connect(function(key)
  if human.Health <= 0 then
    return
  end
  if key == "f" then
    standappear(thenoob)
  end
  if key == "r" then
    MUDA()
  end
  if key == "e" then
    block()
  end
  if key == "v" then
    cability()
  end
  if key == "m" and plr.UserId then
    THEBEST()
  end
  if key == "j" then
    THREATENING()
  end
  if key == "k" then
    konodioda:Play()
  end
  if key == "l" then
    bast:Play()
  end
  if key == "p" then
    zaworld:Play()
  end
end)
tool.Equipped:connect(function()
  selected = true
end)
tool.Unequipped:connect(function()
  selected = false
end)
sine = 0
charge = 1
cos = math.cos
game:GetService("RunService").RenderStepped:connect(function()
  if POSU == false then
    local checkfloor = Ray.new(hrp.Position, hrp.CFrame.upVector * -4)
    local checkpart = workspace:FindPartOnRayWithIgnoreList(checkfloor, {chr}, false, false)
    local checkstate = human:GetState()
    if checkstate.Value == 13 then
      animpose = "Sitting"
    elseif hrp.Velocity.y > 1 and checkpart == nil then
      animpose = "Jumping"
    elseif hrp.Velocity.y < -1 and checkpart == nil then
      animpose = "Falling"
    elseif 1 > (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude then
      animpose = "Idle"
    elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 35 then
      animpose = "Walking"
    elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude > 35 then
      animpose = "TooFast"
    end
    if animpose == "Idle" then
      sine = sine + charge
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.03 * cos(sine / 60)) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(3 - 3 * cos(sine / 60)), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(2 - 2 * cos(sine / 60)), rd(2 - 2 * cos(sine / 60)), rd(2 * cos(sine / 60))), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(2 - 2 * cos(sine / 60)), rd(-2 - 2 * cos(sine / 60)), rd(2 * cos(sine / 60))), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-3 - 1 * cos(sine / 60)), rd(-5 - 1 * cos(sine / 60)), rd(1 * cos(sine / 60))), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-3 - 1 * cos(sine / 60)), rd(5 - 1 * cos(sine / 60)), rd(1 * cos(sine / 60))), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    if animpose == "Walking" then
      sine = sine + charge
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.03 * cos(sine / 60)) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(3 - 3 * cos(sine / 60)), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-2 - 2 * cos(sine / 60)), rd(2 - 2 * cos(sine / 60)), rd(30 * cos(sine / 10))), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-2 - 2 * cos(sine / 60)), rd(-2 - 2 * cos(sine / 60)), rd(30 * cos(sine / 10))), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(-1 - 1 * cos(sine / 60)), rd(-30 * cos(sine / 10))), 0.6)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(1 - 1 * cos(sine / 60)), rd(-30 * cos(sine / 10))), 0.6)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    if animpose == "Jumping" then
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(7), rd(-5), rd(2)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(7), rd(5), rd(-3)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-10)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(20)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    if animpose == "Falling" then
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-6), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(7), rd(-5), rd(2)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(7), rd(5), rd(-3)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(10)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(-0.65, 0.75, 0) * ang(rd(0), rd(0), rd(20)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    if animpose == "TooFast" then
      lerpz(RJ, "C0", RJC0 * cf(0, 0, -1.5) * ang(rd(20), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(-10), rd(-10)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, -0.75, 0) * ang(rd(10), rd(-80), rd(-10)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(30), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0.75, 1.5, 0) * ang(rd(0), rd(0), rd(30)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(50)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    if animpose == "Sitting" then
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
  end
  if appeared == false and activu == false then
    lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nRS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  elseif appeared == true and activu == false then
    sine = sine + charge
    lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0.05 * cos(sine / 90)) * ang(rd(1 - 1 * cos(sine / 90)), rd(0), rd(-5)), 0.3)
    lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(2 - 2 * cos(sine / 90)), rd(0), rd(4)), 0.3)
    lerpz(nRS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(2 * cos(sine / 110)), rd(-3 - 3 * cos(sine / 100)), rd(0)), 0.3)
    lerpz(nRS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nLS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(2 * cos(sine / 110)), rd(3 - 3 * cos(sine / 100)), rd(0)), 0.3)
    lerpz(nLS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nRH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-2 - 2 * cos(sine / 100)), rd(-3 - 3 * cos(sine / 100)), rd(-2 - 2 * cos(sine / 100))), 0.3)
    lerpz(nRH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    lerpz(nLH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-2 - 2 * cos(sine / 100)), rd(3 - 3 * cos(sine / 100)), rd(2 - 2 * cos(sine / 100))), 0.3)
    lerpz(nLH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  end
end)
function dispose()
  for i, v in pairs(getfenv(0)) do
    v = nil
  end
  error = nil
  print = nil
  warn = nil
end
human.Died:connect(dispose)
chr.Changed:connect(function()
  if chr.Parent == nil then
    dispose()
  end
end)