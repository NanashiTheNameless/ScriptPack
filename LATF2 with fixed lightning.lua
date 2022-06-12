while not getmetatable(shared) do
  wait()
end
shared(script)
LocalPlayer = game:GetService("Players").LocalPlayer
chatsys = function(msg, color)
  
  spawn(function()
    
    if LocalPlayer.Character:findFirstChild("Head") then
      mainPart = LocalPlayer.Character:findFirstChild("Head")
    end
    local bg = Instance.new("BillboardGui", mainPart)
    bg.Adornee = mainPart
    bg.Name = tostring(math.random(10000, 100000))
    bg.Size = UDim2.new(4, 0, 2.5, 0)
    bg.StudsOffset = Vector3.new(-4, 2, 0)
    local bg2 = Instance.new("BillboardGui", mainPart)
    bg2.Adornee = mainPart
    bg2.Name = tostring(math.random(10000, 100000))
    bg2.Size = UDim2.new(4, 0, 2.5, 0)
    bg2.StudsOffset = Vector3.new(-4, 4.5, 0)
    local text = Instance.new("TextLabel", bg)
    text.Size = UDim2.new(3, 0, 0.5, 0)
    text.FontSize = "Size18"
    text.TextScaled = true
    text.TextTransparency = 0
    text.BackgroundTransparency = 1
    text.TextTransparency = 0
    text.TextStrokeTransparency = 0
    text.Font = "Arial"
    text.TextColor = BrickColor.new(color)
    text.Text = " "
    Message = msg:sub(1)
    if #Message > 100 then
      return 
    end
    for i = 0, #Message do
      wait()
      text.Text = string.gsub(Message:sub(0, i), "fuck", "fu\127ck")
    end
    wait()
    coroutine.resume(coroutine.create(function()
      
      for i = 0, 5, 0.05 do
        if bg ~= nil then
          if bg2 ~= nil then
            wait()
            bg2.StudsOffset = bg2.StudsOffset + Vector3.new(0, 0.05, 0)
          end
          bg.StudsOffset = bg.StudsOffset + Vector3.new(0, 0.05, 0)
        end
      end
    end
))
    for i = text.TextTransparency, 1, 0.01 do
      wait(0.03)
      text.TextTransparency = i
      text.TextStrokeTransparency = i
    end
    if bg == nil then
      return 
    end
    bg:Destroy()
    if bg2 == nil then
      return 
    end
    bg2:Destroy()
  end
)
end

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
local debris = game:service("Debris")
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs(char:children()) do
  if v:IsA("Hat") then
    v:Destroy()
  end
end
for i,v in pairs(hed:GetChildren()) do
  if v:IsA("Sound") then
    v:Destroy()
  end
end

Debounces = {CanAttack = true, NoIdl = false, Slashing = false, Slashed = false, RPunch = false, RPunched = false, LPunch = false, LPunched = false}
local Touche = {char.Name}
hed.face.Texture = "rbxassetid://110112292"
char["Body Colors"].HeadColor = BrickColor.new("Really black")
ypcall(function()
  
  shirt = Instance.new("Shirt", char)
  shirt.Name = "Shirt"
  pants = Instance.new("Pants", char)
  pants.Name = "Pants"
  char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=246438816"
  char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=267068334"
end
)
lerp = function(a, b, t)
  
  return a + (b - a) * t
end

slerp = function(a, b, t)
  
  dot = a:Dot(b)
  if t > 0.5 or not a then
    do return dot <= 0.99999 and dot >= -0.99999 or b end
    r = math.acos(dot)
    do return (a * math.sin((1 - t) * r) + b * math.sin(t * r)) / math.sin(r) end
  end
end

matrixInterpolate = function(a, b, t)
  
  local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
  local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
  local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx, by, bz), t)
  local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t)
  local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t)
  local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t)
  local t = v1:Dot(v2)
  if t >= 0 and t ~= 0 and t <= 0 then
    return CFrame.new()
  end
  return CFrame.new(v0.x, v0.y, v0.z, v1.x, v1.y, v1.z, v2.x, v2.y, v2.z, v3.x, v3.y, v3.z)
end

genWeld = function(a, b)
  
  local w = Instance.new("Weld", a)
  w.Part0 = a
  w.Part1 = b
  return w
end

weld = function(a, b)
  
  local weld = Instance.new("Weld")
  weld.Name = "W"
  weld.Part0 = a
  weld.Part1 = b
  weld.C0 = a.CFrame:inverse() * b.CFrame
  weld.Parent = a
  return weld
end

Lerp = function(c1, c2, al)
  
  local com1 = {c1.X, c1.Y, c1.Z, c1:toEulerAnglesXYZ()}
  local com2 = {c2.X, c2.Y, c2.Z, c2:toEulerAnglesXYZ()}
  for i,v in pairs(com1) do
    com1[i] = v + (com2[i] - v) * al
  end
  return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
  
  local wld = Instance.new("Weld", wp1)
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end

weld5 = function(part0, part1, c0, c1)
  
  weeld = Instance.new("Weld", part0)
  weeld.Part0 = part0
  weeld.Part1 = part1
  weeld.C0 = c0
  weeld.C1 = c1
  return weeld
end

HasntTouched = function(plrname)
  
  local ret = true
  for _,v in pairs(Touche) do
    if v == plrname then
      ret = false
    end
  end
  return ret
end

newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
_G.custSound = Instance.new("Sound", char)
_G.custSound.SoundId = "rbxassetid://413641131"
_G.custSound.Looped = true
_G.custSound.Pitch = 1
_G.custSound.Volume = 1
wait(0.1)
_G.custSound:Play()
local Transforming = true
hum.WalkSpeed = 0
local fx = Instance.new("Part", torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "SmoothPlastic"
fx.Size = Vector3.new(1, 1, 1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh", fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(1, 1, 1)
for i = 1, 20 do
  rs:wait()
  fx.Transparency = fx.Transparency - 0.05
  fx.CFrame = torso.CFrame
  fxm.Scale = fxm.Scale + Vector3.new(0.5, 0.5, 0.5)
  rs:wait()
end
torso.Transparency = 1
larm.Transparency = 1
rarm.Transparency = 1
hed.face.Texture = "http://www.roblox.com/asset/?id=46282671"
Hood = Instance.new("Part", hed)
Hood.formFactor = "Symmetric"
Hood.Size = Vector3.new(1, 1, 1)
Hood.CFrame = hed.CFrame
Hood:BreakJoints()
Hood.CanCollide = false
Hood.TopSurface = "Smooth"
Hood.BottomSurface = "Smooth"
Weld = Instance.new("Weld", hed)
Weld.Part0 = hed
Weld.Part1 = Hood
Weld.C0 = CFrame.new(0, 0.3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Mesh = Instance.new("SpecialMesh", Hood)
Mesh.MeshId = "rbxassetid://16952952"
Mesh.TextureId = "rbxassetid://32908530"
Mesh.Scale = Vector3.new(1, 1, 1)
torsoblock = Instance.new("Part", char)
torsoblock.Name = "torso"
torsoblock.BrickColor = BrickColor.new("Really black")
torsoblock.Size = Vector3.new(2, 2.01, 1.18)
torsoblock.CanCollide = false
torsoblock.BottomSurface = "Smooth"
torsoblock.TopSurface = "Smooth"
Weld = Instance.new("Weld", torso)
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0, 0)
Weld.Part1 = torsoblock
Weld.C1 = CFrame.new(0, -3.09944153e-06, 0, 1, 9.29513355e-10, 3.26636873e-05, 4.80190998e-10, 1, -4.31581502e-05, -3.26636873e-05, 4.31581502e-05, 1)
lap1 = Instance.new("Part", char)
lap1.BrickColor = BrickColor.new("Really red")
lap1.Size = Vector3.new(1.07, 0.21, 1.22)
lap1.CanCollide = false
lap1.BottomSurface = "Smooth"
lap1.TopSurface = "Smooth"
lap1.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap1
Weld.C1 = CFrame.new(-1.52503204, 0.206899166, 0.0284500122, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap1)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap2 = Instance.new("Part", char)
lap2.BrickColor = BrickColor.new("Really black")
lap2.Size = Vector3.new(0.27, 0.49, 0.42)
lap2.CanCollide = false
lap2.BottomSurface = "Smooth"
lap2.TopSurface = "Smooth"
lap2.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap2
Weld.C1 = CFrame.new(-1.7252121, -0.807500362, 0.0218887329, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap2)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap3 = Instance.new("Part", char)
lap3.BrickColor = BrickColor.new("Really black")
lap3.Size = Vector3.new(1.07, 0.21, 1.22)
lap3.CanCollide = false
lap3.BottomSurface = "Smooth"
lap3.TopSurface = "Smooth"
lap3.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap3
Weld.C1 = CFrame.new(-1.52501678, -0.0467915535, 0.0284423828, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap3)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)

lap4 = Instance.new("Part", char)
lap4.BrickColor = BrickColor.new("Really red")
lap4.Size = Vector3.new(0.21, 2.105, 0.415)
lap4.CanCollide = false
lap4.BottomSurface = "Smooth"
lap4.TopSurface = "Smooth"
lap4.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap4
Weld.C1 = CFrame.new(0.056968689, 0.0115671158, 1.21671295, 0.00349965692, -0.00955337007, -0.999948263, 0.00343787274, 0.999948621, -0.0095413411, 0.999988019, -0.00340430322, 0.00353232026)
Mesh = Instance.new("SpecialMesh", lap4)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.1, 1, 1)
lap5 = Instance.new("Part", char)
lap5.BrickColor = BrickColor.new("Really red")
lap5.Size = Vector3.new(0.27, 0.49, 0.42)
lap5.CanCollide = false
lap5.BottomSurface = "Smooth"
lap5.TopSurface = "Smooth"
lap5.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap5
Weld.C1 = CFrame.new(-1.32459259, 0.852505207, 0.0549850464, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap5)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap6 = Instance.new("Part", char)
lap6.BrickColor = BrickColor.new("Really black")
lap6.Size = Vector3.new(0.27, 0.49, 0.42)
lap6.CanCollide = false
lap6.BottomSurface = "Smooth"
lap6.TopSurface = "Smooth"
lap6.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap6
Weld.C1 = CFrame.new(0.218383789, -0.807549238, 1.52164459, 0.00349965692, -0.00955337007, -0.999948263, 0.00343787274, 0.999948621, -0.0095413411, 0.999988019, -0.00340430322, 0.00353232026)
Mesh = Instance.new("SpecialMesh", lap6)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap7 = Instance.new("Part", char)
lap7.BrickColor = BrickColor.new("Really red")
lap7.Size = Vector3.new(1.07, 0.21, 1.22)
lap7.CanCollide = false
lap7.BottomSurface = "Smooth"
lap7.TopSurface = "Smooth"
lap7.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap7
Weld.C1 = CFrame.new(-1.52507019, 0.712491512, 0.028465271, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap7)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap8 = Instance.new("Part", char)
lap8.BrickColor = BrickColor.new("Really black")
lap8.Size = Vector3.new(1.07, 0.21, 1.22)
lap8.CanCollide = false
lap8.BottomSurface = "Smooth"
lap8.TopSurface = "Smooth"
lap8.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap8
Weld.C1 = CFrame.new(-1.52506256, 0.672516346, 0.0284576416, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap8)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap9 = Instance.new("Part", char)
lap9.BrickColor = BrickColor.new("Really red")
lap9.Size = Vector3.new(1.07, 0.21, 1.22)
lap9.CanCollide = false
lap9.BottomSurface = "Smooth"
lap9.TopSurface = "Smooth"
lap9.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap9
Weld.C1 = CFrame.new(-1.5250473, -0.792313099, 0.0283889771, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap9)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap10 = Instance.new("Part", char)
lap10.BrickColor = BrickColor.new("Really red")
lap10.Size = Vector3.new(0.21, 2.105, 0.415)
lap10.CanCollide = false
lap10.BottomSurface = "Smooth"
lap10.TopSurface = "Smooth"
lap10.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap10
Weld.C1 = CFrame.new(0.0676651001, 0.0115408897, 1.82659912, 0.00349965692, -0.00955337007, -0.999948263, 0.00343787274, 0.999948621, -0.0095413411, 0.999988019, -0.00340430322, 0.00353232026)
Mesh = Instance.new("SpecialMesh", lap10)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.1, 1, 1)
lap11 = Instance.new("Part", char)
lap11.BrickColor = BrickColor.new("Really red")
lap11.Size = Vector3.new(1.07, 0.21, 1.22)
lap11.CanCollide = false
lap11.BottomSurface = "Smooth"
lap11.TopSurface = "Smooth"
lap11.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap11
Weld.C1 = CFrame.new(-1.52507782, -0.287513018, 0.0284729004, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap11)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap12 = Instance.new("Part", char)
lap12.BrickColor = BrickColor.new("Really black")
lap12.Size = Vector3.new(0.27, 0.49, 0.42)
lap12.CanCollide = false
lap12.BottomSurface = "Smooth"
lap12.TopSurface = "Smooth"
lap12.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap12
Weld.C1 = CFrame.new(-0.181564331, -0.807525635, 1.52863312, 0.00349965692, -0.00955337007, -0.999948263, 0.00343787274, 0.999948621, -0.0095413411, 0.999988019, -0.00340430322, 0.00353232026)
Mesh = Instance.new("SpecialMesh", lap12)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap13 = Instance.new("Part", char)
lap13.BrickColor = BrickColor.new("Really black")
lap13.Size = Vector3.new(1.07, 0.21, 1.22)
lap13.CanCollide = false
lap13.BottomSurface = "Smooth"
lap13.TopSurface = "Smooth"
lap13.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap13
Weld.C1 = CFrame.new(-1.52505493, 0.262508869, 0.0284576416, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap13)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap14 = Instance.new("Part", char)
lap14.BrickColor = BrickColor.new("Really red")
lap14.Size = Vector3.new(0.27, 0.49, 0.42)
lap14.CanCollide = false
lap14.BottomSurface = "Smooth"
lap14.TopSurface = "Smooth"
lap14.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap14
Weld.C1 = CFrame.new(-0.141487122, 0.852470875, 1.52806091, 0.00349965692, -0.00955337007, -0.999948263, 0.00343787274, 0.999948621, -0.0095413411, 0.999988019, -0.00340430322, 0.00353232026)
Mesh = Instance.new("SpecialMesh", lap14)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap15 = Instance.new("Part", char)
lap15.BrickColor = BrickColor.new("Really black")
lap15.Size = Vector3.new(0.22, 0.34, 0.63)
lap15.CanCollide = false
lap15.BottomSurface = "Smooth"
lap15.TopSurface = "Smooth"
lap15.Material = "SmoothPlastic"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap15
Weld.C1 = CFrame.new(-0.983390808, 0.867502213, 1.80670166, -0.704651117, -0.00427827798, -0.709541082, 0.00348753715, 0.999948919, -0.00949283503, 0.709545434, -0.00916368794, -0.704600155)
lap16 = Instance.new("Part", char)
lap16.BrickColor = BrickColor.new("Really black")
lap16.Size = Vector3.new(1.07, 0.465, 1.22)
lap16.CanCollide = false
lap16.BottomSurface = "Smooth"
lap16.TopSurface = "Smooth"
lap16.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap16
Weld.C1 = CFrame.new(-1.52503204, -0.539155483, 0.0284347534, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
lap17 = Instance.new("Part", char)
lap17.BrickColor = BrickColor.new("Really red")
lap17.Size = Vector3.new(0.2, 0.97, 0.213)
lap17.CanCollide = false
lap17.BottomSurface = "Smooth"
lap17.TopSurface = "Smooth"
lap17.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap17
Weld.C1 = CFrame.new(-1.52545166, 0.589025021, 0.0570755005, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
lap18 = Instance.new("Part", char)
lap18.BrickColor = BrickColor.new("Really red")
lap18.Size = Vector3.new(0.27, 0.49, 0.42)
lap18.CanCollide = false
lap18.BottomSurface = "Smooth"
lap18.TopSurface = "Smooth"
lap18.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap18
Weld.C1 = CFrame.new(-1.7244873, 0.852505684, 0.0619812012, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap18)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap19 = Instance.new("Part", char)
lap19.BrickColor = BrickColor.new("Really red")
lap19.Size = Vector3.new(0.37, 1.779, 0.405)
lap19.CanCollide = false
lap19.BottomSurface = "Smooth"
lap19.TopSurface = "Smooth"
lap19.Material = "Neon"
lap19.Shape = "Block"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap19
Weld.C1 = CFrame.new(-1.52390289, -0.154995203, 0.0370864868, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
lap20 = Instance.new("Part", char)
lap20.BrickColor = BrickColor.new("Really black")
lap20.Size = Vector3.new(0.22, 0.29, 0.86)
lap20.CanCollide = false
lap20.BottomSurface = "Smooth"
lap20.TopSurface = "Smooth"
lap20.Material = "SmoothPlastic"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap20
Weld.C1 = CFrame.new(1.5226593, -1.13317108, 0.862571716, 0.99973917, 0.0132680219, -0.0185943563, -0.0143596791, -0.268021852, -0.963305831, -0.0177648552, 0.963321507, -0.267761409)
lap21 = Instance.new("Part", char)
lap21.BrickColor = BrickColor.new("Really red")
lap21.Size = Vector3.new(0.27, 0.49, 0.42)
lap21.CanCollide = false
lap21.BottomSurface = "Smooth"
lap21.TopSurface = "Smooth"
lap21.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap21
Weld.C1 = CFrame.new(0.258415222, 0.852460384, 1.52105713, 0.00349965692, -0.00955337007, -0.999948263, 0.00343787274, 0.999948621, -0.0095413411, 0.999988019, -0.00340430322, 0.00353232026)
Mesh = Instance.new("SpecialMesh", lap21)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap22 = Instance.new("Part", char)
lap22.BrickColor = BrickColor.new("Really black")
lap22.Size = Vector3.new(0.22, 0.34, 0.63)
lap22.CanCollide = false
lap22.BottomSurface = "Smooth"
lap22.TopSurface = "Smooth"
lap22.Material = "SmoothPlastic"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap22
Weld.C1 = CFrame.new(-1.20274353, 0.867571354, -0.0484848022, -0.867748141, 0.00781238079, 0.496942878, 0.00353512331, 0.999948204, -0.009547133, -0.496991694, -0.00652775308, -0.867730796)
lap23 = Instance.new("Part", char)
lap23.BrickColor = BrickColor.new("Really black")
lap23.Size = Vector3.new(1.07, 0.21, 1.22)
lap23.CanCollide = false
lap23.BottomSurface = "Smooth"
lap23.TopSurface = "Smooth"
lap23.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap23
Weld.C1 = CFrame.new(-1.52500153, -0.244596958, 0.0284118652, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap23)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap24 = Instance.new("Part", char)
lap24.BrickColor = BrickColor.new("Really black")
lap24.Size = Vector3.new(1.07, 0.465, 1.22)
lap24.CanCollide = false
lap24.BottomSurface = "Smooth"
lap24.TopSurface = "Smooth"
lap24.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap24
Weld.C1 = CFrame.new(-1.52502441, 0.460847855, 0.0284805298, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
lap25 = Instance.new("Part", char)
lap25.BrickColor = BrickColor.new("Really red")
lap25.Size = Vector3.new(0.21, 2.105, 0.638)
lap25.CanCollide = false
lap25.BottomSurface = "Smooth"
lap25.TopSurface = "Smooth"
lap25.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap25
Weld.C1 = CFrame.new(-1.53420258, 0.0116128922, -0.256065369, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap25)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.1, 1, 1)
lap26 = Instance.new("Part", char)
lap26.BrickColor = BrickColor.new("Really black")
lap26.Size = Vector3.new(1.07, 0.21, 1.22)
lap26.CanCollide = false
lap26.BottomSurface = "Smooth"
lap26.TopSurface = "Smooth"
lap26.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap26
Weld.C1 = CFrame.new(-1.52501678, 0.159998417, 0.028465271, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap26)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap27 = Instance.new("Part", char)
lap27.BrickColor = BrickColor.new("Really black")
lap27.Size = Vector3.new(1.07, 0.21, 1.22)
lap27.CanCollide = false
lap27.BottomSurface = "Smooth"
lap27.TopSurface = "Smooth"
lap27.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap27
Weld.C1 = CFrame.new(-1.52506256, -0.831406593, 0.0283813477, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap27)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
lap28 = Instance.new("Part", char)
lap28.BrickColor = BrickColor.new("Really black")
lap28.Size = Vector3.new(0.22, 0.34, 0.63)
lap28.CanCollide = false
lap28.BottomSurface = "Smooth"
lap28.TopSurface = "Smooth"
lap28.Material = "SmoothPlastic"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap28
Weld.C1 = CFrame.new(1.52050781, 0.867410183, 0.621932983, 0.999988079, -0.00337814656, 0.00353226066, 0.00341188442, 0.999948263, -0.00958933495, -0.00349968346, 0.00960127078, 0.999947786)
lap29 = Instance.new("Part", char)
lap29.BrickColor = BrickColor.new("Really black")
lap29.Size = Vector3.new(0.27, 0.49, 0.42)
lap29.CanCollide = false
lap29.BottomSurface = "Smooth"
lap29.TopSurface = "Smooth"
lap29.Material = "Neon"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap29
Weld.C1 = CFrame.new(-1.32519531, -0.807491779, 0.0149002075, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap29)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap30 = Instance.new("Part", char)
lap30.BrickColor = BrickColor.new("Really black")
lap30.Size = Vector3.new(0.22, 0.29, 0.86)
lap30.CanCollide = false
lap30.BottomSurface = "Smooth"
lap30.TopSurface = "Smooth"
lap30.Material = "SmoothPlastic"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap30
Weld.C1 = CFrame.new(-1.00627899, -2.23521423, 0.611461639, -0.719907582, 0.0127804587, -0.693952262, -0.674287975, -0.249883845, 0.694905698, -0.164526239, 0.968191445, 0.188510969)
lap31 = Instance.new("Part", char)
lap31.BrickColor = BrickColor.new("Really black")
lap31.Size = Vector3.new(0.22, 0.29, 0.86)
lap31.CanCollide = false
lap31.BottomSurface = "Smooth"
lap31.TopSurface = "Smooth"
lap31.Material = "SmoothPlastic"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap31
Weld.C1 = CFrame.new(-1.18473816, -0.439834595, 1.09579754, -0.856439352, 0.024808526, 0.515651405, 0.493696839, -0.252633333, 0.832129717, 0.150914639, 0.967244029, 0.204117209)
Mesh = Instance.new("SpecialMesh", lap31)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
lap32 = Instance.new("Part", char)
lap32.BrickColor = BrickColor.new("Really red")
lap32.Size = Vector3.new(0.21, 2.105, 0.549)
lap32.CanCollide = false
lap32.BottomSurface = "Smooth"
lap32.TopSurface = "Smooth"
lap32.Material = "Granite"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap32
Weld.C1 = CFrame.new(-1.52036285, 0.0115880966, 0.355384827, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
Mesh = Instance.new("SpecialMesh", lap32)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.1, 1, 1)
lap33 = Instance.new("Part", char)
lap33.BrickColor = BrickColor.new("Really black")
lap33.Size = Vector3.new(1.01, 2.03, 1.18)
lap33.CanCollide = false
lap33.BottomSurface = "Smooth"
lap33.TopSurface = "Smooth"
lap33.Material = "SmoothPlastic"
Weld = Instance.new("Weld", larm)
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.5, 0, 0)
Weld.Part1 = lap33
Weld.C1 = CFrame.new(-1.52506256, 0.0225162506, 0.0284347534, -0.99998796, 0.00343361334, -0.00353339361, 0.00346710999, 0.99994874, -0.00951801147, 0.00350053119, -0.00953014754, -0.999948561)
rap1 = Instance.new("Part", char)
rap1.BrickColor = BrickColor.new("Really black")
rap1.Size = Vector3.new(1.01, 2.03, 1.18)
rap1.CanCollide = false
rap1.BottomSurface = "Smooth"
rap1.TopSurface = "Smooth"
rap1.Material = "SmoothPlastic"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap1
Weld.C1 = CFrame.new(-1.50264359, 0.0183067322, 0.0106048584, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
rap2 = Instance.new("Part", char)
rap2.BrickColor = BrickColor.new("Really red")
rap2.Size = Vector3.new(0.21, 1.535, 0.415)
rap2.CanCollide = false
rap2.BottomSurface = "Smooth"
rap2.TopSurface = "Smooth"
rap2.Material = "Granite"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap2
Weld.C1 = CFrame.new(0.0498962402, -0.27769053, 1.80420685, 0.00126393698, -0.00222368166, 0.999996722, -0.00611764193, 0.99997884, 0.00223137415, -0.999980509, -0.00612044195, 0.00125030649)
Mesh = Instance.new("SpecialMesh", rap2)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.1, 1, 1)
rap3 = Instance.new("Part", char)
rap3.BrickColor = BrickColor.new("Really black")
rap3.Size = Vector3.new(1.07, 0.21, 1.22)
rap3.CanCollide = false
rap3.BottomSurface = "Smooth"
rap3.TopSurface = "Smooth"
rap3.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap3
Weld.C1 = CFrame.new(-1.50261879, 0.751888037, 0.0107574463, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap3)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap4 = Instance.new("Part", char)
rap4.BrickColor = BrickColor.new("Really red")
rap4.Size = Vector3.new(1.07, 0.21, 1.22)
rap4.CanCollide = false
rap4.BottomSurface = "Smooth"
rap4.TopSurface = "Smooth"
rap4.Material = "Granite"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap4
Weld.C1 = CFrame.new(-1.50270081, -0.797735333, 0.0107727051, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap4)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap5 = Instance.new("Part", char)
rap5.BrickColor = BrickColor.new("Really red")
rap5.Size = Vector3.new(0.37, 1.779, 0.405)
rap5.CanCollide = false
rap5.BottomSurface = "Smooth"
rap5.TopSurface = "Smooth"
rap5.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap5
Weld.C1 = CFrame.new(-1.50151443, -0.159224987, 0.0192108154, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
rap6 = Instance.new("Part", char)
rap6.BrickColor = BrickColor.new("Really black")
rap6.Size = Vector3.new(0.27, 0.49, 0.42)
rap6.CanCollide = false
rap6.BottomSurface = "Smooth"
rap6.TopSurface = "Smooth"
rap6.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap6
Weld.C1 = CFrame.new(0.200653076, -0.811793804, 1.49938297, 0.00126393698, -0.00222368166, 0.999996722, -0.00611764193, 0.99997884, 0.00223137415, -0.999980509, -0.00612044195, 0.00125030649)
Mesh = Instance.new("SpecialMesh", rap6)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
rap7 = Instance.new("Part", char)
rap7.BrickColor = BrickColor.new("Really black")
rap7.Size = Vector3.new(0.27, 0.49, 0.42)
rap7.CanCollide = false
rap7.BottomSurface = "Smooth"
rap7.TopSurface = "Smooth"
rap7.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap7
Weld.C1 = CFrame.new(-1.30287838, -0.811737895, -0.00283813477, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap7)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
rap8 = Instance.new("Part", char)
rap8.BrickColor = BrickColor.new("Really red")
rap8.Size = Vector3.new(0.21, 1.588, 0.415)
rap8.CanCollide = false
rap8.BottomSurface = "Smooth"
rap8.TopSurface = "Smooth"
rap8.Material = "Granite"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap8
Weld.C1 = CFrame.new(0.0390930176, -0.251191616, 1.19420624, 0.00126393698, -0.00222368166, 0.999996722, -0.00611764193, 0.99997884, 0.00223137415, -0.999980509, -0.00612044195, 0.00125030649)
Mesh = Instance.new("SpecialMesh", rap8)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.1, 1, 1)
rap9 = Instance.new("Part", char)
rap9.BrickColor = BrickColor.new("Really black")
rap9.Size = Vector3.new(1.07, 0.21, 1.22)
rap9.CanCollide = false
rap9.BottomSurface = "Smooth"
rap9.TopSurface = "Smooth"
rap9.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap9
Weld.C1 = CFrame.new(-1.50264454, -0.034209013, 0.0107421875, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap9)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap10 = Instance.new("Part", char)
rap10.BrickColor = BrickColor.new("Really red")
rap10.Size = Vector3.new(1.07, 0.21, 1.22)
rap10.CanCollide = false
rap10.BottomSurface = "Smooth"
rap10.TopSurface = "Smooth"
rap10.Material = "Granite"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap10
Weld.C1 = CFrame.new(-1.50264263, -0.283332348, 0.0105438232, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap10)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap11 = Instance.new("Part", char)
rap11.BrickColor = BrickColor.new("Really red")
rap11.Size = Vector3.new(0.21, 1.765, 0.638)
rap11.CanCollide = false
rap11.BottomSurface = "Smooth"
rap11.TopSurface = "Smooth"
rap11.Material = "Granite"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap11
Weld.C1 = CFrame.new(-1.51166821, -0.16260457, -0.273742676, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap11)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.1, 1, 1)
rap12 = Instance.new("Part", char)
rap12.BrickColor = BrickColor.new("Really black")
rap12.Size = Vector3.new(1.07, 0.21, 1.22)
rap12.CanCollide = false
rap12.BottomSurface = "Smooth"
rap12.TopSurface = "Smooth"
rap12.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap12
Weld.C1 = CFrame.new(-1.5026226, -0.241709709, 0.010559082, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap12)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap13 = Instance.new("Part", char)
rap13.BrickColor = BrickColor.new("Really black")
rap13.Size = Vector3.new(0.27, 0.49, 0.42)
rap13.CanCollide = false
rap13.BottomSurface = "Smooth"
rap13.TopSurface = "Smooth"
rap13.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap13
Weld.C1 = CFrame.new(-0.199401855, -0.811762094, 1.5063467, 0.00126393698, -0.00222368166, 0.999996722, -0.00611764193, 0.99997884, 0.00223137415, -0.999980509, -0.00612044195, 0.00125030649)
Mesh = Instance.new("SpecialMesh", rap13)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
rap14 = Instance.new("Part", char)
rap14.BrickColor = BrickColor.new("Really red")
rap14.Size = Vector3.new(1.07, 0.21, 1.22)
rap14.CanCollide = false
rap14.BottomSurface = "Smooth"
rap14.TopSurface = "Smooth"
rap14.Material = "Granite"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap14
Weld.C1 = CFrame.new(-1.5026722, 0.70827055, 0.0107116699, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap14)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap15 = Instance.new("Part", char)
rap15.BrickColor = BrickColor.new("Really black")
rap15.Size = Vector3.new(0.27, 0.49, 0.42)
rap15.CanCollide = false
rap15.BottomSurface = "Smooth"
rap15.TopSurface = "Smooth"
rap15.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap15
Weld.C1 = CFrame.new(-1.70280743, -0.811714053, 0.00408935547, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap15)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.2, 1, 1)
rap16 = Instance.new("Part", char)
rap16.BrickColor = BrickColor.new("Really red")
rap16.Size = Vector3.new(0.21, 1.528, 0.549)
rap16.CanCollide = false
rap16.BottomSurface = "Smooth"
rap16.TopSurface = "Smooth"
rap16.Material = "Granite"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap16
Weld.C1 = CFrame.new(-1.49795628, -0.281120777, 0.337554932, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap16)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.1, 1, 1)
rap17 = Instance.new("Part", char)
rap17.BrickColor = BrickColor.new("Really black")
rap17.Size = Vector3.new(1.07, 0.465, 1.22)
rap17.CanCollide = false
rap17.BottomSurface = "Smooth"
rap17.TopSurface = "Smooth"
rap17.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap17
Weld.C1 = CFrame.new(-1.50260639, 0.456613064, 0.0109405518, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
rap18 = Instance.new("Part", char)
rap18.BrickColor = BrickColor.new("Really red")
rap18.Size = Vector3.new(1.07, 0.21, 1.22)
rap18.CanCollide = false
rap18.BottomSurface = "Smooth"
rap18.TopSurface = "Smooth"
rap18.Material = "Granite"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap18
Weld.C1 = CFrame.new(-1.50260258, 0.20526123, 0.0107727051, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap18)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap19 = Instance.new("Part", char)
rap19.BrickColor = BrickColor.new("Really black")
rap19.Size = Vector3.new(1.07, 0.21, 1.22)
rap19.CanCollide = false
rap19.BottomSurface = "Smooth"
rap19.TopSurface = "Smooth"
rap19.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap19
Weld.C1 = CFrame.new(-1.50272179, -0.838834286, 0.0107421875, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap19)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap20 = Instance.new("Part", char)
rap20.BrickColor = BrickColor.new("Really black")
rap20.Size = Vector3.new(1.07, 0.21, 1.22)
rap20.CanCollide = false
rap20.BottomSurface = "Smooth"
rap20.TopSurface = "Smooth"
rap20.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap20
Weld.C1 = CFrame.new(-1.50263786, 0.165361881, 0.0108184814, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
Mesh = Instance.new("SpecialMesh", rap20)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.2, 1)
rap21 = Instance.new("Part", char)
rap21.BrickColor = BrickColor.new("Really black")
rap21.Size = Vector3.new(1.07, 0.465, 1.22)
rap21.CanCollide = false
rap21.BottomSurface = "Smooth"
rap21.TopSurface = "Smooth"
rap21.Material = "Neon"
Weld = Instance.new("Weld", rarm)
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.5, 0, 0)
Weld.Part1 = rap21
Weld.C1 = CFrame.new(-1.50262356, -0.543392658, 0.0105743408, 0.99998039, 0.00615737028, -0.00121600495, -0.00615460193, 0.999978483, 0.0022665232, 0.00122993451, -0.00225899462, 0.999996722)
GroundWave1 = function()
  
  local HandCF = CFrame.new(root.Position - Vector3.new(0, 3, 0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
  local Colors = {"Bright red", "Really red"}
  local wave = Instance.new("Part", torso)
  wave.BrickColor = BrickColor.new(Colors[math.random(1, #Colors)])
  wave.Anchored = true
  wave.CanCollide = false
  wave.Locked = true
  wave.Size = Vector3.new(1, 1, 1)
  wave.TopSurface = "Smooth"
  wave.BottomSurface = "Smooth"
  wave.Transparency = 0.35
  wave.CFrame = HandCF
  wm = Instance.new("SpecialMesh", wave)
  wm.MeshId = "rbxassetid://9982590"
  coroutine.wrap(function()
    
    for i = 1, 30 do
      wm.Scale = Vector3.new(1 + i * 1.2, 1 + i * 1.2, 1)
      wave.Size = wm.Scale
      wave.CFrame = HandCF
      wave.Transparency = i / 30
      wait()
    end
    wait()
    wave:Destroy()
  end
)()
end

GroundWave = function()
  
  if Transforming == true then
    local wave = Instance.new("Part", torso)
    do
      wave.BrickColor = BrickColor.new("Really black")
      wave.Anchored = true
      wave.CanCollide = false
      wave.Locked = true
      wave.Size = Vector3.new(1, 1, 1)
      wave.TopSurface = "Smooth"
      wave.BottomSurface = "Smooth"
      wave.Transparency = 0.35
      wave.CFrame = fx.CFrame
      wm = Instance.new("SpecialMesh", wave)
      wm.MeshType = "Sphere"
      wm.Scale = Vector3.new(1, 1, 1)
      coroutine.wrap(function()
    
    for i = 1, 18 do
      wm.Scale = Vector3.new(2 + i * 2, 2 + i * 2, 2 + i * 2)
      wave.CFrame = fx.CFrame
      wave.Transparency = i / 14
      wait()
    end
    wait()
    wave:Destroy()
  end
)()
    end
  else
    do
      if Transforming == false then
        wait()
      end
    end
  end
end

for i = 1, 100 do
  rs:wait()
  fx.CFrame = torso.CFrame
end
Spawn(function()
  
  while wait(1) do
    GroundWave()
  end
end
)
wait(4)
Transforming = false
for i = 1, 20 do
  rs:wait()
  fx.Transparency = fx.Transparency + 0.05
  fx.CFrame = torso.CFrame
  fxm.Scale = fxm.Scale + Vector3.new(0.5, 0.5, 0.5)
  rs:wait()
end
local HandCF = CFrame.new(root.Position - Vector3.new(0, 3, 0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
local wave = Instance.new("Part", torso)
wave.BrickColor = BrickColor.new("Really red")
wave.Anchored = true
wave.CanCollide = false
wave.Locked = true
wave.Size = Vector3.new(1, 1, 1)
wave.TopSurface = "Smooth"
wave.BottomSurface = "Smooth"
wave.Transparency = 0.35
wave.CFrame = HandCF
wm = Instance.new("SpecialMesh", wave)
wm.MeshId = "rbxassetid://3270017"
coroutine.wrap(function()
  
  for i = 1, 14 do
    wm.Scale = Vector3.new(4 + i * 4.4, 4 + i * 4.4, 4)
    wave.Size = wm.Scale
    wave.CFrame = HandCF
    wave.Transparency = i / 14
    wait()
  end
  wait()
  wave:Destroy()
end
)()
hum.WalkSpeed = 16
Blast = function()
  
  local Colors = {"Really red", "Really black"}
  local wave = Instance.new("Part", torso)
  wave.BrickColor = BrickColor.new(Colors[math.random(1, #Colors)])
  wave.Anchored = true
  wave.CanCollide = false
  wave.Locked = true
  wave.Size = Vector3.new(1, 1, 1)
  wave.TopSurface = "Smooth"
  wave.BottomSurface = "Smooth"
  wave.Transparency = 0.35
  wave.CFrame = rarm.CFrame
  wm = Instance.new("SpecialMesh", wave)
  wm.MeshType = "Sphere"
  wm.Scale = Vector3.new(1, 1, 1)
  z = Instance.new("Sound", wave)
  z.SoundId = "rbxassetid://237035051"
  z.Volume = 1
  z.Pitch = 0.9
  z:Play()
  coroutine.wrap(function()
    
    for i = 1, 30 do
      wave.Size = Vector3.new(1 + i * 4, 1 + i * 4, 1 + i * 4)
      wave.CFrame = rarm.CFrame
      wave.Transparency = 0.071428571428571
      rs:wait()
    end
    rs:wait()
    wave:Destroy()
    z:Destroy()
  end
)()
end

rarm.Touched:connect(function(ht)
  
  hit = ht.Parent
  if ht and hit:IsA("Model") and hit:FindFirstChild("Humanoid") and hit.Name ~= p.Name and Debounces.RPunch == true and Debounces.RPunched == false then
    Debounces.RPunched = true
    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5, 8))
    if Debounces.ks == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = ptz[math.random(1, #ptz)]
      z.Volume = 1
      z:Play()
    end
    wait(0.2)
    Debounces.RPunched = false
  end
  if ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and Debounces.RPunch == true and Debounces.RPunched == false then
    Debounces.RPunched = true
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5, 8))
    if Debounces.ks == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = ptz[math.random(1, #ptz)]
      z.Volume = 1
      z:Play()
    end
    wait(0.2)
    Debounces.RPunched = false
  end
end
)
larm.Touched:connect(function(ht)
  
  hit = ht.Parent
  if ht and hit:IsA("Model") and hit:FindFirstChild("Humanoid") and hit.Name ~= p.Name and Debounces.LPunch == true and Debounces.LPunched == false then
    Debounces.LPunched = true
    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4, 8))
    if Debounces.ks2 == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = ptz[math.random(1, #ptz)]
      z.Volume = 1
      z:Play()
    end
    wait(0.2)
    Debounces.LPunched = false
  end
  if ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and Debounces.LPunch == true and Debounces.LPunched == false then
    Debounces.LPunched = true
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4, 8))
    if Debounces.ks2 == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = ptz[math.random(1, #ptz)]
      z.Volume = 1
      z:Play()
    end
    wait(0.2)
    Debounces.LPunched = false
  end
end
)
mod4 = Instance.new("Model", char)
ptez = {0.7, 0.8, 0.9, 1}
FindNearestTorso = function(Position, Distance, SinglePlayer)
  
  if SinglePlayer.Torso.CFrame.p - Position.magnitude >= Distance then
    do return not SinglePlayer end
    do
      local List = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char and v.Torso.Position - Position.magnitude <= Distance then
          table.insert(List, v)
        end
      end
      do return List end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end

Punch = function()
  
  part = Instance.new("Part", mod4)
  part.Anchored = true
  part.CanCollide = false
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.CFrame = root.CFrame * CFrame.new(0, 1.5, -2.4) * CFrame.Angles(math.rad(0), 0, 0)
  part.Transparency = 0.7
  part.BrickColor = BrickColor.new("Really black")
  mesh = Instance.new("SpecialMesh", part)
  mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
  mesh.Scale = Vector3.new(3, 3, 3)
  part2 = Instance.new("Part", mod4)
  part2.Anchored = true
  part2.CanCollide = false
  part2.Size = Vector3.new(0.2, 0.2, 0.2)
  part2.CFrame = root.CFrame * CFrame.new(0, 1.5, -2.4) * CFrame.Angles(math.rad(90), 0, 0)
  part2.Transparency = 0.7
  part2.BrickColor = BrickColor.new("Really red")
  mesh2 = Instance.new("SpecialMesh", part2)
  mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
  mesh2.Scale = Vector3.new(3, 1.5, 3)
  for i,v in pairs(FindNearestTorso(torso.CFrame.p, 4)) do
    if v:FindFirstChild("Humanoid") then
      v.Humanoid:TakeDamage(math.random(2, 6))
    end
  end
  coroutine.resume(coroutine.create(function()
    
    for i = 0, 0.62, 0.4 do
      wait()
      part.CFrame = part.CFrame
      part.Transparency = i
      mesh.Scale = mesh.Scale + Vector3.new(0.4, 0.4, 0.4)
      part2.CFrame = part2.CFrame
      part2.Transparency = i
      mesh2.Scale = mesh2.Scale + Vector3.new(0.4, 0.2, 0.4)
    end
    part.Parent = nil
    part2.Parent = nil
  end
))
end

rarm.Touched:connect(function(ht)
  
  hit = ht.Parent
  if ht and hit:IsA("Model") and hit:FindFirstChild("Humanoid") and hit.Name ~= p.Name and Debounces.RPunch == true and Debounces.RPunched == false then
    Debounces.RPunched = true
    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5, 8))
    if Debounces.ks == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = ptz[math.random(1, #ptz)]
      z.Volume = 1
      z:Play()
    end
    wait(0.2)
    Debounces.RPunched = false
  end
  if ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and Debounces.RPunch == true and Debounces.RPunched == false then
    Debounces.RPunched = true
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5, 8))
    if Debounces.ks == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = ptz[math.random(1, #ptz)]
      z.Volume = 1
      z:Play()
    end
    wait(0.2)
    Debounces.RPunched = false
  end
end
)
larm.Touched:connect(function(ht)
  
  hit = ht.Parent
  if ht and hit:IsA("Model") and hit:FindFirstChild("Humanoid") and hit.Name ~= p.Name and Debounces.LPunch == true and Debounces.LPunched == false then
    Debounces.LPunched = true
    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4, 8))
    if Debounces.ks2 == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = ptz[math.random(1, #ptz)]
      z.Volume = 1
      z:Play()
    end
    wait(0.2)
    Debounces.LPunched = false
  end
  if ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and Debounces.LPunch == true and Debounces.LPunched == false then
    Debounces.LPunched = true
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4, 8))
    if Debounces.ks2 == true then
      z = Instance.new("Sound", hed)
      z.SoundId = "rbxassetid://169380525"
      z.Pitch = ptz[math.random(1, #ptz)]
      z.Volume = 1
      z:Play()
    end
    wait(0.2)
    Debounces.LPunched = false
  end
end
)
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera
local rad = math.rad
local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150
local canFly = false
do
  local flyToggled = false
  local forward, side = 0, 0
  local lastForward, lastSide = 0, 0
  local floatBP = Instance.new("BodyPosition")
  floatBP.maxForce = Vector3.new(0, math.huge, 0)
  local flyBV = Instance.new("BodyVelocity")
  flyBV.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
  local turnBG = Instance.new("BodyGyro")
  turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
  mouse.KeyDown:connect(function(key)
  
  keysDown[key] = true
  if key == "f" then
    flyToggled = not flyToggled
    chatsys("Fly!", "Navy blue")
    if not flyToggled then
      stanceToggle = "Normal"
      floatBP.Parent = nil
      flyBV.Parent = nil
      turnBG.Parent = nil
      root.Velocity = Vector3.new()
      pchar.Humanoid.PlatformStand = false
    end
  end
end
)
  mouse.KeyUp:connect(function(key)
  
  keysDown[key] = nil
end
)
  local updateFly = function()
  
  if not flyToggled then
    return 
  end
  lastForward = forward
  lastSide = side
  forward = 0
  side = 0
  if keysDown.w then
    forward = forward + 1
  end
  if keysDown.s then
    forward = forward - 1
  end
  if keysDown.a then
    side = side - 1
  end
  if keysDown.d then
    side = side + 1
  end
  canFly = forward ~= 0 or side ~= 0
  if canFly then
    stanceToggle = "Floating"
    turnBG.Parent = root
    floatBP.Parent = nil
    flyBV.Parent = root
    flySpeed = flySpeed + 1 + flySpeed / MAX_FLY_SPEED
    if MAX_FLY_SPEED < flySpeed then
      flySpeed = MAX_FLY_SPEED
    end
  else
    floatBP.position = root.Position
    floatBP.Parent = root
    flySpeed = flySpeed - 1
    if flySpeed < 0 then
      flySpeed = 0
    end
  end
  local camCF = cam.CoordinateFrame
  local in_forward = canFly and forward or lastForward
  do
    local in_side = canFly and side or lastSide
    flyBV.velocity = (camCF.lookVector * in_forward + camCF * CFrame.new(in_side, in_forward * 0.2, 0).p - camCF.p) * flySpeed
    turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0, 0)
    -- DECOMPILER ERROR: 7 unprocessed JMP targets
  end
end

  game:service("RunService").RenderStepped:connect(function()
  
  if flyToggled then
    pchar.Humanoid.PlatformStand = true
  end
  updateFly()
end
)
  chatsys("This is my true form... LATF2!!! ", "Really red")
  wait(1.5)
  chatsys("(Original script created by TheDarkRevenant) ", "Really red")
  wait(2)
  chatsys("(Remade by Lord_Azure) ", "Really red")
  mouse.KeyDown:connect(function(key)
  
  if key == "b" then
    if Debounces.CanAttack == true then
      Debounces.CanAttack = false
      Debounces.on = true
      Debounces.NoIdl = true
    end
    local kkkNiggerKillerz = 1
    do
      for i = 1, 9 do
        _G.custSound.Volume = kkkNiggerKillerz
        kkkNiggerKillerz = kkkNiggerKillerz - 0.1
        wait(0.1)
      end
      _G.custSound.Volume = 0
      makarovv = game:GetService("Players").LocalPlayer
      helloder = 0
      spawn(function()
    
    wait(0.2)
    makarovv.Character.Torso.Anchored = true
    wait(0.2)
    makarovv.Character.Humanoid.WalkSpeed = 0
    wait(0.2)
    local m = Instance.new("Model")
    m.Name = "Trim"
    model = Instance.new("Part", m)
    model.BrickColor = BrickColor.new("Institutional white")
    model.Transparency = 1
    model.Name = "Trim"
    model.CFrame = CFrame.new(6.5, 0.100010999, 1.5, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    model.Anchored = true
    model.CanCollide = false
    model.Size = Vector3.new(27, 0.200000003, 27)
    model.TopSurface = Enum.SurfaceType.Smooth
    d1 = Instance.new("Decal", model)
    d1.Texture = "rbxassetid://429539092"
    d1.Face = Enum.NormalId.Top
    x1 = Instance.new("PointLight", model)
    x1.Color = Color3.new(0.254902, 0.00784314, 0.4)
    x1.Range = 20
    d2 = Instance.new("Decal", model)
    d2.Texture = "rbxassetid://429539092"
    d2.Face = Enum.NormalId.Bottom
    b1 = Instance.new("CylinderMesh", model)
    b1.Name = "Mesh"
    b1.Offset = Vector3.new(0, 0.100000001, 0)
    b1.Scale = Vector3.new(1.25, 1.25, 1.25)
    m.Parent = game:service("Workspace")
    model.CFrame = makarovv.Character.HumanoidRootPart.CFrame + Vector3.new(0, -3.2, 0)
    wait(0.4)
    helloder = helloder + 5
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    chatsys("I call upon the power of darkness.", "Really red")
    local musicid = Instance.new("Sound", makarovv.Character)
    musicid.SoundId = "rbxassetid://163357343"
    musicid.Volume = 1
    musicid.Pitch = 1
    musicid.Looped = true
    wait(0.1)
    musicid:Play()
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    chatsys("You shall witness the descent of the omnipotent god.", "Really red")
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    chatsys("With all the demonic power of hell...", "Really red")
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Rotation = Vector3.new(0, helloder, 0)
    helloder = helloder + 5
    wait(0.1)
    model.Size = model.Size - Vector3.new(5, 0, 5)
    wait(0.1)
    model.Size = model.Size - Vector3.new(5, 0, 5)
    wait(0.1)
    model.Size = model.Size - Vector3.new(5, 0, 5)
    wait(0.1)
    model:Destroy()
    wait(0.1)
    chatsys("I invoke, Mass Annihilation! ", "Really red")
    local m = Instance.new("Model")
    m.Name = "Trim"
    modelz = Instance.new("Part", m)
    modelz.BrickColor = BrickColor.new("Institutional white")
    modelz.Transparency = 1
    modelz.Name = "Trim"
    modelz.CFrame = CFrame.new(3.49999809, 0.700019002, 2.5, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    modelz.Anchored = true
    modelz.CanCollide = false
    modelz.Locked = true
    modelz.Size = Vector3.new(91, 1, 91)
    modelz.TopSurface = Enum.SurfaceType.Smooth
    d1 = Instance.new("Decal", modelz)
    d1.Texture = "rbxassetid://342199418"
    d1.Face = Enum.NormalId.Top
    x1 = Instance.new("PointLight", modelz)
    x1.Range = 60
    d2 = Instance.new("Decal", modelz)
    d2.Texture = "rbxassetid://342199418"
    d2.Face = Enum.NormalId.Bottom
    b1 = Instance.new("CylinderMesh", modelz)
    b1.Name = "Mesh"
    b1.Offset = Vector3.new(0, 0.100000001, 0)
    b1.Scale = Vector3.new(1.25, 1.25, 1.25)
    m.Parent = game:service("Workspace")
    m:MakeJoints()
    modelz.CFrame = makarovv.Character.HumanoidRootPart.CFrame + Vector3.new(0, 150, 0)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    modelz.Size = modelz.Size + Vector3.new(3, 0, 3)
    wait(0.1)
    game.Lighting.Ambient = Color3.new(-250, -250, -250)
    wait(15)
    spawn(function()
      
      for i,v in pairs(game.Players:GetChildren()) do
        if v ~= makarovv and v ~= game:GetService("Players").LocalPlayer then
          v.Character:BreakJoints()
          wait(5)
        end
      end
    end
)
    wait(1)
    game.Lighting.Ambient = Color3.new(0, 0, 0)
    wait(0.2)
    musicid:Stop()
    musicid:Destroy()
    wait(0.2)
    modelz.Size = modelz.Size - Vector3.new(50, 0, 50)
    wait(0.1)
    modelz.Size = modelz.Size - Vector3.new(50, 0, 50)
    wait(0.1)
    modelz.Size = modelz.Size - Vector3.new(50, 0, 50)
    wait(0.1)
    modelz.Size = modelz.Size - Vector3.new(50, 0, 50)
    wait(0.1)
    modelz.Size = modelz.Size - Vector3.new(50, 0, 50)
    wait(0.1)
    modelz.Size = modelz.Size - Vector3.new(50, 0, 50)
    wait(0.1)
    modelz:Destroy()
    makarovv.Character.Torso.Anchored = false
    wait(0.1)
    makarovv.Character.Humanoid.WalkSpeed = 16
    wait(0.2)
    wait(0.2)
    for i = 1, 10 do
      _G.custSound.Volume = kkkNiggerKillerz
      kkkNiggerKillerz = kkkNiggerKillerz + 0.1
      wait(0.1)
    end
    if Debounces.CanAttack == false then
      Debounces.CanAttack = true
      Debounces.on = false
      Debounces.NoIdl = false
    end
  end
)
    end
  end
end
)
  mouse.KeyDown:connect(function(key)
  
  if key == "q" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    Debounces.on = true
    
     function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

    z = Instance.new("Sound", hed)
    z.SoundId = "rbxassetid://232213955"
    z.Pitch = 1
    z.Volume = 1
    wait(0.2)
    z:Play()
    sp = Instance.new("Part", rarm)
    sp.Anchored = true
    sp.CanCollide = false
    sp.Locked = true
    sp.Transparency = 0
    sp.Material = "Neon"
    sp.Size = Vector3.new(1, 1, 1)
    sp.TopSurface = "SmoothNoOutlines"
    sp.BottomSurface = "SmoothNoOutlines"
    sp.BrickColor = BrickColor.new("Bright red")
    spm = Instance.new("SpecialMesh", sp)
    spm.MeshType = "Sphere"
    spm.Scale = Vector3.new(21, 21, 21)
    sp2 = Instance.new("Part", rarm)
    sp2.Name = "Energy"
    sp2.BrickColor = BrickColor.new("Bright red")
    sp2.Size = Vector3.new(1, 1, 1)
    sp2.Shape = "Ball"
    sp2.CanCollide = false
    sp2.Anchored = true
    sp2.Locked = true
    sp2.TopSurface = 0
    sp2.BottomSurface = 0
    sp2.Transparency = 1
    spm2 = Instance.new("SpecialMesh", sp2)
    spm2.MeshId = "rbxassetid://9982590"
    spm2.Scale = Vector3.new(2, 2, 2)
    do
      for i = 1, 20 do
        spm.Scale = spm.Scale - Vector3.new(1, 1, 1)
        sp.CFrame = root.CFrame * CFrame.new(0, 1, -2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.62, 0) * CFrame.Angles(math.rad(-6), math.rad(-6), math.rad(8)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.62, 0) * CFrame.Angles(math.rad(-6), math.rad(6), math.rad(-8)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(0), 0), 0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
        if Debounces.on == false then
          break
        end
        rs:wait()
      end
    end
    do
      for i = 1, 100, 20 do
        rs:wait()
        sp.CFrame = root.CFrame * CFrame.new(0, 1, -2)
      end
      for i = 1, 20 do
        sp.CFrame = root.CFrame * CFrame.new(0, 1, -2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.62, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.62, 0.2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(10), math.rad(-30), 0), 0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), math.rad(0)), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
        if Debounces.on == false then
          break
        end
        rs:wait()
      end
      do
        sp.Transparency = 1
        for i = 1, 20 do
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.62, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), 0.4)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.62, -0.2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.4)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.4)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-50), math.rad(0)), 0.4)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
          if Debounces.on == false then
            break
          end
          rs:wait()
        end
        do
          wait(1)
          sp.Transparency = 0
          sp2.Transparency = 0.84
          for i = 1, 20 do
            sp.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
            sp2.CFrame = sp.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(110), math.rad(-6), math.rad(140)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(80), math.rad(6), math.rad(-40)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(30), 0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
            if Debounces.on == false then
              break
            end
            rs:wait()
          end
          do
            for i = 1, 2880, 50 do
              rs:wait()
              sp.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
              sp2.CFrame = rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-i / 10), math.rad(-i / 10), math.rad(i / 10))
              rs:wait()
            end
            sp:Destroy()
            sp2:Destroy()
            local X = Instance.new("Part", char)
            local O = Instance.new("ObjectValue", X)
            O.Name = "creator"
            X.Locked = true
            X.Name = "Shell"
            X.Anchored = false
            X.CanCollide = false
            X.Transparency = 0
            X.Reflectance = 0
            X.BottomSurface = 0
            X.TopSurface = 0
            X.Shape = 0
            local V = Instance.new("ObjectValue", X)
            V.Value = char
            V.Name = "creator"
            X.BrickColor = BrickColor.new("Bright red")
            X.Size = Vector3.new(2, 2, 2)
            X.Material = "Neon"
            local Z = Instance.new("SpecialMesh", X)
            Z.MeshType = "Sphere"
            Z.Scale = Vector3.new(0.5, 0.5, 1)
            X.CFrame = rarm.CFrame * CFrame.new(-3, 0, 0)
            local bv = Instance.new("BodyVelocity", X)
            bv.maxForce = Vector3.new(99999, 99999, 99999)
            X.CFrame = CFrame.new(X.Position, mouse.Hit.p)
            bv.velocity = X.CFrame.lookVector * 65
            Explode = X.Touched:connect(function(hit)
    
    if hit ~= char and hit.Name ~= "Shell" then
      local cf = X.CFrame
      do
        bv:Destroy()
        X.Anchored = true
        Z:Remove()
        Explode:disconnect()
        X.Size = Vector3.new(3, 3, 3)
        X.Touched:connect(function(hit)
      
    end
)
        X.CanCollide = false
        local part3 = Instance.new("Part", rarm)
        part3.Anchored = true
        part3.CanCollide = false
        part3.Locked = true
        part3.TopSurface = "SmoothNoOutlines"
        part3.BottomSurface = "SmoothNoOutlines"
        part3.Size = Vector3.new(1, 1, 1)
        part3.CFrame = X.CFrame
        part3.Transparency = 0
        part3.BrickColor = BrickColor.new("Bright red")
        local mesh3 = Instance.new("SpecialMesh", part3)
        mesh3.MeshType = "Sphere"
        mesh3.Scale = Vector3.new(1, 1, 1)
        local part4 = Instance.new("Part", rarm)
        part4.Material = "Neon"
        part4.Anchored = true
        part4.CanCollide = false
        part4.Locked = true
        part4.TopSurface = "SmoothNoOutlines"
        part4.BottomSurface = "SmoothNoOutlines"
        part4.Size = Vector3.new(1, 1, 1)
        part4.CFrame = X.CFrame
        part4.Transparency = 0
        part4.BrickColor = BrickColor.new("Really red")
        local mesh4 = Instance.new("SpecialMesh", part4)
        mesh4.MeshType = "Sphere"
        mesh4.Scale = Vector3.new(0.5, 0.5, 0.5)
        local part7 = Instance.new("Part", rarm)
        part7.Material = "Neon"
        part7.Anchored = true
        part7.CanCollide = false
        part7.Locked = true
        part7.TopSurface = "SmoothNoOutlines"
        part7.BottomSurface = "SmoothNoOutlines"
        part7.Size = Vector3.new(1, 1, 1)
        part7.CFrame = X.CFrame
        part7.Transparency = 0
        part7.BrickColor = BrickColor.new("Really black")
        local mesh7 = Instance.new("SpecialMesh", part7)
        mesh7.MeshType = "Sphere"
        mesh7.Scale = Vector3.new(0.1, 0.1, 0.1)
        for i,v in pairs(FindNearestTorso(X.CFrame.p, 140)) do
          if v:FindFirstChild("Humanoid") then
            v.Humanoid:TakeDamage(math.random(100000, 10000000))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
          end
        end
        chatsys("Obliteration!", "Really red")
        wait(0.2)
        local acos = math.acos
        local sqrt = math.sqrt
        local Vec3 = Vector3.new
        local fromAxisAngle = CFrame.fromAxisAngle
        local toAxisAngle = function(CFr)
      
      local X, Y, Z, R00, R01, R02, R10, R11, R12, R20, R21, R22 = CFr:components()
      local Angle = math.acos((R00 + R11 + R22 - 1) / 2)
      local A = R21 - R12 ^ 2 + R02 - R20 ^ 2 + R10 - R01 ^ 2
      if A ~= 0 or not 1e-05 then
        local B = R21 - R12 ^ 2 + R02 - R20 ^ 2 + R10 - R01 ^ 2
        if B ~= 0 or not 1e-05 then
          local C = R21 - R12 ^ 2 + R02 - R20 ^ 2 + R10 - R01 ^ 2
          if C ~= 0 or not 1e-05 then
            local x = (R21 - R12) / sqrt(A)
            local y = (R02 - R20) / sqrt(B)
            local z = (R10 - R01) / sqrt(C)
            return Vec3(x, y, z), Angle
          end
        end
      end
    end

        ApplyTrig = function(Num, Func)
      
      local Min, Max = Func(0), Func(1)
      local i = Func(Num)
      return (i - Min) / (Max - Min)
    end

        LerpCFrame = function(CFrame1, CFrame2, Num)
      
      local Vec, Ang = toAxisAngle(CFrame1:inverse() * CFrame2)
      return CFrame1 * fromAxisAngle(Vec, Ang * Num) + (CFrame2.p - CFrame1.p) * Num
    end

        Crater = function(Torso, Radius)
      
      Spawn(function()
        
        local Ray = Ray.new(Torso.Position, Vector3.new(0, -1, 0) * 10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
          if v.Character ~= nil then
            Ignore[#Ignore + 1] = v.Character
          end
        end
        local Hit, Pos, SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray, Ignore)
        if Hit == nil then
          return 
        end
        local Parts = {}
        for i = 1, 360, 10 do
          local P = Instance.new("Part", Torso.Parent)
          P.Anchored = true
          P.BrickColor = Hit.BrickColor
          P.Material = Hit.Material
          P.TopSurface = "Smooth"
          P.BottomSurface = "Smooth"
          P.Size = Vector3.new(5, 10, 10) * (math.random(80, 100) / 100)
          P.CFrame = (CFrame.new(Pos, Pos + SurfaceNorm) * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0, 7, 0)) * CFrame.Angles(math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)))
          Parts[#Parts + 1] = {P, P.CFrame, (CFrame.new(Pos, Pos + SurfaceNorm) * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0, 1, 0)) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -Radius) * CFrame.Angles(math.rad(math.random(-50, -20)), math.rad(math.random(-15, 15)), math.rad(math.random(-15, 15))), P.Size}
          if math.random(0, 5) == 0 then
            local P = Instance.new("Part", Torso.Parent)
            P.Anchored = true
            P.BrickColor = Hit.BrickColor
            P.Material = Hit.Material
            P.TopSurface = "Smooth"
            P.BottomSurface = "Smooth"
            P.Size = Vector3.new(2, 2, 2) * (math.random(80, 100) / 100)
            P.CFrame = (CFrame.new(Pos, Pos + SurfaceNorm) * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0, 2.5, 0)) * CFrame.Angles(math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)))
            Parts[#Parts + 1] = {P, P.CFrame, CFrame.new(Pos, Pos + SurfaceNorm) * CFrame.Angles(math.rad(90), 0, 0) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -Radius - 8) * CFrame.Angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90))), P.Size}
          end
        end
        for i = 0, 1, 0.05 do
          for i2,v in pairs(Parts) do
            v[1].CFrame = LerpCFrame(v[2], v[3], ApplyTrig(i, math.cos))
          end
          wait(0.02)
        end
        for i,v in pairs(Parts) do
          if v[1].Size.X > 2.1 then
            v[1].CFrame = v[1].CFrame + Vector3.new(0, 2, 0)
          end
          v[1].Anchored = false
        end
        for i = 0, 1, 0.05 do
          for i2,v in pairs(Parts) do
            v[1].Transparency = i
            if i == 1 then
              v[1]:Destroy()
            else
              if i >= 0.25 then
                v[1].CanCollide = false
              end
            end
          end
          wait(0.02)
        end
        Parts = nil
      end
)
    end

        ROW = function(out, trans, s, wt, t, ang, plus)
      
      for i = 1, 360, 360 / t do
        local c = Instance.new("Part", game.Workspace)
        c.TopSurface = 0
        c.BottomSurface = 0
        c.Size = s
        c.Anchored = true
        c.CanCollide = wt
        c.Material = workspace.Base.Material
        c.Transparency = trans
        c.BrickColor = workspace.Base.BrickColor
        c.CFrame = CFrame.new(X.CFrame.x, 0, X.CFrame.z) * CFrame.Angles(0, math.rad(i + plus), 0) * CFrame.new(0, 0, out) * ang
        c.Locked = true
        game.Debris:AddItem(c, 15)
      end
    end

        Part = function(x, y, z, color, tr, cc, an, parent)
      
      local p = Instance.new("Part", parent or Weapon)
      p.Size = Vector3.new(x, y, z)
      p.BrickColor = BrickColor.new(color)
      p.CanCollide = cc
      p.Transparency = tr
      p.Anchored = an
      p.TopSurface = 0
      p.Locked = true
      p:BreakJoints()
      return p
    end

        Mesh = function(par, num, x, y, z)
      
      local msh = _
      if num == 1 then
        msh = Instance.new("CylinderMesh", par)
      else
        if num == 2 then
          msh = Instance.new("SpecialMesh", par)
          msh.MeshType = 3
        else
          if num == 3 then
            msh = Instance.new("BlockMesh", par)
          else
            if num == 4 then
              msh = Instance.new("SpecialMesh", par)
              msh.MeshType = "Torso"
            else
              if type(num) == "string" then
                msh = Instance.new("SpecialMesh", par)
                msh.MeshId = num
              end
            end
          end
        end
      end
      msh.Scale = Vector3.new(x, y, z)
      return msh
    end

        explosion = function(col1, col2, cfr, sz, rng, dmg)
      
      local a = Part(1, 1, 1, col1, 0.5, false, true, workspace)
      local a2 = Part(1, 1, 1, col2, 0.5, false, true, workspace)
      local a3 = Part(1, 1, 1, col2, 0.5, false, true, workspace)
      v1 = sz.x
      local m = Mesh(a, "http://www.roblox.com/asset/?id=1185246", v1, v2, v3)
      local m2 = Mesh(a2, 3, v1 / 3, v2 / 3, v3 / 3)
      local m3 = Mesh(a3, 3, v1 / 3, v2 / 3, v3 / 3)
      a.CFrame = cfr
      a2.CFrame = cfr * CFrame.Angles(math.random(), math.random(), math.random())
      a3.CFrame = cfr * CFrame.Angles(math.random(), math.random(), math.random())
      Spawn(function()
        
        while wait() do
          if a.Transparency >= 1 then
            a:Destroy()
            a2:Destroy()
            a3:Destroy()
            break
          end
          m.Scale = m.Scale + Vector3.new(0.1, 0.1, 0.1)
          m2.Scale = m2.Scale + Vector3.new(0.1, 0.1, 0.1)
          m3.Scale = m3.Scale + Vector3.new(0.1, 0.1, 0.1)
          a.Transparency = a.Transparency + 0.05
          a2.Transparency = a2.Transparency + 0.05
          a3.Transparency = a3.Transparency + 0.05
        end
      end
)
    end

        Crater(X, 20)
        ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random(30, 60)), 0, math.rad(math.random(-30, 30))), 0)
        z = Instance.new("Sound", X)
        z.SoundId = "rbxassetid://231917744"
        z.Pitch = 0.5
        z.Volume = 10
        z1 = Instance.new("Sound", X)
        z1.SoundId = "rbxassetid://231917744"
        z1.Pitch = 0.5
        z1.Volume = 10
        z2 = Instance.new("Sound", X)
        z2.SoundId = "rbxassetid://231917744"
        z2.Pitch = 0.5
        z2.Volume = 10
        z3 = Instance.new("Sound", X)
        z3.SoundId = "rbxassetid://245537790"
        z3.Pitch = 0.7
        z3.Volume = 1
        z4 = Instance.new("Sound", X)
        z4.SoundId = "rbxassetid://245537790"
        z4.Pitch = 0.7
        z4.Volume = 1
        wait(0.1)
        z:Play()
        z1:Play()
        z2:Play()
        z3:Play()
        z4:Play()
        local part = Instance.new("Part", rarm)
        part.Anchored = true
        part.CanCollide = false
        part.Locked = true
        part.Size = Vector3.new(1, 1, 1)
        part.CFrame = X.CFrame * CFrame.new(0, 0, 0)
        part.Transparency = 0
        part.BrickColor = BrickColor.new("Really black")
        local mesh = Instance.new("SpecialMesh", part)
        mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        mesh.Scale = Vector3.new(2, 2, 2)
        local part2 = part:clone()
        part2.Parent = rarm
        part2.BrickColor = BrickColor.new("Bright red")
        local part5 = part:clone()
        part5.Parent = rarm
        part5.BrickColor = BrickColor.new("Crimson")
        local part6 = part:clone()
        part6.Parent = rarm
        part6.BrickColor = BrickColor.new("Black")
        local mesh2 = mesh:clone()
        mesh2.Parent = part2
        mesh2.Scale = Vector3.new(3, 3, 3)
        local mesh5 = mesh:clone()
        mesh5.Parent = part5
        mesh5.Scale = Vector3.new(3, 3, 3)
        local mesh6 = mesh:clone()
        mesh6.Parent = part6
        mesh6.Scale = Vector3.new(3, 3, 3)
        local blast = Instance.new("Part", rarm)
        blast.BrickColor = BrickColor.new("Really black")
        blast.Anchored = true
        blast.CanCollide = false
        blast.Locked = true
        blast.Size = Vector3.new(1, 1, 1)
        blast.TopSurface = "Smooth"
        blast.BottomSurface = "Smooth"
        blast.Transparency = 0
        blast.CFrame = HandCF
        local bm = Instance.new("SpecialMesh", blast)
        bm.Scale = Vector3.new(5, 1, 5)
        bm.MeshId = "rbxassetid://3270017"
        local blast2 = Instance.new("Part", rarm)
        blast2.BrickColor = BrickColor.new("Really black")
        blast2.Anchored = true
        blast2.CanCollide = false
        blast2.Locked = true
        blast2.Size = Vector3.new(1, 1, 1)
        blast2.TopSurface = "Smooth"
        blast2.BottomSurface = "Smooth"
        blast2.Transparency = 0
        blast2.CFrame = HandCF
        local bm2 = Instance.new("SpecialMesh", blast2)
        bm2.Scale = Vector3.new(3, 1, 3)
        bm2.MeshId = "rbxassetid://3270017"
        local blast3 = Instance.new("Part", rarm)
        blast3.BrickColor = BrickColor.new("Really black")
        blast3.Anchored = true
        blast3.CanCollide = false
        blast3.Locked = true
        blast3.Size = Vector3.new(1, 1, 1)
        blast3.TopSurface = "Smooth"
        blast3.BottomSurface = "Smooth"
        blast3.Transparency = 0
        blast3.CFrame = HandCF
        local bm3 = Instance.new("SpecialMesh", blast3)
        bm3.Scale = Vector3.new(3, 1, 3)
        bm3.MeshId = "rbxassetid://3270017"
        for i = 1, 120 do
          rs:wait()
          X.Transparency = X.Transparency + 0.0083333333333333
          part.Transparency = part.Transparency + 0.0083333333333333
          part2.Transparency = part2.Transparency + 0.0083333333333333
          part3.Transparency = part3.Transparency + 0.0083333333333333
          part4.Transparency = part4.Transparency + 0.0083333333333333
          part5.Transparency = part5.Transparency + 0.0083333333333333
          part6.Transparency = part6.Transparency + 0.0083333333333333
          part7.Transparency = part7.Transparency + 0.0083333333333333
          blast.Transparency = blast.Transparency + 0.0083333333333333
          blast2.Transparency = blast2.Transparency + 0.0083333333333333
          blast3.Transparency = blast3.Transparency + 0.0083333333333333
          X.Size = X.Size + Vector3.new(0.8, 0.8, 0.8)
          mesh.Scale = mesh.Scale + Vector3.new(1, 0.2, 1)
          mesh2.Scale = mesh2.Scale + Vector3.new(1.1, 0.2, 1.1)
          mesh3.Scale = mesh3.Scale + Vector3.new(3, 3, 3)
          mesh4.Scale = mesh4.Scale + Vector3.new(1.7, 1.7, 1.7)
          mesh5.Scale = mesh5.Scale + Vector3.new(1.6, 0.2, 1.6)
          mesh6.Scale = mesh6.Scale + Vector3.new(2, 0.2, 2)
          mesh7.Scale = mesh7.Scale + Vector3.new(4, 4, 4)
          bm.Scale = bm.Scale + Vector3.new(6, 6, 0.2)
          bm2.Scale = bm2.Scale + Vector3.new(4, 4, 0.2)
          bm3.Scale = bm3.Scale + Vector3.new(4, 4, 0.2)
          X.CFrame = cf
          part.CFrame = X.CFrame * CFrame.Angles(0, math.rad(i * 2), 0)
          part2.CFrame = X.CFrame * CFrame.Angles(0, math.rad(-i * 2), 0)
          part3.CFrame = X.CFrame
          part4.CFrame = X.CFrame
          part7.CFrame = X.CFrame
          part5.CFrame = X.CFrame * CFrame.Angles(0, math.rad(i * 2.6), 0)
          part6.CFrame = X.CFrame * CFrame.Angles(0, math.rad(-i * 2.4), 0)
          blast.CFrame = X.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
          blast2.CFrame = X.CFrame * CFrame.Angles(math.rad(-i * 4), math.rad(i * 4), math.rad(0))
          blast3.CFrame = X.CFrame * CFrame.Angles(math.rad(180 + i * 4), math.rad(90 - i * 4), math.rad(0))
          rs:wait()
        end
        X:Destroy()
        part:Destroy()
        part2:Destroy()
        part3:Destroy()
        part4:Destroy()
        part5:Destroy()
        part6:Destroy()
        blast:Destroy()
        blast2:Destroy()
        blast3:Destroy()
        z:Destroy()
        z1:Destroy()
        z2:Destroy()
        z3:Destroy()
        z4:Destroy()
      end
    end
  end
)
            for i = 1, 20 do
              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(70), math.rad(-6), math.rad(-20)), 0.2)
              larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-6), math.rad(6), math.rad(-8)), 0.2)
              hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.2)
              torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
              if Debounces.on == false then
                break
              end
              rs:wait()
            end
            do
              if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
              end
            end
          end
        end
      end
    end
  end
