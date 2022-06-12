local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------
hed.face.Texture = "rbxassetid://33395282"
char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=513620832"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=513621366"
end)
----------------------------------------------------
LoudVolume = false
Submerged = false
Music = true
script.Name = "GOKU"
Player = game.Players.LocalPlayer
c = game.Players.LocalPlayer.Character
Head = c.Head
anim = c.Humanoid.Animator
Humanoid = c:findFirstChild("Humanoid")
Humanoid.Name = "InfiniteBeing"
b23 = Instance.new("BoolValue", c)
b23.Name = "InfiniteHuman"
rage = false
p = game.Players.LocalPlayer
Music = false
local Effects = {}
attack = false
local attacking = false
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random
mouse = Player:GetMouse()
RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RS = c.Torso:FindFirstChild("Right Shoulder")
LS = c.Torso:FindFirstChild("Left Shoulder")
RH = c.Torso:FindFirstChild("Right Hip")
LH = c.Torso:FindFirstChild("Left Hip")
RJ = c.HumanoidRootPart:FindFirstChild("RootJoint")
N = c.Torso:FindFirstChild("Neck")
cf = CFrame.new
ang = CFrame.Angles
rd = math.rad
rd2 = math.random
function swait(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end
function lerpz(joint, prop, cfrmz, alp)
  joint[prop] = joint[prop]:lerp(cfrmz, alp)
end
function resetlerp()
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
end
for _, c in pairs(c:children()) do
  if c.className == "Accessory" then
    c.Parent = nil
  end
end
local S2 = Instance.new("Sound", c.HumanoidRootPart)
S2.SoundId = ""
S2.Volume = 0
S2.Looped = true
local P = Instance.new("Part", c)
P.CanCollide = false
P.Size = Vector3.new(0.2, 0.2, 0.2)
P.BrickColor = BrickColor.new("Really black")
local M = Instance.new("SpecialMesh", P)
M.MeshId = "rbxassetid://884095858"
M.Scale = Vector3.new(0.04, 0.04, 0.04)
M.Offset = Vector3.new(-0.225, 0.65, -0.1)
local W = Instance.new("Weld", c.Head)
W.Part0 = c.Head
W.Part1 = P
W.C0 = CFrame.Angles(0, math.rad(180), 0)
trazx = Instance.new("ParticleEmitter")
function New(Object, Parent, Name, Data)
  local Object = Instance.new(Object)
  for Index, Value in pairs(Data or {}) do
    Object[Index] = Value
  end
  Object.Parent = Parent
  Object.Name = Name
  return Object
end
Form = "None"
function SSJB()
  if Form == "None" then
    Form = "SSJB"
hed.face.Texture = "rbxassetid://439123785"
    attack = true
    anim.Parent = nil
    for i = 1, 35 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, -0.5) * ang(rd(-45), rd(0), rd(140)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, -0.5) * ang(rd(-45), rd(0), rd(-140)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(-25)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(25)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    local S = Instance.new("Sound", c.HumanoidRootPart)
    S.SoundId = "rbxassetid://263260463"
    S.Volume = 1
    S:Play()
    local S2 = Instance.new("Sound", c.HumanoidRootPart)
    S2.SoundId = "rbxassetid://600060450"
    S2.Looped = true
    S2:Play()
    for i = 1, 15 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.35) * ang(rd(10), rd(0), rd(0)), 0.5)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(35), rd(0), rd(0)), 0.5)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-5), rd(5), rd(45)), 0.5)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5), rd(-5), rd(-45)), 0.5)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(RH, "C0", RHC0 * cf(0.35, 0.35, 0.05) * ang(rd(0), rd(-10), rd(10)), 0.5)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(LH, "C0", LHC0 * cf(-0.35, 0.35, 0.05) * ang(rd(0), rd(10), rd(-10)), 0.5)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    end
    for i, v in pairs(c:children()) do
      if v.ClassName == "Part" then
        local tra = trazx:clone()
        tra.Parent = v
        tra.LightEmission = 1
        tra.Color = ColorSequence.new(Color3.new(0, 0.6666666666666666, 1))
        tra.Rate = 15
        tra.Rotation = NumberRange.new(-5, 5)
        tra.Lifetime = NumberRange.new(1.5, 2)
        tra.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.1, 0),
          NumberSequenceKeypoint.new(1, 0, 0)
        })
        tra.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 1, 0),
          NumberSequenceKeypoint.new(0.135, 0, 0),
          NumberSequenceKeypoint.new(0.875, 0, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        tra.Speed = NumberRange.new(0.5)
        tra.VelocitySpread = 360
        tra.VelocityInheritance = 0.5
        tra.ZOffset = 2
        tra.Acceleration = Vector3.new(0, 2.5, 0)
      end
    end
    local tra = trazx:clone()
    tra.Parent = c.HumanoidRootPart
    tra.Texture = "rbxassetid://347730682"
    tra.LightEmission = 0.8
    tra.Color = ColorSequence.new(Color3.new(0, 0.6666666666666666, 1))
    tra.Rate = 250
    tra.Rotation = NumberRange.new(-5, 5)
    tra.Lifetime = NumberRange.new(0.75)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 4.81, 0.875),
      NumberSequenceKeypoint.new(1, 2.13, 0.875)
    })
    tra.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1, 0),
      NumberSequenceKeypoint.new(0.0399, 0.85, 0),
      NumberSequenceKeypoint.new(0.394, 0.9, 0),
      NumberSequenceKeypoint.new(0.699, 1, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    tra.Speed = NumberRange.new(15)
    tra.VelocitySpread = 360
    tra.VelocityInheritance = 0.5
    tra.ZOffset = 3.5
    tra.Acceleration = Vector3.new(0, 25, 0)
    for i = 1, 25 do
      for i = 1, 3 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.4) * ang(rd(12), rd(0), rd(0)), 0.5)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(35), rd(0), rd(0)), 0.5)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-15), rd(5), rd(50)), 0.5)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-15), rd(-5), rd(-50)), 0.5)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C0", RHC0 * cf(0.35, 0.35, 0.05) * ang(rd(0), rd(-12), rd(12)), 0.5)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LH, "C0", LHC0 * cf(-0.35, 0.35, 0.05) * ang(rd(0), rd(12), rd(-12)), 0.5)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      end
      for i = 1, 3 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.35) * ang(rd(10), rd(0), rd(0)), 0.5)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(35), rd(0), rd(0)), 0.5)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-15), rd(5), rd(45)), 0.5)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-15), rd(-5), rd(-45)), 0.5)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C0", RHC0 * cf(0.35, 0.35, 0.05) * ang(rd(0), rd(-10), rd(10)), 0.5)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LH, "C0", LHC0 * cf(-0.35, 0.35, 0.05) * ang(rd(0), rd(10), rd(-10)), 0.5)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      end
    end
    local S3 = Instance.new("Sound", c.HumanoidRootPart)
    S3.SoundId = "rbxassetid://740811119"
    S3.Volume = 10
    S3:Play()
    S2.SoundId = "rbxassetid://600060450"
    S2:Play()
    local SE = Instance.new("ChorusSoundEffect", S3)
    tra.LightEmission = 0.8
    tra.Color = ColorSequence.new(Color3.new(0, 0.6666666666666666, 1))
    tra.Rate = 250
    tra.Rotation = NumberRange.new(-5, 5)
    tra.Lifetime = NumberRange.new(0.2, 0.4)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 4.81, 0.875),
      NumberSequenceKeypoint.new(1, 2.13, 0.875)
    })
    tra.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1, 0),
      NumberSequenceKeypoint.new(0.0399, 0.8, 0),
      NumberSequenceKeypoint.new(0.394, 0.8, 0),
      NumberSequenceKeypoint.new(0.699, 1, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    tra.Speed = NumberRange.new(5)
    tra.VelocitySpread = 360
    tra.VelocityInheritance = 0.5
    tra.ZOffset = 3.5
    tra.Acceleration = Vector3.new(0, 150, 0)
    P.BrickColor = BrickColor.new("Carnation pink")
    W.C0 = CFrame.Angles(0, 0, 0)
    P.Material = "Neon"
    local M = Instance.new("SpecialMesh", P)
    M.MeshId = "rbxassetid://560718478"
    M.Scale = Vector3.new(6.25, 6.25, 6.25)
    M.Offset = Vector3.new(-0.05, 0.9, 0.5)
    local s = Instance.new("Sound", c.Head)
    s.SoundId = "rbxassetid://568141359"
    s.Volume = 1
    s.Looped = true
    s:play()
    for i = 1, 50 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, -0.5) * ang(rd(-25), rd(0), rd(-25)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, -0.5) * ang(rd(-25), rd(0), rd(25)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(-25)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(25)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    resetlerp()
    attack = false
    anim.Parent = Humanoid
  elseif Form == "SSJB" then
    Form = "Kaioken"
    attack = true
    anim.Parent = nil
    for i = 1, 35 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, -0.5) * ang(rd(-45), rd(0), rd(140)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, -0.5) * ang(rd(-45), rd(0), rd(-140)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(-25)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(25)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    local S = Instance.new("Sound", c.HumanoidRootPart)
    S.SoundId = "rbxassetid://263260463"
    S.Volume = 1
    S:Play()
    S2.SoundId = "rbxassetid://336074463"
    S2:Play()
    for i = 1, 15 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.35) * ang(rd(10), rd(0), rd(0)), 0.5)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(35), rd(0), rd(0)), 0.5)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-5), rd(5), rd(45)), 0.5)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5), rd(-5), rd(-45)), 0.5)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(RH, "C0", RHC0 * cf(0.35, 0.35, 0.05) * ang(rd(0), rd(-10), rd(10)), 0.5)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(LH, "C0", LHC0 * cf(-0.35, 0.35, 0.05) * ang(rd(0), rd(10), rd(-10)), 0.5)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    end
    local tra = trazx:clone()
    tra.Parent = c.HumanoidRootPart
    tra.Texture = "rbxassetid://347730682"
    tra.LightEmission = 0.8
    tra.Color = ColorSequence.new(Color3.new(1, 0, 0))
    tra.Rate = 250
    tra.Rotation = NumberRange.new(-5, 5)
    tra.Lifetime = NumberRange.new(0.3)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 8, 0.875),
      NumberSequenceKeypoint.new(1, 10, 0.875)
    })
    tra.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1, 0),
      NumberSequenceKeypoint.new(0.0399, 0.531, 0),
      NumberSequenceKeypoint.new(0.394, 0.906, 0),
      NumberSequenceKeypoint.new(0.699, 1, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    tra.Speed = NumberRange.new(75)
    tra.VelocitySpread = 360
    tra.VelocityInheritance = 0.5
    tra.ZOffset = 3
    tra.Acceleration = Vector3.new(0, 350, 0)
    local S4 = Instance.new("Sound", c.HumanoidRootPart)
    S4.SoundId = "rbxassetid://738749992"
    S4.Volume = 5
    S4:Play()
    for i = 1, 2 do
      local SE = Instance.new("ChorusSoundEffect", S4)
    end
    for i = 1, 23 do
      for i = 1, 3 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.4) * ang(rd(12), rd(0), rd(0)), 1)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(35), rd(0), rd(0)), 1)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-15), rd(5), rd(50)), 1)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-15), rd(-5), rd(-50)), 1)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        lerpz(RH, "C0", RHC0 * cf(0.35, 0.35, 0.05) * ang(rd(0), rd(-12), rd(12)), 1)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        lerpz(LH, "C0", LHC0 * cf(-0.35, 0.35, 0.05) * ang(rd(0), rd(12), rd(-12)), 1)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
      end
      for i = 1, 3 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.35) * ang(rd(10), rd(0), rd(0)), 1)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(35), rd(0), rd(0)), 1)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-15), rd(5), rd(45)), 1)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-15), rd(-5), rd(-45)), 1)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        lerpz(RH, "C0", RHC0 * cf(0.35, 0.35, 0.05) * ang(rd(0), rd(-10), rd(10)), 1)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        lerpz(LH, "C0", LHC0 * cf(-0.35, 0.35, 0.05) * ang(rd(0), rd(10), rd(-10)), 1)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
      end
    end
    local S3 = Instance.new("Sound", c.HumanoidRootPart)
    S3.SoundId = "rbxassetid://590580746"
    S3.Volume = 1.5
    S3:Play()
    S2.SoundId = "rbxassetid://590580496"
    S2:Play()
    tra.LightEmission = 0.8
    tra.Color = ColorSequence.new(Color3.new(1, 0, 0))
    tra.Rate = 250
    tra.Rotation = NumberRange.new(-5, 5)
    tra.Lifetime = NumberRange.new(0.3)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 8, 0.875),
      NumberSequenceKeypoint.new(1, 10, 0.875)
    })
    tra.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1, 0),
      NumberSequenceKeypoint.new(0.0399, 0.531, 0),
      NumberSequenceKeypoint.new(0.394, 0.906, 0),
      NumberSequenceKeypoint.new(0.699, 1, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    tra.Speed = NumberRange.new(25)
    tra.VelocitySpread = 360
    tra.VelocityInheritance = 0.5
    tra.ZOffset = 3
    tra.Acceleration = Vector3.new(0, 350, 0)
    for i = 1, 50 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, -0.5) * ang(rd(-25), rd(0), rd(-25)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, -0.5) * ang(rd(-25), rd(0), rd(25)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(-25)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(25)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    resetlerp()
    attack = false
    anim.Parent = Humanoid
  end
end
ButtonDown = false
CombatDebounce = false
Combo = 1
mouse.Button1Down:connect(function()
  if CombatDebounce == true then
    return
  end
  CombatDebounce = true
  ButtonDown = true
  if Form == "None" then
    local SP = Instance.new("Sound", c.HumanoidRootPart)
    SP.SoundId = "rbxassetid://696622391"
    SP.PlaybackSpeed = math.random(90, 120) / 100
    SP.Volume = 5
    SP:Play()
    for i, v in pairs(game.Workspace:children()) do
      if v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("HumanoidRootPart") ~= nil and v ~= c and v.HumanoidRootPart.Position - c.HumanoidRootPart.Position.magnitude <= 6 then
        v.Humanoid.Health = v.Humanoid.Health - 15
      end
    end
    if Combo == 1 then
      Combo = 2
      for i = 1, 3 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(15), rd(60)), 0.8)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-60)), 0.8)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-60), rd(110)), 0.8)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(RH, "C0", RHC0 * cf(0.5, 0.75, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(45)), 0.8)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
      end
      for i = 1, 4 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(15), rd(100)), 0.5)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-100)), 0.5)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-80), rd(90)), 0.5)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C0", RHC0 * cf(0.5, 0.75, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(45)), 0.5)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      end
      CombatDebounce = false
      for i = 1, 2 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
      end
    elseif Combo == 2 then
      Combo = 3
      for i = 1, 3 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(-25), rd(-80)), 0.8)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(40)), 0.8)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(40), rd(-80)), 0.8)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(40), rd(-60)), 0.8)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
      end
      for i = 1, 4 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(-25), rd(-160)), 0.5)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(60)), 0.5)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(60), rd(-90)), 0.5)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(60), rd(-95)), 0.5)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      end
      CombatDebounce = false
      for i = 1, 2 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
      end
    elseif Combo == 3 then
      Combo = 4
      for i = 1, 3 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(25), rd(80)), 0.8)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(40)), 0.8)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(40), rd(-80)), 0.8)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(40), rd(-60)), 0.8)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
      end
      for i = 1, 4 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(25), rd(160)), 0.5)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(60)), 0.5)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(60), rd(-90)), 0.5)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(60), rd(-95)), 0.5)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      end
      CombatDebounce = false
      for i = 1, 2 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
      end
    elseif Combo == 4 then
      Combo = 1
      for i = 1, 3 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(25), rd(-80)), 0.8)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(40)), 0.8)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(40), rd(80)), 0.8)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(40), rd(-60)), 0.8)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.8)
      end
      for i = 1, 4 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(25), rd(-160)), 0.5)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(60)), 0.5)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(60), rd(90)), 0.5)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(60), rd(-95)), 0.5)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      end
      CombatDebounce = false
      for i = 1, 2 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
      end
    end
  else
    while ButtonDown == true do
      local SP = Instance.new("Sound", c.HumanoidRootPart)
      SP.SoundId = "rbxassetid://696622391"
      SP.PlaybackSpeed = math.random(90, 120) / 100
      SP.Volume = 5
      SP:Play()
      for i, v in pairs(game.Workspace:children()) do
        if v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("HumanoidRootPart") ~= nil and v ~= c and v.HumanoidRootPart.Position - c.HumanoidRootPart.Position.magnitude <= 6 then
          v.Humanoid.Health = v.Humanoid.Health - 15
        end
      end
      if Combo == 1 then
        Combo = 2
        for i = 1, 1 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.random(-180, 180))), 1)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-math.random(-180, 180))), 1)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-60), rd(110)), 1)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(RH, "C0", RHC0 * cf(0.5, 0.75, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(45)), 1)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        end
        for i = 1, 2 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.random(-180, 180))), 0.75)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-math.random(-180, 180))), 0.75)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RH, "C0", RHC0 * cf(0.5, 0.75, 0) * ang(rd(math.random(-90, 90)), rd(math.random(-90, 90)), rd(0)), 0.75)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
        end
        CombatDebounce = false
        for i = 1, 2 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
        end
      elseif Combo == 2 then
        Combo = 3
        for i = 1, 1 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-math.random(-180, 180))), 1)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.random(-180, 180))), 1)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(-math.random(-90, 90))), 1)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 1)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 1)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(-math.random(-90, 90))), 1)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        end
        for i = 1, 3 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-math.random(-180, 180))), 0.5)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.random(-180, 180))), 0.5)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(-math.random(-90, 90))), 0.5)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.5)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.5)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(-math.random(-90, 90))), 0.5)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
        end
        CombatDebounce = false
        for i = 1, 2 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
        end
      elseif Combo == 3 then
        Combo = 4
        for i = 1, 1 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.random(-180, 180))), 1)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.random(-180, 180))), 1)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(-math.random(-90, 90))), 1)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 1)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(-math.random(-90, 90))), 1)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        end
        for i = 1, 3 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(160)), 0.75)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(60)), 0.75)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(-math.random(-90, 90))), 0.75)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(-math.random(-90, 90))), 0.75)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
        end
        CombatDebounce = false
        for i = 1, 2 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
        end
      elseif Combo == 4 then
        Combo = 1
        for i = 1, 1 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-math.random(-180, 180))), 1)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.random(-180, 180))), 1)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 1)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 1)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 1)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 1)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
        end
        for i = 1, 3 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-math.random(-180, 180))), 0.76)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.random(-180, 180))), 0.76)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(math.random(-90, 90)), rd(math.random(-90, 90))), 0.75)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.75)
        end
        CombatDebounce = false
        for i = 1, 2 do
          swait()
          lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
          lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.76)
        end
      end
    end
  end
  resetlerp()
