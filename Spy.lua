local player = game.Players.LocalPlayer
local char = player.Character
local PlayerGui = player.PlayerGui
repeat
  wait()
until player and char
local torso = char.Torso
local head = char.Head
cloakoffd = true
local human = char.Humanoid
local mana = 100
local arm = {
  Left = char["Left Arm"],
  Right = char["Right Arm"]
}
local leg = {
  Left = char["Left Leg"],
  Right = char["Right Leg"]
}
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
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
local c = function(f)
  coroutine.resume(coroutine.create(f))
end
local p = function(f)
  pcall(f)
end
local add = {
  Part = function(par, a, c, col, t, s, cf, ms)
    local p = Instance.new("Part", par)
    pcall(function()
      p.TopSurface = "Smooth"
      p.BottomSurface = "Smooth"
      p.formFactor = "Custom"
      p.Anchored = a
      p.CanCollide = c
      p.BrickColor = BrickColor.new(col)
      p.Transparency = t
      p.Size = s
      p.CFrame = cf or CFrame.new()
    end)
    local m = Instance.new("BlockMesh", p)
    pcall(function()
      m.Scale = ms or Vector3.new(1, 1, 1)
    end)
    return p
  end,
  Wedge = function(par, a, c, col, t, s, cf, ms)
    local p = Instance.new("WedgePart", par)
    pcall(function()
      p.TopSurface = "Smooth"
      p.BottomSurface = "Smooth"
      p.formFactor = "Custom"
      p.Anchored = a
      p.CanCollide = c
      p.BrickColor = BrickColor.new(col)
      p.Transparency = t
      p.Size = s
      p.CFrame = cf or CFrame.new()
    end)
    local m = Instance.new("SpecialMesh", p)
    pcall(function()
      m.Scale = ms or Vector3.new(1, 1, 1)
      m.MeshType = "Wedge"
    end)
    return p
  end,
  Gui = function(ins, par, bc, bg, tc, fs, text, t, s, pos)
    local g = Instance.new(ins, par)
    pcall(function()
      g.BorderColor = BrickColor.new(bc)
      g.BackgroundColor = BrickColor.new(bg)
      g.TextColor = BrickColor.new(tc)
      g.FontSize = fs
      g.Font = "ArialBold"
      g.Text = text
      g.Transparency = t
      g.Size = s
      g.Position = pos
    end)
    return g
  end,
  Weld = function(par, p1, cf)
    local w = Instance.new("Weld", par)
    pcall(function()
      w.Part0 = w.Parent or par
      w.Part1 = p1
      w.C1 = cf or CFrame.new()
    end)
    return w
  end,
  Mesh = function(ins, par, s, of, t)
    local m = Instance.new(ins, par)
    pcall(function()
      m.Scale = s or Vector3.new()
      m.Offset = of or Vector3.new()
      m.MeshType = t
    end)
    return m
  end,
  Sound = function(parent, id, volume, pitch)
    local s = Instance.new("Sound", parent)
    pcall(function()
      s.SoundId = id
      s.Volume = volume
      s.Pitch = pitch
    end)
    return s
  end
}
local scriptname = "Spy"
pcall(function()
  player.Backpack[scriptname]:remove()
  char[scriptname]:remove()
  char.Objects:remove()
  player.PlayerGui[scriptname]:remove()
end)
local model = Instance.new("Model", char)
model.Name = "Objects"
local modelB = Instance.new("Model", char)
modelB.Name = scriptname
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = scriptname
local bin = script.Parent
local skincolor = "Really black"
local body = {}
local animate = {}
local obj = {}
function createParts()
  body.Torso = add.Part(model, false, false, skincolor, 1, Vector3.new(2, 2, 1), nil)
  body.ArmLeft, body.ArmRight = add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
  body.LegLeft, body.LegRight = add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
  body.TorsoW = add.Weld(body.Torso, torso, nil)
  body.ArmLeftW, body.ArmRightW = add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, 0.5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, 0.5, 0))
  body.LegLeftW, body.LegRightW = add.Weld(body.LegLeft, body.Torso, CFrame.new(-0.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(0.5, -1.5, 0))
  add.Weld(arm.Left, body.ArmLeft, CFrame.new(0, -0.5, 0))
  add.Weld(arm.Right, body.ArmRight, CFrame.new(0, -0.5, 0))
  torso["Left Hip"].Part0 = body.Torso
  torso["Right Hip"].Part0 = body.Torso
  animate = {
    Torso = function(cf)
      body.Torso.Transparency = 0
      torso.Transparency = 1
      body.TorsoW.C1 = cf
    end,
    ArmLeft = function(cf)
      body.ArmLeftW.C1 = CFrame.new(-1.5, 0.5, 0) * cf
    end,
    ArmRight = function(cf)
      body.ArmRightW.C1 = CFrame.new(1.5, 0.5, 0) * cf
    end,
    LegLeft = function(cf)
      body.LegLeftW.C1 = CFrame.new(-0.5, -1.5, 0) * cf
    end,
    LegRight = function(cf)
      body.LegRightW.C1 = CFrame.new(0.5, -1.5, 0) * cf
    end
  }
  obj.HandleBack = add.Part(modelB, false, false, "Really black", 0, Vector3.new(0.2, 1, 0.2), nil)
  obj.HandleBackW = add.Weld(obj.HandleBack, body.ArmRight, CFrame.new(0, -1.5, 0) * CFrame.Angles(-math.rad(90), 0, 0))
  obj.EdgeBot = add.Part(modelB, false, false, "Really black", 0, Vector3.new(0.2, 0.2, 0.2), nil)
  obj.EdgeBotM = add.Mesh("CylinderMesh", obj.EdgeBot, Vector3.new(1, 1, 1), nil, nil)
  obj.EdgeBotW = add.Weld(obj.EdgeBot, obj.HandleBack, CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90)))
  obj.EdgeTopR = add.Part(modelB, false, false, "Really black", 0, Vector3.new(0.2, 0.2, 0.2), nil)
  obj.EdgeTopRM = add.Mesh("CylinderMesh", obj.EdgeTopR, Vector3.new(1, 1, 1), nil, nil)
  obj.EdgeTopRW = add.Weld(obj.EdgeTopR, obj.HandleBack, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90)))
  obj.Blade = add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(0.2, 0.8, 0.2), nil)
  obj.BladeM = add.Mesh("BlockMesh", obj.Blade, Vector3.new(0.5, 1, 1), nil, nil)
  obj.BladeW = add.Weld(obj.Blade, obj.EdgeTopR, CFrame.new(-0.1, 0, -0.4) * CFrame.Angles(-math.rad(90), math.rad(90), 0))
  obj.Point = add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(0.2, 0.4, 0.2), nil)
  obj.PointM = add.Mesh("SpecialMesh", obj.Point, Vector3.new(0.5, 1, 0.5), nil, "Wedge")
  obj.PointW = add.Weld(obj.Point, obj.Blade, CFrame.new(0, 0.6, 0.05) * CFrame.Angles(0, math.rad(180), 0))
  obj.Point2 = add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(0.2, 0.4, 0.2), nil)
  obj.Point2M = add.Mesh("SpecialMesh", obj.Point2, Vector3.new(0.5, 1, 0.5), nil, "Wedge")
  obj.Point2W = add.Weld(obj.Point2, obj.Blade, CFrame.new(0, 0.6, -0.05))
  obj.Joints = add.Part(modelB, false, false, "Medium mid-gray", 0, Vector3.new(0.2, 0.25, 0.2), nil)
  obj.JointsM = add.Mesh("CylinderMesh", obj.Joints, Vector3.new(0.5, 1, 0.5), nil, nil)
  obj.JointsW = add.Weld(obj.Joints, obj.EdgeBot, nil)
  obj.Joints = add.Part(modelB, false, false, "Medium mid-gray", 0, Vector3.new(0.2, 0.25, 0.2), nil)
  obj.JointsM = add.Mesh("CylinderMesh", obj.Joints, Vector3.new(0.5, 1, 0.5), nil, nil)
  obj.JointsW = add.Weld(obj.Joints, obj.EdgeTopR, nil)
  obj.EdgeTopR2 = add.Part(modelB, false, false, "Really black", 0, Vector3.new(0.2, 0.2, 0.2), nil)
  obj.EdgeTopR2M = add.Mesh("CylinderMesh", obj.EdgeTopR2, Vector3.new(1, 1, 1), nil, nil)
  obj.EdgeTopR2W = add.Weld(obj.EdgeTopR2, obj.Blade, CFrame.new(0, -0.4, -0.1) * CFrame.Angles(math.rad(90), 0, math.rad(90)))
  obj.HandleFor = add.Part(modelB, false, false, "Really black", 0, Vector3.new(0.2, 1, 0.2), nil)
  obj.HandleForW = add.Weld(obj.HandleFor, obj.EdgeTopR2, CFrame.new(0, 0, 0.5) * CFrame.Angles(-math.rad(90), -math.rad(90), 0))
  obj.EdgeBot = add.Part(modelB, false, false, "Really black", 0, Vector3.new(0.2, 0.2, 0.2), nil)
  obj.EdgeBotM = add.Mesh("CylinderMesh", obj.EdgeBot, Vector3.new(1, 1, 1), nil, nil)
  obj.EdgeBotW = add.Weld(obj.EdgeBot, obj.HandleFor, CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90)))
  obj.Joints = add.Part(modelB, false, false, "Medium mid-gray", 0, Vector3.new(0.2, 0.25, 0.2), nil)
  obj.JointsM = add.Mesh("CylinderMesh", obj.Joints, Vector3.new(0.5, 1, 0.5), nil, nil)
  obj.JointsW = add.Weld(obj.Joints, obj.EdgeBot, nil)
  obj.Joints = add.Part(modelB, false, false, "Medium mid-gray", 0, Vector3.new(0.2, 0.25, 0.2), nil)
  obj.JointsM = add.Mesh("CylinderMesh", obj.Joints, Vector3.new(0.5, 1, 0.5), nil, nil)
  obj.JointsW = add.Weld(obj.Joints, obj.EdgeTopR2, nil)