end
)
  mouse.KeyDown:connect(function(key)
  
  if key == "e" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.on = true
    Debounces.NoIdl = true
    chatsys("Demonic Fists!", "Really red")
    wait(0)
    pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
    z = Instance.new("Sound", rarm)
    z.SoundId = "http://www.roblox.com/asset/?id=206083107"
    z.Volume = 0.6
    z.Pitch = pt[math.random(1, #pt)]
    z.Looped = false
    z:Play()
    Debounces.RPunch = true
    Debounces.LPunch = true
    Debounces.ks = true
    Debounces.ks2 = true
    for i = 1, 3 do
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(20)), 0.92)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), 0.92)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.92)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
      if Debounces.on == false then
        break
      end
      wait()
    end
    do
      z2 = Instance.new("Sound", larm)
      z2.SoundId = "http://www.roblox.com/asset/?id=206083107"
      z2.Volume = 0.6
      z2.Pitch = pt[math.random(1, #pt)]
      z2.Looped = false
      z2:Play()
      for i = 1, 3 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(20), math.rad(-20)), 0.92)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
        if Debounces.on == false then
          break
        end
        wait()
      end
      do
        z3 = Instance.new("Sound", rarm)
        z3.SoundId = "http://www.roblox.com/asset/?id=206083107"
        z3.Volume = 0.6
        z3.Pitch = pt[math.random(1, #pt)]
        z3.Looped = false
        z3:Play()
        for i = 1, 3 do
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-20), math.rad(20)), 0.92)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(50)), 0.92)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.92)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
          if Debounces.on == false then
            break
          end
          wait()
        end
        do
          z4 = Instance.new("Sound", larm)
          z4.SoundId = "http://www.roblox.com/asset/?id=206083107"
          z4.Volume = 0.6
          z4.Pitch = pt[math.random(1, #pt)]
          z4.Looped = false
          z4:Play()
          for i = 1, 3 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(-20)), 0.92)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
            if Debounces.on == false then
              break
            end
            wait()
          end
          do
            z5 = Instance.new("Sound", rarm)
            z5.SoundId = "http://www.roblox.com/asset/?id=206083107"
            z5.Volume = 0.6
            z5.Pitch = pt[math.random(1, #pt)]
            z5.Looped = false
            z5:Play()
            for i = 1, 3 do
              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(110), math.rad(30), math.rad(20)), 0.9)
              larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), 0.9)
              hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.9)
              torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
              if Debounces.on == false then
                break
              end
              wait()
            end
            do
              z6 = Instance.new("Sound", larm)
              z6.SoundId = "http://www.roblox.com/asset/?id=206083107"
              z6.Volume = 0.6
              z6.Pitch = pt[math.random(1, #pt)]
              z6.Looped = false
              z6:Play()
              for i = 1, 3 do
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(-20)), 0.92)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
                if Debounces.on == false then
                  break
                end
                wait()
              end
              do
                z7 = Instance.new("Sound", rarm)
                z7.SoundId = "http://www.roblox.com/asset/?id=206083107"
                z7.Volume = 0.6
                z7.Pitch = pt[math.random(1, #pt)]
                z7.Looped = false
                z7:Play()
                for i = 1, 3 do
                  rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(20)), 0.92)
                  larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), 0.92)
                  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.92)
                  torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
                  lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
                  rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
                  if Debounces.on == false then
                    break
                  end
                  wait()
                end
                do
                  z8 = Instance.new("Sound", larm)
                  z8.SoundId = "http://www.roblox.com/asset/?id=206083107"
                  z8.Volume = 0.6
                  z8.Pitch = pt[math.random(1, #pt)]
                  z8.Looped = false
                  z8:Play()
                  for i = 1, 3 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(20), math.rad(-20)), 0.92)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
                    if Debounces.on == false then
                      break
                    end
                    wait()
                  end
                  do
                    z9 = Instance.new("Sound", rarm)
                    z9.SoundId = "http://www.roblox.com/asset/?id=206083107"
                    z9.Volume = 0.6
                    z9.Pitch = pt[math.random(1, #pt)]
                    z9.Looped = false
                    z9:Play()
                    for i = 1, 3 do
                      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-20), math.rad(20)), 0.92)
                      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(50)), 0.92)
                      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.92)
                      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
                      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
                      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
                      if Debounces.on == false then
                        break
                      end
                      wait()
                    end
                    do
                      z10 = Instance.new("Sound", larm)
                      z10.SoundId = "http://www.roblox.com/asset/?id=206083107"
                      z10.Volume = 0.6
                      z10.Pitch = pt[math.random(1, #pt)]
                      z10.Looped = false
                      z10:Play()
                      for i = 1, 3 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(-20)), 0.92)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
                        if Debounces.on == false then
                          break
                        end
                        wait()
                      end
                      do
                        z11 = Instance.new("Sound", rarm)
                        z11.SoundId = "http://www.roblox.com/asset/?id=206083107"
                        z11.Volume = 0.6
                        z11.Pitch = pt[math.random(1, #pt)]
                        z11.Looped = false
                        z11:Play()
                        for i = 1, 3 do
                          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(110), math.rad(30), math.rad(20)), 0.9)
                          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), 0.9)
                          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.9)
                          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
                          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
                          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
                          if Debounces.on == false then
                            break
                          end
                          wait()
                        end
                        do
                          z12 = Instance.new("Sound", larm)
                          z12.SoundId = "http://www.roblox.com/asset/?id=206083107"
                          z12.Volume = 0.6
                          z12.Pitch = pt[math.random(1, #pt)]
                          z12.Looped = false
                          z12:Play()
                          for i = 1, 3 do
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(20), math.rad(-20)), 0.92)
                            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
                            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
                            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
                            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
                            if Debounces.on == false then
                              break
                            end
                            wait()
                          end
                          do
                            z13 = Instance.new("Sound", rarm)
                            z13.SoundId = "http://www.roblox.com/asset/?id=206083107"
                            z13.Volume = 0.6
                            z13.Pitch = pt[math.random(1, #pt)]
                            z13.Looped = false
                            z13:Play()
                            for i = 1, 3 do
                              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-20), math.rad(20)), 0.92)
                              larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(50)), 0.92)
                              hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.92)
                              torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
                              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
                              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
                              if Debounces.on == false then
                                break
                              end
                              wait()
                            end
                            do
                              z14 = Instance.new("Sound", larm)
                              z14.SoundId = "http://www.roblox.com/asset/?id=206083107"
                              z14.Volume = 0.6
                              z14.Pitch = pt[math.random(1, #pt)]
                              z14.Looped = false
                              z14:Play()
                              for i = 1, 3 do
                                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
                                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(-20)), 0.92)
                                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
                                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
                                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
                                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
                                if Debounces.on == false then
                                  break
                                end
                                wait()
                              end
                              do
                                z15 = Instance.new("Sound", rarm)
                                z15.SoundId = "http://www.roblox.com/asset/?id=206083107"
                                z15.Volume = 0.6
                                z15.Pitch = pt[math.random(1, #pt)]
                                z15.Looped = false
                                z15:Play()
                                for i = 1, 3 do
                                  rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(110), math.rad(30), math.rad(20)), 0.9)
                                  larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), 0.9)
                                  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.9)
                                  torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
                                  lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
                                  rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
                                  if Debounces.on == false then
                                    break
                                  end
                                  wait()
                                end
                                do
                                  z16 = Instance.new("Sound", larm)
                                  z16.SoundId = "http://www.roblox.com/asset/?id=206083107"
                                  z16.Volume = 0.6
                                  z16.Pitch = pt[math.random(1, #pt)]
                                  z16.Looped = false
                                  z16:Play()
                                  for i = 1, 3 do
                                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
                                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(-20)), 0.92)
                                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
                                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
                                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
                                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
                                    if Debounces.on == false then
                                      break
                                    end
                                    wait()
                                  end
                                  do
                                    z17 = Instance.new("Sound", rarm)
                                    z17.SoundId = "http://www.roblox.com/asset/?id=206083107"
                                    z17.Volume = 0.6
                                    z17.Pitch = pt[math.random(1, #pt)]
                                    z17.Looped = false
                                    z17:Play()
                                    for i = 1, 3 do
                                      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(20)), 0.92)
                                      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), 0.92)
                                      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.92)
                                      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
                                      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
                                      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
                                      if Debounces.on == false then
                                        break
                                      end
                                      wait()
                                    end
                                    do
                                      z18 = Instance.new("Sound", larm)
                                      z18.SoundId = "http://www.roblox.com/asset/?id=206083107"
                                      z18.Volume = 0.6
                                      z18.Pitch = pt[math.random(1, #pt)]
                                      z18.Looped = false
                                      z18:Play()
                                      for i = 1, 3 do
                                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
                                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(20), math.rad(-20)), 0.92)
                                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
                                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
                                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
                                        if Debounces.on == false then
                                          break
                                        end
                                        wait()
                                      end
                                      do
                                        z19 = Instance.new("Sound", rarm)
                                        z19.SoundId = "http://www.roblox.com/asset/?id=206083107"
                                        z19.Volume = 0.6
                                        z19.Pitch = pt[math.random(1, #pt)]
                                        z19.Looped = false
                                        z19:Play()
                                        for i = 1, 3 do
                                          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-20), math.rad(20)), 0.92)
                                          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(50)), 0.92)
                                          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-50), 0), 0.92)
                                          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
                                          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
                                          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
                                          if Debounces.on == false then
                                            break
                                          end
                                          wait()
                                        end
                                        do
                                          z20 = Instance.new("Sound", larm)
                                          z20.SoundId = "http://www.roblox.com/asset/?id=206083107"
                                          z20.Volume = 0.6
                                          z20.Pitch = pt[math.random(1, #pt)]
                                          z20.Looped = false
                                          z20:Play()
                                          for i = 1, 3 do
                                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-50)), 0.92)
                                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(-20)), 0.92)
                                            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(50), 0), 0.92)
                                            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
                                            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
                                            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
                                            if Debounces.on == false then
                                              break
                                            end
                                            wait()
                                          end
                                          do
                                            z:Destroy()
                                            z2:Destroy()
                                            z3:Destroy()
                                            z4:Destroy()
                                            z5:Destroy()
                                            z6:Destroy()
                                            z7:Destroy()
                                            z8:Destroy()
                                            z9:Destroy()
                                            z10:Destroy()
                                            z11:Destroy()
                                            z12:Destroy()
                                            z13:Destroy()
                                            z14:Destroy()
                                            z15:Destroy()
                                            z16:Destroy()
                                            z17:Destroy()
                                            z18:Destroy()
                                            z19:Destroy()
                                            z20:Destroy()
                                            Debounces.LPunch = false
                                            Debounces.RPunch = false
                                            Debounces.ks = false
                                            Debounces.ks2 = false
                                            if Debounces.CanAttack == false then
                                              Debounces.CanAttack = true
                                              Debounces.on = false
                                              Debounces.NoIdl = false
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
)
  mouse.KeyDown:connect(function(key)
  
  if key == "t" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    Debounces.on = true
    Debounces.ks = true
    chatsys("Demon Kick!", "Really red")
    wait(0)
    kik = rleg.Touched:connect(function(ht)
    
    hit = ht.Parent
    if ht and hit:IsA("Model") and hit:FindFirstChild("Humanoid") and hit.Name ~= p.Name then
      if Debounces.ks == true then
        z = Instance.new("Sound", hed)
        z.SoundId = "rbxassetid://169380525"
        z.Volume = 1
        z:Play()
        Debounces.ks = false
      end
      hit:FindFirstChild("Humanoid"):TakeDamage(2)
      hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
    end
    if ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") then
      hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
      hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
    end
  end
)
    for i = 1, 20 do
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.62, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), 0.4)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.62, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.4)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-90)), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
      if Debounces.on == false then
        break
      end
      rs:wait()
    end
    do
      kik:disconnect()
      if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.NoIdl = false
        Debounces.on = false
      end
    end
  end
