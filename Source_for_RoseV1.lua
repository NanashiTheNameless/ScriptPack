-- Made by Mattoblocks Edited by BrendanP
-- love, cancer 
iPlayer = game.Players.LocalPlayer.Name
local Gui = Instance.new('ScreenGui', game.Players[iPlayer].PlayerGui)
Gui.Name = 'Rose'
local Pull = Instance.new('Frame', Gui)
Pull.Name = 'Grab'
Pull.Active = true
Pull.BackgroundColor3 = Color3.new(124/255,4/255,4/255)
Pull.BackgroundTransparency = 0
Pull.BorderSizePixel = 0
Pull.Position = UDim2.new(0.5,-318,0.5,-92)
Pull.Size = UDim2.new(0,445,0,55)
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
Body.BackgroundColor3 = Color3.new(139/255,0/225,0/225)
Body.BackgroundTransparency = 0.3
Body.BorderSizePixel = 0
Body.Position = UDim2.new(0,0,0,52)
Body.Size = UDim2.new(0,445,0,380)
-- =====================================================================
local Title = Instance.new('TextLabel', Pull)
Title.Name = 'Title'
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0,5,2,-112)
Title.Size = UDim2.new(0,200,1,0)
Title.Font = 'SourceSansLight'
Title.FontSize = 'Size48'
Title.Text = "Rose V1"
Title.TextColor3 = Color3.new(255,255,255)
Title.TextStrokeColor3 = Color3.new(74/255,74/255,74/255)
Title.TextStrokeTransparency = 0
-- =====================================================================
local PlayerName = Instance.new('TextBox', Body)
PlayerName.Name = 'PlayerName'
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0,240,0,-40)
PlayerName.Size = UDim2.new(0,180,0,30)
PlayerName.Font = 'SourceSans'
PlayerName.FontSize = 'Size18'
PlayerName.Text = 'PLAYERNAME'
PlayerName.BackgroundColor3 = Color3.new(255,255,255)
PlayerName.TextColor3 = Color3.new(0,0,0)
PlayerName.TextWrapped = true
-- =====================================================================
local ServMsg = Instance.new('TextBox', Body)
ServMsg.Name = 'ServerMessage'
ServMsg.BorderSizePixel = 0
ServMsg.Position = UDim2.new(0,210,0,340)
ServMsg.Size = UDim2.new(0,220,0,30)
ServMsg.Font = 'SourceSans'
ServMsg.FontSize = 'Size18'
ServMsg.Text = 'Message'
ServMsg.BackgroundColor3 = Color3.new(255,255,255)
ServMsg.TextColor3 = Color3.new(0,0,0)
ServMsg.TextWrapped = true
-- =====================================================================
local Credits = Instance.new('TextLabel', Body)
Credits.BackgroundTransparency = 1
Credits.Text = 'Made by CiniMadness edited by BrendanP'
Credits.Position = UDim2.new(0,0,0,18)
Credits.Size = UDim2.new(1,0,0,20)
Credits.TextColor3 = Color3.new(255,255,200)
Credits.FontSize = 'Size18'
Credits.Font = 'Arial'
-- =====================================================================
local God = Instance.new('TextButton', Body)
God.Name = 'God'
God.BackgroundColor3 = Color3.new(139/255, 0/255, 0/255)
God.BorderColor3 = Color3.new(139/255, 0/255, 0/255)
God.BackgroundTransparency = 0
God.BorderSizePixel = 2
God.Position = UDim2.new(0,10,0,130)
God.Style = Enum.ButtonStyle.RobloxRoundButton
God.Size = UDim2.new(0,135,0,38)
God.Font = 'SourceSansBold'
God.FontSize = 'Size28'
God.Text = 'GOD'
God.TextColor3 = Color3.new(255,255,255)
God.TextWrapped = true
God.BorderColor3 = Color3.new(97/255,97/255,97/255)
God.TextStrokeTransparency = 0.8
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
KillPlr.Position = UDim2.new(0,10,0,50)
KillPlr.Text = 'KILL'
-- =====================================================================
local TpMe = God:Clone()
TpMe.Name = 'TpMe'
TpMe.Parent = Body              
TpMe.Position = UDim2.new(0,155,0,170) 
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
TpAllMe.Position = UDim2.new(0,155,0,210)
TpAllMe.Text = 'TPALL'
-- =====================================================================
local GiveBadges = God:Clone()
GiveBadges.Name = 'GiveBadges'
GiveBadges.Parent = Body
GiveBadges.Position = UDim2.new(0,155,0,50) 
GiveBadges.Text = 'GiveBadges'
-- =====================================================================
local KKIT = God:Clone()
KKIT.Name = 'SpawnKKit'
KKIT.Parent = Body
KKIT.Position = UDim2.new(0,300,0,90)
KKIT.Text = 'MK17 Kit'
-- =====================================================================
local OTS = God:Clone()
OTS.Name = 'SpawnBKit'
OTS.Parent = Body
OTS.Position = UDim2.new(0,300,0,130)
OTS.Text = 'OTs14 Kit'
-- =====================================================================
local MK48 = God:Clone()
MK48.Name = 'SpawnMK48'
MK48.Parent = Body
MK48.Position = UDim2.new(0,300,0,170)
MK48.Text = 'MK48 Kit'
-- =====================================================================
local MP5KIT = God:Clone()
MP5KIT.Name = 'SpawnMp5'
MP5KIT.Parent = Body
MP5KIT.Position = UDim2.new(0,300,0,50)
MP5KIT.Text = 'MP5 Kit'
-- =====================================================================
local AK12KIT = God:Clone()
AK12KIT.Name = 'SpawnAK12'
AK12KIT.Parent = Body
AK12KIT.Position = UDim2.new(0,300,0,210)
AK12KIT.Text = 'AK12 Kit'
-- =====================================================================
local msgbr = Instance.new('TextButton', Body)
msgbr.Name = 'MsgButtonRed'
msgbr.BackgroundColor3 = Color3.new(173/255,29/255,29/255)
msgbr.BorderColor3 = Color3.new(100/255, 6/255, 6/255)
msgbr.BackgroundTransparency = 0
msgbr.BorderSizePixel = 0
msgbr.Position = UDim2.new(0,10,0,336)
msgbr.Size = UDim2.new(0,45,0,35)
msgbr.Font = 'SourceSansBold'
msgbr.FontSize = 'Size18'
msgbr.Text = 'Red'
msgbr.TextColor3 = Color3.new(255,255,255)
msgbr.TextWrapped = true
msgbr.BorderColor3 = Color3.new(97/255,97/255,97/255)
msgbr.TextStrokeTransparency = 0
-- =====================================================================
local msgby = Instance.new('TextButton', Body)
msgby.Name = 'MsgButtonYellow'
msgby.BackgroundColor3 = Color3.new(238/255,244/255,48/255)
msgby.BorderColor3 = Color3.new(100/255, 6/255, 6/255)
msgby.BackgroundTransparency = 0
msgby.BorderSizePixel = 0
msgby.Position = UDim2.new(0,60,0,336)
msgby.Size = UDim2.new(0,45,0,35)
msgby.Font = 'SourceSansBold'
msgby.FontSize = 'Size18'
msgby.Text = 'Yellow'
msgby.TextColor3 = Color3.new(255,255,255)
msgby.TextWrapped = true
msgby.BorderColor3 = Color3.new(97/255,97/255,97/255)
msgby.TextStrokeTransparency = 0
-- =====================================================================
local msgbg = Instance.new('TextButton', Body)
msgbg.Name = 'MsgButtonGreen'
msgbg.BackgroundColor3 = Color3.new(84/255,181/255,66/255)
msgbg.BorderColor3 = Color3.new(100/255, 6/255, 6/255)
msgbg.BackgroundTransparency = 0
msgbg.BorderSizePixel = 0
msgbg.Position = UDim2.new(0,110,0,336)
msgbg.Size = UDim2.new(0,45,0,35)
msgbg.Font = 'SourceSansBold'
msgbg.FontSize = 'Size18'
msgbg.Text = 'Green'
msgbg.TextColor3 = Color3.new(255,255,255)
msgbg.TextWrapped = true
msgbg.BorderColor3 = Color3.new(97/255,97/255,97/255)
msgbg.TextStrokeTransparency = 0
-- =====================================================================
local msgbb = Instance.new('TextButton', Body)
msgbb.Name = 'MsgButtonBlue'
msgbb.BackgroundColor3 = Color3.new(30/255,101/255,216/255)
msgbb.BorderColor3 = Color3.new(100/255, 6/255, 6/255)
msgbb.BackgroundTransparency = 0
msgbb.BorderSizePixel = 0
msgbb.Position = UDim2.new(0,160,0,336)
msgbb.Size = UDim2.new(0,45,0,35)
msgbb.Font = 'SourceSansBold'
msgbb.FontSize = 'Size18'
msgbb.Text = 'Blue'
msgbb.TextColor3 = Color3.new(255,255,255)
msgbb.TextWrapped = true
msgbb.BorderColor3 = Color3.new(97/255,97/255,97/255)
msgbb.TextStrokeTransparency = 0
-- =====================================================================
local BaseSet = God:Clone()
BaseSet.Name = 'BaseSet'
BaseSet.Parent = Body
BaseSet.Position = UDim2.new(0,300,0,250)
BaseSet.Text = 'BaseSet'
-- =====================================================================
local FOODDRINK = God:Clone()
FOODDRINK.Name = 'FoodDrink'
FOODDRINK.Parent = Body
FOODDRINK.Position = UDim2.new(0,10,0,250)
FOODDRINK.Text = 'Food Kit'
-- =====================================================================
local ZolarKethSet = God:Clone()
ZolarKethSet.Name = 'ZolarKethSet'
ZolarKethSet.Parent = Body
ZolarKethSet.Position = UDim2.new(0,155,0,250)
ZolarKethSet.Text = 'ZolarKethSet'
-- =====================================================================
local GusSet = God:Clone()
GusSet.Name = 'GusSet'
GusSet.Parent = Body
GusSet.Position = UDim2.new(0,155,0,290)
GusSet.Text = 'GusSet'
-- =====================================================================
local HungerThirst = God:Clone()
HungerThirst.Name = 'HT'
HungerThirst.Parent = Body
HungerThirst.Position = UDim2.new(0,155,0,90)
HungerThirst.Text = 'HungerThirst'

