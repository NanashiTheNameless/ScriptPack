 plr = game.Players.LocalPlayer
  repeat
    wait(0.4)
  until plr.Character
  chr = plr.Character
  human = chr:FindFirstChild("Humanoid")
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
  ragged = false
  batting = false
  Heartbeat = Instance.new("BindableEvent")
  Heartbeat.Name = "Heartbeat"
  Heartbeat.Parent = script
  Music = false
  Berserk = false
  Combo = 1
  frame = 0.03333333333333333
  tf = 0
Maedl = Instance.new("Model",chr)	
local ColorsArray = {ColorSequenceKeypoint.new(0, Color3.new(255/255,255/255,255/255)),
ColorSequenceKeypoint.new(0.16, Color3.new(0/0,0/0,0/0)),
ColorSequenceKeypoint.new(0.32, Color3.new(0/0,0/0,0/0)),
ColorSequenceKeypoint.new(0.48, Color3.new(0/0,0/0,0/0)),
ColorSequenceKeypoint.new(0.64, Color3.new(0/0,0/0,0/0)),
ColorSequenceKeypoint.new(0.80, Color3.new(0/0,0/0,0/0)),
ColorSequenceKeypoint.new(0.96, Color3.new(0/0,0/0,0/0)),
ColorSequenceKeypoint.new(1, Color3.new(0/0,0/0,0/0))}
local fire = Instance.new("ParticleEmitter", tors)
fire.Enabled = false
fire.Lifetime = NumberRange.new(1.5)
fire.RotSpeed = NumberRange.new(10)
fire.Rate = 250
fire.VelocitySpread = 360
fire.Speed = NumberRange.new(2,8)
fire.Rotation = NumberRange.new(151515)
fire.Name = "Fire"
fire.LightEmission = 0.78
fire.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
fire.Color = ColorSequence.new(ColorsArray)
fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 6), NumberSequenceKeypoint.new(1, 0)})
fire.ZOffset = 3		

function Lightningz(pos, pos2, radius, numParts, model, removalTime)
    radius = radius or 0.2
    numParts = numParts or 10
    model = model or game.Workspace
	local pos = pos
	local lastpos = lastpos
    local lv = CFrame.new(pos,pos2).lookVector
	removalTime = 0.001
    local dist = (pos-pos2).magnitude
	local trans = 0
	local color = BrickColor.new("Bright red")
    local dbp = dist/numParts
    local last = pos
    for i = 1,numParts do
        local p = Instance.new("Part")
        p.FormFactor = "Custom"
        p.Size = Vector3.new(1,1,1)
        p.CanCollide = false
		p.Transparency = trans
        p.Anchored = true
        p.BrickColor = color
		p.Material = "Neon"
        local x = math.random(-100,100)/100*dbp*4
        local y = math.random(-100,100)/100*dbp*4
        local p2 = CFrame.new(pos+lv*(i*dbp),pos2+lv)*CFrame.new(x,y,0)
        local dist2 = (p2.p-last).magnitude
        local mid = (p2.p+last)/2
        local m = Instance.new("BlockMesh",p)
        m.Scale = Vector3.new(radius,radius,dist2 + (radius/4))
        p.CFrame = CFrame.new(mid,p2.p)
        last = p2.p
		p.Parent = model
		game.Debris:AddItem(p, 0.05)
    end
	if model ~= game.Workspace then
		game.Debris:AddItem(model, 0)
	end
end

function Lightningz2(pos, pos2, radius, numParts, model, removalTime)
    radius = radius or 0.2
    numParts = numParts or 10
    model = model or game.Workspace
	local pos = pos
	local lastpos = lastpos
    local lv = CFrame.new(pos,pos2).lookVector
	removalTime = 0.001
    local dist = (pos-pos2).magnitude
	local trans = 0
	local color = BrickColor.new("Bright red")
    local dbp = dist/numParts
    local last = pos
    for i = 1,numParts do
        local p = Instance.new("Part")
        p.FormFactor = "Custom"
        p.Size = Vector3.new(1,1,1)
        p.CanCollide = false
		p.Transparency = trans
        p.Anchored = true
        p.BrickColor = color
		p.Material = "Neon"
        local x = math.random(-100,100)/100*dbp/2
        local y = math.random(-100,100)/100*dbp/2
        local p2 = CFrame.new(pos+lv*(i*dbp),pos2+lv)*CFrame.new(x,y,0)
        local dist2 = (p2.p-last).magnitude
        local mid = (p2.p+last)/2
        local m = Instance.new("BlockMesh",p)
        m.Scale = Vector3.new(radius,radius,dist2 + (radius/4))
        p.CFrame = CFrame.new(mid,p2.p)
        last = p2.p
		p.Parent = model
		game.Debris:AddItem(p, 0.05)
    end
	if model ~= game.Workspace then
		game.Debris:AddItem(model, 0)
	end
end

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
  local nscale = Instance.new("NumberValue")
  nscale.Value = 1
  nscale.Parent = nil
  RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  nscale.Changed:connect(function()
    RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  end)
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
  function makepart(color, name, reflec, trans, mater, parnt, cfram)
    local port = Instance.new("Part")
    port.BrickColor = BrickColor.new(color)
    port.Name = name
    port.Transparency = trans
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
  function makeweld(parent, p0, p1, c0, c1)
    local wel = Instance.new("Weld")
    wel.Part0 = p0
    wel.Part1 = p1
    wel.C0 = c0
    if c1 ~= nil then
      wel.C1 = c1
    end
    wel.Parent = parent
    return wel
  end
  local lauf1 = Instance.new("Sound")
  lauf1.SoundId = "rbxassetid://137473066"
  lauf1.Volume = 1.5
  lauf1.Pitch = 2
  lauf1.Parent = hrp
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
  function ragplayer(cactus)
      cactus.Humanoid.PlatformStand = true
      if cactus["Right Arm"]~=nil and cactus.Torso:FindFirstChild("Right Shoulder") then
        cactus.Torso:FindFirstChild("Right Shoulder"):Destroy()
        makegloo(cactus.Torso, RightShoulderC0, RightShoulderC1, cactus.Torso, cactus["Right Arm"], "Right Shoulder")
        maketouchy(cactus["Right Arm"], cactus["Right Arm"], CFrame.new(0, 0.5, 0))
      end
      if cactus["Left Arm"]~=nil and cactus.Torso:FindFirstChild("Left Shoulder") then
        cactus.Torso:FindFirstChild("Left Shoulder"):Destroy()
        makegloo(cactus.Torso, LeftShoulderC0, LeftShoulderC1, cactus.Torso, cactus["Left Arm"], "Left Shoulder")
        maketouchy(cactus["Left Arm"], cactus["Left Arm"], CFrame.new(0, 0.5, 0))
      end
      if cactus["Right Leg"]~=nil and cactus.Torso:FindFirstChild("Right Hip") then
        cactus.Torso:FindFirstChild("Right Hip"):Destroy()
        makegloo(cactus.Torso, RightHipC0, RightHipC1, cactus.Torso, cactus["Right Leg"], "Right Hip")
        maketouchy(cactus["Right Leg"], cactus["Right Leg"], CFrame.new(0, 0.5, 0))
      end
      if cactus["Left Leg"]~=nil and cactus.Torso:FindFirstChild("Left Hip") then
        cactus.Torso:FindFirstChild("Left Hip"):Destroy()
        makegloo(cactus.Torso, LeftHipC0, LeftHipC1, cactus.Torso, cactus["Left Leg"], "Left Hip")
        maketouchy(cactus["Left Leg"], cactus["Left Leg"], CFrame.new(0, 0.5, 0))
      end
end
  function test()
    if selected == false or activu == true then
      return
    end
    if ragged == false then
      ragged = true
      human.PlatformStand = true
      if rarm and tors:FindFirstChild("Right Shoulder") then
        tors:FindFirstChild("Right Shoulder"):Destroy()
        makegloo(tors, RightShoulderC0, RightShoulderC1, tors, rarm, "Right Shoulder")
        maketouchy(rarm, rarm, CFrame.new(0, 0.5, 0))
      end
      if larm and tors:FindFirstChild("Left Shoulder") then
        tors:FindFirstChild("Left Shoulder"):Destroy()
        makegloo(tors, LeftShoulderC0, LeftShoulderC1, tors, larm, "Left Shoulder")
        maketouchy(larm, larm, CFrame.new(0, 0.5, 0))
      end
      if rleg and tors:FindFirstChild("Right Hip") then
        tors:FindFirstChild("Right Hip"):Destroy()
        makegloo(tors, RightHipC0, RightHipC1, tors, rleg, "Right Hip")
        maketouchy(rleg, rleg, CFrame.new(0, 0.5, 0))
      end
      if lleg and tors:FindFirstChild("Left Hip") then
        tors:FindFirstChild("Left Hip"):Destroy()
        makegloo(tors, LeftHipC0, LeftHipC1, tors, lleg, "Left Hip")
        maketouchy(lleg, lleg, CFrame.new(0, 0.5, 0))
      end
	  local BP = Instance.new("BodyPosition",tors)BP.Position = Vector3.new(0,1000,0) BP.P = 50 BP.maxForce = Vector3.new(0,math.huge,0)
	  local BG = Instance.new("BodyGyro",tors)BG.CFrame = CFrame.new(tors.Position, mouse.hit.p)BG.P = 10 BG.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
    elseif ragged == true then
      ragged = false
      human.Jump = true
      if rarm and tors:FindFirstChild("Right Shoulder") then
        tors:FindFirstChild("Right Shoulder"):Destroy()
        makejoint(tors, RSC0, RSC1, tors, rarm, "Right Shoulder")
        rarm:FindFirstChild("touchy"):Destroy()
      end
      if larm and tors:FindFirstChild("Left Shoulder") then
        tors:FindFirstChild("Left Shoulder"):Destroy()
        makejoint(tors, LSC0, LSC1, tors, larm, "Left Shoulder")
        larm:FindFirstChild("touchy"):Destroy()
      end
      if rleg and tors:FindFirstChild("Right Hip") then
        tors:FindFirstChild("Right Hip"):Destroy()
        makejoint(tors, RHC0, RHC1, tors, rleg, "Right Hip")
        rleg:FindFirstChild("touchy"):Destroy()
      end
      if lleg and tors:FindFirstChild("Left Hip") then
        tors:FindFirstChild("Left Hip"):Destroy()
        makejoint(tors, LHC0, LHC1, tors, lleg, "Left Hip")
        lleg:FindFirstChild("touchy"):Destroy()
      end
	  if tors:findFirstChild("BodyPosition")~=nil then
	  tors.BodyPosition:remove()
	  end
	  if tors:findFirstChild("BodyGyro")~=nil then
	  tors.BodyGyro:remove()
	  end
      RS = tors:FindFirstChild("Right Shoulder")
      LS = tors:FindFirstChild("Left Shoulder")
      RH = tors:FindFirstChild("Right Hip")
      LH = tors:FindFirstChild("Left Hip")
      RJ = hrp:FindFirstChild("RootJoint")
      N = tors:FindFirstChild("Neck")
  end
