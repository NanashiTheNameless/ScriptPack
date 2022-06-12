player = game:service("Players").LocalPlayer
char = player.Character
local beat = true
local beattime = 0.6
suit = Instance.new("Model", char)
suit.Name = "Determination"
local vDebounce = false
Torso = char.Torso
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
slashvalue = 1
beamvalue = 1
onehitkill = true
onehitkilltwo = true
specialattack = false
for _, v in pairs(char.Head:GetChildren()) do
  if v.ClassName == "Decal" then
    v:remove()
  end
end
for _, v in pairs(char:GetChildren()) do
  if v.ClassName == "Hat" then
    v:remove()
  end
end
for _, v in pairs(char:GetChildren()) do
  if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "T-Shirt" or v.ClassName == "ShirtGraphic" then
    v:remove()
  end
end
shirt = Instance.new("Shirt", char)
pants = Instance.new("Pants", char)
face = Instance.new("Decal", char.Head)
face.Texture = "http://www.roblox.com/asset/?id=381193198"
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=552537645"
pants.PantsTemplate = "http://www.roblox.com/asset/?id=481131351"
local Hat = char:FindFirstChild("Hat_F") or Instance.new("Hat")
Hat.AttachmentPos = Vector3.new(0, 0.33, 0)
Hat.Name = "Hat_F"
local Handle = Hat:FindFirstChild("Handle") or Instance.new("Part", Hat)
if Handle.Name ~= "Handle" then
  Handle.Size = Vector3.new(1, 1, 1)
end
Handle.BottomSurface = 0
Handle.Name = "Handle"
Handle.TopSurface = 0
Handle.Locked = 1
local Mesh = Hat:FindFirstChild("Mesh") or Instance.new("SpecialMesh", Handle)
Mesh.TextureId = "http://www.roblox.com/asset/?id=75975464"
Mesh.MeshId = "http://www.roblox.com/asset/?id=250264520 "
Mesh.Scale = Vector3.new(1.05, 1.05, 1.05)
Hat.Parent = char
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
RSH, LSH = nil, nil
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
RSH = char.Torso["Right Shoulder"]
LSH = char.Torso["Left Shoulder"]
local LSounds = {
  MegaloStrikesBack = Instance.new("Sound")
}
LSounds.MegaloStrikesBack.SoundId = "http://www.roblox.com/asset?id=317775091"
LSounds.MegaloStrikesBack.Volume = 10
function PlayLoopedSound(soundname, pitch)
  LSounds[soundname].Parent = char.Torso
  LSounds[soundname].Pitch = pitch
  LSounds[soundname]:Play()
  LSounds[soundname].Looped = true
  oldloopedsound = LSounds[soundname]
  LSounds[soundname] = LSounds[soundname]:clone()
end
local Sounds = {
  Hurt = Instance.new("Sound"),
  Slash = Instance.new("Sound"),
  Explode = Instance.new("Sound"),
  Sans = Instance.new("Sound")
}
Sounds.Slash.SoundId = "http://www.roblox.com/asset?id=394934205"
Sounds.Slash.Volume = 1
Sounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
Sounds.Hurt.Volume = 1
Sounds.Sans.SoundId = "http://www.roblox.com/asset?id=388205678"
Sounds.Sans.Volume = 1
Sounds.Explode.SoundId = "rbxasset://sounds/collide.wav"
Sounds.Explode.Volume = 1
function PlaySound(soundname, pitch)
  Sounds[soundname].Parent = Torso
  Sounds[soundname].Pitch = pitch
  Sounds[soundname]:Play()
  local oldsound = Sounds[soundname]
  coroutine.resume(coroutine.create(function()
    wait(4)
    oldsound:Destroy()
  end))
  Sounds[soundname] = Sounds[soundname]:clone()
end
--char.Humanoid.MaxHealth = 99999999999999999999999999
--char.Humanoid.Health = 9999999999999999999999999999
function CharaTalks()
  local m = Instance.new("Model", char.Head)
  m.Name = "* W"
  local chat = Instance.new("Part", m)
  chat.TopSurface = "Smooth"
  chat.BottomSurface = "Smooth"
  chat.Name = "Head"
  chat.FormFactor = "Custom"
  chat.Size = Vector3.new(0.05, 0.05, 0.1)
  chat.Transparency = 0.9
  chat.CanCollide = false
  chat.Anchored = true
  chat.CFrame = char.Head.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
  local h = Instance.new("Humanoid", m)
  h.MaxHealth = 0
  m.Name = "* We"
  wait()
  m.Name = "* Wel"
  wait()
  m.Name = "* Welc"
  wait()
  m.Name = "* Welco"
  wait()
  m.Name = "* Welcom"
  wait()
  m.Name = "* Welcome"
  wait()
  m.Name = "* Welcome "
  wait()
  m.Name = "* Welcome t"
  wait()
  m.Name = "* Welcome to"
  wait()
  m.Name = "* Welcome to "
  wait()
  m.Name = "* Welcome to m"
  wait()
  m.Name = "* Welcome to my"
  wait()
  m.Name = "* Welcome to my "
  wait()
  m.Name = "* Welcome to my S"
  wait()
  m.Name = "* Welcome to my SP"
  wait()
  m.Name = "* Welcome to my SPE"
  wait()
  m.Name = "* Welcome to my SPEC"
  wait()
  m.Name = "* Welcome to my SPECI"
  wait()
  m.Name = "* Welcome to my SPECIA"
  wait()
  m.Name = "* Welcome to my SPECIAL"
  wait()
  m.Name = "* Welcome to my SPECIAL "
  wait()
  m.Name = "* Welcome to my SPECIAL A"
  wait()
  m.Name = "* Welcome to my SPECIAL AT"
  wait()
  m.Name = "* Welcome to my SPECIAL ATT"
  wait()
  m.Name = "* Welcome to my SPECIAL ATTA"
  wait()
  m.Name = "* Welcome to my SPECIAL ATTAC"
  wait()
  m.Name = "* Welcome to my SPECIAL ATTACK"
  wait()
  m.Name = "* Welcome to my SPECIAL ATTACK!"
  wait()
  m:remove()
end
function GETDUNKED()
  coroutine.resume(coroutine.create(function()
    local m = Instance.new("Model", char.Head)
    m.Name = "* G"
    local chat = Instance.new("Part", m)
    chat.TopSurface = "Smooth"
    chat.BottomSurface = "Smooth"
    chat.Name = "Head"
    chat.FormFactor = "Custom"
    chat.Size = Vector3.new(0.05, 0.05, 0.1)
    chat.Transparency = 0.9
    chat.CanCollide = false
    chat.Anchored = true
    chat.CFrame = char.Head.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
    local h = Instance.new("Humanoid", m)
    h.MaxHealth = 0
    PlaySound("Sans", 1)
    m.Name = "* GE"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEE"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEE"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEET"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETT"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT"
    wait(0.3)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT D"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT DU"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT DUN"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT DUNK"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT DUNKE"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT DUNKED"
    wait(0.3)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT DUNKED O"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT DUNKED ON"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* GEEETTT DUNKED ON!"
    wait(0.3)
    PlaySound("Sans", 1)
    m.Name = "* Y"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* Yo"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You m"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You me"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You meg"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You mega"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megal"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megalo"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megalom"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megaloma"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megaloman"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megalomani"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megalomania"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megalomaniac"
    wait(0.1)
    PlaySound("Sans", 1)
    m.Name = "* You megalomaniac!"
    wait(3)
    m:remove()
  end))