end
function removeParts()
  p(function()
    if torso then
      torso["Left Hip"].Part0 = torso
      torso["Right Hip"].Part0 = torso
    end
    for i, v in pairs(model:children()) do
      v:remove()
    end
    for i, v in pairs(modelB:children()) do
      v:remove()
    end
    for i, v in pairs(char:children()) do
      v.Transparency = 0
    end
  end)
end
local trailDeb = false
local using = false
local combo = 1
local onStab = false
local keyDeb = false
local switch = false
local switch2 = false
local keyDeb2 = false
local hitDeb = false
local dmg = math.random(5, 10)
local instakill = 75
local speed = 20
local pitch = 0.8
local crit = add.Sound(torso, "http://www.roblox.com/asset/?id=296102734", 1, 1)
local Slash = add.Sound(torso, "rbxasset://sounds//swordslash.wav", 1, pitch)
local Hit = add.Sound(torso, "http://www.roblox.com/asset/?id=30715280", 1, 1)
local Abscond = add.Sound(torso, "http://www.roblox.com/asset/?id=195575792", 1, 1)
local Equip = add.Sound(torso, "http://www.roblox.com/asset/?id=13510737", 1, 1)
local attackLabel = add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Invisible(Q)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
local attackLabel2 = add.Gui("TextLabel", attackLabel, "Really black", "Really black", "White", "Size18", "Disguise(E)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
if PlayerGui:findFirstChild("manaGUI", true) ~= nil then
  PlayerGui:findFirstChild("manaGUI", true).Parent = nil
end
local fengui = Instance.new("GuiMain")
fengui.Parent = PlayerGui
fengui.Name = "manaGUI"
local fenframe = Instance.new("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Position = UDim2.new(0, 0, 0.2, 0)
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel")
fentext.Parent = fenframe
fentext.Text = "Energy(" .. mana .. ")"
fentext.BackgroundTransparency = 1
fentext.SizeConstraint = "RelativeXY"
fentext.TextXAlignment = "Center"
fentext.TextYAlignment = "Center"
fentext.Position = UDim2.new(0, 80, 1, 200)
local fentext2 = Instance.new("TextLabel")
fentext2.Parent = fenframe
fentext2.Text = " "
fentext2.BackgroundTransparency = 0
fentext2.BackgroundColor3 = Color3.new(0, 0, 0)
fentext2.SizeConstraint = "RelativeXY"
fentext2.TextXAlignment = "Center"
fentext2.TextYAlignment = "Center"
fentext2.Position = UDim2.new(0, 10, 1, 170)
fentext2.Size = UDim2.new(2.79999995, 0, 0.210000306, 0)
local fentext3 = Instance.new("TextLabel")
fentext3.Parent = fenframe
fentext3.Text = " "
fentext3.BackgroundTransparency = 0
fentext3.BackgroundColor3 = Color3.new(1, 1, 0)
fentext3.SizeConstraint = "RelativeXY"
fentext3.TextXAlignment = "Center"
fentext3.TextYAlignment = "Center"
fentext3.Position = UDim2.new(0, 10, 1, 170)
fentext3.Size = UDim2.new(mana / 100, 0, 0.400000006, 0)
coroutine.resume(coroutine.create(function()
  while true do
    wait(0.1)
    fentext3.Size = UDim2.new(mana / 36, 0, 0.200000006, 0)
    fentext.Text = "Cloak..(" .. mana .. "%)"
    fentext3.BackgroundColor3 = Color3.new(0, 0, 1)
    fentext.TextStrokeTransparency = 0
    fentext.TextColor3 = Color3.new(0, 0, 1)
  end
end))
function lightningGen(startPos, endPos)
  local magnitude = (startPos - endPos).magnitude
  local distance = (startPos + endPos) / 2
  local pattern = add.Part(workspace, true, false, "White", 1, Vector3.new(0.2, 0.2, magnitude), CFrame.new(distance, startPos))
  local startPosProx = startPos
  for i = 1, 9 do
    do
      local startPosProx2 = startPosProx
      local random = Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
      local findSize = pattern.Size.z / 10
      local findOffSet = pattern.CFrame.lookVector * -1
      local compute = i * findSize * findOffSet
      local newStartPos = startPos
      local newEndPos = CFrame.new(random + compute + newStartPos).p
      local magnitude = (startPosProx2 - newEndPos).magnitude
      local distance = (startPosProx2 + newEndPos) / 2
      local lightning = add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(0.2, 0.2, magnitude), CFrame.new(distance, startPosProx2))
      c(function()
        for i = 0, 1, 0.1 do
          wait()
          lightning.Transparency = i
        end
        lightning:remove()
      end)
      startPosProx = newEndPos
    end
  end
  pattern:remove()
end
function computePos(pos, pos2)
  local pos3 = Vector3.new(pos2.x, pos.y, pos2.z)
  torso.CFrame = CFrame.new(pos, pos3)
  return pos3
end
function nearTorso(pos, dis)
  local temp
  local distance = dis
  for i, v in pairs(workspace:children()) do
    if v:isA("Model") then
      temp = v:findFirstChild("Torso")
      local humanoid = v:findFirstChild("Humanoid")
      if temp and humanoid and v ~= char and distance > (temp.CFrame.p - pos).magnitude then
        distance = (temp.CFrame.p - pos).magnitude
        return temp
      end
    end
  end
end
function trail(pos, cf, col)
  c(function()
    local old = (pos.CFrame * cf).p
    while trailDeb == true do
      wait()
      do
        local new = (pos.CFrame * cf).p
        local mag = (old - new).magnitude
        local dis = (old + new) / 2
        local trail = add.Part(workspace, true, false, col, 0, Vector3.new(0.2, mag, 0.2), CFrame.new(dis, new) * CFrame.Angles(math.pi / 2, 0, 0))
        trail.Name = "Trail"
        local tMesh = add.Mesh("CylinderMesh", trail, Vector3.new(0.5, 1, 0.5), nil, nil)
        old = new
        c(function()
          for i = 1, 0, -0.1 do
            wait()
            tMesh.Scale = tMesh.Scale * Vector3.new(i, 1, i)
          end
          trail:remove()
        end)
        c(function()
          for i = 0, 1, 0.1 do
            wait()
            trail.Transparency = i
          end
        end)
      end
    end
  end)
end
function running()
  animate.ArmLeft(CFrame.Angles(-math.rad(45), 0, -math.rad(15)))
  animate.ArmRight(CFrame.Angles(math.rad(45), 0, math.rad(15)))
  obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(-math.rad(90), 0, 0)
end
function hit(h)
  if using == true and switch == false then
    if onStab == false and h.Parent:findFirstChild("Humanoid") and h.Parent ~= char and hitDeb == false then
      hitDeb = true
      print("NormalStab")
      Hit:play()
      local hHuman = h.Parent:findFirstChild("Humanoid")
      HitHealth = hHuman.Health
      hHuman.Health = hHuman.Health - dmg
      if HitHealth ~= hHuman.Health and HitHealth ~= 0 and hHuman.Health <= 0 and hHuman.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      local fakeM = Instance.new("Model", workspace)
      fakeM.Name = -dmg
      local fakeH = Instance.new("Humanoid", fakeM)
      fakeH.MaxHealth = 0
      fakeH.Health = 0
      local effect = add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame)
      effect.Name = "Head"
      local fakeMesh = add.Mesh("CylinderMesh", effect, Vector3.new(1, 0.5, 1), nil, nil)
      local bp = Instance.new("BodyPosition", effect)
      bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
      bp.position = h.Position + Vector3.new(0, 4, 0)
      game.Debris:addItem(fakeM, 2)
      wait(1)
      hitDeb = false
    end
    if onStab == true and h.Parent ~= char and h.Parent:findFirstChild("Humanoid") and hitDeb == false then
      hitDeb = true
      print("NormalStab")
      crit:play()
      local hHuman = h.Parent:findFirstChild("Humanoid")
      hHuman.Health = hHuman.Health - instakill
      local fakeM = Instance.new("Model", workspace)
      fakeM.Name = "BACKSTABBED"
      local fakeH = Instance.new("Humanoid", fakeM)
      fakeH.MaxHealth = 0
      fakeH.Health = 0
      local effect = add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame)
      effect.Name = "Head"
      local fakeMesh = add.Mesh("CylinderMesh", effect, Vector3.new(1, 0.5, 1), nil, nil)
      local bp = Instance.new("BodyPosition", effect)
      bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
      bp.position = h.Position + Vector3.new(0, 4, 0)
      game.Debris:addItem(fakeM, 2)
      wait(1)
      hitDeb = false
    end
  end
