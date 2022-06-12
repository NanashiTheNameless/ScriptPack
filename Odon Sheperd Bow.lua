--Fixed by Scenius(On ROBLOX) g/nl/all
  wait(0.016666666666666666)
  Effects = {}
  
local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = BrickColor.new("Really black")
                P.Material = "Neon"
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
               	P.CanCollide = false
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = BrickColor.new("Really black")
                        P.Material = "Neon"
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.CanCollide = false
                        P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end
  local Player = game.Players.localPlayer
script.Parent = Player.PlayerGui
  local Character = Player.Character
  local Humanoid = Character.Humanoid
  local Mouse = Player:GetMouse()
  local LeftArm = Character["Left Arm"]
  local RightArm = Character["Right Arm"]
  local LeftLeg = Character["Left Leg"]
  local RightLeg = Character["Right Leg"]
  local Head = Character.Head
  local Torso = Character.Torso
  local Camera = game.Workspace.CurrentCamera
  local RootPart = Character.HumanoidRootPart
  local RootJoint = RootPart.RootJoint
  local attack = false
  local Anim = "Idle"
  local attacktype = 1
  local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  local velocity = RootPart.Velocity.y
  local sine = 0
  local change = 1
  local Create = LoadLibrary("RbxUtility").Create
  Head.face:Destroy()
  Head.Transparency = 1
  local FakeHead = Head:Clone()
  FakeHead.Transparency = 0
  FakeHead.Size = Vector3.new(0.8,0.8,0.8)
local txt = Instance.new("BillboardGui", Character)
txt.Adornee = Character.Head
txt.Name = "Status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "SciFi"
text.TextStrokeColor3 = BrickColor.new("Really black").Color

CV = "Maroon"

spawn(function()
	while wait() do
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA'Part' then
				v.BrickColor = BrickColor.new("Really black")
			end
		end
	end
end)

local s = Instance.new("Sound",Character)
s.SoundId = "rbxassetid://773296297"
s.Looped = true
s.Volume = 10
s:Play()

local pa = Instance.new("Shirt",Character)
pa.ShirtTemplate = "http://www.roblox.com/asset/?id=9860730"
local pe = Instance.new("Pants",Character)
pe.PantsTemplate = "http://www.roblox.com/asset/?id=9860757"

