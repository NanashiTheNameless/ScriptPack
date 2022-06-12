local LP = game:GetService'Players'.LocalPlayer
local Chr = LP.Character or LP.CharacterAdded:Wait()
local Head = Chr:WaitForChild'Head'
local Hum = Chr:WaitForChild'Humanoid'
local HRP = Chr:WaitForChild'HumanoidRootPart'
local Torso = Chr:FindFirstChild'Torso'or Chr:FindFirstChild'UpperTorso'
local LArm = Chr:FindFirstChild'Left Arm'or Chr:FindFirstChild'LeftHand'
local RArm = Chr:FindFirstChild'Right Arm'or Chr:FindFirstChild'RightHand'
local LLeg = Chr:FindFirstChild'Left Leg'or Chr:FindFirstChild'LeftLowerLeg'
local RLeg = Chr:FindFirstChild'Right Leg'or Chr:FindFirstChild'RightLowerLeg'
memeguiframe = Instance.new("Frame")
Window = Instance.new("Frame")
Topbar = Instance.new("Frame")
HomeBut = Instance.new("TextButton")
PlayersBut = Instance.new("TextButton")
ServerBut = Instance.new("TextButton")
ScriptsBut = Instance.new("TextButton")
GamesBut = Instance.new("TextButton")
LocalPlayerBut = Instance.new("TextButton")
TextLabel = Instance.new("TextLabel")
Close = Instance.new("TextButton")
Home = Instance.new("Frame")
CreatorID = Instance.new("TextLabel")
FECheck = Instance.new("TextLabel")
MaxPlayers = Instance.new("TextLabel")
GameID = Instance.new("TextLabel")
Tick = Instance.new("TextLabel")
NumberOfPlayers = Instance.new("TextLabel")
Versionl = Instance.new("TextLabel")
LocalPlayerName = Instance.new("TextLabel")
Players = Instance.new("Frame")
Ayylmao = Instance.new("TextButton")
BTools = Instance.new("TextButton")
Blackhole = Instance.new("TextButton")
Bleach = Instance.new("TextButton")
Chamber = Instance.new("TextButton")
Bring = Instance.new("TextButton")
CTools = Instance.new("TextButton")
Clone = Instance.new("TextButton")
Crash = Instance.new("TextButton")
Crucify = Instance.new("TextButton")
Dick = Instance.new("TextButton")
Duck = Instance.new("TextButton")
 FF = Instance.new("TextButton")
 Famous = Instance.new("TextButton")
 Fart = Instance.new("TextButton")
 Freeze = Instance.new("TextButton")
 Ghost = Instance.new("TextButton")
 Giant = Instance.new("TextButton")
 Goto = Instance.new("TextButton")
 Invisible = Instance.new("TextButton")
 Jail = Instance.new("TextButton")
 KKK = Instance.new("TextButton")
 Kidnap = Instance.new("TextButton")
 Kill = Instance.new("TextButton")
 Light = Instance.new("TextButton")
 MLG = Instance.new("TextButton")
 Midget = Instance.new("TextButton")
 Noob = Instance.new("TextButton")
 PlayerName = Instance.new("TextBox")
 Poison = Instance.new("TextButton")
 Puke = Instance.new("TextButton")
 Punish = Instance.new("TextButton")
 Rape = Instance.new("TextButton")
 Shrek = Instance.new("TextButton")
 StickMan = Instance.new("TextButton")
 Stun = Instance.new("TextButton")
 DancingHotdog = Instance.new("TextButton")
 PlayerNameBack = Instance.new("Frame")
 LocalPlayer = Instance.new("Frame")
 LocalPlayerValueTextBack = Instance.new("Frame")
 Disguise = Instance.new("TextButton")
 Float = Instance.new("TextButton")
 Fly = Instance.new("TextButton")
 Freecam = Instance.new("TextButton")
 SilentGod = Instance.new("TextButton")
 Jesusfly = Instance.new("TextButton")
 Jumppower = Instance.new("TextButton")
 Name = Instance.new("TextButton")
 Noclip = Instance.new("TextButton")
 Overpower = Instance.new("TextButton")
 SuperJump = Instance.new("TextButton")
 Stability = Instance.new("TextButton")
 Sanic = Instance.new("TextButton")
 StartChathook = Instance.new("TextButton")
 Swim = Instance.new("TextButton")
 Tag = Instance.new("TextButton")
 Walkspeed = Instance.new("TextButton")
 Server = Instance.new("Frame")
 ServerValueTextBack = Instance.new("Frame")
 _666 = Instance.new("TextButton")
 Anonymous = Instance.new("TextButton")
 Bait = Instance.new("TextButton")
 Baseplate = Instance.new("TextButton")
 Bluescreen = Instance.new("TextButton")
 DestroyServer = Instance.new("TextButton")
 Epilepsy = Instance.new("TextButton")
 Flood = Instance.new("TextButton")
 Fogend = Instance.new("TextButton")
 Gravity = Instance.new("TextButton")
 Harambe = Instance.new("TextButton")
 Music = Instance.new("TextButton")
 Nuke = Instance.new("TextButton")
 NumberOne = Instance.new("TextButton")
 Purge = Instance.new("TextButton")
 RainingNoobs = Instance.new("TextButton")
 Shutdown = Instance.new("TextButton")
 Sp00ky = Instance.new("TextButton")
 Spam = Instance.new("TextButton")
 WIP = Instance.new("TextButton")
 uuhhh = Instance.new("TextButton")
 Scripts = Instance.new("Frame")
 ScriptsBack = Instance.new("Frame")
 CustomDex = Instance.new("TextButton")
 ArmCannon = Instance.new("TextButton")
 Chainsaw = Instance.new("TextButton")
 WIP9 = Instance.new("TextButton")
 DankEngine = Instance.new("TextButton")
 DarkTitan = Instance.new("TextButton")
 DevUzi = Instance.new("TextButton")
 Draw = Instance.new("TextButton")
 ExplodeStick = Instance.new("TextButton")
 Jihad = Instance.new("TextButton")
 LightSaber = Instance.new("TextButton")
 Overseer = Instance.new("TextButton")
 Scythe = Instance.new("TextButton")
 SuicideGrenade = Instance.new("TextButton")
 VaporGun = Instance.new("TextButton")
 VoidRing = Instance.new("TextButton")
 WIP10 = Instance.new("TextButton")
 WIP11 = Instance.new("TextButton")
 WIP12 = Instance.new("TextButton")
 WIP13 = Instance.new("TextButton")
 WIP14 = Instance.new("TextButton")
 WIP14_2 = Instance.new("TextButton")
 WIP16 = Instance.new("TextButton")
 WIP17 = Instance.new("TextButton")
 WIP18 = Instance.new("TextButton")
 WIP19 = Instance.new("TextButton")
 WIP2 = Instance.new("TextButton")
 Cloud = Instance.new("TextButton")
 WIP4 = Instance.new("TextButton")
 WIP5 = Instance.new("TextButton")
 WIP6 = Instance.new("TextButton")
 WIP7 = Instance.new("TextButton")
 Games = Instance.new("Frame")
 Jailbreak = Instance.new("Frame")
 JailbreakValueTextBack = Instance.new("Frame")
 JailbreakValue = Instance.new("TextBox")
 JDonut = Instance.new("TextButton")
 JCrimBase1 = Instance.new("TextButton")
 JGod = Instance.new("TextButton")
 JHipHeight = Instance.new("TextButton")
 JPoliceHQ1 = Instance.new("TextButton")
 JCrimBase2 = Instance.new("TextButton")
local JApt3 = Instance.new("TextButton")
local JBTools = Instance.new("TextButton")
local JOnOff = Instance.new("TextButton")
local JLambo = Instance.new("TextButton")
local JStation = Instance.new("TextButton")
local JJewerly = Instance.new("TextButton")
local JPrison = Instance.new("TextButton")
local JPoliceHQ2 = Instance.new("TextButton")
local JJumpPower = Instance.new("TextButton")
local JWalkspeed = Instance.new("TextButton")
local JailbreakPlayer = Instance.new("TextBox")
local JApt4 = Instance.new("TextButton")
local JBugatti = Instance.new("TextButton")
local JTesla = Instance.new("TextButton")
local JPorsche = Instance.new("TextButton")
local JDirtBike = Instance.new("TextButton")
local JApt1 = Instance.new("TextButton")
local JApt2 = Instance.new("TextButton")
local JWalkspeed_2 = Instance.new("TextButton")
local JNoDoors = Instance.new("TextButton")
local JAutoArrest = Instance.new("TextButton")
local JJumpPower_2 = Instance.new("TextButton")
local JTeleport = Instance.new("TextButton")
local JVault = Instance.new("TextButton")
local JTeleport_2 = Instance.new("TextButton")
local JCtrlClick = Instance.new("TextButton")
local JCarSpeed = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
 ServerValueTextBack_2 = Instance.new("Frame")

FEBYPASS = Instance.new("TextButton")
local MemeGUI = Instance.new("ScreenGui", game.CoreGui)
MemeGUI.Name = "MemeGUI"
MemeGUI.ResetOnSpawn = false
memeguiframe.Name = "memeguiframe"
memeguiframe.Parent = MemeGUI
memeguiframe.Active = true
memeguiframe.BackgroundColor3 = Color3.new(1, 1, 0.921569)
memeguiframe.BackgroundTransparency = 1
memeguiframe.BorderSizePixel = 0
memeguiframe.Draggable = true
memeguiframe.Position = UDim2.new(0.5, -275, 0.5, -150)
memeguiframe.Size = UDim2.new(0, 540, 0, 360)
memeguiframe.ZIndex = 2
local memeskeem= {}
memeskeem.Versionl = "V0.9 (Alpha Version)"
--local core = game:GetService('CoreGui'):WaitForChild'MemeGUI':FindFirstChild'memeguiframe'
Window.Name = 'Window'
Window.Parent = memeguiframe
Window.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Window.BorderSizePixel = 0
Window.Size = UDim2.new(1.0011338, 0, 0, 96)
Window.ZIndex = 2
local Options = Instance.new("Frame")
local GRAY = Instance.new("TextButton")
local RED = Instance.new("TextButton")
local GREEN = Instance.new("TextButton")
local BLUE = Instance.new("TextButton")
local PINK = Instance.new("TextButton")
local DARK = Instance.new("TextButton")
local LIGHT = Instance.new("TextButton")
local TOPMOST = Instance.new("TextButton")
local TRANSPARENT = Instance.new("TextButton")
local Settings = Instance.new("TextButton")


Options.Name = "Options"
Options.Parent = memeguiframe
Options.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Options.BorderSizePixel = 0
Options.Position = UDim2.new(0, 0, 0, 96)
Options.Size = UDim2.new(1.00340903, 0, 0, 264)
Options.ZIndex = 2

GRAY.Name = "GRAY"
GRAY.Parent = Options
GRAY.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
GRAY.BorderSizePixel = 0
GRAY.Position = UDim2.new(0.0147769582, 0, 0, 82)
GRAY.Size = UDim2.new(0.188406229, 0, 0, 28)
GRAY.ZIndex = 2
GRAY.Font = Enum.Font.SourceSans
GRAY.FontSize = Enum.FontSize.Size14
GRAY.Text = "GRAY"
GRAY.TextColor3 = Color3.new(1, 1, 1)
GRAY.TextSize = 14

RED.Name = "RED"
RED.Parent = Options
RED.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
RED.BorderSizePixel = 0
RED.Position = UDim2.new(0.210571662, 0, 0, 82)
RED.Size = UDim2.new(0.188406229, 0, 0, 28)
RED.ZIndex = 2
RED.Font = Enum.Font.SourceSans
RED.FontSize = Enum.FontSize.Size14
RED.Text = "RED"
RED.TextColor3 = Color3.new(1, 1, 1)
RED.TextSize = 14

GREEN.Name = "GREEN"
GREEN.Parent = Options
GREEN.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
GREEN.BorderSizePixel = 0
GREEN.Position = UDim2.new(0.406366348, 0, 0, 82)
GREEN.Size = UDim2.new(0.188406229, 0, 0, 28)
GREEN.ZIndex = 2
GREEN.Font = Enum.Font.SourceSans
GREEN.FontSize = Enum.FontSize.Size14
GREEN.Text = "GREEN"
GREEN.TextColor3 = Color3.new(1, 1, 1)
GREEN.TextSize = 14

BLUE.Name = "BLUE"
BLUE.Parent = Options
BLUE.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
BLUE.BorderSizePixel = 0
BLUE.Position = UDim2.new(0.602161109, 0, 0, 82)
BLUE.Size = UDim2.new(0.188406229, 0, 0, 28)
BLUE.ZIndex = 2
BLUE.Font = Enum.Font.SourceSans
BLUE.FontSize = Enum.FontSize.Size14
BLUE.Text = "BLUE"
BLUE.TextColor3 = Color3.new(1, 1, 1)
BLUE.TextSize = 14

PINK.Name = "PINK"
PINK.Parent = Options
PINK.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
PINK.BorderSizePixel = 0
PINK.Position = UDim2.new(0.797955811, 0, 0, 82)
PINK.Size = UDim2.new(0.188406229, 0, 0, 28)
PINK.ZIndex = 2
PINK.Font = Enum.Font.SourceSans
PINK.FontSize = Enum.FontSize.Size14
PINK.Text = "PINK"
PINK.TextColor3 = Color3.new(1, 1, 1)
PINK.TextSize = 14

DARK.Name = "DARK"
DARK.Parent = Options
DARK.BackgroundColor3 = Color3.new(0.823529, 0.0509804, 0.0509804)
DARK.BackgroundTransparency = 1
DARK.BorderSizePixel = 0
DARK.Position = UDim2.new(0.0518374369, 0, 0, 28)
DARK.Size = UDim2.new(0.188406229, 0, 0, 28)
DARK.ZIndex = 2
DARK.Font = Enum.Font.SourceSans
DARK.FontSize = Enum.FontSize.Size14
DARK.Text = "Dark Theme: ON"
DARK.TextColor3 = Color3.new(1, 1, 1)
DARK.TextSize = 14

LIGHT.Name = "LIGHT"
LIGHT.Parent = Options
LIGHT.BackgroundColor3 = Color3.new(0.823529, 0.0509804, 0.0509804)
LIGHT.BackgroundTransparency = 1
LIGHT.BorderSizePixel = 0
LIGHT.Position = UDim2.new(0.288808554, 0, 0, 28)
LIGHT.Size = UDim2.new(0.188406229, 0, 0, 28)
LIGHT.ZIndex = 2
LIGHT.Font = Enum.Font.SourceSans
LIGHT.FontSize = Enum.FontSize.Size14
LIGHT.Text = "Light Theme: OFF"
LIGHT.TextColor3 = Color3.new(1, 1, 1)
LIGHT.TextSize = 14

TOPMOST.Name = "TOPMOST"
TOPMOST.Parent = Options
TOPMOST.BackgroundColor3 = Color3.new(0.823529, 0.0509804, 0.0509804)
TOPMOST.BackgroundTransparency = 1
TOPMOST.BorderSizePixel = 0
TOPMOST.Position = UDim2.new(0.533185065, 0, 0, 28)
TOPMOST.Size = UDim2.new(0.188406229, 0, 0, 28)
TOPMOST.ZIndex = 2
TOPMOST.Font = Enum.Font.SourceSans
TOPMOST.FontSize = Enum.FontSize.Size14
TOPMOST.Text = "TopMost: OFF"
TOPMOST.TextColor3 = Color3.new(1, 1, 1)
TOPMOST.TextSize = 14

TRANSPARENT.Name = "TRANSPARENT"
TRANSPARENT.Parent = Options
TRANSPARENT.BackgroundColor3 = Color3.new(0.823529, 0.0509804, 0.0509804)
TRANSPARENT.BackgroundTransparency = 1
TRANSPARENT.BorderSizePixel = 0
TRANSPARENT.Position = UDim2.new(0.755345464, 0, 0, 28)
TRANSPARENT.Size = UDim2.new(0.188406229, 0, 0, 28)
TRANSPARENT.ZIndex = 2
TRANSPARENT.Font = Enum.Font.SourceSans
TRANSPARENT.FontSize = Enum.FontSize.Size14
TRANSPARENT.Text = "Transparent: OFF"
TRANSPARENT.TextColor3 = Color3.new(1, 1, 1)
TRANSPARENT.TextSize = 14

Settings.Name = "Settings"
Settings.Parent = Window
Settings.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Settings.BackgroundTransparency = 1
Settings.Position = UDim2.new(0.808674991, 0, 0, 32)
Settings.Size = UDim2.new(0.185475916, 0, 0, 24)
Settings.ZIndex = 2
Settings.Font = Enum.Font.SourceSans
Settings.FontSize = Enum.FontSize.Size14
Settings.Text = "OPTIONS"
Settings.TextColor3 = Color3.new(1, 1, 1)
Settings.TextSize = 14

local FancyLine = Instance.new("Frame")
FancyLine.Name = "FancyLine"
FancyLine.Parent = Window
FancyLine.BackgroundColor3 = Color3.new(0.266667, 0.541176, 1)
FancyLine.BorderSizePixel = 0
FancyLine.Position = UDim2.new(0, 4, 0, 92)
FancyLine.Size = UDim2.new(0.159999996, 0, 0, 3)
FancyLine.ZIndex = 2

Topbar.Name = "Topbar"
Topbar.Parent = Window
Topbar.BackgroundColor3 = Color3.new(0.270588, 0.352941, 0.392157)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(1.00155425, 0, 0, 24)
Topbar.ZIndex = 2

HomeBut.Name = "HomeBut"
HomeBut.Parent = Window
HomeBut.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
HomeBut.BackgroundTransparency = 1
HomeBut.BorderSizePixel = 0
HomeBut.AutoButtonColor = false
HomeBut.Position = UDim2.new(0, 0, 0, 60)
HomeBut.Size = UDim2.new(0.178054109, 0, 0, 36)
HomeBut.ZIndex = 2
HomeBut.Font = Enum.Font.SourceSans
HomeBut.FontSize = Enum.FontSize.Size18
HomeBut.Text = "HOME"
HomeBut.TextColor3 = Color3.new(1,1,1)
HomeBut.TextSize = 16
HomeBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
HomeBut.TextStrokeTransparency = 0.89999997615814

PlayersBut.Name = "PlayersBut"
PlayersBut.Parent = Window
PlayersBut.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
PlayersBut.BackgroundTransparency = 1
PlayersBut.BorderSizePixel = 0
PlayersBut.AutoButtonColor = false
PlayersBut.Position = UDim2.new(0.148378432, 0, 0, 60)
PlayersBut.Size = UDim2.new(0.18547304, 0, 0, 36)
PlayersBut.ZIndex = 2
PlayersBut.Font = Enum.Font.SourceSans
PlayersBut.FontSize = Enum.FontSize.Size18
PlayersBut.Text = "PLAYERS"
PlayersBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
PlayersBut.TextSize = 16
PlayersBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
PlayersBut.TextStrokeTransparency = 0.89999997615814

ServerBut.Name = "ServerBut"
ServerBut.Parent = Window
ServerBut.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
ServerBut.BackgroundTransparency = 1
ServerBut.BorderSizePixel = 0
ServerBut.AutoButtonColor = false
ServerBut.Position = UDim2.new(0.489648789, 0, 0, 60)
ServerBut.Size = UDim2.new(0.192891955, 0, 0, 36)
ServerBut.ZIndex = 2
ServerBut.Font = Enum.Font.SourceSans
ServerBut.FontSize = Enum.FontSize.Size18
ServerBut.Text = "SERVER"
ServerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
ServerBut.TextSize = 16
ServerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
ServerBut.TextStrokeTransparency = 0.89999997615814

ScriptsBut.Name = "ScriptsBut"
ScriptsBut.Parent = Window
ScriptsBut.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
ScriptsBut.BackgroundTransparency = 1
ScriptsBut.BorderSizePixel = 0
ScriptsBut.AutoButtonColor = false
ScriptsBut.Position = UDim2.new(0.652865112, 0, 0, 60)
ScriptsBut.Size = UDim2.new(0.207729802, 0, 0, 36)
ScriptsBut.ZIndex = 2
ScriptsBut.Font = Enum.Font.SourceSans
ScriptsBut.FontSize = Enum.FontSize.Size18
ScriptsBut.Text = "SCRIPTS"
ScriptsBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
ScriptsBut.TextSize = 16
ScriptsBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
ScriptsBut.TextStrokeTransparency = 0.89999997615814

GamesBut.Name = "GamesBut"
GamesBut.Parent = Window
GamesBut.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
GamesBut.BackgroundTransparency = 1
GamesBut.BorderSizePixel = 0
GamesBut.AutoButtonColor = false
GamesBut.Position = UDim2.new(0.853175938, 0, 0, 60)
GamesBut.Size = UDim2.new(0.140959516, 0, 0, 36)
GamesBut.ZIndex = 2
GamesBut.Font = Enum.Font.SourceSans
GamesBut.FontSize = Enum.FontSize.Size18
GamesBut.Text = "GAMES"
GamesBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
GamesBut.TextSize = 16
GamesBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
GamesBut.TextStrokeTransparency = 0.89999997615814

LocalPlayerBut.Name = "LocalPlayerBut"
LocalPlayerBut.Parent = Window
LocalPlayerBut.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
LocalPlayerBut.BackgroundTransparency = 1
LocalPlayerBut.BorderSizePixel = 0
LocalPlayerBut.AutoButtonColor = false
LocalPlayerBut.Position = UDim2.new(0.326432556, 0, 0, 60)
LocalPlayerBut.Size = UDim2.new(0.163216278, 0, 0, 36)
LocalPlayerBut.ZIndex = 2
LocalPlayerBut.Font = Enum.Font.SourceSans
LocalPlayerBut.FontSize = Enum.FontSize.Size18
LocalPlayerBut.Text = "LOCALPLAYER"
LocalPlayerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
LocalPlayerBut.TextSize = 16
LocalPlayerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
LocalPlayerBut.TextStrokeTransparency = 0.89999997615814

local text0 = Instance.new("ImageLabel")
local text1 = Instance.new("ImageLabel")
text0.Name = "text0"
text0.Parent = Window
text0.BackgroundColor3 = Color3.new(1, 1, 1)
text0.BackgroundTransparency = 1
text0.BorderSizePixel = 0
text0.Position = UDim2.new(0.385789871, 0, 0, 28)
text0.Size = UDim2.new(0.23740916, 0, 0, 36)
text0.ZIndex = 3
text0.Image = "rbxassetid://1056374810"
text1.Name = "text1"
text1.Parent = Window
text1.BackgroundColor3 = Color3.new(1, 1, 1)
text1.BackgroundTransparency = 1
text1.BorderSizePixel = 0
text1.Position = UDim2.new(0.385789871, 0, 0, 28)
text1.Size = UDim2.new(0.23740916, 0, 0, 36)
text1.ZIndex = 3
text1.Image = "rbxassetid://1056374949"

Close.Name = "Close"
Close.Parent = Window
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.921561241, 0, 0, 2)
Close.Size = UDim2.new(0.0666188896, 0, 0, 14)
Close.ZIndex = 2
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size24
Close.Text = "x"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 21
Close.TextWrapped = true


Home.Name = "Home"
Home.Parent = memeguiframe
Home.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0, 0, 0, 96)
Home.Size = UDim2.new(1.00340903, 0, 0, 264)
Home.Visible = true
Home.ZIndex = 2

local succcCredts = Instance.new("TextLabel",Home)
succcCredts.Name = "succcCredits"
succcCredts.BackgroundColor3 = Color3.new(1, 1, 1)
succcCredts.BackgroundTransparency = 1
succcCredts.BorderSizePixel = 0
succcCredts.Position = UDim2.new(0.288061917, 0, 0, 188)
succcCredts.Size = UDim2.new(0.399592221, 0, 0, 20)
succcCredts.ZIndex = 2
succcCredts.Font = Enum.Font.SourceSans
succcCredts.FontSize = Enum.FontSize.Size14
succcCredts.Text = "by Jurdy, Peso, and MudockYatho"
succcCredts.TextColor3 = Color3.new(1, 1, 1)
succcCredts.TextSize = 14

CreatorID.Name = "CreatorID"
CreatorID.Parent = Home
CreatorID.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
CreatorID.BorderColor3 = Color3.new(0, 0, 0)
CreatorID.BorderSizePixel = 0
CreatorID.Position = UDim2.new(0.510961115, 0, 0, 16)
CreatorID.Size = UDim2.new(0.473934948, 0, 0, 36)
CreatorID.ZIndex = 2
CreatorID.Font = Enum.Font.SourceSans
CreatorID.FontSize = Enum.FontSize.Size14
CreatorID.Text = "Creator ID: "..game.CreatorId
CreatorID.TextColor3 = Color3.new(1, 1, 1)
CreatorID.TextSize = 14

FECheck.Name = "FECheck"
FECheck.Parent = Home
FECheck.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
FECheck.BorderColor3 = Color3.new(0, 0, 0)
FECheck.BorderSizePixel = 0
FECheck.Position = UDim2.new(0.0148104671, 0, 0, 16)
FECheck.Size = UDim2.new(0.473934948, 0, 0, 36)
FECheck.ZIndex = 2
FECheck.Font = Enum.Font.SourceSans
FECheck.FontSize = Enum.FontSize.Size14
FECheck.Text = "Filtering Enabled: "
FECheck.TextColor3 = Color3.new(1, 1, 1)
FECheck.TextSize = 14

MaxPlayers.Name = "MaxPlayers"
MaxPlayers.Parent = Home
MaxPlayers.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
MaxPlayers.BorderColor3 = Color3.new(0, 0, 0)
MaxPlayers.BorderSizePixel = 0
MaxPlayers.Position = UDim2.new(0.510961115, 0, 0, 60)
MaxPlayers.Size = UDim2.new(0.473934948, 0, 0, 36)
MaxPlayers.ZIndex = 2
MaxPlayers.Font = Enum.Font.SourceSans
MaxPlayers.FontSize = Enum.FontSize.Size14
MaxPlayers.Text = "Max Players: "..game:GetService'Players'.MaxPlayers
MaxPlayers.TextColor3 = Color3.new(1, 1, 1)
MaxPlayers.TextSize = 14

GameID.Name = "GameID"
GameID.Parent = Home
GameID.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
GameID.BorderColor3 = Color3.new(0, 0, 0)
GameID.BorderSizePixel = 0
GameID.Position = UDim2.new(0.0148104671, 0, 0, 60)
GameID.Size = UDim2.new(0.473934948, 0, 0, 36)
GameID.ZIndex = 2
GameID.Font = Enum.Font.SourceSans
GameID.FontSize = Enum.FontSize.Size14
GameID.Text = "Game ID: "..game.PlaceId
GameID.TextColor3 = Color3.new(1, 1, 1)
GameID.TextSize = 14

Tick.Name = "Tick"
Tick.Parent = Home
Tick.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Tick.BorderColor3 = Color3.new(0, 0, 0)
Tick.BorderSizePixel = 0
Tick.Position = UDim2.new(0.510961115, 0, 0, 104)
Tick.Size = UDim2.new(0.473934948, 0, 0, 36)
Tick.ZIndex = 2
Tick.Font = Enum.Font.SourceSans
Tick.FontSize = Enum.FontSize.Size14
Tick.Text = "Tick: "..tick()
Tick.TextColor3 = Color3.new(1, 1, 1)
Tick.TextSize = 14

FEBYPASS.Name = "FEBYPASS"
FEBYPASS.Parent = Home
FEBYPASS.BackgroundColor3 = Color3.new(1, 1, 1)
FEBYPASS.BackgroundTransparency = 1
FEBYPASS.BorderSizePixel = 0
FEBYPASS.Position = UDim2.new(0.23247233, 0, 0, 216)
FEBYPASS.Size = UDim2.new(0.479704797, 0, 0, 22)
FEBYPASS.ZIndex = 2
FEBYPASS.Font = Enum.Font.SourceSans
FEBYPASS.FontSize = Enum.FontSize.Size14
FEBYPASS.Text = "FE BYPASS: OFF"
FEBYPASS.TextColor3 = Color3.new(1, 1, 1)
FEBYPASS.TextSize = 14

NumberOfPlayers.Name = "NumberOfPlayers"
NumberOfPlayers.Parent = Home
NumberOfPlayers.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
NumberOfPlayers.BorderColor3 = Color3.new(0, 0, 0)
NumberOfPlayers.BorderSizePixel = 0
NumberOfPlayers.Position = UDim2.new(0.0148104671, 0, 0, 104)
NumberOfPlayers.Size = UDim2.new(0.473934948, 0, 0, 36)
NumberOfPlayers.ZIndex = 2
NumberOfPlayers.Font = Enum.Font.SourceSans
NumberOfPlayers.FontSize = Enum.FontSize.Size14
NumberOfPlayers.Text = "Number Of Players: "..game:GetService'Players'.NumPlayers
NumberOfPlayers.TextColor3 = Color3.new(1, 1, 1)
NumberOfPlayers.TextSize = 14
Versionl.Name = "Versionl"
Versionl.Parent = Home
Versionl.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Versionl.BorderColor3 = Color3.new(0, 0, 0)
Versionl.BorderSizePixel = 0
Versionl.Position = UDim2.new(0.510961115, 0, 0, 148)
Versionl.Size = UDim2.new(0.473934948, 0, 0, 36)
Versionl.ZIndex = 2
Versionl.Font = Enum.Font.SourceSans
Versionl.FontSize = Enum.FontSize.Size14
Versionl.Text = "Version: "..memeskeem.Versionl
Versionl.TextColor3 = Color3.new(1, 1, 1)
Versionl.TextSize = 14
LocalPlayerName.Name = "LocalPlayerName"
LocalPlayerName.Parent = Home
LocalPlayerName.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
LocalPlayerName.BorderColor3 = Color3.new(0, 0, 0)
LocalPlayerName.BorderSizePixel = 0
LocalPlayerName.Position = UDim2.new(0.0148104671, 0, 0, 148)
LocalPlayerName.Size = UDim2.new(0.473934948, 0, 0, 36)
LocalPlayerName.ZIndex = 2
LocalPlayerName.Font = Enum.Font.SourceSans
LocalPlayerName.FontSize = Enum.FontSize.Size14
LocalPlayerName.Text = "LocalPlayer Name: "..LP.Name
LocalPlayerName.TextColor3 = Color3.new(1, 1, 1)
LocalPlayerName.TextSize = 14
Players.Name = "Players"
Players.Parent = memeguiframe
Players.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Players.BorderSizePixel = 0
Players.Position = UDim2.new(0, 0, 0, 96)
Players.Size = UDim2.new(1.00340903, 0, 0, 264)
Players.Visible = false
Players.ZIndex = 2

Ayylmao.Name = "Ayylmao"
Ayylmao.Parent = Players
Ayylmao.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Ayylmao.BorderSizePixel = 0
Ayylmao.Position = UDim2.new(0.749926805, 0, 0, 20)
Ayylmao.Size = UDim2.new(0.239130437, 0, 0, 18)
Ayylmao.ZIndex = 2
Ayylmao.Font = Enum.Font.SourceSans
Ayylmao.FontSize = Enum.FontSize.Size14
Ayylmao.Text = "AYYLMAO"
Ayylmao.TextColor3 = Color3.new(1, 1, 1)
Ayylmao.TextSize = 14

BTools.Name = "BTools"
BTools.Parent = Players
BTools.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
BTools.BorderSizePixel = 0
BTools.Position = UDim2.new(0.00999999978, 0, 0, 40)
BTools.Size = UDim2.new(0.239130437, 0, 0, 18)
BTools.ZIndex = 2
BTools.Font = Enum.Font.SourceSans
BTools.FontSize = Enum.FontSize.Size14
BTools.Text = "BTOOLS"
BTools.TextColor3 = Color3.new(1, 1, 1)
BTools.TextSize = 14

Blackhole.Name = "Blackhole"
Blackhole.Parent = Players
Blackhole.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Blackhole.BorderSizePixel = 0
Blackhole.Position = UDim2.new(0.501999974, 0, 0, 140)
Blackhole.Size = UDim2.new(0.239130437, 0, 0, 18)
Blackhole.ZIndex = 2
Blackhole.Font = Enum.Font.SourceSans
Blackhole.FontSize = Enum.FontSize.Size14
Blackhole.Text = "BLACKHOLE"
Blackhole.TextColor3 = Color3.new(1, 1, 1)
Blackhole.TextSize = 14

Bleach.Name = "Bleach"
Bleach.Parent = Players
Bleach.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Bleach.BorderSizePixel = 0
Bleach.Position = UDim2.new(0.00999999978, 0, 0, 80)
Bleach.Size = UDim2.new(0.239130437, 0, 0, 18)
Bleach.ZIndex = 2
Bleach.Font = Enum.Font.SourceSans
Bleach.FontSize = Enum.FontSize.Size14
Bleach.Text = "HANG"
Bleach.TextColor3 = Color3.new(1, 1, 1)
Bleach.TextSize = 14

Chamber.Name = "Chamber"
Chamber.Parent = Players
Chamber.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Chamber.BorderSizePixel = 0
Chamber.Position = UDim2.new(0.501999974, 0, 0, 160)
Chamber.Size = UDim2.new(0.239130437, 0, 0, 18)
Chamber.ZIndex = 2
Chamber.Font = Enum.Font.SourceSans
Chamber.FontSize = Enum.FontSize.Size14
Chamber.Text = "GAS CHAMBER"
Chamber.TextColor3 = Color3.new(1, 1, 1)
Chamber.TextSize = 14

Bring.Name = "Bring"
Bring.Parent = Players
Bring.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Bring.BorderSizePixel = 0
Bring.Position = UDim2.new(0.501999974, 0, 0, 180)
Bring.Size = UDim2.new(0.239130437, 0, 0, 18)
Bring.ZIndex = 2
Bring.Font = Enum.Font.SourceSans
Bring.FontSize = Enum.FontSize.Size14
Bring.Text = "BRING"
Bring.TextColor3 = Color3.new(1, 1, 1)
Bring.TextSize = 14

CTools.Name = "CTools"
CTools.Parent = Players
CTools.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
CTools.BorderSizePixel = 0
CTools.Position = UDim2.new(0.749926805, 0, 0, 160)
CTools.Size = UDim2.new(0.239130437, 0, 0, 18)
CTools.ZIndex = 2
CTools.Font = Enum.Font.SourceSans
CTools.FontSize = Enum.FontSize.Size14
CTools.Text = "CLONE TOOLS"
CTools.TextColor3 = Color3.new(1, 1, 1)
CTools.TextSize = 14

Clone.Name = "Clone"
Clone.Parent = Players
Clone.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Clone.BorderSizePixel = 0
Clone.Position = UDim2.new(0.256999999, 0, 0, 40)
Clone.Size = UDim2.new(0.239130437, 0, 0, 18)
Clone.ZIndex = 2
Clone.Font = Enum.Font.SourceSans
Clone.FontSize = Enum.FontSize.Size14
Clone.Text = "CLONE"
Clone.TextColor3 = Color3.new(1, 1, 1)
Clone.TextSize = 14

Crash.Name = "Crash"
Crash.Parent = Players
Crash.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Crash.BorderSizePixel = 0
Crash.Position = UDim2.new(0.00999999978, 0, 0, 20)
Crash.Size = UDim2.new(0.239130437, 0, 0, 18)
Crash.ZIndex = 2
Crash.Font = Enum.Font.SourceSans
Crash.FontSize = Enum.FontSize.Size14
Crash.Text = "CRASH"
Crash.TextColor3 = Color3.new(1, 1, 1)
Crash.TextSize = 14

Crucify.Name = "Crucify"
Crucify.Parent = Players
Crucify.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Crucify.BorderSizePixel = 0
Crucify.Position = UDim2.new(0.501999974, 0, 0, 120)
Crucify.Size = UDim2.new(0.239130437, 0, 0, 18)
Crucify.ZIndex = 2
Crucify.Font = Enum.Font.SourceSans
Crucify.FontSize = Enum.FontSize.Size14
Crucify.Text = "CRUCIFY"
Crucify.TextColor3 = Color3.new(1, 1, 1)
Crucify.TextSize = 14

Dick.Name = "Dick"
Dick.Parent = Players
Dick.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Dick.BorderSizePixel = 0
Dick.Position = UDim2.new(0.256999999, 0, 0, 80)
Dick.Size = UDim2.new(0.239130437, 0, 0, 18)
Dick.ZIndex = 2
Dick.Font = Enum.Font.SourceSans
Dick.FontSize = Enum.FontSize.Size14
Dick.Text = "WEINER"
Dick.TextColor3 = Color3.new(1, 1, 1)
Dick.TextSize = 14

Duck.Name = "Duck"
Duck.Parent = Players
Duck.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Duck.BorderSizePixel = 0
Duck.Position = UDim2.new(0.501999974, 0, 0, 60)
Duck.Size = UDim2.new(0.239130437, 0, 0, 18)
Duck.ZIndex = 2
Duck.Font = Enum.Font.SourceSans
Duck.FontSize = Enum.FontSize.Size14
Duck.Text = "DUCK"
Duck.TextColor3 = Color3.new(1, 1, 1)
Duck.TextSize = 14

FF.Name = "FF"
FF.Parent = Players
FF.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
FF.BorderSizePixel = 0
FF.Position = UDim2.new(0.501999974, 0, 0, 20)
FF.Size = UDim2.new(0.239130437, 0, 0, 18)
FF.ZIndex = 2
FF.Font = Enum.Font.SourceSans
FF.FontSize = Enum.FontSize.Size14
FF.Text = "FORCEFIELD"
FF.TextColor3 = Color3.new(1, 1, 1)
FF.TextSize = 14

Famous.Name = "Famous"
Famous.Parent = Players
Famous.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Famous.BorderSizePixel = 0
Famous.Position = UDim2.new(0.256999999, 0, 0, 100)
Famous.Size = UDim2.new(0.239130437, 0, 0, 18)
Famous.ZIndex = 2
Famous.Font = Enum.Font.SourceSans
Famous.FontSize = Enum.FontSize.Size14
Famous.Text = "FAMOUS"
Famous.TextColor3 = Color3.new(1, 1, 1)
Famous.TextSize = 14

Fart.Name = "Fart"
Fart.Parent = Players
Fart.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Fart.BorderSizePixel = 0
Fart.Position = UDim2.new(0.00999999978, 0, 0, 140)
Fart.Size = UDim2.new(0.239130437, 0, 0, 18)
Fart.ZIndex = 2
Fart.Font = Enum.Font.SourceSans
Fart.FontSize = Enum.FontSize.Size14
Fart.Text = "FART"
Fart.TextColor3 = Color3.new(1, 1, 1)
Fart.TextSize = 14

Freeze.Name = "Freeze"
Freeze.Parent = Players
Freeze.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Freeze.BorderSizePixel = 0
Freeze.Position = UDim2.new(0.501999974, 0, 0, 100)
Freeze.Size = UDim2.new(0.239130437, 0, 0, 18)
Freeze.ZIndex = 2
Freeze.Font = Enum.Font.SourceSans
Freeze.FontSize = Enum.FontSize.Size14
Freeze.Text = "FREEZE"
Freeze.TextColor3 = Color3.new(1, 1, 1)
Freeze.TextSize = 14

Ghost.Name = "Ghost"
Ghost.Parent = Players
Ghost.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Ghost.BorderSizePixel = 0
Ghost.Position = UDim2.new(0.00999999978, 0, 0, 120)
Ghost.Size = UDim2.new(0.239130437, 0, 0, 18)
Ghost.ZIndex = 2
Ghost.Font = Enum.Font.SourceSans
Ghost.FontSize = Enum.FontSize.Size14
Ghost.Text = "GHOST"
Ghost.TextColor3 = Color3.new(1, 1, 1)
Ghost.TextSize = 14

Giant.Name = "Giant"
Giant.Parent = Players
Giant.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Giant.BorderSizePixel = 0
Giant.Position = UDim2.new(0.501999974, 0, 0, 40)
Giant.Size = UDim2.new(0.239130437, 0, 0, 18)
Giant.ZIndex = 2
Giant.Font = Enum.Font.SourceSans
Giant.FontSize = Enum.FontSize.Size14
Giant.Text = "GIANT"
Giant.TextColor3 = Color3.new(1, 1, 1)
Giant.TextSize = 14

Goto.Name = "Goto"
Goto.Parent = Players
Goto.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Goto.BorderSizePixel = 0
Goto.Position = UDim2.new(0.256999999, 0, 0, 180)
Goto.Size = UDim2.new(0.239130437, 0, 0, 18)
Goto.ZIndex = 2
Goto.Font = Enum.Font.SourceSans
Goto.FontSize = Enum.FontSize.Size14
Goto.Text = "GOTO"
Goto.TextColor3 = Color3.new(1, 1, 1)
Goto.TextSize = 14

Invisible.Name = "Invisible"
Invisible.Parent = Players
Invisible.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Invisible.BorderSizePixel = 0
Invisible.Position = UDim2.new(0.00999999978, 0, 0, 100)
Invisible.Size = UDim2.new(0.239130437, 0, 0, 18)
Invisible.ZIndex = 2
Invisible.Font = Enum.Font.SourceSans
Invisible.FontSize = Enum.FontSize.Size14
Invisible.Text = "INVISIBLE"
Invisible.TextColor3 = Color3.new(1, 1, 1)
Invisible.TextSize = 14

Jail.Name = "Jail"
Jail.Parent = Players
Jail.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Jail.BorderSizePixel = 0
Jail.Position = UDim2.new(0.501999974, 0, 0, 80)
Jail.Size = UDim2.new(0.239130437, 0, 0, 18)
Jail.ZIndex = 2
Jail.Modal = true
Jail.Font = Enum.Font.SourceSans
Jail.FontSize = Enum.FontSize.Size14
Jail.Text = "JAIL"
Jail.TextColor3 = Color3.new(1, 1, 1)
Jail.TextSize = 14

KKK.Name = "KKK"
KKK.Parent = Players
KKK.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
KKK.BorderSizePixel = 0
KKK.Position = UDim2.new(0.00999999978, 0, 0, 180)
KKK.Size = UDim2.new(0.239130437, 0, 0, 18)
KKK.ZIndex = 2
KKK.Font = Enum.Font.SourceSans
KKK.FontSize = Enum.FontSize.Size14
KKK.Text = "KICK"
KKK.TextColor3 = Color3.new(1, 1, 1)
KKK.TextSize = 14

Kidnap.Name = "Kidnap"
Kidnap.Parent = Players
Kidnap.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Kidnap.BorderSizePixel = 0
Kidnap.Position = UDim2.new(0.749926805, 0, 0, 180)
Kidnap.Size = UDim2.new(0.239130437, 0, 0, 18)
Kidnap.ZIndex = 2
Kidnap.Font = Enum.Font.SourceSans
Kidnap.FontSize = Enum.FontSize.Size14
Kidnap.Text = "KIDNAP"
Kidnap.TextColor3 = Color3.new(1, 1, 1)
Kidnap.TextSize = 14

Kill.Name = "Kill"
Kill.Parent = Players
Kill.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0.256999999, 0, 0, 20)
Kill.Size = UDim2.new(0.239130437, 0, 0, 18)
Kill.ZIndex = 2
Kill.Font = Enum.Font.SourceSans
Kill.FontSize = Enum.FontSize.Size14
Kill.Text = "KILL"
Kill.TextColor3 = Color3.new(1, 1, 1)
Kill.TextSize = 14

Light.Name = "Light"
Light.Parent = Players
Light.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Light.BorderSizePixel = 0
Light.Position = UDim2.new(0.749926805, 0, 0, 120)
Light.Size = UDim2.new(0.239130437, 0, 0, 18)
Light.ZIndex = 2
Light.Font = Enum.Font.SourceSans
Light.FontSize = Enum.FontSize.Size14
Light.Text = "DEATH SPINNER"
Light.TextColor3 = Color3.new(1, 1, 1)
Light.TextSize = 14

MLG.Name = "MLG"
MLG.Parent = Players
MLG.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
MLG.BorderSizePixel = 0
MLG.Position = UDim2.new(0.00999999978, 0, 0, 60)
MLG.Size = UDim2.new(0.239130437, 0, 0, 18)
MLG.ZIndex = 2
MLG.Font = Enum.Font.SourceSans
MLG.FontSize = Enum.FontSize.Size14
MLG.Text = "MLG"
MLG.TextColor3 = Color3.new(1, 1, 1)
MLG.TextSize = 14

Midget.Name = "Midget"
Midget.Parent = Players
Midget.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Midget.BorderSizePixel = 0
Midget.Position = UDim2.new(0.749926805, 0, 0, 40)
Midget.Size = UDim2.new(0.239130437, 0, 0, 18)
Midget.ZIndex = 2
Midget.Font = Enum.Font.SourceSans
Midget.FontSize = Enum.FontSize.Size14
Midget.Text = "MIDGET"
Midget.TextColor3 = Color3.new(1, 1, 1)
Midget.TextSize = 14

Noob.Name = "Noob"
Noob.Parent = Players
Noob.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Noob.BorderSizePixel = 0
Noob.Position = UDim2.new(0.749926805, 0, 0, 60)
Noob.Size = UDim2.new(0.239130437, 0, 0, 18)
Noob.ZIndex = 2
Noob.Font = Enum.Font.SourceSans
Noob.FontSize = Enum.FontSize.Size14
Noob.Text = "NOOB"
Noob.TextColor3 = Color3.new(1, 1, 1)
Noob.TextSize = 14

PlayerName.Name = "PlayerName"
PlayerName.Parent = Players
PlayerName.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PlayerName.BorderColor3 = Color3.new(1, 1, 1)
PlayerName.Position = UDim2.new(0.0110826613, 0, 0, 234)
PlayerName.Size = UDim2.new(0.975274205, 0, 0, 22)
PlayerName.ZIndex = 3
PlayerName.Font = Enum.Font.SourceSans
PlayerName.FontSize = Enum.FontSize.Size14
PlayerName.Text = " Player Name "
PlayerName.TextColor3 = Color3.new(1, 1, 1)
PlayerName.TextSize = 14
PlayerName.TextXAlignment = Enum.TextXAlignment.Left

Poison.Name = "Poison"
Poison.Parent = Players
Poison.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Poison.BorderSizePixel = 0
Poison.Position = UDim2.new(0.256999999, 0, 0, 160)
Poison.Size = UDim2.new(0.239130437, 0, 0, 18)
Poison.ZIndex = 2
Poison.Font = Enum.Font.SourceSans
Poison.FontSize = Enum.FontSize.Size14
Poison.Text = "POISON"
Poison.TextColor3 = Color3.new(1, 1, 1)
Poison.TextSize = 14

Puke.Name = "Puke"
Puke.Parent = Players
Puke.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Puke.BorderSizePixel = 0
Puke.Position = UDim2.new(0.256999999, 0, 0, 120)
Puke.Size = UDim2.new(0.239130437, 0, 0, 18)
Puke.ZIndex = 2
Puke.Font = Enum.Font.SourceSans
Puke.FontSize = Enum.FontSize.Size14
Puke.Text = "PUKE"
Puke.TextColor3 = Color3.new(1, 1, 1)
Puke.TextSize = 14

Punish.Name = "Punish"
Punish.Parent = Players
Punish.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Punish.BorderSizePixel = 0
Punish.Position = UDim2.new(0.256999999, 0, 0, 140)
Punish.Size = UDim2.new(0.239130437, 0, 0, 18)
Punish.ZIndex = 2
Punish.Font = Enum.Font.SourceSans
Punish.FontSize = Enum.FontSize.Size14
Punish.Text = "PUNISH"
Punish.TextColor3 = Color3.new(1, 1, 1)
Punish.TextSize = 14

Rape.Name = "Rape"
Rape.Parent = Players
Rape.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Rape.BorderSizePixel = 0
Rape.Position = UDim2.new(0.749926805, 0, 0, 100)
Rape.Size = UDim2.new(0.239130437, 0, 0, 18)
Rape.ZIndex = 2
Rape.Font = Enum.Font.SourceSans
Rape.FontSize = Enum.FontSize.Size14
Rape.Text = "RAPE"
Rape.TextColor3 = Color3.new(1, 1, 1)
Rape.TextSize = 14

Shrek.Name = "Shrek"
Shrek.Parent = Players
Shrek.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Shrek.BorderSizePixel = 0
Shrek.Position = UDim2.new(0.256999999, 0, 0, 60)
Shrek.Size = UDim2.new(0.239130437, 0, 0, 18)
Shrek.ZIndex = 2
Shrek.Font = Enum.Font.SourceSans
Shrek.FontSize = Enum.FontSize.Size14
Shrek.Text = "SHREK"
Shrek.TextColor3 = Color3.new(1, 1, 1)
Shrek.TextSize = 14

StickMan.Name = "StickMan"
StickMan.Parent = Players
StickMan.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
StickMan.BorderSizePixel = 0
StickMan.Position = UDim2.new(0.00999999978, 0, 0, 160)
StickMan.Size = UDim2.new(0.239130437, 0, 0, 18)
StickMan.ZIndex = 2
StickMan.Font = Enum.Font.SourceSans
StickMan.FontSize = Enum.FontSize.Size14
StickMan.Text = "STICK MAN"
StickMan.TextColor3 = Color3.new(1, 1, 1)
StickMan.TextSize = 14

Stun.Name = "Stun"
Stun.Parent = Players
Stun.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Stun.BorderSizePixel = 0
Stun.Position = UDim2.new(0.749926805, 0, 0, 80)
Stun.Size = UDim2.new(0.239130437, 0, 0, 18)
Stun.ZIndex = 2
Stun.Font = Enum.Font.SourceSans
Stun.FontSize = Enum.FontSize.Size14
Stun.Text = "STUN"
Stun.TextColor3 = Color3.new(1, 1, 1)
Stun.TextSize = 14

DancingHotdog.Name = "Weed"
DancingHotdog.Parent = Players
DancingHotdog.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
DancingHotdog.BorderSizePixel = 0
DancingHotdog.Position = UDim2.new(0.749926805, 0, 0, 140)
DancingHotdog.Size = UDim2.new(0.239130437, 0, 0, 18)
DancingHotdog.ZIndex = 2
DancingHotdog.Font = Enum.Font.SourceSans
DancingHotdog.FontSize = Enum.FontSize.Size14
DancingHotdog.Text = "DANCING HOTDOG"
DancingHotdog.TextColor3 = Color3.new(1, 1, 1)
DancingHotdog.TextSize = 14

PlayerNameBack.Name = "PlayerNameBack"
PlayerNameBack.Parent = Players
PlayerNameBack.BackgroundColor3 = Color3.new(0.270588, 0.352941, 0.392157)
PlayerNameBack.BorderSizePixel = 0
PlayerNameBack.Position = UDim2.new(0, 0, 0, 228)
PlayerNameBack.Size = UDim2.new(1.0011338, 0, 0, 36)
PlayerNameBack.ZIndex = 2

LocalPlayer.Name = "LocalPlayer"
LocalPlayer.Parent = memeguiframe
LocalPlayer.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
LocalPlayer.BorderSizePixel = 0
LocalPlayer.Position = UDim2.new(0, 0, 0, 96)
LocalPlayer.Size = UDim2.new(1.00340903, 0, 0, 264)
LocalPlayer.Visible = false
LocalPlayer.ZIndex = 2

LocalPlayerValueTextBack.Name = "LocalPlayerValueTextBack"
LocalPlayerValueTextBack.Parent = LocalPlayer
LocalPlayerValueTextBack.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
LocalPlayerValueTextBack.BorderSizePixel = 0
LocalPlayerValueTextBack.Position = UDim2.new(0, 0, 0, 228)
LocalPlayerValueTextBack.Size = UDim2.new(1.0011338, 0, 0, 36)
LocalPlayerValueTextBack.ZIndex = 2

local LocalPlayerValue = Instance.new("TextBox")
local LocalPlayerText = Instance.new("TextBox")
LocalPlayerValue.Name = "ServerValue"
LocalPlayerValue.Parent = LocalPlayer
LocalPlayerValue.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
LocalPlayerValue.BorderColor3 = Color3.new(1, 1, 1)
LocalPlayerValue.Position = UDim2.new(0.0147769582, 0, 0, 234)
LocalPlayerValue.Size = UDim2.new(0.479999989, 0, 0, 22)
LocalPlayerValue.ZIndex = 2
LocalPlayerValue.Font = Enum.Font.SourceSans
LocalPlayerValue.FontSize = Enum.FontSize.Size14
LocalPlayerValue.Text = "  Value"
LocalPlayerValue.TextColor3 = Color3.new(1, 1, 1)
LocalPlayerValue.TextSize = 14
LocalPlayerValue.TextXAlignment = Enum.TextXAlignment.Left

LocalPlayerText.Name = "ServerText"
LocalPlayerText.Parent = LocalPlayer
LocalPlayerText.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
LocalPlayerText.BorderColor3 = Color3.new(1, 1, 1)
LocalPlayerText.Position = UDim2.new(0.509805083, 0, 0, 234)
LocalPlayerText.Size = UDim2.new(0.479999989, 0, 0, 22)
LocalPlayerText.ZIndex = 2
LocalPlayerText.Font = Enum.Font.SourceSans
LocalPlayerText.FontSize = Enum.FontSize.Size14
LocalPlayerText.Text = "  Text"
LocalPlayerText.TextColor3 = Color3.new(1, 1, 1)
LocalPlayerText.TextSize = 14
LocalPlayerText.TextXAlignment = Enum.TextXAlignment.Left

Disguise.Name = "Disguise"
Disguise.Parent = LocalPlayer
Disguise.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Disguise.BorderSizePixel = 0
Disguise.Position = UDim2.new(0.753620982, 0, 0, 56)
Disguise.Size = UDim2.new(0.239130437, 0, 0, 18)
Disguise.ZIndex = 2
Disguise.Font = Enum.Font.SourceSans
Disguise.FontSize = Enum.FontSize.Size14
Disguise.Text = "DISGUISE"
Disguise.TextColor3 = Color3.new(1, 1, 1)
Disguise.TextSize = 14

Float.Name = "Float"
Float.Parent = LocalPlayer
Float.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Float.BorderSizePixel = 0
Float.Position = UDim2.new(0.753620982, 0, 0, 36)
Float.Size = UDim2.new(0.239130437, 0, 0, 18)
Float.ZIndex = 2
Float.Font = Enum.Font.SourceSans
Float.FontSize = Enum.FontSize.Size14
Float.Text = "ANTI-FILTER"
Float.TextColor3 = Color3.new(1, 1, 1)
Float.TextSize = 14

Fly.Name = "Fly"
Fly.Parent = LocalPlayer
Fly.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.00738847908, 0, 0, 36)
Fly.Size = UDim2.new(0.239130437, 0, 0, 18)
Fly.ZIndex = 2
Fly.Font = Enum.Font.SourceSans
Fly.FontSize = Enum.FontSize.Size14
Fly.Text = "FLY"
Fly.TextColor3 = Color3.new(1, 1, 1)
Fly.TextSize = 14

Freecam.Name = "Freecam"
Freecam.Parent = LocalPlayer
Freecam.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Freecam.BorderSizePixel = 0
Freecam.Position = UDim2.new(0.00738847908, 0, 0, 76)
Freecam.Size = UDim2.new(0.239130437, 0, 0, 18)
Freecam.ZIndex = 2
Freecam.Font = Enum.Font.SourceSans
Freecam.FontSize = Enum.FontSize.Size14
Freecam.Text = "ANTI-TOUCH"
Freecam.TextColor3 = Color3.new(1, 1, 1)
Freecam.TextSize = 14

SilentGod.Name = "Glicthy"
SilentGod.Parent = LocalPlayer
SilentGod.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
SilentGod.BorderSizePixel = 0
SilentGod.Position = UDim2.new(0.254902542, 0, 0, 56)
SilentGod.Size = UDim2.new(0.239130437, 0, 0, 18)
SilentGod.ZIndex = 2
SilentGod.Font = Enum.Font.SourceSans
SilentGod.FontSize = Enum.FontSize.Size14
SilentGod.Text = "SILENT GOD"
SilentGod.TextColor3 = Color3.new(1, 1, 1)
SilentGod.TextSize = 14
local ShiftSprint = Instance.new("TextButton")
ShiftSprint.Name = "ShiftSprint"
ShiftSprint.Parent = LocalPlayer
ShiftSprint.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
ShiftSprint.BorderSizePixel = 0
ShiftSprint.Position = UDim2.new(0.00738847908, 0, 0, 14)
ShiftSprint.Size = UDim2.new(0.985000014, 0, 0, 18)
ShiftSprint.ZIndex = 2
ShiftSprint.Font = Enum.Font.SourceSans
ShiftSprint.FontSize = Enum.FontSize.Size14
ShiftSprint.Text = "SHIFT TO SPRINT: OFF"
ShiftSprint.TextColor3 = Color3.new(1, 1, 1)
ShiftSprint.TextSize = 14

Jesusfly.Name = "Jesusfly"
Jesusfly.Parent = LocalPlayer
Jesusfly.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Jesusfly.BorderSizePixel = 0
Jesusfly.Position = UDim2.new(0.00738847908, 0, 0, 56)
Jesusfly.Size = UDim2.new(0.239130437, 0, 0, 18)
Jesusfly.ZIndex = 2
Jesusfly.Font = Enum.Font.SourceSans
Jesusfly.FontSize = Enum.FontSize.Size14
Jesusfly.Text = "JESUSFLY"
Jesusfly.TextColor3 = Color3.new(1, 1, 1)
Jesusfly.TextSize = 14

Jumppower.Name = "Jumppower"
Jumppower.Parent = LocalPlayer
Jumppower.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Jumppower.BorderSizePixel = 0
Jumppower.Position = UDim2.new(0.00700000022, 0, 0, 160)
Jumppower.Size = UDim2.new(0.985000014, 0, 0, 18)
Jumppower.ZIndex = 2
Jumppower.Font = Enum.Font.SourceSans
Jumppower.FontSize = Enum.FontSize.Size14
Jumppower.Text = "JUMPPOWER"
Jumppower.TextColor3 = Color3.new(1, 1, 1)
Jumppower.TextSize = 14

Name.Name = "Name"
Name.Parent = LocalPlayer
Name.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.00700000022, 0, 0, 200)
Name.Size = UDim2.new(0.985000014, 0, 0, 18)
Name.ZIndex = 2
Name.Font = Enum.Font.SourceSans
Name.FontSize = Enum.FontSize.Size14
Name.Text = "NAME"
Name.TextColor3 = Color3.new(1, 1, 1)
Name.TextSize = 14

Noclip.Name = "Noclip"
Noclip.Parent = LocalPlayer
Noclip.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0.254902542, 0, 0, 36)
Noclip.Size = UDim2.new(0.239130437, 0, 0, 18)
Noclip.ZIndex = 2
Noclip.Font = Enum.Font.SourceSans
Noclip.FontSize = Enum.FontSize.Size14
Noclip.Text = "NOCLIP"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 14

Overpower.Name = "Overpower"
Overpower.Parent = LocalPlayer
Overpower.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Overpower.BorderSizePixel = 0
Overpower.Position = UDim2.new(0.506108224, 0, 0, 36)
Overpower.Size = UDim2.new(0.239130437, 0, 0, 18)
Overpower.ZIndex = 2
Overpower.Font = Enum.Font.SourceSans
Overpower.FontSize = Enum.FontSize.Size14
Overpower.Text = "OVERPOWER"
Overpower.TextColor3 = Color3.new(1, 1, 1)
Overpower.TextSize = 14

SuperJump.Name = "SuperJump"
SuperJump.Parent = LocalPlayer
SuperJump.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
SuperJump.BorderSizePixel = 0
SuperJump.Position = UDim2.new(0.753620982, 0, 0, 76)
SuperJump.Size = UDim2.new(0.239130437, 0, 0, 18)
SuperJump.ZIndex = 2
SuperJump.Font = Enum.Font.SourceSans
SuperJump.FontSize = Enum.FontSize.Size14
SuperJump.Text = "SUPERJUMP"
SuperJump.TextColor3 = Color3.new(1, 1, 1)
SuperJump.TextSize = 14

Stability.Name = "Stability"
Stability.Parent = LocalPlayer
Stability.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Stability.BorderSizePixel = 0
Stability.Position = UDim2.new(0.506108224, 0, 0, 76)
Stability.Size = UDim2.new(0.239130437, 0, 0, 18)
Stability.ZIndex = 2
Stability.Font = Enum.Font.SourceSans
Stability.FontSize = Enum.FontSize.Size14
Stability.Text = "STABILITY"
Stability.TextColor3 = Color3.new(1, 1, 1)
Stability.TextSize = 14

Sanic.Name = "Sanic"
Sanic.Parent = LocalPlayer
Sanic.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Sanic.BorderSizePixel = 0
Sanic.Position = UDim2.new(0.254902542, 0, 0, 76)
Sanic.Size = UDim2.new(0.239130437, 0, 0, 18)
Sanic.ZIndex = 2
Sanic.Font = Enum.Font.SourceSans
Sanic.FontSize = Enum.FontSize.Size14
Sanic.Text = "SANIC"
Sanic.TextColor3 = Color3.new(1, 1, 1)
Sanic.TextSize = 14

StartChathook.Name = "StartChathook"
StartChathook.Parent = LocalPlayer
StartChathook.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
StartChathook.BorderSizePixel = 0
StartChathook.Position = UDim2.new(0.00738847908, 0, 0, 98)
StartChathook.Size = UDim2.new(0.985000014, 0, 0, 38)
StartChathook.ZIndex = 2
StartChathook.Font = Enum.Font.SourceSans
StartChathook.FontSize = Enum.FontSize.Size14
StartChathook.Text = "START CHATHOOK"
StartChathook.TextColor3 = Color3.new(1, 1, 1)
StartChathook.TextSize = 14

Swim.Name = "Swim"
Swim.Parent = LocalPlayer
Swim.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Swim.BorderSizePixel = 0
Swim.Position = UDim2.new(0.506108224, 0, 0, 56)
Swim.Size = UDim2.new(0.239130437, 0, 0, 18)
Swim.ZIndex = 2
Swim.Font = Enum.Font.SourceSans
Swim.FontSize = Enum.FontSize.Size14
Swim.Text = "SWIM"
Swim.TextColor3 = Color3.new(1, 1, 1)
Swim.TextSize = 14

Tag.Name = "Tag"
Tag.Parent = LocalPlayer
Tag.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Tag.BorderSizePixel = 0
Tag.Position = UDim2.new(0.00700000022, 0, 0, 180)
Tag.Size = UDim2.new(0.985000014, 0, 0, 18)
Tag.ZIndex = 2
Tag.Font = Enum.Font.SourceSans
Tag.FontSize = Enum.FontSize.Size14
Tag.Text = "RAINBOW TAG"
Tag.TextColor3 = Color3.new(1, 1, 1)
Tag.TextSize = 14

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = LocalPlayer
Walkspeed.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Walkspeed.BorderSizePixel = 0
Walkspeed.Position = UDim2.new(0.00738847908, 0, 0, 140)
Walkspeed.Size = UDim2.new(0.985000014, 0, 0, 18)
Walkspeed.ZIndex = 2
Walkspeed.Font = Enum.Font.SourceSans
Walkspeed.FontSize = Enum.FontSize.Size14
Walkspeed.Text = "WALKSPEED"
Walkspeed.TextColor3 = Color3.new(1, 1, 1)
Walkspeed.TextSize = 14

Server.Name = "Server"
Server.Parent = memeguiframe
Server.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Server.BorderSizePixel = 0
Server.Position = UDim2.new(0, 0, 0, 96)
Server.Size = UDim2.new(1.00340903, 0, 0, 264)
Server.Visible = false
Server.ZIndex = 2

ServerValueTextBack.Name = "ServerValueTextBack"
ServerValueTextBack.Parent = Server
ServerValueTextBack.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ServerValueTextBack.BorderSizePixel = 0
ServerValueTextBack.Position = UDim2.new(0, 0, 0, 228)
ServerValueTextBack.Size = UDim2.new(1.0011338, 0, 0, 36)
ServerValueTextBack.ZIndex = 2

local ServerValue = Instance.new("TextBox")
local ServerText = Instance.new("TextBox")
ServerValue.Name = "ServerValue"
ServerValue.Parent = Server
ServerValue.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ServerValue.BorderColor3 = Color3.new(1, 1, 1)
ServerValue.Position = UDim2.new(0.0147769582, 0, 0, 234)
ServerValue.Size = UDim2.new(0.479999989, 0, 0, 22)
ServerValue.ZIndex = 2
ServerValue.Font = Enum.Font.SourceSans
ServerValue.FontSize = Enum.FontSize.Size14
ServerValue.Text = "  Value"
ServerValue.TextColor3 = Color3.new(1, 1, 1)
ServerValue.TextSize = 14
ServerValue.TextXAlignment = Enum.TextXAlignment.Left

ServerText.Name = "ServerText"
ServerText.Parent = Server
ServerText.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ServerText.BorderColor3 = Color3.new(1, 1, 1)
ServerText.Position = UDim2.new(0.509805083, 0, 0, 234)
ServerText.Size = UDim2.new(0.479999989, 0, 0, 22)
ServerText.ZIndex = 2
ServerText.Font = Enum.Font.SourceSans
ServerText.FontSize = Enum.FontSize.Size14
ServerText.Text = "  Text/Pitch"
ServerText.TextColor3 = Color3.new(1, 1, 1)
ServerText.TextSize = 14
ServerText.TextXAlignment = Enum.TextXAlignment.Left

_666.Name = "666"
_666.Parent = Server
_666.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
_666.BorderSizePixel = 0
_666.Position = UDim2.new(0.0110826613, 0, 0, 38)
_666.Size = UDim2.new(0.239130437, 0, 0, 18)
_666.ZIndex = 2
_666.Font = Enum.Font.SourceSans
_666.FontSize = Enum.FontSize.Size14
_666.Text = "666"
_666.TextColor3 = Color3.new(1, 1, 1)
_666.TextSize = 14

Anonymous.Name = "Anonymous"
Anonymous.Parent = Server
Anonymous.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Anonymous.BorderSizePixel = 0
Anonymous.Position = UDim2.new(0.0110826613, 0, 0, 98)
Anonymous.Size = UDim2.new(0.239130437, 0, 0, 18)
Anonymous.ZIndex = 2
Anonymous.Font = Enum.Font.SourceSans
Anonymous.FontSize = Enum.FontSize.Size14
Anonymous.Text = "ANONYMOUS"
Anonymous.TextColor3 = Color3.new(1, 1, 1)
Anonymous.TextSize = 14

Bait.Name = "Bait"
Bait.Parent = Server
Bait.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Bait.BorderSizePixel = 0
Bait.Position = UDim2.new(0.506108224, 0, 0, 58)
Bait.Size = UDim2.new(0.239130437, 0, 0, 18)
Bait.ZIndex = 2
Bait.Font = Enum.Font.SourceSans
Bait.FontSize = Enum.FontSize.Size14
Bait.Text = "BAIT"
Bait.TextColor3 = Color3.new(1, 1, 1)
Bait.TextSize = 14

Baseplate.Name = "Baseplate"
Baseplate.Parent = Server
Baseplate.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Baseplate.BorderSizePixel = 0
Baseplate.Position = UDim2.new(0.753624916, 0, 0, 78)
Baseplate.Size = UDim2.new(0.239130437, 0, 0, 18)
Baseplate.ZIndex = 2
Baseplate.Font = Enum.Font.SourceSans
Baseplate.FontSize = Enum.FontSize.Size14
Baseplate.Text = "BASEPLATE"
Baseplate.TextColor3 = Color3.new(1, 1, 1)
Baseplate.TextSize = 14

Bluescreen.Name = "Bluescreen"
Bluescreen.Parent = Server
Bluescreen.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Bluescreen.BorderSizePixel = 0
Bluescreen.Position = UDim2.new(0.258596778, 0, 0, 78)
Bluescreen.Size = UDim2.new(0.239130437, 0, 0, 18)
Bluescreen.ZIndex = 2
Bluescreen.Font = Enum.Font.SourceSans
Bluescreen.FontSize = Enum.FontSize.Size14
Bluescreen.Text = "BLUESCEREEN"
Bluescreen.TextColor3 = Color3.new(1, 1, 1)
Bluescreen.TextSize = 14

DestroyServer.Name = "DestroyServer"
DestroyServer.Parent = Server
DestroyServer.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
DestroyServer.BorderSizePixel = 0
DestroyServer.Position = UDim2.new(0.0149999997, 0, 0, 118)
DestroyServer.Size = UDim2.new(0.975000024, 0, 0, 20)
DestroyServer.ZIndex = 2
DestroyServer.Font = Enum.Font.SourceSans
DestroyServer.FontSize = Enum.FontSize.Size14
DestroyServer.Text = "DESTROY SERVER"
DestroyServer.TextColor3 = Color3.new(1, 1, 1)
DestroyServer.TextSize = 14

Epilepsy.Name = "Epilepsy"
Epilepsy.Parent = Server
Epilepsy.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Epilepsy.BorderSizePixel = 0
Epilepsy.Position = UDim2.new(0.0110826613, 0, 0, 58)
Epilepsy.Size = UDim2.new(0.239130437, 0, 0, 18)
Epilepsy.ZIndex = 2
Epilepsy.Font = Enum.Font.SourceSans
Epilepsy.FontSize = Enum.FontSize.Size14
Epilepsy.Text = "EPILEPSY"
Epilepsy.TextColor3 = Color3.new(1, 1, 1)
Epilepsy.TextSize = 14

Flood.Name = "Flood"
Flood.Parent = Server
Flood.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Flood.BorderSizePixel = 0
Flood.Position = UDim2.new(0.506108224, 0, 0, 78)
Flood.Size = UDim2.new(0.239130437, 0, 0, 18)
Flood.ZIndex = 2
Flood.Font = Enum.Font.SourceSans
Flood.FontSize = Enum.FontSize.Size14
Flood.Text = "FLOOD"
Flood.TextColor3 = Color3.new(1, 1, 1)
Flood.TextSize = 14

Fogend.Name = "Fogend"
Fogend.Parent = Server
Fogend.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Fogend.BorderSizePixel = 0
Fogend.Position = UDim2.new(0.0149999997, 0, 0, 200)
Fogend.Size = UDim2.new(0.975000024, 0, 0, 18)
Fogend.ZIndex = 2
Fogend.Font = Enum.Font.SourceSans
Fogend.FontSize = Enum.FontSize.Size14
Fogend.Text = "FOGEND"
Fogend.TextColor3 = Color3.new(1, 1, 1)
Fogend.TextSize = 14

Gravity.Name = "Gravity"
Gravity.Parent = Server
Gravity.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Gravity.BorderSizePixel = 0
Gravity.Position = UDim2.new(0.0149999997, 0, 0, 180)
Gravity.Size = UDim2.new(0.975000024, 0, 0, 18)
Gravity.ZIndex = 2
Gravity.Font = Enum.Font.SourceSans
Gravity.FontSize = Enum.FontSize.Size14
Gravity.Text = "GRAVITY"
Gravity.TextColor3 = Color3.new(1, 1, 1)
Gravity.TextSize = 14

Harambe.Name = "Harambe"
Harambe.Parent = Server
Harambe.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Harambe.BorderSizePixel = 0
Harambe.Position = UDim2.new(0.753624916, 0, 0, 38)
Harambe.Size = UDim2.new(0.239130437, 0, 0, 18)
Harambe.ZIndex = 2
Harambe.Font = Enum.Font.SourceSans
Harambe.FontSize = Enum.FontSize.Size14
Harambe.Text = "DEAD MEME"
Harambe.TextColor3 = Color3.new(1, 1, 1)
Harambe.TextSize = 14

Music.Name = "Music"
Music.Parent = Server
Music.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Music.BorderSizePixel = 0
Music.Position = UDim2.new(0.0149999997, 0, 0, 140)
Music.Size = UDim2.new(0.975000024, 0, 0, 18)
Music.ZIndex = 2
Music.Font = Enum.Font.SourceSans
Music.FontSize = Enum.FontSize.Size14
Music.Text = "MUSIC"
Music.TextColor3 = Color3.new(1, 1, 1)
Music.TextSize = 14

Nuke.Name = "Nuke"
Nuke.Parent = Server
Nuke.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Nuke.BorderSizePixel = 0
Nuke.Position = UDim2.new(0.258596778, 0, 0, 98)
Nuke.Size = UDim2.new(0.239130437, 0, 0, 18)
Nuke.ZIndex = 2
Nuke.Font = Enum.Font.SourceSans
Nuke.FontSize = Enum.FontSize.Size14
Nuke.Text = "METEOR SHOWER"
Nuke.TextColor3 = Color3.new(1, 1, 1)
Nuke.TextSize = 14

NumberOne.Name = "NumberOne"
NumberOne.Parent = Server
NumberOne.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
NumberOne.BorderSizePixel = 0
NumberOne.Position = UDim2.new(0.0110826613, 0, 0, 78)
NumberOne.Size = UDim2.new(0.239130437, 0, 0, 18)
NumberOne.ZIndex = 2
NumberOne.Font = Enum.Font.SourceSans
NumberOne.FontSize = Enum.FontSize.Size14
NumberOne.Text = "NUMBER ONE"
NumberOne.TextColor3 = Color3.new(1, 1, 1)
NumberOne.TextSize = 14

Purge.Name = "Purge"
Purge.Parent = Server
Purge.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Purge.BorderSizePixel = 0
Purge.Position = UDim2.new(0.506108224, 0, 0, 38)
Purge.Size = UDim2.new(0.239130437, 0, 0, 18)
Purge.ZIndex = 2
Purge.Font = Enum.Font.SourceSans
Purge.FontSize = Enum.FontSize.Size14
Purge.Text = "PURGE"
Purge.TextColor3 = Color3.new(1, 1, 1)
Purge.TextSize = 14

RainingNoobs.Name = "RainingNoobs"
RainingNoobs.Parent = Server
RainingNoobs.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
RainingNoobs.BorderSizePixel = 0
RainingNoobs.Position = UDim2.new(0.506108224, 0, 0, 98)
RainingNoobs.Size = UDim2.new(0.239130437, 0, 0, 18)
RainingNoobs.ZIndex = 2
RainingNoobs.Font = Enum.Font.SourceSans
RainingNoobs.FontSize = Enum.FontSize.Size14
RainingNoobs.Text = "RAINING NOOBS"
RainingNoobs.TextColor3 = Color3.new(1, 1, 1)
RainingNoobs.TextSize = 14

Shutdown.Name = "Shutdown"
Shutdown.Parent = Server
Shutdown.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Shutdown.BorderSizePixel = 0
Shutdown.Position = UDim2.new(0.258596778, 0, 0, 58)
Shutdown.Size = UDim2.new(0.239130437, 0, 0, 18)
Shutdown.ZIndex = 2
Shutdown.Font = Enum.Font.SourceSans
Shutdown.FontSize = Enum.FontSize.Size14
Shutdown.Text = "SHUTDOWN"
Shutdown.TextColor3 = Color3.new(1, 1, 1)
Shutdown.TextSize = 14

Sp00ky.Name = "Sp00ky"
Sp00ky.Parent = Server
Sp00ky.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Sp00ky.BorderSizePixel = 0
Sp00ky.Position = UDim2.new(0.258596778, 0, 0, 38)
Sp00ky.Size = UDim2.new(0.239130437, 0, 0, 18)
Sp00ky.ZIndex = 2
Sp00ky.Font = Enum.Font.SourceSans
Sp00ky.FontSize = Enum.FontSize.Size14
Sp00ky.Text = "RAINBOW WORKSPACE"
Sp00ky.TextColor3 = Color3.new(1, 1, 1)
Sp00ky.TextSize = 14

Spam.Name = "Spam"
Spam.Parent = Server
Spam.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Spam.BorderSizePixel = 0
Spam.Position = UDim2.new(0.0149999997, 0, 0, 160)
Spam.Size = UDim2.new(0.975000024, 0, 0, 18)
Spam.ZIndex = 2
Spam.Font = Enum.Font.SourceSans
Spam.FontSize = Enum.FontSize.Size14
Spam.Text = "SPAM"
Spam.TextColor3 = Color3.new(1, 1, 1)
Spam.TextSize = 14

WIP.Name = "WIP"
WIP.Parent = Server
WIP.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP.BorderSizePixel = 0
WIP.Position = UDim2.new(0.753624916, 0, 0, 98)
WIP.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP.ZIndex = 2
WIP.Font = Enum.Font.SourceSans
WIP.FontSize = Enum.FontSize.Size14
WIP.Text = "WIP"
WIP.TextColor3 = Color3.new(1, 1, 1)
WIP.TextSize = 14

uuhhh.Name = "uuhhh"
uuhhh.Parent = Server
uuhhh.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
uuhhh.BorderSizePixel = 0
uuhhh.Position = UDim2.new(0.753624916, 0, 0, 58)
uuhhh.Size = UDim2.new(0.239130437, 0, 0, 18)
uuhhh.ZIndex = 2
uuhhh.Font = Enum.Font.SourceSans
uuhhh.FontSize = Enum.FontSize.Size14
uuhhh.Text = "UUHHH"
uuhhh.TextColor3 = Color3.new(1, 1, 1)
uuhhh.TextSize = 14

Scripts.Name = "Scripts"
Scripts.Parent = memeguiframe
Scripts.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Scripts.BorderSizePixel = 0
Scripts.Position = UDim2.new(0, 0, 0, 96)
Scripts.Size = UDim2.new(1.00340903, 0, 0, 264)
Scripts.Visible = false
Scripts.ZIndex = 2

ScriptsBack.Name = "ScriptsBack"
ScriptsBack.Parent = Scripts
ScriptsBack.BackgroundColor3 = Color3.new(0.270588, 0.352941, 0.392157)
ScriptsBack.BorderSizePixel = 0
ScriptsBack.Position = UDim2.new(0, 0, 0, 228)
ScriptsBack.Size = UDim2.new(1.0011338, 0, 0, 36)
ScriptsBack.ZIndex = 2

CustomDex.Name = "911Plane"
CustomDex.Parent = Scripts
CustomDex.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
CustomDex.BorderSizePixel = 0
CustomDex.Position = UDim2.new(0.256999999, 0, 0, 20)
CustomDex.Size = UDim2.new(0.239130437, 0, 0, 18)
CustomDex.ZIndex = 2
CustomDex.Font = Enum.Font.SourceSans
CustomDex.FontSize = Enum.FontSize.Size14
CustomDex.Text = "Custom Dex"
CustomDex.TextColor3 = Color3.new(1, 1, 1)
CustomDex.TextSize = 14

ArmCannon.Name = "ArmCannon"
ArmCannon.Parent = Scripts
ArmCannon.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
ArmCannon.BorderSizePixel = 0
ArmCannon.Position = UDim2.new(0.00999999978, 0, 0, 40)
ArmCannon.Size = UDim2.new(0.239130437, 0, 0, 18)
ArmCannon.ZIndex = 2
ArmCannon.Font = Enum.Font.SourceSans
ArmCannon.FontSize = Enum.FontSize.Size14
ArmCannon.Text = "Arm Cannons"
ArmCannon.TextColor3 = Color3.new(1, 1, 1)
ArmCannon.TextSize = 14

Chainsaw.Name = "Chainsaw"
Chainsaw.Parent = Scripts
Chainsaw.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Chainsaw.BorderSizePixel = 0
Chainsaw.Position = UDim2.new(0.749926805, 0, 0, 80)
Chainsaw.Size = UDim2.new(0.239130437, 0, 0, 18)
Chainsaw.ZIndex = 2
Chainsaw.Font = Enum.Font.SourceSans
Chainsaw.FontSize = Enum.FontSize.Size14
Chainsaw.Text = "Chainsaw"
Chainsaw.TextColor3 = Color3.new(1, 1, 1)
Chainsaw.TextSize = 14

WIP9.Name = "WIP9"
WIP9.Parent = Scripts
WIP9.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP9.BorderSizePixel = 0
WIP9.Position = UDim2.new(0.00869565178, 0, 0, 138)
WIP9.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP9.ZIndex = 2
WIP9.Font = Enum.Font.SourceSans
WIP9.FontSize = Enum.FontSize.Size14
WIP9.Text = "RAINING DORITOS"
WIP9.TextColor3 = Color3.new(1, 1, 1)
WIP9.TextSize = 14

DankEngine.Name = "DankEngine"
DankEngine.Parent = Scripts
DankEngine.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
DankEngine.BorderSizePixel = 0
DankEngine.Position = UDim2.new(0.502413988, 0, 0, 20)
DankEngine.Size = UDim2.new(0.239130437, 0, 0, 18)
DankEngine.ZIndex = 2
DankEngine.Font = Enum.Font.SourceSans
DankEngine.FontSize = Enum.FontSize.Size14
DankEngine.Text = "Dank Engine"
DankEngine.TextColor3 = Color3.new(1, 1, 1)
DankEngine.TextSize = 14

DarkTitan.Name = "DarkTitan"
DarkTitan.Parent = Scripts
DarkTitan.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
DarkTitan.BorderSizePixel = 0
DarkTitan.Position = UDim2.new(0.749926805, 0, 0, 60)
DarkTitan.Size = UDim2.new(0.239130437, 0, 0, 18)
DarkTitan.ZIndex = 2
DarkTitan.Font = Enum.Font.SourceSans
DarkTitan.FontSize = Enum.FontSize.Size14
DarkTitan.Text = "Bodyguards"
DarkTitan.TextColor3 = Color3.new(1, 1, 1)
DarkTitan.TextSize = 14

DevUzi.Name = "DevUzi"
DevUzi.Parent = Scripts
DevUzi.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
DevUzi.BorderSizePixel = 0
DevUzi.Position = UDim2.new(0.00999999978, 0, 0, 60)
DevUzi.Size = UDim2.new(0.239130437, 0, 0, 18)
DevUzi.ZIndex = 2
DevUzi.Font = Enum.Font.SourceSans
DevUzi.FontSize = Enum.FontSize.Size14
DevUzi.Text = "Dev Uzi"
DevUzi.TextColor3 = Color3.new(1, 1, 1)
DevUzi.TextSize = 14

Draw.Name = "Draw"
Draw.Parent = Scripts
Draw.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Draw.BorderSizePixel = 0
Draw.Position = UDim2.new(0.256999999, 0, 0, 60)
Draw.Size = UDim2.new(0.239130437, 0, 0, 18)
Draw.ZIndex = 2
Draw.Font = Enum.Font.SourceSans
Draw.FontSize = Enum.FontSize.Size14
Draw.Text = "Draw"
Draw.TextColor3 = Color3.new(1, 1, 1)
Draw.TextSize = 14

ExplodeStick.Name = "ExplodeStick"
ExplodeStick.Parent = Scripts
ExplodeStick.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
ExplodeStick.BorderSizePixel = 0
ExplodeStick.Position = UDim2.new(0.501999974, 0, 0, 40)
ExplodeStick.Size = UDim2.new(0.239130437, 0, 0, 18)
ExplodeStick.ZIndex = 2
ExplodeStick.Font = Enum.Font.SourceSans
ExplodeStick.FontSize = Enum.FontSize.Size14
ExplodeStick.Text = "Explode Stick"
ExplodeStick.TextColor3 = Color3.new(1, 1, 1)
ExplodeStick.TextSize = 14

Jihad.Name = "Jihad"
Jihad.Parent = Scripts
Jihad.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Jihad.BorderSizePixel = 0
Jihad.Position = UDim2.new(0.256999999, 0, 0, 40)
Jihad.Size = UDim2.new(0.239130437, 0, 0, 18)
Jihad.ZIndex = 2
Jihad.Font = Enum.Font.SourceSans
Jihad.FontSize = Enum.FontSize.Size14
Jihad.Text = "Deathmachine"
Jihad.TextColor3 = Color3.new(1, 1, 1)
Jihad.TextSize = 14

LightSaber.Name = "LightSaber"
LightSaber.Parent = Scripts
LightSaber.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
LightSaber.BorderSizePixel = 0
LightSaber.Position = UDim2.new(0.258302569, 0, 0, 80)
LightSaber.Size = UDim2.new(0.239130437, 0, 0, 18)
LightSaber.ZIndex = 2
LightSaber.Font = Enum.Font.SourceSans
LightSaber.FontSize = Enum.FontSize.Size14
LightSaber.Text = "Grab Knife V3"
LightSaber.TextColor3 = Color3.new(1, 1, 1)
LightSaber.TextSize = 14

Overseer.Name = "Overseer"
Overseer.Parent = Scripts
Overseer.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Overseer.BorderSizePixel = 0
Overseer.Position = UDim2.new(0.749926805, 0, 0, 40)
Overseer.Size = UDim2.new(0.239130437, 0, 0, 18)
Overseer.ZIndex = 2
Overseer.Font = Enum.Font.SourceSans
Overseer.FontSize = Enum.FontSize.Size14
Overseer.Text = "Overseer"
Overseer.TextColor3 = Color3.new(1, 1, 1)
Overseer.TextSize = 14

Scythe.Name = "Scythe"
Scythe.Parent = Scripts
Scythe.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Scythe.BorderSizePixel = 0
Scythe.Position = UDim2.new(0.501999974, 0, 0, 60)
Scythe.Size = UDim2.new(0.239130437, 0, 0, 18)
Scythe.ZIndex = 2
Scythe.Font = Enum.Font.SourceSans
Scythe.FontSize = Enum.FontSize.Size14
Scythe.Text = "Scythe"
Scythe.TextColor3 = Color3.new(1, 1, 1)
Scythe.TextSize = 14

SuicideGrenade.Name = "SuicideGrenade"
SuicideGrenade.Parent = Scripts
SuicideGrenade.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
SuicideGrenade.BorderSizePixel = 0
SuicideGrenade.Position = UDim2.new(0.00999999978, 0, 0, 80)
SuicideGrenade.Size = UDim2.new(0.239130437, 0, 0, 18)
SuicideGrenade.ZIndex = 2
SuicideGrenade.Font = Enum.Font.SourceSans
SuicideGrenade.FontSize = Enum.FontSize.Size14
SuicideGrenade.Text = "Suicide Frag"
SuicideGrenade.TextColor3 = Color3.new(1, 1, 1)
SuicideGrenade.TextSize = 14

VaporGun.Name = "VaporGun"
VaporGun.Parent = Scripts
VaporGun.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
VaporGun.BorderSizePixel = 0
VaporGun.Position = UDim2.new(0.00999999978, 0, 0, 20)
VaporGun.Size = UDim2.new(0.239130437, 0, 0, 18)
VaporGun.ZIndex = 2
VaporGun.Font = Enum.Font.SourceSans
VaporGun.FontSize = Enum.FontSize.Size14
VaporGun.Text = "Cheeseman"
VaporGun.TextColor3 = Color3.new(1, 1, 1)
VaporGun.TextSize = 14

VoidRing.Name = "VoidRing"
VoidRing.Parent = Scripts
VoidRing.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
VoidRing.BorderSizePixel = 0
VoidRing.Position = UDim2.new(0.502413988, 0, 0, 80)
VoidRing.Size = UDim2.new(0.239130437, 0, 0, 18)
VoidRing.ZIndex = 2
VoidRing.Modal = true
VoidRing.Font = Enum.Font.SourceSans
VoidRing.FontSize = Enum.FontSize.Size14
VoidRing.Text = "Black Ghost"
VoidRing.TextColor3 = Color3.new(1, 1, 1)
VoidRing.TextSize = 14

WIP10.Name = "WIP10"
WIP10.Parent = Scripts
WIP10.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP10.BorderSizePixel = 0
WIP10.Position = UDim2.new(0.256521732, 0, 0, 198)
WIP10.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP10.ZIndex = 2
WIP10.Font = Enum.Font.SourceSans
WIP10.FontSize = Enum.FontSize.Size14
WIP10.Text = "Spawn Crossroads"
WIP10.TextColor3 = Color3.new(1, 1, 1)
WIP10.TextSize = 14

WIP11.Name = "WIP11"
WIP11.Parent = Scripts
WIP11.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP11.BorderSizePixel = 0
WIP11.Position = UDim2.new(0.256521732, 0, 0, 158)
WIP11.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP11.ZIndex = 2
WIP11.Font = Enum.Font.SourceSans
WIP11.FontSize = Enum.FontSize.Size14
WIP11.Text = "Tf2 Scout"
WIP11.TextColor3 = Color3.new(1, 1, 1)
WIP11.TextSize = 14

WIP12.Name = "WIP12"
WIP12.Parent = Scripts
WIP12.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP12.BorderSizePixel = 0
WIP12.Position = UDim2.new(0.256521732, 0, 0, 178)
WIP12.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP12.ZIndex = 2
WIP12.Font = Enum.Font.SourceSans
WIP12.FontSize = Enum.FontSize.Size14
WIP12.Text = "Lenny"
WIP12.TextColor3 = Color3.new(1, 1, 1)
WIP12.TextSize = 14

WIP13.Name = "WIP13"
WIP13.Parent = Scripts
WIP13.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP13.BorderSizePixel = 0
WIP13.Position = UDim2.new(0.747826099, 0, 0, 138)
WIP13.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP13.ZIndex = 2
WIP13.Font = Enum.Font.SourceSans
WIP13.FontSize = Enum.FontSize.Size14
WIP13.Text = "Hello Neigbor"
WIP13.TextColor3 = Color3.new(1, 1, 1)
WIP13.TextSize = 14

WIP14.Name = "WIP14"
WIP14.Parent = Scripts
WIP14.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP14.BorderSizePixel = 0
WIP14.Position = UDim2.new(0.00869565178, 0, 0, 198)
WIP14.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP14.ZIndex = 2
WIP14.Font = Enum.Font.SourceSans
WIP14.FontSize = Enum.FontSize.Size14
WIP14.Text = "Terra Blade"
WIP14.TextColor3 = Color3.new(1, 1, 1)
WIP14.TextSize = 14

WIP14_2.Name = "WIP14"
WIP14_2.Parent = Scripts
WIP14_2.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP14_2.BorderSizePixel = 0
WIP14_2.Position = UDim2.new(0.502325594, 0, 0, 158)
WIP14_2.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP14_2.ZIndex = 2
WIP14_2.Font = Enum.Font.SourceSans
WIP14_2.FontSize = Enum.FontSize.Size14
WIP14_2.Text = "Wheelchair"
WIP14_2.TextColor3 = Color3.new(1, 1, 1)
WIP14_2.TextSize = 14

WIP16.Name = "WIP16"
WIP16.Parent = Scripts
WIP16.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP16.BorderSizePixel = 0
WIP16.Position = UDim2.new(0.502325594, 0, 0, 178)
WIP16.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP16.ZIndex = 2
WIP16.Font = Enum.Font.SourceSans
WIP16.FontSize = Enum.FontSize.Size14
WIP16.Text = "Yandere Sword"
WIP16.TextColor3 = Color3.new(1, 1, 1)
WIP16.TextSize = 14

WIP17.Name = "WIP17"
WIP17.Parent = Scripts
WIP17.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP17.BorderSizePixel = 0
WIP17.Position = UDim2.new(0.747826099, 0, 0, 178)
WIP17.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP17.ZIndex = 2
WIP17.Font = Enum.Font.SourceSans
WIP17.FontSize = Enum.FontSize.Size14
WIP17.Text = "Savior Man"
WIP17.TextColor3 = Color3.new(1, 1, 1)
WIP17.TextSize = 14

WIP18.Name = "WIP18"
WIP18.Parent = Scripts
WIP18.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP18.BorderSizePixel = 0
WIP18.Position = UDim2.new(0.747826099, 0, 0, 158)
WIP18.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP18.ZIndex = 2
WIP18.Font = Enum.Font.SourceSans
WIP18.FontSize = Enum.FontSize.Size14
WIP18.Text = "Parasite"
WIP18.TextColor3 = Color3.new(1, 1, 1)
WIP18.TextSize = 14

WIP19.Name = "WIP19"
WIP19.Parent = Scripts
WIP19.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP19.BorderSizePixel = 0
WIP19.Position = UDim2.new(0.256521732, 0, 0, 138)
WIP19.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP19.ZIndex = 2
WIP19.Font = Enum.Font.SourceSans
WIP19.FontSize = Enum.FontSize.Size14
WIP19.Text = "WIP"
WIP19.TextColor3 = Color3.new(1, 1, 1)
WIP19.TextSize = 14

WIP2.Name = "WIP2"
WIP2.Parent = Scripts
WIP2.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP2.BorderSizePixel = 0
WIP2.Position = UDim2.new(0.502325594, 0, 0, 198)
WIP2.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP2.ZIndex = 2
WIP2.Font = Enum.Font.SourceSans
WIP2.FontSize = Enum.FontSize.Size14
WIP2.Text = "WIP"
WIP2.TextColor3 = Color3.new(1, 1, 1)
WIP2.TextSize = 14

Cloud.Name = "Cloud"
Cloud.Parent = Scripts
Cloud.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
Cloud.BorderSizePixel = 0
Cloud.Position = UDim2.new(0.749926805, 0, 0, 20)
Cloud.Size = UDim2.new(0.239130437, 0, 0, 18)
Cloud.ZIndex = 2
Cloud.Font = Enum.Font.SourceSans
Cloud.FontSize = Enum.FontSize.Size14
Cloud.Text = "Cloud"
Cloud.TextColor3 = Color3.new(1, 1, 1)
Cloud.TextSize = 14

WIP4.Name = "WIP4"
WIP4.Parent = Scripts
WIP4.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP4.BorderSizePixel = 0
WIP4.Position = UDim2.new(0.747826099, 0, 0, 198)
WIP4.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP4.ZIndex = 2
WIP4.Font = Enum.Font.SourceSans
WIP4.FontSize = Enum.FontSize.Size14
WIP4.Text = "WIP"
WIP4.TextColor3 = Color3.new(1, 1, 1)
WIP4.TextSize = 14

WIP5.Name = "WIP5"
WIP5.Parent = Scripts
WIP5.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP5.BorderSizePixel = 0
WIP5.Position = UDim2.new(0.00869565178, 0, 0, 178)
WIP5.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP5.ZIndex = 2
WIP5.Font = Enum.Font.SourceSans
WIP5.FontSize = Enum.FontSize.Size14
WIP5.Text = "WIP"
WIP5.TextColor3 = Color3.new(1, 1, 1)
WIP5.TextSize = 14

WIP6.Name = "WIP6"
WIP6.Parent = Scripts
WIP6.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP6.BorderSizePixel = 0
WIP6.Position = UDim2.new(0.502325594, 0, 0, 138)
WIP6.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP6.ZIndex = 2
WIP6.Font = Enum.Font.SourceSans
WIP6.FontSize = Enum.FontSize.Size14
WIP6.Text = "WIP"
WIP6.TextColor3 = Color3.new(1, 1, 1)
WIP6.TextSize = 14

WIP7.Name = "WIP7"
WIP7.Parent = Scripts
WIP7.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
WIP7.BorderSizePixel = 0
WIP7.Position = UDim2.new(0.00869565178, 0, 0, 158)
WIP7.Size = UDim2.new(0.239130437, 0, 0, 18)
WIP7.ZIndex = 2
WIP7.Font = Enum.Font.SourceSans
WIP7.FontSize = Enum.FontSize.Size14
WIP7.Text = "WIP"
WIP7.TextColor3 = Color3.new(1, 1, 1)
WIP7.TextSize = 14

Games.Name = "Games"
Games.Parent = memeguiframe
Games.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Games.BorderSizePixel = 0
Games.Position = UDim2.new(0, 0, 0, 96)
Games.Size = UDim2.new(1.00340903, 0, 0, 264)
Games.Visible = false
Games.ZIndex = 2
ServerValueTextBack_2.Name = "ServerValueTextBack"
ServerValueTextBack_2.Parent = Games
ServerValueTextBack_2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ServerValueTextBack_2.BorderSizePixel = 0
ServerValueTextBack_2.Position = UDim2.new(0, 0, 0, 228)
ServerValueTextBack_2.Size = UDim2.new(1.0011338, 0, 0, 36)
ServerValueTextBack_2.ZIndex = 2
local TextLabel = Instance.new("TextLabel")
local JailBreakButton = Instance.new("ImageButton")
local SharkBiteButton = Instance.new("ImageButton")
local WeightLiftButton = Instance.new("ImageButton")
local PFButton = Instance.new("ImageButton")
JailBreakButton.Name = "JailBreakButton"
JailBreakButton.Parent = Games
JailBreakButton.BackgroundColor3 = Color3.new(1, 1, 1)
JailBreakButton.Position = UDim2.new(0.0444320887, 0, 0, 24)
JailBreakButton.Size = UDim2.new(0.222160444, 0, 0, 192)
JailBreakButton.ZIndex = 2
JailBreakButton.Image = "rbxassetid://819035009"
SharkBiteButton.Name = "SharkBiteButton"
SharkBiteButton.Parent = Games
SharkBiteButton.BackgroundColor3 = Color3.new(1, 1, 1)
SharkBiteButton.Position = UDim2.new(0.273997873, 0, 0, 24)
SharkBiteButton.Size = UDim2.new(0.222160444, 0, 0, 192)
SharkBiteButton.ZIndex = 2
SharkBiteButton.Image = "rbxassetid://1010571927"
WeightLiftButton.Name = "WeightLiftButton"
WeightLiftButton.Parent = Games
WeightLiftButton.BackgroundColor3 = Color3.new(1, 1, 1)
WeightLiftButton.Position = UDim2.new(0.503563702, 0, 0, 24)
WeightLiftButton.Size = UDim2.new(0.222160444, 0, 0, 192)
WeightLiftButton.ZIndex = 2
WeightLiftButton.Image = "rbxassetid://1010577222"
PFButton.Name = "PFButton"
PFButton.Parent = Games
PFButton.BackgroundColor3 = Color3.new(1, 1, 1)
PFButton.Position = UDim2.new(0.733129442, 0, 0, 24)
PFButton.Size = UDim2.new(0.222160444, 0, 0, 192)
PFButton.ZIndex = 2
PFButton.Image = "rbxassetid://1010579728"
local function GetPlayer(Str)
	if game:GetService'Players':FindFirstChild(Str)then
		return{Str}
	elseif string.lower(Str)=='all'then
		local b={}
		for a,a in pairs(game:GetService'Players':GetPlayers())do
			table.insert(b,a)
		end
		return b
	elseif string.lower(Str)=='others'then
		local b={}
		for a,a in pairs(game:GetService'Players':GetPlayers())do
			if a ~= LP then
				table.insert(b,a)
			end
		end
		return b
	elseif string.lower(Str)=='me'then
		return{LP}
	else
		local b={}
		for a,a in pairs(game:GetService'Players':GetPlayers())do
			if string.lower(string.sub(a.Name,1,#Str))==string.lower(Str)then
				table.insert(b,a)
			end
		end
		return b
	end
end

Jailbreak.Name = "Jailbreak"
Jailbreak.Parent = memeguiframe
Jailbreak.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Jailbreak.BorderSizePixel = 0
Jailbreak.Position = UDim2.new(0, 0, 0, 96)
Jailbreak.Size = UDim2.new(1.00340903, 0, 0, 264)
Jailbreak.Visible = false
Jailbreak.ZIndex = 2

JailbreakValueTextBack.Name = "JailbreakValueTextBack"
JailbreakValueTextBack.Parent = Jailbreak
JailbreakValueTextBack.BackgroundColor3 = Color3.new(0.270588, 0.352941, 0.392157)
JailbreakValueTextBack.BorderSizePixel = 0
JailbreakValueTextBack.Position = UDim2.new(0, 0, 0, 228)
JailbreakValueTextBack.Size = UDim2.new(1.0011338, 0, 0, 36)
JailbreakValueTextBack.ZIndex = 2

JailbreakValue.Name = "JailbreakValue"
JailbreakValue.Parent = Jailbreak
JailbreakValue.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
JailbreakValue.BorderColor3 = Color3.new(1, 1, 1)
JailbreakValue.Position = UDim2.new(0.509805083, 0, 0, 234)
JailbreakValue.Size = UDim2.new(0.479999989, 0, 0, 22)
JailbreakValue.ZIndex = 2
JailbreakValue.Font = Enum.Font.SourceSans
JailbreakValue.FontSize = Enum.FontSize.Size14
JailbreakValue.Text = "Value"
JailbreakValue.TextColor3 = Color3.new(1, 1, 1)
JailbreakValue.TextSize = 14
JailbreakValue.TextXAlignment = Enum.TextXAlignment.Left

JDonut.Name = "JDonut"
JDonut.Parent = Jailbreak
JDonut.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JDonut.BorderSizePixel = 0
JDonut.Position = UDim2.new(0.753620982, 0, 0, 56)
JDonut.Size = UDim2.new(0.239130437, 0, 0, 18)
JDonut.ZIndex = 2
JDonut.Font = Enum.Font.SourceSans
JDonut.FontSize = Enum.FontSize.Size14
JDonut.Text = "Donut Shop"
JDonut.TextColor3 = Color3.new(1, 1, 1)
JDonut.TextSize = 14

JCrimBase1.Name = "JCrimBase1"
JCrimBase1.Parent = Jailbreak
JCrimBase1.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JCrimBase1.BorderSizePixel = 0
JCrimBase1.Position = UDim2.new(0.753620982, 0, 0, 36)
JCrimBase1.Size = UDim2.new(0.239130437, 0, 0, 18)
JCrimBase1.ZIndex = 2
JCrimBase1.Font = Enum.Font.SourceSans
JCrimBase1.FontSize = Enum.FontSize.Size14
JCrimBase1.Text = "Criminal Base 1"
JCrimBase1.TextColor3 = Color3.new(1, 1, 1)
JCrimBase1.TextSize = 14

JGod.Name = "JGod"
JGod.Parent = Jailbreak
JGod.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JGod.BorderSizePixel = 0
JGod.Position = UDim2.new(0.00738847908, 0, 0, 36)
JGod.Size = UDim2.new(0.239130437, 0, 0, 18)
JGod.ZIndex = 2
JGod.Font = Enum.Font.SourceSans
JGod.FontSize = Enum.FontSize.Size14
JGod.Text = "God"
JGod.TextColor3 = Color3.new(1, 1, 1)
JGod.TextSize = 14

JHipHeight.Name = "JHipHeight"
JHipHeight.Parent = Jailbreak
JHipHeight.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JHipHeight.BorderSizePixel = 0
JHipHeight.Position = UDim2.new(0.00738847908, 0, 0, 160)
JHipHeight.Size = UDim2.new(0.4839454, 0, 0, 18)
JHipHeight.ZIndex = 2
JHipHeight.Font = Enum.Font.SourceSans
JHipHeight.FontSize = Enum.FontSize.Size14
JHipHeight.Text = "HipHeight"
JHipHeight.TextColor3 = Color3.new(1, 1, 1)
JHipHeight.TextSize = 14

JPoliceHQ1.Name = "JPoliceHQ1"
JPoliceHQ1.Parent = Jailbreak
JPoliceHQ1.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JPoliceHQ1.BorderSizePixel = 0
JPoliceHQ1.Position = UDim2.new(0.254902542, 0, 0, 56)
JPoliceHQ1.Size = UDim2.new(0.239130437, 0, 0, 18)
JPoliceHQ1.ZIndex = 2
JPoliceHQ1.Font = Enum.Font.SourceSans
JPoliceHQ1.FontSize = Enum.FontSize.Size14
JPoliceHQ1.Text = "Police Headquarters 1"
JPoliceHQ1.TextColor3 = Color3.new(1, 1, 1)
JPoliceHQ1.TextSize = 14

JCrimBase2.Name = "JCrimBase2"
JCrimBase2.Parent = Jailbreak
JCrimBase2.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JCrimBase2.BorderSizePixel = 0
JCrimBase2.Position = UDim2.new(0.00738847908, 0, 0, 56)
JCrimBase2.Size = UDim2.new(0.239130437, 0, 0, 18)
JCrimBase2.ZIndex = 2
JCrimBase2.Font = Enum.Font.SourceSans
JCrimBase2.FontSize = Enum.FontSize.Size14
JCrimBase2.Text = "Criminal Base 2"
JCrimBase2.TextColor3 = Color3.new(1, 1, 1)
JCrimBase2.TextSize = 14

JApt3.Name = "JApt3"
JApt3.Parent = Jailbreak
JApt3.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JApt3.BorderSizePixel = 0
JApt3.Position = UDim2.new(0.506110847, 0, 0, 116)
JApt3.Size = UDim2.new(0.239130437, 0, 0, 18)
JApt3.ZIndex = 2
JApt3.Font = Enum.Font.SourceSans
JApt3.FontSize = Enum.FontSize.Size14
JApt3.Text = "Apartment 3"
JApt3.TextColor3 = Color3.new(1, 1, 1)
JApt3.TextSize = 14

JBTools.Name = "JBTools"
JBTools.Parent = Jailbreak
JBTools.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JBTools.BorderSizePixel = 0
JBTools.Position = UDim2.new(0.254902542, 0, 0, 36)
JBTools.Size = UDim2.new(0.239130437, 0, 0, 18)
JBTools.ZIndex = 2
JBTools.Font = Enum.Font.SourceSans
JBTools.FontSize = Enum.FontSize.Size14
JBTools.Text = "BTools"
JBTools.TextColor3 = Color3.new(1, 1, 1)
JBTools.TextSize = 14

JOnOff.Name = "JOnOff"
JOnOff.Parent = Jailbreak
JOnOff.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JOnOff.BorderSizePixel = 0
JOnOff.Position = UDim2.new(0.00738847908, 0, 0, 14)
JOnOff.Size = UDim2.new(0.985000014, 0, 0, 18)
JOnOff.ZIndex = 2
JOnOff.Font = Enum.Font.SourceSans
JOnOff.FontSize = Enum.FontSize.Size14
JOnOff.Text = "Jailbreak: OFF"
JOnOff.TextColor3 = Color3.new(1, 1, 1)
JOnOff.TextSize = 14

JLambo.Name = "JLambo"
JLambo.Parent = Jailbreak
JLambo.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JLambo.BorderSizePixel = 0
JLambo.Position = UDim2.new(0.753620982, 0, 0, 76)
JLambo.Size = UDim2.new(0.239130437, 0, 0, 18)
JLambo.ZIndex = 2
JLambo.Font = Enum.Font.SourceSans
JLambo.FontSize = Enum.FontSize.Size14
JLambo.Text = "Lamborghini"
JLambo.TextColor3 = Color3.new(1, 1, 1)
JLambo.TextSize = 14

JStation.Name = "JStation"
JStation.Parent = Jailbreak
JStation.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JStation.BorderSizePixel = 0
JStation.Position = UDim2.new(0.506108224, 0, 0, 76)
JStation.Size = UDim2.new(0.239130437, 0, 0, 18)
JStation.ZIndex = 2
JStation.Font = Enum.Font.SourceSans
JStation.FontSize = Enum.FontSize.Size14
JStation.Text = "Gas Station"
JStation.TextColor3 = Color3.new(1, 1, 1)
JStation.TextSize = 14

JJewerly.Name = "JJewerly"
JJewerly.Parent = Jailbreak
JJewerly.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JJewerly.BorderSizePixel = 0
JJewerly.Position = UDim2.new(0.254902542, 0, 0, 76)
JJewerly.Size = UDim2.new(0.239130437, 0, 0, 18)
JJewerly.ZIndex = 2
JJewerly.Font = Enum.Font.SourceSans
JJewerly.FontSize = Enum.FontSize.Size14
JJewerly.Text = "Jewerly"
JJewerly.TextColor3 = Color3.new(1, 1, 1)
JJewerly.TextSize = 14

JPrison.Name = "JPrison"
JPrison.Parent = Jailbreak
JPrison.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JPrison.BorderSizePixel = 0
JPrison.Position = UDim2.new(0.506108224, 0, 0, 36)
JPrison.Size = UDim2.new(0.239130437, 0, 0, 18)
JPrison.ZIndex = 2
JPrison.Font = Enum.Font.SourceSans
JPrison.FontSize = Enum.FontSize.Size14
JPrison.Text = "Prison"
JPrison.TextColor3 = Color3.new(1, 1, 1)
JPrison.TextSize = 14

JPoliceHQ2.Name = "JPoliceHQ2"
JPoliceHQ2.Parent = Jailbreak
JPoliceHQ2.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JPoliceHQ2.BorderSizePixel = 0
JPoliceHQ2.Position = UDim2.new(0.506108224, 0, 0, 56)
JPoliceHQ2.Size = UDim2.new(0.239130437, 0, 0, 18)
JPoliceHQ2.ZIndex = 2
JPoliceHQ2.Font = Enum.Font.SourceSans
JPoliceHQ2.FontSize = Enum.FontSize.Size14
JPoliceHQ2.Text = "Police Headquarters 2"
JPoliceHQ2.TextColor3 = Color3.new(1, 1, 1)
JPoliceHQ2.TextSize = 14

JJumpPower.Name = "JJumpPower"
JJumpPower.Parent = Jailbreak
JJumpPower.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JJumpPower.BorderSizePixel = 0
JJumpPower.Position = UDim2.new(0.509805083, 0, 0, 140)
JJumpPower.Size = UDim2.new(0.4839454, 0, 0, 18)
JJumpPower.ZIndex = 2
JJumpPower.Font = Enum.Font.SourceSans
JJumpPower.FontSize = Enum.FontSize.Size14
JJumpPower.Text = "JumpPower"
JJumpPower.TextColor3 = Color3.new(1, 1, 1)
JJumpPower.TextSize = 14

JWalkspeed.Name = "JWalkspeed"
JWalkspeed.Parent = Jailbreak
JWalkspeed.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JWalkspeed.BorderSizePixel = 0
JWalkspeed.Position = UDim2.new(0.00738847908, 0, 0, 140)
JWalkspeed.Size = UDim2.new(0.4839454, 0, 0, 18)
JWalkspeed.ZIndex = 2
JWalkspeed.Font = Enum.Font.SourceSans
JWalkspeed.FontSize = Enum.FontSize.Size14
JWalkspeed.Text = "WalkSpeed"
JWalkspeed.TextColor3 = Color3.new(1, 1, 1)
JWalkspeed.TextSize = 14

JailbreakPlayer.Name = "JailbreakPlayer"
JailbreakPlayer.Parent = Jailbreak
JailbreakPlayer.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
JailbreakPlayer.BorderColor3 = Color3.new(1, 1, 1)
JailbreakPlayer.Position = UDim2.new(0.0147769582, 0, 0, 234)
JailbreakPlayer.Size = UDim2.new(0.479999989, 0, 0, 22)
JailbreakPlayer.ZIndex = 2
JailbreakPlayer.Font = Enum.Font.SourceSans
JailbreakPlayer.FontSize = Enum.FontSize.Size14
JailbreakPlayer.Text = "Player Name (Only TP)"
JailbreakPlayer.TextColor3 = Color3.new(1, 1, 1)
JailbreakPlayer.TextSize = 14
JailbreakPlayer.TextXAlignment = Enum.TextXAlignment.Left

JApt4.Name = "JApt4"
JApt4.Parent = Jailbreak
JApt4.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JApt4.BorderSizePixel = 0
JApt4.Position = UDim2.new(0.753624916, 0, 0, 116)
JApt4.Size = UDim2.new(0.239130437, 0, 0, 18)
JApt4.ZIndex = 2
JApt4.Font = Enum.Font.SourceSans
JApt4.FontSize = Enum.FontSize.Size14
JApt4.Text = "Apartment 4"
JApt4.TextColor3 = Color3.new(1, 1, 1)
JApt4.TextSize = 14

JBugatti.Name = "JBugatti"
JBugatti.Parent = Jailbreak
JBugatti.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JBugatti.BorderSizePixel = 0
JBugatti.Position = UDim2.new(0.00740534812, 0, 0, 96)
JBugatti.Size = UDim2.new(0.239130437, 0, 0, 18)
JBugatti.ZIndex = 2
JBugatti.Font = Enum.Font.SourceSans
JBugatti.FontSize = Enum.FontSize.Size14
JBugatti.Text = "Bugatti"
JBugatti.TextColor3 = Color3.new(1, 1, 1)
JBugatti.TextSize = 14

JTesla.Name = "JTesla"
JTesla.Parent = Jailbreak
JTesla.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JTesla.BorderSizePixel = 0
JTesla.Position = UDim2.new(0.254902542, 0, 0, 96)
JTesla.Size = UDim2.new(0.239130437, 0, 0, 18)
JTesla.ZIndex = 2
JTesla.Font = Enum.Font.SourceSans
JTesla.FontSize = Enum.FontSize.Size14
JTesla.Text = "Tesla"
JTesla.TextColor3 = Color3.new(1, 1, 1)
JTesla.TextSize = 14

JPorsche.Name = "JPorsche"
JPorsche.Parent = Jailbreak
JPorsche.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JPorsche.BorderSizePixel = 0
JPorsche.Position = UDim2.new(0.506110847, 0, 0, 96)
JPorsche.Size = UDim2.new(0.239130437, 0, 0, 18)
JPorsche.ZIndex = 2
JPorsche.Font = Enum.Font.SourceSans
JPorsche.FontSize = Enum.FontSize.Size14
JPorsche.Text = "Porsche"
JPorsche.TextColor3 = Color3.new(1, 1, 1)
JPorsche.TextSize = 14

JDirtBike.Name = "JDirtBike"
JDirtBike.Parent = Jailbreak
JDirtBike.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JDirtBike.BorderSizePixel = 0
JDirtBike.Position = UDim2.new(0.753624916, 0, 0, 96)
JDirtBike.Size = UDim2.new(0.239130437, 0, 0, 18)
JDirtBike.ZIndex = 2
JDirtBike.Font = Enum.Font.SourceSans
JDirtBike.FontSize = Enum.FontSize.Size14
JDirtBike.Text = "Dirt Bike"
JDirtBike.TextColor3 = Color3.new(1, 1, 1)
JDirtBike.TextSize = 14

JApt1.Name = "JApt1"
JApt1.Parent = Jailbreak
JApt1.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JApt1.BorderSizePixel = 0
JApt1.Position = UDim2.new(0.00738847908, 0, 0, 116)
JApt1.Size = UDim2.new(0.239130437, 0, 0, 18)
JApt1.ZIndex = 2
JApt1.Font = Enum.Font.SourceSans
JApt1.FontSize = Enum.FontSize.Size14
JApt1.Text = "Apartment 1"
JApt1.TextColor3 = Color3.new(1, 1, 1)
JApt1.TextSize = 14

JApt2.Name = "JApt2"
JApt2.Parent = Jailbreak
JApt2.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JApt2.BorderSizePixel = 0
JApt2.Position = UDim2.new(0.254902542, 0, 0, 116)
JApt2.Size = UDim2.new(0.239130437, 0, 0, 18)
JApt2.ZIndex = 2
JApt2.Font = Enum.Font.SourceSans
JApt2.FontSize = Enum.FontSize.Size14
JApt2.Text = "Apartment 2"
JApt2.TextColor3 = Color3.new(1, 1, 1)
JApt2.TextSize = 14

JWalkspeed_2.Name = "JWalkspeed"
JWalkspeed_2.Parent = Jailbreak
JWalkspeed_2.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JWalkspeed_2.BorderSizePixel = 0
JWalkspeed_2.Position = UDim2.new(0.00738847908, 0, 0, 140)
JWalkspeed_2.Size = UDim2.new(0.4839454, 0, 0, 18)
JWalkspeed_2.ZIndex = 2
JWalkspeed_2.Font = Enum.Font.SourceSans
JWalkspeed_2.FontSize = Enum.FontSize.Size14
JWalkspeed_2.Text = "WalkSpeed"
JWalkspeed_2.TextColor3 = Color3.new(1, 1, 1)
JWalkspeed_2.TextSize = 14

JNoDoors.Name = "JNoDoors"
JNoDoors.Parent = Jailbreak
JNoDoors.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JNoDoors.BorderSizePixel = 0
JNoDoors.Position = UDim2.new(0.509805083, 0, 0, 160)
JNoDoors.Size = UDim2.new(0.4839454, 0, 0, 18)
JNoDoors.ZIndex = 2
JNoDoors.Font = Enum.Font.SourceSans
JNoDoors.FontSize = Enum.FontSize.Size14
JNoDoors.Text = "No Doors"
JNoDoors.TextColor3 = Color3.new(1, 1, 1)
JNoDoors.TextSize = 14

JAutoArrest.Name = "JAutoArrest"
JAutoArrest.Parent = Jailbreak
JAutoArrest.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JAutoArrest.BorderSizePixel = 0
JAutoArrest.Position = UDim2.new(0.509805083, 0, 0, 180)
JAutoArrest.Size = UDim2.new(0.4839454, 0, 0, 18)
JAutoArrest.ZIndex = 2
JAutoArrest.Font = Enum.Font.SourceSans
JAutoArrest.FontSize = Enum.FontSize.Size14
JAutoArrest.Text = "Auto Arrest: OFF"
JAutoArrest.TextColor3 = Color3.new(1, 1, 1)
JAutoArrest.TextSize = 14

JJumpPower_2.Name = "JJumpPower"
JJumpPower_2.Parent = Jailbreak
JJumpPower_2.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JJumpPower_2.BorderSizePixel = 0
JJumpPower_2.Position = UDim2.new(0.509805083, 0, 0, 140)
JJumpPower_2.Size = UDim2.new(0.4839454, 0, 0, 18)
JJumpPower_2.ZIndex = 2
JJumpPower_2.Font = Enum.Font.SourceSans
JJumpPower_2.FontSize = Enum.FontSize.Size14
JJumpPower_2.Text = "JumpPower"
JJumpPower_2.TextColor3 = Color3.new(1, 1, 1)
JJumpPower_2.TextSize = 14

JTeleport.Name = "JTeleport"
JTeleport.Parent = Jailbreak
JTeleport.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JTeleport.BorderSizePixel = 0
JTeleport.Position = UDim2.new(0.00738847908, 0, 0, 180)
JTeleport.Size = UDim2.new(0.4839454, 0, 0, 18)
JTeleport.ZIndex = 2
JTeleport.Font = Enum.Font.SourceSans
JTeleport.FontSize = Enum.FontSize.Size14
JTeleport.Text = "Teleport"
JTeleport.TextColor3 = Color3.new(1, 1, 1)
JTeleport.TextSize = 14

JVault.Name = "JVault"
JVault.Parent = Jailbreak
JVault.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JVault.BorderSizePixel = 0
JVault.Position = UDim2.new(0.00738847908, 0, 0, 76)
JVault.Size = UDim2.new(0.239130437, 0, 0, 18)
JVault.ZIndex = 2
JVault.Font = Enum.Font.SourceSans
JVault.FontSize = Enum.FontSize.Size14
JVault.Text = "Bank Vault"
JVault.TextColor3 = Color3.new(1, 1, 1)
JVault.TextSize = 14

JTeleport_2.Name = "JTeleport"
JTeleport_2.Parent = Jailbreak
JTeleport_2.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JTeleport_2.BorderSizePixel = 0
JTeleport_2.Position = UDim2.new(0.00738847908, 0, 0, 180)
JTeleport_2.Size = UDim2.new(0.4839454, 0, 0, 18)
JTeleport_2.ZIndex = 2
JTeleport_2.Font = Enum.Font.SourceSans
JTeleport_2.FontSize = Enum.FontSize.Size14
JTeleport_2.Text = "Teleport"
JTeleport_2.TextColor3 = Color3.new(1, 1, 1)
JTeleport_2.TextSize = 14

JCtrlClick.Name = "JCtrlClick"
JCtrlClick.Parent = Jailbreak
JCtrlClick.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JCtrlClick.BorderSizePixel = 0
JCtrlClick.Position = UDim2.new(0.00738847908, 0, 0, 200)
JCtrlClick.Size = UDim2.new(0.4839454, 0, 0, 18)
JCtrlClick.ZIndex = 2
JCtrlClick.Font = Enum.Font.SourceSans
JCtrlClick.FontSize = Enum.FontSize.Size14
JCtrlClick.Text = "Ctrl + Click To Teleport: OFF"
JCtrlClick.TextColor3 = Color3.new(1, 1, 1)
JCtrlClick.TextSize = 14

JCarSpeed.Name = "JCarSpeed"
JCarSpeed.Parent = Jailbreak
JCarSpeed.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
JCarSpeed.BorderSizePixel = 0
JCarSpeed.Position = UDim2.new(0.509805083, 0, 0, 200)
JCarSpeed.Size = UDim2.new(0.4839454, 0, 0, 18)
JCarSpeed.ZIndex = 2
JCarSpeed.Font = Enum.Font.SourceSans
JCarSpeed.FontSize = Enum.FontSize.Size14
JCarSpeed.Text = "Vehicle Speed"
JCarSpeed.TextColor3 = Color3.new(1, 1, 1)
JCarSpeed.TextSize = 14

FEBYPASS.MouseButton1Down:Connect(function()
	if FEBYPASS.Text == "FE BYPASS: OFF" then
	FEBYPASS.Text = "MEMEMED"
end
end)

TRANSPARENT.MouseButton1Down:Connect(function()
	if TRANSPARENT.Text == "Transparent: OFF" then
		TRANSPARENT.Text = "Transparent: ON"
	Games.BackgroundTransparency = 0.2
	LocalPlayer.BackgroundTransparency = 0.2
	Players.BackgroundTransparency = 0.2
	Scripts.BackgroundTransparency = 0.2
	Server.BackgroundTransparency = 0.2
	Home.BackgroundTransparency = 0.2
	Options.BackgroundTransparency = 0.2
	Window.BackgroundTransparency = 0.2
	Topbar.BackgroundTransparency = 0.2
	elseif TRANSPARENT.Text == "Transparent: ON" then
		TRANSPARENT.Text = "Transparent: OFF"
		Games.BackgroundTransparency = 0
	LocalPlayer.BackgroundTransparency = 0
	Players.BackgroundTransparency = 0
	Scripts.BackgroundTransparency = 0
	Server.BackgroundTransparency = 0
	Home.BackgroundTransparency = 0
	Options.BackgroundTransparency = 0
	Window.BackgroundTransparency = 0
	Topbar.BackgroundTransparency = 0
		end
end)

GREEN.MouseButton1Down:Connect(function()
	for i,v in pairs(LocalPlayer:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.180392, 0.490196, 0.196078)
		end
	end
		for i,v in pairs(Options:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.180392, 0.490196, 0.196078)
		end
		end
			for i,v in pairs(Players:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.180392, 0.490196, 0.196078)
		end
			end
				for i,v in pairs(Scripts:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.180392, 0.490196, 0.196078)
		end
				end
					for i,v in pairs(Server:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.180392, 0.490196, 0.196078)
		end
					end
				for i,v in pairs(Home:GetChildren()) do
		if v:IsA("TextLabel") then
			v.BackgroundColor3 = Color3.new(0.180392, 0.490196, 0.196078)
		end
	end
	Window.BackgroundColor3 = Color3.new(0.180392, 0.490196, 0.196078)
	Topbar.BackgroundColor3 = Color3.new(0.298039, 0.686275, 0.313726)
	FancyLine.BackgroundColor3 = Color3.new(0, 0.784314, 0.32549)
end)
RED.MouseButton1Down:Connect(function()
	for i,v in pairs(LocalPlayer:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.776471, 0.156863, 0.156863)
		end
	end
		for i,v in pairs(Options:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.776471, 0.156863, 0.156863)
		end
		end
			for i,v in pairs(Players:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.776471, 0.156863, 0.156863)
		end
			end
				for i,v in pairs(Scripts:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.776471, 0.156863, 0.156863)
		end
				end
					for i,v in pairs(Server:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.776471, 0.156863, 0.156863)
		end
					end
				for i,v in pairs(Home:GetChildren()) do
		if v:IsA("TextLabel") then
			v.BackgroundColor3 = Color3.new(0.776471, 0.156863, 0.156863)
		end
	end
	Window.BackgroundColor3 = Color3.new(0.776471, 0.156863, 0.156863)
	Topbar.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
	FancyLine.BackgroundColor3 = Color3.new(1, 0.321569, 0.321569)
end)
GRAY.MouseButton1Down:Connect(function()
	for i,v in pairs(LocalPlayer:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
		end
	end
		for i,v in pairs(Options:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
		end
		end
			for i,v in pairs(Players:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
		end
			end
				for i,v in pairs(Scripts:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
		end
				end
					for i,v in pairs(Server:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
		end
					end
				for i,v in pairs(Home:GetChildren()) do
		if v:IsA("TextLabel") then
			v.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
		end
	end
	Window.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
	Topbar.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
	FancyLine.BackgroundColor3 = Color3.new(0.835294, 0, 0)
end)
BLUE.MouseButton1Down:Connect(function()
	for i,v in pairs(LocalPlayer:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
		end
	end
		for i,v in pairs(Options:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
		end
		end
			for i,v in pairs(Players:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
		end
			end
				for i,v in pairs(Scripts:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
		end
				end
					for i,v in pairs(Server:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
		end
					end
				for i,v in pairs(Home:GetChildren()) do
		if v:IsA("TextLabel") then
			v.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
		end
	end
	Window.BackgroundColor3 = Color3.new(0.0823529, 0.396078, 0.752941)
	Topbar.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
	FancyLine.BackgroundColor3 = Color3.new(0.266667, 0.541176, 1)
end)
PINK.MouseButton1Down:Connect(function()
	for i,v in pairs(LocalPlayer:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.847059, 0.105882, 0.376471)
		end
	end
		for i,v in pairs(Options:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.847059, 0.105882, 0.376471)
		end
		end
			for i,v in pairs(Players:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.847059, 0.105882, 0.376471)
		end
			end
				for i,v in pairs(Scripts:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.847059, 0.105882, 0.376471)
		end
				end
					for i,v in pairs(Server:GetChildren()) do
		if v:IsA("TextButton") then
			v.BackgroundColor3 = Color3.new(0.847059, 0.105882, 0.376471)
		end
					end
				for i,v in pairs(Home:GetChildren()) do
		if v:IsA("TextLabel") then
			v.BackgroundColor3 = Color3.new(0.847059, 0.105882, 0.376471)
		end
	end
	Window.BackgroundColor3 = Color3.new(0.847059, 0.105882, 0.376471)
	Topbar.BackgroundColor3 = Color3.new(0.941177, 0.384314, 0.572549)
	FancyLine.BackgroundColor3 = Color3.new(1, 0.501961, 0.670588)
end)
LIGHT.MouseButton1Down:Connect(function()
if Settings.DARK.Text == "Dark Theme: ON" then
	Settings.DARK.Text = "Dark Theme: OFF"
	Settings.LIGHT.Text = "Light Theme: ON"
	Settings.DARK.TextColor3 = Color3.new(1, 1, 1)
	Settings.LIGHT.TextColor3 = Color3.new(1, 1, 1)
	Settings.TOPMOST.TextColor3 = Color3.new(1, 1, 1)
	Settings.TRANSPARENT.TextColor3 = Color3.new(1, 1, 1)
	Players.BackgroundColor3 = Color3.new(1, 1, 1)
	Games.BackgroundColor3 = Color3.new(1, 1, 1)
	LocalPlayer.BackgroundColor3 = Color3.new(1, 1, 1)
	Server.BackgroundColor3 = Color3.new(1, 1, 1)
	Scripts.BackgroundColor3 = Color3.new(1, 1, 1)
	Home.BackgroundColor3 = Color3.new(1, 1, 1)
	Options.BackgroundColor3 = Color3.new(1, 1, 1)
end
end)
DARK.MouseButton1Down:Connect(function()
if Settings.LIGHT.Text == "Light Theme: ON" then
	Settings.LIGHT.Text = "Light Theme: OFF"
	Settings.DARK.Text = "Dark Theme: ON"
	Players.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	Games.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	LocalPlayer.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	Server.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	Scripts.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	Home.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	Options.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
end
end)
TOPMOST.MouseButton1Down:Connect(function()
if Settings.TOPMOST.Text == "TopMost: OFF" then
	Settings.TOPMOST.Text = "TopMost: ON"
	for i,v in pairs(Window:GetChildren()) do
		if v:IsA("Frame") or v:IsA("TextButton")or v:IsA("TextLabel")  then
			v.ZIndex = 10
		end
	end
end
end)
Close.MouseButton1Down:Connect(function()
	Games.Visible = false
	LocalPlayer.Visible = false
	Players.Visible = false
	Scripts.Visible = false
	Server.Visible = false
	Home.Visible = false
	Options.Visible = false
end)
Settings.MouseButton1Down:Connect(function()
		Games.Visible = false
	LocalPlayer.Visible = false
	Players.Visible = false
	Scripts.Visible = false
	Server.Visible = false
	Home.Visible = false
	Options.Visible = true
end)
HomeBut.MouseButton1Down:Connect(function()
	FancyLine:TweenPosition(UDim2.new(0, 4, 0, 92), "Out", "Quad", 0.3)
	HomeBut.TextColor3 = Color3.new(1, 1, 1)
	HomeBut.TextStrokeColor3 = Color3.new(1, 1, 1)
	GamesBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	Games.Visible = false
	LocalPlayer.Visible = false
	Players.Visible = false
	Scripts.Visible = false
	Server.Visible = false
	Home.Visible = true
	Options.Visible = false
end)
ServerBut.MouseButton1Down:Connect(function()
	FancyLine:TweenPosition(UDim2.new(0, 275, 0, 93), "Out", "Quad", 0.3)
	HomeBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	HomeBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextColor3 = Color3.new(1, 1, 1)
	ServerBut.TextStrokeColor3 = Color3.new(1, 1, 1)
	Games.Visible = false
	LocalPlayer.Visible = false
	Players.Visible = false
	Scripts.Visible = false
	Server.Visible = true
	Home.Visible = false
	Options.Visible = false
end)
ScriptsBut.MouseButton1Down:Connect(function()
	Window.FancyLine:TweenPosition(UDim2.new(0, 365, 0, 93), "Out", "Quad", 0.3)
	Window.HomeBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	HomeBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextColor3 = Color3.new(1, 1, 1)
	ScriptsBut.TextStrokeColor3 = Color3.new(1, 1, 1)
	ServerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	Games.Visible = false
	LocalPlayer.Visible = false
	Players.Visible = false
	Scripts.Visible = true
	Server.Visible = false
	Home.Visible = false
	Options.Visible = false
end)
PlayersBut.MouseButton1Down:Connect(function()
	FancyLine:TweenPosition(UDim2.new(0, 85, 0, 93), "Out", "Quad", 0.3)
	HomeBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	HomeBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextColor3 = Color3.new(1, 1, 1)
	PlayersBut.TextStrokeColor3 = Color3.new(1, 1, 1)
	ScriptsBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	Games.Visible = false
	LocalPlayer.Visible = false
	Players.Visible = true
	Scripts.Visible = false
	Server.Visible = false
	Home.Visible = false
	Options.Visible = false
end)
LocalPlayerBut.MouseButton1Down:Connect(function()
	FancyLine:TweenPosition(UDim2.new(0, 175, 0, 93), "Out", "Quad", 0.3)
	HomeBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	HomeBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextColor3 = Color3.new(1, 1, 1)
	LocalPlayerBut.TextStrokeColor3 = Color3.new(1, 1, 1)
	PlayersBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	Games.Visible = false
	LocalPlayer.Visible = true
	Players.Visible = false
	Scripts.Visible = false
	Server.Visible = false
	Home.Visible = false
	Options.Visible = false
end)
GamesBut.MouseButton1Down:Connect(function()
	FancyLine:TweenPosition(UDim2.new(0, 449, 0, 93), "Out", "Quad", 0.3)
	HomeBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	HomeBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	GamesBut.TextColor3 = Color3.new(1, 1, 1)
	GamesBut.TextStrokeColor3 = Color3.new(1, 1, 1)
	LocalPlayerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	LocalPlayerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayersBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ScriptsBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	ServerBut.TextStrokeColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	Games.Visible = true
	LocalPlayer.Visible = false
	Players.Visible = false
	Scripts.Visible = false
	Server.Visible = false
	Home.Visible = false
	Options.Visible = false
end)
JailBreakButton.MouseButton1Down:Connect(function()
	  Games.Visible = false
	Jailbreak.Visible = true
	LocalPlayer.Visible = false
	 Players.Visible = false
	 Scripts.Visible = false
	  Server.Visible = false
	  Home.Visible = false
	  Options.Visible = false
end)
Kill.MouseButton1Down:Connect(function()
local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				if Home.FEBYPASS.Text == "FE BYPASS: ON" then
					workspace.FilteringEnabled(function()
  							 b.Character:BreakJoints()
					end)
		end
				b.Character:BreakJoints()
			end
		end
	end	
end)
FF.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				if Home.FEBYPASS.Text == "FE BYPASS: ON" then
					workspace.FilteringEnabled(function()
  							Instance.new('ForceField', b.Character)
					end)
		end
				Instance.new('ForceField', b.Character)
			end
		end
	end
end)
Ayylmao.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				for i, v in pairs(b.Character:WaitForChild'Torso':GetChildren()) do
					if v:IsA("Decal") then
						v:Destroy()
					end
				end
				for i, v in pairs(b.Character:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
				end			
				for i, v in pairs(b.Character:GetChildren()) do
					if v:IsA("Shirt") then
						v:Destroy()
					end
				end
				for i, v in pairs(b.Character:GetChildren()) do
					if v:IsA("Pants") then
						v:Destroy()
					end
				end
				b.Character.Head.face:Destroy()
				local M = Instance.new('SpecialMesh', b.Character:WaitForChild'Head')
				local S = Instance.new('Shirt', b.Character)
				local P = Instance.new('Pants', b.Character)
				M.MeshType = 'FileMesh'
				M.MeshId = 'http://www.roblox.com/asset/?id=13827689'
				M.Offset = Vector3.new(-0.1, 0.1, 0)
				M.TextureId = 'http://www.roblox.com/asset/?id=13827796'
				b.Character.Torso.BrickColor = BrickColor.new("Sage green")
				b.Character["Left Arm"].BrickColor = BrickColor.new("Sage green")
				b.Character["Right Arm"].BrickColor = BrickColor.new("Sage green")
				b.Character["Right Leg"].BrickColor = BrickColor.new("Sage green")
				b.Character["Left Leg"].BrickColor = BrickColor.new("Sage green")
				b.Character.Head.BrickColor = BrickColor.new("Sage green")
			end
		end
	end
end)
BTools.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				if Home.FEBYPASS.Text == "FE BYPASS: ON" then
					workspace.FilteringEnabled(function()
  							local a, b, c = Instance.new("HopperBin", b:WaitForChild'Backpack'), Instance.new("HopperBin", b:WaitForChild'Backpack'), Instance.new("HopperBin", b:WaitForChild'Backpack')
				a.BinType = 2
				b.BinType = 3
				c.BinType = 4
					end)
		end
				local a, b, c = Instance.new("HopperBin", b:WaitForChild'Backpack'), Instance.new("HopperBin", b:WaitForChild'Backpack'), Instance.new("HopperBin", b:WaitForChild'Backpack')
				a.BinType = 2
				b.BinType = 3
				c.BinType = 4
			end
		end
	end
end)
Blackhole.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local black = Instance.new("Part", b.Character)
				black.Anchored = true
				black.Name = "black"
				black.FormFactor = Enum.FormFactor.Custom
				black.Size = Vector3.new(7, 1, 7)
				black.CanCollide = false
				black.CFrame = b.Character:WaitForChild'Torso'.CFrame * CFrame.new(0, -3.3, 0)
				black.BrickColor = BrickColor.new("Really black")
				black.Material = Enum.Material.Neon
				local hm = Instance.new("CylinderMesh", black)
				local tor = b.Character:WaitForChild'Torso'
				tor.Anchored = true
				if b.Character:FindFirstChild("Humanoid") then
					b.Character:WaitForChild'Humanoid'.Jump = true
				end
				for x, m in pairs(b.Character:GetChildren()) do
					if m:IsA("BasePart") then
						m.CanCollide = false
					end
				end
				for i = 1, 75 do
					tor.CFrame = tor.CFrame * CFrame.new(0, -0.1, 0)
					wait(0.06)
				end
				tor.CFrame = tor.CFrame * CFrame.new(0,
						-500, 0
					)
				b.Character:WaitForChild'Humanoid'.Health = 0
				b.Character:WaitForChild'Torso'.Anchored = false
			end
		end
	end
end)
Bleach.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
	local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("CylinderMesh")
o4 = Instance.new("Part")
o5 = Instance.new("BlockMesh")
local o6 = Instance.new("Model")
local o7 = Instance.new("Part")
local o8 = Instance.new("SpecialMesh")
local o9 = Instance.new("Part")
local o10 = Instance.new("BlockMesh")
local o11 = Instance.new("Part")
local o12 = Instance.new("BlockMesh")
o1.Name = "MainHanger"
o1.Parent = mas
o2.Parent = o1
o2.BrickColor = BrickColor.new("Brown")
o2.Reflectance = 1
o2.Position = Vector3.new(27.2998657, 12.7001247, -99)
o2.Rotation = Vector3.new(47.9199982, 89.9700012, -44.5200005)
o2.Anchored = true
o2.Size = Vector3.new(2, 4.80000019, 1)
o2.CFrame = CFrame.new(27.2998657, 12.7001247, -99, 0.000348104862, 0.000342296902, 0.999999881, 0.0592600703, 0.998242497, -0.000362324063, -0.998242497, 0.0592601299, 0.000327208574)
o2.Color = Color3.new(0.486275, 0.360784, 0.27451)
o2.Position = Vector3.new(27.2998657, 12.7001247, -99)
o3.Parent = o2
o3.Scale = Vector3.new(1, 1, 0.100000001)
o4.Parent = o1
o4.Material = Enum.Material.Slate
o4.BrickColor = BrickColor.new("Reddish brown")
o4.Position = Vector3.new(26.7999992, 14.8000069, -99)
o4.Rotation = Vector3.new(0, 0, -90)
o4.Anchored = true
o4.Size = Vector3.new(1, 3.60000014, 2)
o4.CFrame = CFrame.new(26.7999992, 14.8000069, -99, 0, 1, 0, -1, 0, 0, -0, 0, 1)
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.411765, 0.25098, 0.156863)
o4.Position = Vector3.new(26.7999992, 14.8000069, -99)
o5.Parent = o4
o6.Name = "Nose"
o6.Parent = o1
o7.Name = "Noose"
o7.Parent = o6
o7.BrickColor = BrickColor.new("Reddish brown")
o7.Position = Vector3.new(28.0000572, 10.031827, -98.9994659)
o7.Rotation = Vector3.new(-89.9899979, 41.0699997, 89.9899979)
o7.Anchored = true
o7.FormFactor = Enum.FormFactor.Symmetric
o7.Size = Vector3.new(2, 1, 1)
o7.CFrame = CFrame.new(28.0000572, 10.031827, -98.9994659, 7.1501112e-05, -0.753858447, 0.657036841, 0.000150307751, 0.657036841, 0.753858447, -1, 4.48560168e-05, 0.000160289652)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.411765, 0.25098, 0.156863)
o7.Position = Vector3.new(28.0000572, 10.031827, -98.9994659)
o8.Parent = o7
o8.MeshId = "http://www.roblox.com/asset/?id=3270017"
o8.Scale = Vector3.new(1.89999998, 1.89999998, 1.89999998)
o8.MeshType = Enum.MeshType.FileMesh
o9.Parent = o1
o9.Material = Enum.Material.Slate
o9.BrickColor = BrickColor.new("Reddish brown")
o9.Position = Vector3.new(24.5, 13.6001282, -99)
o9.Rotation = Vector3.new(0, 0, -30)
o9.Anchored = true
o9.Size = Vector3.new(1, 3.60000014, 2)
o9.CFrame = CFrame.new(24.5, 13.6001282, -99, 0.866025388, 0.49999997, 0, -0.49999997, 0.866025388, 0, 0, 0, 1)
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.411765, 0.25098, 0.156863)
o9.Position = Vector3.new(24.5, 13.6001282, -99)
o10.Parent = o9
o11.Parent = o1
o11.Material = Enum.Material.Slate
o11.BrickColor = BrickColor.new("Reddish brown")
o11.Position = Vector3.new(24.0000305, 7.400002, -99)
o11.Anchored = true
o11.Size = Vector3.new(1, 10.8000002, 2)
o11.CFrame = CFrame.new(24.0000305, 7.400002, -99, 1, -4.37113883e-08, 0, 4.37113883e-08, 1, 0, 0, 0, 1)
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.411765, 0.25098, 0.156863)
o11.Position = Vector3.new(24.0000305, 7.400002, -99)
o12.Parent = o11
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait(0.2)

local choke = Instance.new("Sound")
choke.Parent = b.Character:WaitForChild'Head'
choke.Volume = 0.5
choke.SoundId = "http://www.roblox.com/asset/?id=418658161"
choke.Pitch = 1
choke.Name = "Sound"
b.Character.HumanoidRootPart.Anchored = true
workspace.MainHanger.Nose.Noose.CanCollide = false
workspace.MainHanger:MoveTo(game:GetService'Players'.LocalPlayer.Character.Torso.Position + game:GetService'Players'.LocalPlayer.Character.Torso.CFrame.lookVector* 30)
if b.Character:FindFirstChild("HumanoidRootPart") then
			b.Character.HumanoidRootPart.CFrame = game.Workspace.MainHanger.Nose.Noose.CFrame 
if b.Character:WaitForChild'Humanoid'.Health == math.huge then
				b.Character:WaitForChild'Humanoid'.Health = 100
end
	local hum=b.Character:FindFirstChild('Humanoid')
	choke:Play()
					local hang=Instance.new('BoolValue',b)
			hang.Name='lol'
			hang.Value=true
	local noose=true
			coroutine.wrap(function() wait(5) noose=false end)()
			repeat
				wait(0.8)
				hum.Health=hum.Health-10

			until b.Character:WaitForChild'Humanoid'.Health == 0
			if hang and hang.Parent then
if b.Character:WaitForChild'Humanoid'.Health == 0 then
wait(2)
workspace.MainHanger:Destroy()
end
			end
		end
			end
		end
		end
end)
Chamber.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
local cors = {}
local mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
local o1 = Instance.new("Model")
local o2 = Instance.new("Part")
local o3 = Instance.new("Part")
local o4 = Instance.new("Part")
local o5 = Instance.new("Part")
local o6 = Instance.new("Part")
local o7 = Instance.new("Part")
local o8 = Instance.new("Smoke")
o1.Name = "Main"
o1.Parent = mas
o1.PrimaryPart = o2
o2.Parent = o1
o2.BrickColor = BrickColor.new("Black")
o2.Reflectance = 0.5
o2.Transparency = 0.5
o2.Position = Vector3.new(1.5, 8.81002045, -11)
o2.Rotation = Vector3.new(169.660004, -89.9700012, 171.429993)
o2.Anchored = true
o2.Size = Vector3.new(16, 9.60000038, 1)
o2.CFrame = CFrame.new(1.5, 8.81002045, -11, -2.98023224e-08, -4.49322446e-09, -0.999999881, 2.49543177e-08, 1, -5.43758993e-09, 1, -1.04945475e-08, -2.98023224e-08)
o2.Color = Color3.new(0.105882, 0.164706, 0.207843)
o2.Position = Vector3.new(1.5, 8.81002045, -11)
o3.Parent = o1
o3.BrickColor = BrickColor.new("Black")
o3.Reflectance = 0.5
o3.Transparency = 0.5
o3.Position = Vector3.new(-2.49790907, 14.2090998, -10.9999838)
o3.Rotation = Vector3.new(0, 0, -0.00999999978)
o3.Anchored = true
o3.Size = Vector3.new(9, 1.20000005, 16)
o3.CFrame = CFrame.new(-2.49790907, 14.2090998, -10.9999838, 0.99999994, 0.000204992815, -1.86264568e-08, -0.000204992786, 0.99999994, -1.35013943e-06, 1.90921003e-08, 1.34113407e-06, 0.99999994)
o3.Color = Color3.new(0.105882, 0.164706, 0.207843)
o3.Position = Vector3.new(-2.49790907, 14.2090998, -10.9999838)
o4.Parent = o1
o4.BrickColor = BrickColor.new("Black")
o4.Reflectance = 0.5
o4.Transparency = 0.5
o4.Position = Vector3.new(-2.50035095, 8.81021595, -18.4988556)
o4.Rotation = Vector3.new(0, -0.0199999996, 0.00999999978)
o4.Anchored = true
o4.Size = Vector3.new(7, 9.60000038, 1)
o4.CFrame = CFrame.new(-2.50035095, 8.81021595, -18.4988556, 0.99999994, -0.00011402266, -0.000386140222, 0.000114039351, 1, 4.31876942e-05, 0.000386135274, -4.32317283e-05, 0.99999994)
o4.Color = Color3.new(0.105882, 0.164706, 0.207843)
o4.Position = Vector3.new(-2.50035095, 8.81021595, -18.4988556)
o5.Parent = o1
o5.BrickColor = BrickColor.new("Black")
o5.Reflectance = 0.5
o5.Transparency = 0.5
o5.Position = Vector3.new(-6.49901581, 8.80992794, -10.9999924)
o5.Rotation = Vector3.new(-90.0100021, -89.9800034, -90.0100021)
o5.Anchored = true
o5.Size = Vector3.new(16, 9.60000038, 1)
o5.CFrame = CFrame.new(-6.49901581, 8.80992794, -10.9999924, -1.86264568e-08, 0.000204992815, -0.99999994, -1.35013943e-06, 0.99999994, 0.000204992786, 0.99999994, 1.34113407e-06, -1.90921003e-08)
o5.Color = Color3.new(0.105882, 0.164706, 0.207843)
o5.Position = Vector3.new(-6.49901581, 8.80992794, -10.9999924)
o6.Parent = o1
o6.BrickColor = BrickColor.new("Black")
o6.Reflectance = 0.5
o6.Transparency = 0.5
o6.Anchored = true
o6.Position = Vector3.new(-2.49826002, 8.90001583, -3.52252603)
o6.Size = Vector3.new(7, 9.40000057, 1)
o6.CFrame = CFrame.new(-2.49826002, 8.90001583, -3.52252603, 1, -8.77391937e-10, 6.73517297e-10, 8.77391937e-10, 1, 8.27717755e-11, -6.73517297e-10, -8.27717755e-11, 1)
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.105882, 0.164706, 0.207843)
o6.Position = Vector3.new(-2.49826002, 8.90001583, -3.52252603)
o7.Parent = o1
o7.BrickColor = BrickColor.new("Black")
o7.Name = "lol"
o7.Reflectance = 0.5
o7.Transparency = 0.5
o7.Position = Vector3.new(-2.50366402, 3.40907693, -10.9989176)
o7.Rotation = Vector3.new(0, 0, -0.00999999978)
o7.Anchored = true
o7.Size = Vector3.new(9, 1.20000005, 16)
o7.CFrame = CFrame.new(-2.50366402, 3.40907693, -10.9989176, 0.99999994, 0.000204992815, -1.86264568e-08, -0.000204992786, 0.99999994, -1.35013943e-06, 1.90921003e-08, 1.34113407e-06, 0.99999994)
o7.Color = Color3.new(0.105882, 0.164706, 0.207843)
o7.Position = Vector3.new(-2.50366402, 3.40907693, -10.9989176)
o8.Parent = o7
o8.Size = 10
o8.Opacity = 1
o8.RiseVelocity = 2
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
wait(.2)
workspace.Main.lol.Anchored = true
workspace.Main.lol.CanCollide = false
workspace.Main:MoveTo(Chr.Torso.Position + Chr.Torso.CFrame.lookVector* 30)
local fumes = Instance.new("Sound", workspace)
fumes.Volume = 0.6
fumes.SoundId = "http://www.roblox.com/asset/?id=137065982"
fumes.Pitch = 1
fumes.Name = "Sound"
	if b.Character and b ~= LocalPlayer then
		
		for _, v in pairs(b.Character:GetChildren()) do 
			if v:IsA("Clothing") then v:Destroy() end
		end
		
		if b.Character:FindFirstChild("HumanoidRootPart") then
			b.Character.HumanoidRootPart.CFrame = workspace.Main.lol.CFrame
			fumes:Play()
		end
	end
			end
wait(9)
	b.Character:WaitForChild'Humanoid':Destroy()
end
wait(4)
workspace.Sound:Destroy()
wait(2)
workspace.Main:Destroy()
		end
end)
Bring.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character and b.Character:FindFirstChild'HumanoidRootPart'then
				b.Character:WaitForChild'HumanoidRootPart'.CFrame = HRP.CFrame
			end
		end
	end
end)
CTools.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				if Home.FEBYPASS.Text == "FE BYPASS: ON" then
					workspace.FilteringEnabled(function()
  					b:GetChildren()
				for i, v in pairs() do
					v:Clone().Parent = LP:WaitForChild'Backpack'
					end
					end)
		end
				b:GetChildren()
				for i, v in pairs() do
					v:Clone().Parent = LP:WaitForChild'Backpack'
				end
			end
		end
	end
end)
Clone.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				if Home.FEBYPASS.Text == "FE BYPASS: ON" then
					workspace.FilteringEnabled(function()
  					b.Character.Archivable = true
				b.Character:Clone().Parent = workspace
					end)
		end
				b.Character.Archivable = true
				b.Character:Clone().Parent = workspace
			end
		end
	end
end)
Crash.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				for i=1, math.huge do
								local g = Instance.new("HopperBin") g.Parent = b.Backpack
								b.Character.HumanoidRootPart.Anchored = true
								b.Character.HumanoidRootPart.CFrame = CFrame.new(1000, 0, 810)
								b.CameraMode = "LockFirstPerson" 
								b.Character:WaitForChild'Humanoid'.WalkSpeed = 0
								b.Character:WaitForChild'Humanoid'.JumpPower = 0
								Instance.new("ForceField",b.Character)
								Instance.new("Fire",b.Character)
								Instance.new("Smoke",b.Character)
				end
			end
		end
	end
end)
Crucify.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
					local Sound1 = Instance.new("Sound" , b.Character:WaitForChild'Head')
	Sound1.Name = "horryify"
	Sound1.Looped = true
	Sound1.SoundId = 'rbxassetid://610708966'
	Sound1.Volume = 0.2
	Sound1:Play()
	Sound1.TimePosition = 0
				local torso = b.Character['Torso']
				local larm = b.Character['Left Arm']
				local rarm = b.Character['Right Arm']
				local lleg = b.Character['Left Leg']
				local rleg = b.Character['Right Leg']
				local head = b.Character['Head']
				if torso and larm and rarm and lleg and rleg and head and not b.Character:FindFirstChild(b.Character.Name..'succ') then
					local cru = Instance.new('Model', b.Character)
					cru.Name = b.Character.Name..'blackcellcrucify'
					local c1 = Instance.new('Part', cru)
					c1.BrickColor = BrickColor.new('Reddish brown')
					c1.Material = 'Wood'
					c1.CFrame = (b.Character:WaitForChild'Torso'.CFrame - b.Character:WaitForChild'Torso'.CFrame.lookVector) * CFrame.new(0, 0, 2)
					c1.Size = Vector3.new(2, 18.4, 1)
					c1.Anchored = true
					local c2 = c1:Clone()
					c2.Parent = cru
					c2.Size = Vector3.new(11, 1.6, 1)
					c2.CFrame = c1.CFrame + Vector3.new(0, 5, 0)
					torso.Anchored = true
					wait(0.5)
					torso.CFrame = c2.CFrame + torso.CFrame.lookVector + Vector3.new(0, -1, 0)
					wait(0.5)
					larm.Anchored = true
					rarm.Anchored = true
					lleg.Anchored = true
					rleg.Anchored = true
					head.Anchored = true
					wait()
					larm.CFrame = torso.CFrame * CFrame.new(-1.5, 1, 0)
					rarm.CFrame = torso.CFrame * CFrame.new(1.5, 1, 0)
					lleg.CFrame = torso.CFrame * CFrame.new(-0.1, -1.7, 0)
					rleg.CFrame = torso.CFrame * CFrame.new(0.1, -1.7, 0)
					larm.CFrame = larm.CFrame * CFrame.Angles(0, 0, -140)
					rarm.CFrame = rarm.CFrame * CFrame.Angles(0, 0, 140)
					lleg.CFrame = lleg.CFrame * CFrame.Angles(0, 0, 0.6)
					rleg.CFrame = rleg.CFrame * CFrame.Angles(0, 0, -0.6)
					local n1 = Instance.new('Part', cru)
					n1.BrickColor = BrickColor.new('Dark stone grey')
					n1.Material = 'DiamondPlate'
					n1.Size = Vector3.new(0.2, 0.2, 2)
					n1.Anchored = true
					local m = Instance.new('BlockMesh', n1)
					m.Scale = Vector3.new(0.2, 0.2, 0.7)
					n2 = n1:clone()
					n2.Parent = cru
					n3 = n1:clone()
					n3.Parent = cru
					n1.CFrame = (c2.CFrame + torso.CFrame.lookVector) * CFrame.new(2, 0, 0)
					n2.CFrame = (c2.CFrame + torso.CFrame.lookVector) * CFrame.new(-2, 0, 0)
					n3.CFrame = (c2.CFrame + torso.CFrame.lookVector) * CFrame.new(0, -3, 0)
					coroutine.wrap(function()
						repeat 
							wait(0.1)
							b.Character:WaitForChild'Humanoid'.Health = b.Character:WaitForChild'Humanoid'.Health - 0.6
							local p = Instance.new("Part", b.Character)
							p.CanCollide = false
							local color = math.random(1, 3)
							local bcolo
							if color == 1 then
								local bcolor = BrickColor.new(21)
								parent = n1
							elseif color == 2 then
								local bcolor = BrickColor.new(1004)
								parent = n2
							elseif color == 3 then
								local bcolor = BrickColor.new(21)
								parent = n3
							end
							p.BrickColor = BrickColor.new(21)
							local m = Instance.new('BlockMesh', p)
							p.Size = Vector3.new(0.5, 0.5, 0.5)
							m.Scale = Vector3.new(math.random() * 1.0, math.random() * 1.0, math.random() * 1.0)
							p.Locked = true
							p.TopSurface = "Smooth"
							p.BottomSurface = "Smooth"
							p.CFrame = parent.CFrame
							p.Anchored = false
							m.Name = 'Blood Peice'
							p.Name = 'Blood Peice'
							p.Touched:Connect(function(o)
								if o and p and o ~= parent and o ~= n1 and o ~= n2 and o ~= n3 and o ~= c1 and o ~= c2 and o.Parent ~= cru and (not game:GetService'Players':FindFirstChild(o.Parent.Name)) and o.Name ~= 'Blood Peice' and o.Name ~= 'Puke Peice' and o.Name ~= 'Puke Plate' and o.Name ~= 'Blood Plate' and (o.Parent.Name == 'Workspace' or o.Parent:IsA('Model')) and (o.Parent ~= p.Parent) and o:IsA('Part') and (o.Parent.Name ~= Chr.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
									local cf = CFrame.new(p.CFrame.X, o.CFrame.Y + o.Size.Y / 2, p.CFrame.Z)
									p:Destroy()
									local g = Instance.new('Part', workspace)
									g.Anchored = true
									g.CanCollide = false
									g.Size = Vector3.new(0.5, 0.5, 0.5)
									g.Name = 'Blood Plate'
									g.CFrame = cf
									g.BrickColor = BrickColor.new(21)
									local c = Instance.new('CylinderMesh', g)
									c.Scale = Vector3.new(1, 0.5, 1)
									c.Name = 'BloodMesh'
									wait(10)
									g:Destroy()
								elseif o and o.Name == 'Blood Plate' and p then 
									p:Destroy() 
									o.BloodMesh.Scale = o.BloodMesh.Scale + Vector3.new(2, 0, 2)
								end
							end)
						until (not cru) or (not cru.Parent) or (not b.Character) or (not b.Character:FindFirstChild('Head')) or b.Character:WaitForChild'Humanoid'.Health <= 0
					end)()
				end	
			end
		end
	end
end)
Dick.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local  color = "Pastel brown"
				pcall(function()
					b.Character["succ"]:Destroy()
				end)
				local   D = Instance.new("Model", b.Character)
				D.Name = "succ"
				local bg = Instance.new("BodyGyro", b.Character:WaitForChild'Torso')
				local  d = Instance.new("Part")
				d.TopSurface = 0
				d.BottomSurface = 0
				d.Name = "Main"
				d.Parent = b.Character["succ"]
				d.formFactor = 3
				d.Size = Vector3.new(0.6, 2.5, 0.6)
				d.BrickColor = BrickColor.new(color)
				d.Position = b.Character.Head.Position
				d.CanCollide = false
				local cy = Instance.new("CylinderMesh")
				cy.Parent = d
			local	w = Instance.new("Weld")
				w.Parent = b.Character.Head
				w.Part0 = d
				w.Part1 = b.Character.Head
				w.C0 = CFrame.new(0, 0.25, 2.1) * CFrame.Angles(math.rad(45), 0, 0)
				local c = Instance.new("Part")
				c.Name = "Mush"
				c.BottomSurface = 0
				c.TopSurface = 0
				c.FormFactor = 3
				c.Size = Vector3.new(0.6, 0.6, 0.6)
				c.CFrame = CFrame.new(d.Position)
				c.BrickColor = BrickColor.new("Pink")
				c.CanCollide = false
				c.Parent = b.Character["succ"]
				local msm = Instance.new("SpecialMesh")
				msm.Parent = c
				msm.MeshType = "Sphere"
				local cw = Instance.new("Weld")
				cw.Parent = c
				cw.Part0 = d
				cw.Part1 = c
				cw.C0 = CFrame.new(0, 1.3, 0)
				local ball1 = Instance.new("Part")
				ball1.Parent = b.Character["succ"]
				ball1.Name = "Left Ball"
				ball1.BottomSurface = 0
				ball1.TopSurface = 0
				ball1.CanCollide = false
				ball1.formFactor = 3
				ball1.Size = Vector3.new(1, 1, 1)
				ball1.CFrame = CFrame.new(b.Character:WaitForChild'Left Leg'.Position)
				ball1.BrickColor = BrickColor.new(color)
				local bsm = Instance.new("SpecialMesh")
				bsm.Parent = ball1
				bsm.MeshType = "Sphere"
				local b1w = Instance.new("Weld")
				b1w.Parent = ball1
				b1w.Part0 = b.Character:WaitForChild'Left Leg'
				b1w.Part1 = ball1
				b1w.C0 = CFrame.new(0, 0.5, -.5)
				local ball2 = Instance.new("Part")
				ball2.Parent = b.Character["succ"]
				ball2.Name = "Right Ball"
				ball2.BottomSurface = 0
				ball2.CanCollide = false
				ball2.TopSurface = 0
				ball2.formFactor = 3
				ball2.Size = Vector3.new(1, 1, 1)
				ball2.CFrame = CFrame.new(b.Character:WaitForChild"Right Leg".Position)
				ball2.BrickColor = BrickColor.new(color)
				local b2sm = Instance.new("SpecialMesh")
				b2sm.Parent = ball2
				b2sm.MeshType = "Sphere"
				local b2w = Instance.new("Weld")
				b2w.Parent = ball2
				b2w.Part0 = b.Character:WaitForChild'Right Leg'
				b2w.Part1 = ball2
				b2w.C0 = CFrame.new(0, 0.5, -.5)
			end
		end
	end
end)
Duck.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character and b.Character:FindFirstChild'Torso' then
				local m1 = Instance.new("SpecialMesh", b.Character:WaitForChild'Torso') 
				m1.MeshType = "MeshPart" 
				m1.TextureId = "http://www.roblox.com/asset/?id=9419827" 
				m1.MeshId = "http://www.roblox.com/asset/?id=9419831" 
				m1.Scale = Vector3.new(6, 6, 6)
				local err, succ = pcall(function()
					for _, v in pairs(b.Character:GetChildren()) do
						if not v:IsA'Script' and not v:IsA'Humanoid' and not v:IsA'LocalScript' and not v:IsA'Model' then
							v.Transparency = 1
						end
					end
				end)
				local err, succ = pcall(function()
					b.Character.Head.face:Destroy()
				end)
				local err, succ = pcall(function()
					b.Character:WaitForChild'Torso'.Transparency = 0
				end)
			end
		end
	end
end)
Famous.MouseButton1Down:Connect(function()

end)
Fart.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local sm = Instance.new('Smoke', b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'LowerTorso' )
				sm.Color = Color3.new(85, 170, 0)
				local S = b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'LowerTorso'
				local Sound = Instance.new("Sound" , S)
				Sound.Name = "groass"
				Sound.Looped = false
				Sound.SoundId = 'rbxassetid://148635119'
				Sound.Volume = 1
				Sound:Play()
				Sound.TimePosition = 0
			end	
		end
	end
end)
Freeze.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character and b.Character:FindFirstChild'Humanoid' then
				b.Character:WaitForChild'Humanoid'.WalkSpeed = 0
			end
			local c = b.Character:GetChildren()
			for i = 1, #c do
				if c[i].className == "Part" then
					c[i].Anchored = true
					c[i].Reflectance = 2
				end
			end
		end
	end
end)
Ghost.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				for a, a in pairs(b.Character:GetChildren()) do
					if a:IsA'BasePart' then
						a.Transparency = 0.5
						for b, b in pairs(a:GetChildren()) do
							if b:IsA'BasePart' then
								b.Transparency = 0.5
							end
						end
					end
				end
			end
		end
	end
end)
Giant.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local function scale(chr, scl)
					for _, v in pairs(b.Character:GetChildren()) do
						if v:IsA('Accessory') then
							v:Clone()
							v.Parent = game:GetService'Lighting'
						end
					end
					local Head = chr['Head']
					local Torso = chr['Torso']
					local LA = chr['Left Arm']
					local RA = chr['Right Arm']
					local LL = chr['Left Leg']
					local RL = chr['Right Leg']
					local HRP = chr['HumanoidRootPart']
					wait()
					Head.formFactor = 3
					Torso.formFactor = 3
					LA.formFactor = 3
					RA.formFactor = 3
					LL.formFactor = 3
					RL.formFactor = 3
					HRP.formFactor = 3
	    
					Head.Size = Vector3.new(scl * 2, scl, scl)
					Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
					LA.Size = Vector3.new(scl, scl * 2, scl)
					RA.Size = Vector3.new(scl, scl * 2, scl)
					LL.Size = Vector3.new(scl, scl * 2, scl)
					RL.Size = Vector3.new(scl, scl * 2, scl)
					HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
	    
					local Motor1 = Instance.new('Motor6D', Torso)
					Motor1.Part0 = Torso
					Motor1.Part1 = Head
					Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
					Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
					Motor1.Name = 'Neck'
			    
					local Motor2 = Instance.new('Motor6D', Torso)
					Motor2.Part0 = Torso
					Motor2.Part1 = LA
					Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
					Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
					Motor2.Name = 'Left Shoulder'
	    
					local Motor3 = Instance.new('Motor6D', Torso)
					Motor3.Part0 = Torso
					Motor3.Part1 = RA
					Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
					Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
					Motor3.Name = 'Right Shoulder'
					local Motor4 = Instance.new('Motor6D', Torso)
					Motor4.Part0 = Torso
					Motor4.Part1 = LL
					Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
					Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
					Motor4.Name = 'Left Hip'
					local Motor5 = Instance.new('Motor6D', Torso)
					Motor5.Part0 = Torso
					Motor5.Part1 = RL
					Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
					Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
					Motor5.Name = 'Right Hip'
					local Motor6 = Instance.new('Motor6D', HRP)
					Motor6.Part0 = HRP
					Motor6.Part1 = Torso
					Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
					Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
				end
				scale(b.Character, 5)
				for _, v in pairs(game:GetService'Lighting':GetChildren()) do
					if v:IsA('Accessory') then
						v.Parent = b.Character
					end
				end
			end
		end
	end
end)
Goto.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				spawn(function()
					HRP.CFrame = b.Character:WaitForChild'HumanoidRootPart'.CFrame
					wait(.25)
				end)
			end
		end
	end
end)
Invisible.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				for a, a in pairs(b.Character:GetChildren()) do
					if a:IsA'BasePart' then
						a.Transparency = 1
						for b, b in pairs(a:GetChildren()) do
							if b:IsA'BasePart' then
								b.Transparency = 1
							end
						end
					end
				end
			end
		end
	end
end)
Jail.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
local cors = {}
local mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
local o1 = Instance.new("Model")
local o2 = Instance.new("Part")
local o3 = Instance.new("Part")
local o4 = Instance.new("Part")
local o5 = Instance.new("Part")
local o6 = Instance.new("Part")
local o7 = Instance.new("Part")
local o8 = Instance.new("Part")
local o9 = Instance.new("Part")
local o10 = Instance.new("Part")
local o11 = Instance.new("Part")
local o12 = Instance.new("Part")
local o13 = Instance.new("Part")
local o14 = Instance.new("Part")
local o15 = Instance.new("Part")
local o16 = Instance.new("Part")
local o17 = Instance.new("Part")
local o18 = Instance.new("Part")
local o19 = Instance.new("Part")
local o20 = Instance.new("Part")
local o21 = Instance.new("Part")
local o22 = Instance.new("Part")
local o23 = Instance.new("Part")
local o24 = Instance.new("Part")
local o25 = Instance.new("Part")
local o26 = Instance.new("Part")
local o27 = Instance.new("Part")
local o28 = Instance.new("Part")
local o29 = Instance.new("Part")
local o30 = Instance.new("Part")
local o31 = Instance.new("Part")
local o32 = Instance.new("Part")
local o33 = Instance.new("Part")
local o34 = Instance.new("Part")
local o35 = Instance.new("Part")
local o36 = Instance.new("Part")
local o37 = Instance.new("Part")
local o38 = Instance.new("Part")
local o39 = Instance.new("Part")
local o40 = Instance.new("Part")
local o41 = Instance.new("Part")
o1.Name = "jailaf"
o1.Parent = mas
o2.Name = "Smooth Block Model"
o2.Parent = o1
o2.Material = Enum.Material.DiamondPlate
o2.Position = Vector3.new(133.321426, 5.9000206, 196.285721)
o2.Rotation = Vector3.new(-180, 0, -180)
o2.Anchored = true
o2.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o2.CFrame = CFrame.new(133.321426, 5.9000206, 196.285721, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o2.Position = Vector3.new(133.321426, 5.9000206, 196.285721)
o3.Name = "Bottom"
o3.Parent = o1
o3.Material = Enum.Material.DiamondPlate
o3.BrickColor = BrickColor.new("Black")
o3.Position = Vector3.new(137.5, 2.27859449, 193.5)
o3.Rotation = Vector3.new(-180, 0, -180)
o3.Anchored = true
o3.Size = Vector3.new(8.8214283, 0.557142973, 9.75)
o3.CFrame = CFrame.new(137.5, 2.27859449, 193.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o3.Color = Color3.new(0.105882, 0.164706, 0.207843)
o3.Position = Vector3.new(137.5, 2.27859449, 193.5)
o4.Name = "Smooth Block Model"
o4.Parent = o1
o4.Material = Enum.Material.DiamondPlate
o4.Position = Vector3.new(134.714279, 5.9000206, 198.142853)
o4.Rotation = Vector3.new(-180, 0, -180)
o4.Anchored = true
o4.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o4.CFrame = CFrame.new(134.714279, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o4.Position = Vector3.new(134.714279, 5.9000206, 198.142853)
o5.Name = "Smooth Block Model"
o5.Parent = o1
o5.Material = Enum.Material.DiamondPlate
o5.Position = Vector3.new(135.642853, 5.9000206, 188.857147)
o5.Rotation = Vector3.new(-180, 0, -180)
o5.Anchored = true
o5.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o5.CFrame = CFrame.new(135.642853, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o5.Position = Vector3.new(135.642853, 5.9000206, 188.857147)
o6.Name = "Smooth Block Model"
o6.Parent = o1
o6.Material = Enum.Material.DiamondPlate
o6.Position = Vector3.new(136.571442, 5.9000206, 188.857147)
o6.Rotation = Vector3.new(-180, 0, -180)
o6.Anchored = true
o6.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o6.CFrame = CFrame.new(136.571442, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o6.Position = Vector3.new(136.571442, 5.9000206, 188.857147)
o7.Name = "Smooth Block Model"
o7.Parent = o1
o7.Material = Enum.Material.DiamondPlate
o7.Position = Vector3.new(137.5, 5.9000206, 188.857147)
o7.Rotation = Vector3.new(-180, 0, -180)
o7.Anchored = true
o7.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o7.CFrame = CFrame.new(137.5, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o7.Position = Vector3.new(137.5, 5.9000206, 188.857147)
o8.Name = "Smooth Block Model"
o8.Parent = o1
o8.Material = Enum.Material.DiamondPlate
o8.Position = Vector3.new(138.428558, 5.9000206, 188.857147)
o8.Rotation = Vector3.new(-180, 0, -180)
o8.Anchored = true
o8.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o8.CFrame = CFrame.new(138.428558, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o8.Position = Vector3.new(138.428558, 5.9000206, 188.857147)
o9.Name = "Smooth Block Model"
o9.Parent = o1
o9.Material = Enum.Material.DiamondPlate
o9.Position = Vector3.new(139.357147, 5.9000206, 188.857147)
o9.Rotation = Vector3.new(-180, 0, -180)
o9.Anchored = true
o9.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o9.CFrame = CFrame.new(139.357147, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o9.Position = Vector3.new(139.357147, 5.9000206, 188.857147)
o10.Name = "Smooth Block Model"
o10.Parent = o1
o10.Material = Enum.Material.DiamondPlate
o10.Position = Vector3.new(140.285721, 5.9000206, 188.857147)
o10.Rotation = Vector3.new(-180, 0, -180)
o10.Anchored = true
o10.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o10.CFrame = CFrame.new(140.285721, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o10.Position = Vector3.new(140.285721, 5.9000206, 188.857147)
o11.Name = "Smooth Block Model"
o11.Parent = o1
o11.Material = Enum.Material.DiamondPlate
o11.Position = Vector3.new(141.214294, 5.9000206, 188.857147)
o11.Rotation = Vector3.new(-180, 0, -180)
o11.Anchored = true
o11.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o11.CFrame = CFrame.new(141.214294, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o11.Position = Vector3.new(141.214294, 5.9000206, 188.857147)
o12.Name = "Smooth Block Model"
o12.Parent = o1
o12.Material = Enum.Material.DiamondPlate
o12.Position = Vector3.new(141.678574, 5.9000206, 190.25)
o12.Rotation = Vector3.new(-180, 0, -180)
o12.Anchored = true
o12.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o12.CFrame = CFrame.new(141.678574, 5.9000206, 190.25, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o12.Position = Vector3.new(141.678574, 5.9000206, 190.25)
o13.Name = "Smooth Block Model"
o13.Parent = o1
o13.Material = Enum.Material.DiamondPlate
o13.Position = Vector3.new(141.678574, 5.9000206, 189.321426)
o13.Rotation = Vector3.new(-180, 0, -180)
o13.Anchored = true
o13.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o13.CFrame = CFrame.new(141.678574, 5.9000206, 189.321426, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o13.Position = Vector3.new(141.678574, 5.9000206, 189.321426)
o14.Name = "Smooth Block Model"
o14.Parent = o1
o14.Material = Enum.Material.DiamondPlate
o14.Position = Vector3.new(141.678574, 5.9000206, 191.178574)
o14.Rotation = Vector3.new(-180, 0, -180)
o14.Anchored = true
o14.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o14.CFrame = CFrame.new(141.678574, 5.9000206, 191.178574, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o14.Position = Vector3.new(141.678574, 5.9000206, 191.178574)
o15.Name = "Smooth Block Model"
o15.Parent = o1
o15.Material = Enum.Material.DiamondPlate
o15.Position = Vector3.new(141.678574, 5.9000206, 192.107147)
o15.Rotation = Vector3.new(-180, 0, -180)
o15.Anchored = true
o15.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o15.CFrame = CFrame.new(141.678574, 5.9000206, 192.107147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o15.Position = Vector3.new(141.678574, 5.9000206, 192.107147)
o16.Name = "Smooth Block Model"
o16.Parent = o1
o16.Material = Enum.Material.DiamondPlate
o16.Position = Vector3.new(141.678574, 5.9000206, 193.035721)
o16.Rotation = Vector3.new(-180, 0, -180)
o16.Anchored = true
o16.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o16.CFrame = CFrame.new(141.678574, 5.9000206, 193.035721, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o16.Position = Vector3.new(141.678574, 5.9000206, 193.035721)
o17.Name = "Smooth Block Model"
o17.Parent = o1
o17.Material = Enum.Material.DiamondPlate
o17.Position = Vector3.new(141.678574, 5.9000206, 193.964279)
o17.Rotation = Vector3.new(-180, 0, -180)
o17.Anchored = true
o17.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o17.CFrame = CFrame.new(141.678574, 5.9000206, 193.964279, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o17.Position = Vector3.new(141.678574, 5.9000206, 193.964279)
o18.Name = "Smooth Block Model"
o18.Parent = o1
o18.Material = Enum.Material.DiamondPlate
o18.Position = Vector3.new(141.678574, 5.9000206, 194.892853)
o18.Rotation = Vector3.new(-180, 0, -180)
o18.Anchored = true
o18.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o18.CFrame = CFrame.new(141.678574, 5.9000206, 194.892853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o18.Position = Vector3.new(141.678574, 5.9000206, 194.892853)
o19.Name = "Smooth Block Model"
o19.Parent = o1
o19.Material = Enum.Material.DiamondPlate
o19.Position = Vector3.new(141.678574, 5.9000206, 195.821426)
o19.Rotation = Vector3.new(-180, 0, -180)
o19.Anchored = true
o19.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o19.CFrame = CFrame.new(141.678574, 5.9000206, 195.821426, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o19.Position = Vector3.new(141.678574, 5.9000206, 195.821426)
o20.Name = "Smooth Block Model"
o20.Parent = o1
o20.Material = Enum.Material.DiamondPlate
o20.Position = Vector3.new(141.678574, 5.9000206, 196.75)
o20.Rotation = Vector3.new(-180, 0, -180)
o20.Anchored = true
o20.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o20.CFrame = CFrame.new(141.678574, 5.9000206, 196.75, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o20.Position = Vector3.new(141.678574, 5.9000206, 196.75)
o21.Name = "Smooth Block Model"
o21.Parent = o1
o21.Material = Enum.Material.DiamondPlate
o21.Position = Vector3.new(141.678574, 5.9000206, 197.678574)
o21.Rotation = Vector3.new(-180, 0, -180)
o21.Anchored = true
o21.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o21.CFrame = CFrame.new(141.678574, 5.9000206, 197.678574, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o21.Position = Vector3.new(141.678574, 5.9000206, 197.678574)
o22.Name = "Smooth Block Model"
o22.Parent = o1
o22.Material = Enum.Material.DiamondPlate
o22.Position = Vector3.new(141.214294, 5.9000206, 198.142853)
o22.Rotation = Vector3.new(-180, 0, -180)
o22.Anchored = true
o22.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o22.CFrame = CFrame.new(141.214294, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o22.Position = Vector3.new(141.214294, 5.9000206, 198.142853)
o23.Name = "Smooth Block Model"
o23.Parent = o1
o23.Material = Enum.Material.DiamondPlate
o23.Position = Vector3.new(140.285721, 5.9000206, 198.142853)
o23.Rotation = Vector3.new(-180, 0, -180)
o23.Anchored = true
o23.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o23.CFrame = CFrame.new(140.285721, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o23.Position = Vector3.new(140.285721, 5.9000206, 198.142853)
o24.Name = "Smooth Block Model"
o24.Parent = o1
o24.Material = Enum.Material.DiamondPlate
o24.Position = Vector3.new(139.357147, 5.9000206, 198.142853)
o24.Rotation = Vector3.new(-180, 0, -180)
o24.Anchored = true
o24.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o24.CFrame = CFrame.new(139.357147, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o24.Position = Vector3.new(139.357147, 5.9000206, 198.142853)
o25.Name = "Smooth Block Model"
o25.Parent = o1
o25.Material = Enum.Material.DiamondPlate
o25.Position = Vector3.new(138.428558, 5.9000206, 198.142853)
o25.Rotation = Vector3.new(-180, 0, -180)
o25.Anchored = true
o25.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o25.CFrame = CFrame.new(138.428558, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o25.Position = Vector3.new(138.428558, 5.9000206, 198.142853)
o26.Name = "Smooth Block Model"
o26.Parent = o1
o26.Material = Enum.Material.DiamondPlate
o26.Position = Vector3.new(137.5, 5.9000206, 198.142853)
o26.Rotation = Vector3.new(-180, 0, -180)
o26.Anchored = true
o26.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o26.CFrame = CFrame.new(137.5, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o26.Position = Vector3.new(137.5, 5.9000206, 198.142853)
o27.Name = "Smooth Block Model"
o27.Parent = o1
o27.Material = Enum.Material.DiamondPlate
o27.Position = Vector3.new(136.571442, 5.9000206, 198.142853)
o27.Rotation = Vector3.new(-180, 0, -180)
o27.Anchored = true
o27.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o27.CFrame = CFrame.new(136.571442, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o27.Position = Vector3.new(136.571442, 5.9000206, 198.142853)
o28.Name = "Smooth Block Model"
o28.Parent = o1
o28.Material = Enum.Material.DiamondPlate
o28.Position = Vector3.new(135.642853, 5.9000206, 198.142853)
o28.Rotation = Vector3.new(-180, 0, -180)
o28.Anchored = true
o28.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o28.CFrame = CFrame.new(135.642853, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o28.Position = Vector3.new(135.642853, 5.9000206, 198.142853)
o29.Name = "Smooth Block Model"
o29.Parent = o1
o29.Material = Enum.Material.DiamondPlate
o29.Position = Vector3.new(133.785706, 5.9000206, 198.142853)
o29.Rotation = Vector3.new(-180, 0, -180)
o29.Anchored = true
o29.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o29.CFrame = CFrame.new(133.785706, 5.9000206, 198.142853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o29.Position = Vector3.new(133.785706, 5.9000206, 198.142853)
o30.Name = "Smooth Block Model"
o30.Parent = o1
o30.Material = Enum.Material.DiamondPlate
o30.Position = Vector3.new(133.321426, 5.9000206, 197.214294)
o30.Rotation = Vector3.new(-180, 0, -180)
o30.Anchored = true
o30.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o30.CFrame = CFrame.new(133.321426, 5.9000206, 197.214294, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o30.Position = Vector3.new(133.321426, 5.9000206, 197.214294)
o31.Name = "Smooth Block Model"
o31.Parent = o1
o31.Material = Enum.Material.DiamondPlate
o31.Position = Vector3.new(133.321426, 5.9000206, 193.5)
o31.Rotation = Vector3.new(-180, 0, -180)
o31.Anchored = true
o31.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o31.CFrame = CFrame.new(133.321426, 5.9000206, 193.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o31.Position = Vector3.new(133.321426, 5.9000206, 193.5)
o32.Name = "Smooth Block Model"
o32.Parent = o1
o32.Material = Enum.Material.DiamondPlate
o32.Position = Vector3.new(133.321426, 5.9000206, 192.571442)
o32.Rotation = Vector3.new(-180, 0, -180)
o32.Anchored = true
o32.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o32.CFrame = CFrame.new(133.321426, 5.9000206, 192.571442, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o32.Position = Vector3.new(133.321426, 5.9000206, 192.571442)
o33.Name = "Smooth Block Model"
o33.Parent = o1
o33.Material = Enum.Material.DiamondPlate
o33.Position = Vector3.new(133.321426, 5.9000206, 191.642853)
o33.Rotation = Vector3.new(-180, 0, -180)
o33.Anchored = true
o33.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o33.CFrame = CFrame.new(133.321426, 5.9000206, 191.642853, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o33.Position = Vector3.new(133.321426, 5.9000206, 191.642853)
o34.Name = "Smooth Block Model"
o34.Parent = o1
o34.Material = Enum.Material.DiamondPlate
o34.Position = Vector3.new(133.321426, 5.9000206, 190.714279)
o34.Rotation = Vector3.new(-180, 0, -180)
o34.Anchored = true
o34.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o34.CFrame = CFrame.new(133.321426, 5.9000206, 190.714279, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o34.Position = Vector3.new(133.321426, 5.9000206, 190.714279)
o35.Name = "Smooth Block Model"
o35.Parent = o1
o35.Material = Enum.Material.DiamondPlate
o35.Position = Vector3.new(133.321426, 5.9000206, 189.785706)
o35.Rotation = Vector3.new(-180, 0, -180)
o35.Anchored = true
o35.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o35.CFrame = CFrame.new(133.321426, 5.9000206, 189.785706, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o35.Position = Vector3.new(133.321426, 5.9000206, 189.785706)
o36.Name = "Smooth Block Model"
o36.Parent = o1
o36.Material = Enum.Material.DiamondPlate
o36.Position = Vector3.new(133.321426, 5.9000206, 195.357147)
o36.Rotation = Vector3.new(-180, 0, -180)
o36.Anchored = true
o36.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o36.CFrame = CFrame.new(133.321426, 5.9000206, 195.357147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o36.Position = Vector3.new(133.321426, 5.9000206, 195.357147)
o37.Name = "Smooth Block Model"
o37.Parent = o1
o37.Material = Enum.Material.DiamondPlate
o37.Position = Vector3.new(133.321426, 5.9000206, 194.428558)
o37.Rotation = Vector3.new(-180, 0, -180)
o37.Anchored = true
o37.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o37.CFrame = CFrame.new(133.321426, 5.9000206, 194.428558, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o37.Position = Vector3.new(133.321426, 5.9000206, 194.428558)
o38.Name = "Smooth Block Model"
o38.Parent = o1
o38.Material = Enum.Material.DiamondPlate
o38.Position = Vector3.new(133.321426, 5.9000206, 188.857147)
o38.Rotation = Vector3.new(-180, 0, -180)
o38.Anchored = true
o38.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o38.CFrame = CFrame.new(133.321426, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o38.Position = Vector3.new(133.321426, 5.9000206, 188.857147)
o39.Name = "Smooth Block Model"
o39.Parent = o1
o39.Material = Enum.Material.DiamondPlate
o39.Position = Vector3.new(134.25, 5.9000206, 188.857147)
o39.Rotation = Vector3.new(-180, 0, -180)
o39.Anchored = true
o39.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o39.CFrame = CFrame.new(134.25, 5.9000206, 188.857147, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o39.Position = Vector3.new(134.25, 5.9000206, 188.857147)
o40.Name = "Top"
o40.Parent = o1
o40.Material = Enum.Material.DiamondPlate
o40.BrickColor = BrickColor.new("Black")
o40.Position = Vector3.new(137.5, 9.52145386, 193.5)
o40.Rotation = Vector3.new(-180, 0, -180)
o40.Anchored = true
o40.Size = Vector3.new(8.8214283, 0.557142973, 9.75)
o40.CFrame = CFrame.new(137.5, 9.52145386, 193.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o40.Color = Color3.new(0.105882, 0.164706, 0.207843)
o40.Position = Vector3.new(137.5, 9.52145386, 193.5)
o41.Name = "Smooth Block Model"
o41.Parent = o1
o41.Material = Enum.Material.DiamondPlate
o41.Position = Vector3.new(133.321426, 5.9000206, 197.678574)
o41.Rotation = Vector3.new(-180, 0, -180)
o41.Anchored = true
o41.Size = Vector3.new(0.464285702, 6.68571568, 0.464285731)
o41.CFrame = CFrame.new(133.321426, 5.9000206, 197.678574, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o41.Position = Vector3.new(133.321426, 5.9000206, 197.678574)
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait (0.2)

game.Workspace.jailaf.Bottom.Anchored = true
game.Workspace.jailaf.Bottom.CanCollide = false
game.Workspace.jailaf:MoveTo(game:GetService'Players'.LocalPlayer.Character.Torso.Position + game:GetService'Players'.LocalPlayer.Character.Torso.CFrame.lookVector* 30)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if b.Character and b ~= LocalPlayer then
	
if b.Character:FindFirstChild("HumanoidRootPart") then
			b.Character.HumanoidRootPart.CFrame = game.Workspace.jailaf.Bottom.CFrame
			
			if b.Character:WaitForChild'Humanoid'.Health == 0 then
				game.Workspace.jailaf:Destroy()
			end
end
end

			end
		end
		end
end)
KKK.MouseButton1Down:Connect(function()
		local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
	for i = 1,5 do
if b.Character and b.Character:FindFirstChild('HumanoidRootPart') and b.Character:FindFirstChild('Torso') then
b.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(999000, 1001000), 1000000, 1000000)
local SP = Instance.new('SkateboardPlatform', b.Character) SP.Position = b.Character.HumanoidRootPart.Position SP.Transparency = 1
spawn(function()
repeat wait()
if b.Character and b.Character:FindFirstChild('HumanoidRootPart') then SP.Position = b.Character.HumanoidRootPart.Position end
until not game.Players:FindFirstChild(b.Name)
end)
b.Character.Torso.Anchored = true
end
	end
			end
		end
		end
end)
Kidnap.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local o1 = Instance.new("Model")
				local o2 = Instance.new("Part")
				local o3 = Instance.new("CylinderMesh")
				local o4 = Instance.new("Part")
				local o5 = Instance.new("SpecialMesh")
				local o6 = Instance.new("Part")
				local o7 = Instance.new("SpecialMesh")
				local o8 = Instance.new("Part")
				local o9 = Instance.new("BlockMesh")
				local o10 = Instance.new("Part")
				local o11 = Instance.new("BlockMesh")
				local o12 = Instance.new("Part")
				local o13 = Instance.new("Part")
				local o14 = Instance.new("BlockMesh")
				local o15 = Instance.new("Part")
				local o16 = Instance.new("SpecialMesh")
				local o17 = Instance.new("Part")
				local o18 = Instance.new("SpecialMesh")
				local o19 = Instance.new("Part")
				local o20 = Instance.new("SpecialMesh")
				local o21 = Instance.new("Sound")
				local o22 = Instance.new("Part")
				local o23 = Instance.new("BlockMesh")
				local o24 = Instance.new("Part")
				local o25 = Instance.new("SpecialMesh")
				local o26 = Instance.new("Part")
				local o27 = Instance.new("BlockMesh")
				local o28 = Instance.new("Part")
				local o29 = Instance.new("SpecialMesh")
				local o30 = Instance.new("Part")
				local o31 = Instance.new("BlockMesh")
				local o32 = Instance.new("Part")
				local o33 = Instance.new("BlockMesh")
				local o34 = Instance.new("Part")
				local o35 = Instance.new("BlockMesh")
				local o36 = Instance.new("Part")
				local o37 = Instance.new("BlockMesh")
				local o38 = Instance.new("Part")
				local o39 = Instance.new("Part")
				local o40 = Instance.new("BlockMesh")
				local o41 = Instance.new("Part")
				local o42 = Instance.new("BlockMesh")
				local o43 = Instance.new("Part")
				local o44 = Instance.new("BlockMesh")
				local o45 = Instance.new("Part")
				local o46 = Instance.new("SpecialMesh")
				local o47 = Instance.new("Part")
				local o48 = Instance.new("BlockMesh")
				local o49 = Instance.new("Part")
				local o50 = Instance.new("BlockMesh")
				local o51 = Instance.new("Part")
				local o52 = Instance.new("BlockMesh")
				local o53 = Instance.new("Part")
				local o54 = Instance.new("SpecialMesh")
				local o55 = Instance.new("Part")
				local o56 = Instance.new("SpecialMesh")
				local o57 = Instance.new("Part")
				local o58 = Instance.new("BlockMesh")
				local o59 = Instance.new("Part")
				local o60 = Instance.new("BlockMesh")
				local o61 = Instance.new("Part")
				local o62 = Instance.new("BlockMesh")
				local o63 = Instance.new("Part")
				local o64 = Instance.new("Part")
				local o65 = Instance.new("Part")
				local o66 = Instance.new("BlockMesh")
				local o67 = Instance.new("Part")
				local o68 = Instance.new("BlockMesh")
				local o69 = Instance.new("Part")
				local o70 = Instance.new("BlockMesh")
				local o71 = Instance.new("Part")
				local o72 = Instance.new("BlockMesh")
				local o73 = Instance.new("Part")
				local o74 = Instance.new("SpecialMesh")
				local o75 = Instance.new("Decal")
				local o76 = Instance.new("Part")
				local o77 = Instance.new("Part")
				local o78 = Instance.new("BlockMesh")
				local o79 = Instance.new("Part")
				local o80 = Instance.new("SpecialMesh")
				local o81 = Instance.new("Decal")
				local o82 = Instance.new("Part")
				local o83 = Instance.new("SpecialMesh")
				local o84 = Instance.new("Humanoid")
				local o85 = Instance.new("Part")
				local o86 = Instance.new("Part")
				local o87 = Instance.new("Part")
				local o88 = Instance.new("Decal")
				local o89 = Instance.new("Motor6D")
				local o90 = Instance.new("Motor6D")
				local o91 = Instance.new("Motor6D")
				local o92 = Instance.new("Motor6D")
				local o93 = Instance.new("Motor6D")
				local o94 = Instance.new("Part")
				local o95 = Instance.new("Part")
				local o96 = Instance.new("Part")
				local o97 = Instance.new("Part")
				local o98 = Instance.new("Part")
				local o99 = Instance.new("Decal")
				local o100 = Instance.new("Motor6D")
				local o101 = Instance.new("Motor6D")
				local o102 = Instance.new("Motor6D")
				local o103 = Instance.new("Part")
				local o104 = Instance.new("Part")
				local o105 = Instance.new("Part")
				local o106 = Instance.new("Part")
				local o107 = Instance.new("Part")
				local o108 = Instance.new("CylinderMesh")
				local o109 = Instance.new("Part")
				local o110 = Instance.new("CylinderMesh")
				local o111 = Instance.new("Part")
				local o112 = Instance.new("CylinderMesh")
				local o113 = Instance.new("Part")
				local o114 = Instance.new("CylinderMesh")
				local o115 = Instance.new("Part")
				local o116 = Instance.new("CylinderMesh")
				local o117 = Instance.new("Part")
				local o118 = Instance.new("CylinderMesh")
				local o119 = Instance.new("Part")
				local o120 = Instance.new("CylinderMesh")
				local o121 = Instance.new("Part")
				local o122 = Instance.new("SpecialMesh")
				local o123 = Instance.new("Part")
				local o124 = Instance.new("Decal")
				o1.Name = " "
				o1.Parent = workspace
				o2.Parent = o1
				o2.Position = Vector3.new(95.3486252, 1.50001001, 18.4564877)
				o2.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
				o2.Anchored = true
				o2.FormFactor = Enum.FormFactor.Symmetric
				o2.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
				o2.CFrame = CFrame.new(95.3486252, 1.50001001, 18.4564877, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
				o3.Parent = o2
				o4.Parent = o1
				o4.BrickColor = BrickColor.new("Institutional white")
				o4.Position = Vector3.new(96.3181839, 7.00000668, 9.31151104)
				o4.Rotation = Vector3.new(90, 89.9314728, -90)
				o4.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o4.Velocity = Vector3.new(-0.000346515269, 0.00201798417, -0.00195027643)
				o4.Anchored = true
				o4.FormFactor = Enum.FormFactor.Plate
				o4.Size = Vector3.new(1, 2.4000001, 2)
				o4.CFrame = CFrame.new(96.3181839, 7.00000668, 9.31151104, 0, 3.96052044e-008, 0.999999285, 0, 1, -3.97634246e-008, -1, 0, 0)
				o4.BackSurface = Enum.SurfaceType.Weld
				o4.BottomSurface = Enum.SurfaceType.Weld
				o4.LeftSurface = Enum.SurfaceType.Weld
				o4.TopSurface = Enum.SurfaceType.Weld
				o4.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o5.Parent = o4
				o5.MeshType = Enum.MeshType.Wedge
				o6.Parent = o1
				o6.Material = Enum.Material.SmoothPlastic
				o6.BrickColor = BrickColor.new("Really black")
				o6.Transparency = 0.5
				o6.Position = Vector3.new(96.3181839, 7.00000668, 13.8115101)
				o6.Rotation = Vector3.new(90, 89.9440536, -90)
				o6.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o6.Velocity = Vector3.new(0.000965324172, 0.00135755131, -0.00195027643)
				o6.Anchored = true
				o6.FormFactor = Enum.FormFactor.Plate
				o6.Size = Vector3.new(8, 2.4000001, 1.99999976)
				o6.CFrame = CFrame.new(96.3181839, 7.00000668, 13.8115101, 0, 3.96315798e-008, 0.999999523, 0, 1, -3.97370599e-008, -1, 0, 0)
				o6.BackSurface = Enum.SurfaceType.Weld
				o6.BottomSurface = Enum.SurfaceType.Weld
				o6.LeftSurface = Enum.SurfaceType.Weld
				o6.RightSurface = Enum.SurfaceType.Weld
				o6.TopSurface = Enum.SurfaceType.Weld
				o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o7.Parent = o6
				o7.MeshType = Enum.MeshType.Wedge
				o8.Parent = o1
				o8.BrickColor = BrickColor.new("Br. yellowish orange")
				o8.Position = Vector3.new(92.2182083, 4.00000715, 9.61151409)
				o8.Rotation = Vector3.new(-0, 0, -2.26619136e-006)
				o8.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o8.Velocity = Vector3.new(-0.000475873821, 0.00227026758, -0.00119533995)
				o8.Anchored = true
				o8.FormFactor = Enum.FormFactor.Custom
				o8.Size = Vector3.new(0.200000003, 0.800000012, 0.799999714)
				o8.CFrame = CFrame.new(92.2182083, 4.00000715, 9.61151409, 0.999998808, 3.95524538e-008, 0, -3.98161575e-008, 1, 0, 0, 0, 1)
				o8.BackSurface = Enum.SurfaceType.Weld
				o8.BottomSurface = Enum.SurfaceType.Weld
				o8.FrontSurface = Enum.SurfaceType.Weld
				o8.LeftSurface = Enum.SurfaceType.Weld
				o8.RightSurface = Enum.SurfaceType.Weld
				o8.TopSurface = Enum.SurfaceType.Weld
				o8.Color = Color3.new(0.886275, 0.607843, 0.25098)
				o9.Parent = o8
				o10.Parent = o1
				o10.BrickColor = BrickColor.new("Institutional white")
				o10.Position = Vector3.new(105.317894, 8.40004158, 9.31151295)
				o10.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
				o10.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o10.Velocity = Vector3.new(-0.000245332019, 0.00136755884, -0.00436839834)
				o10.Anchored = true
				o10.CanCollide = false
				b.Character:WaitForChild'Humanoid'.WalkSpeed = 0
				b.Character:WaitForChild'Humanoid'.JumpPower = 0
				o10.FormFactor = Enum.FormFactor.Plate
				o10.Size = Vector3.new(14, 0.400000006, 1)
				o10.CFrame = CFrame.new(105.317894, 8.40004158, 9.31151295, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
				o10.BackSurface = Enum.SurfaceType.Weld
				o10.BottomSurface = Enum.SurfaceType.Weld
				o10.FrontSurface = Enum.SurfaceType.Weld
				o10.LeftSurface = Enum.SurfaceType.Weld
				o10.RightSurface = Enum.SurfaceType.Weld
				o10.TopSurface = Enum.SurfaceType.Weld
				o10.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o11.Parent = o10
				o12.Name = "DOOR"
				o12.Parent = o1
				o12.BrickColor = BrickColor.new("Institutional white")
				o12.Position = Vector3.new(103.708466, 5.81500626, 9.31151104)
				o12.Rotation = Vector3.new(-0, 0, -4.43210411e-006)
				o12.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o12.Velocity = Vector3.new(-0.000432157307, 0.00148387556, -0.00427860441)
				o12.Anchored = true
				o12.CanCollide = false
				o12.FormFactor = Enum.FormFactor.Plate
				o12.Size = Vector3.new(5.22000027, 4.82999992, 1)
				o12.CFrame = CFrame.new(103.708466, 5.81500626, 9.31151104, 1, 7.73548052e-008, 0, -7.73548052e-008, 1, 0, 0, 0, 1)
				o12.BottomSurface = Enum.SurfaceType.Weld
				o12.LeftSurface = Enum.SurfaceType.Weld
				o12.RightSurface = Enum.SurfaceType.Weld
				o12.TopSurface = Enum.SurfaceType.Weld
				o12.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o13.Parent = o1
				o13.BrickColor = BrickColor.new("White")
				o13.Position = Vector3.new(109.818169, 5.80000877, 9.31151104)
				o13.Rotation = Vector3.new(-0, 0, -2.25410599e-006)
				o13.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o13.Velocity = Vector3.new(-0.00043324125, 0.00104231632, -0.006061906)
				o13.Anchored = true
				o13.FormFactor = Enum.FormFactor.Plate
				o13.Size = Vector3.new(7, 4.80000019, 1)
				o13.CFrame = CFrame.new(109.818169, 5.80000877, 9.31151104, 0.999996901, 3.9341451e-008, 0, -4.00270856e-008, 1, 0, 0, 0, 1)
				o13.BackSurface = Enum.SurfaceType.Weld
				o13.BottomSurface = Enum.SurfaceType.Weld
				o13.FrontSurface = Enum.SurfaceType.Weld
				o13.LeftSurface = Enum.SurfaceType.Weld
				o13.RightSurface = Enum.SurfaceType.Weld
				o13.TopSurface = Enum.SurfaceType.Weld
				o13.Color = Color3.new(0.94902, 0.952941, 0.952941)
				o14.Parent = o13
				o15.Parent = o1
				o15.BrickColor = BrickColor.new("Institutional white")
				o15.Position = Vector3.new(97.817894, 8.40000725, 13.8115139)
				o15.Rotation = Vector3.new(90, 89.960434, -90)
				o15.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o15.Velocity = Vector3.new(0.00106650498, 0.00124916411, -0.00218200427)
				o15.Anchored = true
				o15.CanCollide = false
				o15.FormFactor = Enum.FormFactor.Plate
				o15.Size = Vector3.new(10, 0.400000006, 1)
				o15.CFrame = CFrame.new(97.817894, 8.40000725, 13.8115139, 0, 3.86294303e-008, 0.999999762, 0, 1, -3.86821704e-008, -1, 0, 0)
				o15.BackSurface = Enum.SurfaceType.Weld
				o15.BottomSurface = Enum.SurfaceType.Weld
				o15.TopSurface = Enum.SurfaceType.Weld
				o15.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o16.Parent = o15
				o16.MeshType = Enum.MeshType.Wedge
				o17.Parent = o1
				o17.BrickColor = BrickColor.new("Institutional white")
				o17.Position = Vector3.new(96.3181839, 7.00000668, 18.3115101)
				o17.Rotation = Vector3.new(90, 89.9314728, -90)
				o17.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o17.Velocity = Vector3.new(0.00227716356, 0.000697118347, -0.00195027643)
				o17.Anchored = true
				o17.FormFactor = Enum.FormFactor.Plate
				o17.Size = Vector3.new(1, 2.4000001, 2)
				o17.CFrame = CFrame.new(96.3181839, 7.00000668, 18.3115101, 0, 3.96052044e-008, 0.999999285, 0, 1, -3.97634246e-008, -1, 0, 0)
				o17.BackSurface = Enum.SurfaceType.Weld
				o17.BottomSurface = Enum.SurfaceType.Weld
				o17.RightSurface = Enum.SurfaceType.Weld
				o17.TopSurface = Enum.SurfaceType.Weld
				o17.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o18.Parent = o17
				o18.MeshType = Enum.MeshType.Wedge
				o19.Parent = o1
				o19.BrickColor = BrickColor.new("Institutional white")
				o19.Position = Vector3.new(93.8181839, 5.20000744, 13.8115101)
				o19.Rotation = Vector3.new(90, 89.8573456, -90)
				o19.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o19.Velocity = Vector3.new(0.000835234998, 0.00153823046, -0.00148565089)
				o19.Anchored = true
				o19.FormFactor = Enum.FormFactor.Plate
				o19.Size = Vector3.new(10, 1.20000005, 3)
				o19.CFrame = CFrame.new(93.8181839, 5.20000744, 13.8115101, 0, 3.77325726e-008, 0.999996901, 0, 1, -3.84182002e-008, -1, 0, 0)
				o19.BackSurface = Enum.SurfaceType.Weld
				o19.BottomSurface = Enum.SurfaceType.Weld
				o19.TopSurface = Enum.SurfaceType.Weld
				o19.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o20.Parent = o19
				o20.MeshType = Enum.MeshType.Wedge
				o21.Parent = o19
				o21.SoundId = "rbxassetid://532147820"
				o21.Looped = true
				o22.Parent = o1
				o22.BrickColor = BrickColor.new("Institutional white")
				o22.Position = Vector3.new(96.3182907, 4.60000753, 9.31151104)
				o22.Rotation = Vector3.new(-0, 0, -2.23446773e-006)
				o22.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o22.Velocity = Vector3.new(-0.000519967522, 0.00201797695, -0.00230253674)
				o22.Anchored = true
				o22.FormFactor = Enum.FormFactor.Plate
				o22.Size = Vector3.new(2, 2.4000001, 1)
				o22.CFrame = CFrame.new(96.3182907, 4.60000753, 9.31151104, 0.999993801, 3.8998575e-008, 0, -4.03698408e-008, 1, 0, 0, 0, 1)
				o22.BackSurface = Enum.SurfaceType.Weld
				o22.BottomSurface = Enum.SurfaceType.Weld
				o22.FrontSurface = Enum.SurfaceType.Weld
				o22.LeftSurface = Enum.SurfaceType.Weld
				o22.RightSurface = Enum.SurfaceType.Weld
				o22.TopSurface = Enum.SurfaceType.Weld
				o22.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o23.Parent = o22
				o24.Parent = o1
				o24.BrickColor = BrickColor.new("Institutional white")
				o24.Position = Vector3.new(113.817245, 6.80000734, 18.3115101)
				o24.Rotation = Vector3.new(-0, -90, 0)
				o24.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o24.Velocity = Vector3.new(0.00226270943, -0.000567569688, -0.00708095264)
				o24.Anchored = true
				o24.FormFactor = Enum.FormFactor.Plate
				o24.Size = Vector3.new(1, 2.79999995, 1)
				o24.CFrame = CFrame.new(113.817245, 6.80000734, 18.3115101, 0, 5.54578605e-008, -1, 0, 1, 5.54578605e-008, 1, 0, 0)
				o24.BackSurface = Enum.SurfaceType.Weld
				o24.BottomSurface = Enum.SurfaceType.Weld
				o24.TopSurface = Enum.SurfaceType.Weld
				o24.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o25.Parent = o24
				o25.MeshType = Enum.MeshType.Wedge
				o26.Parent = o1
				o26.BrickColor = BrickColor.new("Institutional white")
				o26.Position = Vector3.new(93.0181885, 2.60000825, 13.8115101)
				o26.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
				o26.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o26.Velocity = Vector3.new(0.000647328445, 0.00159604801, -0.00163401756)
				o26.Anchored = true
				o26.FormFactor = Enum.FormFactor.Plate
				o26.Size = Vector3.new(1.39999998, 1.60000002, 10)
				o26.CFrame = CFrame.new(93.0181885, 2.60000825, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
				o26.BackSurface = Enum.SurfaceType.Weld
				o26.BottomSurface = Enum.SurfaceType.Weld
				o26.FrontSurface = Enum.SurfaceType.Weld
				o26.LeftSurface = Enum.SurfaceType.Weld
				o26.RightSurface = Enum.SurfaceType.Weld
				o26.TopSurface = Enum.SurfaceType.Weld
				o26.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o27.Parent = o26
				o28.Parent = o1
				o28.BrickColor = BrickColor.new("Institutional white")
				o28.Position = Vector3.new(113.818176, 6.80000877, 9.31151104)
				o28.Rotation = Vector3.new(-90, -89.7982635, -90)
				o28.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o28.Velocity = Vector3.new(-0.000360969483, 0.000753228669, -0.00708122458)
				o28.Anchored = true
				o28.FormFactor = Enum.FormFactor.Plate
				o28.Size = Vector3.new(1, 2.79999995, 1)
				o28.CFrame = CFrame.new(113.818176, 6.80000877, 9.31151104, 0, 3.89985715e-008, -0.999993801, 0, 1, 4.03698408e-008, 1, 0, 0)
				o28.BackSurface = Enum.SurfaceType.Weld
				o28.BottomSurface = Enum.SurfaceType.Weld
				o28.TopSurface = Enum.SurfaceType.Weld
				o28.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o29.Parent = o28
				o29.MeshType = Enum.MeshType.Wedge
				o30.Parent = o1
				o30.BrickColor = BrickColor.new("Institutional white")
				o30.Position = Vector3.new(96.3181992, 4.60000753, 18.3115101)
				o30.Rotation = Vector3.new(-0, 0, -2.26770203e-006)
				o30.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o30.Velocity = Vector3.new(0.00210371148, 0.000697117415, -0.0023025109)
				o30.Anchored = true
				o30.FormFactor = Enum.FormFactor.Plate
				o30.Size = Vector3.new(2, 2.4000001, 1)
				o30.CFrame = CFrame.new(96.3181992, 4.60000753, 18.3115101, 0.999999046, 3.95788291e-008, 0, -3.97897928e-008, 1, 0, 0, 0, 1)
				o30.BackSurface = Enum.SurfaceType.Weld
				o30.BottomSurface = Enum.SurfaceType.Weld
				o30.FrontSurface = Enum.SurfaceType.Weld
				o30.LeftSurface = Enum.SurfaceType.Weld
				o30.RightSurface = Enum.SurfaceType.Weld
				o30.TopSurface = Enum.SurfaceType.Weld
				o30.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o31.Parent = o30
				o32.Parent = o1
				o32.BrickColor = BrickColor.new("Dark stone grey")
				o32.Position = Vector3.new(95.8181839, 4.60000753, 13.8115101)
				o32.Rotation = Vector3.new(90, 89.960434, -90)
				o32.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o32.Velocity = Vector3.new(0.000791871978, 0.00139368721, -0.00215674727)
				o32.Anchored = true
				o32.FormFactor = Enum.FormFactor.Plate
				o32.Size = Vector3.new(8, 2.4000001, 1)
				o32.CFrame = CFrame.new(95.8181839, 4.60000753, 13.8115101, 0, 3.96579551e-008, 0.999999762, 0, 1, -3.97106952e-008, -1, 0, 0)
				o32.BottomSurface = Enum.SurfaceType.Weld
				o32.TopSurface = Enum.SurfaceType.Weld
				o32.Color = Color3.new(0.388235, 0.372549, 0.384314)
				o33.Parent = o32
				o33.Offset = Vector3.new(0, 0, 0.5)
				o33.Scale = Vector3.new(1, 1, 2)
				o34.Parent = o1
				o34.BrickColor = BrickColor.new("Institutional white")
				o34.Position = Vector3.new(93.8181992, 4.00000715, 13.8115101)
				o34.Rotation = Vector3.new(-0, 0, -2.26770203e-006)
				o34.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o34.Velocity = Vector3.new(0.000748508843, 0.00153822941, -0.00166177051)
				o34.Anchored = true
				o34.FormFactor = Enum.FormFactor.Plate
				o34.Size = Vector3.new(3, 1.20000005, 10)
				o34.CFrame = CFrame.new(93.8181992, 4.00000715, 13.8115101, 0.999999046, 3.95788291e-008, 0, -3.97897928e-008, 1, 0, 0, 0, 1)
				o34.BackSurface = Enum.SurfaceType.Weld
				o34.BottomSurface = Enum.SurfaceType.Weld
				o34.FrontSurface = Enum.SurfaceType.Weld
				o34.LeftSurface = Enum.SurfaceType.Weld
				o34.RightSurface = Enum.SurfaceType.Weld
				o34.TopSurface = Enum.SurfaceType.Weld
				o34.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o35.Parent = o34
				o36.Parent = o1
				o36.BrickColor = BrickColor.new("Br. yellowish orange")
				o36.Position = Vector3.new(92.2181854, 4.00000715, 18.211504)
				o36.Rotation = Vector3.new(-0, 0, -2.2601489e-006)
				o36.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o36.Velocity = Vector3.new(0.00203119451, 0.00100810977, -0.00119533355)
				o36.Anchored = true
				o36.FormFactor = Enum.FormFactor.Custom
				o36.Size = Vector3.new(0.200000003, 0.800000012, 0.799999714)
				o36.CFrame = CFrame.new(92.2181854, 4.00000715, 18.211504, 0.999997854, 3.94469524e-008, 0, -3.99216233e-008, 1, 0, 0, 0, 1)
				o36.BackSurface = Enum.SurfaceType.Weld
				o36.BottomSurface = Enum.SurfaceType.Weld
				o36.FrontSurface = Enum.SurfaceType.Weld
				o36.LeftSurface = Enum.SurfaceType.Weld
				o36.RightSurface = Enum.SurfaceType.Weld
				o36.TopSurface = Enum.SurfaceType.Weld
				o36.Color = Color3.new(0.886275, 0.607843, 0.25098)
				o37.Parent = o36
				o38.Parent = o1
				o38.BrickColor = BrickColor.new("Institutional white")
				o38.Position = Vector3.new(99.0602112, 4.60000706, 18.3115101)
				o38.Rotation = Vector3.new(-0, 0, -4.84935117e-006)
				o38.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o38.Velocity = Vector3.new(0.00210371148, 0.000498947338, -0.0031018618)
				o38.Anchored = true
				o38.CanCollide = false
				o38.FormFactor = Enum.FormFactor.Plate
				o38.Size = Vector3.new(3.48000026, 2.4000001, 1)
				o38.CFrame = CFrame.new(99.0602112, 4.60000706, 18.3115101, 1, 8.46371435e-008, 0, -8.46371435e-008, 1, 0, 0, 0, 1)
				o38.BottomSurface = Enum.SurfaceType.Weld
				o38.LeftSurface = Enum.SurfaceType.Weld
				o38.RightSurface = Enum.SurfaceType.Weld
				o38.TopSurface = Enum.SurfaceType.Weld
				o38.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o39.Parent = o1
				o39.BrickColor = BrickColor.new("Really red")
				o39.Position = Vector3.new(113.818176, 4.80000877, 9.31151104)
				o39.Rotation = Vector3.new(-0, 0, -2.2344675e-006)
				o39.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o39.Velocity = Vector3.new(-0.000505513046, 0.000753228669, -0.00737475045)
				o39.Anchored = true
				o39.FormFactor = Enum.FormFactor.Plate
				o39.Size = Vector3.new(1, 1.20000005, 1)
				o39.CFrame = CFrame.new(113.818176, 4.80000877, 9.31151104, 0.999993801, 3.89985715e-008, 0, -4.03698408e-008, 1, 0, 0, 0, 1)
				o39.BackSurface = Enum.SurfaceType.Weld
				o39.BottomSurface = Enum.SurfaceType.Weld
				o39.FrontSurface = Enum.SurfaceType.Weld
				o39.LeftSurface = Enum.SurfaceType.Weld
				o39.RightSurface = Enum.SurfaceType.Weld
				o39.TopSurface = Enum.SurfaceType.Weld
				o39.Color = Color3.new(1, 0, 0)
				o40.Parent = o39
				o41.Parent = o1
				o41.BrickColor = BrickColor.new("Institutional white")
				o41.Position = Vector3.new(113.818054, 3.80000734, 9.31151104)
				o41.Rotation = Vector3.new(-0, 0, -2.23295706e-006)
				o41.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o41.Velocity = Vector3.new(-0.000577784958, 0.000753237749, -0.00752147706)
				o41.Anchored = true
				o41.FormFactor = Enum.FormFactor.Plate
				o41.Size = Vector3.new(1, 0.800000012, 1)
				o41.CFrame = CFrame.new(113.818054, 3.80000734, 9.31151104, 0.999993563, 3.89721997e-008, 0, -4.03962055e-008, 1, 0, 0, 0, 1)
				o41.BackSurface = Enum.SurfaceType.Weld
				o41.BottomSurface = Enum.SurfaceType.Weld
				o41.FrontSurface = Enum.SurfaceType.Weld
				o41.LeftSurface = Enum.SurfaceType.Weld
				o41.RightSurface = Enum.SurfaceType.Weld
				o41.TopSurface = Enum.SurfaceType.Weld
				o41.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o42.Parent = o41
				o43.Parent = o1
				o43.BrickColor = BrickColor.new("Institutional white")
				o43.Position = Vector3.new(105.317894, 8.40000725, 13.8115139)
				o43.Rotation = Vector3.new(-0, 0, -2.21481446e-006)
				o43.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o43.Velocity = Vector3.new(0.00106650498, 0.000707125873, -0.00436840346)
				o43.Anchored = true
				o43.CanCollide = false
				o43.FormFactor = Enum.FormFactor.Plate
				o43.Size = Vector3.new(14, 0.400000006, 8)
				o43.CFrame = CFrame.new(105.317894, 8.40000725, 13.8115139, 1, 3.86558057e-008, 0, -3.86558057e-008, 1, 0, 0, 0, 1)
				o43.BackSurface = Enum.SurfaceType.Weld
				o43.BottomSurface = Enum.SurfaceType.Weld
				o43.FrontSurface = Enum.SurfaceType.Weld
				o43.LeftSurface = Enum.SurfaceType.Weld
				o43.RightSurface = Enum.SurfaceType.Weld
				o43.TopSurface = Enum.SurfaceType.Weld
				o43.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o44.Parent = o43
				o45.Parent = o1
				o45.BrickColor = BrickColor.new("Really black")
				o45.Position = Vector3.new(113.818176, 6.80000782, 11.311511)
				o45.Rotation = Vector3.new(-90, -89.9314728, -90)
				o45.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o45.Velocity = Vector3.new(0.000222070201, 0.000459702482, -0.00708122645)
				o45.Anchored = true
				o45.CanCollide = false
				o45.FormFactor = Enum.FormFactor.Plate
				o45.Size = Vector3.new(3, 2.79999995, 1)
				o45.CFrame = CFrame.new(113.818176, 6.80000782, 11.311511, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
				o45.BackSurface = Enum.SurfaceType.Weld
				o45.BottomSurface = Enum.SurfaceType.Weld
				o45.TopSurface = Enum.SurfaceType.Weld
				o45.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o46.Parent = o45
				o46.MeshType = Enum.MeshType.Wedge
				o47.Parent = o1
				o47.BrickColor = BrickColor.new("Institutional white")
				o47.Position = Vector3.new(103.118179, 2.40000772, 13.8115101)
				o47.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
				o47.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o47.Velocity = Vector3.new(0.000632874086, 0.000866103393, -0.0046077203)
				o47.Anchored = true
				o47.FormFactor = Enum.FormFactor.Plate
				o47.Size = Vector3.new(12.3999996, 1.20000005, 10)
				o47.CFrame = CFrame.new(103.118179, 2.40000772, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
				o47.BackSurface = Enum.SurfaceType.Weld
				o47.BottomSurface = Enum.SurfaceType.Weld
				o47.FrontSurface = Enum.SurfaceType.Weld
				o47.LeftSurface = Enum.SurfaceType.Weld
				o47.RightSurface = Enum.SurfaceType.Weld
				o47.TopSurface = Enum.SurfaceType.Weld
				o47.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o48.Parent = o47
				o49.Parent = o1
				o49.BrickColor = BrickColor.new("White")
				o49.Position = Vector3.new(104.018181, 3.20000815, 13.8115101)
				o49.Rotation = Vector3.new(-0, 0, -2.27374471e-006)
				o49.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o49.Velocity = Vector3.new(0.000690691522, 0.000801058719, -0.00475267787)
				o49.Anchored = true
				o49.FormFactor = Enum.FormFactor.Plate
				o49.Size = Vector3.new(20.6000004, 0.400000006, 10)
				o49.CFrame = CFrame.new(104.018181, 3.20000815, 13.8115101, 1, 3.96843305e-008, 0, -3.96843305e-008, 1, 0, 0, 0, 1)
				o49.BackSurface = Enum.SurfaceType.Weld
				o49.BottomSurface = Enum.SurfaceType.Weld
				o49.FrontSurface = Enum.SurfaceType.Weld
				o49.LeftSurface = Enum.SurfaceType.Weld
				o49.RightSurface = Enum.SurfaceType.Weld
				o49.TopSurface = Enum.SurfaceType.Weld
				o49.Color = Color3.new(0.94902, 0.952941, 0.952941)
				o50.Parent = o49
				o51.Parent = o1
				o51.BrickColor = BrickColor.new("Institutional white")
				o51.Position = Vector3.new(107.167747, 5.80000782, 18.3115101)
				o51.Rotation = Vector3.new(-0, 0, -3.14727777e-006)
				o51.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o51.Velocity = Vector3.new(0.00219043763, -8.69987416e-005, -0.00528925471)
				o51.Anchored = true
				o51.FormFactor = Enum.FormFactor.Plate
				o51.Size = Vector3.new(12.3000002, 4.80000019, 1)
				o51.CFrame = CFrame.new(107.167747, 5.80000782, 18.3115101, 1, 5.49303607e-008, 0, -5.49303607e-008, 1, 0, 0, 0, 1)
				o51.BackSurface = Enum.SurfaceType.Weld
				o51.BottomSurface = Enum.SurfaceType.Weld
				o51.FrontSurface = Enum.SurfaceType.Weld
				o51.LeftSurface = Enum.SurfaceType.Weld
				o51.RightSurface = Enum.SurfaceType.Weld
				o51.TopSurface = Enum.SurfaceType.Weld
				o51.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o52.Parent = o51
				o53.Parent = o1
				o53.BrickColor = BrickColor.new("Institutional white")
				o53.Position = Vector3.new(113.818176, 6.80000782, 13.8115101)
				o53.Rotation = Vector3.new(-90, -89.9314728, -90)
				o53.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o53.Velocity = Vector3.new(0.000950869871, 9.27953006e-005, -0.00708122645)
				o53.Anchored = true
				o53.CanCollide = false
				o53.FormFactor = Enum.FormFactor.Plate
				o53.Size = Vector3.new(2, 2.79999995, 1)
				o53.CFrame = CFrame.new(113.818176, 6.80000782, 13.8115101, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
				o53.BackSurface = Enum.SurfaceType.Weld
				o53.BottomSurface = Enum.SurfaceType.Weld
				o53.TopSurface = Enum.SurfaceType.Weld
				o53.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o54.Parent = o53
				o54.MeshType = Enum.MeshType.Wedge
				o55.Parent = o1
				o55.BrickColor = BrickColor.new("Really black")
				o55.Position = Vector3.new(113.818176, 6.80000782, 16.3115101)
				o55.Rotation = Vector3.new(-90, -89.9314728, -90)
				o55.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o55.Velocity = Vector3.new(0.0016796696, -0.000274111895, -0.00708122645)
				o55.Anchored = true
				o55.CanCollide = false
				o55.FormFactor = Enum.FormFactor.Plate
				o55.Size = Vector3.new(3, 2.79999995, 1)
				o55.CFrame = CFrame.new(113.818176, 6.80000782, 16.3115101, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
				o55.BackSurface = Enum.SurfaceType.Weld
				o55.BottomSurface = Enum.SurfaceType.Weld
				o55.TopSurface = Enum.SurfaceType.Weld
				o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o56.Parent = o55
				o56.MeshType = Enum.MeshType.Wedge
				o57.Parent = o1
				o57.BrickColor = BrickColor.new("Institutional white")
				o57.Position = Vector3.new(113.818176, 4.40000582, 13.8115101)
				o57.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
				o57.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o57.Velocity = Vector3.new(0.000777417503, 9.27956426e-005, -0.00743345637)
				o57.Anchored = true
				o57.CanCollide = false
				o57.FormFactor = Enum.FormFactor.Plate
				o57.Size = Vector3.new(1, 2, 8)
				o57.CFrame = CFrame.new(113.818176, 4.40000582, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
				o57.BackSurface = Enum.SurfaceType.Weld
				o57.BottomSurface = Enum.SurfaceType.Weld
				o57.FrontSurface = Enum.SurfaceType.Weld
				o57.LeftSurface = Enum.SurfaceType.Weld
				o57.RightSurface = Enum.SurfaceType.Weld
				o57.TopSurface = Enum.SurfaceType.Weld
				o57.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o58.Parent = o57
				o59.Parent = o1
				o59.BrickColor = BrickColor.new("Institutional white")
				o59.Position = Vector3.new(113.818176, 3.80000734, 18.3115101)
				o59.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
				o59.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o59.Velocity = Vector3.new(0.00204589404, -0.000567637384, -0.00752151385)
				o59.Anchored = true
				o59.FormFactor = Enum.FormFactor.Plate
				o59.Size = Vector3.new(1, 0.800000012, 1)
				o59.CFrame = CFrame.new(113.818176, 3.80000734, 18.3115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
				o59.BackSurface = Enum.SurfaceType.Weld
				o59.BottomSurface = Enum.SurfaceType.Weld
				o59.FrontSurface = Enum.SurfaceType.Weld
				o59.LeftSurface = Enum.SurfaceType.Weld
				o59.RightSurface = Enum.SurfaceType.Weld
				o59.TopSurface = Enum.SurfaceType.Weld
				o59.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o60.Parent = o59
				o61.Parent = o1
				o61.BrickColor = BrickColor.new("Institutional white")
				o61.Position = Vector3.new(105.317894, 8.40000725, 18.3115101)
				o61.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
				o61.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o61.Velocity = Vector3.new(0.00237834454, 4.6692905e-005, -0.00436840346)
				o61.Anchored = true
				o61.CanCollide = false
				o61.FormFactor = Enum.FormFactor.Plate
				o61.Size = Vector3.new(14, 0.400000006, 1)
				o61.CFrame = CFrame.new(105.317894, 8.40000725, 18.3115101, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
				o61.BackSurface = Enum.SurfaceType.Weld
				o61.BottomSurface = Enum.SurfaceType.Weld
				o61.FrontSurface = Enum.SurfaceType.Weld
				o61.LeftSurface = Enum.SurfaceType.Weld
				o61.RightSurface = Enum.SurfaceType.Weld
				o61.TopSurface = Enum.SurfaceType.Weld
				o61.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o62.Parent = o61
				o63.Parent = o1
				o63.BrickColor = BrickColor.new("Institutional white")
				o63.Position = Vector3.new(97.8181839, 5.79500866, 9.31151104)
				o63.Rotation = Vector3.new(-0, 0, -2.36894834e-006)
				o63.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o63.Velocity = Vector3.new(-0.000433602603, 0.00190957636, -0.00256440602)
				o63.Anchored = true
				o63.CanCollide = false
				o63.FormFactor = Enum.FormFactor.Plate
				o63.Size = Vector3.new(1, 4.80999994, 1)
				o63.CFrame = CFrame.new(97.8181839, 5.79500866, 9.31151104, 1, 4.13459489e-008, 0, -4.13459489e-008, 1, 0, 0, 0, 1)
				o63.BottomSurface = Enum.SurfaceType.Weld
				o63.LeftSurface = Enum.SurfaceType.Weld
				o63.RightSurface = Enum.SurfaceType.Weld
				o63.TopSurface = Enum.SurfaceType.Weld
				o63.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o64.Parent = o1
				o64.BrickColor = BrickColor.new("Institutional white")
				o64.Position = Vector3.new(97.8178101, 7.00000858, 18.3115101)
				o64.Rotation = Vector3.new(-0, 0, -2.14529973e-006)
				o64.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o64.Velocity = Vector3.new(0.00227716402, 0.00058873737, -0.00238744705)
				o64.Anchored = true
				o64.CanCollide = false
				o64.FormFactor = Enum.FormFactor.Plate
				o64.Size = Vector3.new(1, 2.4000001, 1)
				o64.CFrame = CFrame.new(97.8178101, 7.00000858, 18.3115101, 0.999999762, 3.74425326e-008, 0, -3.74952727e-008, 1, 0, 0, 0, 1)
				o64.BottomSurface = Enum.SurfaceType.Weld
				o64.LeftSurface = Enum.SurfaceType.Weld
				o64.RightSurface = Enum.SurfaceType.Weld
				o64.TopSurface = Enum.SurfaceType.Weld
				o64.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o65.Parent = o1
				o65.BrickColor = BrickColor.new("Institutional white")
				o65.Position = Vector3.new(113.418167, 2.40000749, 13.8115101)
				o65.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
				o65.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o65.Velocity = Vector3.new(0.000632874086, 0.000121704477, -0.0076103732)
				o65.Anchored = true
				o65.FormFactor = Enum.FormFactor.Plate
				o65.Size = Vector3.new(1.80000007, 1.20000005, 10)
				o65.CFrame = CFrame.new(113.418167, 2.40000749, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
				o65.BackSurface = Enum.SurfaceType.Weld
				o65.BottomSurface = Enum.SurfaceType.Weld
				o65.FrontSurface = Enum.SurfaceType.Weld
				o65.LeftSurface = Enum.SurfaceType.Weld
				o65.RightSurface = Enum.SurfaceType.Weld
				o65.TopSurface = Enum.SurfaceType.Weld
				o65.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o66.Parent = o65
				o67.Parent = o1
				o67.BrickColor = BrickColor.new("Really red")
				o67.Position = Vector3.new(113.817245, 4.80000687, 18.3115101)
				o67.Rotation = Vector3.new(-0, 0, -3.17145691e-006)
				o67.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o67.Velocity = Vector3.new(0.00211816584, -0.000567570096, -0.0073744799)
				o67.Anchored = true
				o67.FormFactor = Enum.FormFactor.Plate
				o67.Size = Vector3.new(1, 1.20000005, 1)
				o67.CFrame = CFrame.new(113.817245, 4.80000687, 18.3115101, 1, 5.53523627e-008, 0, -5.53523627e-008, 1, 0, 0, 0, 1)
				o67.BackSurface = Enum.SurfaceType.Weld
				o67.BottomSurface = Enum.SurfaceType.Weld
				o67.FrontSurface = Enum.SurfaceType.Weld
				o67.LeftSurface = Enum.SurfaceType.Weld
				o67.RightSurface = Enum.SurfaceType.Weld
				o67.TopSurface = Enum.SurfaceType.Weld
				o67.Color = Color3.new(1, 0, 0)
				o68.Parent = o67
				o69.Parent = o1
				o69.BrickColor = BrickColor.new("Institutional white")
				o69.Position = Vector3.new(112.817894, 8.40000725, 13.8115139)
				o69.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
				o69.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o69.Velocity = Vector3.new(0.00106650498, 0.000165087578, -0.00655480288)
				o69.Anchored = true
				o69.CanCollide = false
				o69.FormFactor = Enum.FormFactor.Plate
				o69.Size = Vector3.new(1, 0.400000006, 10)
				o69.CFrame = CFrame.new(112.817894, 8.40000725, 13.8115139, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
				o69.BackSurface = Enum.SurfaceType.Weld
				o69.BottomSurface = Enum.SurfaceType.Weld
				o69.FrontSurface = Enum.SurfaceType.Weld
				o69.LeftSurface = Enum.SurfaceType.Weld
				o69.RightSurface = Enum.SurfaceType.Weld
				o69.TopSurface = Enum.SurfaceType.Weld
				o69.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o70.Parent = o69
				o71.Parent = o1
				o71.BrickColor = BrickColor.new("Really black")
				o71.Position = Vector3.new(92.2181854, 3.8000083, 13.8115101)
				o71.Rotation = Vector3.new(-0, 0, -2.2601489e-006)
				o71.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o71.Velocity = Vector3.new(0.0007340546, 0.00165386556, -0.00122468593)
				o71.Anchored = true
				o71.FormFactor = Enum.FormFactor.Custom
				o71.Size = Vector3.new(0.200000003, 0.800000012, 6)
				o71.CFrame = CFrame.new(92.2181854, 3.8000083, 13.8115101, 0.999997854, 3.94469524e-008, 0, -3.99216233e-008, 1, 0, 0, 0, 1)
				o71.BackSurface = Enum.SurfaceType.Weld
				o71.BottomSurface = Enum.SurfaceType.Weld
				o71.FrontSurface = Enum.SurfaceType.Weld
				o71.LeftSurface = Enum.SurfaceType.Weld
				o71.RightSurface = Enum.SurfaceType.Weld
				o71.TopSurface = Enum.SurfaceType.Weld
				o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o72.Parent = o71
				o73.Name = "Head"
				o73.Parent = o1
				o73.Material = Enum.Material.SmoothPlastic
				o73.BrickColor = BrickColor.new("Institutional white")
				o73.Position = Vector3.new(99.207077, 7.026577, 15.2047167)
				o73.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
				o73.Anchored = true
				o73.FormFactor = Enum.FormFactor.Symmetric
				o73.Size = Vector3.new(2, 1, 1)
				o73.CFrame = CFrame.new(99.207077, 7.026577, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
				o73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o73.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o74.Parent = o73
				o74.Scale = Vector3.new(1.25, 1.25, 1.25)
				o75.Name = "face"
				o75.Parent = o73
				o75.Texture = "rbxasset://textures/face.png"
				o76.Parent = o1
				o76.BrickColor = BrickColor.new("Institutional white")
				o76.Position = Vector3.new(99.6954269, 5.81500673, 9.31151104)
				o76.Rotation = Vector3.new(-0, 0, -8.82515178e-006)
				o76.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o76.Velocity = Vector3.new(-0.000432157307, 0.00177390513, -0.00310872309)
				o76.Anchored = true
				o76.CanCollide = false
				o76.FormFactor = Enum.FormFactor.Plate
				o76.Size = Vector3.new(2.76000023, 4.82999992, 1)
				o76.CFrame = CFrame.new(99.6954269, 5.81500673, 9.31151104, 1, 1.54027958e-007, 0, -1.54027958e-007, 1, 0, 0, 0, 1)
				o76.BottomSurface = Enum.SurfaceType.Weld
				o76.LeftSurface = Enum.SurfaceType.Weld
				o76.RightSurface = Enum.SurfaceType.Weld
				o76.TopSurface = Enum.SurfaceType.Weld
				o76.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o77.Parent = o1
				o77.BrickColor = BrickColor.new("Institutional white")
				o77.Position = Vector3.new(100.909996, 5.80000877, 14.2915134)
				o77.Rotation = Vector3.new(-0, 0, -7.89941078e-006)
				o77.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
				o77.Velocity = Vector3.new(0.0010185279, 0.000955246738, -0.00346499542)
				o77.Anchored = true
				o77.FormFactor = Enum.FormFactor.Plate
				o77.Size = Vector3.new(0.200000003, 4.80000019, 9.0199995)
				o77.CFrame = CFrame.new(100.909996, 5.80000877, 14.2915134, 1, 1.37870728e-007, 0, -1.37870728e-007, 1, 0, 0, 0, 1)
				o77.BackSurface = Enum.SurfaceType.Weld
				o77.BottomSurface = Enum.SurfaceType.Weld
				o77.FrontSurface = Enum.SurfaceType.Weld
				o77.LeftSurface = Enum.SurfaceType.Weld
				o77.RightSurface = Enum.SurfaceType.Weld
				o77.TopSurface = Enum.SurfaceType.Weld
				o77.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o78.Parent = o77
				o79.Name = "Head"
				o79.Parent = o1
				o79.Material = Enum.Material.SmoothPlastic
				o79.BrickColor = BrickColor.new("Institutional white")
				o79.Position = Vector3.new(103.10894, 7.49666739, 15.2047167)
				o79.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
				o79.Anchored = true
				o79.FormFactor = Enum.FormFactor.Symmetric
				o79.Size = Vector3.new(2, 1, 1)
				o79.CFrame = CFrame.new(103.10894, 7.49666739, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
				o79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o79.Color = Color3.new(0.972549, 0.972549, 0.972549)
				o80.Parent = o79
				o80.Scale = Vector3.new(1.25, 1.25, 1.25)
				o81.Name = "face"
				o81.Parent = o79
				o81.Texture = "rbxasset://textures/face.png"
				o82.Name = "Handle"
				o82.Parent = o1
				o82.Material = Enum.Material.SmoothPlastic
				o82.Position = Vector3.new(103.10894, 7.34666729, 15.2047167)
				o82.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
				o82.Anchored = true
				o82.CanCollide = false
				o82.FormFactor = Enum.FormFactor.Symmetric
				o82.Size = Vector3.new(2, 2, 2)
				o82.CFrame = CFrame.new(103.10894, 7.34666729, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
				o82.BottomSurface = Enum.SurfaceType.Smooth
				o82.TopSurface = Enum.SurfaceType.Smooth
				o83.Parent = o82
				o83.MeshId = "http://www.roblox.com/asset/?id=15393031"
				o83.TextureId = "http://www.roblox.com/asset/?id=15393013"
				o83.MeshType = Enum.MeshType.FileMesh
				o84.Parent = o1
				o84.NameOcclusion = Enum.NameOcclusion.NoOcclusion
				o84.RightLeg = o94
				o84.LeftLeg = o96
				o84.Torso = o87
				o84.Health = 0
				o84.MaxHealth = 0
				o85.Name = "TPPART"
				o85.Parent = o1
				o85.Transparency = 1
				o85.Position = Vector3.new(104.155182, 4.24109221, 12.6003485)
				o85.Rotation = Vector3.new(-0, 0, -3.5910773e-006)
				o85.Anchored = true
				o85.CanCollide = false
				o85.Size = Vector3.new(4, 1, 2)
				o85.CFrame = CFrame.new(104.155182, 4.24109221, 12.6003485, 1, 6.26761221e-008, 0, -6.26761221e-008, 1, 0, 0, 0, 1)
				o86.Name = "TPPART2"
				o86.Parent = o1
				o86.Transparency = 1
				o86.Position = Vector3.new(104.155182, 5.40188599, 6.32408237)
				o86.Rotation = Vector3.new(-0, 0, -3.5910773e-006)
				o86.Anchored = true
				o86.CanCollide = false
				o86.Size = Vector3.new(4, 1, 2)
				o86.CFrame = CFrame.new(104.155182, 5.40188599, 6.32408237, 1, 6.26761221e-008, 0, -6.26761221e-008, 1, 0, 0, 0, 1)
				o87.Name = "Torso"
				o87.Parent = o1
				o87.Material = Enum.Material.SmoothPlastic
				o87.BrickColor = BrickColor.new("Navy blue")
				o87.Position = Vector3.new(99.207077, 5.526577, 15.2047167)
				o87.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
				o87.Anchored = true
				o87.FormFactor = Enum.FormFactor.Symmetric
				o87.Size = Vector3.new(2, 2, 1)
				o87.CFrame = CFrame.new(99.207077, 5.526577, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
				o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o87.Color = Color3.new(0, 0.12549, 0.376471)
				o88.Name = "roblox"
				o88.Parent = o87
				o89.Name = "Right Shoulder"
				o89.Parent = o87
				o89.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				o89.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				o89.Part0 = o87
				o89.Part1 = o95
				o89.DesiredAngle = -0.062025275081396
				o89.MaxVelocity = 0.15000000596046
				o90.Name = "Left Shoulder"
				o90.Parent = o87
				o90.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				o90.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				o90.Part0 = o87
				o90.Part1 = o97
				o90.DesiredAngle = -0.062025275081396
				o90.MaxVelocity = 0.15000000596046
				o91.Name = "Right Hip"
				o91.Parent = o87
				o91.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				o91.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				o91.Part0 = o87
				o91.Part1 = o94
				o91.DesiredAngle = 0.062025275081396
				o91.MaxVelocity = 0.10000000149012
				o92.Name = "Left Hip"
				o92.Parent = o87
				o92.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				o92.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				o92.Part0 = o87
				o92.Part1 = o96
				o92.DesiredAngle = 0.062025275081396
				o92.MaxVelocity = 0.10000000149012
				o93.Name = "Neck"
				o93.Parent = o87
				o93.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
				o93.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
				o93.Part0 = o87
				o93.Part1 = o73
				o93.MaxVelocity = 0.10000000149012
				o94.Name = "Right Leg"
				o94.Parent = o1
				o94.Material = Enum.Material.SmoothPlastic
				o94.BrickColor = BrickColor.new("Navy blue")
				o94.Position = Vector3.new(99.215416, 3.526577, 14.7047863)
				o94.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
				o94.Anchored = true
				o94.CanCollide = false
				o94.FormFactor = Enum.FormFactor.Symmetric
				o94.Size = Vector3.new(1, 2, 1)
				o94.CFrame = CFrame.new(99.215416, 3.526577, 14.7047863, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
				o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o94.Color = Color3.new(0, 0.12549, 0.376471)
				o95.Name = "Right Arm"
				o95.Parent = o1
				o95.Material = Enum.Material.SmoothPlastic
				o95.BrickColor = BrickColor.new("Maroon")
				o95.Position = Vector3.new(99.2321014, 5.526577, 13.7049236)
				o95.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
				o95.Anchored = true
				o95.CanCollide = false
				o95.FormFactor = Enum.FormFactor.Symmetric
				o95.Size = Vector3.new(1, 2, 1)
				o95.CFrame = CFrame.new(99.2321014, 5.526577, 13.7049236, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
				o95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o95.Color = Color3.new(0.458824, 0, 0)
				o96.Name = "Left Leg"
				o96.Parent = o1
				o96.Material = Enum.Material.SmoothPlastic
				o96.BrickColor = BrickColor.new("Navy blue")
				o96.Position = Vector3.new(99.1987381, 3.526577, 15.7046452)
				o96.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
				o96.Anchored = true
				o96.CanCollide = false
				o96.FormFactor = Enum.FormFactor.Symmetric
				o96.Size = Vector3.new(1, 2, 1)
				o96.CFrame = CFrame.new(99.1987381, 3.526577, 15.7046452, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
				o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o96.Color = Color3.new(0, 0.12549, 0.376471)
				o97.Name = "Left Arm"
				o97.Parent = o1
				o97.Material = Enum.Material.SmoothPlastic
				o97.BrickColor = BrickColor.new("Maroon")
				o97.Position = Vector3.new(99.1820602, 5.526577, 16.7045078)
				o97.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
				o97.Anchored = true
				o97.CanCollide = false
				o97.FormFactor = Enum.FormFactor.Symmetric
				o97.Size = Vector3.new(1, 2, 1)
				o97.CFrame = CFrame.new(99.1820602, 5.526577, 16.7045078, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
				o97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o97.Color = Color3.new(0.458824, 0, 0)
				o98.Name = "Torso"
				o98.Parent = o1
				o98.Material = Enum.Material.SmoothPlastic
				o98.BrickColor = BrickColor.new("Navy blue")
				o98.Position = Vector3.new(103.10894, 5.99666739, 15.2047167)
				o98.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
				o98.Anchored = true
				o98.FormFactor = Enum.FormFactor.Symmetric
				o98.Size = Vector3.new(2, 2, 1)
				o98.CFrame = CFrame.new(103.10894, 5.99666739, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
				o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o98.Color = Color3.new(0, 0.12549, 0.376471)
				o99.Name = "roblox"
				o99.Parent = o98
				o100.Name = "Right Hip"
				o100.Parent = o98
				o100.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				o100.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				o100.Part0 = o98
				o100.Part1 = o103
				o100.DesiredAngle = 0.062025275081396
				o100.MaxVelocity = 0.10000000149012
				o101.Name = "Left Hip"
				o101.Parent = o98
				o101.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				o101.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				o101.Part0 = o98
				o101.Part1 = o105
				o101.DesiredAngle = 0.062025275081396
				o101.MaxVelocity = 0.10000000149012
				o102.Name = "Neck"
				o102.Parent = o98
				o102.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
				o102.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
				o102.Part0 = o98
				o102.Part1 = o79
				o102.MaxVelocity = 0.10000000149012
				o103.Name = "Right Leg"
				o103.Parent = o1
				o103.Material = Enum.Material.SmoothPlastic
				o103.BrickColor = BrickColor.new("Really black")
				o103.Position = Vector3.new(103.608864, 3.99666739, 15.2130556)
				o103.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
				o103.Anchored = true
				o103.CanCollide = false
				o103.FormFactor = Enum.FormFactor.Symmetric
				o103.Size = Vector3.new(1, 2, 1)
				o103.CFrame = CFrame.new(103.608864, 3.99666739, 15.2130556, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
				o103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o103.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o104.Name = "Right Arm"
				o104.Parent = o1
				o104.Material = Enum.Material.SmoothPlastic
				o104.BrickColor = BrickColor.new("Maroon")
				o104.Position = Vector3.new(104.615349, 5.89646101, 14.8330393)
				o104.Rotation = Vector3.new(45.0039597, -0.675833881, 0.675880313)
				o104.Anchored = true
				o104.CanCollide = false
				o104.FormFactor = Enum.FormFactor.Symmetric
				o104.Size = Vector3.new(1, 2, 1)
				o104.CFrame = CFrame.new(104.615349, 5.89646101, 14.8330393, 0.999860883, -0.0117952423, -0.0117952526, 0, 0.707107067, -0.707106411, 0.0166809987, 0.707008064, 0.707008719)
				o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o104.Color = Color3.new(0.458824, 0, 0)
				o105.Name = "Left Leg"
				o105.Parent = o1
				o105.Material = Enum.Material.SmoothPlastic
				o105.BrickColor = BrickColor.new("Really black")
				o105.Position = Vector3.new(102.609009, 3.99666739, 15.1963739)
				o105.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
				o105.Anchored = true
				o105.CanCollide = false
				o105.FormFactor = Enum.FormFactor.Symmetric
				o105.Size = Vector3.new(1, 2, 1)
				o105.CFrame = CFrame.new(102.609009, 3.99666739, 15.1963739, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
				o105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o106.Name = "Left Arm"
				o106.Parent = o1
				o106.Material = Enum.Material.SmoothPlastic
				o106.BrickColor = BrickColor.new("Maroon")
				o106.Position = Vector3.new(101.617271, 5.96075201, 14.6924496)
				o106.Rotation = Vector3.new(45.0039597, -0.675833881, 0.675880313)
				o106.Anchored = true
				o106.CanCollide = false
				o106.FormFactor = Enum.FormFactor.Symmetric
				o106.Size = Vector3.new(1, 2, 1)
				o106.CFrame = CFrame.new(101.617271, 5.96075201, 14.6924496, 0.999860883, -0.0117952423, -0.0117952526, 0, 0.707107067, -0.707106411, 0.0166809987, 0.707008064, 0.707008719)
				o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				o106.Color = Color3.new(0.458824, 0, 0)
				o107.Parent = o1
				o107.Position = Vector3.new(110.917458, 1.50000954, 18.4564953)
				o107.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
				o107.Anchored = true
				o107.FormFactor = Enum.FormFactor.Symmetric
				o107.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
				o107.CFrame = CFrame.new(110.917458, 1.50000954, 18.4564953, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
				o108.Parent = o107
				o109.Parent = o1
				o109.BrickColor = BrickColor.new("Really black")
				o109.Position = Vector3.new(110.917442, 1.50002527, 9.1665411)
				o109.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
				o109.Anchored = true
				o109.FormFactor = Enum.FormFactor.Symmetric
				o109.Size = Vector3.new(3, 1.20000005, 3)
				o109.CFrame = CFrame.new(110.917442, 1.50002527, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
				o109.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o110.Parent = o109
				o111.Parent = o1
				o111.BrickColor = BrickColor.new("Really black")
				o111.Position = Vector3.new(110.917458, 1.50000954, 18.4564953)
				o111.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
				o111.Anchored = true
				o111.FormFactor = Enum.FormFactor.Symmetric
				o111.Size = Vector3.new(3, 1.20000005, 3)
				o111.CFrame = CFrame.new(110.917458, 1.50000954, 18.4564953, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
				o111.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o112.Parent = o111
				o113.Parent = o1
				o113.Position = Vector3.new(95.3486252, 1.50002623, 9.1665411)
				o113.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
				o113.Anchored = true
				o113.FormFactor = Enum.FormFactor.Symmetric
				o113.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
				o113.CFrame = CFrame.new(95.3486252, 1.50002623, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
				o114.Parent = o113
				o115.Parent = o1
				o115.BrickColor = BrickColor.new("Really black")
				o115.Position = Vector3.new(95.3486252, 1.50002623, 9.1665411)
				o115.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
				o115.Anchored = true
				o115.FormFactor = Enum.FormFactor.Symmetric
				o115.Size = Vector3.new(3, 1.20000005, 3)
				o115.CFrame = CFrame.new(95.3486252, 1.50002623, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
				o115.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o116.Parent = o115
				o117.Parent = o1
				o117.BrickColor = BrickColor.new("Really black")
				o117.Position = Vector3.new(95.3486252, 1.50001001, 18.4564877)
				o117.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
				o117.Anchored = true
				o117.FormFactor = Enum.FormFactor.Symmetric
				o117.Size = Vector3.new(3, 1.20000005, 3)
				o117.CFrame = CFrame.new(95.3486252, 1.50001001, 18.4564877, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
				o117.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				o118.Parent = o117
				o119.Parent = o1
				o119.Position = Vector3.new(110.917442, 1.50002527, 9.1665411)
				o119.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
				o119.Anchored = true
				o119.FormFactor = Enum.FormFactor.Symmetric
				o119.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
				o119.CFrame = CFrame.new(110.917442, 1.50002527, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
				o120.Parent = o119
				o121.Name = "Handle"
				o121.Parent = o1
				o121.Material = Enum.Material.SmoothPlastic
				o121.Position = Vector3.new(99.207077, 6.8765769, 15.2047167)
				o121.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
				o121.Anchored = true
				o121.CanCollide = false
				o121.FormFactor = Enum.FormFactor.Symmetric
				o121.Size = Vector3.new(2, 2, 2)
				o121.CFrame = CFrame.new(99.207077, 6.8765769, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
				o121.BottomSurface = Enum.SurfaceType.Smooth
				o121.TopSurface = Enum.SurfaceType.Smooth
				o122.Parent = o121
				o122.MeshId = "http://www.roblox.com/asset/?id=15393031"
				o122.TextureId = "http://www.roblox.com/asset/?id=15393013"
				o122.MeshType = Enum.MeshType.FileMesh
				o123.Name = "RPPART"
				o123.Parent = o1
				o123.Transparency = 1
				o123.Position = Vector3.new(103.454132, 5.33460093, 13.0707426)
				o123.Rotation = Vector3.new(-90, 0, -0)
				o123.Anchored = true
				o123.CanCollide = false
				o123.Size = Vector3.new(4, 1, 2)
				o123.CFrame = CFrame.new(103.454132, 5.33460093, 13.0707426, 1, 0, 0, 0, 0, 1, 0, -1, 0)
				o124.Parent = o12
				o124.Texture = "http://roblox.com/asset/?id=112031763"
				local function MoveY(model, Position)
					for _, part in pairs (model:GetChildren()) do
						if part.ClassName == "Part" then
							part.CFrame = part.CFrame + Vector3.new(0, Position, 0)
						end
					end
				end
				local function MoveX(model, Position)
					for _, part in pairs (model:GetChildren()) do
						if part.ClassName == "Part" then
							part.CFrame = part.CFrame + Vector3.new(Position, 0, 0)
						end
					end
				end
				local function MoveSpawn(model, PLAYERPOS)
					for _, part in pairs (model:GetChildren()) do
						if part.ClassName == "Part" then
							part.CFrame = part.CFrame + PLAYERPOS + Vector3.new(50, -2.7, -5)
						end
					end
				end
				local function MoveZ(model, Position)
					for _, part in pairs (model:GetChildren()) do
						if part.ClassName == "Part" then
							part.CFrame = part.CFrame + Vector3.new(0, 0, Position)
						end
					end
				end
				local function MoveZPart(Part, Position)
					Part.CFrame = Part.CFrame + Vector3.new(0, 0, Position)
				end
				local function MoveXPart(Part, Position)
					Part.CFrame = Part.CFrame + Vector3.new(Position, 0, 0)
				end
				b.Character:WaitForChild'HumanoidRootPart'.Anchored = true
				local OMGCREEPY = Instance.new("Sound")
				OMGCREEPY.Parent = o1
				OMGCREEPY.Volume = .5
				OMGCREEPY.SoundId = "rbxassetid://177775134"
				for i, v in pairs (o1:GetChildren()) do
					if v:IsA("Part") then
						v.Material = "SmoothPlastic"
						v.BackSurface = "SmoothNoOutlines"
						v.FrontSurface = "SmoothNoOutlines"
						v.BottomSurface = "SmoothNoOutlines"
						v.LeftSurface = "SmoothNoOutlines"
						v.RightSurface = "SmoothNoOutlines"
						v.TopSurface = "SmoothNoOutlines"
					end
				end
				OMGCREEPY:Play()
				o21:Play()
				MoveSpawn(o1, b.Character:WaitForChild'HumanoidRootPart'.Position)
				for i = 1, 51 do
					MoveX(o1, -3)
					wait(.05)
				end
				wait(.5)
				MoveZPart(o12, -1)
				wait(.2)
				for i = 1, 6 do
					MoveXPart(o12, 1)
					wait(.1)
				end
				wait(.5)
				b.Character:WaitForChild'HumanoidRootPart'.CFrame = o86.CFrame
				wait(.5)
				b.Character:WaitForChild'HumanoidRootPart'.CFrame = o85.CFrame
				wait(.5)
				MoveZPart(o12, 1)
				wait(.2)
				for i = 1, 6 do
					MoveXPart(o12, -1)
					wait(.1)
				end
				for i = 1, 50 do
					MoveX(o1, -3)
					b.Character:WaitForChild'HumanoidRootPart'.CFrame = o85.CFrame
					wait(.05)
				end
				b.Character.Head.face.Texture = "rbxassetid://629925029"
				b.Character:WaitForChild'HumanoidRootPart'.CFrame = o123.CFrame
				local SCREAM = Instance.new("Sound")
				SCREAM.Parent = b.Character.Head
				SCREAM.SoundId = "rbxassetid://138167455"
				SCREAM:Play()
				wait(2.5)
				b.Character.Head.BrickColor = BrickColor.new("Maroon")
				MoveZPart(o12, -1)
				wait(.2)
				for i = 1, 6 do
					MoveXPart(o12, 1)
					wait(.1)
				end
				wait(.5)
				b.Character:WaitForChild'HumanoidRootPart'.CFrame = o86.CFrame
				wait(.5)
				MoveZPart(o12, 1)
				wait(.2)
				for i = 1, 6 do
					MoveXPart(o12, -1)
					wait(.1)
				end
				b.Character:WaitForChild'Humanoid'.Health = 0
				b.Character.Archivable = true
				local rg = b.Character:Clone()
				rg.HumanoidRootPart:Destroy()
				rg.Name = ""
				rg.Humanoid.MaxHealth = 0
				for i, v in pairs(rg.Torso:GetChildren()) do
					if v:IsA("Motor6D") then
						v:Destroy()
					end
				end
				local n = Instance.new("Glue", rg.Torso)
				n.Name = "Neck"
				n.Part0 = rg.Torso
				n.Part1 = rg.Head
				n.C0 = CFrame.new(0, 1, 0)
				n.C1 = CFrame.new(0, -0.5, 0)
				local rs = Instance.new("Glue", rg.Torso)
				rs.Name = "Right Shoulder"
				rs.Part0 = rg.Torso
				rs.Part1 = rg["Right Arm"]
				rs.C0 = CFrame.new(1.5, 0.5, 0)
				rs.C1 = CFrame.new(0, 0.5, 0)
				local ls = Instance.new("Glue", rg.Torso)
				ls.Name = "Left Shoulder"
				ls.Part0 = rg.Torso
				ls.Part1 = rg["Left Arm"]
				ls.C0 = CFrame.new(-1.5, 0.5, 0)
				ls.C1 = CFrame.new(0, 0.5, 0)
				local rh = Instance.new("Glue", rg.Torso)
				rh.Name = "Right Hip"
				rh.Part0 = rg.Torso
				rh.Part1 = rg["Right Leg"]
				rh.C0 = CFrame.new(0.5, -1, 0)
				rh.C1 = CFrame.new(0, 1, 0)
				local lh = Instance.new("Glue", rg.Torso)
				lh.Name = "Left Hip"
				lh.Part0 = rg.Torso
				lh.Part1 = rg["Left Leg"]
				lh.C0 = CFrame.new(-0.5, -1, 0)
				lh.C1 = CFrame.new(0, 1, 0)
				b.Character:WaitForChild'Torso':Destroy()
				b.Character.Head:Destroy()
				b.Character["Left Leg"]:Destroy()
				b.Character["Left Arm"]:Destroy()
				b.Character["Right Leg"]:Destroy()
				b.Character["Right Arm"]:Destroy()
				rg.Parent = workspace
				rg.Head.BrickColor = BrickColor.new("Maroon")
				local function DEATH()
					local OHHNELLY = Instance.new("Part")
					OHHNELLY.Parent = workspace
					OHHNELLY.Anchored = false
					OHHNELLY.Material = Enum.Material.SmoothPlastic
					OHHNELLY.BrickColor = BrickColor.new("Maroon")
					OHHNELLY.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
					OHHNELLY.Position = rg.Head.Position
					OHHNELLY.Color = Color3.new(0.458824, 0, 0)
					OHHNELLY.BackSurface = Enum.SurfaceType.SmoothNoOutlines
					OHHNELLY.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
					OHHNELLY.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
					OHHNELLY.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
					OHHNELLY.RightSurface = Enum.SurfaceType.SmoothNoOutlines
					OHHNELLY.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				end
				for i = 1, 20 do
					DEATH()
					MoveX(o1, -3)
					wait(.05)
				end
				o1:Destroy()
			end
		end
	end
end)
Light.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("Decal")
o1.Name = "fidget"
o1.Parent = mas
o1.PrimaryPart = o2
o2.Name = "cancer"
o2.Parent = o1
o2.BrickColor = BrickColor.new("Really red")
o2.Position = Vector3.new(-129.800003, 5.599998, -211.800003)
o2.Rotation = Vector3.new(-180, 0, 0)
o2.Anchored = true
o2.CanCollide = false
o2.Locked = true
o2.Size = Vector3.new(6.39999962, 3.19999957, 6.39999962)
o2.CFrame = CFrame.new(-129.800003, 5.599998, -211.800003, 1, 0, 0, 0, -0.999998629, 6.5070914e-08, 0, -6.5070914e-08, -0.999998629)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(1, 0, 0)
o2.Position = Vector3.new(-129.800003, 5.599998, -211.800003)
o3.Name = "ok"
o3.Parent = o2
o3.MeshId = "rbxassetid://785024366"
o3.Scale = Vector3.new(15.9999971, 15.9999971, 15.999999)
o3.MeshType = Enum.MeshType.FileMesh
o4.Name = "tper"
o4.Parent = o3
o4.BrickColor = BrickColor.new("Earth green")
o4.Transparency = 1
o4.Position = Vector3.new(-129.475006, 5.5250001, -211)
o4.Rotation = Vector3.new(-180, 0, 0)
o4.Anchored = true
o4.CanCollide = false
o4.Size = Vector3.new(1.0500114, 1.04999995, 1.0500114)
o4.CFrame = CFrame.new(-129.474991, 5.5250001, -209.525009, 1, 0, 0, 0, -1, 0, 0, 0, -1)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.152941, 0.27451, 0.176471)
o4.Position = Vector3.new(-129.474991, 5.5250001, -209.525009)
o5.Parent = o2
o5.Texture = "rbxassetid://785492382"
o5.Face = Enum.NormalId.Top
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end


wait(0.2)

local death = Instance.new("Sound")
death.Looped = false
death.Parent = game.Workspace.fidget.cancer
death.Volume = 0.5
death.SoundId = "http://www.roblox.com/asset/?id=552900451"
death.Pitch = 1
death.Name = "Sound"
local scream = Instance.new("Sound")
scream.Parent = b.Character:WaitForChild'Head'
scream.Volume = 0.3
scream.SoundId = "http://www.roblox.com/asset/?id=303415187"
scream.Pitch = 1
scream.Name = "Sound"
local poof = Instance.new("Sound")
poof.Parent = game.Workspace.fidget.cancer
poof.Volume = 1
poof.SoundId = "http://www.roblox.com/asset/?id=236382703"
poof.Pitch = 1
poof.Name = "Sound"
local gore = Instance.new("Sound")
gore.Parent = b.Character:WaitForChild'Head'
gore.Volume = 0.6
gore.Looped = false
gore.SoundId = "http://www.roblox.com/asset/?id=429400881"
gore.Pitch = 1
gore.Name = "Sound"

b.Character.Humanoid.WalkSpeed = 0
b.Character.Humanoid.JumpPower = 0

local partasdeff = Instance.new("ParticleEmitter",b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
			partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
			partasdeff.LightEmission = .1
			partasdeff.Size = NumberSequence.new(0.2)
			partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
			local aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
			local bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			partasdeff.Transparency = bbb
			partasdeff.Size = aaa
			partasdeff.ZOffset = .9
			partasdeff.Acceleration = Vector3.new(0, -5, 0)
			partasdeff.LockedToPart = false
			partasdeff.EmissionDirection = "Back"
			partasdeff.Lifetime = NumberRange.new(1, 2)
			partasdeff.Rate = 1000
			partasdeff.Rotation = NumberRange.new(-100, 100)
			partasdeff.RotSpeed = NumberRange.new(-100, 100)
			partasdeff.Speed = NumberRange.new(6)
			partasdeff.VelocitySpread = 10000
			partasdeff.Enabled=false


spawn(function()
	while wait(.01) do
			for i,v in pairs(game.Workspace.fidget:GetChildren()) do
			if v:IsA'Part' then
				v.CFrame = v.CFrame * CFrame.Angles(0, .5, 0)
			end
		end
	end
end)
	 spawn(function()
		while wait(0.1) do
			
				death:Play()
				end
	end)
	 spawn(function()
				wait(3)
				partasdeff.Enabled = true
				b.Character:WaitForChild'Left Leg':Remove()
				b.Character:WaitForChild'Left Arm':Remove()
				b.Character:WaitForChild'Right Arm':Remove()
				gore:Play()
				wait(0.5)
				partasdeff.Enabled = false
	end)
	
game.Workspace.fidget:MoveTo(game:GetService'Players'.LocalPlayer.Character.Torso.Position + game:GetService'Players'.LocalPlayer.Character.Torso.CFrame.lookVector* 30)

b.Character:FindFirstChild("HumanoidRootPart").Anchored = true 

if b.Character:FindFirstChild("HumanoidRootPart") then
			b.Character.HumanoidRootPart.CFrame = game.Workspace.fidget.cancer.ok.tper.CFrame 
if b.Character:WaitForChild'Humanoid'.Health == math.huge then
				b.Character:WaitForChild'Humanoid'.Health = 100
end
end

			
		local hum=b.Character:FindFirstChild('Humanoid')
				_G.loopy = true
				while wait(.5) and _G.loopy == true  do
					hum.Health=hum.Health-10
					if hum.Health == 0 then
						_G.loopy = false
						partasdeff.Enabled = true
				gore:Play()
				wait(0.5)
				partasdeff.Enabled = false
						
			wait(2)
			poof:Play()
			death:Pause()
			death:Destroy()
			wait(0.4)
			game.Workspace.fidget:Destroy()
			end
					end
				end
		end
		end
end)
MLG.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local pe = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				pe.Texture = "http://www.roblox.com/asset/?id=176067516"
				pe.VelocitySpread = 50
				pe.Rotation = NumberRange.new (0, 360)
				local se = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				se.Texture = "http://www.roblox.com/asset/?id=176124496"
				se.VelocitySpread = 50
				se.Rotation = NumberRange.new (0, 360)
				local de = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				de.Texture = "http://www.roblox.com/asset/?id=209572065"
				de.VelocitySpread = 50
				de.Rotation = NumberRange.new (0, 360)
				local ye = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				ye.Texture = "http://www.roblox.com/asset/?id=199992364"
				ye.VelocitySpread = 50
				ye.Rotation = NumberRange.new (0, 360)
				local qe = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				qe.Texture = "http://www.roblox.com/asset/?id=48354008"
				qe.VelocitySpread = 50
				qe.Rotation = NumberRange.new (0, 360)
				local za = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				za.Texture = "http://www.roblox.com/asset/?id=185751237"
				za.VelocitySpread = 50
				za.Rotation = NumberRange.new (0, 360)
				local na = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				na.Texture = "http://www.roblox.com/asset/?id=158802305"
				na.VelocitySpread = 50
				na.Rotation = NumberRange.new (0, 360)
				local da = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				da.Texture = "http://www.roblox.com/asset/?id=179012130"
				da.VelocitySpread = 50
				da.Rotation = NumberRange.new (0, 360)
				local fa = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				fa.Texture = "http://www.roblox.com/asset/?id=217185480"
				fa.VelocitySpread = 180
				fa.Rotation = NumberRange.new (0, 360)
				local sa = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				sa.Texture = "http://www.roblox.com/asset/?id=162381293"
				sa.VelocitySpread = 180
				sa.Rotation = NumberRange.new (0, 360)
				local ju = Instance.new("ParticleEmitter", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso')
				ju.Texture = "http://www.roblox.com/asset/?id=195013311"
				ju.Rotation = NumberRange.new (0, 360)
				ju.VelocitySpread = 180
				local S = b.Character:WaitForChild'Head'
				local Sound = Instance.new("Sound" , S)
				Sound.Name = "mlg savage"
				Sound.Looped = true
				Sound.SoundId = 'rbxassetid://362846090'
				Sound.Volume = 1
				Sound:Play()
				Sound.TimePosition = 0	
			end
		end
	end
end)
Midget.MouseButton1Down:Connect(function()
		local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local function scale(chr, scl)
					for _, v in pairs(b.Character:GetChildren()) do
						if v:IsA('Accessory') then
							v:Clone()
							v.Parent = game:GetService'Lighting'
						end
					end
					local Head = chr['Head']
					local Torso = chr['Torso']
					local LA = chr['Left Arm']
					local RA = chr['Right Arm']
					local LL = chr['Left Leg']
					local RL = chr['Right Leg']
					local HRP = chr['HumanoidRootPart']
					wait()
					Head.formFactor = 3
					Torso.formFactor = 3
					LA.formFactor = 3
					RA.formFactor = 3
					LL.formFactor = 3
					RL.formFactor = 3
					HRP.formFactor = 3
	    
					Head.Size = Vector3.new(scl * 2, scl, scl)
					Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
					LA.Size = Vector3.new(scl, scl * 2, scl)
					RA.Size = Vector3.new(scl, scl * 2, scl)
					LL.Size = Vector3.new(scl, scl * 2, scl)
					RL.Size = Vector3.new(scl, scl * 2, scl)
					HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
	    
					local Motor1 = Instance.new('Motor6D', Torso)
					Motor1.Part0 = Torso
					Motor1.Part1 = Head
					Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
					Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
					Motor1.Name = 'Neck'
			    
					local Motor2 = Instance.new('Motor6D', Torso)
					Motor2.Part0 = Torso
					Motor2.Part1 = LA
					Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
					Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
					Motor2.Name = 'Left Shoulder'
	    
					local Motor3 = Instance.new('Motor6D', Torso)
					Motor3.Part0 = Torso
					Motor3.Part1 = RA
					Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
					Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
					Motor3.Name = 'Right Shoulder'
					local Motor4 = Instance.new('Motor6D', Torso)
					Motor4.Part0 = Torso
					Motor4.Part1 = LL
					Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
					Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
					Motor4.Name = 'Left Hip'
					local Motor5 = Instance.new('Motor6D', Torso)
					Motor5.Part0 = Torso
					Motor5.Part1 = RL
					Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
					Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
					Motor5.Name = 'Right Hip'
					local Motor6 = Instance.new('Motor6D', HRP)
					Motor6.Part0 = HRP
					Motor6.Part1 = Torso
					Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
					Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
				end
				scale(b.Character, 5)
				for _, v in pairs(game:GetService'Lighting':GetChildren()) do
					if v:IsA('Accessory') then
						v.Parent = b.Character
					end
				end
			end
		end
	end
end)
Noob.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				for _, Item in pairs (b.Character:GetChildren()) do		
					if Item:IsA("Accessory") then
						Item:Destroy ()
					end
				end
				for _, Item in pairs (b.Character:GetChildren()) do
					if Item:IsA("Shirt") then
						Item:Destroy ()
					end
				end
				for _, Item in pairs (b.Character:GetChildren()) do
					if Item:IsA("Pants") then
						Item:Destroy ()
					end
				end
				for _, Item in pairs (b.Character:GetChildren()) do
					if Item:IsA("ShirtGraphic") then
						Item:Destroy ()
					end
				end
				local hat = Instance.new("Part", b.Character)
				local hm = Instance.new("SpecialMesh", hat)
				hm.MeshId = "http://www.roblox.com/asset/?id=83293901"
				hm.TextureId = "http://www.roblox.com/asset/?id=83284747"
				local hatw = Instance.new("Weld", b.Character)
				hatw.Part0 = b.Character:WaitForChild'Head'
				hatw.Part1 = hat
				hatw.C1 = CFrame.new(0, -.25, 0.2)		
				local shirz = Instance.new("Shirt", b.Character)
				local pantz = Instance.new("Pants", b.Character)
				shirz.Name = "Shirt"
				b.Character:WaitForChild'Shirt'.ShirtTemplate = "rbxassetid://144076357"
				pantz.Name = "Pants"
				b.Character:WaitForChild'Pants'.PantsTemplate = "rbxassetid://144076759"
				local face = Instance.new("Decal", b.Character:WaitForChild'Head')
				face.Texture = "http://www.roblox.com/asset/?id=144080495"
				local head = b.Character:WaitForChild'Head'
				head.TopSurface = "SmoothNoOutlines"
				head.BottomSurface = "SmoothNoOutlines"
				head.FrontSurface = "SmoothNoOutlines"
				head.LeftSurface = "SmoothNoOutlines"
				head.RightSurface = "SmoothNoOutlines"
				head.BackSurface = "SmoothNoOutlines"
				head.Material = "SmoothPlastic"
				head.face:Destroy()
				b.Character.Head.Mesh.MeshId = "http://www.roblox.com/asset/?id=83001675"
				for _, Item in pairs (b.Character:GetChildren()) do
					if Item:IsA("CharacterMesh") then
						Item:Destroy ()
					end
				end
				local left = Instance.new("CharacterMesh", b.Character)
				left.Name = "Roblox 3.0 Left Arm"
				left.MeshId = 82907977
				left.BodyPart = "LeftArm"
				local right = Instance.new("CharacterMesh", b.Character)
				right.Name = "Roblox 3.0 Right Arm"
				right.MeshId = 82908019
				right.BodyPart = "RightArm"
				local torso = Instance.new("CharacterMesh", b.Character)
				torso.Name = "Roblox 3.0 torso"
				torso.MeshId = 82907945
				torso.BodyPart = "Torso"
				local lleg = Instance.new("CharacterMesh", b.Character)
				lleg.Name = "Roblox 3.0 Left Leg"
				lleg.MeshId = 81487640
				lleg.BodyPart = "LeftLeg"
				local rleg = Instance.new("CharacterMesh", b.Character)
				rleg.Name = "Roblox 3.0 Right Leg"
				rleg.MeshId = 81487710
				rleg.BodyPart = "RightLeg"
				b.Character["Left Leg"].BrickColor = BrickColor.new("White")
				b.Character["Right Leg"].BrickColor = BrickColor.new("White")
				b.Character["Left Arm"].BrickColor = BrickColor.new("White")
				b.Character["Right Arm"].BrickColor = BrickColor.new("White")
				b.Character.Torso.BrickColor = BrickColor.new("White")
				b.Character.Head.BrickColor = BrickColor.new("White")
				local chat = game:GetService'Chat'
				while wait(4) do
				chat:Chat(b.Character:WaitForChild'Head', "give me free robux","Blue")
				wait(4)
				chat:Chat(b.Character:WaitForChild'Head', "you ideot noobs","Red")
				wait(4)
				chat:Chat(b.Character:WaitForChild'Head', "i am a pro","Blue")
				wait(4)
				chat:Chat(b.Character:WaitForChild'Head', "u suk","Red")
				wait(4)
				chat:Chat(b.Character:WaitForChild'Head', "lolololol","Blue")
				end
			end
		end
	end
end)
Poison.MouseButton1Down:Connect(function()
	
end)
Puke.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				local Sound = Instance.new("Sound" , b.Character:WaitForChild'Head')
				Sound.Name = "gross"
				Sound.Looped = false
				Sound.SoundId = 'rbxassetid://528349992'
				Sound.Volume = 1
				Sound:Play()
				Sound.TimePosition = 0
				coroutine.wrap(function()
					local run = true
					local k = Instance.new('StringValue', b.Character)
					k.Name = 'vom'
					coroutine.wrap(function()
						repeat 
							wait(0.01)
							local p = Instance.new("Part", b.Character)
							p.CanCollide = true
							local color = math.random(1, 3)
							local bcolor
							if color == 1 then
								bcolor = BrickColor.new(192)
							elseif color == 2 then
								bcolor = BrickColor.new(28)
							elseif color == 3 then
								bcolor = BrickColor.new(105)
							end
							p.BrickColor = bcolor
							local m = Instance.new('BlockMesh', p)
							p.Size = Vector3.new(0.5, 0.5, 0.5)
							m.Scale = Vector3.new(math.random() * 1.0, math.random() * 1.0, math.random() * 1.0)
							p.Locked = true
							p.TopSurface = "Smooth"
							p.BottomSurface = "Smooth"
							p.CFrame = b.Character:WaitForChild'Head'.CFrame * CFrame.new(Vector3.new(0, 0, -1))
							p.Velocity = b.Character:WaitForChild'Head'.CFrame.lookVector * 20 + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
							p.Anchored = false
							m.Name = 'Puke Peice'
							p.Name = 'Puke Peice'
							p.Touched:Connect(function(o)
								if o and p and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name ~= 'Puke Peice' and o.Name ~= 'Blood Peice' and o.Name ~= 'Blood Plate' and o.Name ~= 'Puke Plate' and (o.Parent.Name == 'Workspace' or o.Parent:IsA('Model')) and (o.Parent ~= p.Parent) and o:IsA('Part') and (o.Parent.Name ~= b.Character:WaitForChild'Name') and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
									local cf = CFrame.new(p.CFrame.b.Character, o.CFrame.Y + o.Size.Y / 2, p.CFrame.Z)
									p:Destroy()
									local g = Instance.new('Part', workspace)
									g.Anchored = true
									g.CanCollide = false
									g.Size = Vector3.new(0.1, 0.1, 0.1)
									g.Name = 'Puke Plate'
									g.CFrame = cf
									g.BrickColor = BrickColor.new(119)
									local c = Instance.new('CylinderMesh', g)
									c.Scale = Vector3.new(1, 0.2, 1)
									c.Name = 'PukeMesh'
									wait(10)
									g:Destroy()
								elseif o and o.Name == 'Puke Plate' and p then 
									p:Destroy() 
									o.PukeMesh.Scale = o.PukeMesh.Scale + Vector3.new(1, 0, 1)
	
								end
							end)
						until run == false or not k or not k.Parent or (not b.Character) or (not b.Character:FindFirstChild('Head'))
					end)()
					wait(10)
					run = false
					k:Destroy()
				end)()
			end
		end
	end
end)
Punish.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				if Players.Punish.Text == "PUNISH" then
					Punish.Text = "UNPUNISH"
				b.Character.Parent = game:GetService'ReplicatedStorage'
				elseif Punish.Text == "UNPUNISH" then
					Punish.Text = "PUNISH"
					b.Character.Parent = game:GetService'Workspace'
				end
			end
		end
	end
end)
Rape.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				function fWeld(zName, zParent, zPart0, zPart1, zCoco, a, b, c, d, e, f)
					local funcw = Instance.new("Weld")
					funcw.Name = zName
					funcw.Parent = zParent
					funcw.Part0 = zPart0
					funcw.Part1 = zPart1
					if (zCoco == true) then
						funcw.C0 = CFrame.new(a, b, c) * CFrame.fromEulerAnglesXYZ(d, e, f)
					else
						funcw.C1 = CFrame.new(a, b, c) * CFrame.fromEulerAnglesXYZ(d, e, f)
					end
					return funcw
				end
				local function fun(n1, n2)
					pcall(function()
						local t1 = Torso 
						local t2 = b.Character:WaitForChild'Torso'
						t2.Parent.Humanoid.PlatformStand = true
						t1["Left Shoulder"]:Destroy()
						local ls1 = Instance.new("Weld")
						ls1.Parent = t1
						ls1.Part0 = t1
						ls1.Part1 = t1.Parent["Left Arm"]
						ls1.C0 = CFrame.new(-1.5, 0, 0)
						ls1.Name = "Left Shoulder"
						t1["Right Shoulder"]:Destroy()
						local rs1 = Instance.new("Weld")
						rs1.Parent = t1
						rs1.Part0 = t1
						rs1.Part1 = t1.Parent["Right Arm"]
						rs1.C0 = CFrame.new(1.5, 0, 0)
						rs1.Name = "Right Shoulder"
						t2["Left Shoulder"]:Destroy()
						local ls2 = Instance.new("Weld")
						ls2.Parent = t2
						ls2.Part0 = t2
						ls2.Part1 = t2.Parent["Left Arm"]
						ls2.C0 = CFrame.new(-1.5, 0, 0)
						ls2.Name = "Left Shoulder"
						t2["Right Shoulder"]:Destroy()
						local rs2 = Instance.new("Weld")
						rs2.Parent = t2
						rs2.Part0 = t2
						rs2.Part1 = t2.Parent["Right Arm"]
						rs2.C0 = CFrame.new(1.5, 0, 0)
						rs2.Name = "Right Shoulder"
						t2["Left Hip"]:Destroy()
						local lh2 = Instance.new("Weld")
						lh2.Parent = t2
						lh2.Part0 = t2
						lh2.Part1 = t2.Parent["Left Leg"]
						lh2.C0 = CFrame.new(-0.5, -2, 0)
						lh2.Name = "Left Hip"
						t2["Right Hip"]:Destroy()
						local rh2 = Instance.new("Weld")
						rh2.Parent = t2
						rh2.Part0 = t2
						rh2.Part1 = t2.Parent["Right Leg"]
						rh2.C0 = CFrame.new(0.5, -2, 0)
						rh2.Name = "Right Hip"
						local d = Instance.new("Part")
						d.TopSurface = 0
						d.BottomSurface = 0
						d.CanCollide = false
						d.BrickColor = BrickColor.new("Medium stone grey")
						d.Shape = "Ball"
						d.Parent = t1
						d.Size = Vector3.new(1, 1, 1)
						local dm = Instance.new("SpecialMesh")
						dm.MeshType = "Sphere"
						dm.Parent = d
						dm.Scale = Vector3.new(0.4, 0.4, 0.4)
						fWeld("weld", t1, t1, d, true, -0.2, -1.3, -0.6, 0, 0, 0)
						local d2 = d:Clone()
						d2.Parent = t1
						fWeld("weld", t1, t1, d2, true, 0.2, -1.3, -0.6, 0, 0, 0)
						local c = Instance.new("Part")
						c.TopSurface = 0
						c.BottomSurface = 0
						c.CanCollide = false
						c.BrickColor = BrickColor.new("Pastel brown")
						c.Parent = t1
						c.formFactor = "Custom"
						c.Size = Vector3.new(0.4, 1.3, 0.4)
						local cm = Instance.new("CylinderMesh")
						cm.Parent = c
						a = fWeld("weld", t1, t1, c, true, 0, -1, -0.52 + (-c.Size.y / 2), math.rad(-80), 0, 0)
						local c2 = d:Clone()
						c2.BrickColor = BrickColor.new("Medium stone grey")
						c2.Mesh.Scale = Vector3.new(0.4, 0.62, 0.4)
						c2.Parent = t1
						fWeld("weld", c, c, c2, true, 0, 0 + (c.Size.y / 2), 0, math.rad(-10), 0, 0)
						local bl = Instance.new("Part")
						bl.TopSurface = 0
						bl.BottomSurface = 0
						bl.CanCollide = false
						bl.BrickColor = BrickColor.new("Pastel brown")
						bl.Shape = "Ball"
						bl.Parent = t2
						bl.Size = Vector3.new(1, 1, 1)
						local dm = Instance.new("SpecialMesh")
						dm.MeshType = "Sphere"
						dm.Parent = bl
						dm.Scale = Vector3.new(1.2, 1.2, 1.2)
						fWeld("weld", t2, t2, bl, true, -0.5, 0.5, -0.6, 0, 0, 0)
						local br = Instance.new("Part")
						br.TopSurface = 0
						br.BottomSurface = 0
						br.CanCollide = false
						br.BrickColor = BrickColor.new("Pastel brown")
						br.Shape = "Ball"
						br.Parent = t2
						br.Size = Vector3.new(1, 1, 1)
						local dm = Instance.new("SpecialMesh")
						dm.MeshType = "Sphere"
						dm.Parent = br
						dm.Scale = Vector3.new(1.2, 1.2, 1.2)
						fWeld("weld", t2, t2, br, true, 0.5, 0.5, -0.6, 0, 0, 0)
						local bln = Instance.new("Part")
						bln.TopSurface = 0
						bln.BottomSurface = 0
						bln.CanCollide = false
						bln.Shape = "Ball"
						bln.Parent = t2
						bln.Size = Vector3.new(1, 1, 1)
						local dm = Instance.new("SpecialMesh")
						dm.MeshType = "Sphere"
						dm.Parent = bln
						dm.Scale = Vector3.new(0.2, 0.2, 0.2)
						fWeld("weld", t2, t2, bln, true, -0.5, 0.5, -1.2, 0, 0, 0)
						local brn = Instance.new("Part")
						brn.TopSurface = 0
						brn.BottomSurface = 0
						brn.CanCollide = false
						brn.Shape = "Ball"
						brn.Parent = t2
						brn.Size = Vector3.new(1, 1, 1)
						local dm = Instance.new("SpecialMesh")
						dm.MeshType = "Sphere"
						dm.Parent = brn
						dm.Scale = Vector3.new(0.2, 0.2, 0.2)
						fWeld("weld", t2, t2, brn, true, 0.5, 0.5, -1.2, 0, 0, 0)
						lh2.C1 = CFrame.new(0, -1.5, -0.5) * CFrame.Angles(0.9, -0.4, 0)
						rh2.C1 = CFrame.new(0, -1.5, -0.5) * CFrame.Angles(0.9, 0.4, 0)
						ls2.C1 = CFrame.new(-0.5, -1.3, -0.5) * CFrame.Angles(0.9, -0.4, 0)
						rs2.C1 = CFrame.new(0.5, -1.3, -0.5) * CFrame.Angles(0.9, 0.4, 0)
						ls1.C1 = CFrame.new(-0.5, 0.7, 0) * CFrame.Angles(-0.9, -0.4, 0)
						rs1.C1 = CFrame.new(0.5, 0.7, 0) * CFrame.Angles(-0.9, 0.4, 0)
						if t1:findFirstChild("weldx") ~= nil then
							t1.weldx:Destroy()
						end
						we = fWeld("weldx", t1, t1, t2, true, 0, -0.9, -1.3, math.rad(-90), 0, 0)
						local n = t2.Neck
						n.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-210), math.rad(180), 0)
					end)
					spawn(function()
						while wait() do
							for i = 1, 6 do
								we.C1 = we.C1 * CFrame.new(0, -0.3, 0)
								wait()
							end

							for i = 1, 6 do
								we.C1 = we.C1 * CFrame.new(0, 0.3, 0)
								wait()
							end
						end
					end)
				end
				fun()	
			end
		end
	end
end)
Shrek.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				for i, v in pairs(b.Character:GetChildren()) do
					if v:IsA'Decal' or v:IsA'Accessory' or v:IsA'Shirt' or v:IsA'Pants' then
						v:Destroy()
					end
				end
				local S = b.Character:WaitForChild'Torso'
				local Sound = Instance.new("Sound" , S)
				Sound.Name = "shrekisloveshrekislife"
				Sound.Looped = true
				Sound.SoundId = 'rbxassetid://171907832'
				Sound.Volume = 0.3
				Sound:Play()
				Sound.TimePosition = 0
				pcall(function()
					b.Character.Head.face:Destroy()
				end)
				local M = Instance.new('SpecialMesh', b.Character:WaitForChild'Head')
				local S = Instance.new('Shirt', b.Character)
				local P = Instance.new('Pants', b.Character)
				M.MeshType = 'FileMesh'
				M.MeshId = 'http://www.roblox.com/asset/?id=19999257'
				M.Offset = Vector3.new(-0.1, 0.1, 0)
				M.TextureId = 'http://www.roblox.com/asset/?id=156397869'
				S.ShirtTemplate = 'rbxassetid://133078194'
				P.PantsTemplate = 'rbxassetid://133078204'
			end
		end
	end
end)
StickMan.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				for i, v in pairs(b.Character:GetChildren()) do
					if v:IsA ("Part") then
						local s = Instance.new("SelectionPartLasso")
						s.Parent = b.Character:WaitForChild'Torso'
						s.Part = v
						s.Color = BrickColor.new(0, 0, 0)
						v.Transparency = 1
						b.Character.Head.Transparency = 0
						b.Character.Head.Mesh:Destroy()
						local lol = Instance.new("SpecialMesh")
						lol.Parent = b.Character:WaitForChild'Head'
						lol.MeshType = "Sphere"
						lol.Scale = Vector3.new(.5, 1, 1)
						lol.Character.Head.BrickColor = BrickColor.new("Black")
					end 
				end
			end
		end
	end
end)
Stun.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character and b.Character:FindFirstChild'Humanoid'then
				b.Character:WaitForChild'Torso'.CFrame = b.Character:WaitForChild'Torso'.CFrame * CFrame.Angles(math.rad(90), 0, 0) 
				b.Character:WaitForChild'Humanoid'.PlatformStand = true
			end
		end
	end
end)
DancingHotdog.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character and b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso' then
				local m1 = Instance.new("SpecialMesh", b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso') 
				m1.MeshType = "FileMesh" 
				m1.TextureId = "http://www.roblox.com/asset/?id=918506278" 
				m1.MeshId = "http://www.roblox.com/asset/?id=918506271"
				m1.Scale = Vector3.new(3, 3, 3)
				b.Character:WaitForChild'Humanoid'.HipHeight = 2
				for _, v in pairs (b.Character:GetChildren()) do		
					if v:IsA("Accessory") then
						v:Destroy ()
					end
				end
				local S = b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso'
				local Sound = Instance.new("Sound" , S)
				Sound.Name = "hotdoggo"
				Sound.Looped = true
				Sound.SoundId = 'rbxassetid://924431633'
				Sound.Volume = 0.5
				Sound:Play()
				Sound.TimePosition = 0

				local err, succ = pcall(function()
					for _, v in pairs(b.Character:GetChildren()) do
						if not v:IsA'Script' and not v:IsA'Humanoid' and not v:IsA'LocalScript' and not v:IsA'Model' then
							v.Transparency = 1
						end
					end
				end)
				local err, succ = pcall(function()
					b.Character.Head.face:Destroy()
				end)
				local err, succ = pcall(function()
					a = b.Character:FindFirstChild'Torso' or b.Character:FindFirstChild'UpperTorso' 
				a.Transparency = 0
				end)
			end
		end
	end
end)
_666.MouseButton1Down:Connect(function()
for i,v in next,workspace:children''do
  if(v:IsA'BasePart')then
   local me=v;
   local  bbg=Instance.new('BillboardGui',me);
    bbg.Name='stuf';
    bbg.Adornee=me;
    bbg.Size=UDim2.new(2.5,0,2.5,0)
    local tlb=Instance.new'TextLabel';
    tlb.Text='666 666 666 666 666 666';
    tlb.Font='SourceSansBold';
    tlb.FontSize='Size48';
    tlb.TextColor3=Color3.new(1,0,0);
    tlb.Size=UDim2.new(1.25,0,1.25,0);
    tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
    tlb.BackgroundTransparency=1;
    tlb.Parent=bbg;
    end;end;
      function xds(dd)
        for i,v in next,dd:children''do
          if(v:IsA'BasePart')then
            v.BrickColor=BrickColor.new'Really black';
            v.TopSurface='Smooth';
            v.BottomSurface='Smooth';
          local  s=Instance.new('SelectionBox',v);
            s.Adornee=v;
            s.Color=BrickColor.new'Really red';
         local   a=Instance.new('PointLight',v);
            a.Color=Color3.new(1,0,0);
            a.Range=15;
            a.Brightness=5;
         local   f=Instance.new('Fire',v);
            f.Size=11;
            f.Heat=12;
            end;
            game:GetService('Lighting').TimeOfDay=0;
            game:GetService('Lighting').Brightness=0;
            game:GetService('Lighting').ShadowColor=Color3.new(0,0,0);
            game:GetService('Lighting').Ambient=Color3.new(1,0,0);
            game:GetService('Lighting').FogEnd=200;
            game:GetService('Lighting').FogColor=Color3.new(0,0,0);
        local dec = 'http://www.roblox.com/asset/?id=19399245';
            local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
            if #(v:GetChildren())>0 then
                   xds(v) 
              end
         end
    end
xds(workspace)
end)
Anonymous.MouseButton1Down:Connect(function()
	
end)
Bait.MouseButton1Down:Connect(function()
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("SpecialMesh")
o1.Name = "Beartrap"
o1.Parent = mas
o2.Name = "Watermelon"
o2.Parent = o1
o2.Position = Vector3.new(-131, 3.60001278, -126.5)
o2.Rotation = Vector3.new(-90, 0, -180)
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(4.00000048, 2, 2.00000024)
o2.CFrame = CFrame.new(-131, 3.60001278, -126.5, -1, 2.83739237e-08, -7.20033189e-09, -9.50719414e-09, -2.63673223e-06, 0.999998271, 2.77130034e-08, 0.999999404, 1.65274344e-06)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(-131, 3.60001278, -126.5)
o3.Parent = o2
o3.MeshId = "http://www.roblox.com/asset?id=160207800"
o3.Scale = Vector3.new(2.00000024, 2, 2.00000024)
o3.TextureId = "http://www.roblox.com/asset?id=160208024"
o3.MeshType = Enum.MeshType.FileMesh
o4.Name = "Main"
o4.Parent = o1
o4.Position = Vector3.new(-130.800003, 2.30001211, -127.5)
o4.Rotation = Vector3.new(-90, 0, 180)
o4.Anchored = true
o4.CanCollide = false
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(6.9333353, 11.2666702, 2.60000062)
o4.CFrame = CFrame.new(-130.800003, 2.30001211, -127.5, -0.999999523, -5.96046412e-08, -5.42185603e-08, -9.96818272e-09, 1.42108547e-14, 0.999999642, 2.08616257e-07, 0.999999523, -1.08579741e-08)
o4.Position = Vector3.new(-130.800003, 2.30001211, -127.5)
o5.Parent = o4
o5.MeshId = "http://www.roblox.com/asset/?id=59713741 "
o5.Scale = Vector3.new(8.66666889, 8.66666889, 8.66666794)
o5.TextureId = "http://www.roblox.com/asset/?id=59711291 "
o5.MeshType = Enum.MeshType.FileMesh
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

local fumes = Instance.new("Sound")
fumes.Parent = workspace
fumes.Volume = 0.6
fumes.SoundId = "http://www.roblox.com/asset/?id=171688984"
fumes.Pitch = 1
fumes.Name = "Sound"

game.Workspace.Beartrap.Watermelon.Anchored = true
game.Workspace.Beartrap.Main.Anchored = true
game.Workspace.Beartrap:MoveTo(game:GetService'Players'.LocalPlayer.Character.Torso.Position + game:GetService'Players'.LocalPlayer.Character.Torso.CFrame.lookVector* 10)

meshClosed = "http://www.roblox.com/asset/?id=59711981"
local meshOpen = "http://www.roblox.com/asset/?id=59713741"
debounce = true

local function onHit(hit)
	fumes:Play()
	local IsHuman = hit.Parent:findFirstChild("Humanoid")
	if IsHuman~=nil and debounce == true then
		debounce = false
		o5.MeshId = meshClosed
		IsHuman:TakeDamage(100)
		wait()
		game.Workspace.Beartrap.Main.Anchored = true
		wait(3)
		game.Workspace.Beartrap:Destroy()
	end
end
game.Workspace.Beartrap.Watermelon.Touched:connect(onHit)
end)
Baseplate.MouseButton1Down:Connect(function()
	local A = Instance.new('Part', workspace)
	A.Anchored = true
	A.Locked = true
	A.Position = Vector3.new(0, 0, 0)
	A.Name = 'Baseplate'
	A.Size = Vector3.new(400, 2, 400)
	A.BrickColor = BrickColor.new'Parsley green'
	A.Material = Enum.Material.Grass
end)
Bluescreen.MouseButton1Down:Connect(function()
	local w = workspace:GetChildren()
	local a = Instance.new("Sky", game:GetService'Lighting')
	local b = {
		"Bk",
		"Dn",
		"Ft",
		"Lf",
		"Rt",
		"Up"
	}
	for _, v in pairs(b) do
		a["Skybox"..v] = "rbxassetid://111954944"
	end
	for q, p in pairs(game:GetService'Players':GetPlayers()) do
		local c = Instance.new("ParticleEmitter", p.Character.Torso)
		c.Texture = "rbxassetid://79187163"
		c.VelocitySpread = 50
	end
	local d = Instance.new("Sound", workspace)
	d.SoundId = "rbxassetid://507839176"
	d.Looped = true
	d:Play()
	for i = 1, #w do
		if w[i]:isA("BasePart") then
			local pe = Instance.new("ParticleEmitter", w[i])
			pe.Texture = "rbxassetid://79187163"
			pe.VelocitySpread = 5
		end
	end
	for n, m in pairs(game:GetService'Players':GetPlayers()) do
		local dd = Instance.new("ParticleEmitter", m.Character.Torso)
		dd.Texture = "rbxassetid://357822657"
		dd.VelocitySpread = 50
	end
end)
DestroyServer.MouseButton1Down:Connect(function()
	local function z(b)
		for a, a in pairs(b:GetChildren()) do
			local c, d = pcall(function()
				a:Destroy()
			end)
			if not c then
				pcall(z, a)
			end
		end
	end
	pcall(z, game)
end)
Epilepsy.MouseButton1Down:Connect(function()
	local a = Instance.new('Sound', workspace)
	a.Volume = 10
	a.SoundId = "rbxassetid://410814187"
	a.Name = "epi"
	game:GetService'Lighting'.FogEnd = 0
	spawn(function()
		while wait(.01) do
			a:Play()
			game:GetService'Lighting'.Ambient = BrickColor.Random().Color
			game:GetService'Lighting'.FogColor = BrickColor.Random().Color
			game:GetService'Lighting'.OutdoorAmbient = BrickColor.Random().Color
			end
	end)
end)
Flood.MouseButton1Down:Connect(function()
	if Flood.Text == "FLOOD" then
		Flood.Text = "CLEAR TERRAIN"
		game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")
	elseif Flood.Text == "CLEAR TERRAIN" then
		Flood.Text = "FLOOD"
		game.Workspace.Terrain:Clear()
	end
end)
Fogend.MouseButton1Down:Connect(function()
	pcall(function()
		game:GetService'Lighting'.FogEnd = ServerValue.Text
	end)
end)
Gravity.MouseButton1Down:Connect(function()
	pcall(function()
		workspace.Gravity = ServerValue.Text
	end)
end)
Harambe.MouseButton1Down:Connect(function()
	
end)
Music.MouseButton1Down:Connect(function()
for i, v in pairs(workspace:GetChildren()) do
					if v:IsA'Folder' and v:IsA'Sound' then
						v:Destroy()
					end
				end
	pcall(function()
		local b = Instance.new('Folder', workspace)
		local a = Instance.new('Sound', b)
		a.Volume = 10
		a.Pitch = ServerText.Text
		a.SoundId = 'rbxassetid://'..ServerValue.Text
		a:Play()
	end)
end)
Nuke.MouseButton1Down:Connect(function()
	if Nuke.Text == "METEOR SHOWER" then
		Nuke.Text = 'UNDO'
spawn(function()
while wait(0.5) and Nuke.Text == "UNDO" do
	for i, v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
local p = Instance.new("Part",workspace)
p.Size = Vector3.new(15,15,15)
p.BrickColor = BrickColor.new("White")
p.Name = "SpaceRock"
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.CanCollide = false
p.Position = Vector3.new(math.random(-512,512), 2000, math.random(-512,512))
o1 = Instance.new("SpecialMesh")
o1.Name = "SpaceRocksMesh"
o1.Parent = p
o1.MeshId = "http://www.roblox.com/asset/?id=1290033"
o1.Scale = Vector3.new(7.5, 7.5, 7.5)
o1.TextureId = "http://www.roblox.com/asset/?id=1290030"
o1.VertexColor = Vector3.new(1, 0.400000006, 0.200000003)
local f = Instance.new("Fire")
f.Name = "SpaceRockFire"
f.Size = 30
f.Heat = 0
f.Color = Color3.new(0,0,0)
f.SecondaryColor = Color3.new(255,0,0)                        
f.Parent = p
local s = Instance.new("Sound")
s.Name = "SpaceRockSound"
s.SoundId = "http://roblox.com/asset/?id=10209821"
s.Pitch = 0.6
s.Volume = 1
s.Parent = p
p.CFrame = v.Character.Torso.CFrame + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50))
p.Touched:connect(function(hit,Part,Distance)
local e = Instance.new("Explosion")
e.Parent = workspace
e.BlastPressure = 1000
e.BlastRadius = 60
e.DestroyJointRadiusPercent = 0.7
e.ExplosionType = "CratersAndDebris"
e.Position = p.Position
s:play()
end)
		end)
	end
	end
end)
elseif Nuke.Text == "UNDO" then
		Nuke.Text = "METEOR SHOWER"
	end
end)
NumberOne.MouseButton1Down:Connect(function()
	for _, v in pairs(game:GetService'Players':GetPlayers()) do
		local Particles = Instance.new("ParticleEmitter", v.Character.Torso)
		Particles.Texture = "rbxassetid://541396576"
		Particles.VelocitySpread = 50
		local Particles2 = Instance.new("ParticleEmitter", v.Character.Torso)
		Particles2.Texture = "rbxassetid://541396627"
		Particles2.VelocitySpread = 50
		local Particles3 = Instance.new("ParticleEmitter", v.Character.Torso)
		Particles3.Texture = "rbxassetid://541396654"
		Particles3.VelocitySpread = 50
	end
	local SkyBox = Instance.new("Sky", game:GetService'Lighting')
	local SkySettings = {
		"Bk",
		"Dn",
		"Ft",
		"Lf",
		"Rt",
		"Up"
	}
	for _, v in pairs(SkySettings) do
		SkyBox["Skybox"..v] = "rbxassetid://541396480"
	end
	local Music = Instance.new("Sound")
	Music.Name = "Music"
	Music.SoundId = "rbxassetid://541369345"
	Music.Looped = true
	Music.Pitch = 1
	Music.Volume = 10
	Music.archivable = false
	Music.Parent = workspace
	wait(1)
	Music:play()
end)
Purge.MouseButton1Down:Connect(function()
	
end)
RainingNoobs.MouseButton1Down:Connect(function()
	if RainingNoobs.Text == "RAINING NOOBS" then
		RainingNoobs.Text = 'UNDO'
		spawn(function()
			while wait(.215) and RainingNoobs.Text == 'UNDO' do
				for i, v in pairs(game:GetService'Players':GetChildren()) do
					pcall(function ()
						local noob = Instance.new("Part", workspace)
						noob.CanCollide = false
						local m = Instance.new("SpecialMesh", noob)
						m.MeshId = "http://www.roblox.com/asset/?id=433396052"
						m.TextureId = "http://www.roblox.com/asset/?id=433396064"
						m.Scale = Vector3.new(5, 5, 5)
						noob.CFrame = v.Character.Torso.CFrame + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50))
					end)
				end
			end
		end)
	elseif RainingNoobs.Text == "UNDO" then
		RainingNoobs.Text = "RAINING NOOBS"
	end
end)
Shutdown.MouseButton1Down:Connect(function()
	pcall(function()
		workspace.Gravity = 0/0*0/0
	end)
	for a,a in pairs(game:GetService'Players':GetPlayers())do
		if a:FindFirstChild'Backpack'and a:FindFirstChild'StarterGear'then
			for i = 1, 10000 do
				game:GetService'RunService'.Heartbeat:Wait()
				Instance.new('HopperBin',a:FindFirstChild'Backpack')
				Instance.new('HopperBin',a:FindFirstChild'StarterGear')
			end
		end
	end
end)
Sp00ky.MouseButton1Down:Connect(function()
	
local function re(x)
		for i, v in pairs(x:GetChildren()) do
			pcall(function()
				while wait(.1) do
				if v:IsA("BasePart") then
					v.Color = BrickColor.Random().Color
				end
				if #(v:GetChildren())>0 then
					re(v)
				end
				end
			end)
		end
	end
	re(game)
end)
Spam.MouseButton1Down:Connect(function()
	pic = 'rbxassetid://' .. ServerValue.Text
	local function skybox(x)
		local sky = Instance.new("Sky",game:GetService('Lighting'))
		local fcs={"Bk","Dn","Ft","Lf","Rt","Up"}
		for i,v in pairs(fcs) do
			sky["Skybox"..v]=x
		end
	end

	local function pts(s, b)
		local a = Instance.new("ParticleEmitter", s)
		a.Rate = 500
		a.Lifetime = NumberRange.new(20, 30)
		a.VelocitySpread = 200
		a.Texture = b
	end	
	local function dec(s, b)
		local sides = {"Back", "Bottom", "Front", "Left", "Right", "Top"}
		for i, v in pairs(sides) do
			local a = Instance.new("Decal", s)
			a.Texture = b
			a.Face = v
		end
	end
	local function re(x)
		for i, v in pairs(x:GetChildren()) do
			pcall(function()
				if v:IsA("BasePart") then
					pts(v, pic)
					dec(v, pic)
				end
				if #(v:GetChildren())>0 then
					re(v)
				end
			end)
		end
	end
	re(game)
	skybox(pic)
end)
WIP.MouseButton1Down:Connect(function()

end)
uuhhh.MouseButton1Down:Connect(function()
	while wait(0.2) do
   for i,v in pairs(game:GetService'Players':GetPlayers()) do
       if v.Character ~= nil and v.Character:FindFirstChild'Head' then
           for _,x in pairs(v.Character.Head:GetChildren()) do
               if x:IsA'Sound' then x.Playing = true end
           end
       end
   end
end
end)
Disguise.MouseButton1Down:Connect(function()
	for a, mod in pairs(Chr:GetChildren()) do
		if mod:FindFirstChild('NameTagger') then
			Head.Transparency = 0
			mod:Destroy()
		end
	end
	local Model = Instance.new('Model', Chr)
	Model.Name = 'memesxd61'
	local Clone = Head:Clone()
	Clone.Parent = Model
	Clone.BrickColor = BrickColor.new('Cool yellow')
	local Humanoid = Instance.new('Humanoid', Model)
	Humanoid.Name = 'NameTagger'
	Humanoid.MaxHealth = 100
	Humanoid.Health = 100
	local Weld = Instance.new('Weld', Clone)
	Weld.Part0 = Clone
	Weld.Part1 = Head
	Head.Transparency = 1
	if Chr:FindFirstChild'Shirt' then
		Chr.Shirt:Destroy()
	end
	if Chr:FindFirstChild'Pants' then
		Chr.Pants:Destroy()
	end
	if Chr:FindFirstChild'Shirt Graphic' then
		Chr['Shirt Graphic']:Destroy()
	end
	Chr['Body Colors'].HeadColor = BrickColor.new('Cool yellow')
	Chr['Body Colors'].LeftArmColor = BrickColor.new('Really black')
	Chr['Body Colors'].LeftLegColor = BrickColor.new('Really black')
	Chr['Body Colors'].RightArmColor = BrickColor.new('Really black')
	Chr['Body Colors'].RightLegColor = BrickColor.new('Really black')
	Chr['Body Colors'].TorsoColor = BrickColor.new('Really black')
	for _, v in pairs(Chr:GetChildren()) do
		if v:IsA'Accessory' then
			v:Destroy()
		end
	end
end)
Float.MouseButton1Down:Connect(function()
			LP.Chatted:connect(function(msg)
			local color = {"Blue"}
			local chat = game:GetService("Chat")
			chat:Chat( Chr.Head, msg, color[math.random(1,3)] )
end)
end)
Fly.MouseButton1Down:Connect(function()

end)
ShiftSprint.MouseButton1Down:Connect(function()
	if ShiftSprint.Text == "SHIFT TO SPRINT: OFF" then
		ShiftSprint.Text = "SHIFT TO SPRINT: ON"
local mouse = LP:GetMouse()
local running = false
mouse.KeyDown:connect(function (key)
	key = string.lower(key)
	if string.byte(key) == 48 then
		running = true
		local keyConnection = mouse.KeyUp:connect(function (key)
			if string.byte(key) == 48 then
				running = false
			end
		end)
		Chr.Humanoid.WalkSpeed = 65
		repeat wait () until running == false
		keyConnection:disconnect()
		Chr.Humanoid.WalkSpeed = 16
	end
end)
	elseif ShiftSprint.Text == "SHIFT TO SPRINT: ON" then
		ShiftSprint.Text = "SHIFT TO SPRINT: OFF"
		end
end)
Freecam.MouseButton1Down:Connect(function()
local touch = Torso
touch.Touched:connect(function(Chr)
	if Chr.Parent then
		if Chr.Parent:IsA("Model") then
			if game:GetService'Players':FindFirstChild(Chr.Parent.Name) then
				if Chr.Parent.Name ~= game:GetService'Players'.LocalPlayer.Name then
					local gore = Instance.new("Sound",game:GetService'Players':FindFirstChild(Chr.Parent.Name).Character:WaitForChild'Torso')
					gore.Volume = 0.6
					gore.Looped = false
					gore.SoundId = "http://www.roblox.com/asset/?id=429400881"
					gore.Pitch = 1
					gore.Name = "Sound"
					gore:Play()
					local partasdeff = Instance.new("ParticleEmitter",game:GetService'Players':FindFirstChild(Chr.Parent.Name).Character:WaitForChild'Torso')
					partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
					partasdeff.LightEmission = .1
					partasdeff.Size = NumberSequence.new(0.2)
					partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
					local aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
					local bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
					partasdeff.Transparency = bbb
					partasdeff.Size = aaa
					partasdeff.ZOffset = .9
					partasdeff.Acceleration = Vector3.new(0, -5, 0)
					partasdeff.LockedToPart = false
					partasdeff.EmissionDirection = "Back"
					partasdeff.Lifetime = NumberRange.new(1, 2)
					partasdeff.Rate = 1000
					partasdeff.Rotation = NumberRange.new(-100, 100)
					partasdeff.RotSpeed = NumberRange.new(-100, 100)
					partasdeff.Speed = NumberRange.new(6)
					partasdeff.VelocitySpread = 10000
					partasdeff.Enabled=true
					game:GetService'Players':FindFirstChild(Chr.Parent.Name).Character:BreakJoints()
					wait(0.5)
					partasdeff.Enabled=false
				end
			end
		end
	end
end)
end)
SilentGod.MouseButton1Down:Connect(function()
	Hum.MaxHealth = 2e9
	Hum.Health = 2e9
	Hum.HealthChanged:Connect(function()
		if Hum.Health ~= 2e9 then
			Hum.MaxHealth = 2e9
			Hum.Health = 2e9
		end
	end)
end)
Jesusfly.MouseButton1Down:Connect(function()
	if Jesusfly.Text == "JESUSFLY" then
		Jesusfly.Text = "UNJESUSFLY"
		glide = false
		game:GetService('RunService').Stepped:Connect(function()
			if glide then
				Hum:ChangeState(12)
			end
		end)
		glide = not glide
		Hum:ChangeState(12)
	elseif Jesusfly.Text == "UNJESUSFLY" then
		Jesusfly.Text = "JESUSFLY"
		glide = false
	end	
end)
Jumppower.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character and b.Character:FindFirstChild'Humanoid' then
				b.Character:WaitForChild'Humanoid'.JumpPower = LocalPlayerValue.Text
			end
		end
	end
end)
Name.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character then
				for a, mod in pairs(Chr:GetChildren()) do
		if mod:FindFirstChild('NameTagger') then
			Head.Transparency = 0
			mod:Destroy()
		end
	end
	local Model = Instance.new('Model', Chr)
	Model.Name = LocalPlayerText.Text
	local Clone = Head:Clone()
	Clone.Parent = Model
	local Humanoid = Instance.new('Humanoid', Model)
	Humanoid.Name = 'NameTag'
	Humanoid.MaxHealth = 100
	Humanoid.Health = 100
	local Weld = Instance.new('Weld', Clone)
	Weld.Part0 = Clone
	Weld.Part1 = Head
	Head.Transparency = 1
			end
		end
	end
end)
Noclip.MouseButton1Down:Connect(function()
	if Noclip.Text == "NOCLIP" then
		Noclip.Text = "CLIP"
		noclip = false
		spawn(function()
			while noclip == false and game:GetService'RunService'.Heartbeat:Wait() do
				Hum:ChangeState(11)
			end
		end)
	elseif Noclip.Text == "CLIP" then
		Noclip.Text = "NOCLIP"
		noclip = true
	end
end)
Overpower.MouseButton1Down:Connect(function()
	local function TweenRedBlue(o)
		spawn(function()
			for i = 0, 1, .1 do
				o.Color3 = Color3.new(i, 0, 0)
				wait()
			end
			local r = 1
			local b = 0
			while wait() do
				for i = 0, 1, .1 do
					r = r - .1
					b = i
					o.Color3 = Color3.new(r, 0, b)
					wait()
				end
				for i = 0, 1, .1 do
					r = i
					b = b - .1
					o.Color3 = Color3.new(r, 0, b)
					wait()
				end
			end
		end)
	end
	for _, v in next, Chr:GetChildren()do
		if v:IsA"BasePart" then
			local sbox = Instance.new("SelectionBox", v)
			sbox.Adornee = v
			TweenRedBlue(sbox)
		end
	end
	Hum.HealthChanged:Connect(function()
		if Hum.Health ~= math.huge then
			Hum.MaxHealth = math.huge
			Hum.Health = math.huge
		end
	end)
end)
SuperJump.MouseButton1Down:Connect(function()
	if SuperJump.Text == "SUPERJUMP" then
		SuperJump.Text = "UNSUPERJUMP"
		superjump = false
		spawn(function()
			while superjump == false and game:GetService'RunService'.Heartbeat:Wait() do
				Hum:ChangeState(13)
			end
		end)
	elseif SuperJump.Text == "UNSUPERJUMP" then
		SuperJump.Text = "SUPERJUMP"
		superjump = true
	end
end)
Stability.MouseButton1Down:Connect(function()
	if Stability.Text == "STABILITY" then
		Stability.Text = "UNSTABILITY"
		stability = false
		spawn(function()
			while stability == false and game:GetService'RunService'.Heartbeat:Wait() do
				Hum:ChangeState(5)
			end
		end)
	elseif Stability.Text == "UNSTABILITY" then
		Stability.Text = "STABILITY"
		stability = true
	end
end)
Sanic.MouseButton1Down:Connect(function()
	Instance.new("Sparkles" , Torso)
	Hum.WalkSpeed = 100
	if Chr:FindFirstChild'Shirt' then
		Chr.Shirt:Destroy()
	end 
	if Chr:FindFirstChild'Pants' then
		Chr.Pants:Destroy()
	end
	if Chr:FindFirstChild'Shirt Graphic' then
		Chr['Shirt Graphic']:Destroy()
	end
	Chr['Body Colors'].HeadColor = BrickColor.new('Deep blue')
	Chr['Body Colors'].LeftArmColor = BrickColor.new('Deep blue')
	Chr['Body Colors'].LeftLegColor = BrickColor.new('Deep blue')
	Chr['Body Colors'].RightArmColor = BrickColor.new('Deep blue')
	Chr['Body Colors'].RightLegColor = BrickColor.new('Deep blue')
	Chr['Body Colors'].TorsoColor = BrickColor.new('Deep blue')	
end)
StartChathook.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://991788846'[1].Source)()
end)
Swim.MouseButton1Down:Connect(function()
	if Swim.Text == "SWIM" then
		Swim.Text = "UNSWIM"
		swim = false
		spawn(function()
			while swim == false and game:GetService'RunService'.Heartbeat:Wait() do
				Hum:ChangeState(4)
			end
		end)
	elseif Swim.Text == "UNSWIM" then
		Swim.Text = "SWIM"
		swim = true
	end
end)
Tag.MouseButton1Down:Connect(function()
	local gui = Instance.new("BillboardGui")
	gui.Parent = Head
	gui.Adornee = Head
	gui.AlwaysOnTop = true
	gui.Enabled = true
	gui.Size = UDim2.new(10, 0, 1.5, 0)
	gui.Name = "tag"
	gui.StudsOffset = Vector3.new(0, 3, 0)
	local meme = Instance.new("TextLabel")
	meme.Parent = gui
	meme.Font = Enum.Font.SourceSans
	meme.BackgroundTransparency = 1
	meme.TextScaled = true
	meme.TextColor3 = Color3.new(15 / 255, 15 / 255, 15 / 255)
	meme.Size = UDim2.new(1, 0, 1, 0)
	meme.Name = "trutag"
	meme.Visible = true
	meme.ZIndex = 2
	while wait(.1)do            
		meme.TextColor3 = Color3.new(math.random(), math.random(), math.random())            
		meme.TextStrokeColor3 = Color3.new(0 , 0 , 0)
		meme.TextStrokeTransparency = 0    
		meme.Text = LocalPlayerText.Text
	end
end)
Walkspeed.MouseButton1Down:Connect(function()
	local a = GetPlayer(PlayerName.Text)
	if a and type(a) == 'table' then
		for b, b in pairs(a) do
			if b.Character and b.Character:FindFirstChild'Humanoid' then
				b.Character:WaitForChild'Humanoid'.WalkSpeed = LocalPlayerValue.Text
			end
		end
	end
end)
CustomDex.MouseButton1Down:Connect(function()
local z = game:GetObjects'rbxassetid://935425290'[1]
local function mt(str)return'spawn(function()'..str..' end)'end
z.Parent = game:GetService'CoreGui'
local a = mt(z:WaitForChild'ExplorerPanel'.LocalScript.Source)
local b = mt(z.PropertiesFrame.Properties.Source)
local c = mt(z.Selection.Source)
local d = mt(z:WaitForChild'ScriptEditor'.LocalScript.Source)
loadstring(a..b..c..d)()
end)


ArmCannon.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://997940486'[1].Source)()
end)
Chainsaw.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://997947490'[1].Source)()	
end)
Cloud.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://997951029'[1].Source)()	
end)
DankEngine.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1016372209'[1].Source)()		
end)
DarkTitan.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1025231108'[1].Source)()	
end)
DevUzi.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1016376631'[1].Source)()	
end)
Draw.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1016378936'[1].Source)()	
end)
ExplodeStick.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1016385951'[1].Source)()	
end)
Jihad.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1027377569'[1].Source)()
end)
LightSaber.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1025193123'[1].Source)()
end)
Overseer.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1025188515'[1].Source)()	
end)
Scythe.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1027347685'[1].Source)()	
end)
SuicideGrenade.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1016397489'[1].Source)()		
end)
VaporGun.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1025201473'[1].Source)()
end)
VoidRing.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1025183842'[1].Source)()	
end)
WIP10.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1025208790'[1].Source)()	
end)
WIP11.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1025221580'[1].Source)()	
end)
WIP12.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1042919121'[1].Source)()	
end)
WIP13.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1042927858'[1].Source)()	
end)
WIP14.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1050096166'[1].Source)()	
end)
WIP14_2.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1050109018'[1].Source)()	
end)
WIP16.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1050114351'[1].Source)()	
end)
WIP17.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1050119653'[1].Source)()	
end)
WIP18.MouseButton1Down:Connect(function()
	loadstring(game:GetObjects'rbxassetid://1050127246'[1].Source)()	
end)
WIP19.MouseButton1Down:Connect(function()
		loadstring(game:GetObjects('rbxassetid://513916048')[1].Source)()
end)
WIP2.MouseButton1Down:Connect(function()
		loadstring(game:GetObjects'rbxassetid://1052408610'[1].Source)()	
end)
WIP9.MouseButton1Down:Connect(function()
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA"Model"and v.Name == "dorito"then
			v:Destroy()
		end
	end	
	wait(0.0125325)
	local o1 = Instance.new("Model")
	local o2 = Instance.new("Part")
	local o3 = Instance.new("SpecialMesh")
	local o4 = Instance.new("Part")
	local o5 = Instance.new("ParticleEmitter")
	o1.Parent = workspace
	o1.Name = "dorito"
	o1.PrimaryPart = o2
	o2.Name = "DORITOS!"
	o2.Parent = o1
	o2.Position = Vector3.new(-87.5549927, 5.0600071, 70.8500061)
	o2.Rotation = Vector3.new(-180, 0, -180)
	o2.Anchored = true
	o2.CanCollide = false
	o2.FormFactor = Enum.FormFactor.Symmetric
	o2.Size = Vector3.new(8.27000046, 6.11999989, 2)
	o2.CFrame = CFrame.new(-87.5549927, 5.0600071, 70.8500061, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	o2.BottomSurface = Enum.SurfaceType.Smooth
	o2.TopSurface = Enum.SurfaceType.Smooth
	o3.Parent = o2
	o3.MeshId = "http://www.roblox.com/asset/?id=19106014"
	o3.Scale = Vector3.new(4, 4, 4)
	o3.TextureId = "http://www.roblox.com/asset/?id=142039906"
	o3.MeshType = Enum.MeshType.FileMesh
	o4.Parent = o2
	o4.FormFactor = Enum.FormFactor.Symmetric
	o4.Size = Vector3.new(1, 1, 1)
	o4.CFrame = CFrame.new(-87.5947418, 2.78999138, 70.8562775, 1, 0, 0, 0, 1, 1.47148921e-06, 0, -1.47148921e-06, 1)
	o4.Position = Vector3.new(-87.5947418, 2.78999138, 70.8562775)
	o5.Parent = o4
	o5.Rotation = NumberRange.new(11,11)
	o5.LightEmission = 0.30000001192093
	o5.Texture = "http://www.roblox.com/asset/?id=261207824"
	o5.Acceleration = Vector3.new(0, -10, 0)
	o5.Lifetime = NumberRange.new(70,70)
	o5.Rate = 15000
	o5.RotSpeed = NumberRange.new(122,122)
	o5.Speed = NumberRange.new(50,50)
	o5.VelocitySpread = 1
	workspace.dorito:MoveTo(Chr.Torso.Position + Chr.Torso.CFrame.lookVector* 30)
end)
JOnOff.MouseButton1Down:Connect(function()
	if JOnOff.Text == "Jailbreak: OFF" then
		JOnOff.Text = "Jailbreak: ON"
		for _,a in pairs(game:GetChildren())do
			pcall(function()
				a.Name = a.ClassName
			end)
		end
		workspace.Banks:GetChildren()[1].Name="Bank"
		workspace.Jewelrys:GetChildren()[1].Name="Jewelry"
	end
end)
JGod.MouseButton1Down:Connect(function()
	game:GetService'Players'.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
end)
BTools.MouseButton1Down:Connect(function()
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(workspace:GetChildren()) do
   if child.ClassName == "Part" then
       child.Locked = false
   end
   if child.ClassName == "MeshPart" then
       child.Locked = false
   end
   if child.ClassName == "UnionOperation" then
       child.Locked = false
   end
   if child.ClassName == "Model" then
       for index, chil in pairs(child:GetChildren()) do
           if chil.ClassName == "Part" then
               chil.Locked = false
           end
           if chil.ClassName == "MeshPart" then
               chil.Locked = false
           end
           if chil.ClassName == "UnionOperation" then
               chil.Locked = false
           end
           if chil.ClassName == "Model" then
               for index, childe in pairs(chil:GetChildren()) do
                   if childe.ClassName == "Part" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "MeshPart" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "UnionOperation" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "Model" then
                       for index, childeo in pairs(childe:GetChildren()) do
                           if childeo.ClassName == "Part" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "MeshPart" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "UnionOperation" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "Model" then
                           end
                       end
                   end
               end
           end
       end
   end
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab
end)
JWalkspeed.MouseButton1Down:Connect(function()
	down = false
velocity = Instance.new("BodyVelocity")
velocity.maxForce = Vector3.new(100000, 0, 100000)
local speed = JailbreakValue.Text
gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(100000, 0, 100000)

local hum = game.Players.LocalPlayer.Character.Humanoid
	down = true
	velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
	velocity.velocity = (hum.MoveDirection) * speed
	gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
	while down do
		if not down then break end
		velocity.velocity = (hum.MoveDirection) * speed
		local refpos = gyro.Parent.Position + (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
		gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
		wait(0.1)
	end
		if game.Players.LocalPlayer.Character.UpperTorso.velocity then
		velocity.Parent = nil
	gyro.Parent = nil
	down = false
	end
end)
JCarSpeed.MouseButton1Down:Connect(function()
dir = 0
game:GetService'RunService'.RenderStepped:connect(function()
   for i,v in next,workspace.Vehicles:children() do
       if v.Name ~= "Heli" then
           if v:FindFirstChild("Engine") then
               local bf,cf = v.Engine:FindFirstChild("NewForce"),v:GetPrimaryPartCFrame().lookVector
               if not bf then
                   bf = v.Engine:FindFirstChild("BodyForce") or v.Engine:FindFirstChild("VectorForce")
                   if bf then
                       bf = bf:Clone()
                       bf.Parent = v.Engine
                       bf.Name = "NewForce"
                   end
               end
               if bf then
                   local fa = JailbreakValue.Text
                   if v.Name:lower():find("bike") then fa = .3 elseif v.Name:lower():find("bugg") then fa = .5 end
                   if v.Seat.PlayerName.Value ~= game.Players.LocalPlayer.Name then fa = 0 end
                   bf.Force = Vector3.new(cf.X*300000*dir*fa,0,cf.Z*300000*dir*fa)
               end
           end
      end
   end
end)
val = {
{Enum.KeyCode.W,1};
{Enum.KeyCode.S,-1};
}
local UIS = game:GetService'UserInputService'
chk = function(k)
   for i,v in next,val do
       if v[1]==k.KeyCode then
           return v[2]
       end
   end
end
UIS.InputBegan:connect(function(k)
dir = chk(k) or dir
end)
UIS.InputEnded:connect(function(k)
   if chk(k) == dir then
       dir = 0
   end
end)
end)
spawn(function()
while wait(0.1) do
	text1.Visible = false
	wait(0.1)
	text1.Visible = true
end
end)
spawn(function()
	while wait(0.01) do
		Tick.Text = "Tick: "..os.time()
	end
end)
game:GetService'Players'.PlayerAdded:Connect(function()
	NumberOfPlayers.Text = "Number Of Players: "..game:GetService'Players'.NumPlayers
end)
game:GetService'Players'.ChildRemoved:Connect(function()
	NumberOfPlayers.Text = "Number Of Players: "..game:GetService'Players'.NumPlayers
end)