local CarGod = God:Clone()
CarGod.Name = 'CarGod'
CarGod.Parent = Body
CarGod.Position = UDim2.new(0,10,0,170)
CarGod.Text = 'Car God'

local CarSpeed = God:Clone()
CarSpeed.Name = 'CarSpeed'
CarSpeed.Parent = Body
CarSpeed.Position = UDim2.new(0,10,0,210)
CarSpeed.Text = 'Car Speed'
-- =====================================================================
local DMRKIT = God:Clone()
DMRKIT.Name = 'SpawnM14'
DMRKIT.Parent = Body
DMRKIT.Position = UDim2.new(0,10,0,290)
DMRKIT.Text = 'M14 Kit'
-- =====================================================================
local G36KKIT = God:Clone()
G36KKIT.Name = 'SpawnG36K'
G36KKIT.Parent = Body
G36KKIT.Position = UDim2.new(0,300,0,290)
G36KKIT.Text = 'G36K Kit'
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
KKIT.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1031)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.sight, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.silencer, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.under, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotsecondary, 2015)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.silencer, 9007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.sight, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 64)
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
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot1, 3014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot2, 3001)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot3, 3002)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot4, 3003)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot5, 3004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot6, 3006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot7, 3007)
wait(.1)
print("stuff spawned")
end)
-- =====================================================================
OTS.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1036)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.sight, 9014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.silencer, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotsecondary, 2016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.silencer, 9007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot4, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot5, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot6, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot7, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot8, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot9, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot10, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot11, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot1, 3014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot2, 3001)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot3, 3002)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot4, 3003)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot5, 3004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot6, 3006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot7, 3007)
wait(.1)
print("stuff spawned")
end)
-- ====================================================================
MK48.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.sight, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.under, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotsecondary, 2011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.silencer, 9007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.under, 9006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot4, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot5, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot6, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot7, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot8, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot9, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot10, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot11, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot1, 3014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot2, 3001)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot3, 3002)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot4, 3003)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot5, 3004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot6, 3006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot7, 3007)
wait(.1)
print("stuff spawned")
end)
-- ====================================================================
DMRKIT.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.sight, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.silencer, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.under, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotsecondary, 2017)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.silencer, 9008)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 64)
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
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 26)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 26)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 26)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 26)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 26)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 26)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 26)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot1, 3014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot2, 3001)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot3, 3002)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot4, 3003)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot5, 3004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot6, 3006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot7, 3007)
wait(.1)
print("stuff spawned")
end)
-- =====================================================================
G36KKIT.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1023)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.sight, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.silencer, 9009)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.under, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotsecondary, 2011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.silencer, 9007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.under, 9006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 53)
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
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot1, 3014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot2, 3001)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot3, 3002)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot4, 3003)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot5, 3004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot6, 3006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot7, 3007)
wait(.1)
print("stuff spawned")
end)
-- =====================================================================
MP5KIT.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1012)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.sight, 9004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.silencer, 9007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.under, 9006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotsecondary, 2004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.silencer, 9007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.under, 9012)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot4, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot5, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot6, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot7, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot8, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot9, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot10, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot11, 29)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 55)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5009)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6009)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot1, 3014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot2, 3001)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot3, 3002)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot4, 3003)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot5, 3004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot6, 3006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot7, 3007)
wait(.1)
print("stuff spawned")
end)
-- ====================================================================
AK12KIT.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1035)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.silencer, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.sight, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.primary.under, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotsecondary, 2014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.silencer, 9007)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.attachments.secondary.sight, 9013)
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
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 57)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot1, 3014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot2, 3001)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot3, 3002)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot4, 3003)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot5, 3004)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot6, 3006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot7, 3007)
wait(.1)
print("stuff spawned")
end)
-- ====================================================================
msgbg.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'Green', tostring(ServMsg.Text)) end 
end)
-- ====================================================================
msgby.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'Yellow', tostring(ServMsg.Text)) end 
end)
-- ====================================================================
msgbr.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'Red', tostring(ServMsg.Text)) end 
end)
-- ====================================================================
msgbb.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'Blue', tostring(ServMsg.Text)) end 
end)
-- ====================================================================
FOODDRINK.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot4, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot5, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot6, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot7, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot8, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot9, 10)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot10, 209)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot11, 209)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot12, 209)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot13, 209)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot14, 209)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot15, 209)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 209)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 209)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
end)
-- ====================================================================
BaseSet.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 35)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 35)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 35)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 35)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 32)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot16, 32)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot17, 37)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot18, 37)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 37)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.utilityslots.slot7, 3004)
wait(.1)
print("stuff spawned")
end)
-- ====================================================================
ZolarKethSet.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5011)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6011)
wait(.1)
print("stuff spawned")
end)
-- ====================================================================
GusSet.MouseButton1Down:connect(function()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot19, 5010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot20, 6010)
wait(.1)
print("stuff spawned")
end)
-- ====================================================================
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
local MaxSpeed = 300
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
Title.FontSize = 'Size48'
Pull.Size = UDim2(0,125,0,12.5)
elseif Body.Visible == false then
Body.Visible = true
Close.Text = 'X'
Title.FontSize = 'Size48'
Graf_f.Size = UDim2(0,500,0,50)
end
end)