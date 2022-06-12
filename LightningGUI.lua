Player = game.Players.LocalPlayer.Name

local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://530637073'
s:Play()

local passdebounce = false
local intro = Instance.new ("ScreenGui", game.CoreGui)
local f = Instance.new ("Frame", intro)
f.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
f.BackgroundTransparency = 0.2
f.BorderColor3 = Color3.new(0/255,0/255,255/255)
f.BorderSizePixel = 3
f.Position = UDim2.new(0,540,0,250)
f.Size = UDim2.new(0,200,0,200)
f.Style = "Custom"

t = Instance.new ("ImageLabel", f)
t.BackgroundTransparency = 1
t.Image = "rbxassetid://508800483"
t.Size = UDim2.new (0, 150, 0, 150)
t.Position = UDim2.new(0, 25, 0, 25)
t.ImageTransparency = 1
wait()

t.ImageTransparency = 0.9
t.Size = UDim2.new (0, 20, 0, 20)
t.Position = UDim2.new(0, 90, 0, 90)
wait()
t.ImageTransparency = 0.9
t.Size = UDim2.new (0, 40, 0, 40)
t.Position = UDim2.new(0, 80, 0, 80)
wait()
t.ImageTransparency = 0.8
t.Size = UDim2.new (0, 60, 0, 60)
t.Position = UDim2.new(0, 70, 0, 70)
wait()
t.ImageTransparency = 0.7
t.Size = UDim2.new (0, 80, 0, 80)
t.Position = UDim2.new(0, 60, 0, 60)
wait()
t.ImageTransparency = 0.6
t.Size = UDim2.new (0, 100, 0, 100)
t.Position = UDim2.new(0, 50, 0, 50)
wait()
t.ImageTransparency = 0.5
t.Size = UDim2.new (0, 120, 0, 120)
t.Position = UDim2.new(0, 40, 0, 40)
wait()
t.ImageTransparency = 0.5
t.Size = UDim2.new (0, 140, 0, 140)
t.Position = UDim2.new(0, 30, 0, 30)
wait()
t.ImageTransparency = 0.4
t.Size = UDim2.new (0, 160, 0, 160)
t.Position = UDim2.new(0, 20, 0, 20)
wait()
t.ImageTransparency = 0.3
t.Size = UDim2.new (0, 180, 0, 180)
t.Position = UDim2.new(0, 10, 0, 10)
wait()
t.ImageTransparency = 0.2
t.Size = UDim2.new (0, 200, 0, 200)
t.Position = UDim2.new(0, 0, 0, 0)
wait()
t.ImageTransparency = 0.1
t.Size = UDim2.new (0, 220, 0, 220)
t.Position = UDim2.new(0, -10, 0, -10)
wait()
t.ImageTransparency = 0
t.Size = UDim2.new (0, 200, 0, 200)
t.Position = UDim2.new(0, 0, 0, 0)
wait()
t.ImageTransparency = 0
t.Size = UDim2.new (0, 180, 0, 180)
t.Position = UDim2.new(0, 10, 0, 10)
wait(0.5)
b = Instance.new ("TextButton", f)
b.Size = UDim2.new(0,200,0,50)
b.Position = UDim2.new(0,0,0,155)
b.BorderSizePixel = 0
b.BackgroundTransparency = 1
b.Text = "Created by Strazos"
b.Font = "SciFi"
b.FontSize = "Size24"
b.TextColor3 = Color3.new (255, 255, 255)
b.TextTransparency = 1
wait()
b.TextTransparency = 0.9
wait()
b.TextTransparency = 0.8
wait()
b.TextTransparency = 0.7
wait()
b.TextTransparency = 0.6
wait()
b.TextTransparency = 0.5
wait()
b.TextTransparency = 0.4
wait()
b.TextTransparency = 0.3
wait()
b.TextTransparency = 0.2
wait()
b.TextTransparency = 0.1
wait()
b.TextTransparency = 0
wait(1.5)

b.TextTransparency = 0.1
f.BackgroundTransparency = 0.1
t.ImageTransparency = 0.1
wait()
b.TextTransparency = 0.2
f.BackgroundTransparency = 0.2
t.ImageTransparency = 0.2
wait()
b.TextTransparency = 0.3
f.BackgroundTransparency = 0.3
t.ImageTransparency = 0.3
wait()
b.TextTransparency = 0.4
f.BackgroundTransparency = 0.4
t.ImageTransparency = 0.4
wait()
b.TextTransparency = 0.5
f.BackgroundTransparency = 0.5
t.ImageTransparency = 0.5
wait()
b.TextTransparency = 0.6
f.BackgroundTransparency = 0.6
t.ImageTransparency = 0.6
wait()
b.TextTransparency = 0.7
f.BackgroundTransparency = 0.7
t.ImageTransparency = 0.7
wait()
b.TextTransparency = 0.8
f.BackgroundTransparency = 0.8
t.ImageTransparency = 0.8
wait()
b.TextTransparency = 0.9
f.BackgroundTransparency = 0.9
t.ImageTransparency = 0.9
wait()
b.TextTransparency = 1
f.BackgroundTransparency = 1
t.ImageTransparency = 1
wait()

intro:Remove()
passdebounce = true
s:Stop()

while passdebounce ~= true do
	wait()
	end

Player = game.Players.LocalPlayer.Name
local Gui = Instance.new('ScreenGui', game.CoreGui)
Gui.Name = 'LightningGui'
local Pull = Instance.new('Frame', Gui)
Pull.Name = 'Grab'
Pull.Active = true
Pull.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
Pull.BackgroundTransparency = 0.5
Pull.BorderSizePixel = 0
Pull.Position = UDim2.new(0.5,-318,0.5,-92)
Pull.Size = UDim2.new(0,590,0,50)
Pull.Draggable = true
Pull.Style = "Custom"
-- =====================================================================
local Close = Instance.new('TextButton', Pull)
Close.Name = 'Close'
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(1,-23,0,1)
Close.Size = UDim2.new(0,22,0,22)
Close.Font = 'SourceSans'
Close.FontSize = 'Size24'
Close.TextColor3 = Color3.new(255,255,0)
Close.Text = 'O'
Close.TextStrokeTransparency = 0.8
-- =====================================================================
local Close2 = Instance.new('TextButton', Pull)
Close2.Name = 'Close'
Close2.BackgroundTransparency = 1
Close2.Position = UDim2.new(1,-22,0,22)
Close2.Size = UDim2.new(0,22,0,22)
Close2.Font = 'SourceSans'
Close2.FontSize = 'Size18'
Close2.TextColor3 = Color3.new(255,0,0)
Close2.Text = 'X'
Close2.TextStrokeTransparency = 0.9
-- =====================================================================
local Body = Instance.new('Frame', Pull)
Body.Name = 'Body'
Body.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
Body.BackgroundTransparency = 0.5
Body.BorderSizePixel = 0
Body.Position = UDim2.new(0,0,0,52)
Body.Size = UDim2.new(0,590,0,250)
-- =====================================================================
local scroll = Instance.new('ScrollingFrame', Pull)
scroll.Name = 'scroll'
scroll.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
scroll.BackgroundTransparency = 0.5
scroll.BorderSizePixel = 0
scroll.Position = UDim2.new(0,0,0,52)
scroll.Size = UDim2.new(0,590,0,250)
scroll.CanvasSize = UDim2.new(0, 0, 10, 0)
-- =====================================================================
local Title = Instance.new('TextLabel', Pull)
Title.Name = 'Title'
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0,20,0,0)
Title.Size = UDim2.new(0,200,1,0)
Title.Font = 'SourceSansLight'
Title.FontSize = 'Size48'
Title.Text = "Lightning GUI"
Title.TextColor3 = Color3.new(255,255,0)
Title.TextStrokeColor3 = Color3.new(74/255,74/255,74/255)
Title.TextStrokeTransparency = 0
-- =====================================================================
local Image = Instance.new('ImageLabel', Body)
Image.Name = 'Image'
Image.Size = UDim2.new (0, 590,0, 250)
Image.BorderSizePixel = 0
Image.Image = 'rbxassetid://503785894'
-- =====================================================================
local PlayerName = Instance.new('TextBox',  Body)
PlayerName.Name = 'PlayerName'
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0,240,0,-40)
PlayerName.Size = UDim2.new(0,180,0,30)
PlayerName.Font = 'SourceSans'
PlayerName.FontSize = 'Size18'
PlayerName.Text = '[Player Name]'
PlayerName.BackgroundColor3 = Color3.new(255,255,255)
PlayerName.TextColor3 = Color3.new(0,0,0)
PlayerName.TextWrapped = true
-- =====================================================================
local Message = Instance.new('TextBox', Body)
Message.Name = 'Message'
Message.BorderSizePixel = 0
Message.Position = UDim2.new(0,420,0,-40)
Message.Size = UDim2.new(0,150,0,30)
Message.Font = 'SourceSans'
Message.FontSize = 'Size18'
Message.Text = '[Message]'
Message.BackgroundColor3 = Color3.new(255,255,255)
Message.TextColor3 = Color3.new(0,0,0)
Message.TextWrapped = true
-- =====================================================================
local Credits = Instance.new('TextLabel', scroll)
Credits.BackgroundTransparency = 1
Credits.Position = UDim2.new(0,-40,0,15)
Credits.Size = UDim2.new(1,0,0,20)
Credits.TextColor3 = Color3.new(255,255,0)
Credits.FontSize = 'Size24'
Credits.Font = 'SourceSansItalic'
Credits.Text = 'Welcome to Lightning GUI,'

