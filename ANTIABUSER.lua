--//Health//--

print('By Sikke [aka : SikkeIsOnline]')
warn('My discord : Sikke#2497')

Me = game.Players.LocalPlayer
player = Me
char = Me.Character
chara = char
chara.Humanoid.MaxHealth = math.huge + 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
chara.Humanoid.Health = math.huge + 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 

--//Time stop script//--

 wait(0.016666666666666666)
plr = game.Players.LocalPlayer
mse = plr:GetMouse()
sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "https://www.roblox.com/asset/?id=274698941"
sound.Volume = 10
canworld = true
mse.KeyDown:connect(function(key)
	key = key:lower()
	if key == "g" then
		if canworld == false then return end
		if canworld then
		canworld = false
		sound:Play()
		local function spawnpart()
		sphere = Instance.new("Part")
		--game.Debris:AddItem(sphere,3)
		local sm = Instance.new("SpecialMesh", sphere)
		sm.MeshType = "Sphere"
		sphere.Transparency = 0.5
		sphere.Anchored = true
		sphere.CanCollide = false
		sphere.Material = "SmoothPlastic"
		sphere.BrickColor = BrickColor.new("Lapis")
		end
		
		local function weld(lol)
			local weld = Instance.new("Weld", plr.Character.Torso)
			weld.Part0 = plr.Character.Torso
			weld.Part1 = lol
			weld.C0 = plr.Character.Torso.CFrame:inverse()
			weld.C1 = lol.CFrame:inverse()
		end
		wait(1.4)
		spawnpart()
			for i, v in pairs(game.Players:GetChildren()) do
			t = v.Character:FindFirstChild("Torso")
			if t then
				t.Anchored = true
				plr.Character:FindFirstChild("Torso").Anchored = false
			end
			RA = v.Character:FindFirstChild("Right Arm")
			if RA then
				RA.Anchored = true
				plr.Character:FindFirstChild("Right Arm").Anchored = false
			end
			LA = v.Character:FindFirstChild("Left Arm")
			if LA then
				LA.Anchored = true
				plr.Character:FindFirstChild("Left Arm").Anchored = false
			end
			RL = v.Character:FindFirstChild("Right Leg")
			if RL then
				RL.Anchored = true
				plr.Character:FindFirstChild("Right Leg").Anchored = false
			end
			LL = v.Character:FindFirstChild("Left Leg")
			if LL then
				LL.Anchored = true
				plr.Character:FindFirstChild("Left Leg").Anchored = false
			end
		end
		weld(sphere)
		cce = Instance.new("ColorCorrectionEffect", game.Lighting)
		cce.Saturation = -2
		--game.Debris:AddItem(cce, 5)
		sphere.Parent = game.Workspace
		for i = 1,10 do
			sphere.Size = sphere.Size + Vector3.new(50,50,50)
			wait()
			end
		--wait(5)
		
		end
	end
end
)

mse.KeyDown:connect(function(key)
	key = key:lower()
	if key == "h" then
canworld = true
		for i, v in pairs(game.Players:GetChildren()) do
		t = v.Character:FindFirstChild("Torso")
			if t then
				t.Anchored = false
			end
			RA = v.Character:FindFirstChild("Right Arm")
			if RA then
				RA.Anchored = false
			end
			LA = v.Character:FindFirstChild("Left Arm")
			if LA then
				LA.Anchored = false
			end
			RL = v.Character:FindFirstChild("Right Leg")
			if RL then
				RL.Anchored = false
			end
			LL = v.Character:FindFirstChild("Left Leg")
			if LL then
				LL.Anchored = false
			end
		end
		cce.Saturation = 0
sphere:Destroy()
end
end)

  Effects = {}
  local Player = game.Players.localPlayer
  local Character = Player.Character
  Character.Archivable = true
  AdvancingFortress = Character:Clone()
  AdvancingFortress.Parent = Character
  torso = AdvancingFortress.Torso
  hum = AdvancingFortress.Humanoid
  AdvancingFortress.Name = "Advancing Fortress"
  pl = AdvancingFortress
  for i, v in pairs(AdvancingFortress:GetChildren()) do
    if v:IsA("BasePart") then
      v.Transparency = 1
    end
  end
 
--//Jojo Script//-- 
  
