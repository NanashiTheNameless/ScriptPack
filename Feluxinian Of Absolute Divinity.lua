name = "XTheShowcaserX"
player = game.Players:WaitForChild(name)
chara = player.Character
debby = game:GetService("Debris")
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
chara.Humanoid.WalkSpeed = 50
chara.Humanoid.JumpPower = 100
if chara:FindFirstChild("Shirt") ~= nil then
  chara.Shirt:Destroy()
end
if chara:FindFirstChild("Pants") ~= nil then
  chara.Pants:Destroy()
end
if chara:FindFirstChild("ShirtGraphic") ~= nil then
  chara.ShirtGraphic:Destroy()
end
local ch = chara:GetChildren()
for i = 1, #ch do
  if ch[i].ClassName == "Shirt" or ch[i].ClassName == "Pants" or ch[i].ClassName == "ShirtGraphic" or ch[i].ClassName == "Accessory" then
    ch[i]:Destroy()
  elseif ch[i].ClassName == "Part" then
    ch[i].BrickColor = BrickColor.new("Institutional white")
    if ch[i].Name == "Torso" then
      ch[i].roblox.Texture = ""
    elseif ch[i].Name == "Head" then
      ch[i].face.Texture = "http://www.roblox.com/asset/?id=679717479"
      ch[i].Transparency = 1
    end
  end