plyr = game.Players.LocalPlayer.Name
local Credits2 = Instance.new('TextLabel', scroll)
Credits2.BackgroundTransparency = 1
Credits2.Position = UDim2.new(0,106,0,15)
Credits2.Size = UDim2.new(1,0,0,20)
Credits2.TextColor3 = Color3.new(255,255,0)
Credits2.FontSize = 'Size24'
Credits2.Font = 'SourceSansItalic'
Credits2.Text = tostring(plyr)


if plyr == "Devoxus" then
Credits2.TextColor3 = Color3.new(0,255,255)
elseif plyr == "Strazos" then
Credits2.TextColor3 = Color3.new(0,255,255)
elseif plyr == "NRedxk" then
Credits2.TextColor3 = Color3.new(0,255,255)
end

wait(1.2)
Credits.TextTransparency = 0.1
Credits2.TextTransparency = 0.1
wait(0.1)
Credits.TextTransparency = 0.2
Credits2.TextTransparency = 0.2
wait(0.1)
Credits.TextTransparency = 0.3
Credits2.TextTransparency = 0.3
wait(0.1)
Credits.TextTransparency = 0.4
Credits2.TextTransparency = 0.4
wait(0.1)
Credits.TextTransparency = 0.5
Credits2.TextTransparency = 0.5
wait(0.1)
Credits.TextTransparency = 0.6
Credits2.TextTransparency = 0.6
wait(0.1)
Credits.TextTransparency = 0.7
Credits2.TextTransparency = 0.7
wait(0.1)
Credits.TextTransparency = 0.8
Credits2.TextTransparency = 0.8
wait(0.1)
Credits.TextTransparency = 0.9
Credits2.TextTransparency = 0.9
wait(0.1)
Credits.TextTransparency = 1
Credits2.TextTransparency = 1
Credits.Position = UDim2.new(0,0,0,15)
Credits.Text = 'Created by Strazos'
-- =====================================================================
local God = Instance.new('TextButton', scroll)
God.Name = 'God'
God.BackgroundColor3 = Color3.new(0,0/255,0/255)
God.BackgroundTransparency = 0.3
God.BorderSizePixel = 2
God.Position = UDim2.new(0,20,0,130)
God.Size = UDim2.new(0,120,0,25)
God.Font = 'SourceSansBold'
God.FontSize = 'Size28'
God.Text = 'God Plr'
God.TextColor3 = Color3.new(255,255,0)
God.TextWrapped = true
God.BorderColor3 = Color3.new(140/255,140/255,0/255)
God.TextTransparency = 0.3
God.ZIndex = 2
-- =====================================================================
local car = Instance.new('TextButton', scroll)
car.Name = 'Car TP'
car.BackgroundColor3 = Color3.new(0/255,0/255,0)
car.BackgroundTransparency = 0.3
car.BorderSizePixel = 2
car.Position = UDim2.new(0,20,0,290)
car.Size = UDim2.new(0,120,0,25)
car.Font = 'SourceSansBold'
car.FontSize = 'Size28'
car.Text = 'TP Car'
car.TextColor3 = Color3.new(255,255,0)
car.TextWrapped = true
car.BorderColor3 = Color3.new(140/255,140/255,0/255)
car.TextTransparency = 0.3
car.ZIndex = 2
-- =====================================================================
local zomb = car:Clone()
zomb.Name = 'killzombies'
zomb.Parent = scroll
zomb.Position = UDim2.new(0,450,0,370)
zomb.Text = 'Kill Zombs'
-- =====================================================================
local stam = car:Clone()
stam.Name = 'stamina'
stam.Parent = scroll
stam.Position = UDim2.new(0,315,0,370)
stam.Text = 'InfStamina'
-- =====================================================================
local devon = car:Clone()
devon.Name = 'devon'
devon.Parent = scroll
devon.Position = UDim2.new(0,315,0,410)
devon.Text = 'DevConON'
devon.Visible = false
-- =====================================================================
local devoff = car:Clone()
devoff.Name = 'devoff'
devoff.Parent = scroll
devoff.Position = UDim2.new(0,315,0,410)
devoff.Text = 'DevConOFF'
devoff.Visible = true
-- =====================================================================
local horn = car:Clone()
horn.Name = 'carhorn'
horn.Parent = scroll
horn.Position = UDim2.new(0,20,0,410)
horn.Text = 'HornSound'
-- =====================================================================
local nograv = car:Clone()
nograv.Name = 'nograv'
nograv.Parent = scroll
nograv.Position = UDim2.new(0,155,0,370)
nograv.Text = 'NoGravON'
nograv.Visible = false
-- =====================================================================
local grav = car:Clone()
grav.Name = 'grav'
grav.Parent = scroll
grav.Position = UDim2.new(0,155,0,370)
grav.Text = 'NoGravOFF'
grav.Visible = true
-- =====================================================================
local nv = car:Clone()
nv.Name = 'nv'
nv.Parent = scroll
nv.Position = UDim2.new(0,20,0,370)
nv.Text = 'NightV ON'
nv.Visible = false
-- =====================================================================
local nonv = car:Clone()
nonv.Name = 'nonv'
nonv.Parent = scroll
nonv.Position = UDim2.new(0,20,0,370)
nonv.Text = 'NightV OFF'
nonv.Visible = true
-- =====================================================================
local cratetp = car:Clone()
cratetp.Name = 'cratetp'
cratetp.Parent = scroll
cratetp.Position = UDim2.new(0,20,0,330)
cratetp.Text = 'Crate TP'
-- =====================================================================
local delmap = car:Clone()
delmap.Name = 'deletemap'
delmap.Parent = scroll
delmap.Position = UDim2.new(0,155,0,330)
delmap.Text = 'Delete Map'
-- =====================================================================
local spectate = car:Clone()
spectate.Name = 'spectate'
spectate.Parent = scroll
spectate.Position = UDim2.new(0,450,0,250)
spectate.Text = 'Spectate'
-- =====================================================================
local spawnitem = car:Clone()
spawnitem.Name = 'spawnitems'
spawnitem.Parent = scroll
spawnitem.Position = UDim2.new(0,315,0,290)
spawnitem.Text = 'SpawnItem'
-- =====================================================================
local spawnskin = car:Clone()
spawnskin.Name = 'spawnskin'
spawnskin.Parent = scroll
spawnskin.Position = UDim2.new(0,315,0,330)
spawnskin.Text = 'Get Skin'
-- =====================================================================
local slotnumber = Instance.new('TextBox', scroll)
slotnumber.Name = 'slotnumber'
slotnumber.BorderSizePixel = 0
slotnumber.Position = UDim2.new(0,450,0,330)
slotnumber.Size = UDim2.new(0,120,0,25)
slotnumber.Font = 'SourceSans'
slotnumber.FontSize = 'Size18'
slotnumber.Text = '[Skin Slot Num]'
slotnumber.BackgroundColor3 = Color3.new(255,255,255)
slotnumber.TextColor3 = Color3.new(0,0,0)
slotnumber.TextWrapped = true
-- =====================================================================
local color1 = Instance.new('TextBox', scroll)
color1.Name = 'color1'
color1.BorderSizePixel = 0
color1.Position = UDim2.new(0,315,0,370)
color1.Size = UDim2.new(0,120,0,25)
color1.Font = 'SourceSans'
color1.FontSize = 'Size18'
color1.Text = '[Color 1 Number]'
color1.BackgroundColor3 = Color3.new(255,255,255)
color1.TextColor3 = Color3.new(0,0,0)
color1.TextWrapped = true
-- =====================================================================
local color2 = Instance.new('TextBox', scroll)
color2.Name = 'color2'
color2.BorderSizePixel = 0
color2.Position = UDim2.new(0,450,0,370)
color2.Size = UDim2.new(0,120,0,25)
color2.Font = 'SourceSans'
color2.FontSize = 'Size18'
color2.Text = '[Color 2 Number]'
color2.BackgroundColor3 = Color3.new(255,255,255)
color2.TextColor3 = Color3.new(0,0,0)
color2.TextWrapped = true
-- =====================================================================
--nvfunction--
local Player = game.Players.LocalPlayer
function NightVision()
    local nvGUI = Instance.new('ScreenGui', Player.PlayerGui)
    nvGUI.Name = 'NightVision'
    local nvMAIN = Instance.new('TextLabel', nvGUI)
    nvMAIN.Name = 'MAIN'
    nvMAIN.BackgroundColor = BrickColor.new(0,1,0)
    nvMAIN.BackgroundTransparency = 0.75
    nvMAIN.BorderSizePixel = 0
    nvMAIN.Size = UDim2.new(1,0,1,0)
    nvMAIN.Text = ''

    for i,v in pairs(game.Players:GetChildren()) do
        if v and v.Character and not (v.Name == '' .. Player.Name) then
            for i,v in pairs(v.Character:GetChildren()) do
                if v:IsA('BasePart') then
                    local nvBox = Instance.new('SelectionBox', nvMAIN)
                    nvBox.Adornee = v
                    nvBox.Color = BrickColor.new('Lime green')
                end
            end
        end
    end