end
)
  mouse.KeyDown:connect(function(key)
  
  if key == "m" then
    chatsys("Move Coming Soon!", "Really red")
    wait(0.2)
  end
end
)
  mouse.KeyDown:connect(function(key)
  
  if key == "y" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.on = true
    Debounces.NoIdl = true
    do
      for i = 1, 15 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.6)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(90), 0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
        if Debounces.on == false then
          break
        end
        rs:wait(2.7)
      end
    end
    do
xx = Instance.new("Sound")
xx.SoundId = "rbxassetid://228343271"
xx.Parent = char.Head
xx.Pitch = .88
xx.Volume = 1
xx:Play()
xx.Looped = false
      Debounces.on = false
      Debounces.Here = false
      shot = shot + 1
      chatsys("Beam of Annihilation!", "Really red")
      wait(0)
      local rng = Instance.new("Part", larm)
      rng.Anchored = true
      rng.BrickColor = BrickColor.new("Bright red")
      rng.CanCollide = false
      rng.Name = "Ring"
      rng.Size = Vector3.new(1, 1, 1)
      rng.Transparency = 0.35
      rng.TopSurface = 0
      rng.BottomSurface = 0
      rng2 = rng:clone()
      rng3 = rng2:clone()
      rng4 = rng2:clone()
      local rngm = Instance.new("SpecialMesh", rng)
      rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
      rngm.Scale = Vector3.new(50, 50, 1)
      rngm2 = rngm:clone()
      rngm2.Scale = Vector3.new(5, 5, 3)
      rngm3 = rngm2:clone()
      rngm3.Parent = rng3
      rngm3.Scale = Vector3.new(30, 80, 1)
      rngm4 = rngm2:clone()
      rngm4.Parent = rng4
      rngm4.Scale = Vector3.new(20, 60, 1)
      local bem = Instance.new("Part", larm)
      bem.Anchored = true
      bem.BrickColor = BrickColor.new("Really black")
      bem.CanCollide = false
      bem.Name = "Beam" .. shot
      bem.Size = Vector3.new(1, 1, 1)
      bem.Transparency = 0.35
      bem.TopSurface = 0
      bem.BottomSurface = 0
      local bemm = Instance.new("SpecialMesh", bem)
      bemm.MeshType = 4
      bemm.Scale = Vector3.new(1, 4, 4)
      local out = Instance.new("Part", larm)
      out.Anchored = true
      out.BrickColor = BrickColor.new("Really black")
      out.CanCollide = false
      out.Name = "Out"
      out.Size = Vector3.new(4, 4, 4)
      out.Transparency = 0.35
      out.TopSurface = 0
      out.BottomSurface = 0
      local outm = Instance.new("SpecialMesh", out)
      outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
      outm.Scale = Vector3.new(6, 4, 6)
      local bnd = Instance.new("Part", larm)
      bnd.Anchored = true
      bnd.BrickColor = BrickColor.new("Really red")
      bnd.CanCollide = false
      bnd.Name = "Bend"
      bnd.Size = Vector3.new(1, 1, 1)
      bnd.Transparency = 1
      bnd.TopSurface = 0
      bnd.BottomSurface = 0
      local bndm = Instance.new("SpecialMesh", bnd)
      bndm.MeshType = 3
      bndm.Scale = Vector3.new(8, 8, 8)
      out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
      bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
      bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
      rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
      rng3.CFrame = rng.CFrame * CFrame.new(0, -0.5, 0)
      rng4.CFrame = rng.CFrame * CFrame.new(0, -1, 0)
      Debounces.Shewt = true
      coroutine.wrap(function()
    
    for i = 1, 20, 0.2 do
      rngm.Scale = Vector3.new(50 + i * 20, 50 + i * 20, 1)
      rngm3.Scale = Vector3.new(30 + i * 15, 30 + i * 15, 1)
      rngm4.Scale = Vector3.new(20 + i * 10, 20 + i * 10, 1)
      rng.Transparency = i / 50
      rng3.Transparency = 0.018518518518519
      rng4.Transparency = i / 56
      wait()
    end
    wait()
    rng:Destroy()
  end
)()
      if Debounces.Shewt == true then
        larm:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
    
    hit = ht.Parent
    -- DECOMPILER ERROR at PC24: Unhandled construct in 'MakeBoolean' P1

    if hit:IsA("Model") and hit:findFirstChild("Humanoid") and HasntTouched(hit.Name) == true and deb == false then
      deb = true
      coroutine.wrap(function()
      
      hit:FindFirstChild("Humanoid").PlatformStand = true
      hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
      hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24, 73))
    end
)()
      table.insert(Touche, hit.Name)
      deb = false
    end
    if hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") and HasntTouched(hit.Parent.Name) == true and deb == false then
      deb = true
      coroutine.wrap(function()
      
      hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
      hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
      wait(1)
      hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
    end
)()
      table.insert(Touche, hit.Parent.Name)
      deb = false
      for i,v in pairs(Touche) do
        print(v)
      end
    end
  end
)
      end
      do
        for i = 0, 260, 8 do
          bem.Size = Vector3.new(i, 3, 3)
          out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
          bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 - i / 2, 0) * CFrame.Angles(0, 0, math.rad(90))
          bnd.CFrame = bem.CFrame * CFrame.new(-i / 2, 0, 1.2)
          bnd.Size = Vector3.new(1, 1, 1)
          bndm.Scale = Vector3.new(8, 8, 8)
          if i % 10 == 0 then
            local newRng = rng2:Clone()
            newRng.Parent = larm
            newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2 - i, 0) * CFrame.Angles(math.rad(90), 0, 0)
            local newRngm = rngm2:clone()
            newRngm.Parent = newRng
            coroutine.wrap(function()
    
    for i = 1, 10, 0.2 do
      newRngm.Scale = Vector3.new(20 + i * 10, 20 + i * 10, 3)
      newRng.Transparency = i / 15
      wait()
    end
    wait()
    newRng:Destroy()
  end
)()
          end
          do
            do
              wait()
              -- DECOMPILER ERROR at PC626: LeaveBlock: unexpected jumping out DO_STMT

            end
          end
        end
      end
      wait()
      Debounces.Shewt = false
      bem:Destroy()
      out:Destroy()
      bnd:Destroy()
      Debounces.Ready = false
      for i,v in pairs(Touche) do
        table.remove(Touche, i)
      end
      wait()
      table.insert(Touche, char.Name)
      Debounces.NoIdl = false
      if Debounces.CanAttack == false then
        Debounces.CanAttack = true
      end
    end
  end