end
local shirt = Instance.new("Shirt", chara)
shirt.Name = "Shirt"
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=679629869"
local pants = Instance.new("Pants", chara)
pants.Name = "Pants"
pants.PantsTemplate = "http://www.roblox.com/asset/?id=679630079"
local p = Instance.new("Part", chara)
p.Name = "Ears"
p.BrickColor = BrickColor.new("Institutional white")
p.Size = Vector3.new(0, 0, 0)
p.BottomSurface = 0
p.TopSurface = 0
p.Position = chara.Head.Position
local pweld = Instance.new("Weld", p)
pweld.Part0 = chara.Head
pweld.Part1 = p
pweld.C0 = CFrame.new(0, 0.7, 0)
pweld.C0 = pweld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(180))
local earmesh = Instance.new("SpecialMesh", p)
earmesh.MeshType = "FileMesh"
earmesh.MeshId = "http://www.roblox.com/asset/?id=1374148"
earmesh.Scale = Vector3.new(1.1, 1.5, 3)
local hair = p:Clone()
hair.Name = "Hair"
hair.Parent = chara
hair.Position = chara.Head.Position
hair.Mesh.MeshId = "http://www.roblox.com/asset/?id=145283773"
hair.Mesh.Scale = Vector3.new(0.7, 0.5, 0.7)
hair.Mesh.Offset = Vector3.new(0, -0.2, 0)
local hweld = Instance.new("Weld", hair)
hweld.Part0 = chara.Head
hweld.Part1 = hair
hweld.C0 = CFrame.new(0, 0.7, 0)
hweld.C0 = hweld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(180), math.rad(180))
local fakehead = chara.Head:clone()
fakehead.Name = "FakeHead"
fakehead.Parent = chara
fakehead.Position = chara.Head.Position
fakehead.Transparency = 0
fakehead.face.Texture = "http://www.roblox.com/asset/?id=679717621"
local fakeweld = Instance.new("Weld", fakehead)
fakeweld.Part0 = chara.Head
fakeweld.Part1 = fakehead
local tail = Instance.new("Part", chara)
tail.Name = "Tail"
tail.Size = Vector3.new(0, 0, 0)
tail.Position = chara.Torso.Position
tail.BrickColor = BrickColor.new("Institutional white")
local tailmesh = Instance.new("SpecialMesh", tail)
tailmesh.MeshType = "FileMesh"
tailmesh.MeshId = "http://www.roblox.com/asset/?id=188635159"
tailmesh.Scale = Vector3.new(1, 1, 2)
local tailweld = Instance.new("Weld", tail)
tailweld.Part0 = chara.Torso
tailweld.Part1 = tail
tailweld.C0 = CFrame.new(-1.1, -1.5, 0.7)
tailweld.C0 = tailweld.C0 * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(180))
local sholpad = Instance.new("Part", chara)
sholpad.Name = "SholPads"
sholpad.Size = Vector3.new(1, 0.4, 1)
sholpad.Reflectance = 0.3
sholpad.BottomSurface = 0
sholpad.TopSurface = 0
sholpad.BrickColor = BrickColor.new("Really red")
sholpad.Position = chara.Torso.Position
local padweld = Instance.new("Weld", sholpad)
padweld.Part0 = chara.Torso
padweld.Part1 = sholpad
padweld.C0 = CFrame.new(0, 0.9, 0)
local padmesh = Instance.new("SpecialMesh", sholpad)
padmesh.MeshType = "FileMesh"
padmesh.MeshId = "http://www.roblox.com/asset/?id=574448286"
padmesh.Scale = Vector3.new(1, 0.4, 1)
local cape = Instance.new("Part", chara)
cape.Name = "Cape"
cape.CanCollide = false
cape.Size = Vector3.new(2, 4, 0.2)
cape.Position = chara.Torso.Position
cape.BrickColor = BrickColor.new("Institutional white")
local capeweld = Instance.new("Weld", cape)
capeweld.Part0 = chara.Torso
capeweld.Part1 = cape
capeweld.C0 = CFrame.new(0, -1.1, 0.8)
capeweld.C0 = capeweld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0)
local hand1 = Instance.new("Part", chara)
hand1.Name = "Hand1"
hand1.Size = Vector3.new(0.8, 0.8, 0.8)
hand1.Transparency = 1
hand1.Position = chara["Left Arm"].Position
local hand1weld = Instance.new("Weld", hand1)
hand1weld.Part0 = chara["Left Arm"]
hand1weld.Part1 = hand1
hand1weld.C0 = CFrame.new(0, -1, 0)
local hand2 = hand1:Clone()
hand2.Name = "Hand2"
hand2.Parent = chara
hand2.Position = chara["Right Arm"].Position
local hand2weld = Instance.new("Weld", hand2)
hand2weld.Part0 = chara["Right Arm"]
hand2weld.Part1 = hand2
hand2weld.C0 = CFrame.new(0, -1, 0)
local orbuu = Instance.new("Part", chara)
orbuu.Size = Vector3.new(0, 0, 0)
orbuu.Name = "DiamondPoint"
orbuu.Anchored = true
orbuu.CanCollide = false
orbuu.Transparency = 1
local orbuur = Instance.new("Part", chara)
orbuur.Size = Vector3.new(1, 1, 1)
orbuur.Name = "Diamond"
orbuur.Position = chara.Head.Position
orbuur.CanCollide = false
orbuur.BrickColor = BrickColor.new("Institutional white")
orbuur.Reflectance = 1
local orbforce = Instance.new("BodyPosition", orbuur)
orbforce.D = 1000
local meshooo = Instance.new("SpecialMesh", orbuur)
meshooo.MeshType = "FileMesh"
meshooo.MeshId = "http://www.roblox.com/asset/?id=9756362"
local RotationSpeed = 5
local BobSpeed = 2
local RotationDist = Vector3.new(10, 0, 0)
local dt = 0
local currentTime = 0
local laserpoint = orbuu:Clone()
laserpoint.Parent = chara
laserpoint.Position = chara.Torso.Position
laserpoint.Name = "LaserPoint"
laserpoint.Anchored = false
local lsptweld = Instance.new("Weld", laserpoint)
lsptweld.Part0 = chara.Torso
lsptweld.Part1 = laserpoint
lsptweld.C0 = CFrame.new(0, 6, 0)
local summonsound = Instance.new("Sound", chara.Torso)
summonsound.SoundId = "http://www.roblox.com/asset/?id=367850772"
summonsound.Volume = 1
local lassnd = Instance.new("Sound", orbuur)
lassnd.SoundId = "http://www.roblox.com/asset/?id=228343271"
lassnd.Volume = 1
local blastsnd = Instance.new("Sound", chara.Torso)
blastsnd.SoundId = "http://www.roblox.com/asset/?id=200633327"
blastsnd.Volume = 1
local metsnd = Instance.new("Sound", chara.Torso)
metsnd.SoundId = "http://www.roblox.com/asset/?id=367850840"
metsnd.Volume = 1
local swdsnd = Instance.new("Sound", chara.Torso)
swdsnd.SoundId = "http://www.roblox.com/asset/?id=231917758"
swdsnd.Volume = 1
local swd2snd = Instance.new("Sound", chara.Torso)
swd2snd.SoundId = "http://www.roblox.com/asset/?id=154965962"
swd2snd.Volume = 1
local hitsnd = Instance.new("Sound", chara.Torso)
hitsnd.SoundId = "http://www.roblox.com/asset/?id=154965973"
hitsnd.Volume = 1
local eckssnd = Instance.new("Sound", chara.Torso)
eckssnd.SoundId = "http://www.roblox.com/asset/?id=258057783"
eckssnd.Volume = 1
local music1 = Instance.new("Sound", chara.Torso)
music1.SoundId = "http://www.roblox.com/asset/?id=547275939"
music1.Volume = 1
music1.Looped = true
music1:Play()
color3colour = {
  BrickColor.new("Really red").Color,
  BrickColor.new("Neon orange").Color,
  BrickColor.new("New yeller").Color,
  BrickColor.new("Lime green").Color,
  BrickColor.new("Really blue").Color,
  BrickColor.new("Alder").Color
}
breekcolour = {
  BrickColor.new("Really red"),
  BrickColor.new("Neon orange"),
  BrickColor.new("New yeller"),
  BrickColor.new("Lime green"),
  BrickColor.new("Really blue"),
  BrickColor.new("Alder")
}
firecolour = {
  ColorSequenceKeypoint.new(0, BrickColor.new("Really red").Color),
  ColorSequenceKeypoint.new(0.05, BrickColor.new("Neon orange").Color),
  ColorSequenceKeypoint.new(0.1, BrickColor.new("New yeller").Color),
  ColorSequenceKeypoint.new(0.15, BrickColor.new("Lime green").Color),
  ColorSequenceKeypoint.new(0.2, BrickColor.new("Really blue").Color),
  ColorSequenceKeypoint.new(0.25, BrickColor.new("Alder").Color),
  ColorSequenceKeypoint.new(1, BrickColor.new("Alder").Color)
}
barcolour = {
  ColorSequenceKeypoint.new(0, BrickColor.new("Really red").Color),
  ColorSequenceKeypoint.new(0.2, BrickColor.new("Neon orange").Color),
  ColorSequenceKeypoint.new(0.4, BrickColor.new("New yeller").Color),
  ColorSequenceKeypoint.new(0.6, BrickColor.new("Lime green").Color),
  ColorSequenceKeypoint.new(0.8, BrickColor.new("Really blue").Color),
  ColorSequenceKeypoint.new(1, BrickColor.new("Alder").Color)
}
normallife = {
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(1, 1)
}
extendlife = {
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(0.8, 0),
  NumberSequenceKeypoint.new(1, 1)
}
function createrainbow(color, part, texture, size, trans, life, face, speed, accel, velsp, lock, name)
  local fira = Instance.new("ParticleEmitter", part)
  fira.Name = name
  fira.Color = ColorSequence.new(color)
  fira.Size = size
  fira.Texture = texture
  fira.Transparency = trans
  fira.Lifetime = life
  fira.EmissionDirection = face
  fira.Rate = 100000000
  fira.RotSpeed = NumberRange.new(100)
  fira.Speed = speed
  fira.VelocitySpread = velsp
  fira.Acceleration = accel
  fira.LightEmission = 1
  fira.LockedToPart = lock
end
handfire1 = createrainbow(firecolour, hand1, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.4),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Left", NumberRange.new(1), Vector3.new(0, 2, 0), 0, false, "FireEffect")
handfire2 = createrainbow(firecolour, hand2, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.4),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Right", NumberRange.new(1), Vector3.new(0, 2, 0), 0, false, "FireEffect")
createrainbow(barcolour, orbuur, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 1),
  NumberSequenceKeypoint.new(0.8, 1),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Front", NumberRange.new(0), Vector3.new(0, 0, 0), 0, false, "OrbEffect")