end
-- =====================================================================
local material1 = Instance.new('TextBox', scroll)
material1.Name = 'material1'
material1.BorderSizePixel = 0
material1.Position = UDim2.new(0,315,0,410)
material1.Size = UDim2.new(0,120,0,25)
material1.Font = 'SourceSans'
material1.FontSize = 'Size18'
material1.Text = '[Material 1 Num]'
material1.BackgroundColor3 = Color3.new(255,255,255)
material1.TextColor3 = Color3.new(0,0,0)
material1.TextWrapped = true
-- =====================================================================
local material2 = Instance.new('TextBox', scroll)
material2.Name = 'material2'
material2.BorderSizePixel = 0
material2.Position = UDim2.new(0,450,0,410)
material2.Size = UDim2.new(0,120,0,25)
material2.Font = 'SourceSans'
material2.FontSize = 'Size18'
material2.Text = '[Material 2 Num]'
material2.BackgroundColor3 = Color3.new(255,255,255)
material2.TextColor3 = Color3.new(0,0,0)
material2.TextWrapped = true
-- =====================================================================
--VISIBLITY

spawnskin.Visible = false
slotnumber.Visible = false
color1.Visible = false
color2.Visible = false
material1.Visible = false
material2.Visible = false
-- =====================================================================
local carname = Instance.new('TextBox', scroll)
carname.Name = 'carname'
carname.BorderSizePixel = 0
carname.Position = UDim2.new(0,155,0,290)
carname.Size = UDim2.new(0,120,0,25)
carname.Font = 'SourceSans'
carname.FontSize = 'Size18'
carname.Text = '[Car Name]'
carname.BackgroundColor3 = Color3.new(255,255,255)
carname.TextColor3 = Color3.new(0,0,0)
carname.TextWrapped = true
-- =====================================================================
local hornid = Instance.new('TextBox', scroll)
hornid.Name = 'hornid'
hornid.BorderSizePixel = 0
hornid.Position = UDim2.new(0,155,0,410)
hornid.Size = UDim2.new(0,120,0,25)
hornid.Font = 'SourceSans'
hornid.FontSize = 'Size18'
hornid.Text = '[Sound ID]'
hornid.BackgroundColor3 = Color3.new(255,255,255)
hornid.TextColor3 = Color3.new(0,0,0)
hornid.TextWrapped = true
-- =====================================================================
local carspeed = Instance.new('TextBox', scroll)
carspeed.Name = 'carspeed'
carspeed.BorderSizePixel = 0
carspeed.Position = UDim2.new(0,155,0,250)
carspeed.Size = UDim2.new(0,120,0,25)
carspeed.Font = 'SourceSans'
carspeed.FontSize = 'Size18'
carspeed.Text = '[Car Speed Num]'
carspeed.BackgroundColor3 = Color3.new(255,255,255)
carspeed.TextColor3 = Color3.new(0,0,0)
carspeed.TextWrapped = true
-- =====================================================================
local itemid = Instance.new('TextBox', scroll)
itemid.Name = 'itemid'
itemid.BorderSizePixel = 0
itemid.Position = UDim2.new(0,450,0,290)
itemid.Size = UDim2.new(0,120,0,25)
itemid.Font = 'SourceSans'
itemid.FontSize = 'Size18'
itemid.Text = '[Item ID]'
itemid.BackgroundColor3 = Color3.new(255,255,255)
itemid.TextColor3 = Color3.new(0,0,0)
itemid.TextWrapped = true
-- =====================================================================
local KillAll = God:Clone()
KillAll.Name = 'KillAll'
KillAll.Parent = scroll
KillAll.Position = UDim2.new(0,155,0,50)
KillAll.Text = 'Kill All'
-- =====================================================================
local KillPlr = God:Clone()
KillPlr.Name = 'KillPlr'
KillPlr.Parent = scroll
KillPlr.Position = UDim2.new(0,20,0,50)
KillPlr.Text = 'Kill'
-- =====================================================================
local loopkplr = God:Clone()
loopkplr.Name = 'loopkplr'
loopkplr.Parent = scroll
loopkplr.Position = UDim2.new(0,20,0,90)
loopkplr.Text = 'LoopK Plr'
-- =====================================================================
local loopkall = God:Clone()
loopkall.Name = 'loopkall'
loopkall.Parent = scroll
loopkall.Position = UDim2.new(0,155,0,90)
loopkall.Text = 'LoopK All'
-- =====================================================================
local creds = God:Clone()
creds.Name = 'creds'
creds.Parent = scroll
creds.Size = UDim2.new(0,25,0,25)
creds.Position = UDim2.new(0,282,0,60)
creds.Text = 'C '
-- =====================================================================
local blue = God:Clone()
blue.Name = 'creds'
blue.Parent = scroll
blue.Size = UDim2.new(0,25,0,25)
blue.Position = UDim2.new(0,282,0,105)
blue.Text = 'B '
blue.Visible = true
-- =====================================================================
local yellow = God:Clone()
yellow.Name = 'creds'
yellow.Parent = scroll
yellow.Size = UDim2.new(0,25,0,25)
yellow.Position = UDim2.new(0,282,0,105)
yellow.Text = 'Y '
yellow.Visible = false
-- =====================================================================
local Corpse = God:Clone()
Corpse.Name = 'CorpseTP'
Corpse.Parent = scroll
Corpse.Position = UDim2.new(0,315,0,50)
Corpse.Text = 'Corpse TP'
-- =====================================================================
local TpMe = God:Clone()
TpMe.Name = 'TpMe'
TpMe.Parent = scroll
TpMe.Position = UDim2.new(0,20,0,170)
TpMe.Text = 'Plr -> Me'
-- =====================================================================
local TpTo = God:Clone()
TpTo.Name = 'TpTo'
TpTo.Parent = scroll
TpTo.Position = UDim2.new(0,155,0,170)
TpTo.Text = 'Me -> Plr'
-- =====================================================================
local TpAllMe = God:Clone()
TpAllMe.Name = 'TpAllMe'
TpAllMe.Parent = scroll
TpAllMe.Position = UDim2.new(0,155,0,130)
TpAllMe.Text = 'TPAll -> Me'
-- =====================================================================
local GiveBadges = God:Clone()
GiveBadges.Name = 'GiveBadges'
GiveBadges.Parent = scroll
GiveBadges.Position = UDim2.new(0,315,0,330)
GiveBadges.Text = 'All Badges'
-- =====================================================================
local tpscary = God:Clone()
tpscary.Name = 'GiveBadges'
tpscary.Parent = scroll
tpscary.Position = UDim2.new(0,450,0,330)
tpscary.Text = 'TP Scary'
-- =====================================================================
local Noclip = God:Clone()
Noclip.Name = 'Noclip'
Noclip.Parent = scroll
Noclip.Position = UDim2.new(0,450,0,50)
Noclip.Text = 'Noclip'
-- =====================================================================
local NoFog = God:Clone()
NoFog.Name = 'No Fog'
NoFog.Parent = scroll
NoFog.Position = UDim2.new(0,450,0,170)
NoFog.Text = 'No Fog'
-- =====================================================================
local FALKIT = God:Clone()
FALKIT.Name = 'SpawnFal'
FALKIT.Parent = scroll
FALKIT.Position = UDim2.new(0,315,0,90)
FALKIT.Text = 'FAL Kit'
-- =====================================================================
local OTS = God:Clone()
OTS.Name = 'SpawnFal'
OTS.Parent = scroll
OTS.Position = UDim2.new(0,450,0,90)
OTS.Text = 'OTS Kit'
-- =====================================================================
local G36K = God:Clone()
G36K.Name = 'SpawnG36k'
G36K.Parent = scroll
G36K.Position = UDim2.new(0,315,0,130)
G36K.Text = 'G36k Kit'
-- =====================================================================
local MK48 = God:Clone()
MK48.Name = 'SpawnMK48'
MK48.Parent = scroll
MK48.Position = UDim2.new(0,450,0,130)
MK48.Text = 'MK48 Kit'
-- =====================================================================
local HungerThirst = God:Clone()
HungerThirst.Name = 'HT'
HungerThirst.Parent = scroll
HungerThirst.Position = UDim2.new(0,315,0,170)
HungerThirst.Text = 'Hung/Thir'
-- =====================================================================
local CarGod = God:Clone()
CarGod.Name = 'CarGod'
CarGod.Parent = scroll
CarGod.Position = UDim2.new(0,20,0,210)
CarGod.Text = 'Car God'
-- =====================================================================
local CarSpeed = God:Clone()
CarSpeed.Name = 'CarSpeed'
CarSpeed.Parent = scroll
CarSpeed.Position = UDim2.new(0,20,0,250)
CarSpeed.Text = 'Car Speed'
-- =====================================================================
local ItemESP = God:Clone()
ItemESP.Name = 'ItemESP'
ItemESP.Parent = scroll
ItemESP.Position = UDim2.new(0,450,0,210)
ItemESP.Text = 'Item ESP'
-- =====================================================================
local ESPF = God:Clone()
ESPF.Name = 'ESPF'
ESPF.Parent = scroll
ESPF.Position = UDim2.new(0,315,0,210)
ESPF.Text = 'PlrESP OFF'
ESPF.Visible = true
-- =====================================================================
local ESPT = God:Clone()
ESPT.Name = 'PlayerESP'
ESPT.Parent = scroll
ESPT.Position = UDim2.new(0,315,0,210)
ESPT.Text = 'PlrESP ON'
ESPT.Visible = false
-- =====================================================================
local aimbot = God:Clone()
aimbot.Name = 'aimbot'
aimbot.Parent = scroll
aimbot.Position = UDim2.new(0,315,0,250)
aimbot.Text = 'Aimbot'
-- =====================================================================
local Message2 = God:Clone()
Message2.Name = 'Message'
Message2.Parent = scroll
Message2.Position = UDim2.new(0,155,0,210)
Message2.Text = 'Message'
-- =====================================================================