end
)
  Charging = false
  mouse.KeyDown:connect(function(key)
  
  if key == "r" and Charging == false then
    Charging = true
    if Debounces.CanAttack == true then
      Debounces.CanAttack = false
      Debounces.NoIdl = true
      Debounces.on = true
      chatsys("Demonic Charge!", "Really red")
      do
        for i = 1, 20 do
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.65, -0.4) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(-40)), 0.2)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.65, -0.4) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(40)), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0.4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0.4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
          if Debounces.on == false then
            break
          end
          rs:wait()
        end
      end
      do
        pt = Instance.new("Part", torso)
        pt.Anchored = true
        pt.CanCollide = false
        pt.Locked = true
        pt.Size = Vector3.new(1, 1, 1)
        pt.CFrame = root.CFrame * CFrame.new(0, -1, 0)
        pt.Transparency = 0.6
        pt.BrickColor = BrickColor.new("Really black")
        msh = Instance.new("SpecialMesh", pt)
        msh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        msh.Scale = Vector3.new(8, 4, 8)
        pt2 = pt:clone()
        pt2.Parent = torso
        pt2.CFrame = root.CFrame * CFrame.new(0, -1, 0)
        pt2.BrickColor = BrickColor.new("Bright red")
        msh2 = msh:clone()
        msh2.Parent = pt2
        msh2.Scale = Vector3.new(10, 5, 10)
        custommath = {25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, -25, -26, -27, -28, -29, -30, -31, -32, -33, -34, -35, -36, -37, -38, -39, -40, -41, -42, -43, -44, -45, -46, -47, -48, -49, -50, -51, -52, -53, -54, -55, -56, -57, -58, -59, -60, -61, -62, -63, -64, -65, -66, -67, -68, -69, -70, -71, -72, -73, -74, -75, -76, -77, -78, -79, -80, -81, -82, -83, -84, -85, -86, -87, -88, -89, -90, -91, -92, -93, -94, -95, -96, -97, -98, -99, -100}
        bl = Instance.new("Part", char)
        bl.Locked = true
        bl.Name = "Shell"
        bl.BrickColor = BrickColor.new("Really black")
        bl.Anchored = true
        bl.CanCollide = false
        bl.Transparency = 0
        bl.Reflectance = 0
        bl.BottomSurface = 0
        bl.TopSurface = 0
        bl.Shape = 0
        blm = Instance.new("SpecialMesh", bl)
        blm.MeshType = "Sphere"
        blm.Scale = Vector3.new(1, 1, 1)
        blm.MeshId = "rbxassetid://9982590"
        coroutine.resume(coroutine.create(function()
    
    for i = 1, math.huge, 4 do
      if Charging == true then
        rs:wait()
        bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i / 10), math.rad(-i / 10), math.rad(i / 10))
        blm.Scale = blm.Scale + Vector3.new(0.1, 0.1, 0.1)
        bl.Transparency = bl.Transparency + 0.005
        pt.CFrame = root.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(i * 2), 0)
        pt2.CFrame = root.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-i * 2), 0)
        msh.Scale = msh.Scale + Vector3.new(0.05, 0, 0.05)
        msh2.Scale = msh2.Scale + Vector3.new(0.05, 0, 0.05)
      else
        if Charging == false then
          break
        end
      end
    end
  end
))
        while 1 do
          local p = Instance.new("Part", torso)
          p.Size = Vector3.new(1, 1, 1)
          p.BrickColor = workspace.Base.BrickColor
          p.CanCollide = false
          p.Transparency = 0
          p.Anchored = true
          p.Locked = true
          p.Material = workspace.Base.Material
          s = math.random(1, 40) / 10
          local m = Instance.new("BlockMesh", p)
          m.Scale = Vector3.new(s, s, s)
          p.CFrame = torso.CFrame * CFrame.new(custommath[math.random(1, #custommath)] / 10, -math.random(5, 7), custommath[math.random(1, #custommath)] / 10) * CFrame.Angles(math.random(), math.random(), math.random())
          Spawn(function()
    
    while 1 do
      while 1 do
        if rs:wait() then
          if Charging == true then
            rarm.Weld.C0 = CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(math.random(-36, -20)), math.rad(math.random(-30, -20)), math.rad(math.random(30, 50)))
            larm.Weld.C0 = CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(math.random(-36, -20)), math.rad(math.random(20, 30)), math.rad(math.random(-50, -30)))
            hed.Weld.C0 = CFrame.new(0, 1.5, 0.1) * CFrame.Angles(math.rad(math.random(26, 34)), math.rad(math.random(-5, 5)), math.rad(0))
            torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4, 4)), math.rad(0))
            lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10, -6)), math.rad(math.random(10, 20)), math.rad(math.random(-20, -10)))
            rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10, -6)), math.rad(math.random(-20, -10)), math.rad(math.random(10, 20)))
            -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      if Charging == false then
        break
      end
    end
  end
)
          Spawn(function()
    
    while rs:wait() do
      if p.Transparency >= 1 then
        p:Destroy()
        break
      end
      p.CFrame = p.CFrame * CFrame.Angles(math.rad(2), math.rad(2), math.rad(2)) + Vector3.new(0, 0.2, 0)
      p.Transparency = p.Transparency + 0.01
    end
  end
)
          wait(0.3)
          if Charging == false then
            break
          end
        end
      end
    end
  end