end
function findStab()
  while using == false do
    wait()
    local nTorso = nearTorso(torso.CFrame.p, 3)
    if nTorso then
      local offSet = nTorso.CFrame:toObjectSpace(torso.CFrame)
      if offSet.z > 0 then
        onStab = true
        animate.ArmRight(CFrame.Angles(math.rad(135), 0, 0))
        obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
      else
        onStab = false
        running()
      end
    else
      onStab = false
      running()
    end
  end
end
function attack()
  combo = combo + 1
  if using == false then
    using = true
    for i, v in pairs(modelB:children()) do
      v.Touched:connect(hit)
    end
    if combo == 1 and onStab == false then
      Slash:play()
      for i = 0, 1, 0.2 do
        wait()
        animate.Torso(CFrame.Angles(0, math.rad(45) * i, 0))
        animate.ArmRight(CFrame.Angles(math.rad(90) * i, 0, 0))
        obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(-math.rad(90), 0, math.rad(45) * i)
      end
      for i = 1, 0, -0.2 do
        wait()
        animate.Torso(CFrame.Angles(0, math.rad(45) * i, 0))
        animate.ArmRight(CFrame.Angles(math.rad(90) * i, 0, 0))
        obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(-math.rad(90), 0, math.rad(45) * i)
      end
      if combo > 1 and onStab == false then
        combo = 2
        Slash:play()
        for i = 0, 1, 0.2 do
          wait()
          animate.Torso(CFrame.Angles(0, math.rad(45) * i, 0))
          animate.ArmRight(CFrame.Angles(math.rad(90) * i, 0, math.rad(45) * i))
          obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(-math.rad(90 + 90 * i), 0, 0)
        end
        for i = 1, 0, -0.2 do
          wait()
          animate.Torso(CFrame.Angles(0, math.rad(45) * i, 0))
          animate.ArmRight(CFrame.Angles(math.rad(90) * i, 0, math.rad(45) * i))
          obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(-math.rad(90 + 90 * i), 0, 0)
        end
      end
    end
    if onStab == true then
      for i = 0, 1, 0.2 do
        wait()
        animate.ArmRight(CFrame.Angles(math.rad(135 - 45 * i), 0, 0))
        obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
      end
      onStab = false
    end
    using = false
    combo = 0
    body.Torso.Transparency = 1
    torso.Transparency = 0
    running()
    findStab()
  end