end)
mouse.Button1Up:connect(function()
  ButtonDown = false
end)
function Kamehameha()
  resetlerp()
  CombatDebounce = true
  attack = true
  anim.Parent = nil
  c.HumanoidRootPart.Anchored = true
  local P = Instance.new("Part", c)
  P.CanCollide = false
  P.Size = Vector3.new(0.2, 0.2, 0.2)
  P.Transparency = 1
  local W2 = Instance.new("Weld", c["Right Arm"])
  W2.Part0 = c["Right Arm"]
  W2.Part1 = P
  W2.C0 = CFrame.new(0, -1, 0)
  local tra
  if Form == "Kaioken" then
    tra = trazx:clone()
    tra.Parent = P
    tra.LightEmission = 1
    tra.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.new(0, 0.6666666666666666, 1)),
      ColorSequenceKeypoint.new(0.5, Color3.new(0.3843137254901961, 0.8666666666666667, 1)),
      ColorSequenceKeypoint.new(1, Color3.new(1, 0.19607843137254902, 1))
    })
    tra.Rate = 50
    tra.Rotation = NumberRange.new(-360, 360)
    tra.Lifetime = NumberRange.new(1)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.273, 0),
      NumberSequenceKeypoint.new(0.779, 0.984, 0.492),
      NumberSequenceKeypoint.new(1, 3.06, 0)
    })
    tra.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1, 0),
      NumberSequenceKeypoint.new(0.135, 0, 0),
      NumberSequenceKeypoint.new(0.862, 0, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    tra.Speed = NumberRange.new(0)
    tra.VelocitySpread = 360
    tra.LockedToPart = true
    tra.ZOffset = 3.6
  else
    tra = trazx:clone()
    tra.Parent = P
    tra.LightEmission = 1
    tra.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.new(0, 0.6666666666666666, 1)),
      ColorSequenceKeypoint.new(0.5, Color3.new(0.3843137254901961, 0.8666666666666667, 1)),
      ColorSequenceKeypoint.new(1, Color3.new(0, 0.6666666666666666, 1))
    })
    tra.Rate = 50
    tra.Rotation = NumberRange.new(-360, 360)
    tra.Lifetime = NumberRange.new(1)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.273, 0),
      NumberSequenceKeypoint.new(0.779, 0.984, 0.492),
      NumberSequenceKeypoint.new(1, 3.06, 0)
    })
    tra.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1, 0),
      NumberSequenceKeypoint.new(0.135, 0, 0),
      NumberSequenceKeypoint.new(0.862, 0, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    tra.Speed = NumberRange.new(0)
    tra.VelocitySpread = 360
    tra.LockedToPart = true
    tra.ZOffset = 3.6
  end
  local S4 = Instance.new("Sound", c.HumanoidRootPart)
  S4.SoundId = "rbxassetid://825760017"
  S4.Volume = 1
  S4:Play()
  for i = 1, 300 do
    swait()
    c.HumanoidRootPart.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(0, 0, 0)).p, mouse.hit.p)
    lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(15), rd(-5), rd(-90)), 0.5)
    lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.5)
    lerpz(RS, "C0", RSC0 * cf(0, 0.25, 0) * ang(rd(35), rd(15), rd(35)), 0.5)
    lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LS, "C0", LSC0 * cf(0, 0.25, -0.5) * ang(rd(65), rd(15), rd(-35)), 0.5)
    lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(5)), 0.5)
    lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(-5)), 0.5)
    lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  if Form == "Kaioken" then
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0, 0),
      NumberSequenceKeypoint.new(0.4, 6.92, 0.492),
      NumberSequenceKeypoint.new(1, 3.44, 0)
    })
  else
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0, 0),
      NumberSequenceKeypoint.new(0.275, 4.92, 0.492),
      NumberSequenceKeypoint.new(1, 1.44, 0)
    })
  end
  W2.C0 = CFrame.new(0, -2.5, 0)
  S4:Stop()
  S4.SoundId = "rbxassetid://256643436"
  S4:Play()
  S4.Volume = 5
  tra.ZOffset = 3.6
  for i = 1, 4 do
    swait()
    lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(30), rd(90)), 0.5)
    lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(-30), rd(-90)), 0.5)
    lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.5)
    lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.5)
    lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  local PE, PE3
  if Form ~= "Kaioken" then
    PE = Instance.new("Part", c)
    PE.Size = Vector3.new(2, 2, 2)
    PE.Material = "Neon"
    PE.BrickColor = BrickColor.new("Light blue")
    PE.CanCollide = false
    PE.Anchored = true
  else
    PE = Instance.new("Part", c)
    PE.Size = Vector3.new(4, 4, 4)
    PE.Material = "Neon"
    PE.BrickColor = BrickColor.new("Bright red")
    PE.CanCollide = false
    PE.Anchored = true
    PE3 = Instance.new("Part", c)
    PE3.Size = Vector3.new(4.1, 4.1, 4.1)
    PE3.Material = "Neon"
    PE3.Transparency = 0.5
    PE3.BrickColor = BrickColor.new("Light blue")
    PE3.CanCollide = false
    PE3.Anchored = true
  end
  local Charge2 = 0
  for i = 1, 100 do
    Charge2 = Charge2 + 1
    PE.Size = PE.Size + Vector3.new(0, 0, 2)
    if Form == "Kaioken" then
      PE3.Size = PE3.Size + Vector3.new(0, 0, 2)
    end
    PE.Touched:connect(function(Hit)
      if Hit.Anchored == false and Hit.Parent ~= c then
        local BV2 = Instance.new("BodyVelocity", Hit)
        BV2.Velocity = c.HumanoidRootPart.CFrame.lookVector * 400
        BV2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        game.Debris:AddItem(BV2, 0.5)
      end
      swait()
    end)
    if Form == "Kaioken" then
      PE3.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2 + -2 * Charge2)
      PE.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2 + -2 * Charge2)
    else
      PE.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2 + -2 * Charge2)
    end
    swait()
  end
  tra.Enabled = false
  for i = 1, 80 do
    Charge2 = Charge2 + 1
    if Form == "Kaioken" then
      PE3.Size = PE3.Size + Vector3.new(-0.025, -0.025, 4)
      PE3.Velocity = Vector3.new(0, 0, 0)
      PE3.Transparency = PE3.Transparency + 0.0125
      PE.Size = PE.Size + Vector3.new(-0.025, -0.025, 4)
      PE.Velocity = Vector3.new(0, 0, 0)
      PE.Transparency = PE.Transparency + 0.0125
      PE3.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2 + -2 * Charge2)
      PE.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2 + -2 * Charge2)
    else
      PE.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2 + -2 * Charge2)
      PE.Size = PE.Size + Vector3.new(-0.025, -0.025, 4)
      PE.Velocity = Vector3.new(0, 0, 0)
      PE.Transparency = PE.Transparency + 0.0125
    end
    swait()
  end
  P:remove()
  PE:remove()
  c.HumanoidRootPart.Anchored = false
  if Form == "Kaioken" then
    PE3:remove()
  end
  anim.Parent = Humanoid
  resetlerp()
  attack = false
  CombatDebounce = false