local spelleffect = Instance.new("ParticleEmitter", chara.Torso)
spelleffect.Texture = "http://www.roblox.com/asset/?id=679657454"
spelleffect.Speed = NumberRange.new(0)
spelleffect.LightEmission = 1
spelleffect.Transparency = NumberSequence.new(normallife)
spelleffect.Size = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(1, 10)
})
spelleffect.Rate = 0.001
spelleffect.Rotation = NumberRange.new(0, 359)
spelleffect.RotSpeed = NumberRange.new(100)
spelleffect.Lifetime = NumberRange.new(1)
createrainbow(barcolour, hand2, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 1),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(normallife), NumberRange.new(1), "Front", NumberRange.new(10), Vector3.new(0, 0, 0), 1000, true, "PowerEffect")
powereffect = hand2.PowerEffect
powereffect.Enabled = false
local naeeym = Instance.new("BillboardGui", chara)
naeeym.Size = UDim2.new(0, 100, 0, 40)
naeeym.StudsOffset = Vector3.new(0, 2, 0)
naeeym.Adornee = chara.Head
local tecks = Instance.new("TextLabel", naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = "The Feluxinian of Absolute Divinity"
tecks.Font = "Fantasy"
tecks.FontSize = "Size24"
tecks.TextStrokeTransparency = 0
tecks.TextColor3 = Color3.new(1, 1, 1)
tecks.TextStrokeColor3 = BrickColor.new("Really red").Color
tecks.Size = UDim2.new(1, 0, 0.5, 0)
Void = nil
VoidParts = {}
Equipped = false
Counter = 1
function RayCast(Position, Direction, MaxDistance, IgnoreList)
  return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList)
end
Player = player
Character = chara
Humanoid = Character:FindFirstChild("Humanoid")
Torso = Character:FindFirstChild("Torso")
if not Player or not Humanoid or Humanoid.Health == 0 or not chara.Torso then
  return
end
Equipped = true
Void = Instance.new("Model")
Void.Name = "Void"
Angle = 0
for i = 1, 1 do
  local VoidPart = Instance.new("Part")
  VoidPart.Name = "VoidPart"
  VoidPart.Transparency = 1
  VoidPart.BrickColor = BrickColor.new("Really black")
  VoidPart.Material = Enum.Material.Plastic
  VoidPart.Shape = Enum.PartType.Block
  VoidPart.FormFactor = Enum.FormFactor.Custom
  VoidPart.TopSurface = Enum.SurfaceType.Smooth
  VoidPart.BottomSurface = Enum.SurfaceType.Smooth
  VoidPart.Anchored = true
  VoidPart.CanCollide = false
  VoidPart.Locked = true
  VoidPart.Size = Vector3.new(10, 0.2, 10)
  fiyer = createrainbow(firecolour, VoidPart, "http://www.roblox.com/asset/?id=224413104", NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.4),
    NumberSequenceKeypoint.new(1, 0)
  }), NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0),
    NumberSequenceKeypoint.new(0.99, 0),
    NumberSequenceKeypoint.new(1, 1)
  }), NumberRange.new(10), "Top", NumberRange.new(2), Vector3.new(0, 2, 0), 0, false, "FireEffect")
  VoidPart.FireEffect.Rate = 10
  local BlockMesh = Instance.new("BlockMesh")
  BlockMesh.Scale = Vector3.new(1.5, 1, 1.5)
  BlockMesh.Parent = VoidPart
  VoidPart.Parent = Void
  local Star = Instance.new("Decal", VoidPart)
  Star.Texture = "http://www.roblox.com/asset/?id=685910499"
  Star.Face = "Top"
  local Light = Instance.new("PointLight", VoidPart)
  Light.Color = Color3.new(1, 1, 1)
  Light.Brightness = 100
  Light.Range = 10
  table.insert(VoidParts, VoidPart)
end
Spawn(function()
  while Equipped and Humanoid.Parent and Humanoid.Health > 0 and chara do
    if Angle == 360 then
      Angle = 0
    end
    Angle = Angle + 0.05
    chara.Humanoid.MaxHealth = math.huge
    chara.Humanoid.Health = math.huge
    Counter = Counter + 1
    if Counter == 7 then
      Counter = 1
    end
    tecks.TextStrokeColor3 = color3colour[Counter]
    fakehead.face.Color3 = color3colour[Counter]
    Void.VoidPart.Decal.Color3 = color3colour[Counter]
    Void.VoidPart.PointLight.Color = color3colour[Counter]
    sholpad.BrickColor = breekcolour[Counter]
    local parentPos = chara.Torso.CFrame
    local rotation = CFrame.Angles(0, RotationSpeed * currentTime, 0)
    local bob = Vector3.new(0, BobSpeed * math.sin(currentTime), 0)
    orbuu.CFrame = parentPos + bob + rotation * RotationDist
    dt, currentTime = wait(0.025)
    if activebeam == true then
      orbforce.Position = laserpoint.Position
    else
      orbforce.Position = orbuu.Position
    end
    local Hit, EndPosition = RayCast(chara.Torso.Position, Vector3.new(0, -1, 0), chara.Torso.Size.Y * 6.5, {Character})
    if Hit then
      if not Void.Parent then
        Void.Parent = Character
      end
      for i, v in pairs(VoidParts) do
        v.CFrame = CFrame.new(chara.Torso.Position.X, EndPosition.Y, chara.Torso.Position.Z) * CFrame.Angles(0, Angle + i, 0)
      end
    else
      Void.Parent = nil
    end
    wait()
  end
end)
function chat(string)
  if chara:FindFirstChild("TalkingBillBoard") ~= nil then
    chara:FindFirstChild("TalkingBillBoard"):destroy()
  end
  local naeeym2 = Instance.new("BillboardGui", chara)
  naeeym2.Size = UDim2.new(0, 100, 0, 40)
  naeeym2.StudsOffset = Vector3.new(0, 4, 0)
  naeeym2.Adornee = chara.Head
  naeeym2.Name = "TalkingBillBoard"
  local tecks2 = Instance.new("TextLabel", naeeym2)
  tecks2.BackgroundTransparency = 1
  tecks2.BorderSizePixel = 0
  tecks2.Text = string
  tecks2.Font = "Fantasy"
  tecks2.FontSize = "Size24"
  tecks2.TextStrokeTransparency = 0
  tecks2.TextColor3 = Color3.new(1, 1, 1)
  tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
  tecks2.Size = UDim2.new(1, 0, 0.5, 0)
  debby:AddItem(naeeym2, 1)