--[[C.r.e.a.t.e.d b.y S.t.r.a.z.o.s]]--
-- *********************************************************************
God.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
Player = game.Workspace:FindFirstChild(PlayerName.Text)
while wait() do
game.Lighting.Remote.AddHealth:FireServer(Player.Humanoid, 420699001)
end
end)
-- =====================================================================
KillAll.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == game.Players.LocalPlayer.Name then
else
getPlayer = game.Workspace:FindFirstChild(v.Name)
wait(.01)
game.Lighting.Remote.AddHealth:FireServer(getPlayer.Humanoid, -420699001)
end
end
end)
-- =====================================================================
AddItem = function(Slot, ID)
game.Lighting.Remote.AddObject:FireServer(Slot, ID)
end
DropItem = function(Slot, oID)
game.Lighting.Remote.DropItem:FireServer(Slot, oID)
end

ObjectID = itemid.Text

spawnitem.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()

AddItem(game.Players.LocalPlayer.playerstats.slots.slot20, tonumber(itemid.Text))
game.Players.LocalPlayer.playerstats.slots.slot20:WaitForChild("ObjectID")
DropItem(game.Players.LocalPlayer.playerstats.slots.slot20, game.Players.LocalPlayer.playerstats.slots.slot20.ObjectID)
end)
-- =====================================================================
delmap.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()

local skrypt = getrenv()["_G"]

for i,v in pairs(game.Workspace["Anchored Objects"]:GetChildren()) do
skrypt.Destruct(v)
end
end)
-- =====================================================================
nonv.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
	nv.Visible = true
	nonv.Visible = false
	NightVision()
end)

nv.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
	nv.Visible = false
	nonv.Visible = true
	for i,v in pairs(Player.PlayerGui:GetChildren()) do
		if v.Name == 'NightVision' and v:IsA('ScreenGui') then
			v:Destroy()
		end
	end
end)

-- =====================================================================
local Player = game.Players.LocalPlayer