end
  function makegloo(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Glue")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function makejoint(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Motor6D")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function maketouchy(parent, limb, cframe)
    local pr = Instance.new("Part")
    pr.Name = "touchy"
    pr.Size = Vector3.new(1 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    pr.Transparency = 1
    pr.CustomPhysicalProperties = PhysicalProperties.new(0.55, 0.3, 0.5)
    pr.CanCollide = true
    pr.Anchored = false
    pr.Parent = parent
    local w = Instance.new("Weld")
    w.Part0 = pr
    w.Part1 = limb
    w.C0 = cframe
    w.Parent = pr
  end
  local clibat, spec
  local dipperhat = chr:FindFirstChild("DXD_DipperHat")
  local dipperrot
  if dipperhat then
    dipperrot = dipperhat.Handle.HatAttachment.Rotation
  end

		function epic()
			if Music == false then
			  Music = true
              local sond = Instance.new("Sound",tors)
              sond.Volume = 10
              sond.Pitch = 1
              sond.EmitterSize = 25
			  sond.Name = "Music"
			  sond.Looped = true
              sond.SoundId = "rbxassetid://403606225"
              sond:Play()
			  fire.Enabled = true  
			else
			  tors:findFirstChild("Music"):remove()
			  Music = false
			  fire.Enabled = false
			end		
		  end
	
				function Bloodthirst()
			if Music == false and Berserk == false then
			  Music = true
			  Berserk = true
              local sond = Instance.new("Sound",tors)
              sond.Volume = 5
              sond.Pitch = 1
              sond.EmitterSize = 25
			  sond.Name = "Music"
			  sond.Looped = true
              sond.SoundId = "rbxassetid://241184313"
              sond:Play()
			  for i = 1,25 do 
			  for i2 = 1,i do
			  local ra = math.random(4,14)/10
			  local p23 = Instance.new("Part",Maedl)p23.Size = Vector3.new(ra,ra,ra)p23.Material = "Neon" p23.BrickColor = BrickColor.new("Maroon") p23.CanCollide = false
			  p23.CFrame = chr.HumanoidRootPart.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.random(-90,90),math.random(-90,90),math.random(-90,90))
			  p23.Anchored = true local B23 = Instance.new("BlockMesh",p23)
			  end
			wait()
			end
			for i,v in pairs (Maedl:children()) do	
			v.Anchored = false
			local BP = Instance.new("BodyPosition",v)BP.P = 100000 BP.maxForce = Vector3.new(math.huge,math.huge,math.huge)v:findFirstChild("BodyPosition").Position = tors.Position
			end
			wait(1)
			for i,v in pairs (Maedl:children()) do
			v:findFirstChild("BodyPosition").maxForce = Vector3.new(20000,20000,20000)
			v:findFirstChild("BodyPosition").Position = tors.Position+Vector3.new(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000))
			v:findFirstChild("Mesh").Scale = Vector3.new(12,12,12)game.Debris:AddItem(v,0.4)
			end
local Blood = Instance.new("ParticleEmitter", tors)
Blood.Enabled = false
Blood.Lifetime = NumberRange.new(0.4)
Blood.RotSpeed = NumberRange.new(0)
Blood.Acceleration = Vector3.new(0,-10,0)
Blood.Rate = 100
Blood.VelocitySpread = 360
Blood.Rotation = NumberRange.new(-360,360)
Blood.Name = "Blood"
Blood.LightEmission = 1
Blood.LockedToPart = true
Blood.Texture = "http://www.roblox.com/asset/?id=513989292"
Blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 7), NumberSequenceKeypoint.new(1, 0)})
Blood.ZOffset = 4 Blood.Enabled = true
			  Blood.Enabled = true  
			else
			  tors:findFirstChild("Music"):remove()
			  Music = false
			  Berserk = false
			  tors:findFirstChild("Blood").Enabled = false
			end		
			end
				
  function bat()
    if selected == false or activu == true then
      return
    end
    if batting == false then
      batting = true
      do
        local bmod = Instance.new("Model")
        bmod.Name = "bmodel"
        bmod.Parent = chr
        local hnd = makepart("Br. yellowish green", "hnd", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local hmes = makemesh("Head", Vector3.new(1, 9, 1), nil, hnd)
        local hwel = makeweld(hnd, hnd, rarm, ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0), nil)
        local pt1 = makepart("Bright yellow", "pt1", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p1m = makemesh("Head", Vector3.new(1.5, 1.5, 1.5), nil, pt1)
        local p1w = makeweld(pt1, pt1, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 1, 0), nil)
        local pt2 = makepart("Bright yellow", "pt2", 0, 1, "SmoothPlastic", bmod, rarm.CFrame)
        local p2m = makemesh("FileMesh", Vector3.new(0.375, 0.375, 0.375), "rbxassetid://250640098", pt2)
        p2m.TextureId = "rbxassetid://250639536"
        local p2w = makeweld(pt2, pt2, hnd, ang(rd(180), rd(180), rd(0)) * cf(0, 1.225, 0.075), nil)
        local pt3 = makepart("Bright yellow", "pt3", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p3m = makemesh("Head", Vector3.new(1.5, 1.5, 1.5), nil, pt3)
        local p3w = makeweld(pt3, pt3, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0), nil)
        local pt4 = makepart("Bright yellow", "pt4", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p4m = makemesh("FileMesh", Vector3.new(0.025, 0.025, 0.025), "rbxassetid://703458158", pt4)
        local p4w = makeweld(pt4, pt4, hnd, ang(rd(180), rd(0), rd(0)) * cf(0, -1.25, 0), nil)
        local pt5 = makepart("Bright yellow", "pt5", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p5m = makemesh("Cylinder", Vector3.new(21.5, 3.125, 3.125), nil, pt5)
        local p5w = makeweld(pt5, pt5, hnd, ang(rd(0), rd(0), rd(90)) * cf(0, -4.025, 0), nil)
        local pt6 = makepart("Bright yellow", "pt6", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p6m = makemesh("Head", Vector3.new(3.25, 3.25, 3.25), nil, pt6)
        local p6w = makeweld(pt6, pt6, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -6.05, 0), nil)
        local pt7 = makepart("Bright yellow", "pt7", 0, 1, "SmoothPlastic", bmod, rarm.CFrame)
        local p7m = makemesh("FileMesh", Vector3.new(0.95, 0.95, 0.95), "rbxassetid://272942659", pt7)
        p7m.TextureId = "rbxassetid://272942750"
        local p7w = makeweld(pt7, pt7, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -6.2, 0), nil)
		local pt8 = Instance.new("Part",chr)pt8.Transparency =1 pt8.CanCollide = false pt8.Anchored = false pt8.Size = Vector3.new(6,1,1)
		local w23 = Instance.new("Weld",pt8)w23.Part0 = pt8 w23.Part1 = pt5
        local swingwoo = Instance.new("Sound")
        swingwoo.SoundId = "rbxassetid://10209640"
        swingwoo.Pitch = rd2(10, 11) / 10
        swingwoo.Name = "sweae"
        swingwoo.Volume = 1
        swingwoo.Parent = hrp
        clibat = tool.Activated:connect(function()
          if selected == false or activu == true or ragged == true then
            return
          end
          activu = true
if Combo == 1 then
          for _ = 1, 2 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-20), rd(10), rd(-40)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(-20), rd(179)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          swingwoo:Play()
          for X = 1, 4 do
            swait()
              hito(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * 25, Vector3.new(0, rd2(-5, 5), rd2(-40, 40)),25)
            lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(-10), rd(30)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
end
Combo = 2
elseif Combo == 2 then
          for _ = 1, 2 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(15), rd(25), rd(60)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(35), rd(-35), rd(179)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-35), rd(35), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-35), rd(-110)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          swingwoo:Play()
          for X = 1, 4 do
            swait()
              hito(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * 25, Vector3.new(0, rd2(-5, 5), rd2(-40, 40)), 25)
            lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(78), rd(-15), rd(-45)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(15), rd(15), rd(35)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-120), rd(15), rd(25)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-35), rd(80)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
end		
Combo = 3
elseif Combo == 3 then
          for _ = 1, 2 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(0), rd(25), rd(0)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-56), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-25), rd(199)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-35), rd(35), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-35), rd(-110)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          swingwoo:Play()
          for X = 1, 4 do
            swait()
              hito(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * 25, Vector3.new(0, rd2(-5, 5), rd2(-40, 40)), 25)
            lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(0), rd(-15), rd(0)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(15), rd(15), rd(35)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-120), rd(15), rd(25)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-35), rd(80)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