end
local tool = Instance.new("Tool", player.Backpack)
tool.Name = "Holy Energy"
tool.RequiresHandle = false
tool.CanBeDropped = false
music = true
activebeam = false
activegrab = false
didgrab = false
local blasta = Instance.new("Animation", tool)
blasta.AnimationId = "http://www.roblox.com/asset/?id=86504773"
local blastanim = chara.Humanoid:LoadAnimation(blasta)
local summona = Instance.new("Animation", tool)
summona.AnimationId = "http://www.roblox.com/asset/?id=83994319"
local summonanim = chara.Humanoid:LoadAnimation(summona)
local spina = Instance.new("Animation", tool)
spina.AnimationId = "http://www.roblox.com/asset/?id=235542946"
local spinanim = chara.Humanoid:LoadAnimation(spina)
function dealdmg(dude, dmg, spread)
  local finaldmg = dmg + math.random(-spread, spread)
  dude.Humanoid.Health = dude.Humanoid.Health - finaldmg
  if chara:FindFirstChild("TalkingBillBoard") ~= nil then
    chara:FindFirstChild("TalkingBillBoard"):destroy()
  end
  local naeeym2 = Instance.new("BillboardGui", dude)
  naeeym2.Size = UDim2.new(0, 100, 0, 40)
  naeeym2.StudsOffset = Vector3.new(0, math.random(1, 5), 0)
  naeeym2.Adornee = dude.Head
  naeeym2.Name = "TalkingBillBoard"
  local tecks2 = Instance.new("TextLabel", naeeym2)
  tecks2.Position = UDim2.new(0, math.random(-50, 50), 0, math.random(-50, 50))
  tecks2.BackgroundTransparency = 1
  tecks2.BorderSizePixel = 0
  tecks2.Text = "-" .. finaldmg
  tecks2.Font = "Fantasy"
  tecks2.FontSize = "Size12"
  tecks2.TextStrokeTransparency = 0
  tecks2.TextColor3 = Color3.new(1, 1, 1)
  tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
  tecks2.Size = UDim2.new(1, 0, 0.5, 0)
  debby:AddItem(naeeym2, 1)
end
local LIGHTNING_STRIKE_DURATION = 3
local LIGHTNING_STRIKE_COOLDOWN = 0
local LIGHTNING_STRIKE_HEIGHT = 500
local LIGHTNING_STRIKE_LAST_TIME = 0.2
local LIGHTNING_TICK_DAMAGE = 30
function WaitForChild(parent, child)
  while not parent:FindFirstChild(child) do
    parent.ChildAdded:wait()
  end
  return parent[child]