grav.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
	nograv.Visible = true
	grav.Visible = false
	for i,v in pairs(Player.Character.Torso:GetChildren()) do
		if v.Name == 'NoGrav' and v:IsA('BodyForce') then
			v:Destroy()
		end
	end
	local BF = Instance.new('BodyForce', Player.Character.Torso)
	BF.Name = 'NoGrav'
	BF.Force = Vector3.new(0,4000,0)
end)

nograv.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
	grav.Visible = true
	nograv.Visible = false
	for i,v in pairs(Player.Character.Torso:GetChildren()) do
		if v.Name == 'NoGrav' and v:IsA('BodyForce') then
			v:Destroy()
		end
	end
end)
-- =====================================================================
spawnskin.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()

local skincolorprimary = tonumber(color1.Text) 
local skinmaterialprimary = tonumber(material1.Text) 
local skincolorsecondary = tonumber(color2.Text)
local skinmaterialsecondary = tonumber(material2.Text)
local skinslot = tonumber(slotnumber.Text)
local daplayer = "Strazos"

local tbl = getrenv()["_G"]

tbl.ChangeValue(game.Players[daplayer].playerstats.skins[skinslot],skincolorprimary)
tbl.ChangeValue(game.Players[daplayer].playerstats.skins[skinslot].material,skinmaterialprimary)
tbl.ChangeValue(game.Players[daplayer].playerstats.skins[skinslot].secondary,skincolorsecondary)
tbl.ChangeValue(game.Players[daplayer].playerstats.skins[skinslot].secondary.material,skinmaterialsecondary)
wait(1)
c = game.Lighting.LootDrops.CrateLow:Clone()
c.Parent = game.Workspace
c:MoveTo(game.Players[daplayer].Character.Torso.Position)
end)
-- =====================================================================
KillPlr.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
gitPlayer = game.Workspace:FindFirstChild(PlayerName.Text)
game.Lighting.Remote.AddHealth:FireServer(gitPlayer.Humanoid, -420699001)
end)
-- =====================================================================
loopkplr.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
while true do
wait()
gitPlayer = game.Workspace[PlayerName.Text]
game.Lighting.Remote.AddHealth:FireServer(gitPlayer.Humanoid, -420699001)
wait()
end
end)
-- =====================================================================
loopkall.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
while true do
wait()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == game.Players.LocalPlayer.Name then
else
getPlayer = game.Workspace:FindFirstChild(v.Name)
wait(.01)
game.Lighting.Remote.AddHealth:FireServer(getPlayer.Humanoid, -420699001)
wait()
end
end
end
end)
-- =====================================================================
TpMe.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
gitPlayer = PlayerName.Text
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), gitPlayer)
end)
-- =====================================================================
TpTo.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
gitPlayer = PlayerName.Text
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("Me To", math.floor(tick() % 1 * 100000), gitPlayer)
end)
-- =====================================================================
TpAllMe.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
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
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
plyr = PlayerName.Text
game.Players[plyr].playerstats.PlayerKill.Defensive.Value = 75
game.Players[plyr].playerstats.ZombieKill.Military.Value = 751
game.Players[plyr].playerstats.Days.Value = 30
end)
-- =====================================================================
NoFog.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
game.Lighting.FogEnd = 99999999999
end)
-- =====================================================================
Noclip.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
 game:GetService('RunService').Stepped:connect(function()
  game.Workspace[game.Players.LocalPlayer.Name].Torso.CanCollide = Clip
  game.Workspace[game.Players.LocalPlayer.Name].Head.CanCollide = Clip
 end)
 game.Workspace[game.Players.LocalPlayer.Name].Torso.Changed:connect(function()
  game.Workspace[game.Players.LocalPlayer.Name].Torso.CanCollide = Clip
  game.Workspace[game.Players.LocalPlayer.Name].Head.CanCollide = Clip
 end)
end)
-- =====================================================================
FALKIT.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
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
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
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
-- =====================================================================
OTS.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1036)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 9009)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 9005)
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
MK48.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slotprimary, 1005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot2, 9009)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName.Text].playerstats.slots.slot3, 9005)
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
Corpse.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
for _, corpse in pairs(workspace:GetChildren()) do

if corpse.Name == "Corpse" then

corpse:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))

end

end

end)
-- =====================================================================
creds.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
Credits.Text = "Thanks to Skryptec/Merk/Others for some functions!"
wait(3)
Credits.Text = "Created by Strazos"
end)
-- =====================================================================
car.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
carid = game.Workspace.Vehicles:FindFirstChild(carname.Text)  
carid:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(math.random(-10,10),0,math.random( -10,10)))
end)
-- =====================================================================
cratetp.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
Player = PlayerName.Text
for _,v in pairs(workspace:children()) do
if v.Name == "LargeCrateOpen" or v.Name == "SmallCrateOpen" then
v:MoveTo(workspace[Player].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
end
end)
-- =====================================================================
tpscary.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()

pleyr = game.Players.LocalPlayer.Name
pz = game.Lighting.PatientZero
df = game.Lighting.DarkFigure

pz.Parent = Workspace
df.Parent = Workspace

pz:MoveTo(workspace[pleyr].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
df:MoveTo(workspace[pleyr].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))

end)
-- =====================================================================

Message2.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
    for i,v in pairs(game.Players:GetChildren())do
	local var = Instance.new("StringValue", UI)
	var.Value = "Yellow"
        game.Lighting.Remote.SendMessage:FireServer(v,tostring(var.Value),tostring(Message.Text))
    end
end)
-- =====================================================================
zomb.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
for _,pl in pairs(workspace.Zombies:children()) do
for xxad,v in pairs(pl:children()) do
pcall(function() game.Lighting.Remote.DamageZombie:FireServer(v.Humanoid,100) end)
end
end
end)
-- =====================================================================
local Stamina = true

stam.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
	Stamina = true
	while wait() do
		if Stamina == true then
			game.Players.LocalPlayer.Backpack.GlobalFunctions.Stamina.Value = 100
		end
	end
end)
-- =====================================================================
devoff.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
	devoff.Visible = false
	devon.Visible = true
game.CoreGui.RobloxGui.DeveloperConsole.Visible = true
end)

devon.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
	devoff.Visible = true
	devon.Visible = false
game.CoreGui.RobloxGui.DeveloperConsole.Visible = false
end)



-- =====================================================================



horn.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
local tbl = getrenv()["_G"]
daid = hornid.Text
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "VehicleWreck" then
tbl.SoundIdSet(v.Essentials.Base.Horn, "rbxassetid://" ..tostring(daid))
v.Essentials.Base.Horn.Pitch = 1
end
end
end)
-- =====================================================================
HungerThirst.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
game.Players.LocalPlayer.playerstats.Hunger.Value = 9999
   wait(1)
   game.Players.LocalPlayer.playerstats.Thirst.Value = 9999
end)
-- =====================================================================
CarGod.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
while true do
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Engine.Value = 66645358
end
end
end

wait()

for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Tank.Value = 66645358
end
end
end

wait()

for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Hull.Value = 66645358
end
end
end

wait()

for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Armor.Value = 66645358
end
end
end

wait()

for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Fuel.Value = 543
end
end
end
end
end)
-- =====================================================================
CarSpeed.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
for i,v in pairs(workspace.Vehicles:GetChildren()) do
if v.Name ~= 'VehicleWreck' then
v.Stats.MaxSpeed.Value = carspeed.Text
v.Stats.MaxSpeed.Offroad.Value = carspeed.Text
end
end
end)
-- =====================================================================
Close.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
if Body.Visible == true then
Body.Visible = false
scroll.Visible = false
Close2.Visible = false
Pull.Size = UDim2.new(0,240,0,50)
Close.Text = '+'
Pull.Size = UDim2(0,125,0,12.5)