end		
Combo = 4
else			Combo = 1
          for _ = 1, 2 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(20), rd(10), rd(-40)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(129)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(40), rd(40), rd(20)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          swingwoo:Play()
          for X = 1, 4 do
            swait()
              hito(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * 25, Vector3.new(0, rd2(-5, 5), rd2(-40, 40)), 1)
            lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(10), rd(-30)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
			end			
          end
          activu = false
        end)
        spec = mouse.KeyDown:connect(function(keya)
          if selected == false or activu == true or ragged == true then
            return
          end

          if keya == "e" then
            activu = true
            local speed = human.WalkSpeed
            human.WalkSpeed = 0
            human:SetStateEnabled(3, false)
            local function expa()
				if Berserk == false then
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(6, 27, 6), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(7.5, 7.5, 7.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 3, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(1.125, 1.125, 1.125), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 3.6750000000000003, 0.22499999999999998), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(7.5, 7.5, 7.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -3, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.07500000000000001, 0.07500000000000001, 0.07500000000000001), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -3.75, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(64.5, 18.75, 18.75), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -12.075000000000001, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(19.5, 19.5, 19.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -18.15, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(2.8499999999999996, 2.8499999999999996, 2.8499999999999996), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -18.6, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(4, 18, 4), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(5, 5, 5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 2, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(0.75, 0.75, 0.75), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 2.45, 0.15), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(5, 5, 5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -2, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.05, 0.05, 0.05), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -2.5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(43, 12.5, 12.5), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -8.05, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(13, 13, 13), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -12.1, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(1.9, 1.9, 1.9), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -12.4, 0), 0.7)
              end
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(12, 54, 12), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(15, 15, 15), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 6, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(2.25, 2.25, 2.25), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 7.3500000000000005, 0.44999999999999996), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(15, 15, 15), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -6, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.15000000000000002, 0.15000000000000002, 0.15000000000000002), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -7.5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(129, 37.5, 37.5), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -24.150000000000002, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(39, 39, 39), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -36.3, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(5.699999999999999, 5.699999999999999, 5.699999999999999), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -37.2, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(8, 36, 8), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(10, 10, 10), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 4, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(1.5, 1.5, 1.5), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 4.9, 0.3), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(10, 10, 10), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -4, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.1, 0.1, 0.1), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(86, 25, 25), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -16.1, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(26, 26, 26), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -24.2, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(3.8, 3.8, 3.8), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -24.8, 0), 0.7)
              end
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(18, 81, 18), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(22.5, 22.5, 22.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 9, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(3.375, 3.375, 3.375), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 11.025, 0.6749999999999999), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(22.5, 22.5, 22.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -9, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.225, 0.225, 0.225), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -11.25, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(193.5, 56.25, 56.25), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -36.225, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(58.5, 58.5, 58.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -54.449999999999996, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(5.699999999999999, 8.549999999999999, 8.549999999999999), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -55.800000000000004, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(14*2.5, 63*2.5, 14*2.5), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(17.5*2.5, 17.5*2.5, 17.5*2.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 7*2.5, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(2.625*2.5, 2.625*2.5, 2.625*2.5), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 8.575000000000001*2.5, 0.525*2.5), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(17.5*2.5, 17.5*2.5, 17.5*2.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -7*2.5, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.17500000000000002*2.5, 0.17500000000000002*2.5, 0.17500000000000002*2.5), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -8.75*2.5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(150.5*2.5, 43.75*2.5, 43.75*2.5), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -28.175000000000004*2.5, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(45.5*2.5, 45.5*2.5, 45.5*2.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -42.35*2.5, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(6.6499999999999995*2.5, 6.6499999999999995*2.5, 6.6499999999999995*2.5), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -43.4*2.5, 0), 0.7)
              end
				            end
				end
            for _ = 1, 9 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.5)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.5)
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(0), rd(-10)), 0.5)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LS, "C0", LSC0 * cf(0, 0.2, -0.2) * ang(rd(70), rd(-60), rd(-100)), 0.5)
              if dipperhat then
                dipperhat.Handle.HatAttachment.Rotation = dipperhat.Handle.HatAttachment.Rotation:lerp(dipperrot + Vector3.new(0, 0, 0), 0.3)
              end
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.5)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.5)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
            end
            for _ = 1, 9 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.5)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.5)
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(0), rd(-10)), 0.5)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(35), rd(-50), rd(-100)), 0.3)
              if dipperhat then
                dipperhat.Handle.HatAttachment.Rotation = dipperhat.Handle.HatAttachment.Rotation:lerp(dipperrot + Vector3.new(15, 0, 0), 0.3)
              end
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.5)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.5)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
            end
            for _ = 1, 30 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(1.1, 0.6, 0) * ang(rd(0), rd(0), rd(-120)), 0.2)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.2)
              lerpz(RS, "C0", RSC0 * cf(0, -0.4, 0.2) * ang(rd(85), rd(0), rd(85)), 0.2)
              lerpz(RS, "C1", RSC1 * cf(0, -0.4, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.2)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.2)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.2)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
            end
            expa()
            for O = 1, 10 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0.3, 0) * ang(rd(0), rd(0), rd(60)), 0.001 + O * 0.01)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.001 + O * 0.01)
              lerpz(RS, "C0", RSC0 * cf(0, -0.4, 0.2) * ang(rd(85), rd(0), rd(85)), 0.001 + O * 0.01)
              lerpz(RS, "C1", RSC1 * cf(0, -0.4, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.001 + O * 0.01)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.001 + O * 0.01)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.001 + O * 0.01)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
            end
            local whoooo = Instance.new("Sound")
            whoooo.Volume = 3
            whoooo.TimePosition = 0.15
            whoooo.Pitch = 0.5
            whoooo.SoundId = "rbxassetid://320557353"
            whoooo.Parent = pt5
            whoooo:Play()
            game.Debris:AddItem(whoooo, 2)
			if Berserk == true then
            for O = 1, 75 do
              swait()
              local O2 = O*0.015
              hito3(pt5, 25, 40, 0.75, hrp.CFrame.rightVector * -450 + Vector3.new(0, 200, 0), Vector3.new(0, rd2(-25, 25), rd2(-160, 160)), 25)
              lerpz(RJ, "C0", RJC0 * cf(0.9, -0.7, 0) * ang(rd(0), rd(0), rd(60*O*(O2/2))), 0.1 + O * 0.02)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.1 + O * 0.02)
              lerpz(RS, "C0", RSC0 * cf(0, -0.4, 0.2) * ang(rd(85), rd(0), rd(35)), 0.1 + O * 0.02)
              lerpz(RS, "C1", RSC1 * cf(0, -0.4, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.02)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.1 + O * 0.02)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.02)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.1 + O * 0.02)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.02)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.1 + O * 0.02)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.02)
                hmes.Scale = hmes.Scale:lerp(Vector3.new(14*O2, 63*O2, 14*O2), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(17.5*O2, 17.5*O2, 17.5*O2), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 7*O2, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(2.625*O2, 2.625*O2, 2.625*O2), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 8.575000000000001*O2, 0.525*O2), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(17.5*O2, 17.5*O2, 17.5*O2), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -7*O2, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.17500000000000002*O2, 0.17500000000000002*O2, 0.17500000000000002*O2), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -8.75*O2, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(150.5*O2, 43.75*O2, 43.75*O2), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -28.175000000000004*O2, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(45.5*O2, 45.5*O2, 45.5*O2), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -42.35*O2, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(6.6499999999999995*O2, 6.6499999999999995*O2, 6.6499999999999995*O2), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -43.4*O2, 0), 0.7)
			  wait()
            end
			else
            for O = 1, 6 do
              swait()
              hito(pt5, 25, 40, 0.75, hrp.CFrame.rightVector * -450 + Vector3.new(0, 200, 0), Vector3.new(0, rd2(-25, 25), rd2(-160, 160)), 25)
              lerpz(RJ, "C0", RJC0 * cf(0.9, -0.7, 0) * ang(rd(0), rd(0), rd(120)), 0.1 + O * 0.05)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.1 + O * 0.05)
              lerpz(RS, "C0", RSC0 * cf(0, -0.4, 0.2) * ang(rd(85), rd(0), rd(35)), 0.1 + O * 0.05)
              lerpz(RS, "C1", RSC1 * cf(0, -0.4, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.1 + O * 0.05)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.1 + O * 0.05)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.1 + O * 0.05)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
            end
			end
            for O = 1, 13 do
              swait()
              hmes.Scale = hmes.Scale:lerp(Vector3.new(2, 9, 2), 0.05 + O * 0.075)
              p1m.Scale = p1m.Scale:lerp(Vector3.new(2.5, 2.5, 2.5), 0.05 + O * 0.075)
              p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 1, 0), 0.05 + O * 0.075)
              p2m.Scale = p2m.Scale:lerp(Vector3.new(0.375, 0.375, 0.375), 0.05 + O * 0.075)
              p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 1.225, 0.075), 0.05 + O * 0.075)
              p3m.Scale = p3m.Scale:lerp(Vector3.new(2.5, 2.5, 2.5), 0.05 + O * 0.075)
              p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0), 0.05 + O * 0.075)
              p4m.Scale = p4m.Scale:lerp(Vector3.new(0.025, 0.025, 0.025), 0.05 + O * 0.075)
              p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -1.25, 0), 0.05 + O * 0.075)
              p5m.Scale = p5m.Scale:lerp(Vector3.new(21.5, 6.25, 6.25), 0.05 + O * 0.075)
              p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -4.025, 0), 0.05 + O * 0.075)
              p6m.Scale = p6m.Scale:lerp(Vector3.new(6.5, 6.5, 6.5), 0.05 + O * 0.075)
              p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -6.05, 0), 0.05 + O * 0.075)
              p7m.Scale = p7m.Scale:lerp(Vector3.new(0.95, 0.95, 0.95), 0.05 + O * 0.075)
              p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -6.2, 0), 0.05 + O * 0.075)
              lerpz(RJ, "C0", RJC0 * cf(1.1, -0.8, 0) * ang(rd(0), rd(0), rd(150)), 0.05 + O * 0.075)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.05 + O * 0.075)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(30), rd(10)), 0.05 + O * 0.075)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(20), rd(20), rd(-20)), 0.05 + O * 0.075)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.05 + O * 0.075)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.05 + O * 0.075)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
            end
            if dipperhat then
              dipperhat.Handle.HatAttachment.Rotation = dipperrot
            end
            human.WalkSpeed = speed
            human:SetStateEnabled(3, true)
            activu = false
          end
          if keya == "q" then
            activu = true
            do
              local checkkey = true
              local keyingup = mouse.KeyUp:connect(function(xzx)
                if xzx == "q" then
                  checkkey = false
                end
              end)
              repeat
			  if Berserk == true then
             for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(8, 36, 8), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(10, 10, 10), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 4, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(1.5, 1.5, 1.5), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 4.9, 0.3), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(10, 10, 10), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -4, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.1, 0.1, 0.1), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(86, 25, 25), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -16.1, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(26, 26, 26), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -24.2, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(3.8, 3.8, 3.8), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -24.8, 0), 0.7)
              end	
          for _ = 1, 6 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-20), rd(10), rd(-40)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(-20), rd(179)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          swingwoo:Play()
          for X = 1, 6 do
            swait()
            hito3(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * 25, Vector3.new(0, rd2(-5, 5), rd2(-40, 40)))
            lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(0), rd(10)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
			wait()