end
local Tool2 = tool
local Character2, Humanoid2, Mouse, KeyDownConn, KeyUpConn
local enabled = false
Tool2.Enabled = true
function checkLightningHit(newLightning, lightningStart, lightningEnd, EffectPart)
  newLightning.Transparency = 0
  newLightning.BrickColor = breekcolour[math.random(1, #breekcolour)]
  newLightning.Material = Enum.Material.Neon
  local newLightningSound = Instance.new("Sound", game.Workspace)
  newLightningSound.SoundId = "http://www.roblox.com/asset/?id=224339201"
  newLightningSound.Pitch = 1 + math.rad(-0.1, 0.1)
  newLightningSound.Volume = 1
  newLightningSound.PlayOnRemove = true
  newLightningSound:Destroy()
  local hitParts = workspace:FindPartsInRegion3(Region3.new(lightningEnd - Vector3.new(2, 0, 2), lightningStart + Vector3.new(2, 0, 2)))
  local hitHums = {}
  for _, hitPart in pairs(hitParts) do
    if hitPart then
      local char = hitPart.Parent
      if char and char.Parent then
        if not char:FindFirstChild("Humanoid") then
          char = char.Parent
        end
        local hum = char:FindFirstChild("Humanoid")
        if hum and not hitHums[hum] then
          if 0 < hum.Health then
          end
          hitHums[hum] = true
          dealdmg(char, 30, 5)
        end
      end
    end
  end
  wait(0.1)
  EffectPart.PowerEffect.Enabled = false
  newLightning.Transparency = 0.25
  newLightning.BrickColor = breekcolour[math.random(1, #breekcolour)]
  wait(0.1)
  newLightning.Transparency = 0.5
  newLightning.BrickColor = breekcolour[math.random(1, #breekcolour)]
  newLightning.Mesh.Scale = newLightning.Mesh.Scale - Vector3.new(1, 0, 1)
  wait(0.1)
  newLightning.Transparency = 0.75
  newLightning.BrickColor = breekcolour[math.random(1, #breekcolour)]
  newLightning.Mesh.Scale = newLightning.Mesh.Scale - Vector3.new(1, 0, 1)
  wait(0.1)
  newLightning:Remove()
  newLightningSound:destroy()
end
function MakeLightningAt(targetPoint)
  print("make lightning at")
  local lightningStart = targetPoint + Vector3.new(0, LIGHTNING_STRIKE_HEIGHT, 0)
  local lightningRay = Ray.new(lightningStart, Vector3.new(0, -LIGHTNING_STRIKE_HEIGHT - 50, 0))
  local lightningHitPart, lightningEnd = workspace:FindPartOnRay(lightningRay)
  local ignoreTable = {}
  while lightningHitPart and lightningHitPart.Parent and lightningHitPart.Parent:FindFirstChild("Humanoid") or lightningHitPart and lightningHitPart.Parent and lightningHitPart.Parent.Parent and lightningHitPart.Parent.Parent:FindFirstChild("Humanoid") do
    table.insert(ignoreTable, lightningHitPart)
    lightningHitPart, lightningEnd = workspace:FindPartOnRayWithIgnoreList(lightningRay, ignoreTable)
  end
  if lightningHitPart then
    print("actually making some lightning")
    do
      local EffectPart = Instance.new("Part", game.Workspace)
      EffectPart.Size = Vector3.new(1, 1, 1)
      EffectPart.Anchored = true
      EffectPart.Transparency = 1
      EffectPart.Position = targetPoint
      debby:AddItem(EffectPart, 3)
      createrainbow(barcolour, EffectPart, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new(5), NumberSequence.new(normallife), NumberRange.new(1), "Front", NumberRange.new(50), Vector3.new(0, 0, 0), 1000, false, "PowerEffect")
      local newLightning = Instance.new("Part")
      newLightning.Size = Vector3.new(1, 1, 1)
      newLightning.Transparency = 0.8
      newLightning.Anchored = false
      newLightning.BrickColor = BrickColor.new("Really red")
      local newCylinderMesh = Instance.new("BlockMesh")
      newCylinderMesh.Scale = Vector3.new(3, lightningStart.Y - lightningEnd.Y, 3)
      newCylinderMesh.Parent = newLightning
      local newLightningFloatForce = Instance.new("BodyForce")
      newLightningFloatForce.force = Vector3.new(0, newLightning:GetMass() * 196.2, 0)
      newLightningFloatForce.Parent = newLightning
      local newBAV = Instance.new("BodyAngularVelocity")
      newBAV.angularvelocity = Vector3.new(0, 10, 0)
      newBAV.P = 1000
      newBAV.maxTorque = Vector3.new(0, newBAV.P, 0)
      newBAV.Parent = newLightning
      newLightning.CanCollide = false
      newLightning.CFrame = CFrame.new((lightningStart + lightningEnd) / 2)
      newLightning.Parent = workspace
      delay(LIGHTNING_STRIKE_LAST_TIME, function()
        checkLightningHit(newLightning, lightningStart, lightningEnd, EffectPart)
      end)
      return true
    end
  else
    return false
  end
end
local lightningStrikeCoroutine
local lightningButtonDown = false
function LightningStrike()
  print("lightningStrike")
  local startTime = tick()
  while tick() - startTime < LIGHTNING_STRIKE_DURATION do
    if Mouse and lightningButtonDown then
      local mouseHit = Mouse.Hit
      if mouseHit and MakeLightningAt(mouseHit.p) then
        wait(0.05)
      end
    end
    wait()
  end
  wait(LIGHTNING_STRIKE_COOLDOWN)
  Tool2.Enabled = true
  powereffect.Enabled = false
  summonanim:Stop()
  lightningStrikeCoroutine = nil
end
Tool3 = tool
Me = chara
SHOOTOH = true
on = true
mode = true
local force = Instance.new("BodyPosition")
force.Parent = nil
local P2 = Instance.new("Part")
P2.formFactor = 0
P2.Parent = nil
P2.BrickColor = BrickColor.new("White")
P2.Anchored = true
P2.CanCollide = false
P2.TopSurface = "Smooth"
P2.BottomSurface = "Smooth"
P2.Name = "Laser"
function explodtouch(hit)
  if hit.Parent:FindFirstChild("Humanoid") ~= nil then
    dealdmg(hit.Parent, 5, 3)
  end
end
function Click(mouse)
  if SHOOTOH == true then
    SHOOTOH = false
    local EffectPart = Instance.new("Part", game.Workspace)
    EffectPart.Size = Vector3.new(1, 1, 1)
    EffectPart.Anchored = true
    EffectPart.Transparency = 1
    createrainbow(barcolour, EffectPart, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new(5), NumberSequence.new(normallife), NumberRange.new(0.5), "Front", NumberRange.new(50), Vector3.new(0, 0, 0), 1000, false, "PowerEffect")
    lassnd:Play()
    for i = 1, 30 do
      local P = Instance.new("Part")
      local Place0 = CFrame.new(orbuur.CFrame.x, orbuur.CFrame.y, orbuur.CFrame.z)
      local Place1 = Mouse.Hit.p
      EffectPart.Position = Place1
      local meshla = Instance.new("BlockMesh", P)
      meshla.Scale = Vector3.new(1, 1, 1)
      P.formFactor = 0
      P.Size = Vector3.new(1, 1, Place0.p - Place1.magnitude)
      P.Name = "Laser"
      P.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p)
      P.Parent = game.Workspace
      P.BrickColor = BrickColor.new("Institutional white")
      P.Material = "Neon"
      P.Anchored = true
      P.CanCollide = false
      P.Locked = true
      P.BottomSurface = "Smooth"
      P.TopSurface = "Smooth"
      local E = Instance.new("Explosion")
      E.Position = Place1
      E.Parent = game.Workspace
      E.BlastPressure = 0
      E.Visible = false
      E.Hit:connect(explodtouch)
      wait(0.01)
      P:remove()
    end
    EffectPart.PowerEffect.Enabled = false
    wait(1)
    SHOOTOH = true
    EffectPart:Destroy()
    local cheeld = script:GetChildren()
    tool.Enabled = true
    summonanim:Stop()
    powereffect.Enabled = false
    activebeam = false
  end
end
function fire(v)
  local vCharacter = chara
  local vPlayer = game.Players:playerFromCharacter(vCharacter)
  local missile = Instance.new("Part", game.Workspace)
  local spawnPos = orbuur.Position
  missile.Position = spawnPos
  missile.Material = "Neon"
  missile.Size = Vector3.new(1, 1, 1)
  missile.Velocity = v * 100
  missile.BrickColor = BrickColor.new("Institutional white")
  missile.Shape = 1
  missile.Name = "Blast"
  createrainbow(firecolour, missile, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.4),
    NumberSequenceKeypoint.new(1, 0)
  }), NumberSequence.new(extendlife), NumberRange.new(1), "Left", NumberRange.new(0), Vector3.new(0, 0, 0), 0, false, "FireEffect")
  local mesh1 = Instance.new("SpecialMesh", missile)
  mesh1.MeshType = "Sphere"
  local force = Instance.new("BodyForce")
  force.force = Vector3.new(0, missile:GetMass() * 196.2, 0)
  force.Parent = missile
  missile.Touched:connect(function(hit)
    if hit ~= orbuur and hit ~= orbuu and hit ~= laserpoint and hit.Name ~= "Blast" and missile.Anchored == false then
      missile.Anchored = true
      missile.CanCollide = false
      missile.FireEffect:Destroy()
      local E = Instance.new("Explosion")
      E.Position = missile.Position
      E.Parent = game.Workspace
      E.BlastPressure = 0
      E.Visible = false
      E.Hit:connect(explodtouch)
      wait(0.1)
      missile.Transparency = 0.25
      missile.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
      wait(0.1)
      missile.Transparency = 0.5
      missile.Mesh.Scale = Vector3.new(2, 2, 2)
      wait(0.1)
      missile.Transparency = 0.75
      missile.Mesh.Scale = Vector3.new(2.5, 2.5, 2.5)
      wait(0.1)
      missile:Destroy()
    end
  end)
  debby:AddItem(missile, 10)
end
function meteorfire(v)
  local vCharacter = chara
  local vPlayer = game.Players:playerFromCharacter(vCharacter)
  local missile = Instance.new("Part", game.Workspace)
  local spawnPos = chara.Head.Position + Vector3.new(0, 100, 0)
  missile.Position = spawnPos
  missile.Material = "Neon"
  missile.Size = Vector3.new(5, 5, 5)
  missile.Velocity = v * 100
  missile.BrickColor = BrickColor.new("Institutional white")
  missile.Shape = 1
  missile.Name = "Blast"
  createrainbow(firecolour, missile, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
    NumberSequenceKeypoint.new(0, 10),
    NumberSequenceKeypoint.new(1, 0)
  }), NumberSequence.new(extendlife), NumberRange.new(5), "Left", NumberRange.new(0), Vector3.new(0, 0, 0), 0, false, "FireEffect")
  createrainbow(firecolour, missile, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new(10), NumberSequence.new(normallife), NumberRange.new(5), "Front", NumberRange.new(30), Vector3.new(0, 0, 0), 1000, false, "PowerEffect")
  missile.PowerEffect.Enabled = false
  local mesh1 = Instance.new("SpecialMesh", missile)
  mesh1.MeshType = "Sphere"
  mesh1.Scale = Vector3.new(2, 2, 2)
  local force = Instance.new("BodyForce")
  force.force = Vector3.new(0, missile:GetMass() * 196.2, 0)
  force.Parent = missile
  missile.Touched:connect(function(hit)
    if hit ~= orbuur and hit ~= orbuu and hit ~= laserpoint and hit.Name ~= "Blast" and missile.Anchored == false then
      missile.Anchored = true
      missile.CanCollide = false
      missile.FireEffect:Destroy()
      missile.PowerEffect.Enabled = true
      local exsnd = Instance.new("Sound", missile)
      exsnd.SoundId = "http://www.roblox.com/asset/?id=142070127"
      exsnd.Volume = 1
      exsnd.PlayOnRemove = true
      exsnd:Destroy()
      local E = Instance.new("Explosion")
      E.Position = missile.Position
      E.Parent = game.Workspace
      E.BlastPressure = 0
      E.BlastRadius = 15
      E.Visible = false
      E.Hit:connect(explodtouch2)
      wait(0.1)
      missile.Transparency = 0.25
      missile.Mesh.Scale = Vector3.new(2.5, 2.5, 2.5)
      wait(0.1)
      missile.Transparency = 0.5
      missile.Mesh.Scale = Vector3.new(3, 3, 3)
      wait(0.1)
      missile.Transparency = 0.75
      missile.Mesh.Scale = Vector3.new(3.5, 3.5, 3.5)
      wait(0.1)
      missile.PowerEffect.Enabled = false
      missile.Transparency = 1
      wait(6)
      missile:Destroy()
    end
  end)
  debby:AddItem(missile, 10)
end
function meteor2fire(v)
  local vCharacter = chara
  local vPlayer = game.Players:playerFromCharacter(vCharacter)
  local missile = Instance.new("Part", game.Workspace)
  local spawnPos = chara.Head.Position + Vector3.new(0, 100, 0)
  missile.Position = spawnPos
  missile.Material = "Neon"
  missile.Size = Vector3.new(10, 10, 10)
  missile.Velocity = v * 50
  missile.BrickColor = BrickColor.new("Institutional white")
  missile.Shape = 1
  missile.Name = "Blast"
  createrainbow(firecolour, missile, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
    NumberSequenceKeypoint.new(0, 15),
    NumberSequenceKeypoint.new(1, 0)
  }), NumberSequence.new(extendlife), NumberRange.new(5), "Left", NumberRange.new(0), Vector3.new(0, 0, 0), 0, false, "FireEffect")
  createrainbow(firecolour, missile, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new(15), NumberSequence.new(normallife), NumberRange.new(5), "Front", NumberRange.new(50), Vector3.new(0, 0, 0), 1000, false, "PowerEffect")
  missile.PowerEffect.Enabled = false
  local mesh1 = Instance.new("SpecialMesh", missile)
  mesh1.MeshType = "Sphere"
  mesh1.Scale = Vector3.new(2, 2, 2)
  local force = Instance.new("BodyForce")
  force.force = Vector3.new(0, missile:GetMass() * 196.2, 0)
  force.Parent = missile
  missile.Touched:connect(function(hit)
    if hit ~= orbuur and hit ~= orbuu and hit ~= laserpoint and hit.Name ~= "Blast" and missile.Anchored == false then
      missile.Anchored = true
      missile.CanCollide = false
      missile.FireEffect:Destroy()
      missile.PowerEffect.Enabled = true
      local exsnd = Instance.new("Sound", missile)
      exsnd.SoundId = "http://www.roblox.com/asset/?id=142070127"
      exsnd.Volume = 1
      exsnd.Pitch = 0.5
      exsnd.PlayOnRemove = true
      exsnd:Destroy()
      local E = Instance.new("Explosion")
      E.Position = missile.Position
      E.Parent = game.Workspace
      E.BlastPressure = 0
      E.BlastRadius = 30
      E.Visible = false
      E.Hit:connect(explodtouch3)
      wait(0.1)
      missile.Transparency = 0.25
      missile.Mesh.Scale = Vector3.new(2.5, 2.5, 2.5)
      wait(0.1)
      missile.Transparency = 0.5
      missile.Mesh.Scale = Vector3.new(3, 3, 3)
      wait(0.1)
      missile.Transparency = 0.75
      missile.Mesh.Scale = Vector3.new(3.5, 3.5, 3.5)
      wait(0.1)
      missile.PowerEffect.Enabled = false
      missile.Transparency = 1
      wait(6)
      missile:Destroy()
    end
  end)
  debby:AddItem(missile, 20)
