-- Made by CiniMadness
iPlayer = game.Players.LocalPlayer.Name
local Gui = Instance.new('ScreenGui', game.Players[iPlayer].PlayerGui)
Gui.Name = 'DankMemes'
local Pull = Instance.new('Frame', Gui)
Pull.Name = 'Grab'
Pull.Active = true
Pull.BackgroundColor3 = Color3.new(97/255,97/255,97/255)
Pull.BackgroundTransparency = 0
Pull.BorderSizePixel = 0
Pull.Position = UDim2.new(0.5,-318,0.5,-92)
Pull.Size = UDim2.new(0,447,0,50)
Pull.Draggable = true
-- =====================================================================
local Close = Instance.new('TextButton', Pull)
Close.Name = 'Close'
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(1,-23,0,1)
Close.Size = UDim2.new(0,22,0,22)
Close.Font = 'SourceSans'
Close.FontSize = 'Size24'
Close.TextColor3 = Color3.new(255,255,255)
Close.Text = 'X'
Close.TextStrokeTransparency = 0.8
-- =====================================================================
local Body = Instance.new('Frame', Pull)
Body.Name = 'Body'
Body.BackgroundColor3 = Color3.new(60/255,60/255,60/255)
Body.BackgroundTransparency = 0
Body.BorderSizePixel = 0
Body.Position = UDim2.new(0,0,0,52)
Body.Size = UDim2.new(0,447,0,212)
-- =====================================================================
local Title = Instance.new('TextLabel', Pull)
Title.Name = 'Title'
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0,20,0,0)
Title.Size = UDim2.new(0,200,1,0)
Title.Font = 'SourceSansLight'
Title.FontSize = 'Size48'
Title.Text = "DankMemesv2"
Title.TextColor3 = Color3.new(255,255,255)
Title.TextStrokeColor3 = Color3.new(74/255,74/255,74/255)
Title.TextStrokeTransparency = 0
-- =====================================================================
local PlayerName = Instance.new('TextBox', Body)
PlayerName.Name = 'PlayerName'
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0,245,0,-40)
PlayerName.Size = UDim2.new(0,180,0,30)
PlayerName.Font = 'SourceSans'
PlayerName.FontSize = 'Size18'
PlayerName.Text = 'PLAYERNAME'
PlayerName.BackgroundColor3 = Color3.new(255,255,255)
PlayerName.TextColor3 = Color3.new(0,0,0)
PlayerName.TextWrapped = true
-- =====================================================================
local Credits = Instance.new('TextLabel', Body)
Credits.BackgroundTransparency = 1
Credits.Text = 'Made by CiniMadness'
Credits.Position = UDim2.new(0,0,0,15)
Credits.Size = UDim2.new(1,0,0,20)
Credits.TextColor3 = Color3.new(255,255,255)
Credits.FontSize = 'Size24'
Credits.Font = 'Arial'
-- =====================================================================
local God = Instance.new('TextButton', Body)
God.Name = 'God'
God.BackgroundColor3 = Color3.new(21/255,142/255,255)
God.BackgroundTransparency = 0
God.BorderSizePixel = 2
God.Position = UDim2.new(0,10,0,50)
God.Size = UDim2.new(0,135,0,30)
God.Font = 'SourceSansBold'
God.FontSize = 'Size28'
God.Text = 'GOD'
God.TextColor3 = Color3.new(255,255,255)
God.TextWrapped = true
God.BorderColor3 = Color3.new(97/255,97/255,97/255)
God.TextStrokeTransparency = 1
-- =====================================================================
local KillAll = God:Clone()
KillAll.Name = 'KillAll'
KillAll.Parent = Body
KillAll.Position = UDim2.new(0,10,0,90)
KillAll.Text = 'KILL ALL'
-- =====================================================================
local KillPlr = God:Clone()
KillPlr.Name = 'KillPlr'
KillPlr.Parent = Body
KillPlr.Position = UDim2.new(0,155,0,50)
KillPlr.Text = 'KILL'
-- =====================================================================
local TpMe = God:Clone()
TpMe.Name = 'TpMe'
TpMe.Parent = Body
TpMe.Position = UDim2.new(0,10,0,130)
TpMe.Text = 'PLR > ME'
-- =====================================================================
local TpTo = God:Clone()
TpTo.Name = 'TpTo'
TpTo.Parent = Body
TpTo.Position = UDim2.new(0,155,0,130)
TpTo.Text = 'ME > PLR'
-- =====================================================================
local TpAllMe = God:Clone()
TpAllMe.Name = 'TpAllMe'
TpAllMe.Parent = Body
TpAllMe.Position = UDim2.new(0,155,0,90)
TpAllMe.Text = 'TPALL > ME'
-- =====================================================================
local GiveBadges = God:Clone()
GiveBadges.Name = 'GiveBadges'
GiveBadges.Parent = Body
GiveBadges.Position = UDim2.new(0,300,0,50)
GiveBadges.Text = 'GiveBadges'
-- =====================================================================
local FALKIT = God:Clone()
FALKIT.Name = 'SpawnFal'
FALKIT.Parent = Body
FALKIT.Position = UDim2.new(0,300,0,90)
FALKIT.Text = 'Fal Kit'
-- =====================================================================
local G36K = God:Clone()
G36K.Name = 'SpawnG36k'
G36K.Parent = Body
G36K.Position = UDim2.new(0,300,0,130)
G36K.Text = 'G36k Kit'