print("Za Warudo!")
  wait(0.016666666666666666)
  Effects = {}
  local Player = game.Players.localPlayer
  local Character = Player.Character
  Character.Archivable = true
  AdvancingFortress = Character:Clone()
  AdvancingFortress.Parent = Character
  torso = AdvancingFortress.Torso
  hum = AdvancingFortress.Humanoid
  AdvancingFortress.Name = "Advancing Fortress"
  pl = AdvancingFortress
  for i, v in pairs(AdvancingFortress:GetChildren()) do
    if v:IsA("BasePart") then
      v.Transparency = 1
    end
  end
  local Humanoid = AdvancingFortress.Humanoid
  local Mouse = Player:GetMouse()
  local LeftArm = AdvancingFortress["Left Arm"]
  local RightArm = AdvancingFortress["Right Arm"]
  local LeftLeg = AdvancingFortress["Left Leg"]
  local RightLeg = AdvancingFortress["Right Leg"]
  local Head = AdvancingFortress.Head
  local Torso = AdvancingFortress.Torso
  local Camera = game.Workspace.CurrentCamera
  local RootPart = AdvancingFortress.HumanoidRootPart
  local RootJoint = RootPart.RootJoint
  local attack = false
  local Anim = "Idle"
  local attacktype = 1
  local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  local velocity = RootPart.Velocity.y
  local sine = 0
  local change = 1
  local Create = LoadLibrary("RbxUtility").Create
  local TimeStop = false
  local m = Create("Model")({
    Parent = AdvancingFortress,
    Name = "WeaponModel"
  })
  Head.face:remove()
  AdvancingFortress.Head.Name = "FHead"
  AdvancingFortress.Torso.Name = "FTorso"
  AdvancingFortress.HumanoidRootPart.Name = "FHumanoidRootPart"
  Humanoid.Animator.Parent = nil
  AdvancingFortress.Animate.Parent = nil
  local function newMotor(part0, part1, c0, c1)
    local w = Create("Weld")({
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
        local Sound = Create("Sound")({
          Volume = vol,
          Pitch = pit or 1,
          SoundId = "rbxassetid://" .. id,
          Parent = par or workspace
        })
        Sound:play()
        game:GetService("Debris"):AddItem(Sound, 130)
        return Sound
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
        local BillPar = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "BillboardGuiPart", Vector3.new(1, 1, 1))
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
  function FindNearestTorso(pos)
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
          local dohit = true
          if dohit == true then
            torso = temp
            dist = (temp.Position - pos).magnitude
          end
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
      CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
      local Damage = math.random(minim, maxim)
      local blocked = false
      local block = hit.Parent:findFirstChild("Block")
      if block ~= nil and block.className == "IntValue" and block.Value > 0 then
        blocked = true
        block.Value = block.Value - 1
        print(block.Value)
      end
      if TimeStop == false then
        h.Health = h.Health - Damage
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Really red").Color)
      elseif TimeStop == true then
        repeat
          wait()
        until TimeStop == false
        h.Health = h.Health - Damage / 2
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Really red").Color)
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
            Effects.Block.Create(BrickColor.new("Really black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
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
  local STDamage = false
  function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
    for _, c in pairs(workspace:children()) do
      local hum = c:findFirstChild("Humanoid")
      if hum ~= nil then
        local head = c:findFirstChild("Torso")
        if head ~= nil then
          local targ = head.Position - Part.Position
          local mag = targ.magnitude
          if Magnitude >= mag and c.Name ~= Player.Name then
            Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, 0.1, HitSound, HitPitch)
            if STDamage == true then
              for i = 1, 3 do
                Effects.Block.Create(BrickColor.new("Really black"), head.CFrame, 1, 1, 1, 4, 4, 4, 0.07, 1)
              end
              for i = 1, 10 do
                CamShake(1, 70000)
                Effects.Break.Create(BrickColor.new("Really black"), head.CFrame, 1, 1, 1)
              end
            elseif STDamage == false then
              CamShake(1, 90000)
              Effects.Block.Create(BrickColor.new("Really black"), head.CFrame, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.07, 1)
              for i = 1, 2 do
                Effects.Break.Create(BrickColor.new("Really black"), head.CFrame, 0.4, 0.4, 0.4)
              end
            end
          end
        end
      end
    end
  end
  HHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HHandle", Vector3.new(1.09999979, 0.299999923, 1.0999999))
  HHandleWeld = CFuncs.Weld.Create(m, Head, HHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0646438599, -0.0500068665, -0.0646400452, -0.707107365, -3.21031663E-8, 0.707106411, -8.19564079E-8, 1.00000119, -1.41561088E-7, -0.707106352, 1.38630043E-7, -0.707107484))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.09999979, 0.399999917, 1.0999999))
  PartWeld = CFuncs.Weld.Create(m, HHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.350002289, 0, 1.00000024, -3.21031663E-8, -5.96046448E-8, -3.21031663E-8, 1.00000119, 1.38630043E-7, -5.96046448E-8, 1.38630043E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.09999979, 0.499999911, 1.0999999))
  PartWeld = CFuncs.Weld.Create(m, HHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453E-6, -0.400001526, 7.62939453E-6, 1.00000024, -3.21031663E-8, -5.96046448E-8, -3.21031663E-8, 1.00000119, 1.38630043E-7, -5.96046448E-8, 1.38630043E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.499999821, 0.299999893, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, HHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300033569, -0.800000191, -0.44997406, 1.00000024, -3.21031663E-8, -5.96046448E-8, -3.21031663E-8, 1.00000119, 1.38630043E-7, -5.96046448E-8, 1.38630043E-7, 1.00000024))
  Eye1 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 1, "Really red", "Eye1", Vector3.new(0.400000006, 0.200000003, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, HHandle, Eye1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0381011963, -0.0574798584, 0.471725464, -2.89082527E-6, 0.173647985, -0.984807968, -6.2584877E-7, 0.984808922, 0.173648104, 1.00000012, 1.02902288E-6, -2.77161598E-6))
  CFuncs.Mesh.Create("SpecialMesh", Eye1, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Eye2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 1, "Really red", "Eye2", Vector3.new(0.400000006, 0.200000003, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, HHandle, Eye2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0115432739, -0.0487277508, 0.482452393, -0.981060266, -0.173648134, -0.0858327746, -0.172987267, 0.984808922, -0.0151339322, 0.0871568322, 3.96735317E-7, -0.996194839))
  CFuncs.Mesh.Create("SpecialMesh", Eye2, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.499999821, 0.300000012, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, HHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299995422, -0.800000191, 0.449989319, 5.96046448E-8, -1.38630043E-7, -1.00000024, -3.21031663E-8, 1.00000119, 1.38630043E-7, 1.00000024, -3.21031663E-8, -5.96046448E-8))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.10000002, 0.999999881, 1.0999999))
  PartWeld = CFuncs.Weld.Create(m, HHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.200004578, -0.150001526, 0.200012207, 1.00000024, -3.21031663E-8, -5.96046448E-8, -3.21031663E-8, 1.00000119, 1.38630043E-7, -5.96046448E-8, 1.38630043E-7, 1.00000024))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.600000024))
  WedgeWeld = CFuncs.Weld.Create(m, HHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.449981689, -0.750000954, 0.250007629, 5.96046448E-8, -1.38630043E-7, -1.00000024, -3.21031663E-8, 1.00000119, 1.38630043E-7, 1.00000024, -3.21031663E-8, -5.96046448E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, HHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0500011444, -0.449970245, 0.650001526, 3.21031663E-8, -1.00000119, -1.38630043E-7, -5.96046448E-8, 1.38630043E-7, 1.00000024, -1.00000024, 3.21031663E-8, 5.96046448E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.5))
  WedgeWeld = CFuncs.Weld.Create(m, HHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.449970245, -1.05000114, 0.300033569, -5.96046448E-8, 1.38630043E-7, 1.00000024, -3.21031663E-8, 1.00000119, 1.38630043E-7, -1.00000024, 3.21031663E-8, 5.96046448E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.5))
  WedgeWeld = CFuncs.Weld.Create(m, HHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.449996948, -1.05000019, 0.300014496, 1.00000024, -3.21031663E-8, -5.96046448E-8, -3.21031663E-8, 1.00000119, 1.38630043E-7, -5.96046448E-8, 1.38630043E-7, 1.00000024))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, HHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0500011444, -0.650009155, 0.449989319, 3.21031663E-8, -1.00000119, -1.38630043E-7, 5.96046448E-8, -1.38630043E-7, -1.00000024, 1.00000024, -3.21031663E-8, -5.96046448E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.600000024))
  WedgeWeld = CFuncs.Weld.Create(m, HHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.450012207, -0.750001907, 0.249996185, -1.00000024, 3.21031663E-8, 5.96046448E-8, -3.21031663E-8, 1.00000119, 1.38630043E-7, 5.96046448E-8, -1.38630043E-7, -1.00000024))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.300000012, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, HHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.449985504, -0.800001144, 0.0500106812, 5.96046448E-8, -1.38630043E-7, -1.00000024, -3.21031663E-8, 1.00000119, 1.38630043E-7, 1.00000024, -3.21031663E-8, -5.96046448E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.300000012, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, HHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.44997406, -0.800002098, 0.0500030518, -1.00000024, 3.21031663E-8, 5.96046448E-8, -3.21031663E-8, 1.00000119, 1.38630043E-7, 5.96046448E-8, -1.38630043E-7, -1.00000024))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  THandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "THandle", Vector3.new(1, 0.799999893, 1))
  THandleWeld = CFuncs.Weld.Create(m, Torso, THandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.19999981, 0.699999928, 1.20000005))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.328445435, -0.67606163, -0.323509216, 0.709785044, 0.0255700666, -0.70395416, -2.32494262E-4, 0.999350607, 0.0360652842, 0.704418302, -0.0254352745, 0.709329426))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.99999994, 0.499999851, 0.900000036))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354995728, 0.217259884, 0.408233643, 0.709785223, -0.157498211, -0.686585248, -2.32138293E-4, 0.974633098, -0.2238141, 0.704418123, 0.159019142, 0.691742837))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.80000019, 0.700000048, 0.800000012))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-5, -0.843423843, -1.0044136, 1, -8.19564079E-8, 5.96046519E-8, -1.01078633E-7, 0.939694166, -0.342019171, 1.52638329E-8, 0.34201926, 0.939693213))
  CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.60000014, 0.400000006, 1.39999998))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-5, -0.793423653, -0.504411697, 1, -8.19564079E-8, 5.96046519E-8, -1.01078633E-7, 0.939694166, -0.342019171, 1.52638329E-8, 0.34201926, 0.939693213))
  CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.19999981, 0.499999911, 1.19999993))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.198799133, -0.0796661377, -0.194431305, 0.709785044, 0.0255700666, -0.70395416, -2.32494262E-4, 0.999350607, 0.0360652842, 0.704418302, -0.0254352745, 0.709329426))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.80000019, 0.300000012, 1.80000007))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.10351563E-5, -1.04342794, -0.404396057, 1, -8.19564079E-8, 5.96046519E-8, -1.01078633E-7, 0.939694166, -0.342019171, 1.52638329E-8, 0.34201926, 0.939693213))
  CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.200000003, 1.10000002, 0.300000012))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617E-5, -0.943422318, -1.35441589, 1, -8.19564079E-8, 5.96046519E-8, -1.01078633E-7, 0.939694166, -0.342019171, 1.52638329E-8, 0.34201926, 0.939693213))
  CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.09999979, 0.499999911, 1.0999999))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.11920929, 0.416726112, -0.115348816, 0.709785044, 0.0255700666, -0.70395416, -2.32494262E-4, 0.999350607, 0.0360652842, 0.704418302, -0.0254352745, 0.709329426))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.39999986, 1.19999993, 1.39999986))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.218803406, -0.55094862, 0.222564697, 0.709785223, -0.157498211, -0.686585248, -2.32138293E-4, 0.974633098, -0.2238141, 0.704418123, 0.159019142, 0.691742837))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.999999762, 0.300000012, 0.799999893))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0691986084, 0.816726685, -0.165359497, 0.709785044, 0.0255700666, -0.70395416, -2.32494262E-4, 0.999350607, 0.0360652842, 0.704418302, -0.0254352745, 0.709329426))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.899999976, 0.499999851, 0.899999917))
  PartWeld = CFuncs.Weld.Create(m, THandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.331642151, 0.516366959, 0.335166931, 0.709785223, -0.157498211, -0.686585248, -2.32138293E-4, 0.974633098, -0.2238141, 0.704418123, 0.159019142, 0.691742837))
  AHandleR = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "AHandleR", Vector3.new(0.799999952, 0.800000012, 1.22000003))
  AHandleRWeld = CFuncs.Weld.Create(m, RightArm, AHandleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.209915161, 0.00999641418, -3.81469727E-6, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.200000003, 0.899999976, 1.01999998))
  PartWeld = CFuncs.Weld.Create(m, AHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999984741, 0.550004005, 0, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.300000012, 0.200000003, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, AHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.150001526, 0.200003624, -0.359994888, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.300000012, 0.200000003, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, AHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149993896, 0.20000267, 0.359992981, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.20000005, 0.800000012, 1.20000005))
  PartWeld = CFuncs.Weld.Create(m, AHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.209899902, -0.809997559, 5.7220459E-6, -1, 8.19564079E-8, -5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, -5.96046519E-8, 1.41561088E-7, -1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.200000003, 0.699999988, 1.01999998))
  PartWeld = CFuncs.Weld.Create(m, AHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.300003052, 0.650004387, 1.71661377E-5, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.300000012, 0.699999988, 1.01999998))
  PartWeld = CFuncs.Weld.Create(m, AHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149993896, 0.650003433, 0, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.200000003, 0.699999928, 0.520000041))
  PartWeld = CFuncs.Weld.Create(m, AHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199996948, -0.049996376, -3.81469727E-6, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  HitboxR = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxR", Vector3.new(0.799999952, 0.800000012, 1.22000003))
  HitboxRWeld = CFuncs.Weld.Create(m, AHandleR, HitboxR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.700003624, 0, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.5, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200012207, -0.149997711, 0.360010147, -1, 8.19564079E-8, -5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, -5.96046519E-8, 1.41561088E-7, -1.00000024))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.200000003, 0.300000012))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.30999851, 0.659896851, -5.96046519E-8, 1.41561088E-7, -1.00000024, -8.19564079E-8, 1.00000119, -1.41561088E-7, 1, -8.19564079E-8, 5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.5, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199981689, -0.149998665, 0.359991074, 1, -8.19564079E-8, 5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, 5.96046519E-8, -1.41561088E-7, 1.00000024))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.200000003, 0.899999976))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863E-6, 0.309997559, -0.0598983765, -5.96046519E-8, 1.41561088E-7, -1.00000024, 8.19564079E-8, -1.00000119, 1.41561088E-7, -1, 8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.200000003, 0.300000012))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-6, 0.309999466, 0.659896851, 5.96046519E-8, -1.41561088E-7, 1.00000024, 8.19564079E-8, -1.00000119, 1.41561088E-7, 1, -8.19564079E-8, 5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.01999998, 0.200000003, 0.300000012))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459E-6, 0.200003624, 0.150016785, 5.96046519E-8, -1.41561088E-7, 1.00000024, -8.19564079E-8, 1.00000119, -1.41561088E-7, -1, 8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.300000012, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316E-6, -1.06000042, 0.490097046, 5.96046519E-8, -1.41561088E-7, 1.00000024, -8.19564079E-8, 1.00000119, -1.41561088E-7, -1, 8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.01999998, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459E-6, 0.20000267, 0.299995422, -5.96046519E-8, 1.41561088E-7, -1.00000024, -8.19564079E-8, 1.00000119, -1.41561088E-7, 1, -8.19564079E-8, 5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.5, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453E-6, 0.659999847, 0.490089417, -5.96046519E-8, 1.41561088E-7, -1.00000024, 8.19564079E-8, -1.00000119, 1.41561088E-7, -1, 8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.200000003, 0.900000095))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459E-6, -1.30999947, -0.0598831177, 5.96046519E-8, -1.41561088E-7, 1.00000024, -8.19564079E-8, 1.00000119, -1.41561088E-7, -1, 8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  AHandleL = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "AHandleL", Vector3.new(0.800000072, 0.800000012, 1.22000003))
  AHandleLWeld = CFuncs.Weld.Create(m, LeftArm, AHandleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.210014343, 0.00999736786, 1.14440918E-5, -1, 8.19564079E-8, -5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, -5.96046519E-8, 1.41561088E-7, -1.00000024))
  HitboxL = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxL", Vector3.new(0.800000072, 0.800000012, 1.22000003))
  HitboxLWeld = CFuncs.Weld.Create(m, AHandleL, HitboxL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.700003624, 0, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.300000012, 0.200000003, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, AHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149986267, 0.200001717, -0.360012054, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.200000003, 0.699999928, 0.520000041))
  PartWeld = CFuncs.Weld.Create(m, AHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199989319, -0.0499982834, -9.53674316E-6, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.300000012, 0.200000003, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, AHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149986267, 0.200001717, 0.359992981, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.20000005, 0.800000012, 1.20000005))
  PartWeld = CFuncs.Weld.Create(m, AHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.21005249, -0.81000042, 2.28881836E-5, -1, -8.19564079E-8, -5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, -5.96046519E-8, -1.41561088E-7, -1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.200000003, 0.899999976, 1.01999998))
  PartWeld = CFuncs.Weld.Create(m, AHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999984741, 0.550003052, -5.7220459E-6, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.200000003, 0.699999988, 1.01999998))
  PartWeld = CFuncs.Weld.Create(m, AHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.299995422, 0.650003433, -3.81469727E-6, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.300000012, 0.699999988, 1.01999998))
  PartWeld = CFuncs.Weld.Create(m, AHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149993896, 0.65000248, 0, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.200000003, 0.300000012))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-6, 0.309998512, 0.660064697, 5.96046519E-8, 1.41561088E-7, 1.00000024, -8.19564079E-8, -1.00000119, -1.41561088E-7, 1, 8.19564079E-8, 5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.5, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199989319, -0.149998665, 0.359992981, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.200000003, 0.900000095))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.47955322E-5, -1.30999947, -0.060043335, 5.96046519E-8, 1.41561088E-7, 1.00000024, 8.19564079E-8, 1.00000119, 1.41561088E-7, -1, -8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.01999998, 0.200000003, 0.300000012))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459E-6, 0.20000267, 0.150001526, 5.96046519E-8, 1.41561088E-7, 1.00000024, 8.19564079E-8, 1.00000119, 1.41561088E-7, -1, -8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.5, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.199836731, -0.149998665, 0.36003685, -1, -8.19564079E-8, -5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, -5.96046519E-8, -1.41561088E-7, -1.00000024))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.5, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891E-5, 0.659998894, 0.489944458, -5.96046519E-8, -1.41561088E-7, -1.00000024, -8.19564079E-8, -1.00000119, -1.41561088E-7, -1, -8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.5, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.199981689, -0.149999619, 0.360010147, -1, -8.19564079E-8, -5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, -5.96046519E-8, -1.41561088E-7, -1.00000024))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.200000003, 0.899999976))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.67028809E-5, 0.309998512, -0.0600509644, -5.96046519E-8, -1.41561088E-7, -1.00000024, -8.19564079E-8, -1.00000119, -1.41561088E-7, -1, -8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.300000012, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.33514404E-5, -1.06000042, 0.489936829, 5.96046519E-8, 1.41561088E-7, 1.00000024, 8.19564079E-8, 1.00000119, 1.41561088E-7, -1, -8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.01999998, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453E-6, 0.200003624, 0.299987793, -5.96046519E-8, -1.41561088E-7, -1.00000024, 8.19564079E-8, 1.00000119, 1.41561088E-7, 1, 8.19564079E-8, 5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(1.19999993, 0.200000003, 0.300000012))
  WedgeWeld = CFuncs.Weld.Create(m, AHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316E-6, -1.30999947, 0.660049438, -5.96046519E-8, -1.41561088E-7, -1.00000024, 8.19564079E-8, 1.00000119, 1.41561088E-7, 1, 8.19564079E-8, 5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  LHandleR = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "LHandleR", Vector3.new(1.02999997, 1.00999999, 1.19000006))
  LHandleRWeld = CFuncs.Weld.Create(m, RightLeg, LHandleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00498962402, -0.0950021744, 0.00499534607, -1, 8.19564079E-8, -5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, -5.96046519E-8, 1.41561088E-7, -1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.800000012, 0.800000012, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, LHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00498962402, -0.00499916077, -0.604999542, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.02999997, 1.00999999, 1.19000006))
  PartWeld = CFuncs.Weld.Create(m, LHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.600002289, 0, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.02999997, 0.699999928, 1.19000006))
  PartWeld = CFuncs.Weld.Create(m, LHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.454998016, 0, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.400000006, 1.20000005, 0.200000003))
  PartWeld = CFuncs.Weld.Create(m, LHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00499725342, -0.00499916077, -0.604999542, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.800000131, 1.20000005, 0.800000012))
  PartWeld = CFuncs.Weld.Create(m, LHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00499725342, 0.0149993896, 0.00500297546, 2.28095047E-7, 1.00000775, 2.99581131E-7, -1.00000417, 5.63755016E-8, -4.06898749E-7, -2.98379774E-7, 2.07959161E-8, 1.0000037))
  CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, LHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.604999542, -0.504998207, 0.29499054, -2.98023224E-8, -6.70552254E-8, -1.00000012, 3.7252903E-8, 1.0000006, 7.4505806E-8, 1, 4.47034836E-8, 2.98023224E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, LHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.60499382, -0.495001793, 0.305000305, -5.96046519E-8, -1.41561088E-7, -1.00000024, -8.19564079E-8, -1.00000119, -1.41561088E-7, -1, -8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, LHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.604999542, -0.495001793, 0.29499054, 2.98023224E-8, 6.70552254E-8, 1.00000012, -3.7252903E-8, -1.0000006, -7.4505806E-8, 1, 4.47034836E-8, 2.98023224E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, LHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.604999542, -0.504998207, 0.305000305, 2.98023224E-8, 6.70552254E-8, 1.00000012, 3.7252903E-8, 1.0000006, 7.4505806E-8, -1, -4.47034836E-8, -2.98023224E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  LHandleL = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "LHandleL", Vector3.new(1.02999997, 1.00999999, 1.19000006))
  LHandleLWeld = CFuncs.Weld.Create(m, LeftLeg, LHandleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00498199463, -0.095000267, 0.00502204895, -1, 8.19564079E-8, -5.96046519E-8, -8.19564079E-8, 1.00000119, -1.41561088E-7, -5.96046519E-8, 1.41561088E-7, -1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.02999997, 1.00999999, 1.19000006))
  PartWeld = CFuncs.Weld.Create(m, LHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.600001335, 0, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.400000006, 1.20000005, 0.300000012))
  PartWeld = CFuncs.Weld.Create(m, LHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00499725342, -0.00500106812, -0.554998398, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(1.02999997, 0.699999928, 1.19000006))
  PartWeld = CFuncs.Weld.Create(m, LHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.454999924, 0, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.800000131, 1.20000005, 0.800000012))
  PartWeld = CFuncs.Weld.Create(m, LHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00499534607, 0.0149993896, 0.00500297546, 2.28095047E-7, 1.00000775, 2.99581131E-7, -1.00000417, 5.63755016E-8, -4.06898749E-7, -2.98379774E-7, 2.07959161E-8, 1.0000037))
  CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Part", Vector3.new(0.800000012, 0.800000012, 0.300000012))
  PartWeld = CFuncs.Weld.Create(m, LHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00498962402, -0.00500106812, -0.554998398, 1, 8.19564079E-8, 5.96046519E-8, 8.19564079E-8, 1.00000119, 1.41561088E-7, 5.96046519E-8, 1.41561088E-7, 1.00000024))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.300000012, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, LHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.554998398, -0.505000114, 0.305000305, 2.98023224E-8, 6.70552254E-8, 1.00000012, 3.7252903E-8, 1.0000006, 7.4505806E-8, -1, -4.47034836E-8, -2.98023224E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.300000012, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, LHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.554998398, -0.505000114, 0.29499054, -2.98023224E-8, -6.70552254E-8, -1.00000012, 3.7252903E-8, 1.0000006, 7.4505806E-8, 1, 4.47034836E-8, 2.98023224E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.300000012, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, LHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.554998398, -0.494999886, 0.29499054, 2.98023224E-8, 6.70552254E-8, 1.00000012, -3.7252903E-8, -1.0000006, -7.4505806E-8, 1, 4.47034836E-8, 2.98023224E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Wedge", Vector3.new(0.300000012, 0.200000003, 0.200000003))
  WedgeWeld = CFuncs.Weld.Create(m, LHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.554998398, -0.494999886, 0.305000305, -5.96046519E-8, -1.41561088E-7, -1.00000024, -8.19564079E-8, -1.00000119, -1.41561088E-7, -1, -8.19564079E-8, -5.96046519E-8))
  CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Shield = CFuncs.Part.Create(m, "Neon", 0, 0.5, "Really red", "Part", Vector3.new(9.1, 8.5, 0.2))
  CFuncs.Mesh.Create("SpecialMesh", Shield, "FileMesh", "rbxassetid://708292865", Vector3.new(0, 0, 0), Vector3.new(0.04, 0.04, 0.04))
  Shield.Parent = nil
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
        local prt = CFuncs.Part .. Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
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
          z3
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
    Sphere2 = {
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
    Elec = {
      Create = function(cff, x, y, z)
        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Purple"), "Part", Vector3.new(1, 1, 1))
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
        local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
        local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
  local Invisible = true
  function Reappear()
    for _, i in pairs(AdvancingFortress:children()) do
      if i:IsA("BasePart") then
        coroutine.resume(coroutine.create(function(Part)
          for i = 0, 1, 0.3 do
            swait()
            Part.Transparency = -i
          end
          Part.Transparency = 0
        end), i)
      end
    end
    for _, i in pairs(m:children()) do
      if i:IsA("BasePart") then
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
  function ReappearArmorOnly()
    for _, i in pairs(m:children()) do
      if i:IsA("BasePart") then
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
  function Disappear()
    for _, i in pairs(AdvancingFortress:children()) do
      if i:IsA("BasePart") then
        coroutine.resume(coroutine.create(function(Part)
          for i = 0, 1, 0.3 do
            swait()
            Part.Transparency = i
          end
          Part.Transparency = 1
        end), i)
      end
    end
    for _, i in pairs(m:children()) do
      if i:IsA("BasePart") then
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
  function DisappearArmorOnly()
    for _, i in pairs(m:children()) do
      if i:IsA("BasePart") then
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
  function CamShake(time, freq)
    coroutine.resume(coroutine.create(function()
      local cam = game:GetService("Workspace").CurrentCamera
      local time = 10
      local seed = Vector3.new(math.random(100, 200) / freq, math.random(100, 200) / freq, 0)
      if math.random(1, 2) == 1 then
        seed = Vector3.new(-seed.x, seed.y, 0)
      end
      if math.random(1, 2) == 1 then
        seed = Vector3.new(seed.x, -seed.y, 0)
      end
      cam.CoordinateFrame = CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(seed.x * time, seed.y * time, 0) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
      for i = 1, time do
        cam.CoordinateFrame = CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(-seed.x, -seed.y, 0) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
        wait()
      end
    end))
  end
  local ora = false
  function ORA()
    attack = true
    local S = CFuncs.Sound.Create("616593932", Torso, 1, 1)
    S.Looped = true
    if ora == true then
      while ora == true do
        CFuncs.Sound.Create("200632136", HitboxL, 0.3, math.random(1, 1.2))
        MagnitudeDamage(HitboxL, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "260430117", 1)
        for i = 0, 1, 0.8 do
          swait()
          RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -4), 0.5)
          PlayAnimationFromTable({
            CFrame.new(-0.561874092, -0.346845925, -0.435822666, 0.64278698, -0.323744029, 0.694272816, 0, 0.906308115, 0.422617555, -0.766044974, -0.271653026, 0.582563102) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(8.9481473E-6, 1.49999249, 5.2684918E-6, 0.704669476, 0.0560214818, -0.707321048, -0.0868221819, 0.996195257, -0.0075956285, 0.704204142, 0.0667634308, 0.706852198) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(1.97048378, 0.808467984, -0.254994273, -0.457079947, -0.7819345, 0.423859, 0.842444837, -0.227779076, 0.488266319, -0.285246044, 0.580254436, 0.762849629) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.18535733, 0.530705392, -0.713678956, 0.778861284, -0.400152355, 0.482962847, 0.492400557, -0.0868335962, -0.866026342, 0.388479888, 0.912325621, 0.129403993) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(0.708622813, -1.45549953, -0.199998885, 0.984808087, -0.167729571, -0.0449446738, 0.173646823, 0.951251328, 0.254887581, 1.4603138E-6, -0.258819878, 0.965925694) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-0.604502141, -1.943735, 5.15520573E-4, 0.982544005, 0.00845471025, 0.185841322, -0.0717865527, 0.938827574, 0.336824685, -0.17162481, -0.34428525, 0.923045695) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
          }, 0.8, false)
        end
        CFuncs.Sound.Create("200632136", HitboxR, 0.3, math.random(1, 1.2))
        MagnitudeDamage(HitboxR, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "260430117", 1)
        for i = 0, 1, 0.8 do
          swait()
          RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -4), 0.5)
          PlayAnimationFromTable({
            CFrame.new(1.1920929E-6, -0.0170394331, -0.52941519, 0.70710516, -2.21270369E-7, -0.707108498, 0.18301405, 0.965925574, 0.183012888, 0.683014154, -0.258820117, 0.683010995) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.22189522E-6, 1.49999356, 1.04308128E-6, 0.707110465, 0.122788236, 0.696360528, -1.4748274E-6, 0.98480773, -0.173648238, -0.707103193, 0.122787461, 0.696368098) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(1.44562268, 0.333473027, -0.475224167, 0.907739162, 0.217196256, 0.358959734, 0.40125221, -0.199453548, -0.893991232, -0.122576535, 0.955528319, -0.268199235) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.884794, 0.881342709, -0.770847201, 0.0912726, 0.688403964, -0.719562054, -0.91795665, -0.221949756, -0.328776807, -0.386037856, 0.690535009, 0.611666858) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(0.789779902, -1.8586235, 0.161380947, 0.965926766, -0.258817255, -8.10623169E-6, 0.243211254, 0.907672405, 0.342022836, -0.0885141194, -0.330371499, 0.939691722) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-0.73783946, -1.45406294, -0.215006173, 0.882573366, -0.0180292428, 0.469829261, -0.163172901, 0.925412893, 0.342031717, -0.440952569, -0.378531486, 0.813802838) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
          }, 0.8, false)
        end
        CFuncs.Sound.Create("200632136", HitboxL, 0.3, math.random(1, 1.2))
        MagnitudeDamage(HitboxL, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "260430117", 1)
        for i = 0, 1, 0.8 do
          swait()
          RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -4), 0.5)
          PlayAnimationFromTable({
            CFrame.new(0.215482175, -0.0393944569, -0.126133978, 0.259671897, -0.351393819, 0.8994959, -0.075478971, 0.921212733, 0.381667405, -0.962742627, -0.167001322, 0.212690249) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.26510859E-5, 1.49999118, -2.16066837E-7, 0.420251548, -0.0215960592, -0.90715003, -0.100918382, 0.992402375, -0.0703775883, 0.901778162, 0.12112467, 0.414879382) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(1.81840861, 0.705381036, -0.347923756, -0.236346364, -0.883376777, 0.404705286, 0.945798516, -0.113677993, 0.304209948, -0.222726092, 0.454668403, 0.862362981) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.21960759, 0.420275182, -0.728423595, -0.57802856, -0.255150676, 0.775100708, 0.665436089, -0.697164714, 0.266751111, 0.472311139, 0.669969678, 0.572767615) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(0.620917439, -1.53014767, -0.12091887, 0.707106113, 0.241845652, -0.66446346, -1.2293458E-6, 0.939692676, 0.342019886, 0.707107484, -0.241843566, 0.664462805) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-0.873213649, -1.89646459, -0.100004375, 0.933012128, 0.353242815, -0.0686147735, -0.258823931, 0.791241407, 0.554028153, 0.249997303, -0.499155849, 0.829665601) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
          }, 0.8, false)
        end
        CFuncs.Sound.Create("200632136", HitboxR, 0.3, math.random(1, 1.2))
        MagnitudeDamage(HitboxR, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "260430117", 1)
        for i = 0, 1, 0.8 do
          swait()
          RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -4), 0.5)
          PlayAnimationFromTable({
            CFrame.new(0.299998224, -0.0468490347, -0.211314023, 0.642786682, -2.87348001E-7, -0.766045272, 0.323744863, 0.906307757, 0.271653205, 0.694272637, -0.42261824, 0.582562685) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(2.71201134E-6, 1.4999969, 8.94069672E-7, 0.642777503, 0.133020476, 0.754416466, 4.31999706E-6, 0.984809279, -0.173647597, -0.766052961, 0.111620098, 0.633012772) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(1.27057993, 0.327670783, -0.599993467, 0.638493001, 0.280156553, -0.716825664, -0.769049883, 0.196164608, -0.608343422, -0.0298155248, 0.939697862, 0.340704083) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.86040878, 1.02262986, -0.452570885, 0.386218816, 0.717701018, -0.579433978, -0.403004408, -0.433759809, -0.805879354, -0.829712272, 0.544763446, 0.121709965) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(0.779964924, -1.75316048, -0.0263362825, 0.826099217, -0.36394459, 0.43023771, 0.181541473, 0.894650102, 0.40822047, -0.533481896, -0.259124577, 0.805140793) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-0.724003315, -1.47219872, -0.266945302, 0.766038954, -0.166370958, 0.620890498, 4.09781933E-6, 0.965925932, 0.258819997, -0.642794192, -0.198263675, 0.739937425) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
          }, 0.8, false)
        end
        CFuncs.Sound.Create("200632136", HitboxL, 0.3, math.random(1, 1.2))
        MagnitudeDamage(HitboxL, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "260430117", 1)
      end
    end
    S:Stop()
    local S2 = CFuncs.Sound.Create("276152532", Torso, 1.5, 1)
    Instance.new("DistortionSoundEffect", S2).Level = 0.8
    for i = 0, 1, 0.13 do
      swait()
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -3), 0.5)
      PlayAnimationFromTable({
        CFrame.new(2.68220901E-6, -0.0739577487, 0.0232374109, 0.707105994, -3.47710994E-7, -0.707107604, -0.122787997, 0.98480767, -0.122788213, 0.696364999, 0.173648596, 0.696363389) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-5.36441803E-7, 1.49999356, -1.28149986E-6, 0.707105994, -0.122788511, 0.696365297, -3.47710994E-7, 0.984808028, 0.173649326, -0.707107604, -0.122788727, 0.696363688) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.13747835, 0.382733107, -0.729447305, 0.579597414, 0.772029877, -0.260839432, -0.351051509, -0.0523141921, -0.934893906, -0.735411942, 0.633429527, 0.240701318) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.53455412, 0.605712295, -0.542039633, 0.786121905, 0.427828372, -0.446066588, -0.606968522, 0.398195386, -0.687771559, -0.116626531, 0.811420619, 0.572708428) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.903839946, -1.70734286, 0.373858094, 0.863655448, -0.430708885, 0.261895239, 0.187955216, 0.757234871, 0.625514567, -0.46773085, -0.491004646, 0.734943748) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.596739769, -1.62411702, -0.0967329144, 0.725493789, -0.291957259, 0.623233199, -0.081900157, 0.86250174, 0.499382436, -0.683338165, -0.41334182, 0.601828396) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.2, false)
    end
    CFuncs.Sound.Create("471881954", HitboxR, 1, 1)
    MagnitudeDamage(HitboxR, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "610359590", 1)
    for i = 0, 1, 0.1 do
      swait()
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -5), 0.3)
      PlayAnimationFromTable({
        CFrame.new(-0.338160992, -0.0772590488, -0.484170675, 0.307024002, -0.153706044, 0.939207554, -0.403236002, 0.872901201, 0.274671286, -0.86205399, -0.463052958, 0.206021816) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.0502282679, 1.50051379, -0.0864891857, 0.502356887, -0.246090144, -0.828901231, -0.00520065427, 0.957766473, -0.287500501, 0.864644766, 0.148738697, 0.479860842) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.81698525, 1.20575511, -0.168038458, 0.0800605565, -0.859217465, 0.505307972, 0.457053572, -0.418860257, -0.784640014, 0.885828495, 0.293771386, 0.359173566) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.66351938, 0.691055655, 0.203685582, 0.309526145, 0.793331623, -0.524231553, -0.937197804, 0.347743452, -0.0271089375, 0.160791725, 0.499699503, 0.851144433) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.971616864, -1.6145575, 0.096719563, 0.544056833, -0.203144252, -0.814085484, 0.51142931, 0.849463344, 0.129818588, 0.665161908, -0.486975014, 0.566052973) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.676943898, -1.44413579, 0.206094518, 0.884253025, 0.0570309162, -0.463512957, 0.209485695, 0.838620007, 0.502824426, 0.417387724, -0.541723251, 0.729605079) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.6, false)
    end
    attack = false
  end
  function CastleCrusherFist()
    attack = true
    STDamage = true
    local S2 = CFuncs.Sound.Create("276152532", Torso, 1, 1)
    Instance.new("DistortionSoundEffect", S2).Level = 0.8
    for i = 0, 1, 0.1 do
      swait()
      Effects.Block.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 4, 4, 4, 0.3, 1)
      Effects.Break.Create(BrickColor.new("Really black"), HitboxR.CFrame, 0.5, 0.5, 0.5)
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -2), 0.2)
      PlayAnimationFromTable({
        CFrame.new(-5.99771738E-7, -0.00717129931, 0.169464022, 0.422617912, -2.2671E-7, -0.906308055, -0.309975952, 0.939692557, -0.144544229, 0.851650834, 0.342020661, 0.397130787) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.0102166235, 1.52751005, -0.239579424, 0.456926107, -0.171424359, 0.872835577, -0.167732254, 0.94705075, 0.273807496, -0.87355268, -0.271512181, 0.403976858) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.944673777, 0.474064022, -0.539126158, 0.229199454, 0.762564063, 0.604949772, 0.809601307, 0.195682317, -0.553402781, -0.540382624, 0.616607308, -0.572522938) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.61232829, 0.309644789, -0.24482432, 0.455398798, 0.536860108, -0.710207343, -0.887026072, 0.205374956, -0.413530886, -0.076149486, 0.818293095, 0.569735885) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.08113468, -1.48232126, 0.656104684, 0.81421864, -0.517612338, 0.262917578, 0.175395042, 0.651024699, 0.738514543, -0.553430021, -0.555197835, 0.620862961) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.427128136, -1.50760674, -0.0473105907, 0.804508269, -0.373179317, 0.462065101, -0.173640698, 0.596196175, 0.783836842, -0.567992628, -0.71083647, 0.414845526) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.2, false)
    end
    MagnitudeDamage(HitboxR, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "610359515", 1)
    Effects.Wave.Create(BrickColor.new(""), RootPart.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.5, 0.5, 0.5, 0.6, 0.6, 0.6, 0.06)
    CFuncs.Sound.Create("471881980", HitboxR, 1, 0.9)
    CFuncs.Sound.Create("471881954", HitboxR, 1, 0.8)
    for i = 0, 1, 0.08 do
      swait()
      Effects.Block.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 4, 4, 4, 0.3, 1)
      Effects.Break.Create(BrickColor.new("Really black"), HitboxR.CFrame, 0.5, 0.5, 0.5)
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -5), 0.3)
      PlayAnimationFromTable({
        CFrame.new(-3.57627869E-7, -0.116980031, -2.22140098, 0.342020035, -6.11579551E-8, 0.939692736, -0.604023039, 0.766044259, 0.219846413, -0.71984607, -0.642787933, 0.262002468) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.13248825E-6, 1.49999046, 8.94069672E-7, 0.422608167, -0.383014679, -0.82140249, -1.36196613E-5, 0.906310022, -0.422613323, 0.906312764, 0.17861104, 0.383008778) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.72490048, 1.25688744, -0.021425128, -0.678134382, -0.731868863, 0.0670941696, 0.667953849, -0.575675249, 0.47163111, -0.306547582, 0.364645123, 0.879239857) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.70565486, 0.469353855, 0.162862837, 0.82686162, 0.55728358, 0.0757693052, -0.414878726, 0.513436973, 0.751176, 0.379712611, -0.652546048, 0.655748963) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.757160306, -1.48393714, -0.193787217, 0.601814985, 0.305624545, -0.737842917, -2.98023224E-8, 0.923879623, 0.382683486, 0.798635662, -0.230304718, 0.556004763) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.908789515, -1.60188651, -0.0663503706, 0.696367741, 0.548584938, -0.462741733, -0.173660636, 0.7544052, 0.633021533, 0.696362019, -0.360454619, 0.620610356) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.6, false)
    end
    STDamage = false
    attack = false
  end
  function CastleCrusherFist()
    attack = true
    STDamage = true
    local S2 = CFuncs.Sound.Create("276152532", Torso, 1, 1)
    Instance.new("DistortionSoundEffect", S2).Level = 0.8
    for i = 0, 1, 0.1 do
      swait()
      Effects.Block.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 4, 4, 4, 0.3, 1)
      Effects.Break.Create(BrickColor.new("Really black"), HitboxR.CFrame, 0.5, 0.5, 0.5)
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -2), 0.5)
      PlayAnimationFromTable({
        CFrame.new(-5.99771738E-7, -0.00717129931, 0.169464022, 0.422617912, -2.2671E-7, -0.906308055, -0.309975952, 0.939692557, -0.144544229, 0.851650834, 0.342020661, 0.397130787) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.0102166235, 1.52751005, -0.239579424, 0.456926107, -0.171424359, 0.872835577, -0.167732254, 0.94705075, 0.273807496, -0.87355268, -0.271512181, 0.403976858) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.944673777, 0.474064022, -0.539126158, 0.229199454, 0.762564063, 0.604949772, 0.809601307, 0.195682317, -0.553402781, -0.540382624, 0.616607308, -0.572522938) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.61232829, 0.309644789, -0.24482432, 0.455398798, 0.536860108, -0.710207343, -0.887026072, 0.205374956, -0.413530886, -0.076149486, 0.818293095, 0.569735885) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.08113468, -1.48232126, 0.656104684, 0.81421864, -0.517612338, 0.262917578, 0.175395042, 0.651024699, 0.738514543, -0.553430021, -0.555197835, 0.620862961) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.427128136, -1.50760674, -0.0473105907, 0.804508269, -0.373179317, 0.462065101, -0.173640698, 0.596196175, 0.783836842, -0.567992628, -0.71083647, 0.414845526) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.2, false)
    end
    Effects.Wave.Create(BrickColor.new("Really black"), RootPart.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.5, 0.5, 0.5, 0.6, 0.6, 0.6, 0.06)
    Character.HumanoidRootPart.Velocity = Character.HumanoidRootPart.CFrame.lookVector * 140
    CFuncs.Sound.Create("471881980", HitboxR, 1, 0.9)
    CFuncs.Sound.Create("471881954", HitboxR, 1, 0.8)
    for i = 0, 1, 0.08 do
      swait()
      MagnitudeDamage(HitboxR, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "610359515", 1)
      Effects.Block.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 4, 4, 4, 0.3, 1)
      Effects.Break.Create(BrickColor.new("Really black"), HitboxR.CFrame, 0.5, 0.5, 0.5)
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -5), 1)
      PlayAnimationFromTable({
        CFrame.new(-3.57627869E-7, -0.116980031, -2.22140098, 0.342020035, -6.11579551E-8, 0.939692736, -0.604023039, 0.766044259, 0.219846413, -0.71984607, -0.642787933, 0.262002468) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.13248825E-6, 1.49999046, 8.94069672E-7, 0.422608167, -0.383014679, -0.82140249, -1.36196613E-5, 0.906310022, -0.422613323, 0.906312764, 0.17861104, 0.383008778) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.72490048, 1.25688744, -0.021425128, -0.678134382, -0.731868863, 0.0670941696, 0.667953849, -0.575675249, 0.47163111, -0.306547582, 0.364645123, 0.879239857) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.70565486, 0.469353855, 0.162862837, 0.82686162, 0.55728358, 0.0757693052, -0.414878726, 0.513436973, 0.751176, 0.379712611, -0.652546048, 0.655748963) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.757160306, -1.48393714, -0.193787217, 0.601814985, 0.305624545, -0.737842917, -2.98023224E-8, 0.923879623, 0.382683486, 0.798635662, -0.230304718, 0.556004763) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.908789515, -1.60188651, -0.0663503706, 0.696367741, 0.548584938, -0.462741733, -0.173660636, 0.7544052, 0.633021533, 0.696362019, -0.360454619, 0.620610356) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.6, false)
    end
    STDamage = false
    attack = false
  end
  function weld5(part0, part1, c0, c1)
    local weeld = Instance.new("Weld", part0)
    weeld.Part0 = part0
    weeld.Part1 = part1
    weeld.C0 = c0
    weeld.C1 = c1
    return weeld
  end
  local Grab = false
  function GRABEMBOIGRABEM()
    attack = true
    gp = nil
    con1 = HitboxR.Touched:connect(function(hit)
      local ht = hit.Parent
      local hum1 = ht:FindFirstChild("Humanoid")
      if Grab == false then
        if hum1 ~= nil and hit.Parent ~= Character then
          hum1.PlatformStand = true
          gp = ht
          Grab = true
          local asd = weld5(RightArm, ht:FindFirstChild("Torso"), CFrame.new(0, -1.5, 0), CFrame.new(0, 0, 0))
          asd.Parent = RightArm
          asd.Name = "asd"
          asd.C0 = asd.C0 * CFrame.Angles(math.rad(-90), 0, 0)
          CFuncs.Sound.Create("200632821", Torso, 1, 1)
        elseif hum1 == nil then
          con1:disconnect()
          wait()
          return
        end
      end
    end)
    for i = 0, 1, 0.2 do
      swait()
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -2), 0.3)
      PlayAnimationFromTable({
        CFrame.new(-1.08022243E-4, -0.233785003, -0.0873367637, 0.499999821, -1.78813863E-7, -0.866025507, 0.150383934, 0.984807789, 0.0868239477, 0.852868676, -0.173648283, 0.492403716) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.2665987E-7, 1.49999368, -1.02072954E-6, 0.573575675, 0.0713936985, 0.816035628, -5.01982868E-7, 0.996194899, -0.0871551931, -0.819152594, 0.049989678, 0.571393132) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.47017705, 0.884583473, 0.0280318335, 0.886720777, -0.205462068, 0.414139926, 0.236241817, -0.568640172, -0.787933052, 0.397386849, 0.796513736, -0.455686152) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.76647317, 0.409804255, -0.03838256, 0.444113791, 0.836516619, -0.320940912, -0.836516619, 0.258818626, -0.482962757, -0.320940822, 0.482962757, 0.814704895) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.838749349, -1.98392951, 0.15807499, 0.830397308, -0.277826965, 0.48296237, 0.167731524, 0.951251447, 0.258818328, -0.53132534, -0.133914024, 0.836516857) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.811016142, -1.63281643, -0.179561377, 0.642214835, 0.00870995224, 0.76647532, -0.0151349902, 0.999884725, 0.00131897628, -0.766375303, -0.0124476701, 0.642272472) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.3, false)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -6), 0.3)
      PlayAnimationFromTable({
        CFrame.new(0.159273595, -0.292363107, -0.115490548, 0.0844330043, -0.144068986, 0.985959053, -0.357129037, 0.919379771, 0.164923266, -0.930231094, -0.366039604, 0.0261747837) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(4.81307507E-6, 1.49999106, -3.65450978E-6, 0.171444774, -0.100317284, -0.980072975, -0.0616287738, 0.991762042, -0.11229457, 0.983264267, 0.0796530023, 0.163850009) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.73932612, 1.06159639, 0.141945362, -0.153680667, -0.913934886, 0.375639945, 0.659919798, -0.377877831, -0.649395287, 0.735450923, 0.148092732, 0.661196351) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.68730593, 0.429691374, -0.418232322, 0.633863091, 0.519853055, -0.57268703, -0.772902489, 0.453472316, -0.443829596, 0.028971523, 0.723958433, 0.689235032) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.51381135, -1.74729896, 0.0663300753, 0.422899842, 0.615153313, -0.665388703, -0.0435856879, 0.747240186, 0.66312325, 0.905127704, -0.251433372, 0.342819571) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.991570175, -1.5009346, -0.1830419, 0.415304065, 0.586875141, -0.695054054, -0.166150108, 0.800146103, 0.576333642, 0.894380629, -0.123870395, 0.429813296) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.3, false)
    end
    if Grab == true then
      for i = 1, 5 do
        for i = 0, 1, 0.35 do
          swait()
          RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 13, -6), 0.3)
          PlayAnimationFromTable({
            CFrame.new(-0.0701122433, -0.336599797, -0.467321932, 0.694850504, -0.140219957, -0.70535183, 0.704946458, 0.326802045, 0.629484713, 0.142244101, -0.934633017, 0.325926095) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-3.05473804E-6, 1.49998987, 8.94069672E-7, 0.707109332, 0.122785509, 0.696362555, 1.49011612E-6, 0.984807491, -0.173649877, -0.707104206, 0.122789055, 0.696367502) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(1.23286271, 0.549701929, -0.640782475, 0.740093768, 0.612683415, 0.277277708, 0.0735714883, 0.336068332, -0.938959956, -0.668469429, 0.715318501, 0.203645304) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.63418663, 0.202915072, -0.0286649466, 0.865367413, 0.490698665, 0.101754986, -0.445756227, 0.846484005, -0.291146517, -0.228999093, 0.206590697, 0.951251805) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(0.702593744, -1.71321297, 0.369734973, 0.965928972, -0.148447216, 0.212003857, 1.10641122E-6, 0.819153726, 0.573574424, -0.258809477, -0.554031372, 0.791244447) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-0.577289343, -1.34221494, -0.247686923, 0.766049445, -0.219846189, 0.604016602, 1.58697367E-6, 0.939692199, 0.342021465, -0.642781496, -0.262004316, 0.719851196) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
          }, 0.4, false)
        end
        for i = 0, 1, 0.3 do
          swait()
          RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -6), 0.3)
          PlayAnimationFromTable({
            CFrame.new(-0.170705646, -0.774955988, -0.472947001, 0.827218175, 0.130671635, 0.546475112, -0.561879098, 0.194839522, 0.803946257, -0.00142200035, -0.972091854, 0.234596446) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.76951289E-7, 1.49999058, 2.2649765E-6, 0.80180192, -0.161171481, -0.575445414, 0.176131338, 0.983905077, -0.0301590711, 0.571044207, -0.0771723837, 0.817283988) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(1.59014189, 0.537312388, -0.263691217, 0.798337102, -0.524361372, 0.296147287, 0.455999702, 0.205153137, -0.866011977, 0.393347621, 0.826412499, 0.402889967) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.41546631, 0.414666086, 0.337005794, 0.716736436, 0.581529975, 0.384852976, -0.56681174, 0.807305396, -0.164264664, -0.406218559, -0.100404784, 0.908243656) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(0.793360233, -1.59947133, 0.0620805621, 0.876221955, -0.148448378, -0.458477885, 0.368687749, 0.81915307, 0.439383447, 0.310339272, -0.55403173, 0.772486985) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-0.535338402, -1.81867206, 0.817932665, 0.829598367, 0.11430642, -0.546535134, 0.32139504, 0.702652454, 0.634810925, 0.456587166, -0.702291727, 0.546181798) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
          }, 0.7, false)
        end
        local hit, pos = rayCast(HitboxR.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
        if hit ~= nil then
          MagnitudeDamage(HitboxR, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "610359515", 1.3)
          Effects.Block.Create(BrickColor.new("Really black"), CFrame.new(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.09, 1)
          Effects.Wave.Create(BrickColor.new("Really black"), CFrame.new(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.09)
          Effects.Sphere.Create(BrickColor.new("Really black"), CFrame.new(pos), 3, 3, 3, 5, 5, 5, 0.09)
        end
      end
    end
    for i, v in pairs(RightArm:GetChildren()) do
      if v.Name == "asd" and v:IsA("Weld") then
        v:Remove()
      end
    end
    Grab = false
    con1:disconnect()
    attack = false
  end
  local IsWearingArmor = false
  function Armor(Mode)
    attack = true
    if IsWearingArmor == false and Mode == "On" then
      IsWearingArmor = true
      Disappear()
      swait(10)
      ReappearArmorOnly()
      Character.Humanoid.MaxHealth = 500
      Character.Humanoid.Health = 500
      HHandleWeld.Part0 = Character.Head
      THandleWeld.Part0 = Character.Torso
      AHandleRWeld.Part0 = Character["Right Arm"]
      AHandleLWeld.Part0 = Character["Left Arm"]
      LHandleRWeld.Part0 = Character["Right Leg"]
      LHandleLWeld.Part0 = Character["Left Leg"]
      for i, v in pairs(AdvancingFortress:GetChildren()) do
        if v:IsA("BasePart") then
          v.Transparency = 1
        end
      end
      for i, v in pairs(Character:GetChildren()) do
        if v:IsA("Accessory") then
          v.Handle.Transparency = 1
        end
      end
    elseif IsWearingArmor == true and Mode == "Off" then
      IsWearingArmor = false
      DisappearArmorOnly()
      for i, v in pairs(Character:GetChildren()) do
        if v:IsA("Accessory") then
          v.Handle.Transparency = 0
        end
      end
      swait(10)
      Reappear()
      Character.Humanoid.MaxHealth = 100000000000000000
      Character.Humanoid.Health = 100000000000000000
      HHandleWeld.Part0 = Head
      THandleWeld.Part0 = Torso
      AHandleRWeld.Part0 = RightArm
      AHandleLWeld.Part0 = LeftArm
      LHandleRWeld.Part0 = RightLeg
      LHandleLWeld.Part0 = LeftLeg
      for i, v in pairs(AdvancingFortress:GetChildren()) do
        if v:IsA("BasePart") then
          v.Transparency = 0
        end
      end
    end
    attack = false
  end
  local ShieldMode = false
  local ShieldCharge = false
  function HoloHexShield()
    attack = true
    Shield.Parent = m
    Shield.CanCollide = true
    if ShieldMode == true then
      while ShieldMode == true do
        swait()
        Effects.Elec.Create(Shield.CFrame, 6, 6, 6)
        RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.3, -4), 0.3)
        PlayAnimationFromTable({
          CFrame.new(-1.35600567E-6, -0.00759640103, -0.0868249983, 0.499999046, -1.78813579E-7, -0.866026044, 0.150384009, 0.984807789, 0.0868238211, 0.852869093, -0.173648283, 0.492402941) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(1.49011612E-7, 1.4999963, -2.08616257E-7, 0.499999046, 0.0754797831, 0.862731695, -1.78813579E-7, 0.996196151, -0.0871563852, -0.866026044, 0.0435779616, 0.498097092) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(1.50238657, 0.320674658, 0.252193451, 0.855209947, -0.376432747, -0.356249839, 0.469514668, 0.853786647, 0.224954769, 0.219480619, -0.35964793, 0.906907678) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.944740474, 0.689363539, -0.718644142, 0.836517215, -0.545084715, 0.0558781698, -0.258834839, -0.482974619, -0.836504936, 0.482953727, 0.685287297, -0.545103252) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.61525929, -1.85127568, 0.120779425, 0.928754449, -0.162676111, 0.333104134, 0.0394990072, 0.93689239, 0.347407103, -0.368597984, -0.309496939, 0.876555264) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.849455297, -1.60697818, -0.270956695, 0.696359396, -0.136922374, 0.704511464, -0.122786656, 0.944430828, 0.30491665, -0.707112312, -0.298836082, 0.640850842) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    end
    Shield.CanCollide = false
    CFuncs.Sound.Create("200632211", HitboxR, 1, 0.8)
    CFuncs.Sound.Create("200632875", HitboxR, 1, 0.9)
    Character.HumanoidRootPart.Velocity = Character.HumanoidRootPart.CFrame.lookVector * 160
    Effects.Wave.Create(BrickColor.new("Really black"), RootPart.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.5, 0.5, 0.5, 0.6, 0.6, 0.6, 0.06)
    for i = 0, 1, 0.05 do
      swait()
      MagnitudeDamage(Shield, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "610359515", 1.3)
      Effects.Elec.Create(Shield.CFrame, 6, 6, 6)
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.3, -3), 1)
      PlayAnimationFromTable({
        CFrame.new(8.64267349E-7, -0.183445007, -0.748600185, 0.499999046, -1.19209105E-7, -0.866026044, 0.496732056, 0.819152176, 0.28678751, 0.709407032, -0.573576331, 0.409575343) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-7.15255737E-7, 1.50001967, -6.2584877E-7, 0.499999046, 0.36600244, 0.784893453, -1.19209105E-7, 0.90631634, -0.42262283, -0.866026044, 0.211310923, 0.453157306) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.76569033, 0.610707581, 0.171269983, 0.658267856, -0.680293143, -0.322312057, 0.725086272, 0.457917482, 0.514355659, -0.202320263, -0.572288036, 0.794703186) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.07552779, 1.01543474, -0.975205183, 0.645357251, -0.653341353, -0.39580214, -0.64124006, -0.181770697, -0.745500326, 0.4151209, 0.734918237, -0.536255598) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.630614281, -1.76328135, 0.440194428, 0.866077662, -0.24334389, 0.436684549, -0.0614839792, 0.815044224, 0.57612747, -0.496114343, -0.525820255, 0.69092983) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.857700765, -1.25810766, -0.239681423, 0.499215126, -0.257185757, 0.827429712, -0.238765404, 0.877132356, 0.416689515, -0.832931936, -0.405579239, 0.376470625) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.5, false)
    end
    Shield.Parent = nil
    attack = false
  end
  Mouse.Button1Down:connect(function()
    if attack == false and attacktype == 1 then
      attacktype = 2
      attackone()
    elseif attack == false and attacktype == 2 then
      attacktype = 1
      attacktwo()
    end
  end)
  game.Lighting.Outlines = false
  function attackone()
    attack = true
    for i = 0, 1, 0.12 do
      swait()
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.3, -4), 0.3)
      PlayAnimationFromTable({
        CFrame.new(1.51857734E-4, -0.310488015, -0.087417841, 0.707106054, 5.26835073E-8, -0.707107484, 0.122787014, 0.984807968, 0.122786865, 0.696365058, -0.173646957, 0.696363688) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.101928703, 1.50244772, -0.0383823365, 0.76589334, 0.0762532279, 0.638430059, -0.0196644422, 0.995256186, -0.095281601, -0.642666996, 0.0604211651, 0.763759375) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.01774633, 0.557527065, -0.776187301, 0.541353703, 0.741649806, 0.396095604, 0.711713314, -0.153383806, -0.685520053, -0.447661191, 0.653015316, -0.610876858) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.07208586, 0.264054269, -0.716768324, 0.529938459, -0.260122895, -0.807156265, -0.752277017, 0.295165181, -0.589030504, 0.39146477, 0.919355154, -0.039265126) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.81415844, -1.89738977, 0.144144416, 0.866025925, -0.171008825, 0.469845951, -1.40815973E-6, 0.939692497, 0.342020512, -0.499999285, -0.296199232, 0.813797772) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.818738878, -1.59999573, -0.397991776, 0.642786622, 0.0667650178, 0.763130188, 4.3399632E-7, 0.99619472, -0.0871558338, -0.766045213, 0.0560229495, 0.640340626) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.3, false)
    end
    MagnitudeDamage(HitboxR, 1000000000, 1000000000, 1000000000, math.random(1, 3), "Normal", "260430079", 1)
    CFuncs.Sound.Create("200632136", HitboxR, 1, 1)
    RootPart.Velocity = RootPart.CFrame.lookVector * 40
    for i = 0, 1, 0.11 do
      swait()
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.3, -4), 0.3)
      PlayAnimationFromTable({
        CFrame.new(0.31380862, -0.320521832, 0.0252371654, 0.249517962, -0.150383011, 0.956622124, -0.0458769947, 0.984923244, 0.166798219, -0.967282891, -0.0855060965, 0.238856897) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.101926193, 1.50244832, -0.0383800864, 0.337979913, 0.0762555003, -0.938059092, -0.0828148723, 0.995255768, 0.051067099, 0.937502801, 0.0604255944, 0.342691481) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.96121001, 0.774859428, -0.462411612, 0.340120375, -0.92077136, 0.191045195, 0.466549307, -0.0111669078, -0.884424806, 0.816486418, 0.389942825, 0.42578721) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.36170578, 0.526111126, -0.597925961, 0.81348151, -0.212761745, -0.541276693, -0.539894938, 0.0697831511, -0.838834763, 0.216243982, 0.974609077, -0.0581016839) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.970680714, -1.68610644, -0.0975568295, 0.579166114, -0.127570763, -0.805166125, 0.110368893, 0.990856647, -0.0776019096, 0.807703912, -0.0439208932, 0.587950349) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.827146292, -1.8113209, -0.0556658059, 0.816036701, 0.217413262, -0.535551846, -0.0871567726, 0.962250471, 0.257832885, 0.571391284, -0.163724124, 0.804180741) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.45, false)
    end
    attack = false
  end
  function attacktwo()
    attack = true
    for i = 0, 1, 0.12 do
      swait()
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.3, -4), 0.3)
      PlayAnimationFromTable({
        CFrame.new(-0.0382043272, -0.447743475, -0.209081307, 0.653245032, -0.0733856931, 0.753581822, -0.271655023, 0.906307638, 0.323743671, -0.706735075, -0.416198224, 0.572105408) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-2.74181366E-6, 1.49999321, -3.4570694E-6, 0.707105815, -0.183012873, -0.683013678, -8.7171793E-7, 0.965925694, -0.258819759, 0.707107782, 0.183013588, 0.683011472) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.65075588, 0.743636727, -0.356577665, 0.542998552, -0.115416825, 0.831764221, 0.839699984, 0.0834951103, -0.536593378, -0.00751632452, 0.989801884, 0.142253295) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.08620656, -0.00580590963, -0.864283919, 0.656464815, -0.698875248, 0.283949524, 0.478162557, 0.0943745971, -0.873186052, 0.583450615, 0.708990037, 0.396129608) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.856426239, -1.40340364, -0.356423855, 0.707105279, -0.122788861, -0.696365654, 9.42498446E-7, 0.98480767, -0.173648372, 0.707108438, 0.122787014, 0.696362913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.695387185, -1.90375674, -0.304245114, 0.92541647, 0.246137589, -0.288133472, -0.173648298, 0.951251149, 0.254887551, 0.336824656, -0.185843274, 0.923044682) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.34, false)
    end
    MagnitudeDamage(HitboxL, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "260430079", 1.1)
    CFuncs.Sound.Create("200632136", HitboxL, 1, 1)
    RootPart.Velocity = RootPart.CFrame.lookVector * 40
    for i = 0, 1, 0.12 do
      swait()
      RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.3, -4), 0.3)
      PlayAnimationFromTable({
        CFrame.new(-0.479634404, -0.393727064, -0.220339894, 0.248309121, 0.219825819, -0.94340837, 0.019257009, 0.972597659, 0.231695861, 0.968489468, -0.0756994039, 0.237271711) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-4.01586294E-6, 1.4999907, -1.59628689E-6, 0.237956509, -0.0991817266, 0.966198623, 0.22414881, 0.973527908, 0.0447304621, -0.945057809, 0.205928385, 0.253888786) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.08192515, 0.657660127, -1.1749661, 0.228772208, 0.493058115, 0.839379132, 0.874719322, 0.27430138, -0.399530977, -0.427234828, 0.825622678, -0.368534833) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.23054802, 1.29996836, -0.754827142, 0.94838953, -0.316170156, 0.0243683457, -0.269034386, -0.84291333, -0.465958893, 0.167862713, 0.43535465, -0.88447094) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.839919031, -1.81287205, 0.0102108568, 0.808574855, -0.267538428, 0.524051666, 0.171010748, 0.95905602, 0.22575888, -0.562994003, -0.0929245204, 0.821220458) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.846072078, -1.7213496, -0.247524291, 0.693717241, 0.0689389557, 0.716940701, -0.0478171073, 0.997620881, -0.0496601462, -0.718658566, 1.68083934E-4, 0.695363283) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.45, false)
    end
    attack = false
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
          local dohit = true
          if dohit == true then
            torso = temp
            dist = (temp.Position - pos).magnitude
          end
        end
      end
    end
    return torso, dist
  end
  function TrueAim(aim)
    local target, distance = findNearestTorso(Mouse.Hit.p)
    local tehcf = HitboxR.CFrame * CFrame.fromEulerAnglesXYZ(1.57, 0, 0).lookVector
    if aim ~= nil then
      tehcf = aim
    end
    table.insert(Effects, {
      tehcf,
      "Shoot",
      30,
      HitboxR.Position,
      10,
      15,
      0,
      3,
      HitboxR,
      target
    })
  end
  function FireProjectiles()
    attack = true
    Humanoid.WalkSpeed = 20
    CFuncs.Sound.Create("300915902", HitboxR, 1, 0.8)
    for i = 0, 1, 0.1 do
      swait()
      Effects.Elec.Create(HitboxR.CFrame, 2, 2, 2)
      PlayAnimationFromTable({
        CFrame.new(0, -0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0, 1.49999201, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.874554753, 1.14087927, -1.06730831, -0.166365892, 0.198266983, 0.965925813, 0.797995508, -0.548363924, 0.250000268, 0.579245627, 0.812396049, -0.0669871047) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.257126778, 1.24225974, -0.962940335, 0.692363203, -0.593008757, -0.411064416, -0.708803177, -0.665577948, -0.233675212, -0.135024026, 0.453151852, -0.88114804) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.604643881, -1.9909004, 0.0280392915, 0.962250233, -0.0841861367, -0.258818984, 0.0871560201, 0.996194661, 4.23252061E-7, 0.257834047, -0.0225580372, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.604644895, -1.99090064, 0.0280393362, 0.962250233, 0.0841861367, 0.258818984, -0.0871560201, 0.996194661, 4.23252061E-7, -0.257834047, -0.0225580372, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.3, false)
    end
    for i = 0, 1, 0.1 do
      swait()
      Effects.Elec.Create(HitboxR.CFrame, 3, 3, 3)
      Effects.Block.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 1, 1, 1, 0.1)
      Effects.Sphere2.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 1, 1, 1, 0.1)
      PlayAnimationFromTable({
        CFrame.new(0, -0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0, 1.49999201, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.661153734, 0.568759024, -0.827975571, -0.166752055, 0.025078943, 0.985679924, 0.98324734, -0.0704026297, 0.168131784, 0.0736110285, 0.99720335, -0.012919019) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.390097797, 0.861622274, -0.554995477, 0.351840883, -0.837056041, -0.418981194, -0.935129642, -0.294365793, -0.197183579, 0.0417199843, 0.461178988, -0.886325777) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.604644954, -1.9909004, 0.0280390829, 0.962250233, -0.0841861367, -0.258818984, 0.0871560201, 0.996194661, 4.23252061E-7, 0.257834047, -0.0225580372, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.604644775, -1.99090064, 0.0280380547, 0.962250233, 0.0841861367, 0.258818984, -0.0871560201, 0.996194661, 4.23252061E-7, -0.257834047, -0.0225580372, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
      }, 0.2, false)
    end
    for i = 1, 10 do
      for i = 0, 1, 0.3 do
        swait()
        Effects.Elec.Create(HitboxR.CFrame, 3, 3, 3)
        Effects.Sphere2.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 1, 1, 1, 0.1)
        PlayAnimationFromTable({
          CFrame.new(0, -0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0, 1.49999201, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.661153734, 0.568759024, -0.827975571, -0.166752055, 0.025078943, 0.985679924, 0.98324734, -0.0704026297, 0.168131784, 0.0736110285, 0.99720335, -0.012919019) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.390097797, 0.861622274, -0.554995477, 0.351840883, -0.837056041, -0.418981194, -0.935129642, -0.294365793, -0.197183579, 0.0417199843, 0.461178988, -0.886325777) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.604644954, -1.9909004, 0.0280390829, 0.962250233, -0.0841861367, -0.258818984, 0.0871560201, 0.996194661, 4.23252061E-7, 0.257834047, -0.0225580372, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.604644775, -1.99090064, 0.0280380547, 0.962250233, 0.0841861367, 0.258818984, -0.0871560201, 0.996194661, 4.23252061E-7, -0.257834047, -0.0225580372, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
      CFuncs.Sound.Create("300916105", HitboxR, 1, 1.2)
      CFuncs.Sound.Create("300916014", HitboxR, 1, 1)
      Effects.Sphere2.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 2, 2, 2, 0.07)
      local MouseLook = CFrame.new((HitboxR.Position + Mouse.Hit.p) / 2, Mouse.Hit.p)
      TrueAim(MouseLook.lookVector)
      for i = 0, 1, 0.3 do
        swait()
        Effects.Elec.Create(HitboxR.CFrame, 3, 3, 3)
        Effects.Sphere2.Create(BrickColor.new("Really black"), HitboxR.CFrame, 1, 1, 1, 1, 1, 1, 0.1)
        PlayAnimationFromTable({
          CFrame.new(1.90734863E-6, -0.25291419, 0.238341585, 1, 0, 0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0, 1.49999189, -1.1920929E-6, 1, 0, 0, 0, 0.98480767, 0.173648626, 0, -0.173648626, 0.98480767) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.689965963, 0.767623663, -0.856841147, -0.544456005, 0.160545677, 0.823281765, 0.798456132, -0.201499581, 0.567332089, 0.256973624, 0.966241658, -0.0184810348) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.392649293, 0.920519292, -0.977094412, 0.403439909, -0.887421727, -0.222977459, -0.91384387, -0.378501445, -0.147058249, 0.0461054072, 0.263095737, -0.963667512) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.598512471, -1.89166105, 0.0173719227, 0.962250233, -0.061308533, -0.265171409, 0.0871564373, 0.992403805, 0.0868248865, 0.257834017, -0.106658652, 0.960284173) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.598512232, -1.89166129, 0.0173728764, 0.962250233, 0.061308533, 0.265171409, -0.0871564373, 0.992403805, 0.0868248865, -0.257834017, -0.106658652, 0.960284173) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    end
    Humanoid.WalkSpeed = 30
    attack = false
  end
  Mouse.KeyDown:connect(function(k)
    k = k:lower()
    if attack == false and ora == false and k == "z" and IsWearingArmor == false and Invisible == false then
      ora = true
      ORA()
    elseif attack == false and k == "x" and IsWearingArmor == false and Invisible == false then
      GRABEMBOIGRABEM()
    elseif attack == false and k == "q" and IsWearingArmor == false and Invisible == false then
      FireProjectiles()
    elseif attack == false and k == "f" and Invisible == false and IsWearingArmor == false then
      Invisible = true
      Effects.Sphere.Create(BrickColor.new("Really red"), Torso.CFrame, 1, 1, 1, 4, 4, 4, 0.1)
      Effects.Block.Create(BrickColor.new("Really red"), Torso.CFrame, 1, 1, 1, 4, 4, 4, 0.1, 1)
      Disappear()
    elseif attack == false and k == "f" and Invisible == true and IsWearingArmor == false then
      Invisible = false
      CFuncs.Sound.Create("463010917", Torso, 1, 1)
      Effects.Sphere.Create(BrickColor.new("Really red"), Torso.CFrame, 1, 1, 1, 4, 4, 4, 0.08)
      for i = 1, 2 do
        Effects.Block.Create(BrickColor.new("Really red"), Torso.CFrame, 1, 1, 1, 4, 4, 4, 0.1, 1)
      end
      for i = 1, 20 do
        Effects.Break.Create(BrickColor.new("Really red"), Torso.CFrame, 1, 1, 1)
      end
      Reappear()
    elseif attack == false and ShieldMode == false and k == "c" and IsWearingArmor == false and Invisible == false then
      ShieldMode = true
      HoloHexShield()
    elseif attack == false and k == "v" and IsWearingArmor == false and Invisible == false then
      CastleCrusherFist()
    end
    if k == "[" and IsWearingArmor == false and Invisible == false then
      Armor("On")
    end
    if k == "]" and IsWearingArmor == true and Invisible == false then
      Armor("Off")
    end
  end)
  Mouse.KeyUp:connect(function(k)
    k = k:lower()
    if attack == true and ora == true and k == "z" and IsWearingArmor == false then
      ora = false
    elseif attack == true and ShieldMode == true and k == "c" and IsWearingArmor == false then
      ShieldMode = false
    end
  end)
  coroutine.resume(coroutine.create(function(Part, Part2)
    while Part.Parent ~= nil do
      swait(math.random(100, 150))
      for i = 0, 1, 0.2 do
        wait()
        Eye1.Mesh.Scale = Vector3.new(1, 0.7 - 1 * i, 1)
        Eye2.Mesh.Scale = Vector3.new(1, 0.7 - 1 * i, 1)
      end
      for i = 0, 1, 0.2 do
        swait()
        Eye1.Mesh.Scale = Vector3.new(1, 0.7 + 0.3 * i, 1)
        Eye2.Mesh.Scale = Vector3.new(1, 0.7 + 0.3 * i, 1)
      end
    end
  end), Eye1, Eye2)
  while true do
    swait()
    for i, v in pairs(Character:children()) do
      if v:IsA("Part") and IsWearingArmor == true then
        v.Anchored = false
      end
    end
    for i, v in pairs(AdvancingFortress:GetChildren()) do
      if v:IsA("Part") then
        v.Material = "SmoothPlastic"
        v.CanCollide = false
      elseif v:IsA("Humanoid") then
        v:remove()
      elseif v:IsA("Accessory") then
        v:remove()
      elseif v:IsA("Shirt") then
        v:remove()
      elseif v:IsA("Pants") then
        v:remove()
      elseif v:IsA("Script") or v:IsA("LocalScript") then
        v:remove()
      elseif v:IsA("BodyColors") then
        v:remove()
      end
    end
    HHandle.Transparency = 1
    THandle.Transparency = 1
    AHandleR.Transparency = 1
    AHandleL.Transparency = 1
    LHandleR.Transparency = 1
    LHandleL.Transparency = 1
    RootPart.Transparency = 1
    HitboxR.Transparency = 1
    HitboxL.Transparency = 1
    Head.BrickColor = BrickColor.new("Really black")
    Torso.BrickColor = BrickColor.new("Really black")
    RightArm.BrickColor = BrickColor.new("Really black")
    LeftArm.BrickColor = BrickColor.new("Really black")
    RightLeg.BrickColor = BrickColor.new("Really black")
    LeftLeg.BrickColor = BrickColor.new("Really black")
    RootPart.Anchored = true
    Torsovelocity = (Character.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    velocity = Character.HumanoidRootPart.Velocity.y
    sine = sine + change
    Shield.Anchored = true
    Shield.CFrame = Shield.CFrame:lerp(RootPart.CFrame * CFrame.new(0, 0, -3.2), 1)
    local hit, pos = rayCast(Character.HumanoidRootPart.Position, CFrame.new(Character.HumanoidRootPart.Position, Character.HumanoidRootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if Character.HumanoidRootPart.Velocity.y > 1 and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(2, 1 + 0.5 * math.cos(sine / 20), 3), 0.5)
        PlayAnimationFromTable({
          CFrame.new(0, 0.00872418843, 0.0292903651, 1, 0, 0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0, 1.49999177, -1.49011612E-7, 1, 0, 0, 0, 0.98480767, 0.173648626, 0, -0.173648626, 0.98480767) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(1.64140427, 0.273908556, 0.192029893, 0.946035206, -0.31541416, 0.0743736848, 0.284469575, 0.91821146, 0.275617331, -0.155224368, -0.239586651, 0.958386064) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.59350562, 0.239538491, 0.192243189, 0.935008764, 0.347148597, -0.0724328309, -0.312019885, 0.902400434, 0.297181845, 0.168529674, -0.255267143, 0.952069581) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.602718651, -1.95556056, 0.410092652, 0.978475571, 0.0150757888, -0.205834776, 0.0853612274, 0.878464639, 0.470120817, 0.187906027, -0.477568805, 0.85826844) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.41903314, -1.41877925, -0.229210436, 0.962251842, -0.0299757104, 0.270510197, -0.084186092, 0.912393093, 0.400567293, -0.258819073, -0.408219665, 0.875425339) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    elseif Character.HumanoidRootPart.Velocity.y < -1 and hit == nil then
      Anim = "Fall"
      if attack == false then
        RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(2, 1 + 0.5 * math.cos(sine / 20), 3), 0.5)
        PlayAnimationFromTable({
          CFrame.new(0, -0.0366669223, -0.0478199311, 1, 0, 0, 0, 0.996194661, 0.087155968, 0, -0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0, 1.58110774, -0.115850762, 1, 0, 0, 0, 0.98480767, 0.173647821, 0, -0.173647821, 0.98480767) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(1.72150326, 0.610064566, 0.0891361833, 0.724097908, -0.685675204, 0.0743751749, 0.645872176, 0.711960018, 0.275611937, -0.241932437, -0.151533186, 0.958387375) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.69228244, 0.568353653, 0.082095027, 0.759895504, 0.646005511, -0.0724337399, -0.601845145, 0.741260946, 0.297183931, 0.24567467, -0.182231784, 0.952074111) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.60271728, -1.95556188, 0.410093039, 0.978470623, -0.00292155147, -0.206365243, 0.0853614658, 0.916095972, 0.391767859, 0.187905625, -0.400949359, 0.896622121) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.453899324, -1.81726217, -0.229221463, 0.962255239, -0.00628663599, 0.272094905, -0.0841865242, 0.943832874, 0.319526881, -0.258820891, -0.33037129, 0.90767473) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    elseif Torsovelocity < 1 and hit ~= nil then
      Anim = "Idle"
      if attack == false then
        change = 1
        RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(2, 1 + 0.5 * math.cos(sine / 20), 3), 0.5)
        PlayAnimationFromTable({
          CFrame.new(0, -0.00190299738, -0.0435779989, 1, 0, 0, 0, 0.996194661, 0.087155968, 0, -0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0, 1.49999213, 3.27825546E-7, 1, 0, 0, 0, 0.99619478, 0.0871553123, 0, -0.0871553123, 0.99619478) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(1.64141297, 0.173907071, -0.107973814, 0.946035922, -0.270955235, 0.177766502, 0.284470022, 0.957103431, -0.055051513, -0.155224428, 0.102649838, 0.982532144) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.59350157, 0.139536366, -0.107754946, 0.935009062, 0.284010828, -0.212358981, -0.312018842, 0.943447471, -0.11203292, 0.168530986, 0.171011835, 0.970748305) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.602711678, -1.89952374, -0.0967197716, 0.978471398, -0.0562333167, -0.198576227, 0.0853610933, 0.986278713, 0.141314447, 0.187904745, -0.155223012, 0.969844699) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.619029164, -1.90815639, -0.0860156417, 0.962250412, 0.0410595387, 0.269051194, -0.0841863081, 0.984977186, 0.150772721, -0.258818805, -0.167731494, 0.951251626) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
        }, 0.3, false)
      end
    elseif Torsovelocity > 2 and hit ~= nil then
      Anim = "Walk"
      if attack == false then
        RootPart.CFrame = RootPart.CFrame:lerp(Character.HumanoidRootPart.CFrame * CFrame.new(2, 1 + 0.5 * math.cos(sine / 20), 3), 0.5)
        PlayAnimationFromTable({
          CFrame.new(0, -0.0234659836, -0.171147972, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0, 1.49999166, 1.1920929E-7, 1, 0, 0, 0, 0.98480773, -0.173648983, 0, 0.173648953, 0.98480773) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(1.60905385, 0.122740321, 0.227665678, 0.946036339, -0.320693314, 0.0465966538, 0.284468234, 0.89069742, 0.354595304, -0.155219615, -0.322205007, 0.93385905) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-1.55878484, 0.127169654, 0.148623466, 0.93500936, 0.339513272, -0.102411598, -0.312018752, 0.924868107, 0.217401206, 0.168527737, -0.171317667, 0.970695019) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(0.585851789, -1.60362172, -0.143285036, 0.978476226, 0.0150748575, -0.205834031, 0.0853618756, 0.878461003, 0.470117748, 0.187905103, -0.477570593, 0.858265638) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
          CFrame.new(-0.563320339, -1.90456724, 0.225245774, 0.982039452, -0.00800410938, 0.188514173, -0.0707257539, 0.910641074, 0.407099873, -0.174927384, -0.413120717, 0.893718541) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
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
              local hit, pos = rayCast(Thing[4], Thing[1], move, m)
              if Thing[10] ~= nil then
                da = pos
                cf2 = CFrame.new(Thing[4], Thing[10].Position)
                cfa = CFrame.new(Thing[4], pos)
                tehCF = cfa:lerp(cf2, 0.2)
                Thing[1] = tehCF.lookVector
              end
              local mag = (Thing[4] - pos).magnitude
              Effects.Head.Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
              if Thing[8] == 2 then
                Effects.Ring.Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
              end
              Thing[4] = Thing[4] + Look * move
              Thing[3] = Thing[3] - 1
              if 2 < Thing[5] then
                Thing[5] = Thing[5] - 0.3
                Thing[6] = Thing[6] - 0.3
              end
              if hit ~= nil then
                Thing[3] = 0
                if Thing[8] == 1 or Thing[8] == 3 then
                  Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
                elseif Thing[8] == 2 then
                  Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
                  if hit.Parent:findFirstChild("Humanoid") ~= nil or hit.Parent.Parent:findFirstChild("Humanoid") ~= nil then
                    ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Purple"), "Reference", Vector3.new())
                    ref.Anchored = true
                    ref.CFrame = CFrame.new(pos)
                    CFuncs.Sound.Create("161006093", ref, 1, 1.2)
                    game:GetService("Debris"):AddItem(ref, 0.2)
                    Effects.Block.Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
                    Effects.Ring.Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
                    MagnitudeDamage(ref, 1000000000, Thing[5] / 1000000000, Thing[6] / 1000000000, 1000000000, "Normal", "", 1)
                  end
                end
                ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
                ref.Anchored = true
                ref.CFrame = CFrame.new(pos)
                Effects.Sphere.Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
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
                  Thing[1].Size = Thing[1].Size + Vector3.new(Thing[7], Thing[8], Thing[9])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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
local Camera = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local Create = LoadLibrary("RbxUtility").Create
local TimeStop = false
 
local m = Create("Model"){
    Parent = Character,
    Name = "WeaponModel",
}
 
Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil
 
local newMotor = function(part0, part1, c0, c1)
    local w = Create('Motor'){
        Parent = part0,
        Part0 = part0,
        Part1 = part1,
        C0 = c0,
        C1 = c1,
    }
    return w
end
 
function clerp(a, b, t)
    return a:lerp(b, t)
end
 
RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
 
local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0))
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
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
    if bool == true then
        if resetc1 == false then
            resetc1 = true
            RootJoint.C1 = RootJoint.C1
            Torso.Neck.C1 = Torso.Neck.C1
            RW.C1 = rarmc1
            LW.C1 = larmc1
            RH.C1 = rlegc1
            LH.C1 = llegc1
        end
    end