elseif Body.Visible == false then
Body.Visible = true
scroll.Visible = true
Close2.Visible = true
Close.Text = 'O'
Pull.Size = UDim2.new(0,590,0,50)
Graf_f.Size = UDim2(0,500,0,50)
end
end)

Close2.MouseButton1Down:connect(function()
Gui:Remove()
end)
-- =====================================================================
ItemESP.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
x = Instance.new('ScreenGui',game.CoreGui)
y = Instance.new('TextButton',x)
z = Instance.new('Frame',y)
f = Instance.new('TextButton',z)
local open = false
function esp()
workspace.CurrentCamera:ClearAllChildren()
local LootContainers = workspace.DropLoot
local LootContainers2 = workspace.SpawnLoot
for i,v in pairs(LootContainers:GetChildren()) do
bill = Instance.new('BillboardGui',workspace.CurrentCamera)
bill.AlwaysOnTop = true
bill.Size = UDim2.new(3,0,3,0)
bill.Adornee = v
Frame = Instance.new('Frame',bill)
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0/255,255/255,0/255)
Frame.BackgroundTransparency = 0.70
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new (0,0,0,0)
Frame.Size = UDim2.new (0.3,0,0.4,0)
Frame.Rotation = 45
Text = Instance.new('TextLabel',Frame)
Text.Size = UDim2.new(1,0,1,0)
Text.BackgroundTransparency = 1
Text.TextScaled = false
Text.Position = UDim2.new(0,0,-0.9,0)
Text.Text = v.Name
Text.TextColor3 = Color3.new(1,1,1)
end
for i,v in pairs(LootContainers2:GetChildren()) do
bill = Instance.new('BillboardGui',workspace.CurrentCamera)
bill.AlwaysOnTop = true
bill.Size = UDim2.new(3,0,3,0)
bill.Adornee = v
Frame = Instance.new('Frame',bill)
Frame.BackgroundColor3 = Color3.fromRGB(0,226,37)
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 0.7
Text = Instance.new('TextLabel',Frame)
Text.Size = UDim2.new(1,0,1,0)
Text.BackgroundTransparency = 1
Text.TextScaled = false
Text.Position = UDim2.new(0,0,-0.9,0)
Text.Text = v.Name
Text.TextColor3 = Color3.new(1,1,1)
end
end
if open == false then
open = true
esp()
elseif open == true then
open = false
workspace.CurrentCamera:ClearAllChildren()
end
end)
-- =====================================================================
spectate.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
local getplayer = (PlayerName.Text)
game.Workspace.CurrentCamera.CameraSubject = game.Players[getplayer].Character.Humanoid
end)
-- =====================================================================
aimbot.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
ENABLED      = false
PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera
_G.FREE_FOR_ALL = true
_G.BIND = 118
_G.AIM_AT = 'Head'
local player = game.Players.LocalPlayer
local esp = false
local track = false

--aimbot


function GetNearestPlayerToMouse()
local PLAYERS      = {}
local PLAYER_HOLD  = {}
local DISTANCES    = {}
for i, v in pairs(game.Players:GetPlayers()) do
if v ~= PLAYER then
table.insert(PLAYERS, v)
end
end
for i, v in pairs(PLAYERS) do
if _G.FREE_FOR_ALL == false then
if v and (v.Character) ~= nil and v.TeamColor ~= PLAYER.TeamColor then
local AIM = v.Character:FindFirstChild(_G.AIM_AT)
if AIM ~= nil then
local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
local DIFF                     = math.floor((POS - AIM.Position).magnitude)
PLAYER_HOLD[v.Name .. i]       = {}
PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
PLAYER_HOLD[v.Name .. i].plr   = v
PLAYER_HOLD[v.Name .. i].diff  = DIFF
table.insert(DISTANCES, DIFF)
end
end
elseif _G.FREE_FOR_ALL == true then
local AIM = v.Character:FindFirstChild(_G.AIM_AT)
if AIM ~= nil then
local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
local DIFF                     = math.floor((POS - AIM.Position).magnitude)
PLAYER_HOLD[v.Name .. i]       = {}
PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
PLAYER_HOLD[v.Name .. i].plr   = v
PLAYER_HOLD[v.Name .. i].diff  = DIFF
table.insert(DISTANCES, DIFF)
end
end
end

if unpack(DISTANCES) == nil then
return false
end

local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
if L_DISTANCE > 20 then
return false
end

for i, v in pairs(PLAYER_HOLD) do
if v.diff == L_DISTANCE then
return v.plr
end
end
return false
end

local TRACK = false


MOUSE.KeyDown:connect(function(KEY)
KEY = KEY:lower():byte()
if KEY == _G.BIND then
ENABLED = true
end
end)
MOUSE.KeyUp:connect(function(KEY)
KEY = KEY:lower():byte()
if KEY == _G.BIND then
ENABLED = false
end
end)

game:GetService('RunService').RenderStepped:connect(function()
if ENABLED then
local TARGET = GetNearestPlayerToMouse()
if TARGET.Name == "Whitelist kid here" or TARGET.Name == "second whitelist kid here" then
else

if (TARGET ~= false) then
local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
if AIM then
CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
end
end
end
end
end)
v = game.Players.LocalPlayer
game.Lighting.Remote.SendMessage:FireServer(v, 'Yellow', "[LOCAL MSG] Aimbot loaded, press q to use!")
end)
-- =====================================================================
local ESP = Instance.new("BillboardGui")
local DOT = Instance.new("Frame")

ESP.Name = "ESP"
ESP.Parent = Gui
ESP.AlwaysOnTop = true
ESP.ExtentsOffset = Vector3.new(0, 1, 0)
ESP.Size = UDim2.new(0, 5, 0, 5)
ESP.StudsOffset = Vector3.new(0, 1, 0)

DOT.Name = "DOT"
DOT.Parent = ESP
DOT.BackgroundColor3 = Color3.new(1, 1, 0)
DOT.BackgroundTransparency = 0.30000001192093
DOT.BorderSizePixel = 0
DOT.Position = UDim2.new(-0.5, 0, -0.5, 0)
DOT.Size = UDim2.new(2, 0, 2, 0)
DOT.Visible = false
DOT.ZIndex = 10






local ESP = false
local track = false


local apocGUI = game.CoreGui.LightningGui
local MAIN = apocGUI.Grab.Body

function Create(base, team)
    local espMAIN = apocGUI.ESP:Clone()
    local F = apocGUI.ESP.DOT

    espMAIN.Parent = Player.PlayerGui
	espMAIN.Adornee = base
	
	F.Visible = true
end

function Clear()
	for _,v in pairs(Player.PlayerGui:children()) do
		if v.Name == "ESP" and v:IsA("BillboardGui") then
			v:Destroy()
		end
	end
end

function Find()
	Clear()
	track = true
	spawn(function()
		while wait() do
			if track then
				Clear()
				for i,v in pairs(game.Players:players()) do
					if v.Character and v.Character.Head then
						Create(v.Character.Head, true)
					end
				end
			end
			wait(1)
		end
	end)
end






ESPF.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
ESPF.Visible = false
ESPT.Visible = true
	Find()
	ESP = true
end)

ESPT.MouseButton1Down:connect(function()
local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.4
s:Play()
ESPF.Visible = true
ESPT.Visible = false
	Clear()
	track = false
	ESP = false
end)
-- =====================================================================
--blue theme BETA--

