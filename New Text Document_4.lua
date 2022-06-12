--Edited by 1x0x1x0--

local HBill = Instance.new("BillboardGui", game.Players.LocalPlayer.Character.Head)
HBill.Size = UDim2.new(8,0,8,0)
HBill.Name = "dat boi"
local HMain = Instance.new("Frame", HBill)
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(1,0,1,0)
local pic = Instance.new("ImageLabel", HMain)
pic.Size = UDim2.new(1,0,1,0)
pic.Image = 'rbxassetid://15575527'
pic.BackgroundTransparency = 1

--------------------------------------------------------------------------

local p = game.Players.LocalPlayer
local char = p.Character
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart



hed.Transparency = 1
torso.Transparency = 1
larm.Transparency = 1
rarm.Transparency = 1
rleg.Transparency = 1
lleg.Transparency = 1

iz = (game.Players.LocalPlayer.Name)

is = (game.Players.LocalPlayer.Character)

game.Workspace[iz].Head.face:Remove()

for i,v in pairs(is:GetChildren()) do
   if v.ClassName == 'Hat' then
       v:Destroy()
   end
end

for i,v in pairs(is:GetChildren()) do
   if v.ClassName == 'Shirt' then
       v:Destroy()
   end
end

for i,v in pairs(is:GetChildren()) do
   if v.ClassName == 'Pants' then
       v:Destroy()
   end
end

wait()


local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

is.Humanoid.WalkSpeed = 100

function onTouch(part)
local humanoid = part.Parent:findFirstChild("Humanoid")
sound1 = Instance.new('Sound')
sound1.SoundId = 'http://www.roblox.com/asset/?id=0'
sound1.Looped = false
sound1.Parent = is.Torso
sound1.Volume = 0.7
sound1:Play()

sound2 = Instance.new('Sound')
sound2.SoundId = 'http://www.roblox.com/asset/?id=0'
sound2.Looped = false
sound2.Parent = is.Torso
sound2:Play()
if (humanoid ~=nil) then
humanoid.Health = 0
end
end

is.Torso.Touched:connect(onTouch)

dot = false
Player = game.Players.LocalPlayer
Character = Player.Character
mouse = Player:GetMouse()

t = Instance.new("HopperBin")
t.Parent = Player.Backpack
t.Name = " "
t.Selected:connect(function(tool)

tool.Button1Down:connect(function()
idz = {"138288153"}

taut = Instance.new('Sound')
taut.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
taut.Looped = false
taut.Parent = is.Torso
taut.Volume = 1
taut:Play()
wait(2.8)
idz = {"138288153"}

taut = Instance.new('Sound')
taut.SoundId = "rbxassetid://528145698"
taut.Looped = false
taut.Parent = is.Torso
taut.Volume = 5
taut:Play()
taut = Instance.new('Sound')
taut.SoundId = "rbxassetid://528145698"
taut.Looped = false
taut.Parent = is.Torso
taut.Volume = 5
taut:Play()
taut = Instance.new('Sound')
taut.SoundId = "rbxassetid://528145698"
taut.Looped = false
taut.Parent = is.Torso
taut.Volume = 5
taut:Play()

local p = Character.Head
local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (p.Position - mouse.Hit.p).magnitude if (mag > 2048) then return end
local r = Instance.new("Part",workspace)
r.Name = "Lazer"
r.formFactor = "Custom" r.TopSurface = "Smooth"
r.Size = Vector3.new(2,2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Material = Enum.Material.Neon
r.BrickColor = BrickColor.new("Bright blue")
local s = Instance.new("Sound",workspace)
s.SoundId = "rbxassetid://528145698"
s.Volume = 1
s:Play()
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 20
e.BlastPressure = 9999999
e.Position = mouse.Hit.p
wait(.1)
r:Destroy()
end)
mouse.KeyDown:connect(function(key)
if key == "0" then
local p = Instance.new("ParticleEmitter",Character.Torso)
p.Texture = "rbxassetid://244905904"
p.Name = "PepeP"
p.ZOffset = 5
p.Lifetime = NumberRange.new(.5,.5)
Character.Humanoid.WalkSpeed = 180
Character.Humanoid.JumpPower = 200
elseif key == "v" then
Character.Torso.CFrame = CFrame.new(mouse.hit.p+Vector3.new(0,5,0))
elseif key == "t" then
if Character and Character.Humanoid.Health ~= nil then
Character.Humanoid.Health = Character.Humanoid.MaxHealth
end
elseif key == "e" then
local name = Instance.new("Part",workspace)
name.Size = Vector3.new(10,10,10)
name.Shape = "Ball"
name.CanCollide = false
name.Anchored = true
name.BrickColor = BrickColor.new("Bright blue")
name.Material = Enum.Material.Neon
name.Position = Player.Character.Torso.Position
local name2 = Instance.new("Part",workspace)
name.Size = Vector3.new(10,10,10)
name.Shape = "Ball"
name.CanCollide = false
name.Anchored = true
name.BrickColor = BrickColor.new("Bright blue")
name.Material = Enum.Material.Neon
name.Position = Player.Character.Torso.Position
end
end)
mouse.KeyUp:connect(function(key)
if key == "0" then
local pd = Character.Torso:FindFirstChild("PepeP")
if pd ~= nil then
pd:Destroy()
end
Character.Humanoid.WalkSpeed = 16
Character.Humanoid.JumpPower = 50
end
end)
end)

--Edited by 1x0x1x0--