end
 
ArtificialHB = Create("BindableEvent", script){
    Parent = script,
    Name = "Heartbeat",
}
 
script:WaitForChild("Heartbeat")
 
frame = 1 / 35
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
            local Part = Create("Part"){
                Parent = Parent,
                Reflectance = Reflectance,
                Transparency = Transparency,
                CanCollide = false,
                Locked = true,
                BrickColor = BrickColor.new(tostring(BColor)),
                Name = Name,
                Size = Size,
                Material = Material,
            }
            RemoveOutlines(Part)
            return Part
        end;
    };
   
    Mesh = {
        Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
            local Msh = Create(Mesh){
                Parent = Part,
                Offset = OffSet,
                Scale = Scale,
            }
            if Mesh == "SpecialMesh" then
                Msh.MeshType = MeshType
                Msh.MeshId = MeshId
            end
            return Msh
        end;
    };
 
    Weld = {
        Create = function(Parent, Part0, Part1, C0, C1)
            local Weld = Create("Weld"){
                Parent = Parent,
                Part0 = Part0,
                Part1 = Part1,
                C0 = C0,
                C1 = C1,
            }
            return Weld
        end;
    };
 
    Sound = {
        Create = function(id, par, vol, pit)
            local Sound = Create("Sound"){
                Volume = vol,
                Pitch = pit or 1,
                SoundId = "rbxassetid://" .. id,
                Parent = par or workspace,
            }
            Sound:play()
            return Sound
        end;
    };
   
    Decal = {
        Create = function(Color, Texture, Transparency, Name, Parent)
            local Decal = Create("Decal"){
                Color3 = Color,
                Texture = "rbxassetid://" .. Texture,
                Transparency = Transparency,
                Name = Name,
                Parent = Parent,
            }
            return Decal
        end;
    };
   
    BillboardGui = {
        Create = function(Parent, Image, Position, Size)
            local BillPar = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "BillboardGuiPart", Vector3.new(1, 1, 1))
            BillPar.CFrame = CFrame.new(Position)
            local Bill = Create("BillboardGui"){
                Parent = BillPar,
                Adornee = BillPar,
                Size = UDim2.new(1, 0, 1, 0),
                SizeOffset = Vector2.new(Size, Size),
            }
            local d = Create("ImageLabel", Bill){
                Parent = Bill,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                Image = "rbxassetid://" .. Image,
            }
            return BillPar
        end
    };
   
    ParticleEmitter = {
        Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
            local Particle = Create("ParticleEmitter"){
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
                VelocitySpread = VelocitySpread,
            }
            return Particle
        end;
    };
   
    CreateTemplate = {
       
    };
}
 