blue.MouseButton1Down:connect(function()

blue.Visible = false
yellow.Visible = true

local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://530637073'
s:Play()

Image.Image = 'rbxassetid://531722719'

Close.TextColor3 = Color3.new(0,255,255)
Title.TextColor3 = Color3.new(0,255,255)
Credits.TextColor3 = Color3.new(0,255,255)

devoff.TextColor3 = Color3.new(0,255,255)
devoff.BorderColor3 = Color3.new(0/255,255/255,255/255)

devon.TextColor3 = Color3.new(0,255,255)
devon.BorderColor3 = Color3.new(0/255,255/255,255/255)

horn.TextColor3 = Color3.new(0,255,255)
horn.BorderColor3 = Color3.new(0/255,255/255,255/255)

zomb.TextColor3 = Color3.new(0,255,255)
zomb.BorderColor3 = Color3.new(0/255,255/255,255/255)

stam.TextColor3 = Color3.new(0,255,255)
stam.BorderColor3 = Color3.new(0/255,255/255,255/255)

nograv.TextColor3 = Color3.new(0,255,255)
nograv.BorderColor3 = Color3.new(0/255,255/255,255/255)

grav.TextColor3 = Color3.new(0,255,255)
grav.BorderColor3 = Color3.new(0/255,255/255,255/255)

nonv.TextColor3 = Color3.new(0,255,255)
nonv.BorderColor3 = Color3.new(0/255,255/255,255/255)

nv.TextColor3 = Color3.new(0,255,255)
nv.BorderColor3 = Color3.new(0/255,255/255,255/255)

delmap.TextColor3 = Color3.new(0,255,255)
delmap.BorderColor3 = Color3.new(0/255,255/255,255/255)

cratetp.TextColor3 = Color3.new(0,255,255)
cratetp.BorderColor3 = Color3.new(0/255,255/255,255/255)

spawnitem.TextColor3 = Color3.new(0,255,255)
spawnitem.BorderColor3 = Color3.new(0/255,255/255,255/255)

car.TextColor3 = Color3.new(0,255,255)
car.BorderColor3 = Color3.new(0/255,255/255,255/255)

yellow.TextColor3 = Color3.new(0,255,255)
yellow.BorderColor3 = Color3.new(0/255,255/255,255/255)

spectate.TextColor3 = Color3.new(0,255,255)
spectate.BorderColor3 = Color3.new(0/255,255/255,255/255)

creds.TextColor3 = Color3.new(0,255,255)
creds.BorderColor3 = Color3.new(0/255,255/255,255/255)

blue.TextColor3 = Color3.new(0,255,255)
blue.BorderColor3 = Color3.new(0/255,255/255,255/255)

G36K.TextColor3 = Color3.new(0,255,255)
G36K.BorderColor3 = Color3.new(0/255,255/255,255/255)

Corpse.TextColor3 = Color3.new(0,255,255)
Corpse.BorderColor3 = Color3.new(0/255,255/255,255/255)

TpMe.TextColor3 = Color3.new(0,255,255)
TpMe.BorderColor3 = Color3.new(0/255,255/255,255/255)

TpTo.TextColor3 = Color3.new(0,255,255)
TpTo.BorderColor3 = Color3.new(0/255,255/255,255/255)

TpAllMe.TextColor3 = Color3.new(0,255,255)
TpAllMe.BorderColor3 = Color3.new(0/255,255/255,255/255)

GiveBadges.TextColor3 = Color3.new(0,255,255)
GiveBadges.BorderColor3 = Color3.new(0/255,255/255,255/255)

tpscary.TextColor3 = Color3.new(0,255,255)
tpscary.BorderColor3 = Color3.new(0/255,255/255,255/255)

Noclip.TextColor3 = Color3.new(0,255,255)
Noclip.BorderColor3 = Color3.new(0/255,255/255,255/255)

NoFog.TextColor3 = Color3.new(0,255,255)
NoFog.BorderColor3 = Color3.new(0/255,255/255,255/255)

FALKIT.TextColor3 = Color3.new(0,255,255)
FALKIT.BorderColor3 = Color3.new(0/255,255/255,255/255)

OTS.TextColor3 = Color3.new(0,255,255)
OTS.BorderColor3 = Color3.new(0/255,255/255,255/255)

MK48.TextColor3 = Color3.new(0,255,255)
MK48.BorderColor3 = Color3.new(0/255,255/255,255/255)

HungerThirst.TextColor3 = Color3.new(0,255,255)
HungerThirst.BorderColor3 = Color3.new(0/255,255/255,255/255)

CarGod.TextColor3 = Color3.new(0,255,255)
CarGod.BorderColor3 = Color3.new(0/255,255/255,255/255)

CarSpeed.TextColor3 = Color3.new(0,255,255)
CarSpeed.BorderColor3 = Color3.new(0/255,255/255,255/255)

God.TextColor3 = Color3.new(0,255,255)
God.BorderColor3 = Color3.new(0/255,255/255,255/255)

KillPlr.TextColor3 = Color3.new(0,255,255)
KillPlr.BorderColor3 = Color3.new(0/255,255/255,255/255)

KillAll.TextColor3 = Color3.new(0,255,255)
KillAll.BorderColor3 = Color3.new(0/255,255/255,255/255)

loopkplr.TextColor3 = Color3.new(0,255,255)
loopkplr.BorderColor3 = Color3.new(0/255,255/255,255/255)

loopkall.TextColor3 = Color3.new(0,255,255)
loopkall.BorderColor3 = Color3.new(0/255,255/255,255/255)

Message2.TextColor3 = Color3.new(0,255,255)
Message2.BorderColor3 = Color3.new(0/255,255/255,255/255)

aimbot.TextColor3 = Color3.new(0,255,255)
aimbot.BorderColor3 = Color3.new(0/255,255/255,255/255)

aimbot.TextColor3 = Color3.new(0,255,255)
aimbot.BorderColor3 = Color3.new(0/255,255/255,255/255)

ESPT.TextColor3 = Color3.new(0,255,255)
ESPT.BorderColor3 = Color3.new(0/255,255/255,255/255)

ESPF.TextColor3 = Color3.new(0,255,255)
ESPF.BorderColor3 = Color3.new(0/255,255/255,255/255)

ItemESP.TextColor3 = Color3.new(0,255,255)
ItemESP.BorderColor3 = Color3.new(0/255,255/255,255/255)
end)

--default yellow theme--

