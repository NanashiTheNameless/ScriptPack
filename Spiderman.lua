-- Created by Zarcel

local user = game:service'Players'.localPlayer;
mouse = user:GetMouse()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Hat")then
v:Destroy()
end
end  

wait()
Player = game.Players.LocalPlayer
Character = Player.Character
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
Torso = Character.Torso
Action = "RightSpin"
mouse = Player:GetMouse()

--W

wait(0.5)

local player=game.Players.LocalPlayer
local character=player.Character
local torso=character:findFirstChild("Torso")
local humanoid=character:findFirstChild("Humanoid")

lhook=nil
rhook=nil

local mouse=player:GetMouse()


mouse.KeyDown:connect(function(key)
if key=="e" and humanoid and mouse.Target~=nil then
local s1 = Instance.new("Sound",game.Players.LocalPlayer.Character['Left Arm'])
s1.Volume = 10
s1.SoundId = "rbxassetid://576652617"
s1.PlayOnRemove = false
s1.Looped = false
s1:Play()
local sel=Instance.new("SelectionPointLasso")
sel.Parent=workspace
sel.Humanoid=humanoid
sel.Color=BrickColor.new("White")
sel.Point=mouse.Hit.p

rhook=sel
local bv=Instance.new("BodyVelocity")
bv.Parent=torso
bv.Name="RightForce"
bv.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bv.velocity=CFrame.new(torso.Position, mouse.Hit.p).lookVector*100
elseif key=="q" and humanoid and mouse.Target~=nil then
local s2 = Instance.new("Sound",game.Players.LocalPlayer.Character['Right Arm'])
s2.Volume = 10
s2.SoundId = "rbxassetid://576652617"
s2.PlayOnRemove = false
s2.Looped = false
s2:Play()
local sel=Instance.new("SelectionPointLasso")
sel.Parent=workspace
sel.Humanoid=humanoid
sel.Color=BrickColor.new("White")
sel.Point=mouse.Hit.p
lhook=sel
local bv=Instance.new("BodyVelocity")
bv.Parent=torso
bv.Name="LeftForce"
bv.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bv.velocity=CFrame.new(torso.Position, mouse.Hit.p).lookVector*100
end
end)

mouse.KeyUp:connect(function(key)
if key=="e" then
if rhook~=nil then
rhook:Destroy()
if torso:findFirstChild("RightForce") then
torso.RightForce:Destroy()
end
end
elseif key=="q" then
if lhook~=nil then
lhook:Destroy()
if torso:findFirstChild("LeftForce") then
torso.LeftForce:Destroy()
end
end
end
end)

local hed = game.Players.LocalPlayer.Character.Head
hed.Transparency = 1
local part = Instance.new("Part",hed)
part.Material = "Neon"
part.Name = "Mask"
part.CanCollide = true
part.BrickColor = BrickColor.new("Lime green")
local mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.26, 1.26, 1.26)
mesh.MeshId = "http://www.roblox.com/asset/?id=151354047";
mesh.TextureId = "http://www.roblox.com/asset/?id=151354069";
w = Instance.new("Weld")
w.Parent = hed
w.Part0 = part
w.Part1 = hed
w.C1 = CFrame.new(0,0.01,0)
user.Character.Shirt.ShirtTemplate = "rbxassetid://151694752";
user.Character.Pants.PantsTemplate = "rbxassetid://151694768";

-- Attacks and other things -- 

player = game.Players.LocalPlayer
char = player.Character.Torso  
local mouse = player:GetMouse() -- Base of this whole party.
local on = false


local function KeyDown( key ) --Tingle
if key == "z" then
local a = game:GetService("Chat")
a:Chat(game.Players.LocalPlayer.Character.Head,"*My Spidey Senses Are Tingling..*")
local s3 = Instance.new("Sound",game.Players.LocalPlayer.Character.Head)
s3.Volume = 10
s3.SoundId = "rbxassetid://576613547"
s3.PlayOnRemove = false
s3.Looped = false
s3:Play()
end
end
mouse.KeyDown:connect(KeyDown)

local function KeyDown( key ) --Queue the music
if key == "x" then
local s2 = Instance.new("Sound",game.Players.LocalPlayer.Character.Head)
s2.Volume = 10
s2.SoundId = "rbxassetid://576613349"
s2.PlayOnRemove = false
s2.Looped = false
s2:Play()
end
end
mouse.KeyDown:connect(KeyDown)

-- Controls --

local screengui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui); -- Spidey Sense
local Sense = Instance.new("TextLabel",screengui)
Sense.Text = "Spidey Sense[Z]"
Sense.FontSize = "Size42"
Sense.Font = "Cartoon"
Sense.TextColor3 = Color3.new(255,255,255)
Sense.Position = UDim2.new(1, -250,0.5, 35)
Sense.Size = UDim2.new(0,200,0,50)
Sense.BackgroundTransparency = 1

local screengui2 = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui); -- Web-Sling
local Sense2 = Instance.new("TextLabel",screengui)
Sense2.Text = "Web-Sling(Q&E)"
Sense2.FontSize = "Size42"
Sense2.Font = "Cartoon"
Sense2.TextColor3 = Color3.new(255,255,255)
Sense2.Position = UDim2.new(1, -250,0.5, 95)
Sense2.Size = UDim2.new(0,200,0,50)
Sense2.BackgroundTransparency = 1

local screengui2 = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui); -- Web-Sling
local Sense2 = Instance.new("TextLabel",screengui)
Sense2.Text = "Music [X]"
Sense2.FontSize = "Size42"
Sense2.Font = "Cartoon"
Sense2.TextColor3 = Color3.new(255,255,255)
Sense2.Position = UDim2.new(1, -250,0.5, 150)
Sense2.Size = UDim2.new(0,200,0,50)
Sense2.BackgroundTransparency = 1