function rayCast(Position, Direction, Range, Ignore)
    return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
 
function FindNearestTorso(Position, Distance, SinglePlayer)
    if SinglePlayer then
        return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
    end
    local List = {}
    for i, v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") then
            if v:findFirstChild("Torso") then
                if v ~= Character then
                    if (v.Torso.Position - Position).magnitude <= Distance then
                        table.insert(List, v)
                    end
                end
            end
        end
    end
    return List
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
        if hit.Parent:findFirstChild("DebounceHit") ~= nil then
            if hit.Parent.DebounceHit.Value == true then
                return
            end
        end
        local c = Create("ObjectValue"){
            Name = "creator",
            Value = game:service("Players").LocalPlayer,
            Parent = h,
        }
        game:GetService("Debris"):AddItem(c, .5)
        CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
        local Damage = math.random(minim, maxim)
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
        if TimeStop == false then
            h.Health = h.Health - Damage
            ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright yellow").Color)
        elseif TimeStop == true then
            repeat wait() until TimeStop == false
            h.Health = h.Health - (Damage / 2)
            ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright yellow").Color)
        end
        if Type == "Knockdown" then
            local hum = hit.Parent.Humanoid
            hum.PlatformStand = true
            coroutine.resume(coroutine.create(function(HHumanoid)
                swait(1)
                HHumanoid.PlatformStand = false
            end), hum)
            local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
            local bodvol = Create("BodyVelocity"){
                velocity = angle * knockback,
                P = 5000,
                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                Parent = hit,
            }
            local rl = Create("BodyAngularVelocity"){
                P = 3000,
                maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
                angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
                Parent = hit,
            }
            game:GetService("Debris"):AddItem(bodvol, .5)
            game:GetService("Debris"):AddItem(rl, .5)
        elseif Type == "Normal" then
            local vp = Create("BodyVelocity"){
                P = 500,
                maxForce = Vector3.new(math.huge, 0, math.huge),
                velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
            }
            if knockback > 0 then
                vp.Parent = hit.Parent.Torso
            end
            game:GetService("Debris"):AddItem(vp, .5)
        elseif Type == "Up" then
            local bodyVelocity = Create("BodyVelocity"){
                velocity = Vector3.new(0, 20, 0),
                P = 5000,
                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                Parent = hit,
            }
            game:GetService("Debris"):AddItem(bodyVelocity, .5)
        elseif Type == "DarkUp" then
            coroutine.resume(coroutine.create(function()
                for i = 0, 1, 0.1 do
                    swait()
                    Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
                end
            end))
            local bodyVelocity = Create("BodyVelocity"){
                velocity = Vector3.new(0, 20, 0),
                P = 5000,
                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                Parent = hit,
            }
            game:GetService("Debris"):AddItem(bodyVelocity, 1)
        elseif Type == "Snare" then
            local bp = Create("BodyPosition"){
                P = 2000,
                D = 100,
                maxForce = Vector3.new(math.huge, math.huge, math.huge),
                position = hit.Parent.Torso.Position,
                Parent = hit.Parent.Torso,
            }
            game:GetService("Debris"):AddItem(bp, 1)
        elseif Type == "Freeze" then
            local BodPos = Create("BodyPosition"){
                P = 50000,
                D = 1000,
                maxForce = Vector3.new(math.huge, math.huge, math.huge),
                position = hit.Parent.Torso.Position,
                Parent = hit.Parent.Torso,
            }
            local BodGy = Create("BodyGyro") {
                maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
                P = 20e+003,
                Parent = hit.Parent.Torso,
                cframe = hit.Parent.Torso.CFrame,
            }
            hit.Parent.Torso.Anchored = true
            coroutine.resume(coroutine.create(function(Part)
                swait(1.5)
                Part.Anchored = false
            end), hit.Parent.Torso)
            game:GetService("Debris"):AddItem(BodPos, 3)
            game:GetService("Debris"):AddItem(BodGy, 3)
        end
        local debounce = Create("BoolValue"){
            Name = "DebounceHit",
            Parent = hit.Parent,
            Value = true,
        }
        game:GetService("Debris"):AddItem(debounce, Delay)
        c = Create("ObjectValue"){
            Name = "creator",
            Value = Player,
            Parent = h,
        }
        game:GetService("Debris"):AddItem(c, .5)
    end