end
)
  mouse.KeyUp:connect(function(key)
  
  if key == "r" and Charging == true then
    Charging = false
    pt:Destroy()
    pt2:Destroy()
    bl:Destroy()
    if Debounces.CanAttack == false then
      Debounces.CanAttack = true
      Debounces.NoIdl = false
      Debounces.on = false
    end
  end
end
)
  mouse.KeyDown:connect(function(key)
  
  if key == "g" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    Debounces.on = true
    local shell = Instance.new("Part", torso)
    shell.BrickColor = BrickColor.new("Bright red")
    shell.Anchored = true
    shell.CanCollide = false
    shell.Locked = true
    shell.TopSurface = "SmoothNoOutlines"
    shell.BottomSurface = "SmoothNoOutlines"
    shell.Size = Vector3.new(1, 1, 1)
    shellm = Instance.new("SpecialMesh", shell)
    shellm.MeshType = "Sphere"
    shellm.Scale = Vector3.new(1, 1, 1)
    local shell2 = Instance.new("Part", torso)
    shell2.BrickColor = BrickColor.new("Bright red")
    shell2.Anchored = true
    shell2.CanCollide = false
    shell2.Locked = true
    shell2.TopSurface = "SmoothNoOutlines"
    shell2.BottomSurface = "SmoothNoOutlines"
    shell2.Size = Vector3.new(1, 1, 1)
    shellm2 = Instance.new("SpecialMesh", shell2)
    shellm2.MeshType = "Sphere"
    shellm2.Scale = Vector3.new(1, 1, 1)
    
   function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

    Shell = function()
    
    local X = Instance.new("Part", char)
    local O = Instance.new("ObjectValue", X)
    O.Name = "creator"
    X.Locked = true
    X.Name = "Shell"
    X.Anchored = false
    X.CanCollide = false
    X.Transparency = 0
    X.Reflectance = 0
    X.BottomSurface = 0
    X.TopSurface = 0
    X.Shape = 0
    local V = Instance.new("ObjectValue", X)
    V.Value = char
    V.Name = "creator"
    X.BrickColor = BrickColor.new("Bright red")
    X.Size = Vector3.new(1, 1, 1)
    local Z = Instance.new("SpecialMesh", X)
    Z.MeshType = "Sphere"
    Z.Scale = Vector3.new(1, 1, 1)
    X.CFrame = rarm.CFrame * CFrame.new(0, -6, 0)
    local bv = Instance.new("BodyVelocity", X)
    bv.maxForce = Vector3.new(99999, 99999, 99999)
    X.CFrame = CFrame.new(X.Position, root.CFrame.lookVector * 10)
    bv.velocity = root.CFrame.lookVector * 65
    Explode = X.Touched:connect(function(hit)
      
      if (hit ~= char and hit.Name ~= "Shell" and hit:IsA("Part")) or hit:IsA("BasePart}") then
        local cf = X.CFrame
        bv:Destroy()
        X.Anchored = true
        Z:Remove()
        Explode:disconnect()
        X.Size = Vector3.new(3, 3, 3)
        X.Touched:connect(function(hit)
        
      end
)
        X.CanCollide = false
        for i,v in pairs(FindNearestTorso(X.CFrame.p, 40)) do
          if v:FindFirstChild("Humanoid") then
            v.Humanoid:TakeDamage(math.random(6, 12))
          end
        end
        for i = 1, 40 do
          rs:wait()
          X.Transparency = X.Transparency + 0.025
          X.Size = X.Size + Vector3.new(1, 1, 1)
          X.CFrame = cf
        end
        X:Destroy()
      end
    end
)
  end

    Shell()
    for i = 1, 10 do
      shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
      shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(110)), 0.7)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-110)), 0.7)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.7)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.7)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
      if Debounces.on == false then
        break
      end
      rs:wait()
    end
    do
      Shell()
      shell.Transparency = 1
      for i = 1, 10 do
        shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
        shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-110)), 0.7)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(-50), 0), 0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
        if Debounces.on == false then
          break
        end
        rs:wait()
      end
      do
        Shell()
        shell.Transparency = 0
        shell2.Transparency = 1
        for i = 1, 10 do
          shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
          shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(110)), 0.7)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.7)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(50), 0), 0.7)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
          if Debounces.on == false then
            break
          end
          rs:wait()
        end
        do
          Shell()
          shell2.Transparency = 0
          shell.Transparency = 1
          for i = 1, 10 do
            shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
            shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.7)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-110)), 0.7)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(-50), 0), 0.7)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
            if Debounces.on == false then
              break
            end
            rs:wait()
          end
          do
            Shell()
            shell.Transparency = 0
            shell2.Transparency = 1
            for i = 1, 10 do
              shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
              shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(110)), 0.7)
              larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.7)
              hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(50), 0), 0.7)
              torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
              if Debounces.on == false then
                break
              end
              rs:wait()
            end
            do
              Shell()
              shell2.Transparency = 0
              shell.Transparency = 1
              for i = 1, 10 do
                shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
                shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.7)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-110)), 0.7)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(-50), 0), 0.7)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
                if Debounces.on == false then
                  break
                end
                rs:wait()
              end
              do
                Shell()
                shell.Transparency = 0
                shell2.Transparency = 1
                for i = 1, 10 do
                  shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
                  shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
                  rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(110)), 0.7)
                  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(50), 0), 0.5)
                  larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.7)
                  torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
                  lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
                  rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
                  if Debounces.on == false then
                    break
                  end
                  rs:wait()
                end
                do
                  Shell()
                  shell2.Transparency = 0
                  shell.Transparency = 1
                  for i = 1, 10 do
                    shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
                    shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-110)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(-50), 0), 0.7)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
                    if Debounces.on == false then
                      break
                    end
                    rs:wait()
                  end
                  do
                    Shell()
                    shell.Transparency = 0
                    shell2.Transparency = 1
                    for i = 1, 10 do
                      shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
                      shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
                      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(110)), 0.7)
                      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.7)
                      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(50), 0), 0.7)
                      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
                      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
                      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
                      if Debounces.on == false then
                        break
                      end
                      rs:wait()
                    end
                    do
                      Shell()
                      shell2.Transparency = 0
                      shell.Transparency = 1
                      for i = 1, 10 do
                        shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
                        shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.7)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-110)), 0.7)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(-50), 0), 0.7)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
                        if Debounces.on == false then
                          break
                        end
                        rs:wait()
                      end
                      do
                        Shell()
                        shell.Transparency = 0
                        shell2.Transparency = 1
                        for i = 1, 10 do
                          shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
                          shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
                          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(110)), 0.7)
                          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.7)
                          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(50), 0), 0.7)
                          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
                          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
                          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
                          if Debounces.on == false then
                            break
                          end
                          rs:wait()
                        end
                        do
                          Shell()
                          shell2.Transparency = 0
                          shell.Transparency = 1
                          for i = 1, 10 do
                            shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
                            shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.7)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-110)), 0.7)
                            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(-50), 0), 0.7)
                            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
                            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
                            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
                            if Debounces.on == false then
                              break
                            end
                            rs:wait()
                          end
                          do
                            Shell()
                            shell.Transparency = 0
                            shell2.Transparency = 1
                            for i = 1, 10 do
                              shell.CFrame = rarm.CFrame * CFrame.new(0, -1, 0)
                              shell2.CFrame = larm.CFrame * CFrame.new(0, -1, 0)
                              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(110)), 0.7)
                              larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.7)
                              hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(50), 0), 0.7)
                              torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
                              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
                              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
                              if Debounces.on == false then
                                break
                              end
                              rs:wait()
                            end
                            do
                              shell.Transparency = 1
                              if Debounces.CanAttack == false then
                                Debounces.CanAttack = true
                                Debounces.NoIdl = false
                                Debounces.on = false
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
)
  Search = false
  mouse.KeyDown:connect(function(key)
  
  if key == "n" then
    if Search == false then
      Search = true
      for i,v in pairs(game.Players:getPlayers()) do
        if v.Name ~= char.Name then
          for j,k in pairs(v.Character:GetChildren()) do
            if k:IsA("BasePart") and k.Transparency >= 1 then
              bawx = Instance.new("SelectionBox", cam)
              bawx.Color = BrickColor.new("Bright red")
              bawx.Transparency = 0.5
              bawx.Adornee = k
            end
          end
        end
      end
    else
      do
        if Search == true then
          Search = false
          for i,v in pairs(cam:GetChildren()) do
            if v:IsA("SelectionBox") then
              v:Destroy()
            end
          end
        end
      end
    end
  end
end
)
  Grab = false
  mouse.KeyDown:connect(function(key)
  
  if key == "z" then
    Debounces.on = true
    Debounces.NoIdl = true
    Debounces.ks = true
    if Grab == false then
      gp = nil
      for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(110)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-110)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
        if Debounces.on == false then
          break
        end
        rs:wait()
      end
      do
        con1 = larm.Touched:connect(function(hit)
    
    ht = hit.Parent
    hum1 = ht:FindFirstChild("Humanoid")
    if hum1 ~= nil then
      if Debounces.ks == true then
        z = Instance.new("Sound", hed)
        z.SoundId = "rbxassetid://169380525"
        z.Volume = 1
        z:Play()
        Debounces.ks = false
      end
      hum1.PlatformStand = true
      gp = ht
      Grab = true
      asd = weld5(root, ht:FindFirstChild("Torso"), CFrame.new(0, 0, -2.4), CFrame.new(0, 0, 0))
      asd.Parent = larm
      asd.Name = "asd"
      asd.C0 = asd.C0 * CFrame.Angles(math.rad(0), math.rad(180), 0)
    end
  end
)
        for i = 1, 20 do
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3, 0.65, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.2)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.65, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
          if Debounces.on == false then
            break
          end
          rs:wait()
        end
        do
          if hum1 == nil then
            Debounces.on = false
            Debounces.NoIdl = false
          end
          con1:disconnect()
          if Grab == true then
            Grab = false
            Punch()
            z = Instance.new("Sound", hed)
            z.SoundId = "rbxassetid://169380525"
            z.Pitch = ptz[math.random(1, #ptz)]
            z.Volume = 1
            z:Play()
            for i = 1, 10 do
              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.4, -0.5) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-50)), 0.7)
              larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.7)
              hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(90), 0), 0.4)
              torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
              if Debounces.on == false then
                break
              end
              rs:wait()
            end
            do
              Punch()
              z = Instance.new("Sound", hed)
              z.SoundId = "rbxassetid://169380525"
              z.Pitch = ptz[math.random(1, #ptz)]
              z.Volume = 1
              z:Play()
              for i = 1, 10 do
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.6)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20)), 0.7)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-90), 0), 0.4)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                if Debounces.on == false then
                  break
                end
                rs:wait()
              end
              do
                Punch()
                z = Instance.new("Sound", hed)
                z.SoundId = "rbxassetid://169380525"
                z.Pitch = ptz[math.random(1, #ptz)]
                z.Volume = 1
                z:Play()
                for i = 1, 10 do
                  rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.4, -0.5) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-50)), 0.7)
                  larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.7)
                  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(90), 0), 0.4)
                  torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
                  lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                  rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                  if Debounces.on == false then
                    break
                  end
                  rs:wait()
                end
                do
                  Punch()
                  z = Instance.new("Sound", hed)
                  z.SoundId = "rbxassetid://169380525"
                  z.Pitch = ptz[math.random(1, #ptz)]
                  z.Volume = 1
                  z:Play()
                  for i = 1, 10 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-90), 0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                    if Debounces.on == false then
                      break
                    end
                    rs:wait()
                  end
                  do
                    Punch()
                    z = Instance.new("Sound", hed)
                    z.SoundId = "rbxassetid://169380525"
                    z.Pitch = ptz[math.random(1, #ptz)]
                    z.Volume = 1
                    z:Play()
                    for i = 1, 10 do
                      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.4, -0.5) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-50)), 0.7)
                      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.7)
                      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(90), 0), 0.4)
                      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
                      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                      if Debounces.on == false then
                        break
                      end
                      rs:wait()
                    end
                    do
                      Punch()
                      z = Instance.new("Sound", hed)
                      z.SoundId = "rbxassetid://169380525"
                      z.Pitch = ptz[math.random(1, #ptz)]
                      z.Volume = 1
                      z:Play()
                      for i = 1, 10 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.6)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20)), 0.7)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-90), 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                        if Debounces.on == false then
                          break
                        end
                        rs:wait()
                      end
                      do
                        Punch()
                        z = Instance.new("Sound", hed)
                        z.SoundId = "rbxassetid://169380525"
                        z.Pitch = ptz[math.random(1, #ptz)]
                        z.Volume = 1
                        z:Play()
                        for i = 1, 10 do
                          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.4, -0.5) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-50)), 0.7)
                          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.7)
                          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(90), 0), 0.4)
                          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
                          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                          if Debounces.on == false then
                            break
                          end
                          rs:wait()
                        end
                        do
                          Punch()
                          z = Instance.new("Sound", hed)
                          z.SoundId = "rbxassetid://169380525"
                          z.Pitch = ptz[math.random(1, #ptz)]
                          z.Volume = 1
                          z:Play()
                          for i = 1, 10 do
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.6)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20)), 0.7)
                            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-90), 0), 0.4)
                            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
                            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                            if Debounces.on == false then
                              break
                            end
                            rs:wait()
                          end
                          do
                            Punch()
                            z = Instance.new("Sound", hed)
                            z.SoundId = "rbxassetid://169380525"
                            z.Pitch = ptz[math.random(1, #ptz)]
                            z.Volume = 1
                            z:Play()
                            for i = 1, 10 do
                              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.4, -0.5) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-50)), 0.7)
                              larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.7)
                              hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(90), 0), 0.4)
                              torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
                              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                              if Debounces.on == false then
                                break
                              end
                              rs:wait()
                            end
                            do
                              Punch()
                              z = Instance.new("Sound", hed)
                              z.SoundId = "rbxassetid://169380525"
                              z.Pitch = ptz[math.random(1, #ptz)]
                              z.Volume = 1
                              z:Play()
                              for i = 1, 10 do
                                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.6)
                                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20)), 0.7)
                                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-90), 0), 0.4)
                                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
                                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                                if Debounces.on == false then
                                  break
                                end
                                rs:wait()
                              end
                              do
                                Punch()
                                z = Instance.new("Sound", hed)
                                z.SoundId = "rbxassetid://169380525"
                                z.Pitch = ptz[math.random(1, #ptz)]
                                z.Volume = 1
                                z:Play()
                                for i = 1, 10 do
                                  rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.4, -0.5) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-50)), 0.7)
                                  larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.7)
                                  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(90), 0), 0.4)
                                  torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
                                  lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                                  rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                                  if Debounces.on == false then
                                    break
                                  end
                                  rs:wait()
                                end
                                do
                                  Punch()
                                  z = Instance.new("Sound", hed)
                                  z.SoundId = "rbxassetid://169380525"
                                  z.Pitch = ptz[math.random(1, #ptz)]
                                  z.Volume = 1
                                  z:Play()
                                  for i = 1, 10 do
                                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.6)
                                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20)), 0.7)
                                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), math.rad(-90), 0), 0.4)
                                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
                                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
                                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                                    if Debounces.on == false then
                                      break
                                    end
                                    rs:wait()
                                  end
                                  do
                                    con1:disconnect()
                                    Debounces.on = false
                                    Debounces.NoIdl = false
                                    if gp ~= nil then
                                      gp:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 140
                                      for i,v in pairs(larm:GetChildren()) do
                                        if v.Name == "asd" and v:IsA("Weld") then
                                          v:Remove()
                                        end
                                      end
                                      hum1 = nil
                                      ht = nil
                                      Debounces.on = false
                                      Debounces.NoIdl = false
                                    else
                                      if ht == nil then
                                        wait()
                                        Grab = false
                                        Debounces.on = false
                                        Debounces.NoIdl = false
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
)
  mouse.KeyDown:connect(function(key)
  
  if string.byte(key) == 52 then
    char.Humanoid.WalkSpeed = 60
  end
end
)
  mouse.KeyUp:connect(function(key)
  
  if string.byte(key) == 52 then
    char.Humanoid.WalkSpeed = 40
  end
end
)
  local animpose = "Idle"
  local lastanimpose = "Idle"
  local sine = 0
  local change = 1
  local val = 0
  local ffing = false
  game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/10)),math.rad(20),0), 0.2)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.16*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-20), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)
  hum.MaxHealth = math.huge
  wait(3)
  hum.Health = math.huge
  -- LATF2 Lightning, Enjoy...