local HungerThirst = God:Clone()
HungerThirst.Name = 'HT'
HungerThirst.Parent = Body
HungerThirst.Position = UDim2.new(0,300,0,170)
HungerThirst.Text = 'HungerThirst'

local CarGod = God:Clone()
CarGod.Name = 'CarGod'
CarGod.Parent = Body
CarGod.Position = UDim2.new(0,10,0,170)
CarGod.Text = 'Car God'

local CarSpeed = God:Clone()
CarSpeed.Name = 'CarSpeed'
CarSpeed.Parent = Body
CarSpeed.Position = UDim2.new(0,155,0,170)
CarSpeed.Text = 'Car Speed'
-- *********************************************************************
God.MouseButton1Down:connect(function()
Player = game.Workspace:FindFirstChild(PlayerName.Text)
while wait() do
game.Lighting.Remote.AddHealth:FireServer(Player.Humanoid, 420699001)
end
end)
-- =====================================================================
KillAll.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == game.Players.LocalPlayer.Name then
print('nope')
else
getPlayer = game.Workspace:FindFirstChild(v.Name)
wait(.01)
game.Lighting.Remote.AddHealth:FireServer(getPlayer.Humanoid, -420699001)
end
end
end)
-- =====================================================================
KillPlr.MouseButton1Down:connect(function()
gitPlayer = game.Workspace:FindFirstChild(PlayerName.Text)
game.Lighting.Remote.AddHealth:FireServer(gitPlayer.Humanoid, -420699001)
end)
-- =====================================================================
TpMe.MouseButton1Down:connect(function()
gitPlayer = PlayerName.Text
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), gitPlayer)
end)
-- =====================================================================
TpTo.MouseButton1Down:connect(function()
gitPlayer = PlayerName.Text
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("Me To", math.floor(tick() % 1 * 100000), gitPlayer)
end)
-- =====================================================================
TpAllMe.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
wait(.01)
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), v.Name)
else
print('there are no players in the server!')
end
end
end)
-- =====================================================================
GiveBadges.MouseButton1Down:connect(function()
game.Players.LocalPlayer.playerstats.PlayerKill.Defensive.Value = 75
game.Players.LocalPlayer.playerstats.ZombieKill.Military.Value = 751
game.Players.LocalPlayer.playerstats.Days.Value = 30
end)
-- =====================================================================
FALKIT.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1029)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot4, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot5, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot6, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot7, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot8, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot9, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot10, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot11, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
end)
-- =====================================================================
G36K.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1023)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 9009)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot4, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot5, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot6, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot7, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot8, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot9, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot10, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot11, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
end)

HungerThirst.MouseButton1Down:connect(function()
game.Players.LocalPlayer.playerstats.Hunger.Value = 1000
   wait(1)
   game.Players.LocalPlayer.playerstats.Thirst.Value = 1000
end)

CarGod.MouseButton1Down:connect(function()
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
   if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Engine.Value = 420699001
v.Stats.Tank.Value = 420699001
v.Stats.Hull.Value = 420699001
v.Stats.Armor.Value = 420699001
v.Stats.Fuel.Value = 420
end
end
end
end)

CarSpeed.MouseButton1Down:connect(function()
local MaxSpeed = 200
for i,v in pairs(workspace.Vehicles:GetChildren()) do
if v.Name ~= 'VehicleWreck' then
v.Stats.MaxSpeed.Value = MaxSpeed
v.Stats.MaxSpeed.Offroad.Value = MaxSpeed
end
end
end)

Close.MouseButton1Down:connect(function()
if Body.Visible == true then
Body.Visible = false
Close.Text = '+'
Title.FontSize = 'Size24'
Pull.Size = UDim2(0,125,0,12.5)
elseif Body.Visible == false then
Body.Visible = true
Close.Text = 'X'
Title.FontSize = 'Size48'
Graf_f.Size = UDim2(0,500,0,50)
end
end)