end
function SuperKamehameha()
  resetlerp()
  CombatDebounce = true
  attack = true
  anim.Parent = nil
  c.HumanoidRootPart.Anchored = true
  local P = Instance.new("Part", c)
  P.CanCollide = false
  P.Size = Vector3.new(0.2, 0.2, 0.2)
  P.Transparency = 1
  local W2 = Instance.new("Weld", c["Right Arm"])
  W2.Part0 = c["Right Arm"]
  W2.Part1 = P
  W2.C0 = CFrame.new(0, -1, 0)
  local tra
  if Form == "Kaioken" then
    tra = trazx:clone()
    tra.Parent = P
    tra.LightEmission = 1
    tra.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.new(0, 0.6666666666666666, 1)),
      ColorSequenceKeypoint.new(0.5, Color3.new(0.3843137254901961, 0.8666666666666667, 1)),
      ColorSequenceKeypoint.new(1, Color3.new(1, 0.19607843137254902, 0.7843137254901961))
    })
    tra.Rate = 50
    tra.Rotation = NumberRange.new(-360, 360)
    tra.Lifetime = NumberRange.new(0.5)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.4, 0),
      NumberSequenceKeypoint.new(0.779, 2, 0.492),
      NumberSequenceKeypoint.new(1, 4.5, 0)
    })
    tra.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1, 0),
      NumberSequenceKeypoint.new(0.135, 0, 0),
      NumberSequenceKeypoint.new(0.862, 0, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    tra.Speed = NumberRange.new(0)
    tra.VelocitySpread = 360
    tra.LockedToPart = true
    tra.ZOffset = 3.6
  else
    tra = trazx:clone()
    tra.Parent = P
    tra.LightEmission = 1
    tra.Color = ColorSequence.new({
      ColorSequenceKeypoint.new(0, Color3.new(0, 0.6666666666666666, 1)),
      ColorSequenceKeypoint.new(0.5, Color3.new(0.3843137254901961, 0.8666666666666667, 1)),
      ColorSequenceKeypoint.new(1, Color3.new(0, 0.6666666666666666, 1))
    })
    tra.Rate = 50
    tra.Rotation = NumberRange.new(-360, 360)
    tra.Lifetime = NumberRange.new(0.5)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.4, 0),
      NumberSequenceKeypoint.new(0.779, 2, 0.492),
      NumberSequenceKeypoint.new(1, 4.5, 0)
    })
    tra.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1, 0),
      NumberSequenceKeypoint.new(0.135, 0, 0),
      NumberSequenceKeypoint.new(0.862, 0, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    tra.Speed = NumberRange.new(0)
    tra.VelocitySpread = 360
    tra.LockedToPart = true
    tra.ZOffset = 3.6
  end
  local S4 = Instance.new("Sound", P)
  S4.SoundId = "rbxassetid://858904104"
  S4.Volume = 2.5
  S4:Play()
  for i = 1, 300 do
    swait()
    c.HumanoidRootPart.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(0, 0, 0)).p, mouse.hit.p)
    lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(15), rd(-5), rd(-90)), 0.5)
    lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.5)
    lerpz(RS, "C0", RSC0 * cf(0, 0.25, 0) * ang(rd(35), rd(15), rd(35)), 0.5)
    lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LS, "C0", LSC0 * cf(0, 0.25, -0.5) * ang(rd(65), rd(15), rd(-35)), 0.5)
    lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(5)), 0.5)
    lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(-5)), 0.5)
    lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  if Form == "Kaioken" then
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 14, 0),
      NumberSequenceKeypoint.new(0.275, 14, 0.492),
      NumberSequenceKeypoint.new(1, 14, 0)
    })
  else
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 10, 0),
      NumberSequenceKeypoint.new(0.275, 10, 0.492),
      NumberSequenceKeypoint.new(1, 10, 0)
    })
  end
  W2:remove()
  P.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
  P.Anchored = true
  S4:Stop()
  S4.SoundId = "rbxassetid://870984991"
  S4:Play()
  S4.Volume = 5
  tra.ZOffset = 3.6
  for i = 1, 4 do
    swait()
    lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(30), rd(90)), 0.5)
    lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(-30), rd(-90)), 0.5)
    lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.5)
    lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(0)), 0.5)
    lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  local PE, PE3
  if Form ~= "Kaioken" then
    PE = Instance.new("Part", c)
    PE.Size = Vector3.new(5, 5, 5)
    PE.Material = "Neon"
    PE.BrickColor = BrickColor.new("Light blue")
    PE.CanCollide = false
    PE.Anchored = true
  else
    PE = Instance.new("Part", c)
    PE.Size = Vector3.new(9, 9, 9)
    PE.Material = "Neon"
    PE.BrickColor = BrickColor.new("Bright red")
    PE.CanCollide = false
    PE.Anchored = true
    PE3 = Instance.new("Part", c)
    PE3.Size = Vector3.new(9.1, 9.1, 9.1)
    PE3.Material = "Neon"
    PE3.Transparency = 0.5
    PE3.BrickColor = BrickColor.new("Light blue")
    PE3.CanCollide = false
    PE3.Anchored = true
  end
  local Charge2 = 0
  for i = 1, 100 do
    Charge2 = Charge2 + 1
    PE.Size = PE.Size + Vector3.new(0, 0, 4)
    if Form == "Kaioken" then
      PE3.Size = PE3.Size + Vector3.new(0, 0, 4)
    end
    PE.Touched:connect(function(Hit)
      if Hit.Anchored == false and Hit.Parent ~= c then
        Hit:remove()
      end
      swait()
    end)
    PE.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -6 + -2 * Charge2)
    if Form == "Kaioken" then
      PE3.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -6 + -2 * Charge2)
    end
    swait()
  end
  tra.Enabled = false
  for i = 1, 80 do
    Charge2 = Charge2 + 1
    PE.Size = PE.Size + Vector3.new(-0.2, -0.2, 4)
    PE.Velocity = Vector3.new(0, 0, 0)
    PE.Transparency = PE.Transparency + 0.025
    PE.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2 * Charge2)
    PE.CFrame = PE.CFrame * CFrame.new(0, 0, -6)
    if Form == "Kaioken" then
      PE3.Size = PE3.Size + Vector3.new(-0.2005, -0.2005, 4)
      PE3.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -6 + -2 * Charge2)
    end
    swait()
  end
  game.Debris:AddItem(PE, 0)
  game.Debris:AddItem(P, 10)
  if Form == "Kaioken" then
    game.Debris:AddItem(PE, 0)
  end
  anim.Parent = Humanoid
  resetlerp()
  c.HumanoidRootPart.Anchored = false
  attack = false
  CombatDebounce = false