end
function explodtouch2(hit)
  if hit.Parent:FindFirstChild("Humanoid") ~= nil then
    dealdmg(hit.Parent, 10, 5)
  end
end
function explodtouch3(hit)
  if hit.Parent:FindFirstChild("Humanoid") ~= nil then
    dealdmg(hit.Parent, 20, 5)
  end
end
function swordsummon()
  spinanim:Play()
  local sword1 = Instance.new("Part", chara)
  sword1.Size = Vector3.new(1, 10, 1)
  sword1.BottomSurface = 0
  sword1.TopSurface = 1
  sword1.BrickColor = BrickColor.new("Institutional white")
  sword1.Reflectance = 1
  sword1.CanCollide = false
  sword1.Position = chara["Left Arm"].Position
  local swordmesh = Instance.new("SpecialMesh", sword1)
  swordmesh.MeshId = "http://www.roblox.com/asset/?id=181327453"
  swordmesh.Offset = Vector3.new(0, -1, 0)
  swordmesh.Scale = Vector3.new(3, 3, 3)
  createrainbow(firecolour, sword1, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.4),
    NumberSequenceKeypoint.new(1, 0)
  }), NumberSequence.new(extendlife), NumberRange.new(1), "Left", NumberRange.new(0), Vector3.new(0, 0, 0), 0, false, "FireEffect")
  local sword2 = sword1:Clone()
  sword2.Parent = chara
  sword2.Position = chara["Right Arm"].Position
  local sw1weld = Instance.new("Weld", sword1)
  sw1weld.Part0 = chara["Left Arm"]
  sw1weld.Part1 = sword1
  sw1weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0)
  sw1weld.C0 = CFrame.new(0, 10, 0)
  local sw2weld = Instance.new("Weld", sword2)
  sw2weld.Part0 = chara["Right Arm"]
  sw2weld.Part1 = sword2
  sw2weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0)
  sw2weld.C0 = CFrame.new(0, 10, 0)
  sword1.Touched:connect(swordTouched)
  sword2.Touched:connect(swordTouched)
  for i = 1, 20 do
    wait(0.5)
    swdsnd:Play()
    swd2snd:Play()
  end
  sword1.FireEffect.Enabled = false
  sword2.FireEffect.Enabled = false
  wait(1)
  sword1.FireEffect:Destroy()
  sword2.FireEffect:Destroy()
  wait(0.5)
  sword1.Transparency = 0.5
  sword2.Transparency = 0.5
  wait(0.1)
  sword1:Destroy()
  sword2:Destroy()
  spinanim:Stop()
  tool.Enabled = true
