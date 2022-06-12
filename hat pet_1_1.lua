---------------[[mediafire]]------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
script.Parent = workspace.yfc
Owner = Workspace.yfc 
admin = "yfc" 
pl = Game.Players:GetChildren() 
--lego
local orb = Instance.new("Part") 
--local h = Instance.new("Humanoid") 
local m = Instance.new("Model") 

color = BrickColor.new("Bright red") 

--[[ local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 

local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = player2.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb ]]--

m.Parent = Owner 
orb.Name = "Head" 
orb.Parent = m 
orb.formFactor = "Plate" 
orb.BrickColor = color
orb.Size = Vector3.new(2, 2, 2) 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.LeftSurface = "Motor"
orb.RightSurface = "Motor"
orb.Shape = "Ball" 
orb.Transparency = 0 
orb.Reflectance = 0 
orb.Anchored = true 
orb.CanCollide = false 
orb.Locked = true 
--h.Parent = m 
--h.MaxHealth = 0 
--h.Health = 0 
wait(.1) 
m.Name = "yfc's Goof-Ball" 

f = Instance.new("Fire") 
f.Color = Color3.new(1,1,0.50) 
f.Parent = orb 
f.Heat = Vector3.new(0)

d = Instance.new("Decal") 
d.Face = "Front" 
d.Parent = orb 
d.Texture = Game.Players.yfc.Character.Head.face.Texture 

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = m 
guimain2.Adornee = orb 
guimain2.Size = UDim2.new(0, 40, 0, 2) 
guimain2.StudsOffset = (Vector3.new(0, 3, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(0, 0, 0, 0) 
T3.Position = UDim2.new(0, 0, 0, 0) 
T3.Text = "Pet : Nothing" 
T3.BackgroundTransparency = 1 
T3.BackgroundColor = BrickColor.new(1003) 
T3.TextColor = BrickColor.new("Bright red") 
T3.FontSize = "Size14"
-------------------------Stay off
orb.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner.Name then 
hit.Parent:BreakJoints() 
end 
end 
end) 
-------------------------hat
hat = Instance.new("Part")
hat.Name = "Head" 
hat.Parent = orb 
hat.formFactor = "Plate" 
hat.BrickColor = color
hat.Size = Vector3.new(2, 1, 2) 
hat.TopSurface = "Smooth" 
hat.BottomSurface = "Smooth" 
hat.LeftSurface = "Smooth"
hat.RightSurface = "Smooth"
hat.Shape = "Block" 
hat.Transparency = 0 
hat.Reflectance = 0 
hat.Anchored = true 
hat.CanCollide = false 
hat.Locked = true 

mesh = Instance.new("SpecialMesh") 
mesh.TextureId = "http://http://www.roblox.com/asset/?id=19515809" 
mesh.MeshId = "http://www.roblox.com/asset/?id=13640868" 
mesh.Parent = hat 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(1.2, 1.2, 1.2)
-------------------------hat
hat2 = Instance.new("Part")
hat2.Name = "Head" 
hat2.Parent = orb 
hat2.formFactor = "Plate" 
hat2.BrickColor = color
hat2.Size = Vector3.new(2, 1, 2) 
hat2.TopSurface = "Smooth" 
hat2.BottomSurface = "Smooth" 
hat2.LeftSurface = "Smooth"
hat2.RightSurface = "Smooth"
hat2.Shape = "Block" 
hat2.Transparency = 0 
hat2.Reflectance = 0 
hat2.Anchored = true 
hat2.CanCollide = false 
hat2.Locked = true 

mesh = Instance.new("SpecialMesh") 
mesh.TextureId = "http://www.roblox.com/asset/?id=18136470" 
mesh.MeshId = "http://www.roblox.com/asset/?id=1577360" 
mesh.Parent = hat2 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(1.7, 2, 2.1) 

-------------------------hat
hat3 = Instance.new("Part")
hat3.Name = "Head" 
hat3.Parent = orb 
hat3.formFactor = "Plate" 
hat3.BrickColor = color
hat3.Size = Vector3.new(2, 1, 1) 
hat3.TopSurface = "Smooth" 
hat3.BottomSurface = "Smooth" 
hat3.LeftSurface = "Smooth"
hat3.RightSurface = "Smooth"
hat3.Shape = "Block" 
hat3.Transparency = 1 
hat3.Reflectance = 0 
hat3.Anchored = true 
hat3.CanCollide = false 
hat3.Locked = true 

mesh = Instance.new("SpecialMesh") 
mesh.TextureId = "http://www.roblox.com/asset/?id=8266220" 
mesh.MeshId = "ffed8316392f40eef1e67dbba9194256" 
mesh.Parent = hat3 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(0.5, 1, 0.5) 
-------------------------commands 
vip = game.Players.yfc

function onChatted(msg) 
if msg == "Pet, be Cool" then 
T3.Text = "Pet : Now is Cool" 
hat.Transparency = 0 
hat2.Transparency = 0 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.ayfc

function onChatted(msg) 
if msg == "Pet, Glasses" then 
T3.Text = "Pet : Now has Glasses" 
hat.Transparency = 1 
hat2.Transparency = 0 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.yfc

function onChatted(msg) 
if msg == "Pet, Hat" then 
T3.Text = "Pet : Now has a hat" 
hat.Transparency = 0 
hat2.Transparency = 1 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.yfc 

function onChatted(msg) 
if msg == "Pet, no Hats" then 
T3.Text = "Pet : Now has no hats" 
hat.Transparency = 1 
hat2.Transparency = 1 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.yfc 

function onChatted(msg) 
if msg == "exitall" then 
orb:Remove() 
script:Remove() 
m:Remove() 
end 
end 
vip.Chatted:connect(onChatted)
-------------------------always leave this last or ur commands might now work 
X = 3
Y = 5
Z = -2

while true do
orb.CFrame = Owner.Head.CFrame + Vector3.new(X,Y,Z) 
hat.CFrame = orb.CFrame + Vector3.new(0,1.05,0) 
hat2.CFrame = orb.CFrame + Vector3.new(0,0.35,0) 
hat3.CFrame = orb.CFrame + Vector3.new(0,0,0) 
wait(0.002) 
end 