eye2 = Instance.new("Part", Character)
eye2.Anchored = false
eye2.Parent = Head
eye2.TopSurface = 0
eye2.BrickColor = BrickColor.new("Royal purple")
eye2.Material = "Neon"
eye2.BottomSurface = 0
eye2m = Instance.new("SpecialMesh", eye2)
eye2m.MeshId = "http://www.roblox.com/asset/?id=16952952"
eye2m.TextureId = "http://www.roblox.com/asset/?id=30235452"
eye2m.Scale = Vector3.new(0.9,0.9,0.9)
ogsize = eye2m.Scale
weld = Instance.new("Weld", Head)
weld.Part0 = eye2
weld.Part1 = Head
weld.Name = "eye2Weld"
weld.C1 = CFrame.new(0,0.1,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Character.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = BrickColor.Black().Color
v.Shape="Block"
text.Text = "Odon, Tranquility Shepherd"
  Humanoid.MaxHealth = 999e999
  local m = Create("Model")({
    Parent = Character,
    Name = "WeaponModel"
  })
  Humanoid.Animator.Parent = nil
  Character.Animate.Parent = nil
  local function newMotor(part0, part1, c0, c1)
    local w = Create("Motor")({
      Parent = part0,
      Part0 = part0,
      Part1 = part1,
      C0 = c0,
      C1 = c1
    })
    return w
  end
  function clerp(a, b, t)
    return a:lerp(b, t)
  end
  RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
  NeckCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0))
  local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
  local RH = newMotor(Torso, RightLeg, CFrame.new(0.5, -2, 0), CFrame.new(0, 0, 0))
  local LH = newMotor(Torso, LeftLeg, CFrame.new(-0.5, -2, 0), CFrame.new(0, 0, 0))
  RootJoint.C1 = CFrame.new(0, 0, 0)
  RootJoint.C0 = CFrame.new(0, 0, 0)
  Torso.Neck.C1 = CFrame.new(0, 0, 0)
  Torso.Neck.C0 = CFrame.new(0, 1.5, 0)
  local rarmc1 = RW.C1
  local larmc1 = LW.C1
  local rlegc1 = RH.C1
  local llegc1 = LH.C1
  local resetc1 = false
  function PlayAnimationFromTable(table, speed, bool)
    RootJoint.C0 = clerp(RootJoint.C0, table[1], speed)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed)
    RW.C0 = clerp(RW.C0, table[3], speed)
    LW.C0 = clerp(LW.C0, table[4], speed)
    RH.C0 = clerp(RH.C0, table[5], speed)
    LH.C0 = clerp(LH.C0, table[6], speed)
    if bool == true and resetc1 == false then
      resetc1 = true
      RootJoint.C1 = RootJoint.C1
      Torso.Neck.C1 = Torso.Neck.C1
      RW.C1 = rarmc1
      LW.C1 = larmc1
      RH.C1 = rlegc1
      LH.C1 = llegc1
    end
  end
  ArtificialHB = Create("BindableEvent", script)({Parent = script, Name = "Heartbeat"})
  script:WaitForChild("Heartbeat")
  frame = 0.03333333333333333
  tf = 0
  allowframeloss = false
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
  function RemoveOutlines(part)
    part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
  end
  CFuncs = {
    Part = {
      Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
        local Part = Create("Part")({
          Parent = Parent,
          Reflectance = Reflectance,
          Transparency = Transparency,
          CanCollide = false,
          Locked = true,
          BrickColor = BrickColor.new(tostring(BColor)),
          Name = Name,
          Size = Size,
          Material = Material
        })
        RemoveOutlines(Part)
        return Part
      end
    },
    Mesh = {
      Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
        local Msh = Create(Mesh)({
          Parent = Part,
          Offset = OffSet,
          Scale = Scale
        })
        if Mesh == "SpecialMesh" then
          Msh.MeshType = MeshType
          Msh.MeshId = MeshId
        end
        return Msh
      end
    },
    Weld = {
      Create = function(Parent, Part0, Part1, C0, C1)
        local Weld = Create("Weld")({
          Parent = Parent,
          Part0 = Part0,
          Part1 = Part1,
          C0 = C0,
          C1 = C1
        })
        return Weld
      end
    },
    Sound = {
      Create = function(id, par, vol, pit)
        coroutine.resume(coroutine.create(function()
          local Sound = Create("Sound")({
            Volume = vol,
            Pitch = pit or 1,
            SoundId = "rbxassetid://" .. id,
            Parent = par or workspace
          })
          Sound:play()
          game:GetService("Debris"):AddItem(Sound, 10)
        end))
      end
    },
    Decal = {
      Create = function(Color, Texture, Transparency, Name, Parent)
        local Decal = Create("Decal")({
          Color3 = Color,
          Texture = "rbxassetid://" .. Texture,
          Transparency = Transparency,
          Name = Name,
          Parent = Parent
        })
        return Decal
      end
    },
    BillboardGui = {
      Create = function(Parent, Image, Position, Size)
        local BillPar = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "BillboardGuiPart", Vector3.new(1, 1, 1))
        BillPar.CFrame = CFrame.new(Position)
        local Bill = Create("BillboardGui")({
          Parent = BillPar,
          Adornee = BillPar,
          Size = UDim2.new(1, 0, 1, 0),
          SizeOffset = Vector2.new(Size, Size)
        })
        local d = Create("ImageLabel", Bill)({
          Parent = Bill,
          BackgroundTransparency = 1,
          Size = UDim2.new(1, 0, 1, 0),
          Image = "rbxassetid://" .. Image
        })
        return BillPar
      end
    },
    ParticleEmitter = {
      Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
        local Particle = Create("ParticleEmitter")({
          Parent = Parent,
          Color = ColorSequence.new(Color1, Color2),
          LightEmission = LightEmission,
          Size = Size,
          Texture = Texture,
          Transparency = Transparency,
          ZOffset = ZOffset,
          Acceleration = Accel,
          Drag = Drag,
          LockedToPart = LockedToPart,
          VelocityInheritance = VelocityInheritance,
          EmissionDirection = EmissionDirection,
          Enabled = Enabled,
          Lifetime = LifeTime,
          Rate = Rate,
          Rotation = Rotation,
          RotSpeed = RotSpeed,
          Speed = Speed,
          VelocitySpread = VelocitySpread
        })
        return Particle
      end
    },
    CreateTemplate = {}
  }
  function rayCast(Position, Direction, Range, Ignore)
    return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
  end
  function findNearestTorso(pos)
    local list = game.Workspace:children()
    local torso
    local dist = 1000
    local temp, human, temp2
    for x = 1, #list do
      temp2 = list[x]
      if temp2.className == "Model" and temp2.Name ~= Character.Name then
        temp = temp2:findFirstChild("Torso")
        human = temp2:findFirstChild("Humanoid")
        if temp ~= nil and human ~= nil and human.Health > 0 and dist > (temp.Position - pos).magnitude then
          torso = temp
          dist = (temp.Position - pos).magnitude
        end
      end
    end
    return torso, dist
  end
  function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
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
      if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
        return
      end
      local c = Create("ObjectValue")({
        Name = "creator",
        Value = game:service("Players").LocalPlayer,
        Parent = h
      })
      game:GetService("Debris"):AddItem(c, 0.5)
      if HitSound ~= nil and HitPitch ~= nil then
        CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
      end
      local blocked = false
      local block = hit.Parent:findFirstChild("Block")
      if block ~= nil and block.className == "IntValue" and block.Value > 0 then
        blocked = true
        block.Value = block.Value - 1
        print(block.Value)
      end
      if blocked == false then
        h.Health = 0
      else
        h.Health = h.Health - Damage / 2
      end
      if Type == "Knockdown" then
        local hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
          swait(1)
          HHumanoid.PlatformStand = false
        end), hum)
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Create("BodyVelocity")({
          velocity = angle * knockback,
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = hit
        })
        local rl = Create("BodyAngularVelocity")({
          P = 3000,
          maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
          angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
          Parent = hit
        })
        game:GetService("Debris"):AddItem(bodvol, 0.5)
        game:GetService("Debris"):AddItem(rl, 0.5)
      elseif Type == "Normal" then
        local vp = Create("BodyVelocity")({
          P = 500,
          maxForce = Vector3.new(math.huge, 0, math.huge),
          velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
        })
        game:GetService("Debris"):AddItem(vp, 0.5)
      elseif Type == "Up" then
        local bodyVelocity = Create("BodyVelocity")({
          velocity = Vector3.new(0, 20, 0),
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = hit
        })
        game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      elseif Type == "DarkUp" then
        coroutine.resume(coroutine.create(function()
          for i = 0, 1, 0.1 do
            swait()
            Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
          end
        end))
        local bodyVelocity = Create("BodyVelocity")({
          velocity = Vector3.new(0, 20, 0),
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = hit
        })
        game:GetService("Debris"):AddItem(bodyVelocity, 1)
      elseif Type == "Snare" then
        local bp = Create("BodyPosition")({
          P = 2000,
          D = 100,
          maxForce = Vector3.new(math.huge, math.huge, math.huge),
          position = hit.Parent.Torso.Position,
          Parent = hit.Parent.Torso
        })
        game:GetService("Debris"):AddItem(bp, 1)
      elseif Type == "Freeze" then
        local BodPos = Create("BodyPosition")({
          P = 50000,
          D = 1000,
          maxForce = Vector3.new(math.huge, math.huge, math.huge),
          position = hit.Parent.Torso.Position,
          Parent = hit.Parent.Torso
        })
        local BodGy = Create("BodyGyro")({
          maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
          P = 20000,
          Parent = hit.Parent.Torso,
          cframe = hit.Parent.Torso.CFrame
        })
        hit.Parent.Torso.Anchored = true
        coroutine.resume(coroutine.create(function(Part)
          swait(1.5)
          Part.Anchored = false
        end), hit.Parent.Torso)
        game:GetService("Debris"):AddItem(BodPos, 3)
        game:GetService("Debris"):AddItem(BodGy, 3)
      end
      local debounce = Create("BoolValue")({
        Name = "DebounceHit",
        Parent = hit.Parent,
        Value = true
      })
      game:GetService("Debris"):AddItem(debounce, Delay)
      c = Create("ObjectValue")({
        Name = "creator",
        Value = Player,
        Parent = h
      })
      game:GetService("Debris"):AddItem(c, 0.5)
    end
  end
  function ShowDamage(Pos, Text, Time, Color)
    local Rate = 0.03333333333333333
    local Pos = Pos or Vector3.new(0, 0, 0)
    local Text = Text or ""
    local Time = Time or 2
    local Color = Color or Color3.new(1, 0, 1)
    local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
    EffectPart.Anchored = true
    local BillboardGui = Create("BillboardGui")({
      Size = UDim2.new(3, 0, 3, 0),
      Adornee = EffectPart,
      Parent = EffectPart
    })
    local TextLabel = Create("TextLabel")({
      BackgroundTransparency = 1,
      Size = UDim2.new(1, 0, 1, 0),
      Text = Text,
      Font = "SciFi",
      TextColor3 = Color,
      TextScaled = true,
      BorderColor3 = Color3.new(0,0,0),
      Parent = BillboardGui
    })
    game.Debris:AddItem(EffectPart, Time)
    EffectPart.Parent = game:GetService("Workspace")
    delay(0, function()
      local Frames = Time / Rate
      for Frame = 1, Frames do
        wait(Rate)
        local Percent = Frame / Frames
        EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
        TextLabel.TextTransparency = Percent
      end
      if EffectPart and EffectPart.Parent then
        EffectPart:Destroy()
      end
    end)
  end
  function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
    for _, c in pairs(workspace:children()) do
      local hum = c:findFirstChild("Humanoid")
      if hum ~= nil then
        local head = c:findFirstChild("Torso")
        if head ~= nil then
          local targ = head.Position - Part.Position
          local mag = targ.magnitude
          if Magnitude >= mag and c.Name ~= Player.Name then
            Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, 0, HitSound, HitPitch)
          end
        end
      end
    end
  end
  --//New Damage\\--
