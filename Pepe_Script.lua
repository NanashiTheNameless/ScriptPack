--RARE PEPE SCRIPT LOADED
dot = false
Player = game.Players.LocalPlayer
Character = Player.Character
ra = Character:FindFirstChild("Right Arm")
rl = Character:FindFirstChild("Right Leg")
la = Character:FindFirstChild("Left Arm")
ll = Character:FindFirstChild("Left Leg")
h = Character:FindFirstChild("Head")
to = Character:FindFirstChild("Torso")
Image = Instance.new("ImageLabel")
Character.Humanoid.MaxHealth = math.huge
wait()
Character.Humanoid.Health = math.huge
Billboard = Instance.new("BillboardGui")
t = Instance.new("HopperBin")
bb = Instance.new("BillboardGui",Character.Head)
bb.Enabled = true
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,200,0,50)
bb.StudsOffset = Vector3.new(0,1,0)
gui=Instance.new("TextBox",bb)
gui.Size = UDim2.new(0,200,0,50)
gui.Position=UDim2.new(0,0,0,-48)
gui.BackgroundColor3=Color3.new(255,255,255)
gui.BorderSizePixel = 0
gui.TextWrapped = true
gui.Font = "SourceSansBold"
gui.TextScaled = true
gui.TextXAlignment = "Left"
gui.TextYAlignment = "Top"
gui.Visible = true
gui.Text = "Rare Pepe script loaded"
gui.TextColor3 = Color3.new(0/255, 171/255, 0/255)
wait(2)
gui.Text = "Made by LSM132"
gui.TextColor3 = Color3.new(0/255, 171/255, 0/255)
wait(2)
gui.BackgroundTransparency = 1
gui.Text = " "
gui.BorderColor3 = Color3.new(0,0,0)
Player.Chatted:connect(function(message)
gui.Visible = true
if dot == false then
if string.sub(message,2,2) == "/" or string.sub(message,1,1) == "/" then 
gui.Text = "cmd: "..message
gui.BackgroundTransparency = 0
gui.TextColor3 = Color3.new(255,0,0)
else
gui.Text = message
gui.BackgroundTransparency = 0
gui.TextColor3 = Color3.new(0/255, 171/255, 0/255)
end
end
wait(5)
gui.Text = " "
gui.BackgroundTransparency = 1
end)
mouse = Player:GetMouse()
t.Parent = Player.Backpack
t.Name = " "
t.Selected:connect(function(tool)
tool.Button1Down:connect(function() 
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
r.BrickColor = BrickColor.new("Bright green")
local s = Instance.new("Sound",workspace)
s.SoundId = "rbxassetid://260170594" 
s.Volume = 1
s:Play()
local e = Instance.new("Explosion",workspace) 
e.BlastRadius = 10
e.BlastPressure = 10000 
e.Position = mouse.Hit.p 
wait(.1) 
r:Destroy()
end)
mouse.KeyDown:connect(function(key)
if key == "0" then
local p = Instance.new("ParticleEmitter",Character.Torso)
p.Texture = "rbxassetid://154795048"
p.Name = "DogeP"
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
local thing = Instance.new("Part",workspace)
thing.Name = "Spawn"
thing.Shape = "Ball"
thing.CanCollide = false
thing.Material = Enum.Material.Neon
thing.BrickColor = BrickColor.new("Institutional white")
thing.Size = Vector3.new(10,10,10)
thing.Position = Player.Character.Torso.Position
thing.Anchored = true
Character.Humanoid.WalkSpeed = 0
Character.Humanoid.JumpPower = 0
wait(5)
for i=1,5 do
thing.Transparency = (i / 5)
wait(.1)
end
wait()
Character.Humanoid.WalkSpeed = 16
Character.Humanoid.JumpPower = 50
Billboard.AlwaysOnTop = true
Image.Parent = Billboard
Billboard.Parent = Character.Head
Image.Size = UDim2.new(1, 0, 1, 0)
Billboard.Size = UDim2.new(5, 0, 5, 0)
Image.Position = UDim2.new(0, 0, 0, 0)
Billboard.StudsOffset = Vector3.new(0, 0, 0)
Image.BackgroundTransparency = 1
local BC = Character["Body Colors"]
BC.HeadColor = BrickColor.new("Bright Orange")
BC.LeftArmColor = BrickColor.new("Bright Orange")
BC.LeftLegColor = BrickColor.new("Bright Orange")
BC.RightArmColor = BrickColor.new("Bright Orangw")
BC.RightLegColor = BrickColor.new("Bright Orange")
BC.TorsoColor = BrickColor.new("Bright Orange")
repeat wait() until Character and Character:findFirstChild("Head")
Billboard.Adornee = Character.Head
Image.Image = "rbxassetid://154795048"
while true do
Image.ImageColor3 = Color3.new(1,1,1)
wait(0.1)
Image.ImageColor3 = Color3.new(252/255,0/255,6/255)
wait(0.1)
Image.ImageColor3 = Color3.new(249/255, 121/255, 8/255)
wait(0.1)
Image.ImageColor3 = Color3.new(248/255, 250/255, 14/255)
wait(0.1)
Image.ImageColor3 = Color3.new(47/255, 1, 14/255)
wait(0.1)
Image.ImageColor3 = Color3.new(36/255, 1, 219/255)
wait(0.1)
Image.ImageColor3 = Color3.new(27/255, 71/255, 1)
wait(0.1)
Image.ImageColor3 = Color3.new(225/255, 0/255, 1)
wait(0.1)
Image.ImageColor3 = Color3.new(252/255, 0/255, 10/255)
wait(0.1)
end