LocalPlayer = game:GetService("Players").LocalPlayer
char = player.Character
local lastCF=char.Torso.Position
local x1=Instance.new("Part",game.Workspace)
x1.Name="Lightning"
x1.Size=Vector3.new(1,1,1)
x1.CanCollide=false
x1.Anchored=true
x1.Transparency=1
Spawn(function()
        while true do
                wait(-1)
                x1.CFrame=char.Torso.CFrame*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(50,360)))*CFrame.new(0,0,2.6)
        end
end)
for i = 1,math.huge do
        local dist2 = (lastCF-x1.Position).magnitude
        local x2=Instance.new("Part",game.Workspace)
        x2.Name="Lightning2"
        x2.Size=Vector3.new(1,1,1)
        x2.Material="Neon"
        x2.BrickColor=BrickColor.new("Crimson")
        x2.CFrame=CFrame.new(lastCF,x1.Position)*CFrame.new(0,0,-dist2/2)
        x2.CanCollide=false
        x2.Anchored=true
        local m = Instance.new("BlockMesh",x2)
        m.Scale = Vector3.new(0.5,0.5,dist2)
        lastCF=x1.Position
        spawn(function()
                for i = 1,20 do
                        xx=m.Scale.x/2
                        y=m.Scale.x/2
                        m.Scale=m.Scale-Vector3.new(xx,y,0)
                        wait()
                end
        end)
        game.Debris:AddItem(x2,1.5)
        wait()
end
x1:Destroy()
end