end
 
function ShowDamage(Pos, Text, Time, Color)
    local Rate = (1 / 30)
    local Pos = (Pos or Vector3.new(0, 0, 0))
    local Text = (Text or "")
    local Time = (Time or 2)
    local Color = (Color or Color3.new(1, 0, 1))
    local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
    EffectPart.Anchored = true
    local BillboardGui = Create("BillboardGui"){
        Size = UDim2.new(3, 0, 3, 0),
        Adornee = EffectPart,
        Parent = EffectPart,
    }
    local TextLabel = Create("TextLabel"){
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 1, 0),
        Text = Text,
        Font = "SciFi",
        TextColor3 = Color,
        TextScaled = true,
        Parent = BillboardGui,
    }
    game.Debris:AddItem(EffectPart, (Time))
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
 
function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
    for _, c in pairs(workspace:children()) do
        local hum = c:findFirstChild("Humanoid")
        if hum ~= nil then
            local head = c:findFirstChild("Torso")
            if head ~= nil then
                local targ = head.Position - Part.Position
                local mag = targ.magnitude
                if mag <= Magnitude and c.Name ~= Player.Name then
            for i = 1, 10 do
                Effects.Elect.Create(head.CFrame, 10, 10, 10)
            end
            CFuncs.Sound.Create("324867021", head, 1, 1)
            Effects.Sphere.Create(BrickColor.new("New Yeller"), head.CFrame, .5, .5, .5, .5, .5, .5, .05)
                    Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, HitSound, HitPitch)
                end
            end
        end
    end