end
function FireSpiritBomb(Bomb)
  local Hit = false
  Spawn(function()
    if Hit == true then
      return
    end
    Bomb.CFrame = Bomb.CFrame * CFrame.new(0, 0, -1)
    swait()
  end)
end
function SpiritBomb()
  resetlerp()
  CombatDebounce = true
  attack = true
  anim.Parent = nil
  c.HumanoidRootPart.Anchored = true
  local PE
  PE = Instance.new("Part", c)
  PE.Size = Vector3.new(0.2, 0.2, 0.2)
  PE.Material = "Neon"
  PE.BrickColor = BrickColor.new("Light blue")
  PE.CanCollide = false
  PE.Anchored = true
  PE.Shape = "Ball"
  local P = Instance.new("Part", c)
  P.CanCollide = false
  P.Size = Vector3.new(0.2, 0.2, 0.2)
  P.Transparency = 1
  local tra
  tra = trazx:clone()
  tra.Parent = P
  tra.LightEmission = 1
  tra.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.new(0, 0.6666666666666666, 1)),
    ColorSequenceKeypoint.new(0.5, Color3.new(0.3843137254901961, 0.8666666666666667, 1)),
    ColorSequenceKeypoint.new(1, Color3.new(0, 0.6666666666666666, 1))
  })
  tra.Rate = 50
  tra.Rotation = NumberRange.new(-360, 360)
  tra.Lifetime = NumberRange.new(0.5)
  tra.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.4, 0),
    NumberSequenceKeypoint.new(0.779, 2, 0.492),
    NumberSequenceKeypoint.new(1, 4.5, 0)
  })
  tra.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(0.135, 0, 0),
    NumberSequenceKeypoint.new(0.862, 0, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
  })
  tra.Speed = NumberRange.new(0)
  tra.VelocitySpread = 360
  tra.LockedToPart = true
  tra.ZOffset = 4
  local S4 = Instance.new("Sound", P)
  S4.SoundId = "rbxassetid://858904104"
  S4.Volume = 2.5
  S4:Play()
  for i = 1, 50 do
    swait()
    c.HumanoidRootPart.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(0, 0, 0)).p, mouse.hit.p)
    lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RS, "C0", RSC0 * cf(0, 0.5, 0) * ang(rd(10), rd(0), rd(180)), 0.5)
    lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LS, "C0", LSC0 * cf(0, 0.5, 0) * ang(rd(10), rd(0), rd(180)), 0.5)
    lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(0)), 0.5)
    lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(0)), 0.5)
    lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  for i = 1, 900 do
    c.HumanoidRootPart.CFrame = CFrame.new(c.Torso.CFrame:toWorldSpace(CFrame.new(0, 0, 0)).p, mouse.hit.p)
    tra.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.2 + 0.05 * i, 0),
      NumberSequenceKeypoint.new(1, 0.2 + 0.05 * i, 0)
    })
    PE.Size = PE.Size + Vector3.new(0.05, 0.05, 0.05)
    PE.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0)
    P.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0)
    swait()
  end
  for i = 1, 4 do
    swait()
    lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(10), rd(0)), 0.5)
    lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.5)
    lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.5)
    lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(25)), 0.5)
    lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
    lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(25)), 0.5)
    lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
  end
  local W2 = Instance.new("Weld", PE)
  W2.Part0 = PE
  W2.Part1 = P
  W2.C0 = CFrame.new(0, 0, 0)
  S4:Stop()
  S4.SoundId = "rbxassetid://870984991"
  S4:Play()
  S4.Volume = 5
  PE.CFrame = CFrame.new(c.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0, 0, 0)).p, mouse.hit.p)
  PE.CFrame = PE.CFrame * CFrame.new(0, 0, -25)
  FireSpiritBomb(PE)
  anim.Parent = Humanoid
  resetlerp()
  c.HumanoidRootPart.Anchored = false
  attack = false
  CombatDebounce = false
end
mouse.KeyDown:connect(function(key)
  if attack == true then
    return
  end
  if key == "z" then
    Kamehameha()
  end
  if key == "x" then
    SuperKamehameha()
  end
  if key == "c" then
    SpiritBomb()
  end
  if key == "m" then
    SSJB()
  end
end)
game:GetService("RunService").RenderStepped:connect(function()
  Humanoid.MaxHealth = Humanoid.MaxHealth * 2
  Humanoid.Health = Humanoid.MaxHealth * 2
  if attack == false then
    for i, v in pairs(c:children()) do
      if v.ClassName == "Accessory" then
        for i, v2 in pairs(v:children()) do
          if v2.ClassName == "Part" then
            v2.Anchored = false
          end
        end
      end
    end
    for i, v in pairs(c:children()) do
      if v.ClassName == "Part" then
        v.Anchored = false
      end
    end
  end
end)