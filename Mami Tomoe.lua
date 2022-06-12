wait(1)
--Decompilled / Converted to local by N3xul.
--Helped by xX360Sc0PeZXx.
--Helped by ()Peyton()
--Original Script was made by AmbientOcclusion (Script Skirmish Version)
--Last Updated: 2017-07-05
--Animations are kinda buggy.

--  _   _ ____             _    _____           _       _   
-- | \ | |___ \           | |  / ____|         (_)     | |  
-- |  \| | __) |_  ___   _| | | (___   ___ _ __ _ _ __ | |_ 
-- | . ` ||__ <\ \/ / | | | |  \___ \ / __| '__| | '_ \| __|
-- | |\  |___) |>  <| |_| | |  ____) | (__| |  | | |_) | |_ 
-- |_| \_|____//_/\_\\__,_|_| |_____/ \___|_|  |_| .__/ \__|
--                                               | |        
--                                               |_|        
--  __  __                 _   _______                         
-- |  \/  |               (_) |__   __|                        
-- | \  / | __ _ _ __ ___  _     | | ___  _ __ ___   ___   ___ 
-- | |\/| |/ _` | '_ ` _ \| |    | |/ _ \| '_ ` _ \ / _ \ / _ \
-- | |  | | (_| | | | | | | |    | | (_) | | | | | | (_) |  __/
-- |_|  |_|\__,_|_| |_| |_|_|    |_|\___/|_| |_| |_|\___/ \___|


local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("LocalScript")
o1.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Decompilled by N3xul.
API = {
  lerp = function(v0, v1, t)
    return (1 - t) * v0 + t * v1
  end,
  clerp = function(cf, cf2, t)
    cf:lerp(cf2, t)
  end,
  Current = "",
  New = {},
  Animations = {},
  Joints = {},
  Internal = {Playing = false, Looped = false},
  Styles = {
    sineinout = function(val)
      return math.sin(math.rad(val * 90))
    end,
    sinein = function(val)
      return math.sin(math.rad(val / 2 * 180))
    end,
    sineout = function(val)
      return math.sin(math.rad(val * 2 * 45))
    end
  }
}
function API.Internal.GetDictionaryLength(tab)
  local count = 0
  for i, v in pairs(tab) do
    count = count + 1
  end
  return count
end
function API.Internal.FindObject(tab, obj)
  for i, v in pairs(tab) do
    if obj == v then
      return i, v
    end
  end
end
function API.New.Keyframe(anim, tab)
  API.Animations[anim] = tab
end
function API.Animations.Play(anim, looped, speed, timeoffset)
  if API.Animations[anim] and (API.Current ~= anim or not API.Internal.Playing) then
    API.Internal.Playing = true
    API.Current = anim
    do
      local returnval
      function wrap(secondcall)
        if not API.Internal.Playing or not API.Current == anim then
          return
        end
        local time = timeoffset or -speed / 100
        if timeoffset then
          timeoffset = timeoffset - speed / 100
        end
        local speed = speed or 5
        local lasttick = tick()
        local prevC0 = {}
        local event
        function asd(step)
          time = time + speed * step
          local alpha
          for x, z in pairs(API.Animations[anim]) do
            if time >= z[1] or time == 1 then
              for i, v in pairs(API.Animations[anim][x]) do
                if i == 1 then
                elseif API.Animations[anim][x] then
                  if API.Animations[anim][x + 1] and time < API.Animations[anim][x + 1][1] then
                    local alpha = API.Animations[anim][x + 1][1] - z[1]
                    alpha = (time - z[1]) / alpha
                    if v[3] and API.Styles[v[3]:lower()] then
                      alpha = API.Styles[v[3]](alpha)
                    end
                    local target = API.Animations[anim][x + 1][i]
                    if target and target[1] and target[1] == v[1] then
                      if not prevC0[v[1]] and x == 1 then
                        prevC0[v[1]] = v[1][1].C0
                      end
                      if prevC0 ~= v[1][2] and x == 1 then
                        v[1][1].C0 = prevC0[v[1]]:lerp(v[1][2] * target[2], alpha)
                      else
                        v[1][1].C0 = v[1][2] * v[2]:lerp(target[2], alpha)
                      end
                      if time == 1 then
                        v[1][1].C0 = v[1][2] * target[2]
                      end
                    end
                  elseif time >= 1 then
                    v[1][1].C0 = v[1][2] * v[2]
                  end
                end
              end
            end
          end
          if time >= 1 or not API.Internal.Playing or API.Current ~= anim then
            lasttick = nil
            if not looped then
              if API.Current == anim then
                API.Internal.Playing = false
              end
              event:disconnect()
              returnval = true
            elseif API.Internal.Playing and API.Current == anim then
              if not secondcall then
                wrap(true)
                event:disconnect()
              else
                lasttick = tick()
                time = 0
              end
            else
              if API.Current == anim then
                API.Internal.Playing = false
              end
              event:disconnect()
              returnval = true
            end
          end
          lasttick = tick()
        end
        event = game:service("RunService").RenderStepped:connect(asd)
        if returnval and not looped then
          return true
        end
      end
      wrap()
      if not looped then
        repeat
          wait()
        until returnval
        return returnval
      end
    end
  end
end
function API.Animations.Stop()
  API.Internal.Playing = false
end
do
  local Recursive = function(Model)
    local Stuff = {}
    local function Recur(Targ)
      for i, v in pairs(Targ:getChildren()) do
        table.insert(Stuff, v)
        Recur(v)
      end
    end
    Recur(Model)
    return Stuff
  end
  function MoveModel(Model, CF)
    local Center = Model:GetPrimaryPartCFrame() or Model:getModelCFrame()
    local Offsets = {}
    for i, v in pairs(Recursive(Model)) do
      if v:IsA("BasePart") or v:IsA("UnionOperation") then
        Offsets[v] = CF * Center:toObjectSpace(v.CFrame)
      end
    end
    for i, v in pairs(Offsets) do
      i.CFrame = v
    end
  end
  function Anchored(Model, bool)
    for i, v in pairs(Recursive(Model)) do
      if v:IsA("BasePart") then
        v.Anchored = bool
      end
    end
  end
  function Locked(Model, bool)
    for i, v in pairs(Recursive(Model)) do
      if v:IsA("BasePart") then
        v.Locked = bool
      end
    end
  end
  function Transparency(Model, value, names)
    for i, v in pairs(Recursive(Model)) do
      if v:IsA("BasePart") or v:IsA("UnionOperation") then
        local dont
        if names then
          for z, x in pairs(names) do
            if v.Name == x then
              dont = true
            end
          end
        end
        if not dont then
          v.Transparency = value
        end
      end
    end
  end
  function CanCollide(Model, bool)
    for i, v in pairs(Recursive(Model)) do
      if v:IsA("BasePart") then
        v.CanCollide = bool
      end
    end
  end
  local setupPart = function(part, thick)
    part.Anchored = true
    part.FormFactor = "Custom"
    part.CanCollide = false
    part.Material = "SmoothPlastic"
    part.TopSurface = 10
    part.BottomSurface = 10
    part.LeftSurface = 10
    part.RightSurface = 10
    part.FrontSurface = 10
    part.BackSurface = 10
    local msh = Instance.new("SpecialMesh", part)
    msh.MeshType = "Wedge"
    msh.Scale = Vector3.new(thick, 1, 1)
  end
  function CreateTriangle(parent, a, b, c, thick)
    local CFrameFromTopBack = function(at, top, back)
      local right = top:Cross(back)
      return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
    end
    local thick = thick or 1
    local this = {}
    local mPart1 = Instance.new("WedgePart")
    setupPart(mPart1, thick, color)
    local mPart2 = Instance.new("WedgePart")
    setupPart(mPart2, thick, color)
    function this:Set(a, b, c)
      local ab, bc, ca = b - a, c - b, a - c
      local abm, bcm, cam = ab.magnitude, bc.magnitude, ca.magnitude
      local edg1 = math.abs(0.5 + ca:Dot(ab) / (abm * abm))
      local edg2 = math.abs(0.5 + ab:Dot(bc) / (bcm * bcm))
      local edg3 = math.abs(0.5 + bc:Dot(ca) / (cam * cam))
      if edg1 < edg2 then
        if edg1 < edg3 then
        else
          a, b, c = c, a, b
          ab, bc, ca = ca, ab, bc
          abm = cam
        end
      elseif edg2 < edg3 then
        a, b, c = b, c, a
        ab, bc, ca = bc, ca, ab
        abm = bcm
      else
        a, b, c = c, a, b
        ab, bc, ca = ca, ab, bc
        abm = cam
      end
      local len1 = -ca:Dot(ab) / abm
      local len2 = abm - len1
      local width = ca + ab.unit * len1.magnitude
      local maincf = CFrameFromTopBack(a, ab:Cross(bc).unit, -ab.unit)
      if len1 > 0.2 then
        mPart1.Parent = parent
        mPart1.Size = Vector3.new(0.2, width, len1)
        mPart1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
      else
        mPart1.Parent = nil
      end
      if len2 > 0.2 then
        mPart2.Parent = parent
        mPart2.Size = Vector3.new(0.2, width, len2)
        mPart2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      else
        mPart2.Parent = nil
      end
    end
    function this:SetProperty(prop, value)
      mPart1[prop] = value
      mPart2[prop] = value
    end
    function this:GetProperty(prop)
      return mPart1[prop]
    end
    this:Set(a, b, c)
    function this:Destroy()
      mPart1:Destroy()
      mPart2:Destroy()
    end
    return this
  end
end
Effects = workspace:WaitForChild("GunEffects")
do
  local Trails = {}
  Particles = {
    AirRing = function(CF, Distance, Color, Opac, Size, Velocity)
      if not Effects.Parent == workspace then
        Effects = workspace:WaitForChild("GunEffects")
      end
      local StoredParticles = {}
      for Angle = 0, 360, 20 do
        local EffectDirection = Instance.new("Part", Effects)
        EffectDirection.Anchored = true
        EffectDirection.CanCollide = false
        EffectDirection.CFrame = CF * CFrame.Angles(math.pi / 2, 0, 0) * CFrame.Angles(0, 0, math.rad(Angle)) * CFrame.new(0, Distance, 0)
        EffectDirection.Transparency = 1
        local Smoke = Instance.new("Smoke", EffectDirection)
        Smoke.Color = Color3.new(Color.r / 255, Color.g / 255, Color.b / 255) or Color3.new(1, 1, 1)
        Smoke.Opacity = Opac or 0.05
        Smoke.Size = Size or 0
        Smoke.RiseVelocity = Velocity or 2
        table.insert(StoredParticles, Smoke)
        game:service("Debris"):AddItem(EffectDirection, 10)
      end
      wait(0.2)
      for Index, Value in next, StoredParticles, nil do
        if Value:IsA("Smoke") then
          Value.Enabled = false
        end
      end
    end,
    Fire = function(CF, dur, Color, size, velocity, spread, transparency)
      coroutine.wrap(function()
        if not Effects.Parent == workspace then
          Effects = workspace:WaitForChild("GunEffects")
        end
        local Part = Instance.new("Part")
        Part.FormFactor = "Custom"
        Part.CanCollide = false
        Part.Anchored = true
        Part.Material = "Neon"
        Part.TopSurface = 0
        Part.BottomSurface = 0
        local RandomSize = math.random(size.Min * 100, size.Max * 100) / 100
        Part.Size = Vector3.new(RandomSize, RandomSize, RandomSize)
        if type(Color) == "userdata" then
          Part.BrickColor = BrickColor.new(Color.r / 255, Color.g / 255, Color.b / 255)
        elseif type(Color) == "table" then
          local RandomColor = Color[math.random(#Color)]
          Part.BrickColor = BrickColor.new(RandomColor.r / 255, RandomColor.g / 255, RandomColor.b / 255)
        end
        local Spread = spread or NumberRange.new(0, 0)
        local RandomSpread = math.random(Spread.Min, Spread.Max)
        local RandomSpread2 = math.random(Spread.Min, Spread.Max)
        Part.CFrame = CFrame.Angles(math.random(0, 30) / 30, math.rad(math.random(0, 360)), math.random(0, 30) / 30)
        local rx, ry, rz = Part.CFrame:toEulerAnglesXYZ()
        local transparency = transparency or 0
        for i = 0, 1, 0.016666666666666666 / dur do
          game:service("RunService").RenderStepped:wait()
          Part.Parent = Effects
          Part.Transparency = transparency + i
          Part.CFrame = CF * CFrame.Angles(math.rad(RandomSpread), 0, math.rad(RandomSpread2)) * CFrame.new(0, i * velocity, 0) * CFrame.Angles(rx, ry, rz)
        end
        Part:Destroy()
      end)()
    end,
    BulletholeParticles = function(Part, hitPart)
      do
        local Particle = Instance.new("ParticleEmitter", Part)
        Particle.VelocitySpread = 30
        Particle.LightEmission = 200
        Particle.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.1, 0),
          NumberSequenceKeypoint.new(1, 0.25, 0)
        })
        Particle.Color = ColorSequence.new(Color3.new(hitPart.BrickColor.r, hitPart.BrickColor.g, hitPart.BrickColor.b))
        Particle.Texture = "rbxassetid://272031379"
        Particle.Rotation = NumberRange.new(0, 90)
        Particle.Rate = 25
        Particle.Acceleration = Vector3.new(0, -100, 0)
        Particle.Speed = NumberRange.new(35)
        Particle.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        Particle.Lifetime = NumberRange.new(2)
        coroutine.wrap(function()
          wait(0.2)
          Particle.Enabled = false
          Particle.Rate = 0
          wait(2)
          Particle:Destroy()
        end)()
      end
      do
        local Particle = Instance.new("ParticleEmitter", Part)
        Particle.VelocitySpread = 10
        Particle.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 0.5, 0)
        })
        Particle.Color = ColorSequence.new(Color3.new(hitPart.BrickColor.r, hitPart.BrickColor.g, hitPart.BrickColor.b))
        Particle.Texture = "rbxassetid://272031958"
        Particle.Rotation = NumberRange.new(0, 90)
        Particle.Rate = 10
        Particle.Acceleration = Vector3.new(0, -1, 0)
        Particle.Speed = NumberRange.new(5)
        Particle.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        Particle.Lifetime = NumberRange.new(1)
        coroutine.wrap(function()
          wait(0.2)
          Particle.Enabled = false
          Particle.Rate = 0
          wait(1)
          Particle:Destroy()
        end)()
      end
    end,
    Trail = function(part, cf_enabled, amount_color, color, transparency, material, width)
      local tAccessoryEvent
      function Loop(_part, i, lastCF)
        local enabled
        if Trails[_part][1] then
          enabled = true
        else
          enabled = false
        end
        if i < 6 then
          i = 7
        end
        if i > 6 then
          local transp = Trails[_part][i][2]
          local v = Trails[_part][i][1]
          if enabled then
          end
        end
        for x, z in pairs(Trails[_part]) do
          if x > 6 then
            z[2] = z[2] + 1 / Trails[_part][2]
            z[1].Transparency = z[2]
          end
        end
        i = i % #Trails[_part] + 1
        return i, lastCF
      end
      if not Trails[part] then
        do
          local cf, amount, transparency, width, material = material or cf_enabled, tonumber(amount_color), transparency or 0.2, width or 0.2, "SmoothPlastic"
          Trails[part] = {
            false,
            amount,
            cf,
            transparency,
            color,
            width
          }
          for _index = 1, amount do
            local _part = Instance.new("Part")
            _part.Anchored = true
            _part.Transparency = transparency + (_index / amount * 1 - transparency)
            _part.BrickColor = color
            _part.Material = material
            _part.TopSurface = 0
            _part.CanCollide = false
            _part.BottomSurface = 0
            table.insert(Trails[part], {_part, transparency})
          end
          local index = 1
          local lastCF = part.CFrame
          tAccessoryEvent = game:service("RunService").RenderStepped:connect(function()
            if part.Parent ~= nil then
              local newindex, newlastCF = Loop(part, index, lastCF)
              index = newindex
              lastCF = newlastCF
            else
              tAccessoryEvent:disconnect()
              for i, v in pairs(Trails[part]) do
                pcall(function()
                  v[1]:Destroy()
                end)
                table.remove(Trails[part], i)
              end
              Trails[part] = nil
            end
          end)
        end
      elseif Trails[part] then
        if type(cf_enabled) == "boolean" then
          Trails[part][1] = cf_enabled
        elseif type(cf_enabled) == "userdata" then
          Trails[part][3] = cf_enabled
        end
        if type(amount_color) == "number" then
          Trails[part][2] = amount_color
        elseif type(amount_color) == "userdata" then
          Trails[part][5] = amount_color
        end
      end
	    end,
    Lightning = function(part, from, to, amount, color, transparency, width)
    end
	  }
end
Sounds = {}
function Sounds.Add(soundid, volume, pitch)
  local s = Instance.new("Sound")
  s.SoundId = "rbxassetid://" .. tostring(soundid):match("%d+")
  s.Volume = volume or 0.5
  s.Pitch = pitch or 1
  return s
end
Sounds.Musket = Sounds.Add(337043241, 0.65)
local plr = game:service("Players").LocalPlayer
local plrgui = plr:findFirstChild("PlayerGui")
local char = plr.Character
local mouse = plr:GetMouse()
local humanoid = char:findFirstChild("Humanoid")
local torso = char:findFirstChild("Torso")
local head = char.Head
local ra = char:findFirstChild("Right Arm")
local la = char:findFirstChild("Left Arm")
local rl = char:findFirstChild("Right Leg")
local ll = char:findFirstChild("Left Leg")
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local rh = torso:findFirstChild("Right Hip")
local lh = torso:findFirstChild("Left Hip")
local neck = torso:findFirstChild("Neck")
local rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
local rootpart = char:findFirstChild("HumanoidRootPart")
local camera = workspace.CurrentCamera
local anim = char:findFirstChild("Animate")
local UIS = game:service("UserInputService")
local rm, lm, rlegm, llegm
local keyHold = {}
local keyToggle = {}
local LMB = false
local RMB = false
local debounces = {}
Sounds.Musket.Parent = head
if humanoid:WaitForChild("Animator") then
  humanoid:WaitForChild("Animator"):Destroy()
end
if anim then
  anim:Destroy()
end
humanoid.MaxHealth = 70
humanoid.Health = 70
humanoid.WalkSpeed = 24
humanoid.JumpPower = 70
rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = "Right Shoulder"
lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = "Left Shoulder"
rlegm = Instance.new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
rlegm.Name = "Right Hip"
llegm = Instance.new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
llegm.Name = "Left Hip"
rj.C0 = CFrame.new()
rj.C1 = CFrame.new()
neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
neckc0 = neck.C0
API.Joints["Right Shoulder"] = {
  rm,
  rm.C0
}
API.Joints["Left Shoulder"] = {
  lm,
  lm.C0
}
API.Joints["Right Hip"] = {
  rlegm,
  rlegm.C0
}
API.Joints["Left Hip"] = {
  llegm,
  llegm.C0
}
API.Joints.Neck = {
  neck,
  neck.C0
}
API.Joints.RootJoint = {
  rj,
  rj.C0
}
API.New.Keyframe("idle", {
  {
    0,
    {
      API.Joints["Left Hip"],
      CFrame.new(0, 0.0299999714, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(0, -0.0300000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(0, -0.0300000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, -0.0299999993, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints.Neck,
      CFrame.new(),
      "sineinout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(0, 0.0299999714, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    }
  },
  {
    0.05,
    {
      API.Joints["Left Hip"],
      CFrame.new(0, 0.0299999714, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(0, -0.0300000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(0, -0.0300000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, -0.0299999993, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints.Neck,
      CFrame.new(),
      "sineinout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(0, 0.0299999714, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    }
  },
  {
    0.5,
    {
      API.Joints["Left Hip"],
      CFrame.new(),
      "sineinout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(),
      "sineinout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(),
      "sineinout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(),
      "sineinout"
    },
    {
      API.Joints.Neck,
      CFrame.new(),
      "sineinout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(),
      "sineinout"
    }
  },
  {
    1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0, 0.0299999714, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(0, -0.0300000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(0, -0.0300000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, -0.0299999993, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    },
    {
      API.Joints.Neck,
      CFrame.new(),
      "sineinout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(0, 0.0299999714, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
      "sineinout"
    }
  }
})
API.New.Keyframe("jump", {
  {
    0,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.992403924, 0.0940898135, -0.0792566612, -0.087155737, 0.992403865, 0.0868242681, 0.086823903, -0.079257071, 0.993065894),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 1, 0, 0, 0, 0.965925872, 0.258818835, 0, -0.258818835, 0.965925872),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.99619472, 0.087155737, 0, -0.0868240818, 0.992403924, 0.0871555507, 0.00759610627, -0.086823903, 0.99619472),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.965925753, -0.258819222, 0, 0.258819222, 0.965925753),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.399999976, -0.600000024, 0.992403924, -0.0617142953, -0.106423005, 0.0868240818, 0.964216173, 0.250496894, 0.0871555507, -0.257834166, 0.962250173),
      "sineout"
    }
  },
  {
    0.1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.992403924, 0.0940898135, -0.0792566612, -0.087155737, 0.992403865, 0.0868242681, 0.086823903, -0.079257071, 0.993065894),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 1, 0, 0, 0, 0.965925872, 0.258818835, 0, -0.258818835, 0.965925872),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.99619472, 0.087155737, 0, -0.0868240818, 0.992403924, 0.0871555507, 0.00759610627, -0.086823903, 0.99619472),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.965925753, -0.258819222, 0, 0.258819222, 0.965925753),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.399999976, -0.600000024, 0.992403924, -0.0617142953, -0.106423005, 0.0868240818, 0.964216173, 0.250496894, 0.0871555507, -0.257834166, 0.962250173),
      "sineout"
    }
  },
  {
    1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.995545864, 0.0940898135, 0.0059748441, -0.094267264, 0.992403865, 0.079045929, 0.00150797516, -0.079257071, 0.996853054),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.999201357, -0.0399574004, 0, 0.038595885, 0.965154469, 0.258818835, -0.0103417281, -0.258612126, 0.965925872),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.99946177, 0.0328062959, 0, -0.032681454, 0.995658576, 0.0871555507, 0.00285925064, -0.0871086419, 0.99619472),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.978652656, -0.205521196, 0, 0.205521196, 0.978652656),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.399999976, -0.600000024, 0.996858656, -0.0617142953, -0.0496415347, 0.0723939985, 0.964216173, 0.255041599, 0.0321254618, -0.257834166, 0.96565491),
      "sineout"
    }
  }
})
API.New.Keyframe("fall", {
  {
    0,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -0.800000012, -0.600000024, 0.99999994, 0, 1.86264515E-9, 0, 0.98480767, 0.173648164, 0, -0.173648179, 0.98480773),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.866025388, -0.5, 0, -0.383022189, -0.663413882, -0.642787695, 0.321393847, 0.556670487, -0.766044378),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.862601936, 0.505883217, 0, 0.379760414, -0.647544861, -0.660656989, -0.334215283, 0.569884002, -0.750687897),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.98480767, 0.173648357, 0, -0.173648357, 0.98480767),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.939692616, 0.342020124, 0, -0.342020124, 0.939692616),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.600000024, -0.400000006, 1, 0, 0, 0, 0.939692616, 0.342020124, 0, -0.342020124, 0.939692616),
      "sineout"
    }
  },
  {
    0.3,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -0.800000012, -0.600000024, 0.99999994, -5.49327354E-11, 1.86183491E-9, 0, 0.97925812, 0.202616364, 0, -0.202616379, 0.97925818),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.892664552, -0.450721771, 0, -0.345272869, -0.683820605, -0.642787695, 0.28971839, 0.573793769, -0.766044378),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.899016023, 0.431892276, -0.0723821297, 0.282966912, -0.699071705, -0.656679928, -0.334215283, 0.569884002, -0.750687897),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.98480767, 0.173648357, 0, -0.173648357, 0.98480767),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.943106711, 0.332490176, 0, -0.332490176, 0.943106711),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.600000024, -0.400000006, 1, 0, 0, 0, 0.951969266, 0.306193769, 0, -0.306193769, 0.951969266),
      "sineout"
    }
  },
  {
    0.65,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -0.800000012, -0.600000024, 0.999873817, -5.49327354E-11, 0.015881829, -0.00321791833, 0.97925812, 0.202590808, -0.0155524109, -0.202616379, 0.979134679),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.91775465, -0.396863133, 0.0150378142, -0.304232895, -0.726875484, -0.615706444, 0.255281776, 0.560492456, -0.787832141),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.899016023, 0.435837597, -0.0426110402, 0.282966912, -0.65242058, -0.703048468, -0.334215283, 0.619994342, -0.709864199),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.990219355, 0.139518946, 0, -0.139518946, 0.990219355),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.943106711, 0.332490176, 0, -0.332490176, 0.943106711),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.600000024, -0.400000006, 0.999309063, 0, -0.0371669196, 0.0113802794, 0.951969266, 0.305982202, 0.0353817642, -0.306193769, 0.951311529),
      "sineout"
    }
  },
  {
    1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -0.800000012, -0.600000024, 0.99999994, 0, 1.86264515E-9, 0, 0.98480767, 0.173648164, 0, -0.173648179, 0.98480773),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.866025388, -0.5, 0, -0.383022189, -0.663413882, -0.642787695, 0.321393847, 0.556670487, -0.766044378),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.862601936, 0.505883217, 0, 0.379760414, -0.647544861, -0.660656989, -0.334215283, 0.569884002, -0.750687897),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.98480767, 0.173648357, 0, -0.173648357, 0.98480767),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.939692616, 0.342020124, 0, -0.342020124, 0.939692616),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.600000024, -0.400000006, 1, 0, 0, 0, 0.939692616, 0.342020124, 0, -0.342020124, 0.939692616),
      "sineout"
    }
  }
})
API.New.Keyframe("run", {
  {
    0,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 1, 0, 0, 0, 0.766044319, 0.642787755, 0, -0.642787755, 0.766044319),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.98480773, -0.173648179, 0, 0.111618891, 0.633022189, 0.766044378, -0.133022204, -0.754406452, 0.642787576),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.98480773, -0.173648179, 0, 0.0301536955, 0.171010092, -0.98480773, 0.171010062, 0.969846249, 0.173648208),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, -0.1978147238, -0.00207912177, 1, 0, 0, 0, 0.903035522, 0.429565847, 0, -0.429565847, 0.903035522),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.978147626, -0.207911476, 0, 0.207911476, 0.978147626),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.863191843, -0.375877023, 1, 0, 0, 0, 0.939692557, -0.342020363, 0, 0.342020363, 0.939692557),
      "sineout"
    }
  },
  {
    0.25,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, -1.20000005, 1, 0, 0, 0, 0.766044378, 0.642787576, 0, -0.642787576, 0.766044378),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.998181462, -0.0462776721, -0.0386270396, 0.0521254241, 0.984489858, 0.167518541, 0.0302755833, -0.169227406, 0.985111833),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.999737382, -0.00367322098, 0.0226167496, 0.00735832006, 0.98625195, -0.165084511, -0.0216994211, 0.165207624, 0.986020029),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, -0.0978147238, -0.00207912177, 1, 0, 0, 0, 0.903035522, 0.429565847, 0, -0.429565847, 0.903035522),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.978147626, -0.207911476, 0, 0.207911476, 0.978147626),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.863191843, 0.0241229832, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789),
      "sineout"
    }
  },
  {
    0.5,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, -2.98023224E-8, 1, 0, 0, 0, 0.866025269, -0.5, 0, 0.5, 0.866025269),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.992843747, 0.112227775, -0.040818423, -0.0593359731, 0.166971952, -0.98417449, -0.103636146, 0.979553521, 0.172436357),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.988457799, 0.149878636, -0.0220778808, -0.0782659277, 0.629983902, 0.772654235, 0.129713073, -0.76200819, 0.634442985),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, -0.1978147238, -0.00207912177, 1, 0, 0, 0, 0.903035522, 0.429565847, 0, -0.429565847, 0.903035522),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.978147626, -0.207911476, 0, 0.207911476, 0.978147626),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.863191843, 0.0241229832, 1, 0, 0, 0, 0.642787755, 0.766044259, 0, -0.766044259, 0.642787755),
      "sineout"
    }
  },
  {
    0.75,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, -2.98023224E-8, 1, 0, 0, 0, 0.984807611, 0.173648268, 0, -0.173648268, 0.984807611),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.99976629, -0.0130509362, 0.0172336921, 0.0182333663, 0.937349617, -0.34791258, -0.0116133699, 0.348145396, 0.937368512),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.999876916, 0.0141363507, 0.00678386353, -0.0151452124, 0.982729197, 0.184428334, -0.00405955268, -0.184508324, 0.982822537),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, -0.0978147238, -0.00207912177, 1, 0, 0, 0, 0.903035522, 0.429565847, 0, -0.429565847, 0.903035522),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.988467455, -0.151432946, 0, 0.151432946, 0.988467455),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.64692378, -1.07370567, 1, 0, 0, 0, 0.642787755, 0.766044259, 0, -0.766044259, 0.642787755),
      "sineout"
    }
  },
  {
    1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 1, 0, 0, 0, 0.766044319, 0.642787755, 0, -0.642787755, 0.766044319),
      "sineout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 0.98480773, -0.173648179, 0, 0.111618891, 0.633022189, 0.766044378, -0.133022204, -0.754406452, 0.642787576),
      "sineout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.98480773, -0.173648179, 0, 0.0301536955, 0.171010092, -0.98480773, 0.171010062, 0.969846249, 0.173648208),
      "sineout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, -0.1978147238, -0.00207912177, 1, 0, 0, 0, 0.903035522, 0.429565847, 0, -0.429565847, 0.903035522),
      "sineout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.978147626, -0.207911476, 0, 0.207911476, 0.978147626),
      "sineout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.863191843, -0.375877023, 1, 0, 0, 0, 0.939692557, -0.342020363, 0, 0.342020363, 0.939692557),
      "sineout"
    }
  }
})
API.New.Keyframe("chargedshots", {
  {
    0,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -0.600000024, -0.400000006, 0.981060266, 0.115870506, 0.155224711, -0.0858316422, 0.978432119, -0.187891677, -0.17364797, 0.171009868, 0.969846368),
      "sinein"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.24630535, 0.694833517, 0.463382423, 0.122787833, -0.696364224, 0.707106769, 0.122787774, -0.696364224, -0.707106769, 0.98480773, 0.173648179, -4.37113883E-8),
      "sinein"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.41715729, 0.782842696, 0.400000036, 0.241844758, 0.664462984, -0.707106829, -0.241844729, -0.664463043, -0.707106709, -0.939692616, 0.342020124, -4.37113883E-8),
      "sinein"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789),
      "sinein"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.939692676, 0.342019945, 0, -0.342019945, 0.939692676),
      "sinein"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.600000024, -0.400000006, 0.978472114, -0.0853752792, -0.187891692, 0.0562490746, 0.986276448, -0.155224919, 0.198565528, 0.141314507, 0.969846308),
      "sinein"
    }
  },
  {
    1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -0.600000024, -0.400000006, 0.981060266, 0.115870506, 0.155224711, -0.0858316422, 0.978432119, -0.187891677, -0.17364797, 0.171009868, 0.969846368),
      "sinein"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.24630535, 0.694833517, 0.463382423, 0.122787833, -0.696364224, 0.707106769, 0.122787774, -0.696364224, -0.707106769, 0.98480773, 0.173648179, -4.37113883E-8),
      "sinein"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.41715729, 0.782842696, 0.400000036, 0.241844758, 0.664462984, -0.707106829, -0.241844729, -0.664463043, -0.707106709, -0.939692616, 0.342020124, -4.37113883E-8),
      "sinein"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789),
      "sinein"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.939692676, 0.342019945, 0, -0.342019945, 0.939692676),
      "sinein"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.600000024, -0.400000006, 0.978472114, -0.0853752792, -0.187891692, 0.0562490746, 0.986276448, -0.155224919, 0.198565528, 0.141314507, 0.969846308),
      "sinein"
    }
  }
})
API.New.Keyframe("lightattack", {
  {
    0,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, -0.200000003, 0.499999911, 0.150383741, 0.852868557, 0, 0.98480773, -0.173648179, -0.866025448, 0.0868240744, 0.492403775),
      "sineinout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.899999976, 0.5, -0.800000072, 0.342020154, 0.939692557, 0, -4.20075317E-8, 1.52894941E-8, -0.99999994, -0.939692497, 0.342020154, 4.47034836E-8),
      "sineinout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.222583234, 0.633022189, 0.74144423, 0.892538965, 0.173648193, -0.416197658, -0.392212808, 0.754406512, -0.526345789),
      "sineinout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 0.57357645, 0, -0.819151998, 0, 1, 0, 0.819151998, 0, 0.57357645),
      "sineinout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 0.57357645, 0, 0.819152057, 0, 1, 0, -0.819152057, 0, 0.57357645),
      "sineinout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.866025388, -0.0868241712, 0.492403775, 0, 0.98480767, 0.173648372, -0.499999911, -0.150383905, 0.852868497),
      "sineinout"
    }
  },
  {
    0.3,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, -0.200000003, 0.499999911, 0.150383741, 0.852868557, 0, 0.98480773, -0.173648179, -0.866025448, 0.0868240744, 0.492403775),
      "sineinout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.59411061, -0.046410203, -0.11215663, 0.766044438, -0.556670308, -0.321393907, -2.80971371E-8, 0.500000179, -0.866025329, 0.642787576, 0.663413882, 0.383022338),
      "sineinout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.857212424, 0.5, -0.766044438, 0.644483387, -0.756427407, 0.111618891, -0.0301536806, -0.171010047, -0.98480773, 0.764023542, 0.631326497, -0.133022204),
      "sineinout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 0.57357645, 0, -0.819151998, 0, 1, 0, 0.819151998, 0, 0.57357645),
      "sineinout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 0.98480773, 0, 0.173648149, 0, 1, 0, -0.173648149, 0, 0.98480773),
      "sineinout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.866025388, -0.0868241712, 0.492403775, 0, 0.98480767, 0.173648372, -0.499999911, -0.150383905, 0.852868497),
      "sineinout"
    }
  },
  {
    0.5,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, -0.200000003, 0.499999911, 0.150383741, 0.852868557, 0, 0.98480773, -0.173648179, -0.866025448, 0.0868240744, 0.492403775),
      "sineinout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.899999976, 0.5, -0.800000072, 0.342020154, 0.939692557, 0, -4.20075317E-8, 1.52894941E-8, -0.99999994, -0.939692497, 0.342020154, 4.47034836E-8),
      "sineinout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.222583234, 0.633022189, 0.74144423, 0.892538965, 0.173648193, -0.416197658, -0.392212808, 0.754406512, -0.526345789),
      "sineinout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 0.57357645, 0, -0.819151998, 0, 1, 0, 0.819151998, 0, 0.57357645),
      "sineinout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 0.98480773, 0, 0.173648149, 0, 1, 0, -0.173648149, 0, 0.98480773),
      "sineinout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.866025388, -0.0868241712, 0.492403775, 0, 0.98480767, 0.173648372, -0.499999911, -0.150383905, 0.852868497),
      "sineinout"
    }
  },
  {
    0.8,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.300000012, -1, -0.200000003, 0.499999881, 0.0682489201, 0.863331795, 1.93715096E-7, 0.99688971, -0.0788072124, -0.866025448, 0.0394037627, 0.498444736),
      "sinein"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.29999995, 0.5, -0.800000072, 0.342020154, 0.939692557, 0, -4.20075317E-8, 1.52894941E-8, -0.99999994, -0.939692497, 0.342020154, 4.47034836E-8),
      "sinein"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.29999995, 0.5, 0, 0.509273827, 0.436921686, 0.74144423, 0.859785497, -0.295885742, -0.416197658, 0.0375370085, 0.849441648, -0.526345789),
      "sinein"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 0.564862549, 0.0996005088, -0.819151998, -0.173648179, 0.98480773, 0, 0.806707203, 0.14224425, 0.57357645),
      "sinein"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 0.57357645, 0, 0.819152057, 0, 1, 0, -0.819152057, 0, 0.57357645),
      "sinein"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.699999988, -0.800000012, 0, 0.852868438, -0.234923005, 0.466289937, 0.173648164, 0.969846249, 0.171009824, -0.492403716, -0.0648785383, 0.867945373),
      "sinein"
    }
  },
  {
    1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, -0.200000003, 0.499999911, 0.150383741, 0.852868557, 0, 0.98480773, -0.173648179, -0.866025448, 0.0868240744, 0.492403775),
      "sineinout"
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.899999976, 0.5, -0.800000072, 0.342020154, 0.939692557, 0, -4.20075317E-8, 1.52894941E-8, -0.99999994, -0.939692497, 0.342020154, 4.47034836E-8),
      "sineinout"
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 0.222583234, 0.633022189, 0.74144423, 0.892538965, 0.173648193, -0.416197658, -0.392212808, 0.754406512, -0.526345789),
      "sineinout"
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 0.57357645, 0, -0.819151998, 0, 1, 0, 0.819151998, 0, 0.57357645),
      "sineinout"
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 0.57357645, 0, 0.819152057, 0, 1, 0, -0.819152057, 0, 0.57357645),
      "sineinout"
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.866025388, -0.0868241712, 0.492403775, 0, 0.98480767, 0.173648372, -0.499999911, -0.150383905, 0.852868497),
      "sineinout"
    }
  }
})
API.New.Keyframe("flip", {
  {
    0,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -0.800000012, -0.200000003, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, 1, 0, 0, 0, -0.642787576, -0.766044497, 0, 0.766044497, -0.642787576)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, 1, 0, 0, 0, -0.642787695, -0.766044378, 0, 0.766044378, -0.642787695)
    },
    {
      API.Joints.RootJoint,
      CFrame.new()
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.866025329, -0.500000179, 0, 0.500000179, 0.866025329)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.800000012, -0.200000018, 1, 0, 0, 0, 0.939692557, 0.342020363, 0, -0.342020363, 0.939692557)
    }
  },
  {
    0.1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -0.800000012, -0.200000003, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.5, 0.5, 0, -4.10752676E-8, -0.766044438, 0.642787635, 0.939692676, -0.219846323, -0.262002558, 0.342020094, 0.604022861, 0.719846368)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.5, 0.5, 0, -4.37113883E-8, 0.766044497, -0.642787516, -0.766044378, -0.413175941, -0.492403954, -0.642787695, 0.492403746, 0.586824059)
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769)
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.98480773, 0.173648179, 0, -0.173648179, 0.98480773)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -0.800000012, -0.200000018, 1, 0, 0, 0, 0.939692557, 0.342020363, 0, -0.342020363, 0.939692557)
    }
  },
  {
    0.2,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.999780595, 0.0209424179, 0, -0.0206242558, 0.984591663, 0.173648179, 0.00363661465, -0.173610076, 0.98480773)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.10000002, 0.699999988, 0.600000024, -4.10752641E-8, -0.984807789, 0.173647955, 0.939692557, 0.0593910925, 0.336824298, -0.342020333, 0.163175702, 0.925416529)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.10000002, 0.699999988, 0.600000024, -3.78551803E-8, 0.984807789, -0.173647955, -0.866025567, 0.086823903, 0.492403686, 0.499999791, 0.150383577, 0.852868736)
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.31134158E-7, 1, 0, -1, 1.31134158E-7)
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.98480773, 0.173648179, 0, -0.173648179, 0.98480773)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.998922467, -0.0463942215, 0.00117437157, 0.0464090817, 0.998602629, -0.0252775121, 0, 0.0253047794, 0.999679804)
    }
  },
  {
    0.35,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.999189913, 0.00227486109, 0.0401785672, -0.00395356817, 0.999120176, 0.041751273, -0.0400482379, -0.0418762751, 0.998319864)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.10000002, 0.699999988, 0.600000024, -4.10752641E-8, -0.984807789, 0.173647955, 0.939692557, 0.0593910925, 0.336824298, -0.342020333, 0.163175702, 0.925416529)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.10000002, 0.699999988, 0.600000024, -3.78551803E-8, 0.984807789, -0.173647955, -0.866025567, 0.086823903, 0.492403686, 0.499999791, 0.150383577, 0.852868736)
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.707106471, 0.707107067, 0, -0.707107067, -0.707106471)
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.98480773, 0.173648179, 0, -0.173648179, 0.98480773)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.999114811, -0.0149944089, -0.0393023491, 0.0139837554, 0.999567628, -0.0258647781, 0.0396731906, 0.0252922922, 0.998892546)
    }
  },
  {
    0.5,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.999189913, 0.00227486109, 0.0401785672, -0.00395356817, 0.999120176, 0.041751273, -0.0400482379, -0.0418762751, 0.998319864)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.10000002, 0.699999988, 0.600000024, -4.10752641E-8, -0.984807789, 0.173647955, 0.939692557, 0.0593910925, 0.336824298, -0.342020333, 0.163175702, 0.925416529)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.10000002, 0.699999988, 0.600000024, -3.78551803E-8, 0.984807789, -0.173647955, -0.866025567, 0.086823903, 0.492403686, 0.499999791, 0.150383577, 0.852868736)
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.999960303, 0.00890150666, 0, -0.00890150666, -0.999960303)
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.999114811, -0.0149944089, -0.0393023491, 0.0139837554, 0.999567628, -0.0258647781, 0.0396731906, 0.0252922922, 0.998892546)
    }
  },
  {
    0.65,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.99890095, 0.00311579858, -0.0467670336, -0.00213146419, 0.99977541, 0.0210827366, 0.0468222164, -0.0209598541, 0.998683274)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.10000002, 0.699999988, 0.600000024, -4.10752641E-8, -0.984807789, 0.173647955, 0.939692557, 0.0593910925, 0.336824298, -0.342020333, 0.163175702, 0.925416529)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.10000002, 0.699999988, 0.600000024, -3.78551803E-8, 0.984807789, -0.173647955, -0.866025567, 0.086823903, 0.492403686, 0.499999791, 0.150383577, 0.852868736)
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.713373005, -0.700784385, 0, 0.700784385, -0.713373005)
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.999114811, -0.0115472348, -0.0404495783, 0.0139837554, 0.998071432, 0.0604806058, 0.0396731906, -0.0609927028, 0.997349441)
    }
  },
  {
    0.8,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.99890095, 0.00311579858, -0.0467670336, -0.00213146419, 0.99977541, 0.0210827366, 0.0468222164, -0.0209598541, 0.998683274)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.10000002, 0.699999988, 0.600000024, -4.10752641E-8, -0.984807789, 0.173647955, 0.939692557, 0.0593910925, 0.336824298, -0.342020333, 0.163175702, 0.925416529)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.10000002, 0.699999988, 0.600000024, -3.78551803E-8, 0.984807789, -0.173647955, -0.866025567, 0.086823903, 0.492403686, 0.499999791, 0.150383577, 0.852868736)
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.00890129805, -0.999960244, 0, 0.999960244, -0.00890129805)
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.999114811, -0.0115472348, -0.0404495783, 0.0139837554, 0.998071432, 0.0604806058, 0.0396731906, -0.0609927028, 0.997349441)
    }
  },
  {
    0.9,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.5, -1, 0, 0.99890095, 0.00311579858, -0.0467670336, -0.00213146419, 0.99977541, 0.0210827366, 0.0468222164, -0.0209598541, 0.998683274)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.10000002, 0.699999988, 0.600000024, -4.10752641E-8, -0.984807789, 0.173647955, 0.939692557, 0.0593910925, 0.336824298, -0.342020333, 0.163175702, 0.925416529)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.10000002, 0.699999988, 0.600000024, -3.78551803E-8, 0.984807789, -0.173647955, -0.866025567, 0.086823903, 0.492403686, 0.499999791, 0.150383577, 0.852868736)
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.700784564, -0.713372707, 0, 0.713372707, 0.700784564)
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.984807789, 0.17364797, 0, -0.17364797, 0.984807789)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.999114811, -0.0115472348, -0.0404495783, 0.0139837554, 0.998071432, 0.0604806058, 0.0396731906, -0.0609927028, 0.997349441)
    }
  },
  {
    1,
    {
      API.Joints["Left Hip"],
      CFrame.new(0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-0.480046868, -0.608522892, -0.407857239, 0.99890095, 0.00311579858, -0.0467670336, -0.00213146419, 0.99977541, 0.0210827366, 0.0468222164, -0.0209598541, 0.998683274)
    },
    {
      API.Joints["Right Shoulder"],
      CFrame.new(-1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(1.10000002, 0.699999988, 0.600000024, -0.696364284, -0.696364284, 0.173647955, 0.706458807, -0.62246716, 0.336824298, -0.126462251, 0.357227534, 0.925416529)
    },
    {
      API.Joints["Left Shoulder"],
      CFrame.new(1.5, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(-1.10000002, 0.699999988, 0.600000024, -0.696364343, 0.696364164, -0.173647955, -0.673766255, -0.550978899, 0.492403686, 0.247215912, 0.459890515, 0.852868736)
    },
    {
      API.Joints.RootJoint,
      CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999960184, -0.00890100002, 0, 0.00890100002, 0.999960184)
    },
    {
      API.Joints.Neck,
      CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 1, 0, 1, 0, 0, 0, 0.939692676, 0.342019945, 0, -0.342019945, 0.939692676)
    },
    {
      API.Joints["Right Hip"],
      CFrame.new(-0.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0.5, -1, 0, 0.999114811, -0.0186791904, -0.0376907811, 0.0139837554, 0.992529213, -0.121203706, 0.0396731906, 0.120569363, 0.991911829)
    }
  }
})
function KeyDown(k, bl)
  if bl then
    return
  end
  if k.UserInputType.Value == 8 then
    keyHold[k.KeyCode.Value] = true
    keyToggle[k.KeyCode.Value] = not keyToggle[k.KeyCode.Value]
  end
end
function KeyUp(k, bl)
  if bl then
    return
  end
  if k.UserInputType.Value == 8 then
    keyHold[k.KeyCode.Value] = false
  end
end
UIS.InputBegan:connect(KeyDown)
UIS.InputEnded:connect(KeyUp)
do
  local RayCast = function(from, to, IgnoreList)
    local Ray = Ray.new(from, to - from)
    local Hit, Pos, Normal = workspace:FindPartOnRayWithIgnoreList(Ray, IgnoreList and {}, false, true)
    return Hit, Pos, Normal
  end
  function Bullet(from, to, dmg, speed, gravity, _ignoreObj)
    local gravity = gravity or 0
    local speed = speed or 20
    local _part = Instance.new("Part")
    _part.Size = Vector3.new()
    _part.CFrame = CFrame.new(from)
    _part.Anchored = true
    _part.Locked = true
    _part.Transparency = 1
    _part.CanCollide = false
    _part.Parent = char
    local currentPos = from
    local velocity = to - currentPos.unit * speed
    local lastPos = currentPos
    local event
    local function Ray()
      local dt = game:service("RunService").Heartbeat:wait()
      lastPos = currentPos
      velocity = velocity + Vector3.new(0, 9.81 * gravity, 0) * dt
      currentPos = currentPos + velocity * dt
      if _part.Position.magnitude > 3500 then
        event:disconnect()
        wait(1)
        _part:Destroy()
        return true
      end
      local hit, pos, normal = RayCast(lastPos, currentPos, {
        _ignoreObj or char,
        char,
        _part,
        Effects
      })
      _part.CFrame = CFrame.new(lastPos, pos) * CFrame.Angles(0, math.pi, math.pi / 2)
      if hit then
        if hit.Parent:IsA("Model") and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
          for x, z in next, hit.Parent:children() do
            if z:IsA("Humanoid") then
              if hit.Name == "Head" and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
				z.Health = z.Health - 20
              elseif hit.Name == "Torso" or hit.Name == "HumanoidRootPart" and hit.Parent.Name ~= game.Players.LocalPlayer.Name then
				z.Health = z.Health - 20
              else
				z.Health = z.Health - 20
              end
            end
          end
        end
        if hit.Parent:IsA("Accessory") or hit:IsA("Part") and hit.CanCollide == false then
          local bullet = Bullet(pos, velocity, dmg - 2, speed - 10, gravity, hit)
          Particles.Trail(bullet, CFrame.new(), 4, BrickColor.new("New Yeller"), 0, "Neon")
          Particles.Trail(bullet, true)
        end
        _part.CFrame = CFrame.new(pos, currentPos) * CFrame.Angles(0, 0, math.pi / 2)
        event:disconnect()
        wait(1)
        _part:Destroy()
        return true
      end
    end
    event = game:service("RunService").Heartbeat:connect(Ray)
    return _part
  end
end
local musket = script:WaitForChild("Mami's Musket")
musket.Parent = nil
local bodyPos = Instance.new("BodyPosition")
local bodyVelocity = Instance.new("BodyVelocity")
local bodyGyro = Instance.new("BodyGyro")
bodyVelocity.maxForce = Vector3.new(100000000000, 100000000000, 100000000000)
bodyVelocity.P = 10
bodyPos.maxForce = Vector3.new(1.4E22, 1.4E22, 1.4E22)
bodyPos.P = 6500
bodyGyro.maxTorque = Vector3.new(1.4E22, 1.4E22, 1.4E22)
bodyGyro.P = 12000
Particles.Trail(la, CFrame.new(0, -0.8, 0), 10, BrickColor.new("White"), 0.1)
Particles.Trail(ra, CFrame.new(0, -0.8, 0), 10, BrickColor.new("White"), 0.1)
local hasJumped
local usedHeavy = false
local usedLight = false
local heavyCooldown = false
local heavyWait = false
humanoid.Changed:connect(function(prop)
  if prop == "Jump" then
    hasJumped = true
    wait(humanoid.JumpPower / workspace.Gravity)
    hasJumped = false
  end
end)
do
  local state, firstJump
  local muskets = {}
  game:service("RunService").Heartbeat:connect(function()
    local point = mouse.Hit.p
    local ray = Ray.new(rootpart.Position, Vector3.new(0, -4, 0))
    local rayVelocity = Ray.new(rootpart.Position, Vector3.new(0, torso.Velocity.y / 9.81, 0))
    local hitz, enz = workspace:FindPartOnRayWithIgnoreList(ray, {char})
    local hitzVelo, enzVelo = workspace:FindPartOnRayWithIgnoreList(rayVelocity, {char})
    if keyHold[32] and hasJumped and not firstJump and not state then
      firstJump = tick()
      keyHold[32] = false
    elseif keyHold[32] and firstJump and torso.Velocity.y > 1 and not state and tick() - firstJump < 0.5 then
      local origVelocity = Vector3.new(rootpart.CFrame.lookVector.x, 0, rootpart.CFrame.lookVector.z) * Vector3.new(rootpart.Velocity.x, 0, rootpart.Velocity.z).magnitude * 1.15
      local origY = torso.Velocity.y / 70
      state = true
      bodyGyro.Parent = rootpart
      bodyGyro.cframe = rootpart.CFrame
      humanoid:ChangeState("Physics")
      Particles.Trail(la, true)
      Particles.Trail(ra, true)
      coroutine.wrap(API.Animations.Play)("flip", false, 1.2)
      while not hitz and state and firstJump and not hitzVelo do
        bodyVelocity.Parent = rootpart
        bodyVelocity.velocity = origVelocity + Vector3.new(0, (firstJump + origY - tick()) * 100, 0)
        game:service("RunService").Heartbeat:wait()
      end
      Particles.Trail(la, false)
      Particles.Trail(ra, false)
      keyHold[32] = false
      firstJump = nil
      bodyVelocity.Parent = nil
    end
    if hitz or hitzVelo then
      if firstJump then
        state = false
        bodyVelocity.Parent = nil
        bodyGyro.Parent = nil
        humanoid:ChangeState("GettingUp")
      end
      firstJump = nil
      usedHeavy = false
      usedLight = false
      if heavyCooldown == 1 then
        heavyCooldown = 2
        wait(heavyWait)
        heavyCooldown = false
      end
    end
    if API.Current == "chargedshots" then
      for i, v in pairs(muskets) do
        if v[1].Parent ~= nil then
          bodyGyro.cframe = CFrame.new(rootpart.Position, Vector3.new(point.x, point.y, point.z))
          v[1]:SetPrimaryPartCFrame(CFrame.new(v[2].p, mouse.Hit.lookVector * 30 + mouse.Hit.p))
        end
      end
    end
    if keyHold[120] and #muskets < 1 and not hitz and not usedHeavy and not heavyCooldown then
      state = true
      firstJump = nil
      usedHeavy = true
      heavyCooldown = 1
      bodyPos.position = rootpart.Position
      bodyPos.Parent = rootpart
      bodyGyro.Parent = rootpart
      humanoid:ChangeState("Physics")
      bodyGyro.cframe = CFrame.new(rootpart.Position, Vector3.new(point.x, point.y, point.z))
      API.Animations.Play("chargedshots", true, 5)
      point = mouse.Hit.lookVector * 70 + mouse.Hit.p
      while state and #muskets < 25 and keyHold[120] do
        local _musket = musket:clone()
        CanCollide(_musket, false)
        Locked(_musket, true)
        Anchored(_musket, true)
        local x = math.random(-20, 20) / 2
        MoveModel(_musket, CFrame.new(rootpart.CFrame * CFrame.new(x, math.random() * 12 - 5 + math.random() * 2 * (3 - math.min(3, math.abs(x))), math.random() * 8 - 4).p, point))
        _musket.Parent = char
        local actPos = _musket.Handle.CFrame
        table.insert(muskets, {_musket, actPos})
        for i = 4, 0, -1 do
          Transparency(_musket, i / 4, {"HitboxArea", "Handle"})
          MoveModel(_musket, actPos * CFrame.new(0, 0, -0.2) * CFrame.new(0, 0, -i / 20))
          game:service("RunService").Heartbeat:wait()
        end
      end
      heavyWait = #muskets / 3
      keyHold[120] = false
      for i, gotMusket in pairs(muskets) do
        do
          local _musket = gotMusket[1]
          Sounds.Musket:play()
          local bullet = Bullet(_musket.FiringHole.CFrame.p, _musket.FiringHole.CFrame * CFrame.new(0, 1, 0).p, 5, 1500, 0)
          Particles.Trail(bullet, CFrame.new(), 10, BrickColor.new("New Yeller"), 0, "Neon")
          Particles.Trail(bullet, true)
          coroutine.wrap(function()
            local storedPos = _musket.FiringHole.CFrame * CFrame.new(0, -0.4 - math.random(), 0)
            for fire = 0, 5 do
              Particles.Fire(storedPos, 0.1, {
                Color3.new(255, 127, 0),
                Color3.new(255, 255, 0),
                Color3.new(255, 0, 0)
              }, NumberRange.new(0.3, math.random(20, 35) / 35), math.random(4500, 5000) / 1500)
              game:service("RunService").Heartbeat:wait()
            end
          end)()
          coroutine.wrap(function()
            local actpos = _musket.Handle.CFrame
            for transp = 2, 0, -1 do
              Transparency(_musket, 1 - transp / 2, {"HitboxArea", "Handle"})
              MoveModel(_musket, actpos * CFrame.new(0, 1.5 - transp / 2, 1.5 - transp / 2) * CFrame.Angles(0.6 - transp / 6, 0, 0))
              game:service("RunService").Heartbeat:wait()
            end
            _musket:Destroy()
          end)()
          wait(0.075)
        end
      end
      state = false
      muskets = {}
      humanoid:ChangeState("GettingUp")
      bodyGyro.Parent = nil
      bodyPos.Parent = nil
    end
    if keyHold[122] and #muskets < 1 and not usedLight then
      state = true
      usedLight = true
      firstJump = nil
      bodyPos.position = rootpart.Position
      bodyPos.Parent = rootpart
      bodyGyro.Parent = rootpart
      humanoid:ChangeState("Physics")
      while state and #muskets < 6 and keyHold[122] do
        do
          local _musket = musket:clone()
          CanCollide(_musket, false)
          Locked(_musket, true)
          Anchored(_musket, true)
          MoveModel(_musket, rootpart.CFrame * CFrame.new(math.sin(math.rad(45 - #muskets * 15) * 2) * 3, -0.2, 1.8 + math.cos(math.rad(45 - #muskets * 15) * 2)) * CFrame.Angles(math.pi / 2, 0, #muskets / (math.pi / 2) * 0.5))
          _musket.Parent = char
          coroutine.wrap(function()
            local actpos = _musket.Handle.CFrame
            for transp = 7, 0, -1 do
              Transparency(_musket, transp / 7, {"HitboxArea", "Handle"})
              game:service("RunService").Heartbeat:wait()
            end
          end)()
          table.insert(muskets, _musket)
        end
      end
      for _, _musket in pairs(muskets) do
        if keyHold[122] then
          do
		    API.Animations.Play("lightattack", true, 3.4)
            local actpos = _musket.Handle.CFrame
            point = mouse.Hit.p
            if hitz then
              bodyGyro.cframe = CFrame.new(rootpart.Position, Vector3.new(point.x, rootpart.Position.y, point.z))
            else
              bodyGyro.cframe = CFrame.new(rootpart.Position, Vector3.new(point.x, point.y, point.z))
            end
            for i = 10, 0, -1 do
              MoveModel(_musket, actpos:lerp(rootpart.CFrame * CFrame.new(0.4, 0.7, -3), API.Styles.sinein(1 - i / 10)))
              game:service("RunService").Heartbeat:wait()
            end
            wait()
            Sounds.Musket:play()
            local bullet = Bullet(_musket.FiringHole.CFrame.p, _musket.FiringHole.CFrame * CFrame.new(0, 1, 0).p, math.random(5, 8), 1500, 0)
            Particles.Trail(bullet, CFrame.new(), 10, BrickColor.new("New Yeller"), 0, "Neon")
            Particles.Trail(bullet, true)
            coroutine.wrap(function()
              local storedPos = _musket.FiringHole.CFrame * CFrame.new(0, -0.4 - math.random(), 0)
              for fire = 0, 5 do
                Particles.Fire(storedPos, 0.1, {
                  Color3.new(255, 127, 0),
                  Color3.new(255, 255, 0),
                  Color3.new(255, 0, 0)
                }, NumberRange.new(0.3, math.random(20, 35) / 35), math.random(4500, 5000) / 1500)
                game:service("RunService").Heartbeat:wait()
              end
            end)()
            local actpos = _musket.Handle.CFrame
            coroutine.wrap(function()
              for transp = 12, 0, -1 do
                local i = API.Styles.sineout(transp / 12) * 12
                Transparency(_musket, 1 - i / 12, {"HitboxArea", "Handle"})
                MoveModel(_musket, actpos * CFrame.new((6 - i / 2) * 0.7, -(6 - i / 2) * 0.4, (6 - i / 2) * 0.2) * CFrame.Angles(-0.1 - (12 - i) * 0.05, 0, 0.1 + (4 - i / 3) * 2))
                game:service("RunService").Heartbeat:wait()
              end
              _musket:Destroy()
            end)()
            wait(0.16)
          end
        else
          _musket:Destroy()
        end
      end
      state = false
      keyHold[122] = false
      muskets = {}
      humanoid:ChangeState("GettingUp")
      bodyGyro.Parent = nil
      bodyPos.Parent = nil
    end
  end)
end
do
  local deb = false
  local deb2 = false
  game:service("RunService").RenderStepped:connect(function(step)
    if not state then
      local spd = Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude
      local ray = Ray.new(rootpart.Position, Vector3.new(0, -4.05, 0))
      local hitz, enz = workspace:FindPartOnRayWithIgnoreList(ray, {char})
      if hitz then
        deb = false
        deb2 = false
      end
      if not hitz then
        if hasJumped and not deb then
          deb = true
          hasJumped = false
          API.Animations.Play("jump", true, 1.5)
          Particles.AirRing(CFrame.new(torso.CFrame.p) * CFrame.new(0, -4, 0), 1, Color3.new(255, 255, 255), 0.02, 0, 2)
          wait(humanoid.JumpPower / workspace.Gravity / 1.5)
          deb2 = true
        elseif deb2 then
          API.Animations.Play("fall", true, 2)
        end
      elseif spd > 2 then
        API.Animations.Play("run", true, 3)
      elseif spd <= 2 then
        API.Animations.Play("idle", true, 0.4)
      end
    end
  end)
end
function dispose()
  for i, v in pairs(getfenv(0)) do
    v = nil
  end
end
humanoid.Died:connect(dispose)
char.Changed:connect(function()
  if char.Parent == nil then
    dispose()
  end
end)

end,o1)
end))
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = script 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
--GUN
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("BlockMesh")
o4 = Instance.new("Part")
o5 = Instance.new("Decal")
o6 = Instance.new("Part")
o7 = Instance.new("Decal")
o8 = Instance.new("Part")
o9 = Instance.new("Decal")
o10 = Instance.new("Part")
o11 = Instance.new("Decal")
o12 = Instance.new("Part")
o13 = Instance.new("Decal")
o14 = Instance.new("Part")
o15 = Instance.new("Decal")
o16 = Instance.new("Part")
o17 = Instance.new("Decal")
o18 = Instance.new("Part")
o19 = Instance.new("Decal")
o20 = Instance.new("Part")
o21 = Instance.new("Decal")
o22 = Instance.new("Part")
o23 = Instance.new("Decal")
o24 = Instance.new("Part")
o25 = Instance.new("Decal")
o26 = Instance.new("Part")
o27 = Instance.new("Decal")
o28 = Instance.new("Part")
o29 = Instance.new("Decal")
o30 = Instance.new("Part")
o31 = Instance.new("Decal")
o32 = Instance.new("Model")
o33 = Instance.new("Part")
o34 = Instance.new("CylinderMesh")
o35 = Instance.new("ManualWeld")
o36 = Instance.new("Part")
o37 = Instance.new("ManualWeld")
o38 = Instance.new("Part")
o39 = Instance.new("CylinderMesh")
o40 = Instance.new("ManualWeld")
o41 = Instance.new("Part")
o42 = Instance.new("CylinderMesh")
o43 = Instance.new("ManualWeld")
o44 = Instance.new("Part")
o45 = Instance.new("CylinderMesh")
o46 = Instance.new("ManualWeld")
o47 = Instance.new("Part")
o48 = Instance.new("CylinderMesh")
o49 = Instance.new("ManualWeld")
o50 = Instance.new("Part")
o51 = Instance.new("ManualWeld")
o52 = Instance.new("Part")
o53 = Instance.new("ManualWeld")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("ManualWeld")
o57 = Instance.new("Part")
o58 = Instance.new("ManualWeld")
o59 = Instance.new("Part")
o60 = Instance.new("CylinderMesh")
o61 = Instance.new("ManualWeld")
o62 = Instance.new("Part")
o63 = Instance.new("ManualWeld")
o64 = Instance.new("Part")
o65 = Instance.new("BlockMesh")
o66 = Instance.new("ManualWeld")
o67 = Instance.new("Part")
o68 = Instance.new("CylinderMesh")
o69 = Instance.new("Part")
o70 = Instance.new("ManualWeld")
o71 = Instance.new("Part")
o72 = Instance.new("BlockMesh")
o73 = Instance.new("ManualWeld")
o74 = Instance.new("Part")
o75 = Instance.new("BlockMesh")
o76 = Instance.new("ManualWeld")
o77 = Instance.new("Part")
o78 = Instance.new("ManualWeld")
o79 = Instance.new("Part")
o80 = Instance.new("ManualWeld")
o81 = Instance.new("Part")
o82 = Instance.new("CylinderMesh")
o83 = Instance.new("ManualWeld")
o84 = Instance.new("Part")
o85 = Instance.new("BlockMesh")
o86 = Instance.new("ManualWeld")
o87 = Instance.new("Part")
o88 = Instance.new("CylinderMesh")
o89 = Instance.new("ManualWeld")
o90 = Instance.new("Part")
o91 = Instance.new("CylinderMesh")
o92 = Instance.new("ManualWeld")
o1.Name = "GunEffects"
o1.Parent = mas
o2.Parent = o1
o2.Material = Enum.Material.SmoothPlastic
o2.BrickColor = BrickColor.new("Bright yellow")
o2.Position = Vector3.new(11.5874996, 17.6975155, -5.63749886)
o2.Rotation = Vector3.new(-89.8899994, 0.980000019, -7.69999981)
o2.Locked = true
o2.Size = Vector3.new(0.200000003, 0.5, 0.200000003)
o2.CFrame = CFrame.new(11.5874996, 17.6975155, -5.63749886, 0.990843594, 0.13392292, 0.0171345267, -0.0172274373, -0.000465075689, 0.999851525, 0.133911014, -0.990991652, 0.00184633164)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.960784, 0.803922, 0.188235)
o2.Position = Vector3.new(11.5874996, 17.6975155, -5.63749886)
o2.Orientation = Vector3.new(-89.0100021, 83.8499985, -91.5500031)
o2.Color = Color3.new(0.960784, 0.803922, 0.188235)
o3.Parent = o2
o3.Scale = Vector3.new(0.200000003, 0.400000006, 0.200000003)
o3.Scale = Vector3.new(0.200000003, 0.400000006, 0.200000003)
o4.Parent = o1
o4.Material = Enum.Material.Neon
o4.BrickColor = BrickColor.new("Brick yellow")
o4.Transparency = 1
o4.Position = Vector3.new(12.914814, 0.100050002, -10.2348843)
o4.Rotation = Vector3.new(179.990005, -62, -0.00999999978)
o4.Anchored = true
o4.CanCollide = false
o4.Locked = true
o4.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o4.CFrame = CFrame.new(12.914814, 0.100050002, -10.2348843, 0.469468713, 4.18758136e-05, -0.882949114, 1.04411401e-05, -1, -4.1875599e-05, -0.882949114, 1.0440288e-05, -0.469468713)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.843137, 0.772549, 0.603922)
o4.Position = Vector3.new(12.914814, 0.100050002, -10.2348843)
o4.Orientation = Vector3.new(0, -118, 180)
o4.Color = Color3.new(0.843137, 0.772549, 0.603922)
o5.Parent = o4
o5.Texture = "rbxassetid://64291977"
o6.Parent = o1
o6.Material = Enum.Material.Neon
o6.BrickColor = BrickColor.new("Brick yellow")
o6.Transparency = 1
o6.Position = Vector3.new(12.9474239, 17.2250252, -3.69674897)
o6.Rotation = Vector3.new(0, -42, 180)
o6.Anchored = true
o6.CanCollide = false
o6.Locked = true
o6.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o6.CFrame = CFrame.new(12.9474239, 17.2250252, -3.69674897, -0.743198454, -3.94268463e-05, -0.669071078, 1.75558798e-05, -1, 3.94268245e-05, -0.669071078, 1.75558216e-05, 0.743198454)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.843137, 0.772549, 0.603922)
o6.Position = Vector3.new(12.9474239, 17.2250252, -3.69674897)
o6.Orientation = Vector3.new(0, -42, 180)
o6.Color = Color3.new(0.843137, 0.772549, 0.603922)
o7.Parent = o6
o7.Texture = "rbxassetid://64291977"
o8.Parent = o1
o8.Material = Enum.Material.Neon
o8.BrickColor = BrickColor.new("Brick yellow")
o8.Transparency = 1
o8.Position = Vector3.new(30.9653454, 0.100050002, 15.8439703)
o8.Rotation = Vector3.new(0, 58, 180)
o8.Anchored = true
o8.CanCollide = false
o8.Locked = true
o8.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o8.CFrame = CFrame.new(30.9653454, 0.100050002, 15.8439703, -0.529932559, -1.18956723e-05, 0.848039806, 4.14850401e-05, -1, 1.18963762e-05, 0.848039806, 4.14852366e-05, 0.529932559)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.843137, 0.772549, 0.603922)
o8.Position = Vector3.new(30.9653454, 0.100050002, 15.8439703)
o8.Orientation = Vector3.new(0, 58, 180)
o8.Color = Color3.new(0.843137, 0.772549, 0.603922)
o9.Parent = o8
o9.Texture = "rbxassetid://64291977"
o10.Parent = o1
o10.Material = Enum.Material.Neon
o10.BrickColor = BrickColor.new("Brick yellow")
o10.Transparency = 1
o10.Position = Vector3.new(12.7157116, 0.100050002, -5.64928198)
o10.Rotation = Vector3.new(180, 90, 0)
o10.Anchored = true
o10.CanCollide = false
o10.Locked = true
o10.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o10.CFrame = CFrame.new(12.7157116, 0.100050002, -5.64928198, -3.26622794e-05, -4.59821458e-14, 1, 4.31576664e-05, -1, 1.40958167e-09, 1, 4.31576664e-05, 3.26622794e-05)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.843137, 0.772549, 0.603922)
o10.Position = Vector3.new(12.7157116, 0.100050002, -5.64928198)
o10.Orientation = Vector3.new(0, 90, 180)
o10.Color = Color3.new(0.843137, 0.772549, 0.603922)
o11.Parent = o10
o11.Texture = "rbxassetid://64291977"
o12.Parent = o1
o12.Material = Enum.Material.Neon
o12.BrickColor = BrickColor.new("Brick yellow")
o12.Transparency = 1
o12.Position = Vector3.new(30.8401966, 0.100050002, 3.28220391)
o12.Rotation = Vector3.new(0, 58, 180)
o12.Anchored = true
o12.CanCollide = false
o12.Locked = true
o12.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o12.CFrame = CFrame.new(30.8401966, 0.100050002, 3.28220391, -0.529932559, -1.18956723e-05, 0.848039806, 4.14850401e-05, -1, 1.18963762e-05, 0.848039806, 4.14852366e-05, 0.529932559)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.843137, 0.772549, 0.603922)
o12.Position = Vector3.new(30.8401966, 0.100050002, 3.28220391)
o12.Orientation = Vector3.new(0, 58, 180)
o12.Color = Color3.new(0.843137, 0.772549, 0.603922)
o13.Parent = o12
o13.Texture = "rbxassetid://64291977"
o14.Parent = o1
o14.Material = Enum.Material.Neon
o14.BrickColor = BrickColor.new("Brick yellow")
o14.Transparency = 1
o14.Position = Vector3.new(12.5740099, 0.100050002, -3.95959496)
o14.Rotation = Vector3.new(180, 18.0100002, 0)
o14.Anchored = true
o14.CanCollide = false
o14.Locked = true
o14.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o14.CFrame = CFrame.new(12.5740099, 0.100050002, -3.95959496, 0.951025426, 2.53670842e-05, 0.309112877, 3.49176116e-05, -1, -2.5364352e-05, 0.309112877, 3.49156217e-05, -0.951025426)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o14.Color = Color3.new(0.843137, 0.772549, 0.603922)
o14.Position = Vector3.new(12.5740099, 0.100050002, -3.95959496)
o14.Orientation = Vector3.new(0, 161.990005, 180)
o14.Color = Color3.new(0.843137, 0.772549, 0.603922)
o15.Parent = o14
o15.Texture = "rbxassetid://64291977"
o16.Parent = o1
o16.Material = Enum.Material.Neon
o16.BrickColor = BrickColor.new("Brick yellow")
o16.Transparency = 1
o16.Position = Vector3.new(14.6847, 0.100050002, -13.2670298)
o16.Rotation = Vector3.new(180, 54.0099983, 0)
o16.Anchored = true
o16.CanCollide = false
o16.Locked = true
o16.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o16.CFrame = CFrame.new(14.6847, 0.100050002, -13.2670298, 0.587694526, 1.333614e-05, 0.809082925, 4.10466891e-05, -1, -1.33321018e-05, 0.809082925, 4.10453758e-05, -0.587694526)
o16.BottomSurface = Enum.SurfaceType.Smooth
o16.TopSurface = Enum.SurfaceType.Smooth
o16.Color = Color3.new(0.843137, 0.772549, 0.603922)
o16.Position = Vector3.new(14.6847, 0.100050002, -13.2670298)
o16.Orientation = Vector3.new(0, 125.989998, 180)
o16.Color = Color3.new(0.843137, 0.772549, 0.603922)
o17.Parent = o16
o17.Texture = "rbxassetid://64291977"
o18.Parent = o1
o18.Material = Enum.Material.Neon
o18.BrickColor = BrickColor.new("Brick yellow")
o18.Transparency = 1
o18.Position = Vector3.new(14.6225681, 0.100050002, -3.67820191)
o18.Rotation = Vector3.new(-0.0199999996, -81.9899979, 179.979996)
o18.Anchored = true
o18.CanCollide = false
o18.Locked = true
o18.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o18.CFrame = CFrame.new(14.6225681, 0.100050002, -3.67820191, -0.139310658, -4.30506298e-05, -0.99024874, 3.01275395e-06, -1, 4.30507207e-05, -0.99024868, 3.01404862e-06, 0.139310673)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o18.Color = Color3.new(0.843137, 0.772549, 0.603922)
o18.Position = Vector3.new(14.6225681, 0.100050002, -3.67820191)
o18.Orientation = Vector3.new(0, -81.9899979, 180)
o18.Color = Color3.new(0.843137, 0.772549, 0.603922)
o19.Parent = o18
o19.Texture = "rbxassetid://64291977"
o20.Parent = o1
o20.Material = Enum.Material.Neon
o20.BrickColor = BrickColor.new("Brick yellow")
o20.Transparency = 1
o20.Position = Vector3.new(6.37427092, 0.100050002, -15.8341265)
o20.Rotation = Vector3.new(0, 14, 180)
o20.Anchored = true
o20.CanCollide = false
o20.Locked = true
o20.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o20.CFrame = CFrame.new(6.37427092, 0.100050002, -15.8341265, -0.970294952, -2.65703093e-05, 0.241924986, 3.40085608e-05, -1, 2.65703256e-05, 0.241924986, 3.40085753e-05, 0.970294952)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.843137, 0.772549, 0.603922)
o20.Position = Vector3.new(6.37427092, 0.100050002, -15.8341265)
o20.Orientation = Vector3.new(0, 14, 180)
o20.Color = Color3.new(0.843137, 0.772549, 0.603922)
o21.Parent = o20
o21.Texture = "rbxassetid://64291977"
o22.Parent = o1
o22.Material = Enum.Material.Neon
o22.BrickColor = BrickColor.new("Brick yellow")
o22.Transparency = 1
o22.Position = Vector3.new(14.3010015, 0.100050002, -5.53790092)
o22.Rotation = Vector3.new(180, 18.0100002, 0)
o22.Anchored = true
o22.CanCollide = false
o22.Locked = true
o22.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o22.CFrame = CFrame.new(14.3010015, 0.100050002, -5.53790092, 0.951025426, 2.53670842e-05, 0.309112877, 3.49176116e-05, -1, -2.5364352e-05, 0.309112877, 3.49156217e-05, -0.951025426)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o22.Color = Color3.new(0.843137, 0.772549, 0.603922)
o22.Position = Vector3.new(14.3010015, 0.100050002, -5.53790092)
o22.Orientation = Vector3.new(0, 161.990005, 180)
o22.Color = Color3.new(0.843137, 0.772549, 0.603922)
o23.Parent = o22
o23.Texture = "rbxassetid://64291977"
o24.Parent = o1
o24.Material = Enum.Material.Neon
o24.BrickColor = BrickColor.new("Brick yellow")
o24.Transparency = 1
o24.Position = Vector3.new(11.3393116, 0.100050002, -4.4941802)
o24.Rotation = Vector3.new(0, 78, 180)
o24.Anchored = true
o24.CanCollide = false
o24.Locked = true
o24.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o24.CFrame = CFrame.new(11.3393116, 0.100050002, -4.4941802, -0.207940012, -4.51136793e-06, 0.978141665, 4.29211213e-05, -1, 4.51228243e-06, 0.978141546, 4.29212196e-05, 0.207940042)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o24.Color = Color3.new(0.843137, 0.772549, 0.603922)
o24.Position = Vector3.new(11.3393116, 0.100050002, -4.4941802)
o24.Orientation = Vector3.new(0, 78, 180)
o24.Color = Color3.new(0.843137, 0.772549, 0.603922)
o25.Parent = o24
o25.Texture = "rbxassetid://64291977"
o26.Parent = o1
o26.Material = Enum.Material.Neon
o26.BrickColor = BrickColor.new("Brick yellow")
o26.Transparency = 1
o26.Position = Vector3.new(18.8494473, 0.100050002, -6.04768515)
o26.Rotation = Vector3.new(0, 70, 180)
o26.Anchored = true
o26.CanCollide = false
o26.Locked = true
o26.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o26.CFrame = CFrame.new(18.8494473, 0.100050002, -6.04768515, -0.342094928, -7.49527408e-06, 0.939665437, 4.25010803e-05, -1, 7.4964214e-06, 0.939665496, 4.25012768e-05, 0.342094928)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.843137, 0.772549, 0.603922)
o26.Position = Vector3.new(18.8494473, 0.100050002, -6.04768515)
o26.Orientation = Vector3.new(0, 70, 180)
o26.Color = Color3.new(0.843137, 0.772549, 0.603922)
o27.Parent = o26
o27.Texture = "rbxassetid://64291977"
o28.Parent = o1
o28.Material = Enum.Material.Neon
o28.BrickColor = BrickColor.new("Brick yellow")
o28.Transparency = 1
o28.Position = Vector3.new(21.8041248, 0.100050002, -8.64613819)
o28.Rotation = Vector3.new(180, 90, 0)
o28.Anchored = true
o28.CanCollide = false
o28.Locked = true
o28.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o28.CFrame = CFrame.new(21.8041248, 0.100050002, -8.64613819, -3.26622794e-05, -4.59821458e-14, 1, 4.31576664e-05, -1, 1.40958167e-09, 1, 4.31576664e-05, 3.26622794e-05)
o28.BottomSurface = Enum.SurfaceType.Smooth
o28.TopSurface = Enum.SurfaceType.Smooth
o28.Color = Color3.new(0.843137, 0.772549, 0.603922)
o28.Position = Vector3.new(21.8041248, 0.100050002, -8.64613819)
o28.Orientation = Vector3.new(0, 90, 180)
o28.Color = Color3.new(0.843137, 0.772549, 0.603922)
o29.Parent = o28
o29.Texture = "rbxassetid://64291977"
o30.Parent = o1
o30.Material = Enum.Material.Neon
o30.BrickColor = BrickColor.new("Brick yellow")
o30.Transparency = 1
o30.Position = Vector3.new(11.774024, 0.100050002, 0.898005009)
o30.Rotation = Vector3.new(180, 38.0099983, 0)
o30.Anchored = true
o30.CanCollide = false
o30.Locked = true
o30.Size = Vector3.new(0.800000012, 0.200000003, 0.800000012)
o30.CFrame = CFrame.new(11.774024, 0.100050002, 0.898005009, 0.787946463, 1.89185575e-05, 0.615743816, 3.87916989e-05, -1, -1.89156926e-05, 0.615743876, 3.87902983e-05, -0.787946343)
o30.BottomSurface = Enum.SurfaceType.Smooth
o30.TopSurface = Enum.SurfaceType.Smooth
o30.Color = Color3.new(0.843137, 0.772549, 0.603922)
o30.Position = Vector3.new(11.774024, 0.100050002, 0.898005009)
o30.Orientation = Vector3.new(0, 141.990005, 180)
o30.Color = Color3.new(0.843137, 0.772549, 0.603922)
o31.Parent = o30
o31.Texture = "rbxassetid://64291977"
o32.Name = "Mami's Musket"
o32.Parent = o1
o32.PrimaryPart = o50
o33.Parent = o32
o33.Material = Enum.Material.SmoothPlastic
o33.BrickColor = BrickColor.new("Institutional white")
o33.Position = Vector3.new(-29.6815701, 41.6659737, 4.99700689)
o33.Rotation = Vector3.new(-97.5800018, 31.0300007, -75.5199966)
o33.Anchored = true
o33.CanCollide = false
o33.Locked = true
o33.Size = Vector3.new(0.400000036, 0.400000393, 0.400000036)
o33.CFrame = CFrame.new(-29.6815701, 41.6659737, 4.99700689, 0.214217722, 0.829712689, 0.515448689, 5.46574593e-05, -0.52770865, 0.849425077, 0.976785779, -0.181933612, -0.113089681)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.972549, 0.972549, 0.972549)
o33.Position = Vector3.new(-29.6815701, 41.6659737, 4.99700689)
o33.Orientation = Vector3.new(-58.1500015, 102.370003, 179.990005)
o33.Color = Color3.new(0.972549, 0.972549, 0.972549)
o34.Parent = o33
o35.Name = "Weld"
o35.Parent = o33
o35.C0 = CFrame.new(0, 0, 0, 1, 2.26422185e-06, -4.30974578e-05, -4.30976106e-05, 0.104717486, -0.994502008, 2.26128395e-06, 0.994502008, 0.104717486)
o35.C1 = CFrame.new(0, -6.71677876, -0.0616726875, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o35.Part0 = o33
o35.Part1 = o67
o36.Parent = o32
o36.Material = Enum.Material.SmoothPlastic
o36.BrickColor = BrickColor.new("Institutional white")
o36.Position = Vector3.new(-28.8859272, 40.95924, 4.82253408)
o36.Rotation = Vector3.new(80.5500031, -36.8300018, 74.4800034)
o36.Anchored = true
o36.CanCollide = false
o36.Locked = true
o36.Size = Vector3.new(0.400000036, 1.20000005, 0.320000082)
o36.CFrame = CFrame.new(-28.8859272, 40.95924, 4.82253408, 0.214197338, -0.771251202, -0.599404991, -9.18805599e-05, 0.613634229, -0.789588928, 0.976787984, 0.169181079, 0.131368876)
o36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o36.Color = Color3.new(0.972549, 0.972549, 0.972549)
o36.Position = Vector3.new(-28.8859272, 40.95924, 4.82253408)
o36.Orientation = Vector3.new(52.1500015, -77.6399994, -0.00999999978)
o36.Color = Color3.new(0.972549, 0.972549, 0.972549)
o37.Name = "Weld"
o37.Parent = o36
o37.C0 = CFrame.new(0, 0, 0, 1, 4.31581502e-05, 4.80200824e-10, 9.29503585e-10, -3.26636873e-05, 1, 4.31581502e-05, -1, -3.26636873e-05)
o37.C1 = CFrame.new(0, -5.64000034, -0.120002747, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o37.Part0 = o36
o37.Part1 = o67
o38.Parent = o32
o38.Material = Enum.Material.SmoothPlastic
o38.BrickColor = BrickColor.new("Institutional white")
o38.Position = Vector3.new(-30.2928238, 41.8757744, 5.13107491)
o38.Rotation = Vector3.new(-89.9700012, -0.150000006, -77.6399994)
o38.Anchored = true
o38.CanCollide = false
o38.Locked = true
o38.Size = Vector3.new(0.400000036, 0.400000393, 0.400000036)
o38.CFrame = CFrame.new(-30.2928238, 41.8757744, 5.13107491, 0.214137316, 0.976805866, -0.00258305669, 3.9935112e-05, 0.00262856483, 1.00000358, 0.976809263, -0.214143813, 0.000518262386)
o38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o38.Color = Color3.new(0.972549, 0.972549, 0.972549)
o38.Position = Vector3.new(-30.2928238, 41.8757744, 5.13107491)
o38.Orientation = Vector3.new(-90, -77.6399994, 0)
o38.Color = Color3.new(0.972549, 0.972549, 0.972549)
o39.Parent = o38
o40.Name = "Weld"
o40.Parent = o38
o40.C0 = CFrame.new(0, 0, 0, 1, 1.40558377e-05, -4.08039814e-05, -4.08046581e-05, 0.615827262, -0.787881255, 1.40538723e-05, 0.787881255, 0.615827262)
o40.C1 = CFrame.new(0, -7.33962727, -0.279908657, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o40.Part0 = o38
o40.Part1 = o67
o41.Parent = o32
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Institutional white")
o41.Position = Vector3.new(-29.9805317, 41.8203125, 5.0625782)
o41.Rotation = Vector3.new(-94.4300003, 19.3700008, -76.8799973)
o41.Anchored = true
o41.CanCollide = false
o41.Locked = true
o41.Size = Vector3.new(0.400000036, 0.400000393, 0.400000036)
o41.CFrame = CFrame.new(-29.9805317, 41.8203125, 5.0625782, 0.214109123, 0.91876471, 0.331705689, 0.000106450636, -0.33960259, 0.940569103, 0.97680974, -0.201349109, -0.0728098154)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.972549, 0.972549, 0.972549)
o41.Position = Vector3.new(-29.9805317, 41.8203125, 5.0625782)
o41.Orientation = Vector3.new(-70.1500015, 102.379997, 179.979996)
o41.Color = Color3.new(0.972549, 0.972549, 0.972549)
o42.Parent = o41
o43.Name = "Weld"
o43.Parent = o41
o43.C0 = CFrame.new(0, 0, 0, 1, 6.75691717e-06, -4.26251172e-05, -4.26254228e-05, 0.309224755, -0.950989008, 6.75498814e-06, 0.950989008, 0.309224755)
o43.C1 = CFrame.new(0, -7.05314159, -0.127582073, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o43.Part0 = o41
o43.Part1 = o67
o44.Parent = o32
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Institutional white")
o44.Position = Vector3.new(-29.3590755, 41.4528427, 4.92628098)
o44.Rotation = Vector3.new(-98.1800003, 32.9700012, -75.2200012)
o44.Anchored = true
o44.CanCollide = false
o44.Locked = true
o44.Size = Vector3.new(0.400000036, 0.400000393, 0.400000036)
o44.CFrame = CFrame.new(-29.3590755, 41.4528427, 4.92628098, 0.214077637, 0.811211586, 0.54415679, 7.41753101e-05, -0.557085097, 0.830455422, 0.976816714, -0.177741572, -0.11931961)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.972549, 0.972549, 0.972549)
o44.Position = Vector3.new(-29.3590755, 41.4528427, 4.92628098)
o44.Orientation = Vector3.new(-56.1500015, 102.370003, 179.990005)
o44.Color = Color3.new(0.972549, 0.972549, 0.972549)
o45.Parent = o44
o46.Name = "Weld"
o46.Parent = o44
o46.C0 = CFrame.new(0, 0, 0, 1, 1.51319205e-06, -4.31300869e-05, -4.31302069e-05, 0.0700017065, -0.997546971, 1.50969936e-06, 0.997546971, 0.0700017065)
o46.C1 = CFrame.new(0, -6.32531834, -0.0274243355, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o46.Part0 = o44
o46.Part1 = o67
o47.Parent = o32
o47.Material = Enum.Material.SmoothPlastic
o47.BrickColor = BrickColor.new("Institutional white")
o47.Position = Vector3.new(-29.0440598, 41.2282829, 4.85720015)
o47.Rotation = Vector3.new(-98.8000031, 34.9000015, -74.8700027)
o47.Anchored = true
o47.CanCollide = false
o47.Locked = true
o47.Size = Vector3.new(0.400000036, 0.400000393, 0.400000036)
o47.CFrame = CFrame.new(-29.0440598, 41.2282829, 4.85720015, 0.214085266, 0.791728139, 0.572131157, 5.9662736e-05, -0.585721493, 0.810512424, 0.976814985, -0.173484638, -0.125441566)
o47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o47.Color = Color3.new(0.972549, 0.972549, 0.972549)
o47.Position = Vector3.new(-29.0440598, 41.2282829, 4.85720015)
o47.Orientation = Vector3.new(-54.1500015, 102.370003, 179.990005)
o47.Color = Color3.new(0.972549, 0.972549, 0.972549)
o48.Parent = o47
o49.Name = "Weld"
o49.Parent = o47
o49.C0 = CFrame.new(0, 0, 0, 1, 7.5924379e-07, -4.31506633e-05, -4.3150696e-05, 0.0351315886, -0.999382675, 7.57176167e-07, 0.999382675, 0.0351315886)
o49.C1 = CFrame.new(0, -5.93289852, -0.00685834885, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o49.Part0 = o47
o49.Part1 = o67
o50.Name = "Handle"
o50.Parent = o32
o50.Material = Enum.Material.SmoothPlastic
o50.BrickColor = BrickColor.new("Bright blue")
o50.Transparency = 1
o50.Position = Vector3.new(-27.7981758, 39.8090057, 4.58396721)
o50.Rotation = Vector3.new(-74.5899963, -50.4700012, -70.3300018)
o50.Anchored = true
o50.CanCollide = false
o50.Locked = true
o50.Size = Vector3.new(0.400000036, 1.32000017, 8.43999958)
o50.CFrame = CFrame.new(-27.7981758, 39.8090057, 4.58396721, 0.214233696, 0.599348426, -0.77128315, -1.39474869e-05, 0.789622188, 0.613591671, 0.976778507, -0.131438866, 0.169172883)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o50.Position = Vector3.new(-27.7981758, 39.8090057, 4.58396721)
o50.Orientation = Vector3.new(-37.8499985, -77.6299973, 0)
o50.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o51.Name = "Weld"
o51.Parent = o50
o51.C1 = CFrame.new(0, -4.05499935, -0.345000267, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o51.Part0 = o50
o51.Part1 = o67
o52.Parent = o32
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Institutional white")
o52.Position = Vector3.new(-29.7021961, 41.3150558, 5.0015502)
o52.Rotation = Vector3.new(-98.1800003, 32.9700012, -75.2200012)
o52.Anchored = true
o52.CanCollide = false
o52.Locked = true
o52.Size = Vector3.new(0.400000036, 0.830000401, 0.620000064)
o52.CFrame = CFrame.new(-29.7021961, 41.3150558, 5.0015502, 0.214077637, 0.811211586, 0.54415679, 7.41753101e-05, -0.557085097, 0.830455422, 0.976816714, -0.177741572, -0.11931961)
o52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.972549, 0.972549, 0.972549)
o52.Position = Vector3.new(-29.7021961, 41.3150558, 5.0015502)
o52.Orientation = Vector3.new(-56.1500015, 102.370003, 179.990005)
o52.Color = Color3.new(0.972549, 0.972549, 0.972549)
o53.Name = "Weld"
o53.Parent = o52
o53.C0 = CFrame.new(0, 0, 0, 1, 1.51319205e-06, -4.31300869e-05, -4.31302069e-05, 0.0700017065, -0.997546971, 1.50969936e-06, 0.997546971, 0.0700017065)
o53.C1 = CFrame.new(0, -6.51817226, -0.351666451, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o53.Part0 = o52
o53.Part1 = o67
o54.Parent = o32
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Institutional white")
o54.Position = Vector3.new(-28.6465626, 41.2204819, 5.02600098)
o54.Rotation = Vector3.new(80.1699982, -37.9099998, 74.2399979)
o54.Anchored = true
o54.CanCollide = false
o54.Locked = true
o54.Size = Vector3.new(0.200000003, 0.200000107, 0.319999993)
o54.CFrame = CFrame.new(-28.6465626, 41.2204819, 5.02600098, 0.214269474, -0.759293437, -0.614460945, -8.57741179e-05, 0.629056752, -0.777359486, 0.976774633, 0.166617125, 0.134722516)
o54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o54.Color = Color3.new(0.972549, 0.972549, 0.972549)
o54.Position = Vector3.new(-28.6465626, 41.2204819, 5.02600098)
o54.Orientation = Vector3.new(51.0200005, -77.6299973, -0.00999999978)
o54.Color = Color3.new(0.972549, 0.972549, 0.972549)
o55.Parent = o54
o55.Scale = Vector3.new(0.5, 1, 0.600000024)
o55.Scale = Vector3.new(0.5, 1, 0.600000024)
o56.Name = "Weld"
o56.Parent = o54
o56.C0 = CFrame.new(0, 0, 0, 1, 4.31562803e-05, -4.21894583e-07, -4.21894583e-07, 0.0195513964, 0.999807537, 4.31562803e-05, -0.999807537, 0.0195513964)
o56.C1 = CFrame.new(0.25, -5.6500845, 0.202951908, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o56.Part0 = o54
o56.Part1 = o67
o57.Parent = o32
o57.Material = Enum.Material.SmoothPlastic
o57.BrickColor = BrickColor.new("Institutional white")
o57.Position = Vector3.new(-30.9239235, 41.8829193, 5.269485)
o57.Rotation = Vector3.new(-98.1800003, 32.9700012, -75.2200012)
o57.Anchored = true
o57.CanCollide = false
o57.Locked = true
o57.Size = Vector3.new(0.400000036, 0.82000041, 0.570000112)
o57.CFrame = CFrame.new(-30.9239235, 41.8829193, 5.269485, 0.214077637, 0.811211586, 0.54415679, 7.41753101e-05, -0.557085097, 0.830455422, 0.976816714, -0.177741572, -0.11931961)
o57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o57.Color = Color3.new(0.972549, 0.972549, 0.972549)
o57.Position = Vector3.new(-30.9239235, 41.8829193, 5.269485)
o57.Orientation = Vector3.new(-56.1500015, 102.370003, 179.990005)
o57.Color = Color3.new(0.972549, 0.972549, 0.972549)
o58.Name = "Weld"
o58.Parent = o57
o58.C0 = CFrame.new(0, 0, 0, 1, 1.51319205e-06, -4.31300869e-05, -4.31302069e-05, 0.0700017065, -0.997546971, 1.50969936e-06, 0.997546971, 0.0700017065)
o58.C1 = CFrame.new(0, -7.85417461, -0.670639038, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o58.Part0 = o57
o58.Part1 = o67
o59.Parent = o32
o59.Material = Enum.Material.SmoothPlastic
o59.BrickColor = BrickColor.new("Institutional white")
o59.Position = Vector3.new(-30.5647774, 41.937397, 5.19072485)
o59.Rotation = Vector3.new(-98.1800003, 32.9700012, -75.2200012)
o59.Anchored = true
o59.CanCollide = false
o59.Locked = true
o59.Size = Vector3.new(0.400000036, 1.37000036, 0.430000067)
o59.CFrame = CFrame.new(-30.5647774, 41.937397, 5.19072485, 0.214077637, 0.811211586, 0.54415679, 7.41753101e-05, -0.557085097, 0.830455422, 0.976816714, -0.177741572, -0.11931961)
o59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o59.Color = Color3.new(0.972549, 0.972549, 0.972549)
o59.Position = Vector3.new(-30.5647774, 41.937397, 5.19072485)
o59.Orientation = Vector3.new(-56.1500015, 102.370003, 179.990005)
o59.Color = Color3.new(0.972549, 0.972549, 0.972549)
o60.Parent = o59
o61.Name = "Weld"
o61.Parent = o59
o61.C0 = CFrame.new(0, 0, 0, 1, 1.51319205e-06, -4.31300869e-05, -4.31302069e-05, 0.0700017065, -0.997546971, 1.50969936e-06, 0.997546971, 0.0700017065)
o61.C1 = CFrame.new(0, -7.59728336, -0.4020648, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o61.Part0 = o59
o61.Part1 = o67
o62.Parent = o32
o62.Material = Enum.Material.SmoothPlastic
o62.BrickColor = BrickColor.new("Institutional white")
o62.Position = Vector3.new(-30.2684174, 41.6076736, 5.12572098)
o62.Rotation = Vector3.new(-94.4300003, 19.3700008, -76.8799973)
o62.Anchored = true
o62.CanCollide = false
o62.Locked = true
o62.Size = Vector3.new(0.400000036, 0.81000042, 0.600000024)
o62.CFrame = CFrame.new(-30.2684174, 41.6076736, 5.12572098, 0.214109123, 0.91876471, 0.331705689, 0.000106450636, -0.33960259, 0.940569103, 0.97680974, -0.201349109, -0.0728098154)
o62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o62.Color = Color3.new(0.972549, 0.972549, 0.972549)
o62.Position = Vector3.new(-30.2684174, 41.6076736, 5.12572098)
o62.Orientation = Vector3.new(-70.1500015, 102.379997, 179.979996)
o62.Color = Color3.new(0.972549, 0.972549, 0.972549)
o63.Name = "Weld"
o63.Parent = o62
o63.C0 = CFrame.new(0, 0, 0, 1, 6.75691717e-06, -4.26251172e-05, -4.26254228e-05, 0.309224755, -0.950989008, 6.75498814e-06, 0.950989008, 0.309224755)
o63.C1 = CFrame.new(0, -7.155406, -0.476247311, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o63.Part0 = o62
o63.Part1 = o67
o64.Parent = o32
o64.Material = Enum.Material.SmoothPlastic
o64.BrickColor = BrickColor.new("Black")
o64.Position = Vector3.new(-28.5385513, 40.3545532, 4.75146723)
o64.Rotation = Vector3.new(-98.6299973, 34.3800011, -74.9700012)
o64.Anchored = true
o64.CanCollide = false
o64.Locked = true
o64.Size = Vector3.new(0.330000043, 0.200000003, 0.529999971)
o64.CFrame = CFrame.new(-28.5385513, 40.3545532, 4.75146723, 0.214072853, 0.797068834, 0.564671755, 8.45181785e-05, -0.578087986, 0.815974474, 0.976817727, -0.174630284, -0.123820297)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o64.Color = Color3.new(0.105882, 0.164706, 0.207843)
o64.Position = Vector3.new(-28.5385513, 40.3545532, 4.75146723)
o64.Orientation = Vector3.new(-54.6800003, 102.370003, 179.990005)
o64.Color = Color3.new(0.105882, 0.164706, 0.207843)
o65.Parent = o64
o65.Scale = Vector3.new(1.10000002, 1, 1.10000002)
o65.Scale = Vector3.new(1.10000002, 1, 1.10000002)
o66.Name = "Weld"
o66.Parent = o64
o66.C0 = CFrame.new(0, 0, 0, 1, 9.60841703e-07, -4.3145963e-05, -4.31460358e-05, 0.0444376878, -0.999012232, 9.57414159e-07, 0.999012232, 0.0444376878)
o66.C1 = CFrame.new(0.00500011444, -4.98907185, -0.379922867, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o66.Part0 = o64
o66.Part1 = o67
o67.Name = "FiringHole"
o67.Parent = o32
o67.Material = Enum.Material.SmoothPlastic
o67.BrickColor = BrickColor.new("Really black")
o67.Position = Vector3.new(-24.4634743, 37.5934448, 3.85261011)
o67.Rotation = Vector3.new(-99.4499969, 36.8300018, -74.4800034)
o67.Anchored = true
o67.CanCollide = false
o67.Locked = true
o67.Size = Vector3.new(0.400000036, 0.200000003, 0.400000036)
o67.CFrame = CFrame.new(-24.4634743, 37.5934448, 3.85261011, 0.214121178, 0.771262586, 0.59942162, 4.47910497e-05, -0.613661766, 0.78956908, 0.976807177, -0.169036612, -0.131432533)
o67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o67.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o67.Position = Vector3.new(-24.4634743, 37.5934448, 3.85261011)
o67.Orientation = Vector3.new(-52.1500015, 102.370003, 180)
o67.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o68.Parent = o67
o68.Scale = Vector3.new(0.899999976, 1.00999999, 0.899999976)
o68.Scale = Vector3.new(0.899999976, 1.00999999, 0.899999976)
o69.Parent = o32
o69.Material = Enum.Material.Granite
o69.BrickColor = BrickColor.new("Institutional white")
o69.Position = Vector3.new(-27.3157654, 39.5352821, 4.48329878)
o69.Rotation = Vector3.new(-98.6299973, 34.3800011, -74.9599991)
o69.Anchored = true
o69.CanCollide = false
o69.Locked = true
o69.Size = Vector3.new(0.330000043, 3.85000038, 0.419999987)
o69.CFrame = CFrame.new(-27.3157654, 39.5352821, 4.48329878, 0.214170173, 0.79705292, 0.564657331, 1.37383022e-05, -0.578073084, 0.815985024, 0.976796329, -0.174751908, -0.123816974)
o69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o69.Color = Color3.new(0.972549, 0.972549, 0.972549)
o69.Position = Vector3.new(-27.3157654, 39.5352821, 4.48329878)
o69.Orientation = Vector3.new(-54.6800003, 102.370003, 180)
o69.Color = Color3.new(0.972549, 0.972549, 0.972549)
o70.Name = "Weld"
o70.Parent = o69
o70.C0 = CFrame.new(0, 0, 0, 1, 9.60841703e-07, -4.3145963e-05, -4.31460358e-05, 0.0444376878, -0.999012232, 9.57414159e-07, 0.999012232, 0.0444376878)
o70.C1 = CFrame.new(0.00500011444, -3.49797153, -0.258799553, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o70.Part0 = o69
o70.Part1 = o67
o71.Parent = o32
o71.Material = Enum.Material.SmoothPlastic
o71.BrickColor = BrickColor.new("Institutional white")
o71.Position = Vector3.new(-28.5559063, 41.1137848, 5.00611496)
o71.Rotation = Vector3.new(70.3899994, -56.8300018, 66.9400024)
o71.Anchored = true
o71.CanCollide = false
o71.Locked = true
o71.Size = Vector3.new(0.200000003, 0.200000107, 0.319999993)
o71.CFrame = CFrame.new(-28.5559063, 41.1137848, 5.00611496, 0.214336216, -0.503405154, -0.837044418, -1.6600563e-05, 0.85695833, -0.515385866, 0.97675997, 0.11047975, 0.183668837)
o71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o71.Color = Color3.new(0.972549, 0.972549, 0.972549)
o71.Position = Vector3.new(-28.5559063, 41.1137848, 5.00611496)
o71.Orientation = Vector3.new(31.0200005, -77.6200027, 0)
o71.Color = Color3.new(0.972549, 0.972549, 0.972549)
o72.Parent = o71
o72.Scale = Vector3.new(0.5, 1, 0.600000024)
o72.Scale = Vector3.new(0.5, 1, 0.600000024)
o73.Name = "Weld"
o73.Parent = o71
o73.C0 = CFrame.new(0, 0, 0, 1, 4.24268947e-05, -7.9097581e-06, -7.90891318e-06, 0.360322356, 0.93282795, 4.24270474e-05, -0.93282795, 0.360322356)
o73.C1 = CFrame.new(0.25, -5.51134586, 0.175675869, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o73.Part0 = o71
o73.Part1 = o67
o74.Parent = o32
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Fossil")
o74.Position = Vector3.new(-28.5427761, 40.9817963, 4.82917595)
o74.Rotation = Vector3.new(42.2799988, -73.4899979, 41.0900002)
o74.Anchored = true
o74.CanCollide = false
o74.Locked = true
o74.Size = Vector3.new(0.819999933, 0.200000107, 0.319999993)
o74.CFrame = CFrame.new(-28.5427761, 40.9817963, 4.82917595, 0.214256436, -0.186812222, -0.958746791, 2.95270165e-05, 0.981541991, -0.191247255, 0.976777434, 0.0409476496, 0.210307196)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.623529, 0.631373, 0.67451)
o74.Position = Vector3.new(-28.5427761, 40.9817963, 4.82917595)
o74.Orientation = Vector3.new(11.0299997, -77.6299973, 0)
o74.Color = Color3.new(0.623529, 0.631373, 0.67451)
o75.Parent = o74
o75.Scale = Vector3.new(0.600000024, 1, 0.699999988)
o75.Scale = Vector3.new(0.600000024, 1, 0.699999988)
o76.Name = "Weld"
o76.Parent = o74
o76.C0 = CFrame.new(0, 0, 0, 1, 4.04097736e-05, -1.51547138e-05, -1.51547138e-05, 0.657574058, 0.753382623, 4.04097736e-05, -0.753382623, 0.657574058)
o76.C1 = CFrame.new(0.0800004005, -5.39030361, 0.102592945, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o76.Part0 = o74
o76.Part1 = o67
o77.Parent = o32
o77.Material = Enum.Material.SmoothPlastic
o77.BrickColor = BrickColor.new("Fossil")
o77.Position = Vector3.new(-28.9099159, 40.9276352, 4.82777405)
o77.Rotation = Vector3.new(80.5500031, -36.8199997, 74.4800034)
o77.Anchored = true
o77.CanCollide = false
o77.Locked = true
o77.Size = Vector3.new(0.520000041, 1.20000005, 0.240000084)
o77.CFrame = CFrame.new(-28.9099159, 40.9276352, 4.82777405, 0.214235917, -0.771275818, -0.599363565, -2.825306e-05, 0.613605499, -0.78961283, 0.976782084, 0.169180334, 0.131434545)
o77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o77.Color = Color3.new(0.623529, 0.631373, 0.67451)
o77.Position = Vector3.new(-28.9099159, 40.9276352, 4.82777405)
o77.Orientation = Vector3.new(52.1500015, -77.6299973, 0)
o77.Color = Color3.new(0.623529, 0.631373, 0.67451)
o78.Name = "Weld"
o78.Parent = o77
o78.C0 = CFrame.new(0, 0, 0, 1, 4.31581502e-05, 4.80200824e-10, 9.29503585e-10, -3.26636873e-05, 1, 4.31581502e-05, -1, -3.26636873e-05)
o78.C1 = CFrame.new(0, -5.64000034, -0.160002708, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o78.Part0 = o77
o78.Part1 = o67
o79.Parent = o32
o79.Material = Enum.Material.SmoothPlastic
o79.BrickColor = BrickColor.new("Institutional white")
o79.Position = Vector3.new(-29.0537643, 40.7381172, 4.85933924)
o79.Rotation = Vector3.new(80.5500031, -36.8199997, 74.4800034)
o79.Anchored = true
o79.CanCollide = false
o79.Locked = true
o79.Size = Vector3.new(0.360000014, 1.20000005, 0.419999987)
o79.CFrame = CFrame.new(-29.0537643, 40.7381172, 4.85933924, 0.214235917, -0.771275818, -0.599363565, -2.825306e-05, 0.613605499, -0.78961283, 0.976782084, 0.169180334, 0.131434545)
o79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o79.Color = Color3.new(0.972549, 0.972549, 0.972549)
o79.Position = Vector3.new(-29.0537643, 40.7381172, 4.85933924)
o79.Orientation = Vector3.new(52.1500015, -77.6299973, 0)
o79.Color = Color3.new(0.972549, 0.972549, 0.972549)
o80.Name = "Weld"
o80.Parent = o79
o80.C0 = CFrame.new(0, 0, 0, 1, 4.31581502e-05, 4.80200824e-10, 9.29503585e-10, -3.26636873e-05, 1, 4.31581502e-05, -1, -3.26636873e-05)
o80.C1 = CFrame.new(0, -5.64000034, -0.399986267, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o80.Part0 = o79
o80.Part1 = o67
o81.Parent = o32
o81.Material = Enum.Material.SmoothPlastic
o81.BrickColor = BrickColor.new("Black")
o81.Position = Vector3.new(-28.3049183, 40.649044, 4.69510078)
o81.Rotation = Vector3.new(-99.4499969, 36.8300018, -74.4800034)
o81.Anchored = true
o81.CanCollide = false
o81.Locked = true
o81.Size = Vector3.new(0.400000036, 0.200000003, 0.400000036)
o81.CFrame = CFrame.new(-28.3049183, 40.649044, 4.69510078, 0.214121178, 0.771262586, 0.59942162, 4.47910497e-05, -0.613661766, 0.78956908, 0.976807177, -0.169036612, -0.131432533)
o81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o81.Color = Color3.new(0.105882, 0.164706, 0.207843)
o81.Position = Vector3.new(-28.3049183, 40.649044, 4.69510078)
o81.Orientation = Vector3.new(-52.1500015, 102.370003, 180)
o81.Color = Color3.new(0.105882, 0.164706, 0.207843)
o82.Parent = o81
o82.Scale = Vector3.new(1.04999995, 1, 1.04999995)
o82.Scale = Vector3.new(1.04999995, 1, 1.04999995)
o83.Name = "Weld"
o83.Parent = o81
o83.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o83.C1 = CFrame.new(0, -4.98000622, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o83.Part0 = o81
o83.Part1 = o67
o84.Parent = o32
o84.Material = Enum.Material.SmoothPlastic
o84.BrickColor = BrickColor.new("Institutional white")
o84.Position = Vector3.new(-24.4066105, 37.8395195, 3.84014297)
o84.Rotation = Vector3.new(80.5500031, -36.8199997, 74.4800034)
o84.Anchored = true
o84.CanCollide = false
o84.Locked = true
o84.Size = Vector3.new(0.200000003, 0.450000107, 0.200000003)
o84.CFrame = CFrame.new(-24.4066105, 37.8395195, 3.84014297, 0.214235917, -0.771275818, -0.599363565, -2.825306e-05, 0.613605499, -0.78961283, 0.976782084, 0.169180334, 0.131434545)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.972549, 0.972549, 0.972549)
o84.Position = Vector3.new(-24.4066105, 37.8395195, 3.84014297)
o84.Orientation = Vector3.new(52.1500015, -77.6299973, 0)
o84.Color = Color3.new(0.972549, 0.972549, 0.972549)
o85.Parent = o84
o85.Scale = Vector3.new(0.5, 1, 0.600000024)
o85.Scale = Vector3.new(0.5, 1, 0.600000024)
o86.Name = "Weld"
o86.Parent = o84
o86.C0 = CFrame.new(0, 0, 0, 1, 4.31581502e-05, 4.80200824e-10, 9.29503585e-10, -3.26636873e-05, 1, 4.31581502e-05, -1, -3.26636873e-05)
o86.C1 = CFrame.new(0, -0.10500145, 0.230000019, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o86.Part0 = o84
o86.Part1 = o67
o87.Parent = o32
o87.Material = Enum.Material.SmoothPlastic
o87.BrickColor = BrickColor.new("Institutional white")
o87.Position = Vector3.new(-26.6387558, 39.3237, 4.3296771)
o87.Rotation = Vector3.new(-99.4499969, 36.8300018, -74.4800034)
o87.Anchored = true
o87.CanCollide = false
o87.Locked = true
o87.Size = Vector3.new(0.400000036, 5.84000015, 0.400000036)
o87.CFrame = CFrame.new(-26.6387558, 39.3237, 4.3296771, 0.214121178, 0.771262586, 0.59942162, 4.47910497e-05, -0.613661766, 0.78956908, 0.976807177, -0.169036612, -0.131432533)
o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Color = Color3.new(0.972549, 0.972549, 0.972549)
o87.Position = Vector3.new(-26.6387558, 39.3237, 4.3296771)
o87.Orientation = Vector3.new(-52.1500015, 102.370003, 180)
o87.Color = Color3.new(0.972549, 0.972549, 0.972549)
o88.Parent = o87
o89.Name = "Weld"
o89.Parent = o87
o89.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o89.C1 = CFrame.new(0, -2.82000637, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o89.Part0 = o87
o89.Part1 = o67
o90.Parent = o32
o90.Material = Enum.Material.Granite
o90.BrickColor = BrickColor.new("Institutional white")
o90.Position = Vector3.new(-26.7701893, 39.1749687, 4.35851479)
o90.Rotation = Vector3.new(-99.4499969, 36.8300018, -74.4800034)
o90.Anchored = true
o90.CanCollide = false
o90.Locked = true
o90.Size = Vector3.new(0.400000036, 5.81000042, 0.400000036)
o90.CFrame = CFrame.new(-26.7701893, 39.1749687, 4.35851479, 0.214121178, 0.771262586, 0.59942162, 4.47910497e-05, -0.613661766, 0.78956908, 0.976807177, -0.169036612, -0.131432533)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.972549, 0.972549, 0.972549)
o90.Position = Vector3.new(-26.7701893, 39.1749687, 4.35851479)
o90.Orientation = Vector3.new(-52.1500015, 102.370003, 180)
o90.Color = Color3.new(0.972549, 0.972549, 0.972549)
o91.Parent = o90
o91.Scale = Vector3.new(0.75, 1, 0.75)
o91.Scale = Vector3.new(0.75, 1, 0.75)
o92.Name = "Weld"
o92.Parent = o90
o92.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o92.C1 = CFrame.new(0, -2.83500576, -0.199999809, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o92.Part0 = o90
o92.Part1 = o67
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
--Decompilled / Converted to local by N3xul.