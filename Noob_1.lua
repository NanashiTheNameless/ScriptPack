while not getmetatable(shared) do
  wait()
end
shared(script)
local p = game.Players.LocalPlayer
local bkp = p:WaitForChild("Backpack")
local char = p.Character
local bc = char["Body Colors"]
local mouse = p:GetMouse()
local la = char["Left Arm"]
local ra = char["Right Arm"]
local ll = char["Left Leg"]
local rl = char["Right Leg"]
local hed = char.Head
local tor = char.Torso
local hum = char.Humanoid
local cam = workspace.CurrentCamera or workspace.Camera
local min = 1
local max = 2
local autism = false
local CanGoThroughPlayers = true
bc.LeftArmColor = BrickColor.new("Bright yellow")
bc.RightArmColor = BrickColor.new("Bright yellow")
bc.HeadColor = BrickColor.new("Bright yellow")
bc.LeftLegColor = BrickColor.new("Bright green")
bc.RightLegColor = BrickColor.new("Bright green")
bc.TorsoColor = BrickColor.new("Bright blue")
function FF()
  ff = Instance.new("ForceField", char)
  ff:Destroy()
end
char.Archivable = true
for i, v in pairs(char:GetChildren()) do
  if v:IsA("Part") then
    v.Anchored = true
  end
  if v:IsA("Hat") then
    v:Destroy()
  end
end
clon = char:Clone()
clon.Parent = char
clon.Humanoid:Remove()
function God()
  clon.Parent = char.Parent
  char.Parent = cam
  local rekt = Instance.new("Model", char)
  rekt.Name = "ACTIVE"
  clon.Archivable = false
end
local cla = clon["Left Arm"]
local cra = clon["Right Arm"]
local cll = clon["Left Leg"]
local crl = clon["Right Leg"]
local ched = clon.Head
local ctor = clon.Torso
for i, v in pairs(clon:GetChildren()) do
  if v:IsA("Part") then
    v.TopSurface = "Studs"
    v.BottomSurface = "Inlet"
    v.CanCollide = false
    v.FrontSurface = "Smooth"
    v.BackSurface = "Smooth"
    if v.Name == "Torso" then
      v.LeftSurface = "Smooth"
      v.RightSurface = "Smooth"
    end
  end
  if v:IsA("Accoutrement") then
    v:Remove()
  end
end
for i, v in pairs(char:GetChildren()) do
  if v:IsA("Part") then
    v.Transparency = 1
    v.Anchored = false
  end
  if v:IsA("Accoutrement") then
    v:Remove()
  end
end
if hed:findFirstChild("face") then
  hed.face:Remove()
end
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333333
tf = 0
allowframeloss = true
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
game:GetService("RunService").Stepped:connect(function()
  if CanGoThroughPlayers and game.Players ~= nil and game.Players.LocalPlayer ~= nil and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("Head") ~= nil then
    game.Players.LocalPlayer.Character.Torso.CanCollide = false
    game.Players.LocalPlayer.Character.Head.CanCollide = false
  end
end)
cla_size = Vector3.new(1, 2, 1)
cra_size = Vector3.new(1, 2, 1)
ched_size = Vector3.new(2, 1, 1)
ctor_size = Vector3.new(2, 2, 1)
cll_size = Vector3.new(1, 2, 1)
crl_size = Vector3.new(1, 2, 1)
God()
game:GetService("RunService").RenderStepped:connect(function()
  for _, hb in pairs(bkp:GetChildren()) do
    if hb.Name == "HopperBin" then
      hb:Destroy()
    end
  end
  wait(0.5)
  for i, v in pairs(char:GetChildren()) do
    if v:IsA("Part") then
      v.CanCollide = false
    end
  end
  cla.CFrame = la.CFrame
  cra.CFrame = ra.CFrame
  ched.CFrame = hed.CFrame
  ctor.CFrame = tor.CFrame
  cll.CFrame = ll.CFrame
  crl.CFrame = rl.CFrame
  for i, v in pairs(clon:GetChildren()) do
    if v:IsA("Part") then
      v.CanCollide = false
    end
  end
  if autism then
    cla.Size = cla_size * Vector3.new(math.random(min, max), math.random(min, max), math.random(min, max))
    cra.Size = cra_size * Vector3.new(math.random(min, max), math.random(min, max), math.random(min, max))
    ched.Size = ched_size * Vector3.new(math.random(min, max), math.random(min, max), math.random(min, max))
    ctor.Size = ctor_size * Vector3.new(math.random(min, max), math.random(min, max), math.random(min, max))
    cll.Size = cll_size * Vector3.new(math.random(min, max), math.random(min, max), math.random(min, max))
    crl.Size = crl_size * Vector3.new(math.random(min, max), math.random(min, max), math.random(min, max))
  end
end)
