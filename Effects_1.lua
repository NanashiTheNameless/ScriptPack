local easing = require(script.easing)
function spawnTrianglePart(parent, color)
  local p = Instance.new("WedgePart")
  p.Anchored = true
  p.CanCollide = false
  p.BottomSurface = 0
  p.TopSurface = 0
  p.Transparency = 0.5
  p.formFactor = "Custom"
  p.Size = Vector3.new(1, 1, 1)
  p.Parent = parent or game.Workspace
  local m = Instance.new("SpecialMesh", p)
  m.MeshType = "Wedge"
  m.Scale = Vector3.new(0, 1, 1)
  if color ~= nil then
    p.BrickColor = BrickColor.new(color)
  end
  p.Material = Enum.Material.Neon
  game.Debris:AddItem(p, 1)
  spawn(function()
    for i = 0, 1, 0.1 do
      p.Transparency = 0.5 + 0.5 * i
      wait(0.03)
    end
    p.Transparency = 1
    p:Remove()
  end)
  return p
end
function drawTriangle(a, b, c, parent, color)
  local len_AB = (b - a).magnitude
  local len_BC = (c - b).magnitude
  local len_CA = (a - c).magnitude
  if len_AB > len_BC and len_AB > len_CA then
    a, c = c, a
    b, c = c, b
  elseif len_AB < len_CA and len_BC < len_CA then
    a, b = b, a
    b, c = c, b
  end
  local dot = (a - b):Dot(c - b)
  local split = b + (c - b).unit * dot / (c - b).magnitude
  local xA = 0.2
  local yA = (split - a).magnitude
  local zA = (split - b).magnitude
  local xB = 0.2
  local yB = (split - a).magnitude
  local zB = (split - c).magnitude
  local diry = (a - split).unit
  local dirz = (c - split).unit
  local dirx = diry:Cross(dirz).unit
  local posA = split + diry * yA / 2 - dirz * zA / 2
  local posB = split + diry * yB / 2 + dirz * zB / 2
  local partA = spawnTrianglePart(parent, color)
  partA.Name = "TrianglePart"
  partA.Mesh.Scale = Vector3.new(0, yA, zA) * 5
  partA.Size = Vector3.new(0.2, 0.2, 0.2)
  partA.CFrame = CFrame.new(posA.x, posA.y, posA.z, dirx.x, diry.x, dirz.x, dirx.y, diry.y, dirz.y, dirx.z, diry.z, dirz.z)
  dirx = dirx * -1
  dirz = dirz * -1
  local partB = spawnTrianglePart(parent, color)
  partB.Name = "TrianglePart"
  partB.Mesh.Scale = Vector3.new(0, yB, zB) * 5
  partB.Size = Vector3.new(0.2, 0.2, 0.2)
  partB.CFrame = CFrame.new(posB.x, posB.y, posB.z, dirx.x, diry.x, dirz.x, dirx.y, diry.y, dirz.y, dirx.z, diry.z, dirz.z)
end
local API = {}
function API:TrailEffect(Parent, P, T, Color)
  if game.Players.LocalPlayer.Trail.Value then
    spawn(function()
      local P1 = P.CFrame
      local P2 = P.CFrame
      local S1 = P.Size.Y
      local S2 = P.Size.Y
      local s = tick()
      while tick() - s <= T do
        P1 = P.CFrame
        S1 = P.Size.Y
        if P1 ~= P2 then
          drawTriangle((P1 * CFrame.new(0, S1 / 2, 0)).p, (P1 * CFrame.new(0, -S1 / 2, 0)).p, (P2 * CFrame.new(0, -S2 / 2, 0)).p, Parent, Color)
          drawTriangle((P2 * CFrame.new(0, S2 / 2, 0)).p, (P2 * CFrame.new(0, -S2 / 2, 0)).p, (P1 * CFrame.new(0, S1 / 2, 0)).p, Parent, Color)
          P2 = P1
          S2 = S1
        end
        game:GetService("RunService").Heartbeat:wait()
      end
    end)
  end
end
function API:Blast(Parent, P, TranS, Size, MaxSize, T, Color, Easing, rep, delay)
  spawn(function()
    for i = 1, rep do
      spawn(function()
        local Prt = Instance.new("Part", Parent)
        game.Debris:AddItem(Prt, T + 5)
        Prt.Material = "Neon"
        Prt.BrickColor = Color
        Prt.formFactor = "Custom"
        Prt.Size = Vector3.new(1, 1, 1) * 0.2
        Prt.Anchored = true
        Prt.CanCollide = false
        Prt.TopSurface = 0
        Prt.BottomSurface = 0
        Prt.Transparency = TranS
        local Msh = Instance.new("BlockMesh", Prt)
        Msh.Scale = Size * 5
        Prt.CFrame = CFrame.new(P) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
        local t, d, s = 0, T, tick()
        while t < d do
          local r = easing[Easing](t, 0, 1, d)
          t = tick() - s
          Prt.Transparency = TranS + (1 - TranS) * r
          Prt.CFrame = CFrame.new(P) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
          Msh.Scale = Size * 5 + (MaxSize - Size) * r * 5
          wait(0.03)
        end
        Prt:Remove()
      end)
      wait(delay)
    end
  end)