end
Part6Weld = CFuncs.Weld.Create(m, HandleL, Part6, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.349294543, -0.151140213, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part6, "", "", Vector3.new(0, 0, 0), Vector3.new(0.48742649, 1, 1))
sref = CFuncs.Part.Create(Character, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
sref.Anchored = true
 
EffectModel = Create("Model"){
    Parent = Character,
    Name = "Effects",
}
 
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
        end;
    };
   
    Cylinder = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
            prt.Anchored = true
            prt.CFrame = cframe
            local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            game:GetService("Debris"):AddItem(prt, 2)
            table.insert(Effects, {
                prt,
                "Cylinder",
                delay,
                x3,
                y3,
                z3,
                msh
            })
        end;
    };
   
    Head = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.CFrame = cframe
            local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
        end;
    };
   
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
        end;
    };
   
    Elect = {
        Create = function(cff, x, y, z)
            local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("New Yeller"), "Part", Vector3.new(1, 1, 1))
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
        end;
 
    };
   
    Ring = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
        end;
    };
 
 
    Wave = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
        end;
    };
 
    Break = {
        Create = function(brickcolor, cframe, x1, y1, z1)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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
        end;
    };
   
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
        end;
    };
   
    FireWave = {
        Create = function(brickcolor, cframe, x1, y1, z1)
            local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.CFrame = cframe
            msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            local d = Create("Decal"){
                Parent = prt,
                Texture = "rbxassetid://26356434",
                Face = "Top",
            }
            local d = Create("Decal"){
                Parent = prt,
                Texture = "rbxassetid://26356434",
                Face = "Bottom",
            }
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "FireWave",
                1,
                30,
                math.random(400, 600) / 100,
                msh
            })
        end;
    };
   
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
                    do
                        do
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
            end
        end
    };
 
    EffectTemplate = {
 
    };
}
 