end
function cloakoff()
  d = Instance.new("StringValue", player)
  d.Name = "CLOAKNFOAK"
  game.Debris:AddItem(d, 10)
  keyDeb = true
  switch = false
  using = false
  cloakoffd = true
  coroutine.resume(coroutine.create(function()
    while cloakoffd do
      wait()
      if mana < 100 then
        wait(0.15)
        mana = mana + 1
      end
    end
  end))
  attackLabel.Text = "Invisible(Q)"
  print("2")
  Abscond:play()
  pcall(function()
    char.Sound.Disabled = false
  end)
  modelB.Parent = char
  for i, v in pairs(char:children()) do
    c(function()
      for i = 1, 0, -0.2 do
        wait()
        pcall(function()
          c(function()
            if v.Head ~= nil then
              head.Transparency = 1
            end
          end)
          if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
            v.Transparency = i
          end
        end)
        pcall(function()
          v.Handle.Transparency = i
        end)
        pcall(function()
          v.face.Transparency = i
        end)
        pcall(function()
          v.roblox.Transparency = i
        end)
        pcall(function()
          v.Head.Transparency = i
        end)
      end
    end)
  end
  for i, v in pairs(modelB:children()) do
    c(function()
      for i = 1, 0, -0.2 do
        wait()
        pcall(function()
          v.Transparency = i
        end)
        pcall(function()
          v.Handle.Transparency = i
        end)
        pcall(function()
          v.face.Transparency = i
        end)
      end
    end)
  end
  for i, v in pairs(workspace.CurrentCamera:children()) do
    pcall(function()
      v:remove()
    end)
  end
  wait(0.5)
  keyDeb = false
  findStab()