end
function API:Ring(Parent, CF, TranS, Size, MaxSize, T, Color, Easing, rep, delay)
  spawn(function()
    for i = 1, rep do
      spawn(function()
        local Prt = Instance.new("Part", Parent)
        game.Debris:AddItem(Prt, T + 5)
        Prt.Material = "Neon"
        Prt.BrickColor = Color
        Prt.formFactor = "Custom"
        Prt.Size = Vector3.new(1, 1, 1) * 0.2
        Prt.Anchored = true
        Prt.CanCollide = false
        Prt.TopSurface = 0
        Prt.BottomSurface = 0
        Prt.Transparency = TranS
        local Msh = Instance.new("SpecialMesh", Prt)
        Msh.MeshType = "FileMesh"
        Msh.MeshId = "http://www.roblox.com/asset/?id=3270017"
        Msh.Scale = Size
        Prt.CFrame = CF
        local t, d, s = 0, T, tick()
        while t < d do
          local r = easing[Easing](t, 0, 1, d)
          t = tick() - s
          Prt.Transparency = TranS + (1 - TranS) * r
          Msh.Scale = Size + (MaxSize - Size) * r
          wait(0.03)
        end
        Prt:Remove()
      end)
      wait(delay)
    end
  end)
end
function API:Explode(Parent, CF, TranS, Size, MaxSize, T, Color, Easing, rep, delay)
  spawn(function()
    for i = 1, rep do
      spawn(function()
        local Prt = Instance.new("Part", Parent)
        game.Debris:AddItem(Prt, T + 5)
        Prt.Material = "Neon"
        Prt.BrickColor = Color
        Prt.formFactor = "Custom"
        Prt.Size = Vector3.new(1, 1, 1) * 0.2
        Prt.Anchored = true
        Prt.CanCollide = false
        Prt.TopSurface = 0
        Prt.BottomSurface = 0
        Prt.Transparency = TranS
        local Msh = Instance.new("SpecialMesh", Prt)
        Msh.MeshType = "FileMesh"
        Msh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        Msh.Scale = Size
        Prt.CFrame = CF
        local t, d, s = 0, T, tick()
        while t < d do
          local r = easing[Easing](t, 0, 1, d)
          t = tick() - s
          Prt.Transparency = TranS + (1 - TranS) * r
          Msh.Scale = Size + (MaxSize - Size) * r
          wait(0.03)
        end
        Prt:Remove()
      end)
      wait(delay)
    end
  end)
end
function API:Cylinder(Parent, CF, TranS, Size, MaxSize, T, Color, Easing, rep, delay)
  spawn(function()
    for i = 1, rep do
      spawn(function()
        local Prt = Instance.new("Part", Parent)
        game.Debris:AddItem(Prt, T + 5)
        Prt.Material = "Neon"
        Prt.BrickColor = Color
        Prt.formFactor = "Custom"
        Prt.Size = Vector3.new(1, 1, 1) * 0.2
        Prt.Anchored = true
        Prt.CanCollide = false
        Prt.TopSurface = 0
        Prt.BottomSurface = 0
        Prt.Transparency = TranS
        local Msh = Instance.new("CylinderMesh", Prt)
        Msh.Scale = Size * 5
        Prt.CFrame = CF
        local t, d, s = 0, T, tick()
        while t < d do
          local r = easing[Easing](t, 0, 1, d)
          t = tick() - s
          Prt.Transparency = TranS + (1 - TranS) * r
          Msh.Scale = Size * 5 + (MaxSize - Size) * r * 5
          wait(0.03)
        end
        Prt:Remove()
      end)
      wait(delay)
    end
  end)
end
function API:Circle(Parent, P, offCF, TranS, Size, MaxSize, T, Color, Easing, rep, delay)
  spawn(function()
    for i = 1, rep do
      spawn(function()
        local Prt = Instance.new("Part", Parent)
        game.Debris:AddItem(Prt, T + 5)
        Prt.Material = "Neon"
        Prt.BrickColor = Color
        Prt.formFactor = "Custom"
        Prt.Size = Vector3.new(1, 1, 1) * 0.2
        Prt.Anchored = true
        Prt.CanCollide = false
        Prt.TopSurface = 0
        Prt.BottomSurface = 0
        Prt.Transparency = TranS
        local Msh = Instance.new("SpecialMesh", Prt)
        Msh.MeshType = "Sphere"
        Msh.Scale = Size * 5
        Prt.CFrame = P.CFrame * offCF
        local t, d, s = 0, T, tick()
        while t < d do
          local r = easing[Easing](t, 0, 1, d)
          t = tick() - s
          Prt.Transparency = TranS + (1 - TranS) * r
          Msh.Scale = Size * 5 + (MaxSize - Size) * r * 5
          Prt.CFrame = P.CFrame * offCF
          wait(0.03)
        end
        Prt:Remove()
      end)
      wait(delay)
    end
  end)
end
return API