function Damage2(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
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
      if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
        return
      end
      local c = Create("ObjectValue")({
        Name = "creator",
        Value = game:service("Players").LocalPlayer,
        Parent = h
      })
      game:GetService("Debris"):AddItem(c, 0.5)
      if HitSound ~= nil and HitPitch ~= nil then
        CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
      end
      local Damage = math.random(minim, maxim)
      local blocked = false
      local block = hit.Parent:findFirstChild("Block")
      if block ~= nil and block.className == "IntValue" and block.Value > 0 then
        blocked = true
        block.Value = block.Value - 1
        print(block.Value)
      end
      if blocked == false then
        h.Health = h.Health - Damage
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Really black").Color)
      else
        h.Health = h.Health - Damage / 2
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Really black").Color)
      end
      if Type == "Knockdown" then
        local hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
          swait(1)
          HHumanoid.PlatformStand = false
        end), hum)
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Create("BodyVelocity")({
          velocity = angle * knockback,
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = hit
        })
        local rl = Create("BodyAngularVelocity")({
          P = 3000,
          maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
          angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
          Parent = hit
        })
        game:GetService("Debris"):AddItem(bodvol, 0.5)
        game:GetService("Debris"):AddItem(rl, 0.5)
      elseif Type == "Normal" then
        local vp = Create("BodyVelocity")({
          P = 500,
          maxForce = Vector3.new(math.huge, 0, math.huge),
          velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
        })
        if knockback > 0 then
          vp.Parent = hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp, 0.5)
      elseif Type == "Up" then
        local bodyVelocity = Create("BodyVelocity")({
          velocity = Vector3.new(0, 20, 0),
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = hit
        })
        game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      elseif Type == "DarkUp" then
        coroutine.resume(coroutine.create(function()
          for i = 0, 1, 0.1 do
            swait()
            Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
          end
        end))
        local bodyVelocity = Create("BodyVelocity")({
          velocity = Vector3.new(0, 20, 0),
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = hit
        })
        game:GetService("Debris"):AddItem(bodyVelocity, 1)
      elseif Type == "Snare" then
        local bp = Create("BodyPosition")({
          P = 2000,
          D = 100,
          maxForce = Vector3.new(math.huge, math.huge, math.huge),
          position = hit.Parent.Torso.Position,
          Parent = hit.Parent.Torso
        })
        game:GetService("Debris"):AddItem(bp, 1)
      elseif Type == "Freeze" then
        local BodPos = Create("BodyPosition")({
          P = 50000,
          D = 1000,
          maxForce = Vector3.new(math.huge, math.huge, math.huge),
          position = hit.Parent.Torso.Position,
          Parent = hit.Parent.Torso
        })
        local BodGy = Create("BodyGyro")({
          maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
          P = 20000,
          Parent = hit.Parent.Torso,
          cframe = hit.Parent.Torso.CFrame
        })
        hit.Parent.Torso.Anchored = true
        coroutine.resume(coroutine.create(function(Part)
          swait(1.5)
          Part.Anchored = false
        end), hit.Parent.Torso)
        game:GetService("Debris"):AddItem(BodPos, 3)
        game:GetService("Debris"):AddItem(BodGy, 3)
      end
      local debounce = Create("BoolValue")({
        Name = "DebounceHit",
        Parent = hit.Parent,
        Value = true
      })
      game:GetService("Debris"):AddItem(debounce, Delay)
      c = Create("ObjectValue")({
        Name = "creator",
        Value = Player,
        Parent = h
      })
      game:GetService("Debris"):AddItem(c, 0.5)
    end
  end
  function ShowDamage2(Pos, Text, Time, Color)
    local Rate = 0.03333333333333333
    local Pos = Pos or Vector3.new(0, 0, 0)
    local Text = Text or ""
    local Time = Time or 2
    local Color = Color or Color3.new(1, 0, 1)
    local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
    EffectPart.Anchored = true
    local BillboardGui = Create("BillboardGui")({
      Size = UDim2.new(3, 0, 3, 0),
      Adornee = EffectPart,
      Parent = EffectPart
    })
    local TextLabel = Create("TextLabel")({
      BackgroundTransparency = 1,
      Size = UDim2.new(1, 0, 1, 0),
      Text = Text,
      Font = "SciFi",
      TextColor3 = Color,
      TextScaled = true,
      Parent = BillboardGui
    })
    game.Debris:AddItem(EffectPart, Time)
    EffectPart.Parent = game:GetService("Workspace")
    delay(0, function()
      local Frames = Time / Rate
      for Frame = 1, Frames do
        wait(Rate)
        local Percent = Frame / Frames
        EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
        TextLabel.TextTransparency = Percent
      end
      if EffectPart and EffectPart.Parent then
        EffectPart:Destroy()
      end
    end)
  end
  function MagnitudeDamage2(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
    for _, c in pairs(workspace:children()) do
      local hum = c:findFirstChild("Humanoid")
      if hum ~= nil then
        local head = c:findFirstChild("Torso")
        if head ~= nil then
          local targ = head.Position - Part.Position
          local mag = targ.magnitude
          if Magnitude >= mag and c.Name ~= Player.Name then
            Damage2(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, 0, HitSound, HitPitch)
          end
        end
      end
    end
  end
  ----------------------
  Handle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(0.400000036, 0.400000006, 1.20000005))
  HandleWeld = CFuncs.Weld.Create(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0921096802, -1.06268024, -0.143123627, 1, 0, 0, 0, -1, 0, 0, 0, -1))
  Barrel = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Barrel", Vector3.new(0.250000003, 0.250000003, 0.250000024))
  Mesh = Instance.new("SpecialMesh",Barrel)
  Mesh.MeshId = "rbxassetid://442405779"
  Mesh.TextureId = "rbxassetid://442405780"
  Mesh.Scale = Vector3.new(0.06,0.06,0.06)
  BarrelWeld = CFuncs.Weld.Create(m, Handle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00579071045, -1.59999704, 0.500003815, 1, 0, 0, 0, 1, 0, 0, 0, 1))
  JetpackHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "JetpackHandle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  JetpackHandleWeld = CFuncs.Weld.Create(m, Character.Torso, JetpackHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453E-6, -0.400000662, -2.30000019, 0.999999821, -3.64178788E-7, -8.94072372E-8, 3.63716538E-7, 1, 7.422572E-10, 2.98025853E-8, -1.13686838E-13, 0.999999881))
  EffectPartR1 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "EffectPartR1", Vector3.new(0.5, 0.5, 0.300000012))
  EffectPartR1Weld = CFuncs.Weld.Create(m, JetpackHandle, EffectPartR1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.09364891, -0.187623501, -0.0701560974, 0.906307757, 3.29325474E-7, -0.422617853, -0.144542456, 0.939694047, -0.309971899, 0.397131324, 0.34201628, 0.851652086))
  EffectPartL1 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "EffectPartL1", Vector3.new(0.5, 0.5, 0.300000012))
  EffectPartL1Weld = CFuncs.Weld.Create(m, JetpackHandle, EffectPartL1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.02251816, -0.220495224, 0.120153427, 0.965927601, 1.32644391E-6, 0.258812487, 0.0885165557, 0.939698577, -0.330363601, -0.243205622, 0.342014492, 0.907681763))
  EffectPartR2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "EffectPartR2", Vector3.new(0.5, 0.5, 0.300000012))
  EffectPartR2Weld = CFuncs.Weld.Create(m, JetpackHandle, EffectPartR2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.093647, 0.123265266, 0.0195560455, 0.906307757, 3.29325474E-7, -0.422617853, -0.109380148, 0.965926826, -0.234566003, 0.408217847, 0.25881511, 0.875427186))
  EffectPartL2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "EffectPartL2", Vector3.new(0.5, 0.5, 0.300000012))
  EffectPartL2Weld = CFuncs.Weld.Create(m, JetpackHandle, EffectPartL2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.02252197, 0.0983912945, 0.212385654, 0.96592772, 1.15327362E-6, 0.258813411, 0.0669838786, 0.965926588, -0.249997437, -0.249995068, 0.258815855, 0.933015227))
  EffectPartL3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "EffectPartL3", Vector3.new(0.400000006, 0.5, 0.300000012))
  EffectPartL3Weld = CFuncs.Weld.Create(m, JetpackHandle, EffectPartL3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.86114502, 1.02306592, -0.343766928, 0.981060922, -0.0278283078, 0.19168894, -0.0858270004, 0.824720919, 0.558989346, -0.173645675, -0.56485492, 0.806713104))
  EffectPartR3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "EffectPartR3", Vector3.new(0.400000006, 0.5, 0.300000012))
  EffectPartR3Weld = CFuncs.Weld.Create(m, JetpackHandle, EffectPartR3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.83058548, 1.0264864, -0.312187195, 0.981061339, 0.0278254021, -0.191695988, 0.0858334452, 0.824721098, 0.558989942, 0.173649624, -0.564855158, 0.806710064))
  CFuncs.Mesh.Create("SpecialMesh", JetpackHandle, Enum.MeshType.FileMesh, "rbxassetid://0", Vector3.new(0, 0, 0), Vector3.new(1.29999995, 1.29999995, 1.29999995))
  EffectModel = Create("Model")({Parent = Character, Name = "Effects"})
  Effects = {
    Block = {
      Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 10)
        if Type == 1 or Type == nil then
          table.insert(Effects, {
            prt,
            "Block1",
            delay,
            x3,
            y3,
            z3,
            msh
          })
        elseif Type == 2 then
          table.insert(Effects, {
            prt,
            "Block2",
            delay,
            x3,
            y3,
            z3,
            msh
          })
        end
      end
    },
    Cylinder = {
      Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 2)
        Effects[#Effects + 1] = {
          prt,
          "Cylinder",
          delay,
          x3,
          y3,
          z3,
          msh
        }
      end
    },
    Head = {
      Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 10)
        table.insert(Effects, {
          prt,
          "Cylinder",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    },
    Sphere = {
      Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 10)
        table.insert(Effects, {
          prt,
          "Cylinder",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    },
    Elect = {
      Create = function(cff, x, y, z)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
        prt.Anchored = true
        prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
        prt.CFrame = CFrame.new(prt.Position)
        game:GetService("Debris"):AddItem(prt, 2)
        local xval = math.random() / 2
        local yval = math.random() / 2
        local zval = math.random() / 2
        local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
        table.insert(Effects, {
          prt,
          "Elec",
          0.1,
          x,
          y,
          z,
          xval,
          yval,
          zval
        })
      end
    },
    Ring = {
      Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 10)
        table.insert(Effects, {
          prt,
          "Cylinder",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    },
    Wave = {
      Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 10)
        table.insert(Effects, {
          prt,
          "Cylinder",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    },
    Break = {
      Create = function(brickcolor, cframe, x1, y1, z1)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
        prt.Anchored = true
        prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        local num = math.random(10, 50) / 1000
        game:GetService("Debris"):AddItem(prt, 10)
        table.insert(Effects, {
          prt,
          "Shatter",
          num,
          prt.CFrame,
          math.random() - math.random(),
          0,
          math.random(50, 100) / 100
        })
      end
    },
    Fire = {
      Create = function(brickcolor, cframe, x1, y1, z1, delay)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 10)
        table.insert(Effects, {
          prt,
          "Fire",
          delay,
          1,
          1,
          1,
          msh
        })
      end
    },
    FireWave = {
      Create = function(brickcolor, cframe, x1, y1, z1)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        local d = Create("Decal")({
          Parent = prt,
          Texture = "rbxassetid://26356434",
          Face = "Top"
        })
        local d = Create("Decal")({
          Parent = prt,
          Texture = "rbxassetid://26356434",
          Face = "Bottom"
        })
        game:GetService("Debris"):AddItem(prt, 10)
        table.insert(Effects, {
          prt,
          "FireWave",
          1,
          30,
          math.random(400, 600) / 100,
          msh
        })
      end
    },
    Lightning = {
      Create = function(p0, p1, tym, ofs, col, th, tra, last)
        local magz = (p0 - p1).magnitude
        local curpos = p0
        local trz = {
          -ofs,
          ofs
        }
        for i = 1, tym do
          local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
          local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
          local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
          li.Material = "Neon"
          if tym == i then
            local magz2 = (curpos - p1).magnitude
            li.Size = Vector3.new(th, th, magz2)
            li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
            table.insert(Effects, {
              li,
              "Disappear",
              last
            })
          else
            li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
            curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
            game.Debris:AddItem(li, 10)
            table.insert(Effects, {
              li,
              "Disappear",
              last
            })
          end
        end
      end
    },
    EffectTemplate = {}
  }
  function Shootcombo()
    local MouseLook = CFrame.new((Barrel.Position + Mouse.Hit.p) / 2, Mouse.Hit.p)
    CFuncs.Sound.Create("173979241", Handle, 1, 1)
    Effects.Sphere.Create(BrickColor.new("Really black"), Barrel.CFrame, 0.5, 0.5, 0.5, 1,1,1, 0.09)
    Effects.Sphere.Create(BrickColor.new("Really black"), Barrel.CFrame, 1, 1, 1, 1,1,1, 0.09)
    Effects.Block.Create(BrickColor.new("Really black"), Barrel.CFrame, 1, 1, 1, 1,1,1, 0.09, 1)
    table.insert(Effects, {
      MouseLook.lookVector,
      "Shoot",
      30,
      Barrel.Position,
      6,
      8,
      0,
      1
    })
  end
  function Bolt()
    CFuncs.Sound.Create("173979241", Handle, 1, 1)
  end
  function SpinShot()
    attack = true
    for i = 0, 1, 0.12 do
      swait()
      PlayAnimationFromTable({
        CFrame.new(-0.33084622, -0.304918617, -0.52869457, 0.342018992, 2.44630968E-7, -0.939693093, 0.163176, 0.98480773, 0.0593912415, 0.925417006, -0.173648283, 0.336822927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.0322597921, 1.48268783, -0.0930604339, 0.322602183, 0.14004983, 0.936116517, -0.172989488, 0.981059611, -0.0871584788, -0.930592477, -0.133820817, 0.340719253) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.506988645, 0.377255857, -0.803069711, 0.259420365, 0.955582082, -0.139867067, 0.0992426202, -0.170435682, -0.980358601, -0.960651875, 0.240444362, -0.139049053) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.72998452, 0.495006025, -0.392647803, 0.542880952, 0.410539567, 0.732626021, 0.737672389, 0.183852568, -0.649647713, -0.4013969, 0.893121183, -0.203034982) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.502950907, -1.9151485, 0.231621087, 0.864151537, 0.0236141682, -0.502677977, 0.0515102148, 0.989501238, 0.135033786, 0.50058949, -0.142582476, 0.853862286) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.865711927, -1.63087702, -0.282848835, 0.925415218, 0.173649043, 0.336827427, -0.163176641, 0.98480773, -0.0593916178, -0.342023462, -4.54019755E-7, 0.939691782) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.35, false)
    end
    Shootcombo()
    for i = 0, 1, 0.3 do
      swait()
      RootPart.Velocity = RootPart.CFrame.lookVector * -10
      PlayAnimationFromTable({
        CFrame.new(-0.330845773, -0.378038257, 0.581278205, 0.342019081, 5.60612747E-8, -0.939693093, -0.0819000229, 0.996194661, -0.0298090074, 0.936117232, 0.0871561244, 0.340717614) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.0322549939, 1.48268545, -0.0930609033, 0.239786834, -0.113366202, 0.964181364, -0.164735377, 0.974004149, 0.155488253, -0.95675236, -0.196119189, 0.214875787) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.806416035, 0.470317304, -0.694097638, 0.244436547, 0.969400585, 0.0226592347, 0.0830115676, 0.00236219168, -0.996545851, -0.9661057, 0.245473176, -0.079894051) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.57694697, 0.512434185, -0.230538517, 0.760710716, 0.410538197, 0.502765059, 0.470990688, 0.1838523, -0.862764716, -0.44662869, 0.893119931, -0.0535021573) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.865904212, -1.71960115, 0.0648829341, 0.881422341, -0.173719466, -0.439225137, 0.290622324, 0.932511985, 0.214389697, 0.372338951, -0.316616565, 0.872420609) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.679471731, -1.82845092, -0.362076759, 0.770665169, -0.0483331755, 0.635404408, -0.0295864344, 0.993330181, 0.111444041, -0.63655293, -0.104685426, 0.764095306) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.5, false)
    end
    for i = 0, 1, 0.12 do
      swait()
      PlayAnimationFromTable({
        CFrame.new(-0.33084622, -0.304918617, -0.52869457, 0.342018992, 2.44630968E-7, -0.939693093, 0.163176, 0.98480773, 0.0593912415, 0.925417006, -0.173648283, 0.336822927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.0322597921, 1.48268783, -0.0930604339, 0.322602183, 0.14004983, 0.936116517, -0.172989488, 0.981059611, -0.0871584788, -0.930592477, -0.133820817, 0.340719253) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.506988645, 0.377255857, -0.803069711, 0.259420365, 0.955582082, -0.139867067, 0.0992426202, -0.170435682, -0.980358601, -0.960651875, 0.240444362, -0.139049053) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.72998452, 0.495006025, -0.392647803, 0.542880952, 0.410539567, 0.732626021, 0.737672389, 0.183852568, -0.649647713, -0.4013969, 0.893121183, -0.203034982) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.502950907, -1.9151485, 0.231621087, 0.864151537, 0.0236141682, -0.502677977, 0.0515102148, 0.989501238, 0.135033786, 0.50058949, -0.142582476, 0.853862286) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.865711927, -1.63087702, -0.282848835, 0.925415218, 0.173649043, 0.336827427, -0.163176641, 0.98480773, -0.0593916178, -0.342023462, -4.54019755E-7, 0.939691782) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.4, false)
    end
    Bolt()
    attack = false
  end
  function LungeShot(Mode)
    attack = true
    Humanoid.Jump = true
    CFuncs.Sound.Create("158149887", Torso, 1, 0.9)
    if Mode == "Forward" then
      RootPart.Velocity = RootPart.CFrame.lookVector * 80
      for i = 0, 1, 0.1 do
        swait()
        PlayAnimationFromTable({
          CFrame.new(-3.81469727E-6, 0.0628450513, 0.146824121, 1, 0, 0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), 0, 0),
          CFrame.new(0, 1.49998665, -2.20537186E-6, 1, 0, 0, 0, 0.984807312, 0.173648536, 0, -0.173648536, 0.984807312) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), 0, 0),
          CFrame.new(0.523067951, 0.10826005, -0.698177814, 0.296512067, 0.787702143, 0.540005624, 0.206982568, 0.498990804, -0.84152633, -0.932329774, 0.361294419, -0.0150838122) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.42747557, -0.117001235, -0.482704312, 0.268235743, 0.0413863063, 0.962466657, 0.56728673, 0.800693691, -0.192532867, -0.778610408, 0.597635567, 0.191299409) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.499998361, -1.51702964, -0.129410475, 0.984807849, 0, -0.173648044, 0.0449435376, 0.965925634, 0.25488764, 0.167731121, -0.258819699, 0.951251149) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.500004053, -1.35084605, -0.555529714, 0.981060445, 0.0871543288, 0.172987863, -0.140045926, 0.936115682, 0.322606146, -0.133820146, -0.340722382, 0.930591524) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    elseif Mode == "Backward" then
      RootPart.Velocity = RootPart.CFrame.lookVector * -80
      for i = 0, 1, 0.1 do
        swait()
        PlayAnimationFromTable({
          CFrame.new(-3.81469727E-6, 0.0628450513, 0.146824121, 1, 0, 0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), 0, 0),
          CFrame.new(0, 1.49998665, -2.20537186E-6, 1, 0, 0, 0, 0.984807312, 0.173648536, 0, -0.173648536, 0.984807312) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), 0, 0),
          CFrame.new(0.523067951, 0.10826005, -0.698177814, 0.296512067, 0.787702143, 0.540005624, 0.206982568, 0.498990804, -0.84152633, -0.932329774, 0.361294419, -0.0150838122) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.42747557, -0.117001235, -0.482704312, 0.268235743, 0.0413863063, 0.962466657, 0.56728673, 0.800693691, -0.192532867, -0.778610408, 0.597635567, 0.191299409) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.499998361, -1.51702964, -0.129410475, 0.984807849, 0, -0.173648044, 0.0449435376, 0.965925634, 0.25488764, 0.167731121, -0.258819699, 0.951251149) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.500004053, -1.35084605, -0.555529714, 0.981060445, 0.0871543288, 0.172987863, -0.140045926, 0.936115682, 0.322606146, -0.133820146, -0.340722382, 0.930591524) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    end
    local hitfloor
    while hitfloor == nil do
      swait()
      hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 6, Character)
    end
    for i = 0, 1, 0.2 do
      swait()
      PlayAnimationFromTable({
        CFrame.new(-0.330837339, -0.699999928, -0.231655031, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.120368131, 1.44721556, -0.255113155, 0.418385565, -0.00512788072, 0.908255041, -0.141075298, 0.987487316, 0.0705598369, -0.897252142, -0.157652482, 0.412421852) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.285862863, 0.389394581, -0.81719619, 0.340717524, 0.939693093, 0.0298089981, 0.087155968, 0, -0.996194661, -0.936117232, 0.342018992, -0.081899859) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.69020307, 0.41307798, -0.514919221, 0.800103247, 0.517377436, 0.303571403, 0.255382031, 0.16412276, -0.95280838, -0.542784572, 0.839871705, -8.13782215E-4) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.897276342, -1.54715633, 0.463865459, 0.951250672, -0.229007483, -0.206587687, 0.304395527, 0.589249432, 0.748417377, -0.0496615469, -0.774816513, 0.630232751) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.632248044, -1.39177239, -0.405484438, 0.817636669, -0.123517469, 0.562330127, 0.0563425981, 0.989193141, 0.13535662, -0.572972655, -0.0789892152, 0.815760136) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.4, false)
    end
    Shootcombo()
    for i = 0, 1, 0.3 do
      swait()
      RootPart.Velocity = RootPart.CFrame.lookVector * -40
      PlayAnimationFromTable({
        CFrame.new(-0.330840945, -1.00127292, -0.261750877, 0.342018962, -1.4270141E-7, -0.939693034, -0.243209973, 0.965925992, -0.0885209814, 0.907673895, 0.258818597, 0.330364913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.120366111, 1.44719875, -0.255110145, 0.418383747, -0.0842670798, 0.904353142, -0.141075209, 0.977573991, 0.156355858, -0.897247374, -0.192998484, 0.397113085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.632638395, 0.661208212, -0.690981925, 0.326495707, 0.925417125, 0.192363232, 0.0858313814, 0.173647493, -0.981060386, -0.941293538, 0.336822778, -0.0227346662) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.51982272, 0.476396978, -0.384689331, 0.81248939, 0.445674956, 0.37581408, 0.350734472, 0.141240373, -0.925762773, -0.46566987, 0.88398242, -0.0415571854) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.783671975, -1.17622542, 0.561357141, 0.831630051, -0.23809275, -0.501700282, 0.550981283, 0.240921408, 0.798984766, -0.0693621933, -0.940887034, 0.331542104) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.632252574, -1.39177251, -0.40547961, 0.73177588, -0.317396253, 0.603132486, 0.21459803, 0.947232425, 0.238111958, -0.646885633, -0.0448122993, 0.761271358) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.6, false)
    end
    Bolt()
    attack = false
  end
  function AutoShot()
    attack = true
    Humanoid.WalkSpeed = 5
    Bolt()
    for i = 0, 1, 0.3 do
      swait()
      PlayAnimationFromTable({
        CFrame.new(-0.330837339, -0.699999928, -0.231655031, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.120368131, 1.44721556, -0.255113155, 0.418385565, -0.00512788072, 0.908255041, -0.141075298, 0.987487316, 0.0705598369, -0.897252142, -0.157652482, 0.412421852) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.285862863, 0.389394581, -0.81719619, 0.340717524, 0.939693093, 0.0298089981, 0.087155968, 0, -0.996194661, -0.936117232, 0.342018992, -0.081899859) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.69020307, 0.41307798, -0.514919221, 0.800103247, 0.517377436, 0.303571403, 0.255382031, 0.16412276, -0.95280838, -0.542784572, 0.839871705, -8.13782215E-4) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.897276342, -1.54715633, 0.463865459, 0.951250672, -0.229007483, -0.206587687, 0.304395527, 0.589249432, 0.748417377, -0.0496615469, -0.774816513, 0.630232751) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.632248044, -1.39177239, -0.405484438, 0.817636669, -0.123517469, 0.562330127, 0.0563425981, 0.989193141, 0.13535662, -0.572972655, -0.0789892152, 0.815760136) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.4, false)
    end
    Humanoid.WalkSpeed = 0
    for i = 1, 10 do
      for i = 0, 1, 0.8 do
        swait()
        PlayAnimationFromTable({
          CFrame.new(-0.330837339, -0.699999928, -0.231655031, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.120368131, 1.44721556, -0.255113155, 0.418385565, -0.00512788072, 0.908255041, -0.141075298, 0.987487316, 0.0705598369, -0.897252142, -0.157652482, 0.412421852) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.285862863, 0.389394581, -0.81719619, 0.340717524, 0.939693093, 0.0298089981, 0.087155968, 0, -0.996194661, -0.936117232, 0.342018992, -0.081899859) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.69020307, 0.41307798, -0.514919221, 0.800103247, 0.517377436, 0.303571403, 0.255382031, 0.16412276, -0.95280838, -0.542784572, 0.839871705, -8.13782215E-4) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.897276342, -1.54715633, 0.463865459, 0.951250672, -0.229007483, -0.206587687, 0.304395527, 0.589249432, 0.748417377, -0.0496615469, -0.774816513, 0.630232751) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.632248044, -1.39177239, -0.405484438, 0.817636669, -0.123517469, 0.562330127, 0.0563425981, 0.989193141, 0.13535662, -0.572972655, -0.0789892152, 0.815760136) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.7, false)
      end
      Shootcombo()
      for i = 0, 1, 0.9 do
        swait()
        PlayAnimationFromTable({
          CFrame.new(-0.330840945, -1.00127292, -0.261750877, 0.342018962, -1.4270141E-7, -0.939693034, -0.243209973, 0.965925992, -0.0885209814, 0.907673895, 0.258818597, 0.330364913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.120366111, 1.44719875, -0.255110145, 0.418383747, -0.0842670798, 0.904353142, -0.141075209, 0.977573991, 0.156355858, -0.897247374, -0.192998484, 0.397113085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.632638395, 0.661208212, -0.690981925, 0.326495707, 0.925417125, 0.192363232, 0.0858313814, 0.173647493, -0.981060386, -0.941293538, 0.336822778, -0.0227346662) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.51982272, 0.476396978, -0.384689331, 0.81248939, 0.445674956, 0.37581408, 0.350734472, 0.141240373, -0.925762773, -0.46566987, 0.88398242, -0.0415571854) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.783671975, -1.17622542, 0.561357141, 0.831630051, -0.23809275, -0.501700282, 0.550981283, 0.240921408, 0.798984766, -0.0693621933, -0.940887034, 0.331542104) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.632252574, -1.39177251, -0.40547961, 0.73177588, -0.317396253, 0.603132486, 0.21459803, 0.947232425, 0.238111958, -0.646885633, -0.0448122993, 0.761271358) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.8, false)
      end
    end
    Humanoid.WalkSpeed = 16
    attack = false
  end
  function MortarShot()
    attack = true
    Humanoid.WalkSpeed = 5
    Bolt()
    for i = 0, 1, 0.3 do
      swait()
      PlayAnimationFromTable({
        CFrame.new(-0.062730819, -1.35083091, -0.0234885216, 0.819151819, 0.368687779, -0.439385623, -0.573576868, 0.52654016, -0.627507091, 0, 0.766044974, 0.642787039) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.0485280529, 1.45187008, 0.123812944, 0.90630585, -0.0368346125, 0.421014428, 0.178608507, 0.936241627, -0.302573681, -0.383025914, 0.349420995, 0.855100214) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.37136579, -0.011062175, -0.241436988, 0.866025329, 0.500000238, 0, 0.321393698, -0.556669831, -0.766044974, -0.383022636, 0.663414299, -0.642787039) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.554796219, 0.778117955, -1.30101132, 0.814972818, -0.183016568, 0.549840331, 0.413680822, -0.480712891, -0.773164511, 0.40581724, 0.857566416, -0.316057503) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.745755255, -0.594750226, 0.689795136, 0.707485676, 0.0499878898, -0.704957783, 0.604335666, -0.559927046, 0.566798568, -0.366391778, -0.827032924, -0.426349699) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.45294404, -1.60859108, 0.283076108, 0.724484801, -0.4477458, 0.524066269, -0.110680997, 0.674867868, 0.729592919, -0.680348873, -0.586582422, 0.439373374) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.4, false)
    end
    CFuncs.Sound.Create("173979241", Barrel, 1, 1)
    Effects.Sphere.Create(BrickColor.new("Really black"), Barrel.CFrame, 6, 6, 6, 3, 3, 3, 0.1, m)
    for i = 1, 20 do
      local hit, pos = rayCast(Barrel.Position, Barrel.CFrame * CFrame.fromEulerAnglesXYZ(0, 5, 0).lookVector, 220, Character)
      local mag = (Barrel.Position - pos).magnitude
      Effects.Cylinder.Create(BrickColor.new("Really black"), Barrel.CFrame, 6, 99999, 6, -0.5, 1, -0.5, 0.1)
      local cf2 = Mouse.Hit.p + Vector3.new(math.random(-30,30), 100, math.random(-30,30))
      local hit2, pos2 = rayCast(cf2, CFrame.new(cf2, cf2 - Vector3.new(0, 1, 0)).lookVector, 999, Character)
      if hit2 ~= nil then
        local d1 = CFuncs.Part.Create(workspace, "Neon", 0, 0.5, BrickColor.new("Really black"), "Effect", Vector3.new())
        d1.Anchored = true
        d1.CFrame = CFrame.new(pos2)
        game:GetService("Debris"):AddItem(d1, 5)
        local msh = CFuncs.Mesh.Create("CylinderMesh", d1, "nil", "nil", Vector3.new(0, 0, 0), Vector3.new(30, 5, 30))
        local d2 = d1:Clone()
        d2.Parent = d1
        d2.CFrame = CFrame.new(d1.Position)
        d2.BrickColor = BrickColor.new("Medium stone gray")
        d2.Mesh.Scale = Vector3.new(0, 5, 0)
        table.insert(Effects, {
          d1,
          "QuadShot",
          d2,
          d2.Mesh,
          0
        })
      end
    end
    for i = 0, 1, 0.2 do
      swait()
      PlayAnimationFromTable({
        CFrame.new(-0.00381875038, -1.20960522, -0.0234894156, 0.906307876, 0.271653324, -0.323744416, -0.422617942, 0.582562923, -0.694272697, 0, 0.766045094, 0.64278698) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.0485313386, 1.45186937, 0.12381205, 0.906306446, -0.036834389, 0.421012908, 0.178607732, 0.936241806, -0.302573651, -0.383024782, 0.349420667, 0.855100751) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.2566489, 0.0942437202, -0.366937846, 0.866025388, 0.499999881, 0, 0.32139343, -0.556669831, -0.766045094, -0.383022457, 0.663414538, -0.64278698) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.669512153, 0.883427501, -1.42651618, 0.814972997, -0.183017969, 0.54984045, 0.413680524, -0.480712831, -0.773165226, 0.405818164, 0.85756737, -0.316057026) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.663835824, -0.644426942, 0.718474984, 0.819152117, -0.0996050313, -0.564861536, 0.496729434, -0.369217664, 0.785454273, -0.28679204, -0.923989952, -0.252968639) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.597848773, -1.58645034, 0.419145882, 0.845831037, -0.0996147096, 0.524067461, -0.385522783, 0.564860702, 0.729592204, -0.368703246, -0.819151759, 0.439372897) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.4, false)
    end
    Humanoid.WalkSpeed = 16
    attack = false
  end
  function DisappearJetOnly()
    for _, i in pairs(m:children()) do
      if i == JetpackHandle then
        coroutine.resume(coroutine.create(function(Part)
          for i = 0, 1, 0.3 do
            swait()
            Part.Transparency = i
          end
          Part.Transparency = 1
        end), i)
      end
    end
  end
  function ReappearJetOnly()
    for _, i in pairs(m:children()) do
      if i == JetpackHandle then
        coroutine.resume(coroutine.create(function(Part)
          for i = 0, 1, 0.3 do
            swait()
            Part.Transparency = i
          end
          Part.Transparency = 0
        end), i)
      end
    end
  end
  local floornum = 0
  function JetDash()
    attack = true
    ReappearJetOnly()
    Humanoid.WalkSpeed = 5
    for i = 0, 1, 0.05 do
      swait()
      	Effects.Wave.Create(BrickColor.new("Really black"), Torso.CFrame * CFrame.Angles(2.4, 0, 0), 1, 1, 1, 2,2,2,0.4)
      	Effects.Break.Create(BrickColor.new("Really black"), Torso.CFrame, 0.2, 0.2, 0.2)
      	Effects.Break.Create(BrickColor.new("Really black"), Torso.CFrame, 0.2, 0.2, 0.2)
      	Effects.Block.Create(BrickColor.new("Really black"), Torso.CFrame, 1, 1, 1, 15,15,15, 0.3, 1)
      	Effects.Block.Create(BrickColor.new("Really black"), Torso.CFrame, 1, 1, 1, 15,15,15,0.3, 1)
      	Effects.Block.Create(BrickColor.new("Really black"), Torso.CFrame, 1, 1, 1, 10,10,10, 0.2, 1)
      	Effects.Block.Create(BrickColor.new("Really black"), Torso.CFrame, 1, 1, 1, 10,10,10, 0.2, 1)
      RootPart.Velocity = RootPart.CFrame.lookVector * 400
      PlayAnimationFromTable({
        CFrame.new(0, -0.436519086, -1.54268694, 1, 0, 0, 0, 0.573575079, 0.81915313, 0, -0.81915313, 0.573575079) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0, 1.383762, 0.294095755, 1, 0, 0, 0, 0.766045392, -0.642790735, 0, 0.642790735, 0.766045392) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.639911652, 0.428372383, -0.839826643, 0.262888074, 0.933915675, 0.242263183, 0.536961675, 0.0669959337, -0.840942383, -0.80159986, 0.351159722, -0.483864516) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.42905915, 0.103630304, -0.677020133, 0.509720683, 0.0942112952, 0.855166197, 0.742046118, 0.45486632, -0.492406994, -0.435376555, 0.885562658, 0.161945611) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.598487258, -1.49273849, 0.0829842687, 0.984807909, 7.31955607E-10, -0.173648015, 0.122787923, 0.707105517, 0.696365893, 0.122787446, -0.707108378, 0.696363151) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.599626899, -1.7493062, -0.188390553, 0.996194661, 0, 0.087156795, -0.0298094582, 0.939692497, 0.340719461, -0.0819005892, -0.342020988, 0.936116517) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.6, false)
    end
    for i = 0, 1, 0.05 do
      swait()
      Effects.Fire.Create(BrickColor.new("Really black"), EffectPartL3.CFrame, 3, 3, 3, 0.3)
      Effects.Fire.Create(BrickColor.new("Really black"), EffectPartR3.CFrame, 3, 3, 3, 0.3)
      RootPart.Velocity = RootPart.CFrame.lookVector * 60
      PlayAnimationFromTable({
        CFrame.new(-0.313091278, -0.629250288, 0.409977496, 0.422617137, -0.383021861, -0.821394563, 0, 0.906308115, -0.422617614, 0.906308293, 0.178605452, 0.383021355) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-2.89082527E-6, 1.56999886, -0.169927716, 0.499998629, -0.0754772127, 0.862731218, -0.224145666, 0.950971425, 0.213101521, -0.836516559, -0.29992786, 0.458566666) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.639911413, 0.428367913, -0.839831948, 0.262887627, 0.933916271, 0.242261022, 0.536960125, 0.0669948608, -0.840943277, -0.801600933, 0.351158082, -0.483863741) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.42906761, 0.103628337, -0.677013278, 0.509718478, 0.0942142606, 0.85516715, 0.742045939, 0.454867214, -0.4924061, -0.435379177, 0.885561645, 0.161942929) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.255052269, -1.74161863, 0.0939150751, 0.973724782, 0.171020329, -0.150378793, -0.13000688, 0.959606647, 0.249509975, 0.186975896, -0.223403811, 0.956624985) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.966920853, -1.65688598, 0.10182327, 0.929320216, 0.24122712, 0.279595017, -0.312094092, 0.917783141, 0.245502412, -0.197385877, -0.315410316, 0.928199947) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.36, false)
      CFuncs.Sound.Create("596046130", JetpackHandle, 1, 1)
    end
    DisappearJetOnly()
    Humanoid.WalkSpeed = 16
    attack = false
  end
  function findRandomTorso(pos)
    local list = game.Workspace:children()
    local torso
    local dist = 10000
    local temp, human, temp2
    local list2 = {}
    for x = 1, #list do
      temp2 = list[x]
      if temp2.className == "Model" and temp2.Name ~= Character.Name and temp2.Name ~= "Crystal" then
        temp = temp2:findFirstChild("Torso")
        human = temp2:findFirstChild("Humanoid")
        if temp ~= nil and human ~= nil and human.Health > 0 and dist > pos.magnitude then
          local dohit = true
          if dohit == true then
            torso = temp
            table.insert(list2, temp)
          end
        end
      end
    end
    if #list2 > 0 then
      rand = math.random(1, #list2)
      return list2[rand], dist
    else
      return nil, dist
    end
  end
  Mouse.Button1Down:connect(function()
    if attack ~= false or attacktype == 1 then
    end
  end)
  Mouse.KeyDown:connect(function(k)
    k = k:lower()
    if attack == false and k == "z" then
      SpinShot()
    elseif attack == false and k == "x" then
      AutoShot()
    elseif attack == false and k == "c" then
      MortarShot()
    elseif attack == false and k == "v" then
      Crater(Torso,30)
      JetDash()
    end
  end)
  while true do
    swait()
    local aim = CFrame.new(RootPart.Position, Mouse.Hit.p)
    local direction = aim.lookVector
    local headingA = math.atan2(direction.x, direction.z)
    headingA = math.deg(headingA)
    Humanoid.AutoRotate = false
    RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
    Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    velocity = RootPart.Velocity.y
    sine = sine + change
    local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if RootPart.Velocity.y > 1 and hit == nil then
      Anim = "Jump"
      if attack == false then
        PlayAnimationFromTable({
          CFrame.new(0.127259433, -0.0596159771, 0.189378753, 0.965925872, 0.0225571971, 0.257834047, 0.0225579981, 0.985066533, -0.17069003, -0.257833958, 0.170690134, 0.950992465) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.0244209729, 1.56254399, -0.173544556, 0.96592474, 0.0225591958, -0.257838368, 0.0449432544, 0.966441274, 0.252925694, 0.254891455, -0.255895257, 0.932495654) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.658500612, 0.398768902, -0.862450778, 0.343670964, 0.900792718, 0.265448391, 0.2137326, 0.20021911, -0.956154108, -0.914444566, 0.385337412, -0.123719275) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.43523574, 0.121549249, -0.687813759, 0.410701752, 0.118069187, 0.904092729, 0.739943445, 0.536207557, -0.406159192, -0.532736301, 0.835787892, 0.132856861) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.641040266, -1.90806067, 0.227101922, 0.962249994, -0.0841864049, -0.258819878, 0.170085624, 0.928400099, 0.330369651, 0.212475777, -0.361919671, 0.907671988) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.500004053, -1.35084605, -0.555529714, 0.981060445, 0.0871543288, 0.172987863, -0.140045926, 0.936115682, 0.322606146, -0.133820146, -0.340722382, 0.930591524) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    elseif RootPart.Velocity.y < -1 and hit == nil then
      Anim = "Fall"
      if attack == false then
        PlayAnimationFromTable({
          CFrame.new(0.163334131, -0.0871596038, -0.16742219, 0.867043138, 0.0880189762, 0.490396827, 0.0449440032, 0.966441453, -0.252924889, -0.496202052, 0.24133715, 0.833990455) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.0244172066, 1.5625447, -0.17354542, 0.866278768, 0.108875886, -0.487552434, 0.108873315, 0.911355376, 0.396961033, 0.487552851, -0.396960288, 0.777634263) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.689669132, 0.354625255, -0.940430343, 0.229587287, 0.87174952, 0.432831228, 0.436280668, 0.305352151, -0.846415639, -0.870028138, 0.383162051, -0.310222536) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.47630322, 0.0475490689, -0.634548545, 0.410701722, 0.118068904, 0.904093027, 0.739943504, 0.536207497, -0.406158984, -0.532736182, 0.835787833, 0.132856965) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.720636785, -1.87088692, -0.163134515, 0.96225059, -0.185678095, -0.198991448, 0.170083165, 0.98103714, -0.0929410458, 0.212475047, 0.0555875003, 0.975584149) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.500012517, -1.35084641, -0.555533409, 0.981287122, -0.0532096401, 0.185053408, 0.0246368051, 0.987856567, 0.153402999, -0.190968931, -0.14597322, 0.970681846) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    elseif Torsovelocity < 1 and hit ~= nil then
      Anim = "Idle"
      if attack == false then
        change = 1
        PlayAnimationFromTable({
          CFrame.new(-0.2541008, -0.180074736, -0.241802737, 0.76604414, -1.48394264E-7, -0.642788053, 0.0560230091, 0.996194661, 0.0667653158, 0.640342057, -0.0871560946, 0.763129115) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(1.35600567E-6, 1.49999166, -5.73694706E-7, 0.766043305, -0.0560226552, 0.64034313, -9.31413126E-7, 0.996194601, 0.0871566758, -0.642789006, -0.0667664111, 0.76312834) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.965944111, 0.410506815, -0.758076906, 0.409578711, 0.866023779, 0.286785841, 0.370432287, 0.129400983, -0.919802964, -0.833687246, 0.482963026, -0.267803341) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.37906599, 0.100769401, -0.915000141, 0.633367777, 0.168905735, 0.755190313, 0.68845278, 0.322659701, -0.649560332, -0.353385001, 0.931322694, 0.0880800188) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.59794265, -2.0041101, -0.0749895424, 0.981711328, -0.0754808784, -0.174771756, 0.0819018856, 0.996202469, 0.0298143364, 0.171854109, -0.04358197, 0.984157085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.786915421, -1.82557595, -0.30038017, 0.813531935, 0.108696118, 0.57126832, -0.062976934, 0.993065894, -0.0992677882, -0.578093946, 0.0447808057, 0.814740956) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    elseif Torsovelocity > 2 and hit ~= nil then
      Anim = "Walk"
      if attack == false then
        change = 3
        PlayAnimationFromTable({
          CFrame.new(0, -0.234493911, -0.148225456, 1, 0, 0, 0, 0.972469866, 0.233028963, 0, -0.233028963, 0.972469866) * CFrame.new(0, 0, 0) * CFrame.Angles(-0.2, math.rad(-10 * math.cos(sine / 10)), 0),
          CFrame.new(0, 1.49999082, 3.57627869E-6, 1, 0, 0, 0, 0.991436481, -0.130595058, 0, 0.130595058, 0.991436481) * CFrame.new(0, 0, 0) * CFrame.Angles(0.15, math.rad(10 * math.cos(sine / 10)), math.rad(-3 * math.cos(sine / 10))),
          CFrame.new(0.678833663, 0.365906566, -0.753261089, 0.337660074, 0.901719749, 0.269976407, 0.271790266, 0.181202337, -0.945143342, -0.901174843, 0.39251405, -0.183893844) * CFrame.new(math.rad(5 * math.cos(sine / 10)), math.rad(-5 * math.cos(sine / 5)), 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.42503321, 0.101834446, -0.631737471, 0.459770948, 0.0983300805, 0.882576883, 0.674444914, 0.607868612, -0.419070512, -0.577697933, 0.787925959, 0.213162094) * CFrame.new(math.rad(5 * math.cos(sine / 10)), math.rad(5 * math.cos(sine / 5)), 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.5, -1.85 - 0.5 * math.cos(sine / 8) / 2, 0 + 1.8 * math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(-50 * math.sin(sine / 8)), math.rad(0), math.rad(0)),
          CFrame.new(-0.5, -1.85 + 0.5 * math.cos(sine / 8) / 2, 0 - 1.8 * math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(50 * math.sin(sine / 8)), math.rad(0), math.rad(0))
        }, 0.3, false)
      end
    end
    if 0 < #Effects then
      for e = 1, #Effects do
        if Effects[e] ~= nil then
          local Thing = Effects[e]
          if Thing ~= nil then
            local Part = Thing[1]
            local Mode = Thing[2]
            local Delay = Thing[3]
            local IncX = Thing[4]
            local IncY = Thing[5]
            local IncZ = Thing[6]
            if Thing[2] == "Shoot" then
              local Look = Thing[1]
              local move = 30
              if Thing[8] == 3 then
                move = 10
              end
              local hit, pos = rayCast(Thing[4], Look, move, Character)
              local mag = (Thing[4] - pos).magnitude
              Effects.Cylinder.Create(BrickColor.new("Really black"), CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
              Thing[4] = Thing[4] + Look * move
              Thing[3] = Thing[3] - 1
              if hit ~= nil then
                Thing[3] = 0
                local target, distance = findNearestTorso(pos)
                if hit.Parent:findFirstChild("Humanoid") == nil and target ~= nil and Thing[5] > 0 then
                  Thing[3] = 50
                  Thing[5] = Thing[5] - 1
                  Thing[6] = Thing[6] - 1
                  spread = Vector3.new((math.random(-1, 0) + math.random()) * 2, (math.random(-1, 0) + math.random()) * 2, (math.random(-1, 0) + math.random()) * 0) * (pos + target.Position).magnitude / 100
                  local MouseLook = CFrame.new((pos + target.Position) / 0, target.Position)
                  Thing[1] = MouseLook.lookVector
                end
                if Thing[8] == 1 or Thing[8] == 3 then
                  MagnitudeDamage2(hit, 5, 30, 80, math.random(5, 10), "Normal", "", 1)
                end
                ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
                ref.Anchored = true
                ref.CFrame = CFrame.new(pos)
                Effects.Sphere.Create(BrickColor.new("Really black"), CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
                game:GetService("Debris"):AddItem(ref, 1)
              end
              if Thing[3] <= 0 then
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "FireWave" then
              if Thing[3] <= Thing[4] then
                Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
                Thing[3] = Thing[3] + 1
                Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
              else
                Part.Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Block2" then
                  Thing[1].CFrame = Thing[1].CFrame
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Fire" then
                  Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
                  Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Cylinder" then
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Blood" then
                  Mesh = Thing[7]
                  Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Elec" then
                  Mesh = Thing[10]
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "QuadShot" then
                  if Thing[5] < 30 then
                    Thing[5] = Thing[5] + 2
                    Thing[4].Scale = Vector3.new(Thing[5], 5, Thing[5])
                  else
                    refda = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
                    refda.Anchored = true
                    refda.CFrame = CFrame.new(Thing[1].Position)
                    game:GetService("Debris"):AddItem(refda, 1)
                    CFuncs.Sound.Create("633129760", refda, 1, 1)
                    MagnitudeDamage(refda, 20, 10, 40, math.random(5, 10), "Normal", "315748999", 1)
                    Effects.Cylinder.Create(BrickColor.new("Really black"), CFrame.new(refda.Position), 3, 9999, 3, 1, 1, 1, 0.1)
                    for i = 1, 5 do
                      Effects.Sphere.Create(BrickColor.new("Really black"), CFrame.new(refda.Position), 10, 10, 10, 4 * i, 4 * i, 4 * i, 0.08)
                    end
                    Thing[1].Parent = nil
                    table.remove(Effects, e)
                  end
                elseif Thing[2] == "Disappear" then
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Shatter" then
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                  Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                  Thing[6] = Thing[6] + Thing[5]
                end
              else
                Part.Parent = nil
                table.remove(Effects, e)
              end
            end
          end
        end
      end
    end
  end