end
bin.Selected:connect(function(mouse)
  createParts()
  human.WalkSpeed = speed
  running()
  using = true
  Equip:play()
  for i = 1, 0, -0.1 do
    wait()
    obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(-math.rad(90), math.rad(180) * i, 0)
    obj.EdgeTopRW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(90) + math.rad(180) * i, 0, math.rad(90))
    obj.EdgeTopR2W.C1 = CFrame.new(0, -0.4, -0.1) * CFrame.Angles(math.rad(90) + math.rad(180) * i, 0, math.rad(90))
  end
  using = false
  mouse.Button1Down:connect(attack)
  mouse.KeyDown:connect(function(key)
    local key = key:lower()
    if key == "q" and player:FindFirstChild("CLOAKNFOAK") == nil and keyDeb == false and switch == false and cloakoffd == true and using == false then
      cloakoffd = false
      keyDeb = true
      switch = true
      using = true
      coroutine.resume(coroutine.create(function()
        while switch do
          wait()
          if mana > 2 then
            wait(0.25)
            mana = mana - 2
            if mana <= 2 then
              cloakoff()
            end
          end
        end
      end))
      attackLabel.Text = "Visible(Q)"
      print("1")
      Abscond:play()
      pcall(function()
        char.Sound.Disabled = true
      end)
      for i, v in pairs(char:children()) do
        c(function()
          for i = 0, 1, 0.2 do
            wait()
            pcall(function()
              c(function()
                if v.Head ~= nil then
                  head.Transparency = 1
                end
              end)
              if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
                v.Transparency = i
              end
            end)
            pcall(function()
              v.Handle.Transparency = i
            end)
            pcall(function()
              v.face.Transparency = i
            end)
            pcall(function()
              v.roblox.Transparency = i
            end)
            pcall(function()
              v.Head.Transparency = i
            end)
          end
        end)
      end
      for i, v in pairs(modelB:children()) do
        c(function()
          for i = 0, 1, 0.2 do
            wait()
            pcall(function()
              if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
                v.Transparency = i
              end
            end)
            pcall(function()
              v.Handle.Transparency = i
            end)
            pcall(function()
              v.face.Transparency = i
            end)
          end
        end)
      end
      wait(0.5)
      local fakeModel = Instance.new("Model", workspace.CurrentCamera)
      fakeModel.Name = "YOU"
      local fakeHumanoid = Instance.new("Humanoid", fakeModel)
      fakeHumanoid.Health = 0
      fakeHumanoid.MaxHealth = 0
      local fakeHead = add.Part(fakeModel, false, false, "Bright green", 0, Vector3.new(1, 1, 1), nil)
      fakeHead.Name = "Head"
      local fakeHeadM = add.Mesh("SpecialMesh", fakeHead, Vector3.new(1, 1.5, 1), nil, "File")
      fakeHeadM.MeshId = "http://www.roblox.com/Asset/?id=9756362"
      local fakeHeadW = add.Weld(fakeHead, torso, CFrame.new(0, 1.5, 0))
      modelB.Parent = workspace.CurrentCamera
      for i, v in pairs(modelB:children()) do
        c(function()
          for i = 0, 1, 0.2 do
            swait()
            pcall(function()
              v.Transparency = 0.5
            end)
            pcall(function()
              v.Handle.Transparency = 0.5
            end)
            pcall(function()
              v.face.Transparency = 0.5
            end)
          end
        end)
      end
      keyDeb = false
    elseif key == "q" and keyDeb == false and switch == true and cloakoffd == false and using == true then
      cloakoffd = true
      keyDeb = true
      switch = false
      using = false
      d = Instance.new("StringValue", player)
      d.Name = "CLOAKNFOAK"
      game.Debris:AddItem(d, 3)
      coroutine.resume(coroutine.create(function()
        while cloakoffd do
          wait()
          if mana < 100 then
            wait(0.1555)
            mana = mana + 1
          end
        end
      end))
      attackLabel.Text = "Invisible(Q)"
      print("2")
      Abscond:play()
      pcall(function()
        char.Sound.Disabled = false
      end)
      modelB.Parent = char
      for i, v in pairs(char:children()) do
        c(function()
          for i = 1, 0, -0.2 do
            wait()
            pcall(function()
              c(function()
                if v.Head ~= nil then
                  head.Transparency = 1
                end
              end)
              if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
                v.Transparency = i
              end
            end)
            pcall(function()
              v.Handle.Transparency = i
            end)
            pcall(function()
              v.face.Transparency = i
            end)
            pcall(function()
              v.roblox.Transparency = i
            end)
            pcall(function()
              v.Head.Transparency = i
            end)
          end
        end)
      end
      for i, v in pairs(modelB:children()) do
        c(function()
          for i = 1, 0, -0.2 do
            wait()
            pcall(function()
              v.Transparency = i
            end)
            pcall(function()
              v.Handle.Transparency = i
            end)
            pcall(function()
              v.face.Transparency = i
            end)
          end
        end)
      end
      for i, v in pairs(workspace.CurrentCamera:children()) do
        pcall(function()
          v:remove()
        end)
      end
      wait(0.5)
      keyDeb = false
      findStab()
    end
    local xSpace = 0
    if key == "e" and keyDeb2 == false and switch2 == false then
      keyDeb2 = true
      switch2 = true
      attackLabel2.Text = "Menu:"
      for i, v in pairs(game.Players:children()) do
        if v ~= player then
          xSpace = xSpace + 1
          do
            local playersLabel = add.Gui("TextButton", attackLabel2, "Really black", "Really black", "Bright red", "Size18", v.Name, 0, UDim2.new(1, 0, 1, 0), UDim2.new(xSpace, 0, 0, 0))
            playersLabel.MouseButton1Click:connect(function()
              Abscond:play()
              pcall(function()
                for i, v in pairs(char:children()) do
                  pcall(function()
                    v.face:remove()
                  end)
                  pcall(function()
                    v.roblox:remove()
                  end)
                  pcall(function()
                    v.Head:remove()
                  end)
                  if v:IsA("BodyColors") then
                    v:remove()
                  end
                  if v:IsA("Hat") then
                    v:remove()
                  end
                  if v:IsA("ShirtGraphic") then
                    v:remove()
                  end
                  if v:IsA("Pants") then
                    v:remove()
                  end
                  if v:IsA("Shirt") then
                    v:remove()
                  end
                  if v:IsA("CharacterMesh") then
                    v:remove()
                  end
                  if v:IsA("BodyColors") then
                    v:remove()
                  end
                end
                for i, v in pairs(game.Players[playersLabel.Text].Character:children()) do
                  pcall(function()
                    local cloned = v.face:clone()
                    cloned.Parent = head
                    if switch == true then
                      pcall(function()
                        cloned.Transparency = 1
                      end)
                    end
                  end)
                  pcall(function()
                    v.roblox:clone().Parent = torso
                  end)
                  if v:IsA("BodyColors") then
                    v:clone().Parent = char
                  end
                  if v:IsA("Hat") then
                    do
                      local cloned = v:clone()
                      cloned.Parent = char
                      if switch == true then
                        pcall(function()
                          cloned.Handle.Transparency = 1
                        end)
                      end
                    end
                  end
                  if v:IsA("ShirtGraphic") then
                    v:clone().Parent = char
                  end
                  if v:IsA("Pants") then
                    v:clone().Parent = char
                  end
                  if v:IsA("Shirt") then
                    v:clone().Parent = char
                  end
                  if v:IsA("CharacterMesh") then
                    v:clone().Parent = char
                  end
                  if v:IsA("BodyColors") then
                    v:clone().Parent = char
                  end
                end
                head.Transparency = 1
                local fakeModel = Instance.new("Model", char)
                fakeModel.Name = playersLabel.Text
                local fakeHumanoid = Instance.new("Humanoid", fakeModel)
                fakeHumanoid.Health = 100
                fakeHumanoid.MaxHealth = 100
                local fakeHead = add.Part(fakeModel, false, false, game.Players[playersLabel.Text].Character.Head.Color, 0, Vector3.new(1, 1, 1), nil)
                fakeHead.Name = "Head"
                if switch == true then
                  fakeHead.Transparency = 1
                end
                local fakeHeadM = add.Mesh("SpecialMesh", fakeHead, Vector3.new(1.25, 1.25, 1.25), nil, "Head")
                local fakeHeadW = add.Weld(fakeHead, torso, CFrame.new(0, 1.5, 0))
              end)
            end)
          end
        end
      end
      keyDeb2 = false
    elseif key == "e" and keyDeb2 == false and switch2 == true then
      keyDeb2 = true
      switch2 = false
      attackLabel2.Text = "Disguise(E)"
      for i, v in pairs(attackLabel2:children()) do
        pcall(function()
          v:remove()
        end)
      end
      keyDeb2 = false
    end
  end)
  findStab()
end)
bin.Deselected:connect(function()
  Equip:play()
  for i = 0, 1, 0.1 do
    wait()
    obj.HandleBackW.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(-math.rad(90), math.rad(180) * i, 0)
    obj.EdgeTopRW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(90) + math.rad(180) * i, 0, math.rad(90))
    obj.EdgeTopR2W.C1 = CFrame.new(0, -0.4, -0.1) * CFrame.Angles(math.rad(90) + math.rad(180) * i, 0, math.rad(90))
  end
  switch2 = false
  using = false
  for i, v in pairs(attackLabel2:children()) do
    pcall(function()
      v:remove()
    end)
  end
  removeParts()
end)
while true do
  wait()
  if cloakoffd == false and mana <= 2 then
    cloakoff()
  end
end