yellow.MouseButton1Down:connect(function()

blue.Visible = true
yellow.Visible = false

local s = Instance.new ("Sound", workspace)
s.SoundId = 'rbxassetid://530637073'
s:Play()

Image.Image = 'rbxassetid://503785894'

Close.TextColor3 = Color3.new(255,255,0)
Title.TextColor3 = Color3.new(255,255,0)
Credits.TextColor3 = Color3.new(255,255,0)

devoff.TextColor3 = Color3.new(255,255,0)
devoff.BorderColor3 = Color3.new(140/255,140/255,0/255)

devon.TextColor3 = Color3.new(255,255,0)
devon.BorderColor3 = Color3.new(140/255,140/255,0/255)

horn.TextColor3 = Color3.new(255,255,0)
horn.BorderColor3 = Color3.new(140/255,140/255,0/255)

zomb.TextColor3 = Color3.new(255,255,0)
zomb.BorderColor3 = Color3.new(140/255,140/255,0/255)

stam.TextColor3 = Color3.new(255,255,0)
stam.BorderColor3 = Color3.new(140/255,140/255,0/255)

nograv.TextColor3 = Color3.new(255,255,0)
nograv.BorderColor3 = Color3.new(140/255,140/255,0/255)

grav.TextColor3 = Color3.new(255,255,0)
grav.BorderColor3 = Color3.new(140/255,140/255,0/255)

nonv.TextColor3 = Color3.new(255,255,0)
nonv.BorderColor3 = Color3.new(140/255,140/255,0/255)

nv.TextColor3 = Color3.new(255,255,0)
nv.BorderColor3 = Color3.new(140/255,140/255,0/255)

delmap.TextColor3 = Color3.new(255,255,0)
delmap.BorderColor3 = Color3.new(140/255,140/255,0/255)

cratetp.TextColor3 = Color3.new(255,255,0)
cratetp.BorderColor3 = Color3.new(140/255,140/255,0/255)

spawnitem.TextColor3 = Color3.new(255,255,0)
spawnitem.BorderColor3 = Color3.new(140/255,140/255,0/255)

car.TextColor3 = Color3.new(255,255,0)
car.BorderColor3 = Color3.new(140/255,140/255,0/255)

yellow.TextColor3 = Color3.new(255,255,0)
yellow.BorderColor3 = Color3.new(140/255,140/255,0/255)

spectate.TextColor3 = Color3.new(255,255,0)
spectate.BorderColor3 = Color3.new(140/255,140/255,0/255)

creds.TextColor3 = Color3.new(255,255,0)
creds.BorderColor3 = Color3.new(140/255,140/255,0/255)

blue.TextColor3 = Color3.new(255,255,0)
blue.BorderColor3 = Color3.new(140/255,140/255,0/255)

G36K.TextColor3 = Color3.new(255,255,0)
G36K.BorderColor3 = Color3.new(140/255,140/255,0/255)

Corpse.TextColor3 = Color3.new(255,255,0)
Corpse.BorderColor3 = Color3.new(140/255,140/255,0/255)

TpMe.TextColor3 = Color3.new(255,255,0)
TpMe.BorderColor3 = Color3.new(140/255,140/255,0/255)

TpTo.TextColor3 = Color3.new(255,255,0)
TpTo.BorderColor3 = Color3.new(140/255,140/255,0/255)

TpAllMe.TextColor3 = Color3.new(255,255,0)
TpAllMe.BorderColor3 = Color3.new(140/255,140/255,0/255)

GiveBadges.TextColor3 = Color3.new(255,255,0)
GiveBadges.BorderColor3 = Color3.new(140/255,140/255,0/255)

tpscary.TextColor3 = Color3.new(255,255,0)
tpscary.BorderColor3 = Color3.new(140/255,140/255,0/255)

Noclip.TextColor3 = Color3.new(255,255,0)
Noclip.BorderColor3 = Color3.new(140/255,140/255,0/255)

NoFog.TextColor3 = Color3.new(255,255,0)
NoFog.BorderColor3 = Color3.new(140/255,140/255,0/255)

FALKIT.TextColor3 = Color3.new(255,255,0)
FALKIT.BorderColor3 = Color3.new(140/255,140/255,0/255)

OTS.TextColor3 = Color3.new(255,255,0)
OTS.BorderColor3 = Color3.new(140/255,140/255,0/255)

MK48.TextColor3 = Color3.new(255,255,0)
MK48.BorderColor3 = Color3.new(140/255,140/255,0/255)

HungerThirst.TextColor3 = Color3.new(255,255,0)
HungerThirst.BorderColor3 = Color3.new(140/255,140/255,0/255)

CarGod.TextColor3 = Color3.new(255,255,0)
CarGod.BorderColor3 = Color3.new(140/255,140/255,0/255)

CarSpeed.TextColor3 = Color3.new(255,255,0)
CarSpeed.BorderColor3 = Color3.new(140/255,140/255,0/255)

God.TextColor3 = Color3.new(255,255,0)
God.BorderColor3 = Color3.new(140/255,140/255,0/255)

KillPlr.TextColor3 = Color3.new(255,255,0)
KillPlr.BorderColor3 = Color3.new(140/255,140/255,0/255)

KillAll.TextColor3 = Color3.new(255,255,0)
KillAll.BorderColor3 = Color3.new(140/255,140/255,0/255)

loopkplr.TextColor3 = Color3.new(255,255,0)
loopkplr.BorderColor3 = Color3.new(140/255,140/255,0/255)

loopkall.TextColor3 = Color3.new(255,255,0)
loopkall.BorderColor3 = Color3.new(140/255,140/255,0/255)

Message2.TextColor3 = Color3.new(255,255,0)
Message2.BorderColor3 = Color3.new(140/255,140/255,0/255)

aimbot.TextColor3 = Color3.new(255,255,0)
aimbot.BorderColor3 = Color3.new(140/255,140/255,0/255)

aimbot.TextColor3 = Color3.new(255,255,0)
aimbot.BorderColor3 = Color3.new(140/255,140/255,0/255)

ESPT.TextColor3 = Color3.new(255,255,0)
ESPT.BorderColor3 = Color3.new(140/255,140/255,0/255)

ESPF.TextColor3 = Color3.new(255,255,0)
ESPF.BorderColor3 = Color3.new(140/255,140/255,0/255)

ItemESP.TextColor3 = Color3.new(255,255,0)
ItemESP.BorderColor3 = Color3.new(140/255,140/255,0/255)
end)

--[[C.r.e.a.t.e.d b.y S.t.r.a.z.o.s]]--
-- =====================================================================
while true do
Title.TextTransparency = 0
Credits.TextTransparency = 0
Close.TextTransparency = 0
Close2.TextTransparency = 0
wait(0.1)
Title.TextTransparency = 0.1
Credits.TextTransparency = 0.1
Close.TextTransparency = 0.1
Close2.TextTransparency = 0.1
wait(0.1)
Title.TextTransparency = 0.2
Credits.TextTransparency = 0.2
Close.TextTransparency = 0.2
Close2.TextTransparency = 0.2
wait(0.1)
Title.TextTransparency = 0.3
Credits.TextTransparency = 0.3
Close.TextTransparency = 0.3
Close2.TextTransparency = 0.3
wait(0.1)
Title.TextTransparency = 0.4
Credits.TextTransparency = 0.4
Close.TextTransparency = 0.4
Close2.TextTransparency = 0.4
wait(0.1)
Title.TextTransparency = 0.5
Credits.TextTransparency = 0.5
Close.TextTransparency = 0.5
Close2.TextTransparency = 0.5
wait(0.1)
Title.TextTransparency = 0.6
Credits.TextTransparency = 0.6
Close.TextTransparency = 0.6
Close2.TextTransparency = 0.6
wait(0.1)
Title.TextTransparency = 0.7
Credits.TextTransparency = 0.7
Close.TextTransparency = 0.7
Close2.TextTransparency = 0.7
wait(0.1)
Title.TextTransparency = 0.6
Credits.TextTransparency = 0.6
Close.TextTransparency = 0.6
Close2.TextTransparency = 0.6
wait(0.1)
Title.TextTransparency = 0.5
Credits.TextTransparency = 0.5
Close.TextTransparency = 0.5
Close2.TextTransparency = 0.5
wait(0.1)
Title.TextTransparency = 0.4
Credits.TextTransparency = 0.4
Close.TextTransparency = 0.4
Close2.TextTransparency = 0.4
wait(0.1)
Title.TextTransparency = 0.3
Credits.TextTransparency = 0.3
Close.TextTransparency = 0.3
Close2.TextTransparency = 0.3
wait(0.1)
Title.TextTransparency = 0.2
Credits.TextTransparency = 0.2
Close.TextTransparency = 0.2
Close2.TextTransparency = 0.2
wait(0.1)
Title.TextTransparency = 0.1
Credits.TextTransparency = 0.1
Close.TextTransparency = 0.1
Close2.TextTransparency = 0.1
wait(0.1)
Title.TextTransparency = 0
Credits.TextTransparency = 0
Close.TextTransparency = 0
Close2.TextTransparency = 0
wait(0.1)
end