end
function swordTouched(hit)
  if hit.Parent:FindFirstChild("Humanoid") ~= nil then
    dealdmg(hit.Parent, 10, 5)
    hitsnd:Play()
  end
end
function grabTouch(hit)
  if activegrab == true and didgrab == false and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara then
    local standstillf
    activegrab = false
    didgrab = true
    powereffect.Enabled = false
    summonanim:Stop()
    local hitdude = hit.Parent
    hitdude.Humanoid.Health = 100
    hitdude.Humanoid.MaxHealth = 100
    hitdude.Humanoid.PlatformStand = true
    hitdude.Humanoid.WalkSpeed = 0
    chara.Humanoid.WalkSpeed = 0
    if hitdude:FindFirstChild("Torso") ~= nil then
      hitdude.Torso.CFrame = chara.Torso.CFrame + chara.Torso.CFrame.lookVector * 5
      local standstill = Instance.new("BodyPosition", hitdude.Torso)
      standstill.Position = hitdude.Torso.Position
      standstillf = standstill
    end
    local spellcirclepart = Instance.new("Part", chara)
    spellcirclepart.Size = Vector3.new(1, 1, 1)
    spellcirclepart.Anchored = true
    spellcirclepart.Transparency = 1
    spellcirclepart.CFrame = chara.Torso.CFrame + chara.Torso.CFrame.lookVector * 5 - Vector3.new(0, 2.5, 0)
    local spreadpart = Instance.new("Part", chara)
    spreadpart.Size = Vector3.new(1, 1, 1)
    spreadpart.Anchored = true
    spreadpart.Transparency = 1
    spreadpart.CFrame = spellcirclepart.CFrame + Vector3.new(0, 100, 0)
    local scmesh = Instance.new("BlockMesh", spellcirclepart)
    scmesh.Scale = Vector3.new(1, 1.1, 1)
    local scdec = Instance.new("Decal", spellcirclepart)
    scdec.Texture = "http://www.roblox.com/asset/?id=685910499"
    scdec.Face = "Top"
    scdec.Transparency = 1
    local lite = Instance.new("PointLight", spellcirclepart)
    lite.Enabled = false
    lite.Brightness = 100
    chat("You are not going away...")
    wait(1)
    chara.Torso.CFrame = chara.Torso.CFrame + chara.Torso.CFrame.lookVector * 50
    wait(1)
    summonanim:Play()
    summonsound:Play()
    activebeam = true
    powereffect.Texture = "http://www.roblox.com/asset/?id=454403109"
    powereffect.Enabled = true
    standstillf.Position = standstillf.Position + Vector3.new(0, 10, 0)
    scdec.Transparency = 0.9
    lite.Enabled = true
    lite.Range = 1
    for i = 1, 19 do
      wait(0.05)
      scmesh.Scale = scmesh.Scale + Vector3.new(1, 0, 1)
      scdec.Transparency = scdec.Transparency - 0.05
      lite.Range = lite.Range + 1
    end
    wait(1)
    chat("Crucify.")
    wait(0.5)
    lassnd:Play()
    eckssnd:Play()
    createrainbow(barcolour, spellcirclepart, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
      NumberSequenceKeypoint.new(0, 10),
      NumberSequenceKeypoint.new(0.9, 10),
      NumberSequenceKeypoint.new(1, 0)
    }), NumberSequence.new(extendlife), NumberRange.new(0.75), "Top", NumberRange.new(200), Vector3.new(0, 0, 0), 0, false, "FireEffect")
    createrainbow(barcolour, spreadpart, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
      NumberSequenceKeypoint.new(0, 10),
      NumberSequenceKeypoint.new(0.9, 10),
      NumberSequenceKeypoint.new(1, 0)
    }), NumberSequence.new(extendlife), NumberRange.new(0.25), "Right", NumberRange.new(200), Vector3.new(0, 0, 0), 0, false, "FireEffect")
    createrainbow(barcolour, spreadpart, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
      NumberSequenceKeypoint.new(0, 10),
      NumberSequenceKeypoint.new(0.9, 10),
      NumberSequenceKeypoint.new(1, 0)
    }), NumberSequence.new(extendlife), NumberRange.new(0.25), "Left", NumberRange.new(200), Vector3.new(0, 0, 0), 0, false, "FireEffect2")
    for i = 1, 10 do
      dealdmg(hitdude, 666, 0)
    end
    for i = 1, 9 do
      wait(0.1)
      local che = hitdude:GetChildren()
      for i = 1, #che do
        if che[i].ClassName == "Part" then
          che[i].Transparency = che[i].Transparency + 0.1
        end
      end
    end
    wait(0.1)
    local che = hitdude:GetChildren()
    for i = 1, #che do
      if che[i].ClassName == "Part" then
        che[i]:Destroy()
      end
    end
    wait(3)
    spellcirclepart.FireEffect.Enabled = false
    spreadpart.FireEffect.Enabled = false
    spreadpart.FireEffect2.Enabled = false
    for i = 1, 19 do
      wait(0.05)
      scmesh.Scale = scmesh.Scale - Vector3.new(1, 0, 1)
      scdec.Transparency = scdec.Transparency + 0.05
      lite.Range = lite.Range - 1
    end
    wait(0.05)
    spellcirclepart:Destroy()
    spreadpart:Destroy()
    summonanim:Stop()
    activebeam = false
    powereffect.Enabled = false
    tool.Enabled = true
    chara.Humanoid.WalkSpeed = 50
    didgrab = false
  end