local DORARA = false
 
function ORA()
    attack = true
    for i = 0, 1, 0.2 do
        swait()
        PlayAnimationFromTable({
            CFrame.new(4.76837158e-007, -0.107780606, -0.0868092626, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(0, 1.4999913, 2.38418608e-007, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(1.50214899, 0.590444803, 0.195881441, 0.965925872, 3.76027884e-007, 0.258818895, 0.257834077, -0.0871552154, -0.962250412, 0.0225570519, 0.99619478, -0.0841855928) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-1.60470915, 0.600643516, 0.204860806, 0.937436998, -0.0449436344, -0.345242023, -0.345831364, -0.00582624972, -0.938278675, 0.0401581824, 0.998972595, -0.0210046768) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(0.636808395, -1.93472588, -0.370165229, 0.936116338, -0.0517791435, -0.347858071, 0.0266665779, 0.996705353, -0.0765988752, 0.350678325, 0.0624292716, 0.934412897) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            CFrame.new(-0.6665681, -1.92173398, -0.343467057, 0.962250233, 0.0613082647, 0.265171379, -0.0410595685, 0.99584806, -0.0812460929, -0.269051433, 0.0672912449, 0.960772276) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        }, .3, false)
    end
    local DORA = CFuncs.Sound.Create("616593932", Torso, 1, 1)
    Instance.new("DistortionSoundEffect", DORA).Level = .95
    DORA.Looped = true
    local Con1 = HitboxL.Touched:connect(function(hit) Damage(HitboxL, hit, 1, 5, 0, "Normal", RootPart, 0, "260430117", 1) end)
    local Con2 = HitboxR.Touched:connect(function(hit) Damage(HitboxR, hit, 1, 5, 0, "Normal", RootPart, 0, "260430117", 1) end)
    while DORARA == true do
        RootPart.Velocity = RootPart.CFrame.lookVector * 5
        for i = 0, 1, 0.7 do
            swait()
            Effects.Elect.Create(HitboxL.CFrame, 4, 4, 4)
            Effects.Sphere.Create(BrickColor.new("Really black"), HitboxL.CFrame, .5, .5, .5, 1.5, 1.5, 1.5, .15)
            PlayAnimationFromTable({
                CFrame.new(-0.0223142356, -0.107780628, -0.249816686, 0.906307876, 0.0733869597, -0.416197479, 0, 0.98480773, 0.173648462, 0.422617942, -0.157378972, 0.892539084) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-2.22850417e-007, 1.49999118, 1.16660271e-006, 0.906307936, 1.49011612e-008, 0.422617972, -7.27595761e-009, 1, 0, -0.422618032, 0, 0.906308055) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(1.5318948, 0.588474631, 0.207054406, 0.899958313, 0.340718478, 0.272003621, 0.314965397, -0.0767233223, -0.945997, -0.301449746, 0.9370296, -0.176362336) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-1.27977741, 0.723447502, -1.20010054, 0.726744413, 0.46058476, -0.509611845, -0.503104627, -0.148215696, -0.851421177, -0.46768418, 0.875153661, 0.124007396) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(0.636807501, -1.93472636, -0.370165735, 0.868198872, -0.0517790169, 0.493507534, 0.075819321, 0.996705353, -0.0288097262, -0.490389913, 0.0624299645, 0.869264364) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-0.666569352, -1.92173386, -0.343467534, 0.86083132, 0.0613082871, 0.505183935, -0.018632248, 0.995848, -0.0891051888, -0.508549333, 0.0672918186, 0.858399451) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            }, .9, false)
        end
        CFuncs.Sound.Create("138087186", HitboxL, 1, 1)
        Effects.Sphere.Create(BrickColor.new("Really black"), HitboxL.CFrame, .5, .5, .5, 2, 2, 2, .15)
        RootPart.Velocity = RootPart.CFrame.lookVector * 5
        for i = 0, 1, 0.7 do
            swait()
            Effects.Sphere.Create(BrickColor.new("Really black"), HitboxR.CFrame, .5, .5, .5, 1.5, 1.5, 1.5, .2)
            PlayAnimationFromTable({
                CFrame.new(0.0767437443, -0.107780531, -0.279432267, 0.866025388, -0.0868241936, 0.492404073, 0, 0.98480773, 0.173648342, -0.500000238, -0.150383845, 0.852868438) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-2.61076184e-006, 1.4999913, -6.19508683e-007, 0.866025209, 2.98023224e-007, -0.500000656, -2.56928615e-007, 1, 1.1920929e-007, 0.500000596, 2.98023224e-008, 0.866025209) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(1.40606534, 0.812639356, -1.14933658, 0.82139349, -0.422619373, 0.383021921, 0.349686205, -0.157378837, -0.923553765, 0.450591207, 0.892538428, 0.0185142085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-1.64197171, 0.599264741, 0.212680459, 0.807513177, -0.456930667, -0.373010725, -0.413006425, 0.0134942085, -0.9106282, 0.421127379, 0.889400065, -0.177818552) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(0.636808515, -1.93472552, -0.37016958, 0.814187765, -0.0517790765, -0.578288436, 0.00593282748, 0.996705353, -0.0808905214, 0.580571651, 0.0624291934, 0.811812401) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-0.666569233, -1.92173398, -0.343468547, 0.867917657, 0.0613080971, -0.492910266, -0.0864830092, 0.99584806, -0.0284160972, 0.489121556, 0.0672912076, 0.869616032) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            }, .9, false)
        end
        CFuncs.Sound.Create("138087186", HitboxR, 1, 1)
        Effects.Sphere.Create(BrickColor.new("Really black"), HitboxR.CFrame, .5, .5, .5, 2, 2, 2, .2)
        end
    Con1:disconnect()
    Con2:disconnect()
    DORA:Stop()
    attack = false