end
function startup()
  coroutine.resume(coroutine.create(function()
    local m = Instance.new("Model", char)
    m.Name = "* C"
    local chat = Instance.new("Part", m)
    chat.TopSurface = "Smooth"
    chat.BottomSurface = "Smooth"
    chat.Name = "Head"
    chat.FormFactor = "Custom"
    chat.Size = Vector3.new(0.05, 0.05, 0.1)
    chat.Transparency = 0.9
    chat.CanCollide = false
    local Weld7 = Instance.new("Weld", char)
    Weld7.Part0 = char.Head
    Weld7.Part1 = chat
    Weld7.C1 = CFrame.new(0, -2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
    local cy7 = Instance.new("BlockMesh", chat)
    local h = Instance.new("Humanoid", m)
    h.MaxHealth = 0
    m.Name = "* Black"
    wait(0.2)
    m.Name = "* Black Cha"
    wait(0.2)
    m.Name = "* Black Char"
    wait(0.2)
    m.Name = "* Black Chara"
    wait(0.2)
    m.Name = "* Black Chara."
    wait(0.5)
    m.Name = "* Black Chara.."
    wait(0.5)
    m.Name = "* Black Chara..."
    wait(0.5)
    wait(5)
    m:remove()
  end))
end
startup()
PlayLoopedSound("MegaloStrikesBack", 1)
Tool = Instance.new("HopperBin", player.Backpack)
Tool.Name = "Charas Megalovania Knife"
Tool.Selected:connect(function(mouse)
  RW.Part0 = char.Torso
  RW.C0 = CFrame.new(1.5, 0.5, 0)
  RW.C1 = CFrame.new(0, 0.5, 0)
  RW.Part1 = char["Right Arm"]
  RW.Parent = char.Torso
  handle = Instance.new("Part", suit)
  handle.TopSurface = "Smooth"
  handle.BottomSurface = "Smooth"
  handle.Size = Vector3.new(0.2, 0.5, 0.5)
  handle.CanCollide = false
  handle.BrickColor = BrickColor.new("Dark stone grey")
  handle.FormFactor = "Custom"
  local Weldb = Instance.new("Weld", char)
  Weldb.Part0 = char["Right Arm"]
  Weldb.Part1 = handle
  Weldb.C1 = CFrame.new(0, -1.6, 0.8) * CFrame.fromEulerAnglesXYZ(-4.2, 0, 0)
  local KnifeMesh = Instance.new("SpecialMesh", handle)
  KnifeMesh.MeshType = "FileMesh"
  KnifeMesh.MeshId = "http://www.roblox.com/asset/?id=121944778"
  KnifeMesh.TextureId = "http://www.roblox.com/asset/?id=121944805"
  function touch(hit)
    if vDebounce == true and hit.Parent:findFirstChild("Humanoid") ~= nil then
      if hit.Parent.Name == char.Name then
        return
      end
      hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 100000000000000000000000000000000
      do
        local HitSounds = {
          Hurt = Instance.new("Sound")
        }
        HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
        HitSounds.Hurt.Volume = 1
        function PlayHitSound(soundname, pitch)
          HitSounds[soundname].Parent = hit.Parent.Torso
          HitSounds[soundname].Pitch = pitch
          HitSounds[soundname]:Play()
          local oldsound = HitSounds[soundname]
          coroutine.resume(coroutine.create(function()
            wait(4)
            oldsound:Destroy()
          end))
          HitSounds[soundname] = HitSounds[soundname]:clone()
        end
        PlayHitSound("Hurt", 1)
      end
    end
  end
  handle.Touched:connect(touch)
  function teleportPlayer(pos)
    if player == nil or player.Character == nil then
      return
    end
    Torso.CFrame = CFrame.new(Vector3.new(pos.x, pos.y, pos.z))
  end
  function slash1()
    if not vDebounce then
      vDebounce = true
      RW.C0 = cf(1, 0.3, -0.5) * euler(0.8000000000000003, 0, 0)
      RW.C1 = cf(0, 0, 0) * euler(0, -2, 0)
      wait(0.1)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          wait()
          local RedSlash = Instance.new("Part", suit)
          RedSlash.FormFactor = "Custom"
          RedSlash.Size = Vector3.new(0.5, 2, 0.5)
          RedSlash.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", RedSlash)
          selectionBox.Adornee = RedSlash
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.005
          RedSlash.TopSurface = 0
          RedSlash.BottomSurface = 0
          local colorc = {"Black"}
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          RedSlash.BrickColor = Fire
          RedSlash.CanCollide = false
          RedSlash.Anchored = true
          RedSlash.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
          game.Debris:AddItem(RedSlash, 0.1)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.2, 0.3 * i, 0.2) * euler(0.8000000000000003, 0, 0)
        RW.C1 = cf(0, 0, 0) * euler(0.8 * i, -2, 0)
      end
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      slashvalue = slashvalue + 1
      vDebounce = false
    end
  end
  function slash2()
    if not vDebounce then
      vDebounce = true
      coroutine.resume(coroutine.create(function()
        for i = 1, 20 do
          wait()
          local RedSlash2 = Instance.new("Part", suit)
          RedSlash2.FormFactor = "Custom"
          RedSlash2.Size = Vector3.new(0.5, 2, 0.5)
          RedSlash2.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", RedSlash2)
          selectionBox.Adornee = RedSlash2
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.005
          RedSlash2.TopSurface = 0
          RedSlash2.BottomSurface = 0
          local colorc = {"Black"}
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          RedSlash2.BrickColor = Fire
          RedSlash2.CanCollide = false
          RedSlash2.Anchored = true
          RedSlash2.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
          game.Debris:AddItem(RedSlash2, 0.2)
        end
      end))
      for i = 1, 10 do
        wait()
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(0.1 * i, 0, 0)
      end
      PlaySound("Slash", 1)
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(-0.5 * i, 0, 0)
      end
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      slashvalue = slashvalue + 1
      vDebounce = false
    end
  end
  function slash3()
    if not vDebounce then
      vDebounce = true
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, 20 do
          wait()
          local RedSlash3 = Instance.new("Part", suit)
          RedSlash3.FormFactor = "Custom"
          RedSlash3.Size = Vector3.new(0.5, 2, 0.5)
          RedSlash3.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", RedSlash3)
          selectionBox.Adornee = RedSlash3
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.005
          RedSlash3.TopSurface = 0
          RedSlash3.BottomSurface = 0
          local colorc = {"Black"}
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          RedSlash3.BrickColor = Fire
          RedSlash3.CanCollide = false
          RedSlash3.Anchored = true
          RedSlash3.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
          game.Debris:AddItem(RedSlash3, 0.3)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(-0.5 * i, 0, 0)
      end
      wait(0.3)
      PlaySound("Slash", 1)
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.5, 0.5, 0) * euler(1.5, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(0.6 * i, 0, 0)
      end
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      slashvalue = slashvalue - 2
      vDebounce = false
    end
  end
  function KnifeBeam1()
    if not vDebounce then
      vDebounce = true
      RW.C0 = cf(1, 0.3, -0.5) * euler(0.8000000000000003, 0, 0)
      RW.C1 = cf(0, 0, 0) * euler(0, -2, 0)
      wait(0.1)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          wait()
          local p = Instance.new("Part", handle)
          p.FormFactor = "Custom"
          p.Size = Vector3.new(1, 0.5, 1)
          p.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", p)
          selectionBox.Adornee = p
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.005
          p.Material = "Neon"
          p.TopSurface = 0
          p.BottomSurface = 0
          local colorc = {"Black"}
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          p.BrickColor = Fire
          p.CanCollide = false
          p.Anchored = true
          p.CFrame = handle.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
          game.Debris:AddItem(p, 0.1)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.2, 0.3 * i, 0.2) * euler(0.8000000000000003, 0, 0)
        RW.C1 = cf(0, 0, 0) * euler(0.8 * i, -2, 0)
      end
      coroutine.resume(coroutine.create(function()
        local ps = Instance.new("Part", suit)
        ps.Name = "MagicPart"
        ps.TopSurface = "Smooth"
        ps.BottomSurface = "Smooth"
        ps.BrickColor = BrickColor.new("Institutional white")
        ps.Material = "Neon"
        ps.FormFactor = "Custom"
        ps.Size = Vector3.new(5, 1, 1)
        ps.Anchored = true
        ps.Transparency = 0.5
        ps.CanCollide = false
        ps.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -5) * CFrame.Angles(0, 0, 1)
        local selectionBox = Instance.new("SelectionBox", ps)
        selectionBox.Adornee = ps
        selectionBox.Color = BrickColor.new("Black")
        selectionBox.LineThickness = 0.2
        selectionBox.Transparency = 0.5
        function touch(hit)
          if hit.Parent.Name == char.Name then
            return
          end
          if hit.Parent:findFirstChild("Humanoid") ~= nil then
            ps:remove()
            if hit.Parent.Name == char.Name then
              return
            end
            hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 100000000000000000000000000000000000000000000000000000000000000000000
            do
              local HitSounds = {
                Hurt = Instance.new("Sound")
              }
              HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
              HitSounds.Hurt.Volume = 1
              function PlayHitSound(soundname, pitch)
                HitSounds[soundname].Parent = hit.Parent.Torso
                HitSounds[soundname].Pitch = pitch
                HitSounds[soundname]:Play()
                local oldsound = HitSounds[soundname]
                coroutine.resume(coroutine.create(function()
                  wait(4)
                  oldsound:Destroy()
                end))
                HitSounds[soundname] = HitSounds[soundname]:clone()
              end
              PlayHitSound("Hurt", 1)
            end
          end
        end
        ps.Touched:connect(touch)
        coroutine.resume(coroutine.create(function()
          for i = 1, 50 do
            wait()
            ps.CFrame = ps.CFrame * CFrame.new(0, 0, -4)
          end
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps:remove()
        end))
      end))
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      beamvalue = beamvalue + 1
      vDebounce = false
    end
  end
  function KnifeBeam2()
    if not vDebounce then
      vDebounce = true
      coroutine.resume(coroutine.create(function()
        for i = 1, 20 do
          wait()
          local p = Instance.new("Part", handle)
          p.FormFactor = "Custom"
          p.Size = Vector3.new(1, 0.5, 1)
          p.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", p)
          selectionBox.Adornee = p
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.005
          p.TopSurface = 0
          p.BottomSurface = 0
          local colorc = {"Black"}
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          p.BrickColor = Fire
          p.CanCollide = false
          p.Anchored = true
          p.CFrame = handle.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
          game.Debris:AddItem(p, 0.2)
        end
      end))
      for i = 1, 10 do
        wait()
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(0.1 * i, 0, 0)
      end
      PlaySound("Slash", 1)
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(-0.5 * i, 0, 0)
      end
      coroutine.resume(coroutine.create(function()
        local ps = Instance.new("Part", suit)
        ps.Name = "MagicPart"
        ps.TopSurface = "Smooth"
        ps.BottomSurface = "Smooth"
        ps.BrickColor = BrickColor.new("Institutional white")
        ps.Material = "Neon"
        ps.FormFactor = "Custom"
        ps.Size = Vector3.new(1, 5, 1)
        ps.Anchored = true
        ps.Transparency = 0.5
        ps.CanCollide = false
        ps.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -5) * CFrame.Angles(-10, 0, 0)
        local selectionBox = Instance.new("SelectionBox", ps)
        selectionBox.Adornee = ps
        selectionBox.Color = BrickColor.new("Black")
        selectionBox.LineThickness = 0.2
        selectionBox.Transparency = 0.5
        function touch(hit)
          if hit.Parent.Name == char.Name then
            return
          end
          if hit.Parent:findFirstChild("Humanoid") ~= nil then
            ps:remove()
            if hit.Parent.Name == char.Name then
              return
            end
            hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10000000000000000000000000000000000000000000000000
            do
              local HitSounds = {
                Hurt = Instance.new("Sound")
              }
              HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
              HitSounds.Hurt.Volume = 1
              function PlayHitSound(soundname, pitch)
                HitSounds[soundname].Parent = hit.Parent.Torso
                HitSounds[soundname].Pitch = pitch
                HitSounds[soundname]:Play()
                local oldsound = HitSounds[soundname]
                coroutine.resume(coroutine.create(function()
                  wait(4)
                  oldsound:Destroy()
                end))
                HitSounds[soundname] = HitSounds[soundname]:clone()
              end
              PlayHitSound("Hurt", 1)
            end
          end
        end
        ps.Touched:connect(touch)
        coroutine.resume(coroutine.create(function()
          for i = 1, 50 do
            wait()
            ps.CFrame = ps.CFrame * CFrame.new(0, -1.9, 3)
          end
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps:remove()
        end))
      end))
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      beamvalue = beamvalue + 1
      vDebounce = false
    end
  end
  function KnifeBeam3()
    if not vDebounce then
      vDebounce = true
      RW.C0 = cf(1, 0.3, -0.5) * euler(0.8000000000000003, 0, 0)
      RW.C1 = cf(0, 0, 0) * euler(0, -2, 0)
      wait(0.1)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          wait()
          local p = Instance.new("Part", handle)
          p.FormFactor = "Custom"
          p.Size = Vector3.new(1, 0.5, 1)
          p.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", p)
          selectionBox.Adornee = p
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.005
          p.Material = "Neon"
          p.TopSurface = 0
          p.BottomSurface = 0
          local colorc = {"Black"}
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          p.BrickColor = Fire
          p.CanCollide = false
          p.Anchored = true
          p.CFrame = handle.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
          game.Debris:AddItem(p, 0.1)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.2, 0.3 * i, 0.2) * euler(0.8000000000000003, 0, 0)
        RW.C1 = cf(0, 0, 0) * euler(0.8 * i, -2, 0)
      end
      coroutine.resume(coroutine.create(function()
        local ps = Instance.new("Part", suit)
        ps.Name = "MagicPart"
        ps.TopSurface = "Smooth"
        ps.BottomSurface = "Smooth"
        ps.BrickColor = BrickColor.new("Institutional white")
        ps.Material = "Neon"
        ps.FormFactor = "Custom"
        ps.Size = Vector3.new(10, 10, 1)
        ps.Anchored = true
        ps.Transparency = 0.5
        ps.CanCollide = false
        ps.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -5) * CFrame.Angles(0, 0, 0)
        local selectionBox = Instance.new("SelectionBox", ps)
        selectionBox.Adornee = ps
        selectionBox.Color = BrickColor.new("Black")
        selectionBox.LineThickness = 0.2
        selectionBox.Transparency = 0.5
        function touch(hit)
          if hit.Parent.Name == char.Name then
            return
          end
          if hit.Parent:findFirstChild("Humanoid") ~= nil then
            ps:remove()
            if hit.Parent.Name == char.Name then
              return
            end
            hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 100000000000000000000000000000000000000000000
            do
              local HitSounds = {
                Hurt = Instance.new("Sound")
              }
              HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
              HitSounds.Hurt.Volume = 1
              function PlayHitSound(soundname, pitch)
                HitSounds[soundname].Parent = hit.Parent.Torso
                HitSounds[soundname].Pitch = pitch
                HitSounds[soundname]:Play()
                local oldsound = HitSounds[soundname]
                coroutine.resume(coroutine.create(function()
                  wait(4)
                  oldsound:Destroy()
                end))
                HitSounds[soundname] = HitSounds[soundname]:clone()
              end
              PlayHitSound("Hurt", 1)
            end
          end
        end
        ps.Touched:connect(touch)
        coroutine.resume(coroutine.create(function()
          for i = 1, 50 do
            wait()
            ps.CFrame = ps.CFrame * CFrame.new(0, 0, -5)
          end
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps.Transparency = ps.Transparency + 1
          wait()
          ps:remove()
        end))
      end))
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      beamvalue = beamvalue - 2
      vDebounce = false
    end
  end
  function drawded()
    if onehitkill == true then
      onehitkill = false
      RW.C0 = cf(1, 0.3, -0.5) * euler(0.8000000000000003, 0, 0)
      RW.C1 = cf(0, 0, 0) * euler(0, -2, 0)
      wait(0.1)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          wait()
          local p = Instance.new("Part", handle)
          p.FormFactor = "Custom"
          p.Size = Vector3.new(1, 1, 1)
          p.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", p)
          selectionBox.Adornee = p
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.001
          p.TopSurface = 0
          p.BottomSurface = 0
          local colorc = {
            "Really black"
          }
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          p.BrickColor = Fire
          p.CanCollide = false
          p.Anchored = true
          p.CFrame = handle.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
          game.Debris:AddItem(p, 0.1)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.2, 0.3 * i, 0.2) * euler(0.8000000000000003, 0, 0)
        RW.C1 = cf(0, 0, 0) * euler(0.8 * i, -2, 0)
      end
      coroutine.resume(coroutine.create(function()
        ultra = Instance.new("Part", suit)
        ultra.Name = "MagicPart"
        ultra.TopSurface = "Smooth"
        ultra.BottomSurface = "Smooth"
        ultra.BrickColor = BrickColor.new("Really black")
        ultra.Material = "Neon"
        ultra.FormFactor = "Custom"
        ultra.Size = Vector3.new(5, 1, 1)
        ultra.Anchored = true
        ultra.CanCollide = false
        ultra.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -5) * CFrame.Angles(0, 0, 1)
        local selectionBox = Instance.new("SelectionBox", ultra)
        selectionBox.Adornee = ultra
        selectionBox.Color = BrickColor.new("Really black")
        selectionBox.LineThickness = 0.01
        selectionBox.Transparency = 0
      end))
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      RW.C0 = cf(1, 0.3, -0.5) * euler(0.8000000000000003, 0, 0)
      RW.C1 = cf(0, 0, 0) * euler(0, -2, 0)
      wait(0.1)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          wait()
          local p = Instance.new("Part", handle)
          p.FormFactor = "Custom"
          p.Size = Vector3.new(1, 0.5, 1)
          p.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", p)
          selectionBox.Adornee = p
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.001
          p.TopSurface = 0
          p.BottomSurface = 0
          local colorc = {
            "Really black"
          }
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          p.BrickColor = Fire
          p.CanCollide = false
          p.Anchored = true
          p.CFrame = handle.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
          game.Debris:AddItem(p, 0.1)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.2, 0.3 * i, 0.2) * euler(0.8000000000000003, 0, 0)
        RW.C1 = cf(0, 0, 0) * euler(0.8 * i, -2, 0)
      end
      coroutine.resume(coroutine.create(function()
        ultra2 = Instance.new("Part", suit)
        ultra2.Name = "MagicPart"
        ultra2.TopSurface = "Smooth"
        ultra2.BottomSurface = "Smooth"
        ultra2.BrickColor = BrickColor.new("Really black")
        ultra2.Material = "Neon"
        ultra2.FormFactor = "Custom"
        ultra2.Size = Vector3.new(5, 1, 1)
        ultra2.Anchored = true
        ultra2.CanCollide = false
        ultra2.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -5) * CFrame.Angles(0, 0, 1)
        local selectionBox = Instance.new("SelectionBox", ultra2)
        selectionBox.Adornee = ultra2
        selectionBox.Color = BrickColor.new("Really black")
        selectionBox.LineThickness = 0.01
        selectionBox.Transparency = 0
      end))
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        ultra3 = Instance.new("Part", suit)
        ultra3.Name = "MagicPart"
        ultra3.TopSurface = "Smooth"
        ultra3.BottomSurface = "Smooth"
        ultra3.BrickColor = BrickColor.new("Really black")
        ultra3.Material = "Neon"
        ultra3.FormFactor = "Custom"
        ultra3.Size = Vector3.new(1, 5, 1)
        ultra3.Anchored = true
        ultra3.CanCollide = false
        ultra3.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -5) * CFrame.Angles(0, 0, 0)
        local selectionBox = Instance.new("SelectionBox", ultra3)
        selectionBox.Adornee = ultra3
        selectionBox.Color = BrickColor.new("Really black")
        selectionBox.LineThickness = 0.01
        selectionBox.Transparency = 0
      end))
      coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          wait()
          local p = Instance.new("Part", handle)
          p.FormFactor = "Custom"
          p.Size = Vector3.new(1, 0.5, 1)
          p.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", p)
          selectionBox.Adornee = p
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.001
          p.TopSurface = 0
          p.BottomSurface = 0
          local colorc = {
            "Really black"
          }
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          p.BrickColor = Fire
          p.CanCollide = false
          p.Anchored = true
          p.CFrame = handle.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
          game.Debris:AddItem(p, 0.1)
        end
      end))
      coroutine.resume(coroutine.create(function()
        for i = 1, 20 do
          wait()
          local p = Instance.new("Part", handle)
          p.FormFactor = "Custom"
          p.Size = Vector3.new(1, 0.5, 1)
          p.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", p)
          selectionBox.Adornee = p
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.005
          p.TopSurface = 0
          p.BottomSurface = 0
          local colorc = {"Black"}
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          p.BrickColor = Fire
          p.CanCollide = false
          p.Anchored = true
          p.CFrame = handle.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
          game.Debris:AddItem(p, 0.3)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(-0.5 * i, 0, 0)
      end
      wait(0.3)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        ultra4 = Instance.new("Part", suit)
        ultra4.Name = "MagicPart"
        ultra4.TopSurface = "Smooth"
        ultra4.BottomSurface = "Smooth"
        ultra4.BrickColor = BrickColor.new("Really black")
        ultra4.Material = "Neon"
        ultra4.FormFactor = "Custom"
        ultra4.Size = Vector3.new(1, 5, 1)
        ultra4.Anchored = true
        ultra4.CanCollide = false
        ultra4.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -5) * CFrame.Angles(0, 0, 0)
        local selectionBox = Instance.new("SelectionBox", ultra3)
        selectionBox.Adornee = ultra4
        selectionBox.Color = BrickColor.new("Really black")
        selectionBox.LineThickness = 0.01
        selectionBox.Transparency = 0
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(0.3 * i, 0, 0)
      end
      wait(0.3)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      RW.C0 = cf(1, 0.3, -0.5) * euler(0.8000000000000003, 0, 0)
      RW.C1 = cf(0, 0, 0) * euler(0, -2, 0)
      wait(0.1)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          wait()
          local p = Instance.new("Part", handle)
          p.FormFactor = "Custom"
          p.Size = Vector3.new(1, 0.5, 1)
          p.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", p)
          selectionBox.Adornee = p
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.001
          p.TopSurface = 0
          p.BottomSurface = 0
          local colorc = {
            "Really black"
          }
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          p.BrickColor = Fire
          p.CanCollide = false
          p.Anchored = true
          p.CFrame = handle.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
          game.Debris:AddItem(p, 0.1)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.2, 0.3 * i, 0.2) * euler(0.8000000000000003, 0, 0)
        RW.C1 = cf(0, 0, 0) * euler(0.8 * i, -2, 0)
      end
      coroutine.resume(coroutine.create(function()
        ultra5 = Instance.new("Part", suit)
        ultra5.Name = "MagicPart"
        ultra5.TopSurface = "Smooth"
        ultra5.BottomSurface = "Smooth"
        ultra5.BrickColor = BrickColor.new("Really black")
        ultra5.Material = "Neon"
        ultra5.FormFactor = "Custom"
        ultra5.Size = Vector3.new(5, 1, 1)
        ultra5.Anchored = true
        ultra5.CanCollide = false
        ultra5.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -5) * CFrame.Angles(0, 0, 1)
        local selectionBox = Instance.new("SelectionBox", ultra2)
        selectionBox.Adornee = ultra5
        selectionBox.Color = BrickColor.new("Really black")
        selectionBox.LineThickness = 0.01
        selectionBox.Transparency = 0
      end))
      wait()
      local p = Instance.new("Part", handle)
      p.FormFactor = "Custom"
      p.Material = "Neon"
      p.Size = Vector3.new(1, 2, 1)
      p.Transparency = 0
      local selectionBox = Instance.new("SelectionBox", p)
      selectionBox.Adornee = p
      selectionBox.Color = BrickColor.new("Really black")
      selectionBox.LineThickness = 0.001
      p.TopSurface = 0
      p.BottomSurface = 0
      local colorc = {
        "Really black"
      }
      local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
      p.BrickColor = Fire
      p.CanCollide = false
      p.Anchored = true
      p.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
      local light1 = Instance.new("SpotLight", p)
      light1.Brightness = 164
      light1.Color = Color3.new(255, 0, 0)
      light1.Range = 7
      for i = 1, 13 do
        p.Transparency = p.Transparency + 0.1
        p.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
        wait()
      end
      game.Debris:AddItem(p, 0.1)
      coroutine.resume(coroutine.create(function()
        coroutine.resume(coroutine.create(function()
          for i = 1, 100 do
            wait()
            ultra.CFrame = ultra.CFrame * CFrame.new(0, 0, -4)
          end
        end))
        coroutine.resume(coroutine.create(function()
          for i = 1, 100 do
            wait()
            ultra2.CFrame = ultra2.CFrame * CFrame.new(0, 0, -4)
          end
        end))
        coroutine.resume(coroutine.create(function()
          for i = 1, 100 do
            wait()
            ultra3.CFrame = ultra3.CFrame * CFrame.new(0, 0, -4)
          end
        end))
        coroutine.resume(coroutine.create(function()
          for i = 1, 100 do
            wait()
            ultra4.CFrame = ultra4.CFrame * CFrame.new(0, 0, -4)
          end
        end))
        coroutine.resume(coroutine.create(function()
          for i = 1, 100 do
            wait()
            ultra5.CFrame = ultra5.CFrame * CFrame.new(0, 0, -4)
          end
        end))
        wait(3)
        ultra.Transparency = ultra.Transparency + 1
        ultra2.Transparency = ultra2.Transparency + 1
        ultra3.Transparency = ultra3.Transparency + 1
        ultra4.Transparency = ultra4.Transparency + 1
        ultra5.Transparency = ultra5.Transparency + 1
        wait()
        ultra.Transparency = ultra.Transparency + 1
        ultra2.Transparency = ultra2.Transparency + 1
        ultra3.Transparency = ultra3.Transparency + 1
        ultra4.Transparency = ultra4.Transparency + 1
        ultra5.Transparency = ultra5.Transparency + 1
        wait()
        ultra.Transparency = ultra.Transparency + 1
        ultra2.Transparency = ultra2.Transparency + 1
        ultra3.Transparency = ultra3.Transparency + 1
        ultra4.Transparency = ultra4.Transparency + 1
        ultra5.Transparency = ultra5.Transparency + 1
        wait()
        ultra.Transparency = ultra.Transparency + 1
        ultra2.Transparency = ultra2.Transparency + 1
        ultra3.Transparency = ultra3.Transparency + 1
        ultra4.Transparency = ultra4.Transparency + 1
        ultra5.Transparency = ultra5.Transparency + 1
        wait()
        ultra.Transparency = ultra.Transparency + 1
        ultra2.Transparency = ultra2.Transparency + 1
        ultra3.Transparency = ultra3.Transparency + 1
        ultra4.Transparency = ultra4.Transparency + 1
        ultra5.Transparency = ultra5.Transparency + 1
        wait()
        ultra:remove()
        ultra2:remove()
        ultra3:remove()
        ultra4:remove()
        ultra5:remove()
      end))
      function touch(hit)
        if hit.Parent.Name == char.Name then
          return
        end
        if hit.Parent:findFirstChild("Humanoid") ~= nil then
          if hit.Parent.Name == char.Name then
            return
          end
          hit.Parent:BreakJoints()
          ultra:remove()
          do
            local HitSounds = {
              Hurt = Instance.new("Sound")
            }
            HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
            HitSounds.Hurt.Volume = 1
            function PlayHitSound(soundname, pitch)
              HitSounds[soundname].Parent = hit.Parent.Torso
              HitSounds[soundname].Pitch = pitch
              HitSounds[soundname]:Play()
              local oldsound = HitSounds[soundname]
              coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
              end))
              HitSounds[soundname] = HitSounds[soundname]:clone()
            end
            PlayHitSound("Hurt", 1)
          end
        end
      end
      ultra.Touched:connect(touch)
      function touch(hit)
        if hit.Parent.Name == char.Name then
          return
        end
        if hit.Parent:findFirstChild("Humanoid") ~= nil then
          if hit.Parent.Name == char.Name then
            return
          end
          hit.Parent:BreakJoints()
          ultra2:remove()
          do
            local HitSounds = {
              Hurt = Instance.new("Sound")
            }
            HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
            HitSounds.Hurt.Volume = 1
            function PlayHitSound(soundname, pitch)
              HitSounds[soundname].Parent = hit.Parent.Torso
              HitSounds[soundname].Pitch = pitch
              HitSounds[soundname]:Play()
              local oldsound = HitSounds[soundname]
              coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
              end))
              HitSounds[soundname] = HitSounds[soundname]:clone()
            end
            PlayHitSound("Hurt", 1)
          end
        end
      end
      ultra2.Touched:connect(touch)
      function touch(hit)
        if hit.Parent.Name == char.Name then
          return
        end
        if hit.Parent:findFirstChild("Humanoid") ~= nil then
          if hit.Parent.Name == char.Name then
            return
          end
          hit.Parent:BreakJoints()
          ultra2:remove()
          do
            local HitSounds = {
              Hurt = Instance.new("Sound")
            }
            HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
            HitSounds.Hurt.Volume = 1
            function PlayHitSound(soundname, pitch)
              HitSounds[soundname].Parent = hit.Parent.Torso
              HitSounds[soundname].Pitch = pitch
              HitSounds[soundname]:Play()
              local oldsound = HitSounds[soundname]
              coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
              end))
              HitSounds[soundname] = HitSounds[soundname]:clone()
            end
            PlayHitSound("Hurt", 1)
          end
        end
      end
      ultra2.Touched:connect(touch)
      function touch(hit)
        if hit.Parent.Name == char.Name then
          return
        end
        if hit.Parent:findFirstChild("Humanoid") ~= nil then
          if hit.Parent.Name == char.Name then
            return
          end
          hit.Parent:BreakJoints()
          ultra3:remove()
          do
            local HitSounds = {
              Hurt = Instance.new("Sound")
            }
            HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
            HitSounds.Hurt.Volume = 1
            function PlayHitSound(soundname, pitch)
              HitSounds[soundname].Parent = hit.Parent.Torso
              HitSounds[soundname].Pitch = pitch
              HitSounds[soundname]:Play()
              local oldsound = HitSounds[soundname]
              coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
              end))
              HitSounds[soundname] = HitSounds[soundname]:clone()
            end
            PlayHitSound("Hurt", 1)
          end
        end
      end
      ultra3.Touched:connect(touch)
      function touch(hit)
        if hit.Parent.Name == char.Name then
          return
        end
        if hit.Parent:findFirstChild("Humanoid") ~= nil then
          if hit.Parent.Name == char.Name then
            return
          end
          hit.Parent:BreakJoints()
          ultra4:remove()
          do
            local HitSounds = {
              Hurt = Instance.new("Sound")
            }
            HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
            HitSounds.Hurt.Volume = 1
            function PlayHitSound(soundname, pitch)
              HitSounds[soundname].Parent = hit.Parent.Torso
              HitSounds[soundname].Pitch = pitch
              HitSounds[soundname]:Play()
              local oldsound = HitSounds[soundname]
              coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
              end))
              HitSounds[soundname] = HitSounds[soundname]:clone()
            end
            PlayHitSound("Hurt", 1)
          end
        end
      end
      ultra4.Touched:connect(touch)
      function touch(hit)
        if hit.Parent.Name == char.Name then
          return
        end
        if hit.Parent:findFirstChild("Humanoid") ~= nil then
          if hit.Parent.Name == char.Name then
            return
          end
          hit.Parent:BreakJoints()
          ultra5:remove()
          do
            local HitSounds = {
              Hurt = Instance.new("Sound")
            }
            HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
            HitSounds.Hurt.Volume = 1
            function PlayHitSound(soundname, pitch)
              HitSounds[soundname].Parent = hit.Parent.Torso
              HitSounds[soundname].Pitch = pitch
              HitSounds[soundname]:Play()
              local oldsound = HitSounds[soundname]
              coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
              end))
              HitSounds[soundname] = HitSounds[soundname]:clone()
            end
            PlayHitSound("Hurt", 1)
          end
        end
      end
      ultra5.Touched:connect(touch)
      wait()
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      local Dialogconnect = Instance.new("Part", suit)
      Dialogconnect.TopSurface = "Smooth"
      Dialogconnect.BottomSurface = "Smooth"
      Dialogconnect.Material = "Neon"
      Dialogconnect.FormFactor = "Custom"
      Dialogconnect.Size = Vector3.new(1, 1, 1)
      Dialogconnect.Transparency = 1
      Dialogconnect.CanCollide = false
      Dialogconnect.BrickColor = BrickColor.new("Black")
      local selectionBox1 = Instance.new("SelectionBox", Dialogconnect)
      selectionBox1.Adornee = Dialogconnect
      selectionBox1.Color = BrickColor.new("Really black")
      selectionBox1.LineThickness = 0.01
      selectionBox1.Transparency = 1
      local Weld = Instance.new("Weld", char)
      Weld.Part0 = char.Torso
      Weld.Part1 = Dialogconnect
      Weld.C1 = CFrame.new(0, -3, -1.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect.BrickColor = BrickColor.new("New Yeller")
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect.BrickColor = BrickColor.new("Lime green")
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect:remove()
      onehitkill = true
    end
  end
  function Stuckhit()
    if not vDebounce then
      vDebounce = true
      RW.C0 = cf(1, 0.3, -0.5) * euler(0.8000000000000003, 0, 0)
      RW.C1 = cf(0, 0, 0) * euler(0, -2, 0)
      wait(0.1)
      PlaySound("Slash", 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          wait()
          local RedSlash = Instance.new("Part", handle)
          RedSlash.FormFactor = "Custom"
          RedSlash.Size = Vector3.new(0.5, 2, 0.5)
          RedSlash.Transparency = 0.5
          local selectionBox = Instance.new("SelectionBox", RedSlash)
          selectionBox.Adornee = RedSlash
          selectionBox.Color = BrickColor.new("Really black")
          selectionBox.LineThickness = 0.005
          RedSlash.TopSurface = 0
          RedSlash.BottomSurface = 0
          local colorc = {"Black"}
          local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
          RedSlash.BrickColor = Fire
          RedSlash.CanCollide = false
          RedSlash.Anchored = true
          RedSlash.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
          game.Debris:AddItem(RedSlash, 0.1)
        end
      end))
      for i = 1, 3 do
        wait()
        RW.C0 = cf(1.2, 0.3 * i, 0.2) * euler(0.8000000000000003, 0, 0)
        RW.C1 = cf(0, 0, 0) * euler(0.8 * i, -2, 0)
      end
      local ray = Ray.new(Handle.CFrame.p, (mouse.Hit.p - Handle.CFrame.p).unit * 1000)
      local hit, position = game.Workspace:FindPartOnRay(ray, player)
      wait(0.1)
      local ray = Ray.new(Handle.CFrame.p, (mouse.Hit.p - Handle.CFrame.p).unit * 300)
      local position = mouse.Hit.p
      local distance = (position - Handle.CFrame.p).magnitude
      local rp = Instance.new("Part", workspace)
      rp.Anchored = true
      rp.TopSurface = "Smooth"
      rp.BottomSurface = "Smooth"
      rp.Transparency = 1
      rp.BrickColor = BrickColor.new("Deep orange")
      rp.FormFactor = "Custom"
      rp.CanCollide = false
      rp.Size = Vector3.new(0.6, 0.6, distance)
      rp.Material = "Neon"
      rp.CFrame = CFrame.new(position, Handle.CFrame.p) * CFrame.new(0, 0, -distance / 2)
      local cy = Instance.new("BlockMesh", rp)
      for i = 1, 10 do
        wait()
        cy.Scale = cy.Scale - Vector3.new(0.1, 0.1, 0)
      end
      rp:Destroy()
      local ps = Instance.new("Part", suit)
      ps.Name = "MagicPart"
      ps.TopSurface = "Smooth"
      ps.BottomSurface = "Smooth"
      ps.BrickColor = BrickColor.new("Black")
      ps.FormFactor = "Custom"
      ps.Transparency = 0.9
      ps.Size = Vector3.new(5, 250, 5)
      ps.Anchored = true
      ps.CanCollide = false
      ps.CFrame = CFrame.new(position)
      local cy = Instance.new("BlockMesh", ps)
      function touch(hit)
        if hit.Parent:findFirstChild("Humanoid") ~= nil then
          if hit.Parent.Name == char.Name then
            return
          end
          hit.Parent.Torso.Anchored = true
          do
            local HitSounds = {
              Hurt = Instance.new("Sound")
            }
            HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
            HitSounds.Hurt.Volume = 1
            function PlayHitSound(soundname, pitch)
              HitSounds[soundname].Parent = hit.Parent.Torso
              HitSounds[soundname].Pitch = pitch
              HitSounds[soundname]:Play()
              local oldsound = HitSounds[soundname]
              coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
              end))
              HitSounds[soundname] = HitSounds[soundname]:clone()
            end
            PlayHitSound("Hurt", 1)
            local p = Instance.new("Part", handle)
            p.FormFactor = "Custom"
            p.Material = "Neon"
            p.Size = Vector3.new(1, 2, 1)
            p.Transparency = 0
            local selectionBox = Instance.new("SelectionBox", p)
            selectionBox.Adornee = p
            selectionBox.Color = BrickColor.new("Really black")
            selectionBox.LineThickness = 0.001
            p.TopSurface = 0
            p.BottomSurface = 0
            local colorc = {"Black"}
            local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
            p.BrickColor = Fire
            p.CanCollide = false
            p.Anchored = true
            p.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
            coroutine.resume(coroutine.create(function()
              for i = 1, 100 do
                wait()
                p.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
              end
            end))
            local light1 = Instance.new("SpotLight", p)
            light1.Brightness = 164
            light1.Color = Color3.new(255, 0, 0)
            light1.Range = 7
            for i = 1, 13 do
              p.Transparency = p.Transparency + 0.1
              wait(0.4)
            end
            game.Debris:AddItem(p, 0.1)
            PlaySound("Slash", 1)
            coroutine.resume(coroutine.create(function()
              for i = 1, 10 do
                wait()
                local RedSlash = Instance.new("Part", handle)
                RedSlash.FormFactor = "Custom"
                RedSlash.Size = Vector3.new(0.5, 2, 0.5)
                RedSlash.Transparency = 0.5
                local selectionBox = Instance.new("SelectionBox", RedSlash)
                selectionBox.Adornee = RedSlash
                selectionBox.Color = BrickColor.new("Really black")
                selectionBox.LineThickness = 0.005
                RedSlash.TopSurface = 0
                RedSlash.BottomSurface = 0
                local colorc = {"Black"}
                local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
                RedSlash.BrickColor = Fire
                RedSlash.CanCollide = false
                RedSlash.Anchored = true
                RedSlash.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
                game.Debris:AddItem(RedSlash, 0.1)
              end
            end))
            for i = 1, 3 do
              wait()
              RW.C0 = cf(1.5, 0.5, 0) * euler(1.5, 0, 0)
              RW.C1 = cf(0, 0.5, 0) * euler(0.6 * i, 0, 0)
            end
            hit.Parent.Torso.Anchored = false
            hit.Parent.Torso:BreakJoints()
          end
        end
      end
      ps.Touched:connect(touch)
      for i = 1, 8 do
        wait(0.5)
        ps.Transparency = ps.Transparency - 0.1
      end
      wait(2)
      RW.C0 = CFrame.new(1.5, 0.5, 0)
      RW.C1 = CFrame.new(0, 0.5, 0)
      ps:remove()
    end
    vDebounce = false
  end
  mouse.Button1Down:connect(function()
    if slashvalue == 1 then
      slash1()
    elseif slashvalue == 3 then
      slash3()
    elseif slashvalue == 2 then
      slash2()
    end
  end)
  function WelcomeToMySpecialAttack()
    CharaTalks()
    RW.C0 = cf(1, 0.3, -0.5) * euler(0.8000000000000003, 0, 0)
    RW.C1 = cf(0, 0, 0) * euler(0, -2, 0)
    wait(0.1)
    PlaySound("Slash", 1)
    coroutine.resume(coroutine.create(function()
      for i = 1, 10 do
        wait()
        local RedSlash = Instance.new("Part", handle)
        RedSlash.FormFactor = "Custom"
        RedSlash.Size = Vector3.new(0.5, 2, 0.5)
        RedSlash.Transparency = 0.5
        local selectionBox = Instance.new("SelectionBox", RedSlash)
        selectionBox.Adornee = RedSlash
        selectionBox.Color = BrickColor.new("Really black")
        selectionBox.LineThickness = 0.005
        RedSlash.TopSurface = 0
        RedSlash.BottomSurface = 0
        local colorc = {"Black"}
        local Fire = BrickColor.new(colorc[math.random(1, #colorc)])
        RedSlash.BrickColor = Fire
        RedSlash.CanCollide = false
        RedSlash.Anchored = true
        RedSlash.CFrame = handle.CFrame * CFrame.new(0, 1, 0)
        game.Debris:AddItem(RedSlash, 0.1)
      end
    end))
    for i = 1, 3 do
      wait()
      RW.C0 = cf(1.2, 0.3 * i, 0.2) * euler(0.8000000000000003, 0, 0)
      RW.C1 = cf(0, 0, 0) * euler(0.8 * i, -2, 0)
    end
    PlaySound("Explode", 1)
    coroutine.resume(coroutine.create(function()
      local ps = Instance.new("Part", suit)
      ps.Name = "MagicPart"
      ps.TopSurface = "Smooth"
      ps.BottomSurface = "Smooth"
      ps.BrickColor = BrickColor.new("Black")
      ps.Material = "Neon"
      ps.FormFactor = "Custom"
      ps.Size = Vector3.new(1500, 1500, 1000)
      ps.Anchored = true
      ps.Transparency = 0
      ps.CanCollide = false
      ps.CFrame = char.Torso.CFrame * CFrame.new(1, 0, -55) * CFrame.Angles(0, 0, 0)
      local selectionBox = Instance.new("SelectionBox", ps)
      selectionBox.Adornee = ps
      selectionBox.Color = BrickColor.new("Black")
      selectionBox.LineThickness = 0.2
      selectionBox.Transparency = 0.5
      function touch(hit)
        if hit.Parent.Name == char.Name then
          return
        end
        if hit.Parent:findFirstChild("Humanoid") ~= nil then
          if hit.Parent.Name == char.Name then
            return
          end
          hit.Parent:BreakJoints()
          do
            local HitSounds = {
              Hurt = Instance.new("Sound")
            }
            HitSounds.Hurt.SoundId = "http://www.roblox.com/asset?id=406913243"
            HitSounds.Hurt.Volume = 1
            function PlayHitSound(soundname, pitch)
              HitSounds[soundname].Parent = hit.Parent.Torso
              HitSounds[soundname].Pitch = pitch
              HitSounds[soundname]:Play()
              local oldsound = HitSounds[soundname]
              coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
              end))
              HitSounds[soundname] = HitSounds[soundname]:clone()
            end
            PlayHitSound("Hurt", 1)
          end
        end
      end
      ps.Touched:connect(touch)
      coroutine.resume(coroutine.create(function()
        for i = 1, 500 do
          wait()
          ps.CFrame = ps.CFrame * CFrame.new(0, 0, -4)
        end
        ps.Transparency = ps.Transparency + 0.2
        wait()
        ps.Transparency = ps.Transparency + 0.2
        wait()
        ps.Transparency = ps.Transparency + 0.2
        wait()
        ps.Transparency = ps.Transparency + 0.2
        wait()
        ps.Transparency = ps.Transparency + 0.2
        ps:remove()
      end))
    end))
    wait(2)
    RW.C0 = CFrame.new(1.5, 0.5, 0)
    RW.C1 = CFrame.new(0, 0.5, 0)
  end
  mouse.KeyDown:connect(function(key)
    if key == "r" and specialattack == false then
      specialattack = true
      WelcomeToMySpecialAttack()
      local Dialogconnect = Instance.new("Part", suit)
      Dialogconnect.TopSurface = "Smooth"
      Dialogconnect.BottomSurface = "Smooth"
      Dialogconnect.Material = "Neon"
      Dialogconnect.FormFactor = "Custom"
      Dialogconnect.Size = Vector3.new(1, 1, 1)
      Dialogconnect.Transparency = 1
      Dialogconnect.CanCollide = false
      Dialogconnect.BrickColor = BrickColor.new("Black")
      local selectionBox1 = Instance.new("SelectionBox", Dialogconnect)
      selectionBox1.Adornee = Dialogconnect
      selectionBox1.Color = BrickColor.new("Really black")
      selectionBox1.LineThickness = 0.01
      selectionBox1.Transparency = 1
      local Weld = Instance.new("Weld", char)
      Weld.Part0 = char.Torso
      Weld.Part1 = Dialogconnect
      Weld.C1 = CFrame.new(-3, -3, -1.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect.BrickColor = BrickColor.new("New Yeller")
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect.BrickColor = BrickColor.new("Lime green")
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect:remove()
      specialattack = false
    end
    if key == "q" then
      if beamvalue == 1 then
        KnifeBeam1()
      elseif beamvalue == 2 then
        KnifeBeam2()
      elseif beamvalue == 3 then
        KnifeBeam3()
      end
    end
    if key == "x" and not vDebounce then
      vDebounce = true
      for i = 1, 5 do
        wait()
        Torso.Transparency = 0.5
        char["Left Arm"].Transparency = 0.5
        char["Left Leg"].Transparency = 0.5
        char["Right Arm"].Transparency = 0.5
        char["Right Leg"].Transparency = 0.5
        char.Head.Transparency = 0.5
        wait()
        Torso.Transparency = 0
        char["Left Arm"].Transparency = 0
        char["Left Leg"].Transparency = 0
        char["Right Arm"].Transparency = 0
        char["Right Leg"].Transparency = 0
        char.Head.Transparency = 0
      end
      teleportPlayer(mouse.hit.p)
      vDebounce = false
    end
    if key == "z" and onehitkilltwo == true then
      onehitkilltwo = false
      Stuckhit()
      local Dialogconnect = Instance.new("Part", suit)
      Dialogconnect.TopSurface = "Smooth"
      Dialogconnect.BottomSurface = "Smooth"
      Dialogconnect.Material = "Neon"
      Dialogconnect.FormFactor = "Custom"
      Dialogconnect.Size = Vector3.new(1, 1, 1)
      Dialogconnect.Transparency = 1
      Dialogconnect.CanCollide = false
      Dialogconnect.BrickColor = BrickColor.new("Black")
      local selectionBox1 = Instance.new("SelectionBox", Dialogconnect)
      selectionBox1.Adornee = Dialogconnect
      selectionBox1.Color = BrickColor.new("Really black")
      selectionBox1.LineThickness = 0.01
      selectionBox1.Transparency = 1
      local Weld = Instance.new("Weld", char)
      Weld.Part0 = char.Torso
      Weld.Part1 = Dialogconnect
      Weld.C1 = CFrame.new(3, -3, -1.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect.BrickColor = BrickColor.new("New Yeller")
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect.BrickColor = BrickColor.new("Lime green")
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      wait()
      Dialogconnect.Transparency = 1
      selectionBox1.Transparency = 1
      wait()
      Dialogconnect.Transparency = 0
      selectionBox1.Transparency = 0
      Dialogconnect:remove()
      onehitkilltwo = true
    end
    if key == "e" then
      drawded()
    end
  end)
  Tool.Deselected:connect(function(mouse)
    RW.Parent = nil
    LW.Parent = nil
    handle:remove()
    RSH.Parent = player.Character.Torso
    LSH.Parent = player.Character.Torso
  end)
end)
function OnDeath()
  GETDUNKED()
  oldloopedsound:remove()
end
char.Humanoid.Died:connect(OnDeath)
print("Made By Jose Likes And Enjoys Roblox for Josemmoya")
wait(5)
print("Based on the animation Determination by Jigsaw Rules.")
wait(5)
print("Special attacks are on q,e,z,x,and m(Megalomaniac).")
print("fixed by ROBLOX")