end
chara["Right Arm"].Touched:connect(grabTouch)
function keydowns(key)
  if tool.Enabled == true then
    if key == "z" then
      tool.Enabled = false
      chat("Swords of Light!")
      summonsound:Play()
      swordsummon()
    end
    if key == "x" then
      summonanim:Play()
      summonsound:Play()
      chat("Heaven's Bolts!")
      powereffect.Texture = "http://www.roblox.com/asset/?id=14459921"
      powereffect.Enabled = true
      tool.Enabled = false
      wait(2)
      if not lightningStrikeCoroutine then
        lightningStrikeCoroutine = coroutine.create(LightningStrike)
        coroutine.resume(lightningStrikeCoroutine)
      end
      lightningButtonDown = true
    end
    if key == "c" then
      summonanim:Play()
      summonsound:Play()
      activebeam = true
      chat("Beam of Purity!")
      powereffect.Texture = "rbxasset://textures/particles/sparkles_main.dds"
      powereffect.Enabled = true
      tool.Enabled = false
      wait(2)
      Click()
    end
    if key == "v" then
      summonanim:Play()
      summonsound:Play()
      activebeam = true
      chat("Holy Blast!")
      powereffect.Texture = "http://www.roblox.com/asset/?id=224413104"
      powereffect.Enabled = true
      tool.Enabled = false
      wait(2)
      for i = 1, 6 do
        wait(0.2)
        local saund = blastsnd:Clone()
        saund.Parent = orbuur
        saund.PlayOnRemove = true
        saund:Destroy()
        local targetPos = chara.Humanoid.TargetPoint
        local lookAt = targetPos - orbuur.Position.unit
        fire(lookAt)
      end
      summonanim:Stop()
      activebeam = false
      powereffect.Enabled = false
      tool.Enabled = true
    end
    if key == "b" then
      summonanim:Play()
      summonsound:Play()
      chat("Gaia Shatterer!")
      powereffect.Texture = "http://www.roblox.com/asset/?id=26356341"
      powereffect.Enabled = true
      tool.Enabled = false
      wait(2)
      for i = 1, 5 do
        wait(0.5)
        local saund = metsnd:Clone()
        saund.Parent = orbuur
        saund.PlayOnRemove = true
        saund:Destroy()
        local targetPos = chara.Humanoid.TargetPoint
        local lookAt = targetPos - (chara.Head.Position + Vector3.new(0, 100, 0)).unit
        meteorfire(lookAt)
      end
      wait(0.7)
      local saund = metsnd:Clone()
      saund.Parent = orbuur
      saund.Pitch = 0.5
      saund.PlayOnRemove = true
      saund:Destroy()
      local targetPos = chara.Humanoid.TargetPoint
      local lookAt = targetPos - (chara.Head.Position + Vector3.new(0, 100, 0)).unit
      meteor2fire(lookAt)
      wait(1)
      summonanim:Stop()
      powereffect.Enabled = false
      tool.Enabled = true
    end
    if key == "n" then
      activegrab = true
      summonanim:Play()
      summonsound:Play()
      chat("Get over here...")
      powereffect.Texture = "http://www.roblox.com/asset/?id=224413104"
      powereffect.Enabled = true
      tool.Enabled = false
      wait(5)
      if didgrab == false then
        chat("Agh.")
        powereffect.Enabled = false
        tool.Enabled = true
        summonanim:Stop()
        activegrab = false
      elseif didgrab == true then
      end
    end
    if key == "m" then
      if music == false then
        music1:Play()
        music = true
      elseif music == true then
        music1:Stop()
        music = false
      end
    end
  end
end
function onEquipped(mouse)
  print("onEquipped")
  Mouse = player:GetMouse()
  if not Mouse then
    return
  end
  if Mouse then
    Mouse.KeyDown:connect(keydowns)
  end
  Character2 = chara
  Humanoid2 = Character:FindFirstChild("Humanoid")
  Torso2 = Character:FindFirstChild("Torso")
  if not Humanoid2 or Torso2 then
  end
end
function onUnequipped()
  print("onUnequipped")
  Torso2 = nil
  Humanoid2 = nil
  Character2 = nil
  Mouse = nil
end
tool.Equipped:connect(onEquipped)
tool.Unequipped:connect(onUnequipped)
local deathed = false
function onDied()
  deathed = true
  chat("Final Strike: The End of Days...")
  shirt:Destroy()
  pants:Destroy()
  Void:Destroy()
  orbuur:Destroy()
  summonsound.Pitch = 0.5
  summonsound:Play()
  local shah = chara:GetChildren()
  for i = 1, #shah do
    if shah[i].ClassName == "Part" then
      shah[i].Anchored = true
    end
  end
  local effectbrick = Instance.new("Part", game.Workspace)
  effectbrick.Transparency = 1
  effectbrick.Size = Vector3.new(3, 3, 3)
  effectbrick.CanCollide = false
  effectbrick.Anchored = true
  effectbrick.CFrame = chara.Torso.CFrame
  createrainbow(firecolour, effectbrick, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
    NumberSequenceKeypoint.new(0, 10),
    NumberSequenceKeypoint.new(1, 0)
  }), NumberSequence.new(extendlife), NumberRange.new(5), "Left", NumberRange.new(0), Vector3.new(0, 0, 0), 0, false, "FireEffect")
  createrainbow(firecolour, effectbrick, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new(10), NumberSequence.new(normallife), NumberRange.new(5), "Front", NumberRange.new(100), Vector3.new(0, 0, 0), 1000, false, "PowerEffect")
  effectbrick.PowerEffect.Enabled = false
  debby:AddItem(effectbrick, 10)
  wait(2)
  effectbrick.PowerEffect.Enabled = true
  local exsnd = Instance.new("Sound", game.Workspace)
  exsnd.SoundId = "http://www.roblox.com/asset/?id=258057783"
  exsnd.Volume = 1
  exsnd.Pitch = 0.5
  exsnd.PlayOnRemove = true
  exsnd:Destroy()
  effectbrick.FireEffect:Destroy()
  local exx = Instance.new("Explosion", game.Workspace)
  exx.Position = effectbrick.Position
  exx.BlastPressure = 500000000
  exx.BlastRadius = 10000000000
  exx.Visible = false
  exx.ExplosionType = "CratersAndDebris"
  wait(1)
  effectbrick.PowerEffect.Enabled = false
end
chara.Humanoid.Died:connect(onDied)