end		
            for O = 1, 13 do
              swait()
              hmes.Scale = hmes.Scale:lerp(Vector3.new(2, 9, 2), 0.05 + O * 0.075)
              p1m.Scale = p1m.Scale:lerp(Vector3.new(2.5, 2.5, 2.5), 0.05 + O * 0.075)
              p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 1, 0), 0.05 + O * 0.075)
              p2m.Scale = p2m.Scale:lerp(Vector3.new(0.375, 0.375, 0.375), 0.05 + O * 0.075)
              p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 1.225, 0.075), 0.05 + O * 0.075)
              p3m.Scale = p3m.Scale:lerp(Vector3.new(2.5, 2.5, 2.5), 0.05 + O * 0.075)
              p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0), 0.05 + O * 0.075)
              p4m.Scale = p4m.Scale:lerp(Vector3.new(0.025, 0.025, 0.025), 0.05 + O * 0.075)
              p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -1.25, 0), 0.05 + O * 0.075)
              p5m.Scale = p5m.Scale:lerp(Vector3.new(21.5, 6.25, 6.25), 0.05 + O * 0.075)
              p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -4.025, 0), 0.05 + O * 0.075)
              p6m.Scale = p6m.Scale:lerp(Vector3.new(6.5, 6.5, 6.5), 0.05 + O * 0.075)
              p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -6.05, 0), 0.05 + O * 0.075)
              p7m.Scale = p7m.Scale:lerp(Vector3.new(0.95, 0.95, 0.95), 0.05 + O * 0.075)
              p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -6.2, 0), 0.05 + O * 0.075)
            end	
			else
                for _ = 1, 2 do
                  swait()
                  lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-20), rd(10), rd(-40)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(-20), rd(179)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                swingwoo:Play()
                for T = 1, 2 do
                  swait()
                  hito(pt5, 5, 4, 0.03, hrp.CFrame.lookVector * 10, Vector3.new(0, rd2(-2, 2), rd2(-10, 10)), 25)
                  lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(-10), rd(30)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                for _ = 1, 2 do
                  swait()
                  lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-30), rd(20), rd(0)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0.5, 0) * ang(rd(60), rd(20), rd(179)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-40), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-30), rd(20), rd(35)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                swingwoo:Play()
                for T = 1, 2 do
                  swait()
                  if T == 2 then
                    hito(pt5, 5, 4, 0.03, hrp.CFrame.lookVector * 10, Vector3.new(0, rd2(-2, 2), rd2(-10, 10)),25)
                  end
                  lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(40), rd(40), rd(0)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0.5, 0) * ang(rd(60), rd(20), rd(30)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-30), rd(20), rd(-65)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
				end
              until not checkkey
              keyingup:Disconnect()
              activu = false
            end
          end
          if keya == "f" then
            activu = true
            do
              local speed = human.WalkSpeed
              human.WalkSpeed = 10
              human:SetStateEnabled(3, false)
              local checkkey = true
              local chargecounter = 0
              local keyingup = mouse.KeyUp:connect(function(xzx)
                if xzx == "f" then
                  checkkey = false
                end
              end)
              local firederp
              for _ = 1, 8 do
                swait()
                hwel.C0 = hwel.C0:lerp(ang(rd(65), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, 0.5, 0) * ang(rd(0), rd(0), rd(-70)), 0.5)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(60)), 0.5)
                lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(70), rd(-10), rd(80)), 0.5)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(-10), rd(-70), rd(-75)), 0.5)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.5)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.5)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LH, "C0", LHC0 * cf(0.5, 0, -0.4) * ang(rd(0), rd(80), rd(-5)), 0.5)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.5)
              end
              repeat
                swait()
				if Berserk == true then
                chargecounter = chargecounter + 15					
				else
                chargecounter = chargecounter + 1
				end
                lerpz(RS, "C0", RSC0 * cf(rd2(-5, 5) / 100, rd2(-5, 5) / 100, rd2(-5, 5) / 100) * ang(rd(rd2(65, 75)), rd(rd2(-15, 5)), rd(rd2(75, 85))), 0.05 + chargecounter * 0.002)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(rd2(-15, -5)), rd(rd2(-75, -65)), rd(rd2(-80, -70))), 0.05 + chargecounter * 0.002)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(rd2(-25, -15)), rd(0)), 0.05 + chargecounter * 0.002)
                if chargecounter > 100 and firederp == nil then
				P = fire:clone()P.Parent = pt8 P.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
				P.Speed = NumberRange.new(5,10)P.Enabled = true P.Lifetime = NumberRange.new(0.8)P.ZOffset = 2
				firederp = true
                end
              until not checkkey or chargecounter > 450
              swingwoo:Play()
              for U = 1, 10 do
                swait()
                  hito(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * (80 + chargecounter * 1) + Vector3.new(0, 6 + 6 * (chargecounter / 5), 0), Vector3.new(0, rd2(-25, 25) * (chargecounter / 25), rd2(-80, 80) * (chargecounter / 40)),chargecounter)
                  if chargecounter > 300 then
                    tagexplode(pt5, 25, 5)  
                  elseif chargecounter > 200 then
                    tagexplode(pt5, 20, 4)  
                  elseif chargecounter > 100 then
                    tagexplode(pt5, 10, 2)  
                  elseif chargecounter > 50 then
                    tagexplode(pt5, 5, 1)  
                  end
				if firederp == true then
				pt8:findFirstChild("Fire"):remove()
				firederp = nil
				end
                hwel.C0 = hwel.C0:lerp(ang(rd(135), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, -0.5, 0) * ang(rd(0), rd(0), rd(50)), 0.6)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-30)), 0.6)
                lerpz(RS, "C0", RSC0 * cf(0.75, 0.5, -0.5) * ang(rd(0), rd(60), rd(120)), 0.4)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(100), rd(0)), 0.4)
                lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-10), rd(20), rd(-125)), 0.4)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.4)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.6)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
                lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(-10), rd(-6)), 0.6)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.6)
              end
              swait(10)
              hwel.C0 = ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0)
              keyingup:Disconnect()
              human.WalkSpeed = speed
              human:SetStateEnabled(3, true)
              activu = false
            end
          end
          if keya == "h" then
            activu = true
            do
              local speed = human.WalkSpeed
              human.WalkSpeed = 10
              human:SetStateEnabled(3, false)
              local checkkey = true
              local chargecounter = 0
              local keyingup = mouse.KeyUp:connect(function(xzx)
                if xzx == "h" then
                  checkkey = false
                end
              end)
              local firederp
              for _ = 1, 8 do
                swait()
                hwel.C0 = hwel.C0:lerp(ang(rd(65), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, 0.5, 0) * ang(rd(0), rd(0), rd(-70)), 0.5)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(60)), 0.5)
                lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(70), rd(-10), rd(80)), 0.5)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(-10), rd(-70), rd(-75)), 0.5)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.5)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.5)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LH, "C0", LHC0 * cf(0.5, 0, -0.4) * ang(rd(0), rd(80), rd(-5)), 0.5)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.5)
              end
              repeat
                swait()
				if Berserk == true then
                chargecounter = chargecounter + 10					
				else
                chargecounter = chargecounter + 1
				end
				Lightningz(pt8.Position+Vector3.new(math.random(-chargecounter/100,chargecounter/100),math.random(-chargecounter/100,chargecounter/100),math.random((-chargecounter*6)/100,(chargecounter*6)/100)), pt8.Position+Vector3.new(math.random(-chargecounter/100,chargecounter/100),math.random(-chargecounter/100,chargecounter/100),math.random((-chargecounter*6)/100,(chargecounter*6)/100)), 0.05, 8, game.Workspace)
                lerpz(RS, "C0", RSC0 * cf(rd2(-5, 5) / 100, rd2(-5, 5) / 100, rd2(-5, 5) / 100) * ang(rd(rd2(65, 75)), rd(rd2(-15, 5)), rd(rd2(75, 85))), 0.05 + chargecounter * 0.002)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(rd2(-15, -5)), rd(rd2(-75, -65)), rd(rd2(-80, -70))), 0.05 + chargecounter * 0.002)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(rd2(-25, -15)), rd(0)), 0.05 + chargecounter * 0.002)
              until not checkkey or chargecounter > 450
              swingwoo:Play()
              for U = 1, 10 do
                swait()
                  hito4(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * (80 + chargecounter * 1) + Vector3.new(0, 6 + 6 * (chargecounter / 5), 0), Vector3.new(0, rd2(-25, 25) * (chargecounter / 25), rd2(-80, 80) * (chargecounter / 40)),chargecounter)
                  if chargecounter > 300 then
                    tagexplode(pt5, 25, 5)  
                  elseif chargecounter > 200 then
                    tagexplode(pt5, 20, 4)  
                  elseif chargecounter > 100 then
                    tagexplode(pt5, 10, 2)  
                  elseif chargecounter > 50 then
                    tagexplode(pt5, 5, 1)  
                  end
				if firederp == true then
				pt8:findFirstChild("Fire"):remove()
				firederp = nil
				end
                hwel.C0 = hwel.C0:lerp(ang(rd(135), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, -0.5, 0) * ang(rd(0), rd(0), rd(50)), 0.6)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-30)), 0.6)
                lerpz(RS, "C0", RSC0 * cf(0.75, 0.5, -0.5) * ang(rd(0), rd(60), rd(120)), 0.4)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(100), rd(0)), 0.4)
                lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-10), rd(20), rd(-125)), 0.4)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.4)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.6)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
                lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(-10), rd(-6)), 0.6)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.6)
              end
              swait(10)
              hwel.C0 = ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0)
              keyingup:Disconnect()
              human.WalkSpeed = speed
              human:SetStateEnabled(3, true)
              activu = false
            end
          end
          if keya == "t" then
            activu = true
            do
              local speed = human.WalkSpeed
              human.WalkSpeed = 10
              human:SetStateEnabled(3, false)
              local checkkey = true
              local chargecounter = 0
              local keyingup = mouse.KeyUp:connect(function(xzx)
                if xzx == "t" then
                  checkkey = false
                end
              end)
              local firederp
              for _ = 1, 8 do
                swait()
                hwel.C0 = hwel.C0:lerp(ang(rd(65), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, 0.5, 0) * ang(rd(0), rd(0), rd(-70)), 0.5)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(60)), 0.5)
                lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(70), rd(-10), rd(80)), 0.5)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(-10), rd(-70), rd(-75)), 0.5)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.5)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.5)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LH, "C0", LHC0 * cf(0.5, 0, -0.4) * ang(rd(0), rd(80), rd(-5)), 0.5)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.5)
              end
              repeat
                swait()
				if Berserk == true then
                chargecounter = chargecounter + 15					
				else
                chargecounter = chargecounter + 1
				end
                lerpz(RS, "C0", RSC0 * cf(rd2(-5, 5) / 100, rd2(-5, 5) / 100, rd2(-5, 5) / 100) * ang(rd(rd2(65, 75)), rd(rd2(-15, 5)), rd(rd2(75, 85))), 0.05 + chargecounter * 0.002)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(rd2(-15, -5)), rd(rd2(-75, -65)), rd(rd2(-80, -70))), 0.05 + chargecounter * 0.002)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(rd2(-25, -15)), rd(0)), 0.05 + chargecounter * 0.002)
                if chargecounter > 100 and firederp == nil then
				P = fire:clone()P.Parent = pt8 P.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
				P.Speed = NumberRange.new(5,10)P.Enabled = true P.Lifetime = NumberRange.new(0.8)P.ZOffset = 2
				firederp = true
                end
              until not checkkey or chargecounter > 450
              swingwoo:Play()
              for U = 1, 10 do
                swait()
                  hito2(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * (80 + chargecounter * 1) + Vector3.new(0, 6 + 6 * (chargecounter / 5), 0), Vector3.new(0, rd2(-25, 25) * (chargecounter / 25), rd2(-80, 80) * (chargecounter / 40)), 1)
                  if chargecounter > 300 then
                    tagexplode(pt5, 25, 5)  
                  elseif chargecounter > 200 then
                    tagexplode(pt5, 20, 4)  
                  elseif chargecounter > 100 then
                    tagexplode(pt5, 10, 2)  
                  elseif chargecounter > 50 then
                    tagexplode(pt5, 5, 1)  
                  end
				if firederp == true then
				pt8:findFirstChild("Fire"):remove()
				firederp = nil
				end
                hwel.C0 = hwel.C0:lerp(ang(rd(135), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, -0.5, 0) * ang(rd(0), rd(0), rd(50)), 0.6)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-30)), 0.6)
                lerpz(RS, "C0", RSC0 * cf(0.75, 0.5, -0.5) * ang(rd(0), rd(60), rd(120)), 0.4)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(100), rd(0)), 0.4)
                lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-10), rd(20), rd(-125)), 0.4)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.4)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.6)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
                lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(-10), rd(-6)), 0.6)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.6)
              end
      batting = false
      clibat:Disconnect()
      spec:Disconnect()
      hrp.sweae:Destroy()
      local batmod = chr:FindFirstChild("bmodel")
      batmod.hnd.Weld:Destroy()
      batmod.PrimaryPart = batmod.hnd
      batmod:SetPrimaryPartCFrame(rarm.CFrame * ang(rd(-90), rd(0), rd(0)) * cf(0, 0, -1))
      for _, A in pairs(batmod:GetChildren()) do
        if A.ClassName == "Part" then
          A.CanCollide = true
          A.Anchored = false
        end
      end
      batmod.Parent = workspace
      game.Debris:AddItem(batmod, 8)
              hwel.C0 = ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0)
              keyingup:Disconnect()
              human.WalkSpeed = speed
              human:SetStateEnabled(3, true)
              activu = false
            end
          end
        end)
      end
    elseif batting == true then
      batting = false
      clibat:Disconnect()
      spec:Disconnect()
      hrp.sweae:Destroy()
      local batmod = chr:FindFirstChild("bmodel")
      batmod.hnd.Weld:Destroy()
      batmod.PrimaryPart = batmod.hnd
      batmod:SetPrimaryPartCFrame(rarm.CFrame * ang(rd(-90), rd(0), rd(0)) * cf(0, 0, -1))
      for _, A in pairs(batmod:GetChildren()) do
        if A.ClassName == "Part" then
          A.CanCollide = true
          A.Anchored = false
        end
      end
      batmod.Parent = workspace
      game.Debris:AddItem(batmod, 8)
    end
  end
  local movin = false
  local cliham, hamspec
  function ham()
    if batting == false then
      batting = true
      do
        local bmod = Instance.new("Model")
        bmod.Name = "bmodel"
        bmod.Parent = chr
        local makemotor = function(parent, p0, p1, c0, c1)
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
        local hnd = makepart("Br. yellowish green", "hnd", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        hnd.Anchored = true
        local hmes = makemesh("Head", Vector3.new(5, 30, 5), nil, hnd)
        movin = true
        hnd.CFrame = hrp.CFrame
        coroutine.resume(coroutine.create(function()
          while hnd.Anchored == true do
            swait()
            if movin then
              hnd.CFrame = hnd.CFrame:lerp(hrp.CFrame * ang(rd(40), rd(0), rd(0)) * cf(0, 11, 0), 0.65)
            end
          end
        end))
        local pt1 = makepart("Br. yellowish green", "pt1", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p1m = makemesh("Head", Vector3.new(6, 5.5, 5.5), nil, pt1)
        local p1w = makemotor(pt1, pt1, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 3, 0), nil)
        local pt2 = makepart("Br. yellowish green", "pt2", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p2m = makemesh("Head", Vector3.new(6, 5.5, 5.5), nil, pt2)
        local p2w = makemotor(pt2, pt2, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -3, 0), nil)
        local pt3 = makepart("Bright yellow", "pt3", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p3m = makemesh("Head", Vector3.new(6.5, 6.5, 6.5), nil, pt3)
        local p3w = makemotor(pt3, pt3, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 3.75, 0), nil)
        local pt4 = makepart("Br. yellowish green", "pt4", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p4m = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxassetid://250640098", pt4)
        p4m.TextureId = "rbxassetid://250639536"
        local p4w = makemotor(pt4, pt4, hnd, ang(rd(180), rd(180), rd(0)) * cf(0, 4.25, 0.25), nil)
        local pt5 = makepart("Bright blue", "pt5", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p5m = makemesh("Head", Vector3.new(5, 90, 4), nil, pt5)
        local p5w = makemotor(pt5, pt5, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -12, 0), nil)
        local pt6 = makepart("Bright blue", "pt6", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p6m = makemesh("FileMesh", Vector3.new(0.16, 0.4, 0.16), "rbxassetid://703458158", pt6)
        local p6w = makemotor(pt6, pt6, hnd, ang(rd(180), rd(0), rd(0)) * cf(0, -16, 0), nil)
        local pt7 = makepart("Bright yellow", "pt7", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p7m = makemesh("Head", Vector3.new(75, 75, 75), nil, pt7)
        local p7w = makemotor(pt7, pt7, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -27, 0), nil)
        local hdec1 = Instance.new("Decal")
        hdec1.Texture = "rbxasset://textures/face.png"
        hdec1.Face = "Front"
        hdec1.Parent = pt7
        local pt8 = makepart("Bright yellow", "pt8", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p8m = makemesh("Head", Vector3.new(75, 75, 75), nil, pt8)
        local p8w = makemotor(pt8, pt8, hnd, ang(rd(0), rd(-90), rd(0)) * cf(0, -27, 0), nil)
        local hdec2 = Instance.new("Decal")
        hdec2.Texture = "rbxasset://textures/face.png"
        hdec2.Face = "Front"
        hdec2.Parent = pt8
        local pt9 = makepart("Bright yellow", "pt9", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p9m = makemesh("FileMesh", Vector3.new(12, 11, 11), "rbxassetid://272942659", pt9)
        local p9w = makemotor(pt9, pt9, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -30, 0), nil)
        p9m.TextureId = "rbxassetid://272942750"
        local pt10 = makepart("Bright yellow", "pt10", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p10m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt10)
        local p10w = makemotor(pt10, pt10, pt7, ang(rd(0), rd(0), rd(90)) * cf(11, 0, 0), nil)
        local hdec3 = Instance.new("Decal")
        hdec3.Texture = "rbxasset://textures/face.png"
        hdec3.Face = "Front"
        hdec3.Parent = pt10
        local pt11 = makepart("Bright yellow", "pt11", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p11m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt11)
        local p11w = makemotor(pt11, pt11, pt7, ang(rd(0), rd(180), rd(90)) * cf(11, 0, 0), nil)
        local hdec4 = Instance.new("Decal")
        hdec4.Texture = "rbxasset://textures/face.png"
        hdec4.Face = "Front"
        hdec4.Parent = pt11
        local pt12 = makepart("Bright yellow", "pt12", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p12m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt12)
        local p12w = makemotor(pt12, pt12, pt7, ang(rd(0), rd(0), rd(-90)) * cf(-11, 0, 0), nil)
        local hdec5 = Instance.new("Decal")
        hdec5.Texture = "rbxasset://textures/face.png"
        hdec5.Face = "Front"
        hdec5.Parent = pt12
        local pt13 = makepart("Bright yellow", "pt13", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p13m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt13)
        local p13w = makemotor(pt13, pt13, pt7, ang(rd(0), rd(180), rd(-90)) * cf(-11, 0, 0), nil)
        local hdec6 = Instance.new("Decal")
        hdec6.Texture = "rbxasset://textures/face.png"
        hdec6.Face = "Front"
        hdec6.Parent = pt13
        cliham = tool.Activated:connect(function()
          if selected == false or activu == true or ragged == true then
            return
          end
          activu = true
          movin = false
          for B = 1, 20 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.4)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(8), rd(0), rd(0)), 0.4)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-15), rd(-5), rd(170)), 0.4)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(-10), rd(10)), 0.4)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(-10)), 0.4)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(10), rd(10)), 0.4)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 0.1 + B * 0.045)
          end
          for B = 1, 30 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.8, 0) * ang(rd(-25), rd(0), rd(-50)), 0.1 + B / 80)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-18), rd(0), rd(40)), 0.1 + B / 80)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-30), rd(-5), rd(160)), 0.1 + B / 80)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-20), rd(-150)), 0.1 + B / 80)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(-10)), 0.1 + B / 80)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(LH, "C0", LHC0 * cf(0.5, 0, -0.4) * ang(rd(-5), rd(60), rd(-110)), 0.1 + B / 80)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          for B = 1, 7 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(40)), 0.015 + B / 15)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(9), rd(0), rd(-15)), 0.015 + B / 15)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-50), rd(100)), 0.015 + B / 15)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-25), rd(-90)), 0.015 + B / 15)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(10)), 0.015 + B / 15)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(LH, "C0", LHC0 * cf(0.1, 0, -0.1) * ang(rd(-5), rd(20), rd(-20)), 0.015 + B / 15)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          for B = 1, 4 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, -0.8, 0) * ang(rd(70), rd(0), rd(40)), 0.38 + B * 0.1)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(9), rd(0), rd(-15)), 0.38 + B * 0.1)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-40), rd(100)), 0.38 + B * 0.1)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-25), rd(-90)), 0.38 + B * 0.1)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(60)), 0.38 + B * 0.1)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(LH, "C0", LHC0 * cf(0.1, 0, -0.1) * ang(rd(-5), rd(20), rd(70)), 0.38 + B * 0.1)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          swait(15)
          movin = true
          activu = false
        end)
      end
    elseif batting == true then
      batting = false
      cliham:Disconnect()
      local badevz = chr:FindFirstChild("bmodel")
      badevz.PrimaryPart = badevz.hnd
      for _, A in pairs(badevz:GetChildren()) do
        if A.ClassName == "Part" then
          A.CanCollide = true
          A.Anchored = false
        end
      end
      movin = false
      badevz.Parent = workspace
      badevz:SetPrimaryPartCFrame(hrp.CFrame * ang(rd(40), rd(0), rd(0)) * cf(0, -11, 0))
      game.Debris:AddItem(badevz, 8)
    end
  end
  game:GetService("ContentProvider"):Preload("rbxassetid://725969678")
  function lauf()
    if selected == false or activu == true then
      return
    end
    lauf1:Play()
  end
  noobmodel = Instance.new("Model",chr)
  function makenoob(cfrem, scalo, rags)
    nscale.Value = scalo
    local md = Instance.new("Model")
    md.Name = "Noob"
    md.Parent = workspace
    local hu = Instance.new("Humanoid")
    hu.RigType = "R6"
    hu.MaxHealth = 100 * scalo
    hu.Health = 100 * scalo
    hu.Parent = md
    local anm = Instance.new("Animator")
    anm.Parent = hu
    hu.PlatformStand = true
    local light = function(part)
      part.CustomPhysicalProperties = PhysicalProperties.new(0.35, 0.3, 0.5)
    end
    local hd = Instance.new("Part")
    hd.Name = "Head"
    hd.Size = Vector3.new(2 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    hd.TopSurface = "Smooth"
    hd.BottomSurface = "Inlet"
    hd.Locked = true
    hd.BrickColor = BrickColor.new("Bright yellow")
    hd.CanCollide = true
    hd.Anchored = false
    light(hd)
    hd.Parent = md
    local hm = Instance.new("SpecialMesh")
    hm.MeshType = "Head"
    hm.Scale = Vector3.new(1.25, 1.25, 1.25)
    hm.Parent = hd
    local hf = Instance.new("Decal")
    hf.Texture = "rbxasset://textures/face.png"
    local gen = math.random(1, 40)
    if gen == 3 then
      hf.Texture = "rbxassetid://260884109"
    end
    if gen == 8 then
      hf.Texture = "rbxassetid://260569492"
    end
    if gen == 12 then
      hf.Texture = "rbxassetid://259580505"
    end
    if gen == 16 then
      hf.Texture = "rbxassetid://259579232"
    end
    if gen == 24 then
      hf.Texture = "rbxassetid://259571525"
    end
    if gen == 28 then
      hf.Texture = "rbxassetid://258283210"
    end
    if gen == 32 then
      hf.Texture = "rbxassetid://258940032"
    end
    if gen == 38 then
      hf.Texture = "rbxassetid://673220970"
      hf.Color3 = Color3.new(0, 0, 0)
    end
    hf.Face = "Front"
    hf.Parent = hd
    local hrpa = Instance.new("Part")
    hrpa.Name = "HumanoidRootPart"
    hrpa.TopSurface, hrpa.BottomSurface = 0, 0
    hrpa.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    hrpa.Transparency = 1
    hrpa.CanCollide = false
    hrpa.Locked = true
    light(hrpa)
    hrpa.Parent = md
    local tagbomb = Instance.new("BoolValue")
    tagbomb.Name = "tagbomb"
    tagbomb.Value = false
    tagbomb.Parent = hrpa
    local learm = Instance.new("Part")
    learm.Name = "Left Arm"
    learm.BrickColor = BrickColor.new("Bright yellow")
    learm.CanCollide = false
    learm.Locked = true
    learm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    light(learm)
    learm.Parent = md
    local riarm = Instance.new("Part")
    riarm.Name = "Right Arm"
    riarm.BrickColor = BrickColor.new("Bright yellow")
    riarm.CanCollide = false
    riarm.Locked = true
    light(riarm)
    riarm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    riarm.Parent = md
    local leleg = Instance.new("Part")
    leleg.Name = "Left Leg"
    leleg.BrickColor = BrickColor.new("Br. yellowish green")
    leleg.CanCollide = false
    leleg.Locked = true
    light(leleg)
    leleg.BottomSurface = 0
    leleg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    leleg.Parent = md
    local rileg = Instance.new("Part")
    rileg.Name = "Right Leg"
    rileg.BrickColor = BrickColor.new("Br. yellowish green")
    rileg.CanCollide = false
    rileg.Locked = true
    light(rileg)
    rileg.BottomSurface = 0
    rileg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    rileg.Parent = md
    local tor = Instance.new("Part")
    tor.Name = "Torso"
    tor.BrickColor = BrickColor.new("Bright blue")
    tor.Locked = true
    light(tor)
    tor.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    tor.LeftSurface, tor.RightSurface = "Weld", "Weld"
    tor.Parent = md
    md.PrimaryPart = hrpa
    md:SetPrimaryPartCFrame(cfrem)
    md:makeJoints()
    makejoint(hrpa, RootJointC0, RootJointC1, hrpa, tor, "RootJoint")
    makejoint(tor, NeckC0, NeckC1, tor, hd, "Neck")
    if rags == true then
      makegloo(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makegloo(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makegloo(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makegloo(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      maketouchy(riarm, riarm, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(learm, learm, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(leleg, leleg, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(rileg, rileg, CFrame.new(0, 0.5 * nscale.Value, 0))
    elseif rags == false then
      makejoint(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makejoint(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makejoint(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makejoint(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      hu.PlatformStand = false
    end
    nscale.Value = 1
    hu.Touched:connect(function(tpart, uwot)
      if tagbomb.Value == true and tpart.Parent ~= md and tpart.Parent.Parent ~= md and tpart.Parent.Parent.Parent ~= md then
        tagbomb.Value = false
        hu.Health = 0
        local derp = Instance.new("Explosion")
        derp.BlastPressure = 200
        derp.BlastRadius = 8
        derp.DestroyJointRadiusPercent = 0
        derp.ExplosionType = 2
        derp.Visible = true
        derp.Position = uwot.Position - Vector3.new(0, 0.5, 0)
        derp.Parent = workspace
        game.Debris:AddItem(md, 8)
      end
    end)
    return md
  end
local Moe = Instance.new("Model",game.Workspace)Moe.Name = "Baseballs"
  function Baseball()
	if activu == true then return end
	activu = true
	local Middle = Instance.new("Part",Moe)Middle.BrickColor = BrickColor.new("Daisy orange")Middle.Size = Vector3.new(0.75,0.75,0.75)
	Middle.TopSurface = "Smooth" Middle.BottomSurface = "Smooth" local M1 = Instance.new("SpecialMesh",Middle)M1.MeshType = "Sphere" Middle.CanCollide = false
	Middle.Material = "SmoothPlastic" local W1 = Instance.new("Weld", Middle)W1.Part0 = Middle W1.Part1 = rarm W1.C0 = CFrame.new(0,1.2,0)
          for _ = 1, 3 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-20), rd(10), rd(-40)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(-20), rd(179)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
		local Fre = fire:clone()Fre.Parent = Middle Fre.Enabled = true Fre.Lifetime = NumberRange.new(0.75)
		Fre.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
		game.Debris:AddItem(W1,0)
		wait()
		Middle.CFrame = CFrame.new(tors.CFrame:toWorldSpace(CFrame.new(0,0,0)).p,mouse.hit.p)
		local BV = Instance.new("BodyVelocity",Middle)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)BV.Velocity = Middle.CFrame.lookVector * 150
        for X = 1, 3 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(-10), rd(30)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
	activu = false
 end
  function makecircle(cfrem, scalo)
    local mcir1 = Instance.new("Part")
    mcir1.Anchored = true
    mcir1.CanCollide = false
    mcir1.Size = Vector3.new(0.2, 0.2, 0.2)
    mcir1.Transparency = 1
    mcir1.CFrame = cfrem
    mcir1.Parent = modz
    game.Debris:AddItem(mcir1, 8)
    local d1 = Instance.new("Decal")
    d1.Texture = "rbxassetid://602615043"
    d1.Face = "Front"
    d1.Parent = mcir1
    local d2 = Instance.new("Decal")
    d2.Texture = "rbxassetid://602617463"
    d2.Face = "Back"
    d2.Parent = mcir1
    local bme = Instance.new("BlockMesh")
    bme.Parent = mcir1
    for _ = 1, 2 do
      swait()
      bme.Scale = bme.Scale:lerp(Vector3.new(60 * scalo, 60 * scalo, 0), 0.2)
    end
    for _ = 1, 15 do
      swait()
      bme.Scale = bme.Scale:lerp(Vector3.new(-0.2 * scalo, -0.2 * scalo, 0), 0.2)
    end
    for _ = 1, 3 do
      swait()
      bme.Scale = bme.Scale:lerp(Vector3.new(80 * scalo, 80 * scalo, 0), 0.2)
    end
    coroutine.resume(coroutine.create(function()
      swait(15)
      for _ = 1, 12 do
        swait()
        d1.Transparency = d1.Transparency + 0.08
        d2.Transparency = d2.Transparency + 0.08
      end
      mcir1:Destroy()
    end))
    return mcir1
  end
  function spawnnoob(circlecf, noobcf, scalez, ragd)
    local aearae = makecircle(circlecf, scalez)
    local nananb
    if ragd then
      nananb = makenoob(aearae.CFrame * noobcf, scalez, true)
    elseif not ragd then
      nananb = makenoob(aearae.CFrame * noobcf, scalez, false)
    end
    return nananb
  end
  function tagexplode(partoz, magn, bombdelay)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy.Name == "Noob" and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude then
        coroutine.resume(coroutine.create(function()
          swait(bombdelay * 30)
          guy:FindFirstChild("HumanoidRootPart").tagbomb.Value = true
        end))
      end
    end
  end
  function hito(partoz, magn, dmg, debtim, bodyfdire, bodyrot, charge)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local horp = guy:FindFirstChild("HumanoidRootPart")
		  if Berserk == true then
          humz.Health = humz.Health - charge*charge*100
		  else
          humz.Health = humz.Health - charge*charge/10
		  end
		  ragplayer(guy)
          humz:SetStateEnabled(16, true)
          delay(debtim, function()
            humz:SetStateEnabled(16, true)
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
		  if Berserk == false then
		         humz:SetStateEnabled(16, true)
          delay(debtim, function()
            humz:SetStateEnabled(16, true)
          end)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = horp
          delay(debtim, function()
            db:Destroy()
          end)
		  end
          if bodyfdire then
            local boopyve = Instance.new("BodyVelocity")
            boopyve.MaxForce = Vector3.new(9999999999999, 9999999999999, 9999999999999)
            boopyve.P = 9999999999
            boopyve.Velocity = bodyfdire
            boopyve.Parent = horp
            game.Debris:AddItem(boopyve, debtim)
          end
          if bodyrot then
            local boopyro = Instance.new("BodyAngularVelocity")
            boopyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
            boopyro.P = math.huge
            boopyro.AngularVelocity = bodyrot
            boopyro.Parent = horp
            game.Debris:AddItem(boopyro, debtim)
          end
		  for i = 1,2 do
          local bet = Instance.new("Sound")
          bet.Pitch = rd2(9, 11) / 10
          bet.Volume = 2
          bet.SoundId = "rbxassetid://694048922"
          bet.Parent = b
          bet:Play()
		  end
		  if charge >= 100 then
		  local P = guy:GetChildren()
		  for i = 1,#P do
		  if P[i].Name ~= "HumanoidRootPart" then
		  P[i]:remove()
		  end
		  end
		  for i = 1,2 do
          local bet = Instance.new("Sound")
          bet.Volume = 10
          bet.SoundId = "rbxassetid://291487516"
          bet.Parent = b
          bet:Play()	
 		  end
		  local Rainbew = fire:clone()Rainbew.Parent = horp Rainbew.Enabled = true Rainbew.Lifetime = NumberRange.new(4) Rainbew.Speed = NumberRange.new(0)
		  end
          coroutine.resume(coroutine.create(function()
            for _ = 1, 5 do
              swait()
              b.Transparency = b.Transparency + 0.175
              c.Scale = c.Scale + Vector3.new(2 * dmg, 2 * dmg, 2 * dmg)
            end
          end))
        end
      end
    end
  end
  function hito2(partoz, magn, dmg, debtim, bodyfdire, bodyrot)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local horp = guy:FindFirstChild("HumanoidRootPart")
		  ragplayer(guy)
		  if guy:findFirstChild("Head")~=nil then
		  guy.Head:BreakJoints()
          local boopyve = Instance.new("BodyVelocity")
          boopyve.MaxForce = Vector3.new(9999999999999, 9999999999999, 9999999999999)
          boopyve.P = 9999999999
          boopyve.Velocity = bodyfdire
          boopyve.Parent = guy:findFirstChild("Head")
          game.Debris:AddItem(boopyve, debtim)
local Blood = Instance.new("ParticleEmitter", guy.Head)
Blood.Enabled = false
Blood.Lifetime = NumberRange.new(0.75)
Blood.RotSpeed = NumberRange.new(10)
Blood.Acceleration = Vector3.new(0,-10,0)
Blood.Rate = 250
Blood.VelocitySpread = 360
Blood.Speed = NumberRange.new(2,8)
Blood.Rotation = NumberRange.new(-360,360)
Blood.Name = "Blood"
Blood.LightEmission = -0.5
Blood.Texture = "http://www.roblox.com/asset/?id=513989292"
Blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0)})
Blood.ZOffset = 2 Blood.Enabled = true
		  end
          humz:SetStateEnabled(16, true)
          delay(debtim, function()
            humz:SetStateEnabled(16, true)
          end)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = horp
          delay(debtim, function()
            db:Destroy()
          end)
          if bodyfdire then

          end
          if bodyrot then
            local boopyro = Instance.new("BodyAngularVelocity")
            boopyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
            boopyro.P = math.huge
            boopyro.AngularVelocity = bodyrot
            boopyro.Parent = horp
            game.Debris:AddItem(boopyro, debtim)
          end
		  for i = 1,2 do
          local bet = Instance.new("Sound")
          bet.Pitch = rd2(9, 11) / 10
          bet.Volume = rd2(12, 14) / 10
          bet.SoundId = "rbxassetid://553265835"
          bet.Parent = horp
          bet:Play()
		 end
        end
      end

    end
  end
  function hito3(partoz, magn, dmg, debtim, bodyfdire, bodyrot, charge)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local horp = guy:FindFirstChild("HumanoidRootPart")
		local p23 = Instance.new("Part",Maedl)p23.Size = Vector3.new(1,1,1)p23.Material = "Neon" p23.BrickColor = BrickColor.new("Maroon") p23.CanCollide = false
		p23.CFrame = guy.Torso.CFrame*CFrame.Angles(math.random(-90,90),math.random(-90,90),math.random(-90,90))
		local B23 = Instance.new("BlockMesh",p23)
		local BP = Instance.new("BodyPosition",p23)BP.P = 10000000 BP.maxForce = Vector3.new(math.huge,math.huge,math.huge)p23:findFirstChild("BodyPosition").Position = tors.Position
		game.Debris:AddItem(p23,2)
		  guy.Torso:BreakJoints()
          local b = Instance.new("Part")
          nooutline(b)
          b.Size = Vector3.new(0.2, 0.2, 0.2)
          b.Transparency = 0
          b.Anchored = true
          b.CanCollide = false
          b.BrickColor = BrickColor.new("Maroon")
          b.Locked = true
          b.CFrame = horp.CFrame * CFrame.new(rd2(-1, 1), rd2(-2, 2), rd2(-1, 1))
          b.Parent = modz
          local c = Instance.new("SpecialMesh")
          c.MeshType = "Sphere"
          c.Scale = Vector3.new(3.5, 3.5, 3.5)
          c.Parent = b
          game.Debris:AddItem(b, 1)
          humz:SetStateEnabled(16, true)
          delay(debtim, function()
            humz:SetStateEnabled(16, true)
          end)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = horp
          delay(debtim, function()
            db:Destroy()
          end)
		  for i = 1,2 do
          local bet = Instance.new("Sound")
          bet.Pitch = rd2(9, 11) / 10
          bet.Volume = 10
          bet.SoundId = "rbxassetid://553265835"
          bet.Parent = guy.Torso
          bet:Play()
		 end
          coroutine.resume(coroutine.create(function()
            for _ = 1, 5 do
              swait()
              b.Transparency = b.Transparency + 0.2
              c.Scale = c.Scale + Vector3.new(4 * dmg, 4 * dmg, 4 * dmg)
            end
          end))
        end
      end
    end
  end
  function hito4(partoz, magn, dmg, debtim, bodyfdire, bodyrot, charge)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local horp = guy:FindFirstChild("HumanoidRootPart")
		  ragplayer(guy)
          humz:SetStateEnabled(16, true)
          delay(debtim, function()
            humz:SetStateEnabled(16, true)
          end)
		  if Berserk == false then
		         humz:SetStateEnabled(16, true)
          delay(debtim, function()
            humz:SetStateEnabled(16, true)
          end)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = horp
          delay(debtim, function()
            db:Destroy()
          end)
		  end
            local boopyve = Instance.new("BodyVelocity")
            boopyve.MaxForce = Vector3.new(9999999999999, 9999999999999, 9999999999999)
            boopyve.P = 9999999999
            boopyve.Velocity = bodyfdire
            boopyve.Parent = horp
          if bodyrot then
            local boopyro = Instance.new("BodyAngularVelocity")
            boopyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
            boopyro.P = math.huge
            boopyro.AngularVelocity = bodyrot
            boopyro.Parent = horp
            game.Debris:AddItem(boopyro, debtim)
          end
		  if charge >= 1 then
		  for i = 1,2 do
          local bet = Instance.new("Sound")
          bet.Volume = 10
          bet.SoundId = "rbxassetid://517249876"
          bet.Parent = tors
          bet:Play()	
		 	end
		    for i = 1,100 do
			Lightningz2(tors.Position+Vector3.new(math.random(-charge/100,charge/100)),guy.HumanoidRootPart.Position, 0.2, 8, game.Workspace)
            humz.Health = 0.001
			wait() end             game.Debris:AddItem(boopyve, 0)
		  end
        end
      end
    end
  end
  function cleannoobs()
    for _, nib in pairs(workspace:GetChildren()) do
      coroutine.resume(coroutine.create(function()
        if nib.Name == "Noob" then
          if nib:FindFirstChild("HumanoidRootPart") then
            local g = Instance.new("Part")
            g.CanCollide, g.Anchored = false, true
            g.Transparency = 1
            g.CFrame = nib:FindFirstChild("HumanoidRootPart").CFrame
            g.Parent = workspace
            game.Debris:AddItem(g, 3.5)
            local sou = Instance.new("Sound")
            sou.Pitch = math.random(7, 11) / 10
            sou.Volume = 0.8
            sou.SoundId = "rbxassetid://111124523"
            sou.Parent = g
            local pe = Instance.new("ParticleEmitter")
            pe.Acceleration = Vector3.new(0, 8, 0)
            pe.Lifetime = NumberRange.new(1, 1.5)
            pe.Rate = 0.005
            pe.RotSpeed = NumberRange.new(-30, 30)
            pe.Rotation = NumberRange.new(0, 360)
            pe.Size = NumberSequence.new({
              NumberSequenceKeypoint.new(0, 4.38, 0),
              NumberSequenceKeypoint.new(0.672, 4.14, 0),
              NumberSequenceKeypoint.new(1, 1.48, 0)
            })
            pe.Texture = "rbxassetid://244221440"
            pe.Transparency = NumberSequence.new({
              NumberSequenceKeypoint.new(0, 0, 0),
              NumberSequenceKeypoint.new(0.529, 0.3, 0),
              NumberSequenceKeypoint.new(1, 1, 1)
            })
            pe.ZOffset = 5
            pe.Enabled = true
            pe.VelocitySpread = 360
            pe.Parent = g
            swait(5)
            pe:Emit(6)
            sou:Play()
          end
          nib:Destroy()
        end
      end))
    end
  end
  function animo(yep)
    if yep == true then
      anim.Parent = human
      chr.Animate.Disabled = false
    elseif yep == false then
      chr.Animate.Disabled = true
      anim.Parent = nil
    end
  end
  mouse.KeyDown:connect(function(key)
    if key == "r" then
      test()
    end
    if key == "m" then
      lauf()
    end
    if key == "c" and plr.UserId == 49689731 then
      ham()
    end
    if key == "x" then
      bat()
    end
    if key == "y" then
      epic()
    end
    if key == "m" then
      Bloodthirst()
    end
    if key == "g" then
      Baseball()
    end
    if key == "l" and plr.UserId == 49689731 and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 3, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 1, true)
    end
    if key == ";" and plr.UserId == 49689731 and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 60, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 10, true)
    end
    if key == "k" and plr.UserId == 49689731 and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 3, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 1, false)
    end
    if key == "p" then
      cleannoobs()
    end
    if key == "z" then
      if selected == false or activu == true then
        return
      end
      if human.WalkSpeed == 24 then
        human.WalkSpeed = 150
        human.JumpPower = 150
      else
        human.WalkSpeed = 24
        human.JumpPower = 85
      end
    end
  end)
  tool.Equipped:connect(function()
	script.Disabled = false
    selected = true
  end)
  tool.Unequipped:connect(function()
    selected = false
  end)
  animo(false)
  human.WalkSpeed = 24
  sine = 0
  charge = 1
  cos = math.cos
  game:GetService("RunService").RenderStepped:connect(function()
	if Berserk == true then
	chr.Humanoid.MaxHealth = chr.Humanoid.MaxHealth + 100
	chr.Humanoid.Health = chr.Humanoid.Health + 50
	end
	if Music == true then
	hito(tors, 5, 10, 0.2, hrp.CFrame.lookVector * 150, Vector3.new(0, rd2(-5, 5), rd2(-40, 40)), 1)
	end
	for i,v in pairs (Maedl:children()) do
	v:findFirstChild("Mesh").Offset = Vector3.new(math.random(-15-v.Mesh.Scale.Y,15+v.Mesh.Scale.Y)/10,math.random(-15-v.Mesh.Scale.Y,15+v.Mesh.Scale.Y)/10,math.random(-15-v.Mesh.Scale.Y,15+v.Mesh.Scale.Y)/10)
	v:findFirstChild("Mesh").Scale = v.Mesh.Scale + Vector3.new(0.025,0.025,0.025)
	end
	for i,v in pairs (Moe:children()) do
	hito(v, 5, 10, 0.2, Vector3.new(math.random(-100,100),100,math.random(-100,100)), Vector3.new(0, rd2(-25, 25) * (100 / 25), rd2(-80, 80) * (100 / 40)),100)
	end
	for i,v in pairs (chr:children()) do
	if v.ClassName == "Accessory" then
	for i,v2 in pairs (v:children()) do
	if v2.ClassName == "Part" then
	v2.Anchored = false
	end
	end
	end
	end
	for i,v in pairs (chr:children()) do
	if v.ClassName == "Part" then
	v.Anchored = false
	end
	end
    if ragged == false and activu == false then
      local checkfloor = Ray.new(hrp.Position, Vector3.new(0, -5, 0))
      local checkpart = workspace:FindPartOnRayWithIgnoreList(checkfloor, {chr}, false, false)
      local checkstate = human:GetState()
      if checkstate.Value == 13 then
        animpose = "Sitting"
      elseif hrp.Velocity.y > 1 and checkpart == nil then
        animpose = "Jumping"
      elseif hrp.Velocity.y < -1 and checkpart == nil then
        animpose = "Falling"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 2 then
        animpose = "Idle"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 40 then
        animpose = "Walking"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude > 40 then
        animpose = "TooFast"
      end
      if animpose == "Idle" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0.05 * cos(sine / 40), 0, -0.05 - 0.05 * cos(sine / 20)) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(4 + 2 * cos(sine / 20)), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(8 * cos(sine / 80)), rd(0), rd(8 * cos(sine / 80))), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(8 * cos(sine / 80)), rd(0), rd(8 * cos(sine / 80))), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0.05 + 0.05 * cos(sine / 20), 0.05 * cos(sine / 40)) * ang(rd(-5), rd(-5), rd(1)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0.05 + 0.05 * cos(sine / 20), -0.05 * cos(sine / 40)) * ang(rd(-5), rd(5), rd(1)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Walking" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.025 * cos(sine / 4)) * ang(rd(-5), math.sin(hrp.RotVelocity.Y / 30), math.sin(hrp.RotVelocity.Y / 5)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(5 * cos(sine / 5)), rd(-20 * cos(sine / 5)), rd(90 * cos(sine / 5))), 0.6)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5 * cos(sine / 5)), rd(-20 * cos(sine / 5)), rd(90 * cos(sine / 5))), 0.6)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(-1 - 1 * cos(sine / 60)), rd(-90 * cos(sine / 5))), 0.6)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(1 - 1 * cos(sine / 60)), rd(-90 * cos(sine / 5))), 0.6)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Jumping" then
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, -0.5, 0.2) * ang(rd(-70), rd(-5), rd(-20)), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, -0.5, 0.2) * ang(rd(-70), rd(5), rd(20)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-20), rd(-20), rd(-20)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(15)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Falling" then
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0.6) * ang(rd(-150), rd(-5), rd(-20)), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0.6) * ang(rd(-150), rd(5), rd(20)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-15), rd(-20)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(15), rd(15)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "TooFast" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.35 * cos(sine / 2)) * ang(rd(-20), math.sin(hrp.RotVelocity.Y / 20), math.sin(hrp.RotVelocity.Y / 2)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-15 - 5 * cos(sine / 2)), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(5 * cos(sine / 3)), rd(-120 * cos(sine / 3)), rd(110 * cos(sine / 3))), 0.6)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5 * cos(sine / 3)), rd(-120 * cos(sine / 3)), rd(110 * cos(sine / 3))), 0.6)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(-1 - 1 * cos(sine / 60)), rd(-110 * cos(sine / 3))), 0.6)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(1 - 1 * cos(sine / 60)), rd(-110 * cos(sine / 3))), 0.6)
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
  end)