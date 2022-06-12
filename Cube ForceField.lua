local p = game.Players.LocalPlayer
local char = p.Character
local size = 8
part = function()
  
  local a = Instance.new("Part", script)
  a.Anchored = true
  a.CanCollide = true
  a.CFrame = char.Torso.CFrame
  a.Size = Vector3.new(size, 0.2, 0.2)
  a.Transparency = 1
  return a
end

part2 = function()
  
  local a = Instance.new("Part", script)
  a.Anchored = true
  a.CanCollide = true
  a.CFrame = char.Torso.CFrame
  a.Size = Vector3.new(0.2, size, 0.2)
  a.Transparency = 1
  return a
end

part3 = function()
  
  local a = Instance.new("Part", script)
  a.Anchored = true
  a.CanCollide = false
  a.Size = Vector3.new(size, size, 1)
  a.Transparency = 0.7
  a.Material = "Neon"
  a.BrickColor = BrickColor.new("Really red")
  local b = Instance.new("BlockMesh", a)
  b.Scale = Vector3.new(1, 1, 0)
  return a
end

local replicating = false
local root, a, b, c, d, a2, b2, c2, d2, aa, bb, cc, dd, z, x, c, v, b, n = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
replicate = function()
  
  replicating = true
  script:ClearAllChildren()
  root = part()
  root.Transparency = 1
  root.Size = Vector3.new(0.2, 0.2, 0.2)
  root.CanCollide = false
  a = part()
  b = part()
  c = part()
  d = part()
  a2 = part()
  b2 = part()
  c2 = part()
  d2 = part()
  aa = part2()
  bb = part2()
  cc = part2()
  dd = part2()
  z = part3()
  x = part3()
  c = part3()
  v = part3()
  b = part3()
  n = part3()
  replicating = false
end

script.ChildRemoved:connect(function(a)
  
  if a.ClassName == "Part" and replicating == false then
    replicate()
  end
end
)
replicate()
local tick = 0
CreateRegion3FromLocAndSize = function(Position, Size)
  
  local SizeOffset = Size / 2
  local Point1 = Position - SizeOffset
  local Point2 = Position + SizeOffset
  return Region3.new(Point1, Point2)
end

local set = false
local whitelist = {"Hieroku", "PPATTA", "DevGamerzz", "I kill U", "kash5", "ZeroCrimson", "Zaidia", "tsup2", "PointCoded", "CLarramore", "Suzuuki", "", "", ""}
p.Chatted:connect(function(ms)
  
  if ms:sub(1, 5) == "size-" then
    size = tonumber(ms:sub(6))
    replicate()
  else
    if ms:sub(1, 4) == "set-" then
      set = true
      z.CanCollide = false
      x.CanCollide = false
      c.CanCollide = false
      v.CanCollide = false
      b.CanCollide = false
      n.CanCollide = false
    else
      if ms:sub(1, 6) == "unset-" then
        set = false
        z.CanCollide = false
        x.CanCollide = false
        c.CanCollide = false
        v.CanCollide = false
        b.CanCollide = false
        n.CanCollide = false
      else
        if ms:sub(1, 10) == "whitelist-" then
          table.insert(whitelist, ms:sub(11))
        else
          if ms:sub(1, 12) == "unwhitelist-" then
            for i,v in pairs(whitelist) do
              if ms:sub(13) == v then
                table.remove(whitelist, i)
                break
              end
            end
          end
        end
      end
    end
  end
end
)
local magicpos = nil
game:GetService("RunService").Heartbeat:connect(function()
  
  pcall(function()
    
    local void = char:GetChildren()
    for _,pl in pairs(whitelist) do
      if game.Players:FindFirstChild(pl) ~= nil and game.Players:FindFirstChild(pl).Character ~= nil then
        for i,v in pairs(game.Players[pl].Character:GetChildren()) do
          table.insert(void, v)
        end
      end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
      if v.Character:isDescendantOf(char) and not v.Name == "FangxWulf" then
        v:LoadCharacter()
      end
    end
    char.Humanoid.Health = math.huge
    tick = tick + 0.01
    if not set then
      root.CFrame = root.CFrame:lerp(CFrame.new(char.Torso.CFrame.p) * CFrame.Angles(math.sin(tick) * 100 / 30 / (size / 2), math.cos(tick) * 100 / 30 / (size / 2), math.cos(tick) * 100 / 30 / (size / 2)), 0.1)
      magicpos = char.Torso.CFrame
    else
      root.CFrame = root.CFrame:lerp(CFrame.new(magicpos.p) * CFrame.Angles(0, 0, 0), 0.05)
    end
    local reg = CreateRegion3FromLocAndSize(root.CFrame.p, Vector3.new(size, size, size))
    for i,v in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(reg, void, 100)) do
      if v.Name ~= "Base" then
        v:Destroy()
      end
    end
    a.CFrame = root.CFrame * CFrame.new(size / 2, size / 2, 0) * CFrame.Angles(0, math.rad(90), 0)
    b.CFrame = root.CFrame * CFrame.new(-size / 2, size / 2, 0) * CFrame.Angles(0, math.rad(90), 0)
    c.CFrame = root.CFrame * CFrame.new(0, size / 2, size / 2)
    d.CFrame = root.CFrame * CFrame.new(0, size / 2, -size / 2)
    a2.CFrame = root.CFrame * CFrame.new(size / 2, -size / 2, 0) * CFrame.Angles(0, math.rad(90), 0)
    b2.CFrame = root.CFrame * CFrame.new(-size / 2, -size / 2, 0) * CFrame.Angles(0, math.rad(90), 0)
    c2.CFrame = root.CFrame * CFrame.new(0, -size / 2, size / 2)
    d2.CFrame = root.CFrame * CFrame.new(0, -size / 2, -size / 2)
    aa.CFrame = root.CFrame * CFrame.new(size / 2, 0, size / 2)
    bb.CFrame = root.CFrame * CFrame.new(-size / 2, 0, size / 2)
    cc.CFrame = root.CFrame * CFrame.new(-size / 2, 0, -size / 2)
    dd.CFrame = root.CFrame * CFrame.new(size / 2, 0, -size / 2)
    z.CFrame = root.CFrame * CFrame.new(size / 2, 0, 0) * CFrame.Angles(0, math.rad(90), 0)
    x.CFrame = root.CFrame * CFrame.new(-size / 2, 0, 0) * CFrame.Angles(0, math.rad(90), 0)
    c.CFrame = root.CFrame * CFrame.new(0, 0, size / 2) * CFrame.Angles(0, 0, math.rad(90))
    v.CFrame = root.CFrame * CFrame.new(0, 0, -size / 2) * CFrame.Angles(0, 0, math.rad(90))
    b.CFrame = root.CFrame * CFrame.new(0, size / 2, 0) * CFrame.Angles(math.rad(90), 0, 0)
    n.CFrame = root.CFrame * CFrame.new(0, -size / 2, 0) * CFrame.Angles(math.rad(90), 0, 0)
  end
)
end
)