end
 
local stoppedParts = {}
 
 
function getAllParts()
    local rtn = {}
   
    local function recurse(object)
        for q,e in next, object:children() do
            if e:isA'BasePart' and e.Name ~= "HumanoidRootPart" then
                table.insert(rtn, e)
            end
            recurse(e)
        end
    end
 
    recurse(workspace)
    return rtn
end
 
function stopParts(distance)
    stoppedParts = {}
    for nada, part in next, getAllParts() do
        local dist = (Torso.Position-part.Position).magnitude
        if dist <= distance and part.Name ~='Base' and part.Name ~= 'Baseplate' and not part:isDescendantOf(Torso.Parent) and part.Anchored ~= true then
            table.insert(stoppedParts, part)
            if part.Name ~= "Torso" and part.Anchored ~= true then
                part.Anchored = true
            end
        end
    end
end
 
 
function freeParts()
    for q,e in next, stoppedParts do
        stoppedParts[q] = nil
        e.Anchored = false
    end
end
 
local effect = Instance.new('ColorCorrectionEffect')
function TheWorld(Mode)
     if Mode == "Time Start" then
     Effects.Sphere.Create(BrickColor.new("Really black"), HitboxL.CFrame, .5, .5, .5, 1.5, 1.5, 1.5, .15)
        for i = 1,50 do
            if effect.Saturation <= 0 then
                effect.Saturation = effect.Saturation + i/50
            end
            swait(1/30)
        end
        freeParts()
        effect.Saturation = 0
        effect.Contrast = 0
        effect.Parent = nil
        workspace.Gravity = 196.2
    end
    if Mode == "Quick Stop" then
     CFuncs.Sound.Create("616576400", workspace, 1, 1)
     swait(60)
    Effects.Sphere.Create(BrickColor.new("Institutional white"), RootPart.CFrame, 1, 1, 1, 50, 50, 50, .01)
        effect.Parent = game.Lighting
        for i = 1,50 do
            effect.Saturation = -(i/10)
            swait()
        end
        stopParts(5555)
    end
end
 
Mouse.Button1Down:connect(function()
    if attack == false and DORARA == false then
        DORARA = true
        ORA()
    end
end)
 
Mouse.Button1Up:connect(function()
    if attack == true and DORARA == true then
        DORARA = false
    end
end)
 
Mouse.KeyDown:connect(function(k)
    k = k:lower()
    if attack == false and k == 'g' and TimeStop == false then
        TimeStop = true
        TheWorld("Quick Stop")
    elseif attack == false and k == 'g' and TimeStop == true then
        TimeStop = false
        TheWorld("Time Start")
    end
end)
 
while true do
    swait()
    sref.CFrame = RightArm.CFrame * CFrame.new(0, -1.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)
    for i, v in pairs(Character:GetChildren()) do
        if v:IsA("Part") then
            v.Material = "SmoothPlastic"
        elseif v:IsA("Accessory") then
            v:WaitForChild("Handle").Material = "SmoothPlastic"
        end
    end
    Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    velocity = RootPart.Velocity.y
    sine = sine + change
    local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
    if RootPart.Velocity.y > 1 and hit == nil then
        Anim = "Jump"
        if attack == false then
            PlayAnimationFromTable({
                CFrame.new(0, 0.0486936681, -0.0429394133, 1, 0, -0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(0, 1.48698187, -0.0992434025, 1, 0, 0, 0, 0.98480767, 0.173648626, -0, -0.173648626, 0.98480767) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(1.66118193, 0.583681226, 0.430878729, 0.556951106, -0.772693694, -0.30454877, 0.830109596, 0.506009281, 0.234249175, -0.026898358, -0.383274168, 0.923242927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-1.65963519, 0.695907593, 0.339572817, 0.482961893, 0.810776234, 0.330741376, -0.866026103, 0.498096228, 0.0435779653, -0.129409045, -0.307477146, 0.94271481) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(0.499997795, -1.71809137, -0.102601528, 0.984807849, 3.55863392e-007, -0.173647791, 0.0593907312, 0.939692557, 0.336824298, 0.163175657, -0.342020214, 0.925416589) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-0.599241376, -1.29528463, -0.396836221, 0.992403984, 0.086823605, 0.0871558413, -0.118890785, 0.858931601, 0.498097867, -0.0316142589, -0.504676282, 0.862729669) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            }, .3, false)
        end
    elseif RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
            PlayAnimationFromTable({
                CFrame.new(-0, -0.0520263538, -0.0354017057, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(0, 1.51533091, -0.10684365, 1, 0, 0, 0, 0.965925872, 0.258819342, 0, -0.258819342, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(1.67554009, 0.885679007, 0.385592818, 0.374123871, -0.696466088, -0.61234498, 0.914592147, 0.386364758, 0.119345918, 0.153468132, -0.604696095, 0.781530797) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-1.67474985, 0.999329269, 0.296636045, 0.250219911, 0.753912985, 0.607457995, -0.927206695, 0.367205799, -0.0738086402, -0.278707415, -0.544770718, 0.79091537) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(0.504494727, -1.81757987, -0.0935191363, 0.984807849, -0.0449431092, -0.167730823, 0.059390761, 0.99484998, 0.0821366012, 0.163175508, -0.0908504426, 0.982405365) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-0.623603821, -1.49203336, -0.421764404, 0.992403865, 0.122534379, 0.0109562073, -0.118891656, 0.978150725, -0.17054674, -0.0316146575, 0.167948633, 0.985288799) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            }, .3, false)
        end
    elseif Torsovelocity < 1 and hit ~= nil then
        Anim = "Idle"
        if attack == false then
            change = 1
            PlayAnimationFromTable({
                CFrame.new(-0.0254490171, -0.100000001, -0.0245252885, 0.965925872, 0, 0.258818984, 0, 1, 0, -0.258818984, 0, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-5.58793545e-008, 1.49999201, 2.23517418e-007, 0.965925872, 0.02255762, -0.257834077, 0, 0.996194661, 0.087155968, 0.258818984, -0.0841862038, 0.962250173) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(1.18608475, 0.561332762, -0.668662548, 0.815707564, 0.397307515, 0.420437992, 0.567439079, -0.408345699, -0.71502924, -0.112402454, 0.821827531, -0.558538496) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-1.18486226, 0.664583206, -0.703545451, 0.801997423, -0.384815574, -0.456855893, -0.595755875, -0.459863067, -0.658483863, 0.0433037281, 0.800276875, -0.598065078) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(0.602607846, -1.89999723, -0.281901717, 0.938264608, -0.0318391919, -0.344450235, 0.0551190265, 0.996793628, 0.0580029301, 0.341499031, -0.0734078437, 0.937011182) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-0.68740654, -1.99010217, 0.313043743, 0.998308659, 0.0566585623, -0.0130319893, -0.0526040196, 0.975744903, 0.212496698, 0.0247556716, -0.211451754, 0.977074862) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
            }, .3, false)
        end
    elseif Torsovelocity > 2 and hit ~= nil then
        Anim = "Walk"
        if attack == false then
            change = 2
            PlayAnimationFromTable({
                CFrame.new(-0, -0.331043243, -0.246173918, 1, 0, 0, 0, 0.906307876, 0.422617942, 0, -0.422617942, 0.906307876) * CFrame.new(0, .1, 0) * CFrame.Angles(0, math.rad(-5 * math.cos(sine / 7)), 0),
                CFrame.new(0, 1.4999913, 6.55651093e-007, 1, 0, 0, 0, 0.965925813, -0.258818924, 0, 0.258818924, 0.965925813) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(5 * math.cos(sine / 7)), 0),
                CFrame.new(1.14562762, 0.526349247, -0.591056466, 0.825674891, 0.469375819, 0.312965363, 0.547643542, -0.533675969, -0.644419432, -0.135452792, 0.703474402, -0.697693527) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(-1.14244175, 0.534408689, -0.582344949, 0.825674295, -0.469376504, -0.312966168, -0.547644734, -0.533675849, -0.644418597, 0.13545242, 0.703474045, -0.697693944) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                CFrame.new(.5, -1.64 - 0.5 * math.cos(sine / 8) / 2, 0 + 2 *  math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(-70 *  math.sin(sine / 8)), math.rad(-3), math.rad(0)),
                CFrame.new(-.5, -1.64 + 0.5 * math.cos(sine / 8) / 2, 0 - 2 * math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(70 *  math.sin(sine / 8)), math.rad(3), math.rad(0)),
            }, .3, false)
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
                        local move = 5
                        local hit, pos = rayCast(Thing[4], Thing[1], move, Character)
                        if Thing[10] ~= nil then
                            da = pos
                            cf2 = CFrame.new(Thing[4], Thing[10].Position)
                            cfa = CFrame.new(Thing[4], pos)
                            tehCF = cfa:lerp(cf2, 0.2)
                            Thing[1] = tehCF.lookVector
                        end
                        local mag = (Thing[4] - pos).magnitude
                        Effects.Elect.Create(CFrame.new((Thing[4] + pos) / 2, pos), 4, 4, 4)
                        Effects.Sphere.Create(BrickColor.new("New Yeller"), CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 3, 3, 3, 5, 5, 5, 0.15)
                        Thing[4] = Thing[4] + Look * move
                        Thing[3] = Thing[3] - 1
                        if 2 < Thing[5] then
                            Thing[5] = Thing[5] - 0.3
                            Thing[6] = Thing[6] - 0.3
                        end
                        if hit ~= nil then
                            Thing[3] = 0
                            MagnitudeDamage(hit, 1000000000, 1000000000, 1000000000, 1000000000, "Normal", "161006093", 0.8)
                            ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
                            ref.Anchored = true
                            ref.CFrame = CFrame.new(pos)
                            Effects.Block.Create(BrickColor.new("New Yeller"), CFrame.new(pos), 1, 1, 1, 2, 2, 2, .05)
                            Effects.Sphere.Create(BrickColor.new("New Yeller"), CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.03)
                            game:GetService("Debris"):AddItem(ref, 1)
                        end
                        if Thing[3] <= 0 then
                            table.remove(Effects, e)
                        end
                    end
                    do
                        do
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
                                    else
                                        if Thing[2] == "Block2" then
                                            Thing[1].CFrame = Thing[1].CFrame
                                            Mesh = Thing[7]
                                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                        else
                                            if Thing[2] == "Fire" then
                                                Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
                                                Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                            else
                                                if Thing[2] == "Cylinder" then
                                                    Mesh = Thing[7]
                                                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                else
                                                    if Thing[2] == "Blood" then
                                                        Mesh = Thing[7]
                                                        Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
                                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                    else
                                                        if Thing[2] == "Elec" then
                                                            Thing[1].Size = Thing[1].Size + Vector3.new(Thing[7], Thing[8], Thing[9])
                                                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                        else
                                                            if Thing[2] == "Disappear" then
                                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
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
    end
end