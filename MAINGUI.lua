print("Creating GUI...")

local skryptec_hub = Instance.new("ScreenGui")
local MenuFrame = Instance.new("Frame")
local BG = Instance.new("ImageLabel")
local Title = Instance.new("ImageLabel")
local TitleFrame = Instance.new("Frame")
local Deadzone = Instance.new("TextButton")
local Apocalypse = Instance.new("TextButton")
local Lumber = Instance.new("TextButton")
local ArcaneAdventures = Instance.new("TextButton")
local DeadWinter = Instance.new("TextButton")
local DeadMist = Instance.new("TextButton")
local ProjectPokemon = Instance.new("TextButton")
local Urbis = Instance.new("TextButton")
local BGShadow = Instance.new("Frame")
local DeadzoneHide = Instance.new("TextButton")
local Hide = Instance.new("TextButton")
local ApocalypseHide = Instance.new("TextButton")
local DeadMistHide = Instance.new("TextButton")
local ShowCredits = Instance.new("TextButton")
local ExitCredits = Instance.new("TextButton")
local LumberHide = Instance.new("TextButton")
local UrbisHide = Instance.new("TextButton")
local DeadzoneBottomFrame = Instance.new("Frame")
local SetType = Instance.new("TextButton")
local BGShadow_2 = Instance.new("Frame")
local DZRType = Instance.new("TextBox")
local DZRValue = Instance.new("TextBox")
local SetValue = Instance.new("TextButton")
local DeadMistSideFrame = Instance.new("ScrollingFrame")
local BGShadow_3 = Instance.new("Frame")
local SpawnItem = Instance.new("TextButton")
local ServerMessage = Instance.new("TextButton")
local KillPlayer = Instance.new("TextButton")
local KickPlayer = Instance.new("TextButton")
local KillTeleport = Instance.new("TextButton")
local TeleportVehicle = Instance.new("TextButton")
local Hidden = Instance.new("Frame")
local Show = Instance.new("TextButton")
local Hide_2 = Instance.new("TextButton")
local ApocBottomFrame = Instance.new("Frame")
local SetType_2 = Instance.new("TextButton")
local BGShadow_4 = Instance.new("Frame")
local ApocType = Instance.new("TextBox")
local ApocValue = Instance.new("TextBox")
local SetValue_2 = Instance.new("TextButton")
local OpenExtra = Instance.new("TextButton")
local CloseExtra = Instance.new("TextButton")
local ApocSideFrame = Instance.new("ScrollingFrame")
local BGShadow_5 = Instance.new("Frame")
local TeleportToMe = Instance.new("TextButton")
local KillAll = Instance.new("TextButton")
local TeleportMeTo = Instance.new("TextButton")
local TeleportAll = Instance.new("TextButton")
local SpawnItem_2 = Instance.new("TextButton")
local ClearFog = Instance.new("TextButton")
local TeleportVehicle_2 = Instance.new("TextButton")
local UnlimitedHunger = Instance.new("TextButton")
local UnlimitedThirst = Instance.new("TextButton")
local PlayerESP = Instance.new("TextButton")
local Godmode = Instance.new("TextButton")
local SpawnDeck = Instance.new("TextButton")
local SpamText = Instance.new("TextButton")
local ItemESP = Instance.new("TextButton")
local TeleportCorpse = Instance.new("TextButton")
local C4Walk = Instance.new("TextButton")
local AllBadges = Instance.new("TextButton")
local ZombieKills = Instance.new("TextButton")
local PlayerKills = Instance.new("TextButton")
local DaysSurvived = Instance.new("TextButton")
local PlayMusic = Instance.new("TextButton")
local KillPlayer_2 = Instance.new("TextButton")
local LoopKillAll = Instance.new("TextButton")
local LoopKillPlayer = Instance.new("TextButton")
local VehicleGod = Instance.new("TextButton")
local AllBadgesAll = Instance.new("TextButton")
local VehicleSpeed = Instance.new("TextButton")
local FALKit = Instance.new("TextButton")
local GKKit = Instance.new("TextButton")
local HKKit = Instance.new("TextButton")
local PPSHKit = Instance.new("TextButton")
local AK12Kit = Instance.new("TextButton")
local G3Kit = Instance.new("TextButton")
local BuildingKit = Instance.new("TextButton")
local Accuracy = Instance.new("TextButton")
local KillZombies = Instance.new("TextButton")
local TeleportCrates = Instance.new("TextButton")
local Spectate = Instance.new("TextButton")
local GiveSkin = Instance.new("TextButton")
local GiveClothes = Instance.new("TextButton")
local KickPlayer_2 = Instance.new("TextButton")
local KickOthers = Instance.new("TextButton")
local DeleteMap = Instance.new("TextButton")
local DespawnLoot = Instance.new("TextButton")
local DeadMistBottomFrame = Instance.new("Frame")
local SetType_3 = Instance.new("TextButton")
local BGShadow_6 = Instance.new("Frame")
local DMType = Instance.new("TextBox")
local DMValue = Instance.new("TextBox")
local SetValue_3 = Instance.new("TextButton")
local DeadzoneSideFrame = Instance.new("ScrollingFrame")
local BGShadow_7 = Instance.new("Frame")
local GodMode = Instance.new("TextButton")
local Pets = Instance.new("TextButton")
local Wings = Instance.new("TextButton")
local RestoreAll = Instance.new("TextButton")
local ItemSpawn = Instance.new("TextButton")
local VehicleSpawn = Instance.new("TextButton")
local Reputation = Instance.new("TextButton")
local PlayerKills_2 = Instance.new("TextButton")
local ZombieKills_2 = Instance.new("TextButton")
local BossKills = Instance.new("TextButton")
local KillDiablo = Instance.new("TextButton")
local KillBaal = Instance.new("TextButton")
local SpawnDiablo = Instance.new("TextButton")
local SpawnBaal = Instance.new("TextButton")
local Cash = Instance.new("TextButton")
local GC = Instance.new("TextButton")
local EXP = Instance.new("TextButton")
local Level = Instance.new("TextButton")
local SoulCredits = Instance.new("TextButton")
local StatPoints = Instance.new("TextButton")
local Strength = Instance.new("TextButton")
local Defence = Instance.new("TextButton")
local Safezone = Instance.new("TextButton")
local CreditFrame = Instance.new("Frame")
local BGShadow_8 = Instance.new("Frame")
local Credits = Instance.new("ImageLabel")
local LT2BottomFrame = Instance.new("Frame")
local SetType_4 = Instance.new("TextButton")
local BGShadow_9 = Instance.new("Frame")
local LT2Type = Instance.new("TextBox")
local LT2Value = Instance.new("TextBox")
local SetValue_4 = Instance.new("TextButton")
local LT2SideFrame = Instance.new("ScrollingFrame")
local BGShadow_10 = Instance.new("Frame")
local AxePower = Instance.new("TextButton")
local FreeLand = Instance.new("TextButton")
local WhitelistAll = Instance.new("TextButton")
local TeleportTool = Instance.new("TextButton")
local UrbisSideFrame = Instance.new("ScrollingFrame")
local BGShadow_11 = Instance.new("Frame")
local GiveMoney = Instance.new("TextButton")
local UrbisBottomFrame = Instance.new("Frame")
local SetType_5 = Instance.new("TextButton")
local BGShadow_12 = Instance.new("Frame")
local UrbisType = Instance.new("TextBox")
local UrbisValue = Instance.new("TextBox")
local SetValue_5 = Instance.new("TextButton")
local ApocSkinFrame = Instance.new("Frame")
local BGShadow_13 = Instance.new("Frame")
local ApocSColor = Instance.new("TextBox")
local ApocSMaterial = Instance.new("TextBox")
local SetMaterial = Instance.new("TextButton")
local SetColor = Instance.new("TextButton")
local ApocSColor2 = Instance.new("TextBox")
local SetColor2 = Instance.new("TextButton")
local SetMaterial2 = Instance.new("TextButton")
local ApocSMaterial2 = Instance.new("TextBox")
local ApocClothesFrame = Instance.new("Frame")
local BGShadow_14 = Instance.new("Frame")
local ApocExtra1 = Instance.new("TextBox")
local ApocExtra2 = Instance.new("TextBox")
local SetPants = Instance.new("TextButton")
local SetShirt = Instance.new("TextButton")

skryptec_hub.Name = "skryptec_hub"
skryptec_hub.Parent = game.CoreGui

MenuFrame.Name = "MenuFrame"
MenuFrame.Parent = skryptec_hub
MenuFrame.Active = true
MenuFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MenuFrame.BorderColor3 = Color3.new(0, 0, 0)
MenuFrame.Draggable = true
MenuFrame.Position = UDim2.new(0.5, -250, 0.5, -250)
MenuFrame.Size = UDim2.new(0, 500, 0, 300)
MenuFrame.Visible = false
MenuFrame.ZIndex = 2

BG.Name = "BG"
BG.Parent = MenuFrame
BG.Active = true
BG.BackgroundColor3 = Color3.new(1, 1, 1)
BG.BackgroundTransparency = 0.69999998807907
BG.Size = UDim2.new(0, 500, 0, 300)
BG.ZIndex = 3
BG.Image = "rbxassetid://482782378"
BG.ImageColor3 = Color3.new(0.172549, 0.172549, 0.172549)
BG.ImageTransparency = 0.30000001192093

Title.Name = "Title"
Title.Parent = MenuFrame
Title.Active = true
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, -30, 0, -165)
Title.Size = UDim2.new(0, 500, 0, 300)
Title.ZIndex = 4
Title.Image = "rbxassetid://482784098"
Title.ScaleType = Enum.ScaleType.Slice

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = MenuFrame
TitleFrame.Active = true
TitleFrame.BackgroundColor3 = Color3.new(0, 0, 0)
TitleFrame.BackgroundTransparency = 0.20000000298023
TitleFrame.BorderColor3 = Color3.new(0, 0, 0)
TitleFrame.Size = UDim2.new(0, 500, 0, 75)
TitleFrame.ZIndex = 2

Deadzone.Name = "Deadzone"
Deadzone.Parent = MenuFrame
Deadzone.BackgroundColor3 = Color3.new(0, 0, 0)
Deadzone.BorderColor3 = Color3.new(0, 0, 0)
Deadzone.Position = UDim2.new(0, 50, 0, 100)
Deadzone.Size = UDim2.new(0, 150, 0, 35)
Deadzone.ZIndex = 5
Deadzone.Style = Enum.ButtonStyle.RobloxRoundButton
Deadzone.Font = Enum.Font.SourceSans
Deadzone.FontSize = Enum.FontSize.Size14
Deadzone.Text = "Deadzone Remade"

Apocalypse.Name = "Apocalypse"
Apocalypse.Parent = MenuFrame
Apocalypse.BackgroundColor3 = Color3.new(0, 0, 0)
Apocalypse.BorderColor3 = Color3.new(0, 0, 0)
Apocalypse.Position = UDim2.new(0, 300, 0, 100)
Apocalypse.Size = UDim2.new(0, 150, 0, 35)
Apocalypse.ZIndex = 5
Apocalypse.Style = Enum.ButtonStyle.RobloxRoundButton
Apocalypse.Font = Enum.Font.SourceSans
Apocalypse.FontSize = Enum.FontSize.Size14
Apocalypse.Text = "Apocalypse Rising"

Lumber.Name = "Lumber"
Lumber.Parent = MenuFrame
Lumber.BackgroundColor3 = Color3.new(0, 0, 0)
Lumber.BorderColor3 = Color3.new(0, 0, 0)
Lumber.Position = UDim2.new(0, 300, 0, 150)
Lumber.Size = UDim2.new(0, 150, 0, 35)
Lumber.ZIndex = 5
Lumber.Style = Enum.ButtonStyle.RobloxRoundButton
Lumber.Font = Enum.Font.SourceSans
Lumber.FontSize = Enum.FontSize.Size14
Lumber.Text = "Lumber Tycoon 2"

ArcaneAdventures.Name = "ArcaneAdventures"
ArcaneAdventures.Parent = MenuFrame
ArcaneAdventures.BackgroundColor3 = Color3.new(0, 0, 0)
ArcaneAdventures.BorderColor3 = Color3.new(0, 0, 0)
ArcaneAdventures.Position = UDim2.new(0, 300, 0, 250)
ArcaneAdventures.Size = UDim2.new(0, 150, 0, 35)
ArcaneAdventures.ZIndex = 5
ArcaneAdventures.Style = Enum.ButtonStyle.RobloxRoundButton
ArcaneAdventures.Font = Enum.Font.SourceSans
ArcaneAdventures.FontSize = Enum.FontSize.Size14
ArcaneAdventures.Text = "Arcane Adventures"

DeadWinter.Name = "DeadWinter"
DeadWinter.Parent = MenuFrame
DeadWinter.BackgroundColor3 = Color3.new(0, 0, 0)
DeadWinter.BorderColor3 = Color3.new(0, 0, 0)
DeadWinter.Position = UDim2.new(0, 300, 0, 200)
DeadWinter.Size = UDim2.new(0, 150, 0, 35)
DeadWinter.ZIndex = 5
DeadWinter.Style = Enum.ButtonStyle.RobloxRoundButton
DeadWinter.Font = Enum.Font.SourceSans
DeadWinter.FontSize = Enum.FontSize.Size14
DeadWinter.Text = "Dead Winter"

DeadMist.Name = "DeadMist"
DeadMist.Parent = MenuFrame
DeadMist.BackgroundColor3 = Color3.new(0, 0, 0)
DeadMist.BorderColor3 = Color3.new(0, 0, 0)
DeadMist.Position = UDim2.new(0, 50, 0, 150)
DeadMist.Size = UDim2.new(0, 150, 0, 35)
DeadMist.ZIndex = 5
DeadMist.Style = Enum.ButtonStyle.RobloxRoundButton
DeadMist.Font = Enum.Font.SourceSans
DeadMist.FontSize = Enum.FontSize.Size14
DeadMist.Text = "Dead Mist"

ProjectPokemon.Name = "ProjectPokemon"
ProjectPokemon.Parent = MenuFrame
ProjectPokemon.BackgroundColor3 = Color3.new(0, 0, 0)
ProjectPokemon.BorderColor3 = Color3.new(0, 0, 0)
ProjectPokemon.Position = UDim2.new(0, 50, 0, 250)
ProjectPokemon.Size = UDim2.new(0, 150, 0, 35)
ProjectPokemon.ZIndex = 5
ProjectPokemon.Style = Enum.ButtonStyle.RobloxRoundButton
ProjectPokemon.Font = Enum.Font.SourceSans
ProjectPokemon.FontSize = Enum.FontSize.Size14
ProjectPokemon.Text = "Project Pokemon"

Urbis.Name = "Urbis"
Urbis.Parent = MenuFrame
Urbis.BackgroundColor3 = Color3.new(0, 0, 0)
Urbis.BorderColor3 = Color3.new(0, 0, 0)
Urbis.Position = UDim2.new(0, 50, 0, 200)
Urbis.Size = UDim2.new(0, 150, 0, 35)
Urbis.ZIndex = 5
Urbis.Style = Enum.ButtonStyle.RobloxRoundButton
Urbis.Font = Enum.Font.SourceSans
Urbis.FontSize = Enum.FontSize.Size14
Urbis.Text = "Urbis"

BGShadow.Name = "BGShadow"
BGShadow.Parent = MenuFrame
BGShadow.Active = true
BGShadow.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow.BackgroundTransparency = 0.30000001192093
BGShadow.BorderColor3 = Color3.new(0, 0, 0)
BGShadow.Position = UDim2.new(0, 1, 0, 1)
BGShadow.Size = UDim2.new(0, 500, 0, 300)

DeadzoneHide.Name = "DeadzoneHide"
DeadzoneHide.Parent = MenuFrame
DeadzoneHide.BackgroundColor3 = Color3.new(0, 0, 0)
DeadzoneHide.BorderColor3 = Color3.new(0, 0, 0)
DeadzoneHide.Position = UDim2.new(0, 50, 0, 100)
DeadzoneHide.Size = UDim2.new(0, 150, 0, 35)
DeadzoneHide.Visible = false
DeadzoneHide.ZIndex = 5
DeadzoneHide.Style = Enum.ButtonStyle.RobloxRoundButton
DeadzoneHide.Font = Enum.Font.SourceSans
DeadzoneHide.FontSize = Enum.FontSize.Size14
DeadzoneHide.Text = "Deadzone Remade"

Hide.Name = "Hide"
Hide.Parent = MenuFrame
Hide.BackgroundColor3 = Color3.new(0, 0, 0)
Hide.BackgroundTransparency = 0.5
Hide.BorderColor3 = Color3.new(0, 0, 0)
Hide.Position = UDim2.new(0, 0, 0, 60)
Hide.Size = UDim2.new(0, 55, 0, 15)
Hide.ZIndex = 5
Hide.Font = Enum.Font.SourceSans
Hide.FontSize = Enum.FontSize.Size14
Hide.Text = "Hide"
Hide.TextColor3 = Color3.new(1, 1, 1)
Hide.TextStrokeTransparency = 0

ApocalypseHide.Name = "ApocalypseHide"
ApocalypseHide.Parent = MenuFrame
ApocalypseHide.BackgroundColor3 = Color3.new(0, 0, 0)
ApocalypseHide.BorderColor3 = Color3.new(0, 0, 0)
ApocalypseHide.Position = UDim2.new(0, 300, 0, 100)
ApocalypseHide.Size = UDim2.new(0, 150, 0, 35)
ApocalypseHide.Visible = false
ApocalypseHide.ZIndex = 5
ApocalypseHide.Style = Enum.ButtonStyle.RobloxRoundButton
ApocalypseHide.Font = Enum.Font.SourceSans
ApocalypseHide.FontSize = Enum.FontSize.Size14
ApocalypseHide.Text = "Apocalypse Rising"

DeadMistHide.Name = "DeadMistHide"
DeadMistHide.Parent = MenuFrame
DeadMistHide.BackgroundColor3 = Color3.new(0, 0, 0)
DeadMistHide.BorderColor3 = Color3.new(0, 0, 0)
DeadMistHide.Position = UDim2.new(0, 50, 0, 150)
DeadMistHide.Size = UDim2.new(0, 150, 0, 35)
DeadMistHide.Visible = false
DeadMistHide.ZIndex = 5
DeadMistHide.Style = Enum.ButtonStyle.RobloxRoundButton
DeadMistHide.Font = Enum.Font.SourceSans
DeadMistHide.FontSize = Enum.FontSize.Size14
DeadMistHide.Text = "Dead Mist"

ShowCredits.Name = "ShowCredits"
ShowCredits.Parent = MenuFrame
ShowCredits.BackgroundColor3 = Color3.new(0, 0, 0)
ShowCredits.BackgroundTransparency = 0.5
ShowCredits.BorderColor3 = Color3.new(0, 0, 0)
ShowCredits.Position = UDim2.new(0, 445, 0, 60)
ShowCredits.Size = UDim2.new(0, 55, 0, 15)
ShowCredits.ZIndex = 5
ShowCredits.Font = Enum.Font.SourceSans
ShowCredits.FontSize = Enum.FontSize.Size14
ShowCredits.Text = "Credits"
ShowCredits.TextColor3 = Color3.new(1, 1, 1)
ShowCredits.TextStrokeTransparency = 0

ExitCredits.Name = "ExitCredits"
ExitCredits.Parent = MenuFrame
ExitCredits.BackgroundColor3 = Color3.new(0, 0, 0)
ExitCredits.BackgroundTransparency = 0.5
ExitCredits.BorderColor3 = Color3.new(0, 0, 0)
ExitCredits.Position = UDim2.new(0, 445, 0, 60)
ExitCredits.Size = UDim2.new(0, 55, 0, 15)
ExitCredits.Visible = false
ExitCredits.ZIndex = 5
ExitCredits.Font = Enum.Font.SourceSans
ExitCredits.FontSize = Enum.FontSize.Size14
ExitCredits.Text = "Credits"
ExitCredits.TextColor3 = Color3.new(1, 1, 1)
ExitCredits.TextStrokeTransparency = 0

LumberHide.Name = "LumberHide"
LumberHide.Parent = MenuFrame
LumberHide.BackgroundColor3 = Color3.new(0, 0, 0)
LumberHide.BorderColor3 = Color3.new(0, 0, 0)
LumberHide.Position = UDim2.new(0, 300, 0, 150)
LumberHide.Size = UDim2.new(0, 150, 0, 35)
LumberHide.Visible = false
LumberHide.ZIndex = 5
LumberHide.Style = Enum.ButtonStyle.RobloxRoundButton
LumberHide.Font = Enum.Font.SourceSans
LumberHide.FontSize = Enum.FontSize.Size14
LumberHide.Text = "Lumber Tycoon 2"

UrbisHide.Name = "UrbisHide"
UrbisHide.Parent = MenuFrame
UrbisHide.BackgroundColor3 = Color3.new(0, 0, 0)
UrbisHide.BorderColor3 = Color3.new(0, 0, 0)
UrbisHide.Position = UDim2.new(0, 50, 0, 200)
UrbisHide.Size = UDim2.new(0, 150, 0, 35)
UrbisHide.Visible = false
UrbisHide.ZIndex = 5
UrbisHide.Style = Enum.ButtonStyle.RobloxRoundButton
UrbisHide.Font = Enum.Font.SourceSans
UrbisHide.FontSize = Enum.FontSize.Size14
UrbisHide.Text = "Urbis"

DeadzoneBottomFrame.Name = "DeadzoneBottomFrame"
DeadzoneBottomFrame.Parent = skryptec_hub
DeadzoneBottomFrame.Active = true
DeadzoneBottomFrame.BackgroundColor3 = Color3.new(1, 1, 1)
DeadzoneBottomFrame.BackgroundTransparency = 0.69999998807907
DeadzoneBottomFrame.BorderColor3 = Color3.new(0, 0, 0)
DeadzoneBottomFrame.Draggable = true
DeadzoneBottomFrame.Position = UDim2.new(0.5, -250, 0.5, 50)
DeadzoneBottomFrame.Size = UDim2.new(0, 500, 0, 50)
DeadzoneBottomFrame.Visible = false
DeadzoneBottomFrame.ZIndex = 2

SetType.Name = "SetType"
SetType.Parent = DeadzoneBottomFrame
SetType.BackgroundColor3 = Color3.new(0, 0, 0)
SetType.BorderColor3 = Color3.new(0, 0, 0)
SetType.Position = UDim2.new(0, 375, 0, 7)
SetType.Size = UDim2.new(0, 100, 0, 35)
SetType.ZIndex = 5
SetType.Style = Enum.ButtonStyle.RobloxRoundButton
SetType.Font = Enum.Font.SourceSans
SetType.FontSize = Enum.FontSize.Size14
SetType.Text = "Set Type"

BGShadow_2.Name = "BGShadow"
BGShadow_2.Parent = DeadzoneBottomFrame
BGShadow_2.Active = true
BGShadow_2.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_2.BackgroundTransparency = 0.30000001192093
BGShadow_2.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_2.BorderSizePixel = 0
BGShadow_2.Position = UDim2.new(0, 1, 0, 1)
BGShadow_2.Size = UDim2.new(0, 500, 0, 50)

DZRType.Name = "DZRType"
DZRType.Parent = DeadzoneBottomFrame
DZRType.BackgroundColor3 = Color3.new(0, 0, 0)
DZRType.BackgroundTransparency = 0.60000002384186
DZRType.Position = UDim2.new(0, 215, 0, 10)
DZRType.Size = UDim2.new(0, 150, 0, 30)
DZRType.ZIndex = 2
DZRType.Font = Enum.Font.SourceSans
DZRType.FontSize = Enum.FontSize.Size14
DZRType.Text = "Type"
DZRType.TextColor3 = Color3.new(1, 1, 1)

DZRValue.Name = "DZRValue"
DZRValue.Parent = DeadzoneBottomFrame
DZRValue.BackgroundColor3 = Color3.new(0, 0, 0)
DZRValue.BackgroundTransparency = 0.60000002384186
DZRValue.Position = UDim2.new(0, 35, 0, 10)
DZRValue.Size = UDim2.new(0, 50, 0, 30)
DZRValue.ZIndex = 2
DZRValue.Font = Enum.Font.SourceSans
DZRValue.FontSize = Enum.FontSize.Size14
DZRValue.Text = "0"
DZRValue.TextColor3 = Color3.new(1, 1, 1)

SetValue.Name = "SetValue"
SetValue.Parent = DeadzoneBottomFrame
SetValue.BackgroundColor3 = Color3.new(0, 0, 0)
SetValue.BorderColor3 = Color3.new(0, 0, 0)
SetValue.Position = UDim2.new(0, 95, 0, 7)
SetValue.Size = UDim2.new(0, 100, 0, 35)
SetValue.ZIndex = 5
SetValue.Style = Enum.ButtonStyle.RobloxRoundButton
SetValue.Font = Enum.Font.SourceSans
SetValue.FontSize = Enum.FontSize.Size14
SetValue.Text = "Set Value"

DeadMistSideFrame.Name = "DeadMistSideFrame"
DeadMistSideFrame.Parent = skryptec_hub
DeadMistSideFrame.Active = true
DeadMistSideFrame.BackgroundColor3 = Color3.new(1, 1, 1)
DeadMistSideFrame.BackgroundTransparency = 0.69999998807907
DeadMistSideFrame.BorderColor3 = Color3.new(0, 0, 0)
DeadMistSideFrame.Draggable = true
DeadMistSideFrame.Position = UDim2.new(0.5, 250, 0.5, -250)
DeadMistSideFrame.Size = UDim2.new(0, 150, 0, 300)
DeadMistSideFrame.Visible = false
DeadMistSideFrame.ZIndex = 2
DeadMistSideFrame.CanvasSize = UDim2.new(0, 0, 0, 1000)
DeadMistSideFrame.ScrollBarThickness = 8

BGShadow_3.Name = "BGShadow"
BGShadow_3.Parent = DeadMistSideFrame
BGShadow_3.Active = true
BGShadow_3.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_3.BackgroundTransparency = 0.30000001192093
BGShadow_3.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_3.BorderSizePixel = 0
BGShadow_3.Position = UDim2.new(0, 1, 0, 1)
BGShadow_3.Size = UDim2.new(0, 150, 0, 1000)

SpawnItem.Name = "SpawnItem"
SpawnItem.Parent = DeadMistSideFrame
SpawnItem.BackgroundColor3 = Color3.new(0, 0, 0)
SpawnItem.BorderColor3 = Color3.new(0, 0, 0)
SpawnItem.Position = UDim2.new(0, 5, 0, 10)
SpawnItem.Size = UDim2.new(0, 130, 0, 35)
SpawnItem.ZIndex = 5
SpawnItem.Style = Enum.ButtonStyle.RobloxRoundButton
SpawnItem.Font = Enum.Font.SourceSans
SpawnItem.FontSize = Enum.FontSize.Size14
SpawnItem.Text = "Spawn Item"

ServerMessage.Name = "ServerMessage"
ServerMessage.Parent = DeadMistSideFrame
ServerMessage.BackgroundColor3 = Color3.new(0, 0, 0)
ServerMessage.BorderColor3 = Color3.new(0, 0, 0)
ServerMessage.Position = UDim2.new(0, 5, 0, 50)
ServerMessage.Size = UDim2.new(0, 130, 0, 35)
ServerMessage.ZIndex = 5
ServerMessage.Style = Enum.ButtonStyle.RobloxRoundButton
ServerMessage.Font = Enum.Font.SourceSans
ServerMessage.FontSize = Enum.FontSize.Size14
ServerMessage.Text = "Server Message"

KillPlayer.Name = "KillPlayer"
KillPlayer.Parent = DeadMistSideFrame
KillPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
KillPlayer.BorderColor3 = Color3.new(0, 0, 0)
KillPlayer.Position = UDim2.new(0, 5, 0, 90)
KillPlayer.Size = UDim2.new(0, 130, 0, 35)
KillPlayer.ZIndex = 5
KillPlayer.Style = Enum.ButtonStyle.RobloxRoundButton
KillPlayer.Font = Enum.Font.SourceSans
KillPlayer.FontSize = Enum.FontSize.Size14
KillPlayer.Text = "Kill Player"

KickPlayer.Name = "KickPlayer"
KickPlayer.Parent = DeadMistSideFrame
KickPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
KickPlayer.BorderColor3 = Color3.new(0, 0, 0)
KickPlayer.Position = UDim2.new(0, 5, 0, 130)
KickPlayer.Size = UDim2.new(0, 130, 0, 35)
KickPlayer.ZIndex = 5
KickPlayer.Style = Enum.ButtonStyle.RobloxRoundButton
KickPlayer.Font = Enum.Font.SourceSans
KickPlayer.FontSize = Enum.FontSize.Size14
KickPlayer.Text = "Kick Player"

KillTeleport.Name = "KillTeleport"
KillTeleport.Parent = DeadMistSideFrame
KillTeleport.BackgroundColor3 = Color3.new(0, 0, 0)
KillTeleport.BorderColor3 = Color3.new(0, 0, 0)
KillTeleport.Position = UDim2.new(0, 5, 0, 170)
KillTeleport.Size = UDim2.new(0, 130, 0, 35)
KillTeleport.ZIndex = 5
KillTeleport.Style = Enum.ButtonStyle.RobloxRoundButton
KillTeleport.Font = Enum.Font.SourceSans
KillTeleport.FontSize = Enum.FontSize.Size14
KillTeleport.Text = "Kill & Teleport Player"

TeleportVehicle.Name = "TeleportVehicle"
TeleportVehicle.Parent = DeadMistSideFrame
TeleportVehicle.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportVehicle.BorderColor3 = Color3.new(0, 0, 0)
TeleportVehicle.Position = UDim2.new(0, 5, 0, 210)
TeleportVehicle.Size = UDim2.new(0, 130, 0, 35)
TeleportVehicle.ZIndex = 5
TeleportVehicle.Style = Enum.ButtonStyle.RobloxRoundButton
TeleportVehicle.Font = Enum.Font.SourceSans
TeleportVehicle.FontSize = Enum.FontSize.Size14
TeleportVehicle.Text = "Teleport Vehicle"

Hidden.Name = "Hidden"
Hidden.Parent = skryptec_hub
Hidden.BackgroundColor3 = Color3.new(0, 0, 0)
Hidden.BackgroundTransparency = 0.5
Hidden.Position = UDim2.new(0, 0, 0, 600)
Hidden.Size = UDim2.new(0, 80, 0, 40)

Show.Name = "Show"
Show.Parent = Hidden
Show.BackgroundColor3 = Color3.new(1, 1, 1)
Show.BackgroundTransparency = 1
Show.BorderColor3 = Color3.new(0, 0, 0)
Show.Size = UDim2.new(0, 80, 0, 40)
Show.Font = Enum.Font.ArialBold
Show.FontSize = Enum.FontSize.Size18
Show.Text = "Show"
Show.TextColor3 = Color3.new(1, 1, 1)

Hide_2.Name = "Hide"
Hide_2.Parent = Hidden
Hide_2.BackgroundColor3 = Color3.new(1, 1, 1)
Hide_2.BackgroundTransparency = 1
Hide_2.BorderColor3 = Color3.new(0, 0, 0)
Hide_2.Size = UDim2.new(0, 80, 0, 40)
Hide_2.Visible = false
Hide_2.Font = Enum.Font.ArialBold
Hide_2.FontSize = Enum.FontSize.Size18
Hide_2.Text = "Hide"
Hide_2.TextColor3 = Color3.new(1, 1, 1)

ApocBottomFrame.Name = "ApocBottomFrame"
ApocBottomFrame.Parent = skryptec_hub
ApocBottomFrame.Active = true
ApocBottomFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ApocBottomFrame.BackgroundTransparency = 0.69999998807907
ApocBottomFrame.BorderColor3 = Color3.new(0, 0, 0)
ApocBottomFrame.Draggable = true
ApocBottomFrame.Position = UDim2.new(0.5, -250, 0.5, 50)
ApocBottomFrame.Size = UDim2.new(0, 500, 0, 50)
ApocBottomFrame.Visible = false
ApocBottomFrame.ZIndex = 2

SetType_2.Name = "SetType"
SetType_2.Parent = ApocBottomFrame
SetType_2.BackgroundColor3 = Color3.new(0, 0, 0)
SetType_2.BorderColor3 = Color3.new(0, 0, 0)
SetType_2.Position = UDim2.new(0, 375, 0, 7)
SetType_2.Size = UDim2.new(0, 100, 0, 35)
SetType_2.ZIndex = 5
SetType_2.Style = Enum.ButtonStyle.RobloxRoundButton
SetType_2.Font = Enum.Font.SourceSans
SetType_2.FontSize = Enum.FontSize.Size14
SetType_2.Text = "Set Type"

BGShadow_4.Name = "BGShadow"
BGShadow_4.Parent = ApocBottomFrame
BGShadow_4.Active = true
BGShadow_4.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_4.BackgroundTransparency = 0.30000001192093
BGShadow_4.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_4.BorderSizePixel = 0
BGShadow_4.Position = UDim2.new(0, 1, 0, 1)
BGShadow_4.Size = UDim2.new(0, 500, 0, 50)

ApocType.Name = "ApocType"
ApocType.Parent = ApocBottomFrame
ApocType.BackgroundColor3 = Color3.new(0, 0, 0)
ApocType.BackgroundTransparency = 0.60000002384186
ApocType.Position = UDim2.new(0, 215, 0, 10)
ApocType.Size = UDim2.new(0, 150, 0, 30)
ApocType.ZIndex = 2
ApocType.Font = Enum.Font.SourceSans
ApocType.FontSize = Enum.FontSize.Size14
ApocType.Text = "Type"
ApocType.TextColor3 = Color3.new(1, 1, 1)

ApocValue.Name = "ApocValue"
ApocValue.Parent = ApocBottomFrame
ApocValue.BackgroundColor3 = Color3.new(0, 0, 0)
ApocValue.BackgroundTransparency = 0.60000002384186
ApocValue.Position = UDim2.new(0, 35, 0, 10)
ApocValue.Size = UDim2.new(0, 50, 0, 30)
ApocValue.ZIndex = 2
ApocValue.Font = Enum.Font.SourceSans
ApocValue.FontSize = Enum.FontSize.Size14
ApocValue.Text = "0"
ApocValue.TextColor3 = Color3.new(1, 1, 1)

SetValue_2.Name = "SetValue"
SetValue_2.Parent = ApocBottomFrame
SetValue_2.BackgroundColor3 = Color3.new(0, 0, 0)
SetValue_2.BorderColor3 = Color3.new(0, 0, 0)
SetValue_2.Position = UDim2.new(0, 95, 0, 7)
SetValue_2.Size = UDim2.new(0, 100, 0, 35)
SetValue_2.ZIndex = 5
SetValue_2.Style = Enum.ButtonStyle.RobloxRoundButton
SetValue_2.Font = Enum.Font.SourceSans
SetValue_2.FontSize = Enum.FontSize.Size14
SetValue_2.Text = "Set Value"

OpenExtra.Name = "OpenExtra"
OpenExtra.Parent = ApocBottomFrame
OpenExtra.BackgroundColor3 = Color3.new(0, 0, 0)
OpenExtra.BackgroundTransparency = 0.30000001192093
OpenExtra.BorderColor3 = Color3.new(0, 0, 0)
OpenExtra.Position = UDim2.new(0, 420, 0, 52)
OpenExtra.Size = UDim2.new(0, 80, 0, 15)
OpenExtra.ZIndex = 5
OpenExtra.Font = Enum.Font.SourceSans
OpenExtra.FontSize = Enum.FontSize.Size14
OpenExtra.Text = "Open Extras"
OpenExtra.TextColor3 = Color3.new(1, 1, 1)

CloseExtra.Name = "CloseExtra"
CloseExtra.Parent = ApocBottomFrame
CloseExtra.BackgroundColor3 = Color3.new(0, 0, 0)
CloseExtra.BackgroundTransparency = 0.30000001192093
CloseExtra.BorderColor3 = Color3.new(0, 0, 0)
CloseExtra.Position = UDim2.new(0, 420, 0, 52)
CloseExtra.Size = UDim2.new(0, 80, 0, 15)
CloseExtra.Visible = false
CloseExtra.ZIndex = 5
CloseExtra.Font = Enum.Font.SourceSans
CloseExtra.FontSize = Enum.FontSize.Size14
CloseExtra.Text = "Close Extras"
CloseExtra.TextColor3 = Color3.new(1, 1, 1)

ApocSideFrame.Name = "ApocSideFrame"
ApocSideFrame.Parent = skryptec_hub
ApocSideFrame.Active = true
ApocSideFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ApocSideFrame.BackgroundTransparency = 0.69999998807907
ApocSideFrame.BorderColor3 = Color3.new(0, 0, 0)
ApocSideFrame.Draggable = true
ApocSideFrame.Position = UDim2.new(0.5, 250, 0.5, -250)
ApocSideFrame.Size = UDim2.new(0, 150, 0, 300)
ApocSideFrame.Visible = false
ApocSideFrame.ZIndex = 2
ApocSideFrame.CanvasSize = UDim2.new(0, 0, 0, 1770)
ApocSideFrame.ScrollBarThickness = 8

BGShadow_5.Name = "BGShadow"
BGShadow_5.Parent = ApocSideFrame
BGShadow_5.Active = true
BGShadow_5.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_5.BackgroundTransparency = 0.30000001192093
BGShadow_5.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_5.BorderSizePixel = 0
BGShadow_5.Position = UDim2.new(0, 1, 0, 1)
BGShadow_5.Size = UDim2.new(0, 150, 0, 1770)

TeleportToMe.Name = "TeleportToMe"
TeleportToMe.Parent = ApocSideFrame
TeleportToMe.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportToMe.BorderColor3 = Color3.new(0, 0, 0)
TeleportToMe.Position = UDim2.new(0, 5, 0, 50)
TeleportToMe.Size = UDim2.new(0, 130, 0, 35)
TeleportToMe.ZIndex = 5
TeleportToMe.Style = Enum.ButtonStyle.RobloxRoundButton
TeleportToMe.Font = Enum.Font.SourceSans
TeleportToMe.FontSize = Enum.FontSize.Size14
TeleportToMe.Text = "Teleport To Me"

KillAll.Name = "KillAll"
KillAll.Parent = ApocSideFrame
KillAll.BackgroundColor3 = Color3.new(0, 0, 0)
KillAll.BorderColor3 = Color3.new(0, 0, 0)
KillAll.Position = UDim2.new(0, 5, 0, 10)
KillAll.Size = UDim2.new(0, 130, 0, 35)
KillAll.ZIndex = 5
KillAll.Style = Enum.ButtonStyle.RobloxRoundButton
KillAll.Font = Enum.Font.SourceSans
KillAll.FontSize = Enum.FontSize.Size14
KillAll.Text = "Kill Others"

TeleportMeTo.Name = "TeleportMeTo"
TeleportMeTo.Parent = ApocSideFrame
TeleportMeTo.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportMeTo.BorderColor3 = Color3.new(0, 0, 0)
TeleportMeTo.Position = UDim2.new(0, 5, 0, 90)
TeleportMeTo.Size = UDim2.new(0, 130, 0, 35)
TeleportMeTo.ZIndex = 5
TeleportMeTo.Style = Enum.ButtonStyle.RobloxRoundButton
TeleportMeTo.Font = Enum.Font.SourceSans
TeleportMeTo.FontSize = Enum.FontSize.Size14
TeleportMeTo.Text = "Teleport Me To"

TeleportAll.Name = "TeleportAll"
TeleportAll.Parent = ApocSideFrame
TeleportAll.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportAll.BorderColor3 = Color3.new(0, 0, 0)
TeleportAll.Position = UDim2.new(0, 5, 0, 130)
TeleportAll.Size = UDim2.new(0, 130, 0, 35)
TeleportAll.ZIndex = 5
TeleportAll.Style = Enum.ButtonStyle.RobloxRoundButton
TeleportAll.Font = Enum.Font.SourceSans
TeleportAll.FontSize = Enum.FontSize.Size14
TeleportAll.Text = "Teleport All"

SpawnItem_2.Name = "SpawnItem"
SpawnItem_2.Parent = ApocSideFrame
SpawnItem_2.BackgroundColor3 = Color3.new(0, 0, 0)
SpawnItem_2.BorderColor3 = Color3.new(0, 0, 0)
SpawnItem_2.Position = UDim2.new(0, 5, 0, 210)
SpawnItem_2.Size = UDim2.new(0, 130, 0, 35)
SpawnItem_2.ZIndex = 5
SpawnItem_2.Style = Enum.ButtonStyle.RobloxRoundButton
SpawnItem_2.Font = Enum.Font.SourceSans
SpawnItem_2.FontSize = Enum.FontSize.Size14
SpawnItem_2.Text = "Spawn Item"

ClearFog.Name = "ClearFog"
ClearFog.Parent = ApocSideFrame
ClearFog.BackgroundColor3 = Color3.new(0, 0, 0)
ClearFog.BorderColor3 = Color3.new(0, 0, 0)
ClearFog.Position = UDim2.new(0, 5, 0, 250)
ClearFog.Size = UDim2.new(0, 130, 0, 35)
ClearFog.ZIndex = 5
ClearFog.Style = Enum.ButtonStyle.RobloxRoundButton
ClearFog.Font = Enum.Font.SourceSans
ClearFog.FontSize = Enum.FontSize.Size14
ClearFog.Text = "Clear Fog"

TeleportVehicle_2.Name = "TeleportVehicle"
TeleportVehicle_2.Parent = ApocSideFrame
TeleportVehicle_2.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportVehicle_2.BorderColor3 = Color3.new(0, 0, 0)
TeleportVehicle_2.Position = UDim2.new(0, 5, 0, 1490)
TeleportVehicle_2.Size = UDim2.new(0, 130, 0, 35)
TeleportVehicle_2.ZIndex = 5
TeleportVehicle_2.Style = Enum.ButtonStyle.RobloxRoundButton
TeleportVehicle_2.Font = Enum.Font.SourceSans
TeleportVehicle_2.FontSize = Enum.FontSize.Size14
TeleportVehicle_2.Text = "Teleport Vehicles"

UnlimitedHunger.Name = "UnlimitedHunger"
UnlimitedHunger.Parent = ApocSideFrame
UnlimitedHunger.BackgroundColor3 = Color3.new(0, 0, 0)
UnlimitedHunger.BorderColor3 = Color3.new(0, 0, 0)
UnlimitedHunger.Position = UDim2.new(0, 5, 0, 330)
UnlimitedHunger.Size = UDim2.new(0, 130, 0, 35)
UnlimitedHunger.ZIndex = 5
UnlimitedHunger.Style = Enum.ButtonStyle.RobloxRoundButton
UnlimitedHunger.Font = Enum.Font.SourceSans
UnlimitedHunger.FontSize = Enum.FontSize.Size14
UnlimitedHunger.Text = "Unlimited Hunger"

UnlimitedThirst.Name = "UnlimitedThirst"
UnlimitedThirst.Parent = ApocSideFrame
UnlimitedThirst.BackgroundColor3 = Color3.new(0, 0, 0)
UnlimitedThirst.BorderColor3 = Color3.new(0, 0, 0)
UnlimitedThirst.Position = UDim2.new(0, 5, 0, 370)
UnlimitedThirst.Size = UDim2.new(0, 130, 0, 35)
UnlimitedThirst.ZIndex = 5
UnlimitedThirst.Style = Enum.ButtonStyle.RobloxRoundButton
UnlimitedThirst.Font = Enum.Font.SourceSans
UnlimitedThirst.FontSize = Enum.FontSize.Size14
UnlimitedThirst.Text = "Unlimited Thirst"

PlayerESP.Name = "PlayerESP"
PlayerESP.Parent = ApocSideFrame
PlayerESP.BackgroundColor3 = Color3.new(0, 0, 0)
PlayerESP.BorderColor3 = Color3.new(0, 0, 0)
PlayerESP.Position = UDim2.new(0, 5, 0, 410)
PlayerESP.Size = UDim2.new(0, 130, 0, 35)
PlayerESP.ZIndex = 5
PlayerESP.Style = Enum.ButtonStyle.RobloxRoundButton
PlayerESP.Font = Enum.Font.SourceSans
PlayerESP.FontSize = Enum.FontSize.Size14
PlayerESP.Text = "Player ESP"

Godmode.Name = "Godmode"
Godmode.Parent = ApocSideFrame
Godmode.BackgroundColor3 = Color3.new(0, 0, 0)
Godmode.BorderColor3 = Color3.new(0, 0, 0)
Godmode.Position = UDim2.new(0, 5, 0, 170)
Godmode.Size = UDim2.new(0, 130, 0, 35)
Godmode.ZIndex = 5
Godmode.Style = Enum.ButtonStyle.RobloxRoundButton
Godmode.Font = Enum.Font.SourceSans
Godmode.FontSize = Enum.FontSize.Size14
Godmode.Text = "Godmode"

SpawnDeck.Name = "SpawnDeck"
SpawnDeck.Parent = ApocSideFrame
SpawnDeck.BackgroundColor3 = Color3.new(0, 0, 0)
SpawnDeck.BorderColor3 = Color3.new(0, 0, 0)
SpawnDeck.Position = UDim2.new(0, 5, 0, 450)
SpawnDeck.Size = UDim2.new(0, 130, 0, 35)
SpawnDeck.ZIndex = 5
SpawnDeck.Style = Enum.ButtonStyle.RobloxRoundButton
SpawnDeck.Font = Enum.Font.SourceSans
SpawnDeck.FontSize = Enum.FontSize.Size14
SpawnDeck.Text = "Spawn Full Deck"

SpamText.Name = "SpamText"
SpamText.Parent = ApocSideFrame
SpamText.BackgroundColor3 = Color3.new(0, 0, 0)
SpamText.BorderColor3 = Color3.new(0, 0, 0)
SpamText.Position = UDim2.new(0, 5, 0, 490)
SpamText.Size = UDim2.new(0, 130, 0, 35)
SpamText.ZIndex = 5
SpamText.Style = Enum.ButtonStyle.RobloxRoundButton
SpamText.Font = Enum.Font.SourceSans
SpamText.FontSize = Enum.FontSize.Size14
SpamText.Text = "Server Message"

ItemESP.Name = "ItemESP"
ItemESP.Parent = ApocSideFrame
ItemESP.BackgroundColor3 = Color3.new(0, 0, 0)
ItemESP.BorderColor3 = Color3.new(0, 0, 0)
ItemESP.Position = UDim2.new(0, 5, 0, 530)
ItemESP.Size = UDim2.new(0, 130, 0, 35)
ItemESP.ZIndex = 5
ItemESP.Style = Enum.ButtonStyle.RobloxRoundButton
ItemESP.Font = Enum.Font.SourceSans
ItemESP.FontSize = Enum.FontSize.Size14
ItemESP.Text = "Item ESP"

TeleportCorpse.Name = "TeleportCorpse"
TeleportCorpse.Parent = ApocSideFrame
TeleportCorpse.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportCorpse.BorderColor3 = Color3.new(0, 0, 0)
TeleportCorpse.Position = UDim2.new(0, 5, 0, 570)
TeleportCorpse.Size = UDim2.new(0, 130, 0, 35)
TeleportCorpse.ZIndex = 5
TeleportCorpse.Style = Enum.ButtonStyle.RobloxRoundButton
TeleportCorpse.Font = Enum.Font.SourceSans
TeleportCorpse.FontSize = Enum.FontSize.Size14
TeleportCorpse.Text = "Teleport All Corpses"

C4Walk.Name = "C4Walk"
C4Walk.Parent = ApocSideFrame
C4Walk.BackgroundColor3 = Color3.new(0, 0, 0)
C4Walk.BorderColor3 = Color3.new(0, 0, 0)
C4Walk.Position = UDim2.new(0, 5, 0, 610)
C4Walk.Size = UDim2.new(0, 130, 0, 35)
C4Walk.ZIndex = 5
C4Walk.Style = Enum.ButtonStyle.RobloxRoundButton
C4Walk.Font = Enum.Font.SourceSans
C4Walk.FontSize = Enum.FontSize.Size14
C4Walk.Text = "C4 Walk"

AllBadges.Name = "AllBadges"
AllBadges.Parent = ApocSideFrame
AllBadges.BackgroundColor3 = Color3.new(0, 0, 0)
AllBadges.BorderColor3 = Color3.new(0, 0, 0)
AllBadges.Position = UDim2.new(0, 5, 0, 650)
AllBadges.Size = UDim2.new(0, 130, 0, 35)
AllBadges.ZIndex = 5
AllBadges.Style = Enum.ButtonStyle.RobloxRoundButton
AllBadges.Font = Enum.Font.SourceSans
AllBadges.FontSize = Enum.FontSize.Size14
AllBadges.Text = "All Badges"

ZombieKills.Name = "ZombieKills"
ZombieKills.Parent = ApocSideFrame
ZombieKills.BackgroundColor3 = Color3.new(0, 0, 0)
ZombieKills.BorderColor3 = Color3.new(0, 0, 0)
ZombieKills.Position = UDim2.new(0, 5, 0, 690)
ZombieKills.Size = UDim2.new(0, 130, 0, 35)
ZombieKills.ZIndex = 5
ZombieKills.Style = Enum.ButtonStyle.RobloxRoundButton
ZombieKills.Font = Enum.Font.SourceSans
ZombieKills.FontSize = Enum.FontSize.Size14
ZombieKills.Text = "Set Zombie Kills"

PlayerKills.Name = "PlayerKills"
PlayerKills.Parent = ApocSideFrame
PlayerKills.BackgroundColor3 = Color3.new(0, 0, 0)
PlayerKills.BorderColor3 = Color3.new(0, 0, 0)
PlayerKills.Position = UDim2.new(0, 5, 0, 730)
PlayerKills.Size = UDim2.new(0, 130, 0, 35)
PlayerKills.ZIndex = 5
PlayerKills.Style = Enum.ButtonStyle.RobloxRoundButton
PlayerKills.Font = Enum.Font.SourceSans
PlayerKills.FontSize = Enum.FontSize.Size14
PlayerKills.Text = "Set Player Kills"

DaysSurvived.Name = "DaysSurvived"
DaysSurvived.Parent = ApocSideFrame
DaysSurvived.BackgroundColor3 = Color3.new(0, 0, 0)
DaysSurvived.BorderColor3 = Color3.new(0, 0, 0)
DaysSurvived.Position = UDim2.new(0, 5, 0, 770)
DaysSurvived.Size = UDim2.new(0, 130, 0, 35)
DaysSurvived.ZIndex = 5
DaysSurvived.Style = Enum.ButtonStyle.RobloxRoundButton
DaysSurvived.Font = Enum.Font.SourceSans
DaysSurvived.FontSize = Enum.FontSize.Size14
DaysSurvived.Text = "Set Days Survived"

PlayMusic.Name = "PlayMusic"
PlayMusic.Parent = ApocSideFrame
PlayMusic.BackgroundColor3 = Color3.new(0, 0, 0)
PlayMusic.BorderColor3 = Color3.new(0, 0, 0)
PlayMusic.Position = UDim2.new(0, 5, 0, 810)
PlayMusic.Size = UDim2.new(0, 130, 0, 35)
PlayMusic.ZIndex = 5
PlayMusic.Style = Enum.ButtonStyle.RobloxRoundButton
PlayMusic.Font = Enum.Font.SourceSans
PlayMusic.FontSize = Enum.FontSize.Size14
PlayMusic.Text = "Play Music"

KillPlayer_2.Name = "KillPlayer"
KillPlayer_2.Parent = ApocSideFrame
KillPlayer_2.BackgroundColor3 = Color3.new(0, 0, 0)
KillPlayer_2.BorderColor3 = Color3.new(0, 0, 0)
KillPlayer_2.Position = UDim2.new(0, 5, 0, 850)
KillPlayer_2.Size = UDim2.new(0, 130, 0, 35)
KillPlayer_2.ZIndex = 5
KillPlayer_2.Style = Enum.ButtonStyle.RobloxRoundButton
KillPlayer_2.Font = Enum.Font.SourceSans
KillPlayer_2.FontSize = Enum.FontSize.Size14
KillPlayer_2.Text = "Kill Player"

LoopKillAll.Name = "LoopKillAll"
LoopKillAll.Parent = ApocSideFrame
LoopKillAll.BackgroundColor3 = Color3.new(0, 0, 0)
LoopKillAll.BorderColor3 = Color3.new(0, 0, 0)
LoopKillAll.Position = UDim2.new(0, 5, 0, 890)
LoopKillAll.Size = UDim2.new(0, 130, 0, 35)
LoopKillAll.ZIndex = 5
LoopKillAll.Style = Enum.ButtonStyle.RobloxRoundButton
LoopKillAll.Font = Enum.Font.SourceSans
LoopKillAll.FontSize = Enum.FontSize.Size14
LoopKillAll.Text = "Loop Kill Others"

LoopKillPlayer.Name = "LoopKillPlayer"
LoopKillPlayer.Parent = ApocSideFrame
LoopKillPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
LoopKillPlayer.BorderColor3 = Color3.new(0, 0, 0)
LoopKillPlayer.Position = UDim2.new(0, 5, 0, 930)
LoopKillPlayer.Size = UDim2.new(0, 130, 0, 35)
LoopKillPlayer.ZIndex = 5
LoopKillPlayer.Style = Enum.ButtonStyle.RobloxRoundButton
LoopKillPlayer.Font = Enum.Font.SourceSans
LoopKillPlayer.FontSize = Enum.FontSize.Size14
LoopKillPlayer.Text = "Loop Kill Player"

VehicleGod.Name = "VehicleGod"
VehicleGod.Parent = ApocSideFrame
VehicleGod.BackgroundColor3 = Color3.new(0, 0, 0)
VehicleGod.BorderColor3 = Color3.new(0, 0, 0)
VehicleGod.Position = UDim2.new(0, 5, 0, 970)
VehicleGod.Size = UDim2.new(0, 130, 0, 35)
VehicleGod.ZIndex = 5
VehicleGod.Style = Enum.ButtonStyle.RobloxRoundButton
VehicleGod.Font = Enum.Font.SourceSans
VehicleGod.FontSize = Enum.FontSize.Size14
VehicleGod.Text = "Vehicle Godmode"

AllBadgesAll.Name = "AllBadgesAll"
AllBadgesAll.Parent = ApocSideFrame
AllBadgesAll.BackgroundColor3 = Color3.new(0, 0, 0)
AllBadgesAll.BorderColor3 = Color3.new(0, 0, 0)
AllBadgesAll.Position = UDim2.new(0, 5, 0, 1010)
AllBadgesAll.Size = UDim2.new(0, 130, 0, 35)
AllBadgesAll.ZIndex = 5
AllBadgesAll.Style = Enum.ButtonStyle.RobloxRoundButton
AllBadgesAll.Font = Enum.Font.SourceSans
AllBadgesAll.FontSize = Enum.FontSize.Size14
AllBadgesAll.Text = "All Badges To All"

VehicleSpeed.Name = "VehicleSpeed"
VehicleSpeed.Parent = ApocSideFrame
VehicleSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
VehicleSpeed.BorderColor3 = Color3.new(0, 0, 0)
VehicleSpeed.Position = UDim2.new(0, 5, 0, 1050)
VehicleSpeed.Size = UDim2.new(0, 130, 0, 35)
VehicleSpeed.ZIndex = 5
VehicleSpeed.Style = Enum.ButtonStyle.RobloxRoundButton
VehicleSpeed.Font = Enum.Font.SourceSans
VehicleSpeed.FontSize = Enum.FontSize.Size14
VehicleSpeed.Text = "Vehicle Speed"

FALKit.Name = "FALKit"
FALKit.Parent = ApocSideFrame
FALKit.BackgroundColor3 = Color3.new(0, 0, 0)
FALKit.BorderColor3 = Color3.new(0, 0, 0)
FALKit.Position = UDim2.new(0, 5, 0, 1090)
FALKit.Size = UDim2.new(0, 130, 0, 35)
FALKit.ZIndex = 5
FALKit.Style = Enum.ButtonStyle.RobloxRoundButton
FALKit.Font = Enum.Font.SourceSans
FALKit.FontSize = Enum.FontSize.Size14
FALKit.Text = "Spawn FAL Kit"

GKKit.Name = "GKKit"
GKKit.Parent = ApocSideFrame
GKKit.BackgroundColor3 = Color3.new(0, 0, 0)
GKKit.BorderColor3 = Color3.new(0, 0, 0)
GKKit.Position = UDim2.new(0, 5, 0, 1130)
GKKit.Size = UDim2.new(0, 130, 0, 35)
GKKit.ZIndex = 5
GKKit.Style = Enum.ButtonStyle.RobloxRoundButton
GKKit.Font = Enum.Font.SourceSans
GKKit.FontSize = Enum.FontSize.Size14
GKKit.Text = "Spawn GK Kit"

HKKit.Name = "HKKit"
HKKit.Parent = ApocSideFrame
HKKit.BackgroundColor3 = Color3.new(0, 0, 0)
HKKit.BorderColor3 = Color3.new(0, 0, 0)
HKKit.Position = UDim2.new(0, 5, 0, 1170)
HKKit.Size = UDim2.new(0, 130, 0, 35)
HKKit.ZIndex = 5
HKKit.Style = Enum.ButtonStyle.RobloxRoundButton
HKKit.Font = Enum.Font.SourceSans
HKKit.FontSize = Enum.FontSize.Size14
HKKit.Text = "Spawn HK Kit"

PPSHKit.Name = "PPSHKit"
PPSHKit.Parent = ApocSideFrame
PPSHKit.BackgroundColor3 = Color3.new(0, 0, 0)
PPSHKit.BorderColor3 = Color3.new(0, 0, 0)
PPSHKit.Position = UDim2.new(0, 5, 0, 1210)
PPSHKit.Size = UDim2.new(0, 130, 0, 35)
PPSHKit.ZIndex = 5
PPSHKit.Style = Enum.ButtonStyle.RobloxRoundButton
PPSHKit.Font = Enum.Font.SourceSans
PPSHKit.FontSize = Enum.FontSize.Size14
PPSHKit.Text = "Spawn PPSH Kit"

AK12Kit.Name = "AK12Kit"
AK12Kit.Parent = ApocSideFrame
AK12Kit.BackgroundColor3 = Color3.new(0, 0, 0)
AK12Kit.BorderColor3 = Color3.new(0, 0, 0)
AK12Kit.Position = UDim2.new(0, 5, 0, 1250)
AK12Kit.Size = UDim2.new(0, 130, 0, 35)
AK12Kit.ZIndex = 5
AK12Kit.Style = Enum.ButtonStyle.RobloxRoundButton
AK12Kit.Font = Enum.Font.SourceSans
AK12Kit.FontSize = Enum.FontSize.Size14
AK12Kit.Text = "Spawn AK-12 Kit"

G3Kit.Name = "G3Kit"
G3Kit.Parent = ApocSideFrame
G3Kit.BackgroundColor3 = Color3.new(0, 0, 0)
G3Kit.BorderColor3 = Color3.new(0, 0, 0)
G3Kit.Position = UDim2.new(0, 5, 0, 1290)
G3Kit.Size = UDim2.new(0, 130, 0, 35)
G3Kit.ZIndex = 5
G3Kit.Style = Enum.ButtonStyle.RobloxRoundButton
G3Kit.Font = Enum.Font.SourceSans
G3Kit.FontSize = Enum.FontSize.Size14
G3Kit.Text = "Spawn G3 Kit"

BuildingKit.Name = "BuildingKit"
BuildingKit.Parent = ApocSideFrame
BuildingKit.BackgroundColor3 = Color3.new(0, 0, 0)
BuildingKit.BorderColor3 = Color3.new(0, 0, 0)
BuildingKit.Position = UDim2.new(0, 5, 0, 1330)
BuildingKit.Size = UDim2.new(0, 130, 0, 35)
BuildingKit.ZIndex = 5
BuildingKit.Style = Enum.ButtonStyle.RobloxRoundButton
BuildingKit.Font = Enum.Font.SourceSans
BuildingKit.FontSize = Enum.FontSize.Size14
BuildingKit.Text = "Spawn Building Kit"

Accuracy.Name = "Accuracy"
Accuracy.Parent = ApocSideFrame
Accuracy.BackgroundColor3 = Color3.new(0, 0, 0)
Accuracy.BorderColor3 = Color3.new(0, 0, 0)
Accuracy.Position = UDim2.new(0, 5, 0, 1370)
Accuracy.Size = UDim2.new(0, 130, 0, 35)
Accuracy.ZIndex = 5
Accuracy.Style = Enum.ButtonStyle.RobloxRoundButton
Accuracy.Font = Enum.Font.SourceSans
Accuracy.FontSize = Enum.FontSize.Size14
Accuracy.Text = "100% Accuracy"

KillZombies.Name = "KillZombies"
KillZombies.Parent = ApocSideFrame
KillZombies.BackgroundColor3 = Color3.new(0, 0, 0)
KillZombies.BorderColor3 = Color3.new(0, 0, 0)
KillZombies.Position = UDim2.new(0, 5, 0, 1410)
KillZombies.Size = UDim2.new(0, 130, 0, 35)
KillZombies.ZIndex = 5
KillZombies.Style = Enum.ButtonStyle.RobloxRoundButton
KillZombies.Font = Enum.Font.SourceSans
KillZombies.FontSize = Enum.FontSize.Size14
KillZombies.Text = "Kill Zombies"

TeleportCrates.Name = "TeleportCrates"
TeleportCrates.Parent = ApocSideFrame
TeleportCrates.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportCrates.BorderColor3 = Color3.new(0, 0, 0)
TeleportCrates.Position = UDim2.new(0, 5, 0, 1450)
TeleportCrates.Size = UDim2.new(0, 130, 0, 35)
TeleportCrates.ZIndex = 5
TeleportCrates.Style = Enum.ButtonStyle.RobloxRoundButton
TeleportCrates.Font = Enum.Font.SourceSans
TeleportCrates.FontSize = Enum.FontSize.Size14
TeleportCrates.Text = "Teleport Crates"

Spectate.Name = "Spectate"
Spectate.Parent = ApocSideFrame
Spectate.BackgroundColor3 = Color3.new(0, 0, 0)
Spectate.BorderColor3 = Color3.new(0, 0, 0)
Spectate.Position = UDim2.new(0, 5, 0, 290)
Spectate.Size = UDim2.new(0, 130, 0, 35)
Spectate.ZIndex = 5
Spectate.Style = Enum.ButtonStyle.RobloxRoundButton
Spectate.Font = Enum.Font.SourceSans
Spectate.FontSize = Enum.FontSize.Size14
Spectate.Text = "Spectate"

GiveSkin.Name = "GiveSkin"
GiveSkin.Parent = ApocSideFrame
GiveSkin.BackgroundColor3 = Color3.new(0, 0, 0)
GiveSkin.BorderColor3 = Color3.new(0, 0, 0)
GiveSkin.Position = UDim2.new(0, 5, 0, 1530)
GiveSkin.Size = UDim2.new(0, 130, 0, 35)
GiveSkin.ZIndex = 5
GiveSkin.Style = Enum.ButtonStyle.RobloxRoundButton
GiveSkin.Font = Enum.Font.SourceSans
GiveSkin.FontSize = Enum.FontSize.Size14
GiveSkin.Text = "Give Skin"

GiveClothes.Name = "GiveClothes"
GiveClothes.Parent = ApocSideFrame
GiveClothes.BackgroundColor3 = Color3.new(0, 0, 0)
GiveClothes.BorderColor3 = Color3.new(0, 0, 0)
GiveClothes.Position = UDim2.new(0, 5, 0, 1570)
GiveClothes.Size = UDim2.new(0, 130, 0, 35)
GiveClothes.ZIndex = 5
GiveClothes.Style = Enum.ButtonStyle.RobloxRoundButton
GiveClothes.Font = Enum.Font.SourceSans
GiveClothes.FontSize = Enum.FontSize.Size14
GiveClothes.Text = "Give Clothes"

KickPlayer_2.Name = "KickPlayer"
KickPlayer_2.Parent = ApocSideFrame
KickPlayer_2.BackgroundColor3 = Color3.new(0, 0, 0)
KickPlayer_2.BorderColor3 = Color3.new(0, 0, 0)
KickPlayer_2.Position = UDim2.new(0, 5, 0, 1610)
KickPlayer_2.Size = UDim2.new(0, 130, 0, 35)
KickPlayer_2.ZIndex = 5
KickPlayer_2.Style = Enum.ButtonStyle.RobloxRoundButton
KickPlayer_2.Font = Enum.Font.SourceSans
KickPlayer_2.FontSize = Enum.FontSize.Size14
KickPlayer_2.Text = "Kick Player"

KickOthers.Name = "KickOthers"
KickOthers.Parent = ApocSideFrame
KickOthers.BackgroundColor3 = Color3.new(0, 0, 0)
KickOthers.BorderColor3 = Color3.new(0, 0, 0)
KickOthers.Position = UDim2.new(0, 5, 0, 1650)
KickOthers.Size = UDim2.new(0, 130, 0, 35)
KickOthers.ZIndex = 5
KickOthers.Style = Enum.ButtonStyle.RobloxRoundButton
KickOthers.Font = Enum.Font.SourceSans
KickOthers.FontSize = Enum.FontSize.Size14
KickOthers.Text = "Kick Others"

DeleteMap.Name = "DeleteMap"
DeleteMap.Parent = ApocSideFrame
DeleteMap.BackgroundColor3 = Color3.new(0, 0, 0)
DeleteMap.BorderColor3 = Color3.new(0, 0, 0)
DeleteMap.Position = UDim2.new(0, 5, 0, 1690)
DeleteMap.Size = UDim2.new(0, 130, 0, 35)
DeleteMap.ZIndex = 5
DeleteMap.Style = Enum.ButtonStyle.RobloxRoundButton
DeleteMap.Font = Enum.Font.SourceSans
DeleteMap.FontSize = Enum.FontSize.Size14
DeleteMap.Text = "Delete Map"

DespawnLoot.Name = "DespawnLoot"
DespawnLoot.Parent = ApocSideFrame
DespawnLoot.BackgroundColor3 = Color3.new(0, 0, 0)
DespawnLoot.BorderColor3 = Color3.new(0, 0, 0)
DespawnLoot.Position = UDim2.new(0, 5, 0, 1730)
DespawnLoot.Size = UDim2.new(0, 130, 0, 35)
DespawnLoot.ZIndex = 5
DespawnLoot.Style = Enum.ButtonStyle.RobloxRoundButton
DespawnLoot.Font = Enum.Font.SourceSans
DespawnLoot.FontSize = Enum.FontSize.Size14
DespawnLoot.Text = "Despawn Loot"

DeadMistBottomFrame.Name = "DeadMistBottomFrame"
DeadMistBottomFrame.Parent = skryptec_hub
DeadMistBottomFrame.Active = true
DeadMistBottomFrame.BackgroundColor3 = Color3.new(1, 1, 1)
DeadMistBottomFrame.BackgroundTransparency = 0.69999998807907
DeadMistBottomFrame.BorderColor3 = Color3.new(0, 0, 0)
DeadMistBottomFrame.Draggable = true
DeadMistBottomFrame.Position = UDim2.new(0.5, -250, 0.5, 50)
DeadMistBottomFrame.Size = UDim2.new(0, 500, 0, 50)
DeadMistBottomFrame.Visible = false
DeadMistBottomFrame.ZIndex = 2

SetType_3.Name = "SetType"
SetType_3.Parent = DeadMistBottomFrame
SetType_3.BackgroundColor3 = Color3.new(0, 0, 0)
SetType_3.BorderColor3 = Color3.new(0, 0, 0)
SetType_3.Position = UDim2.new(0, 375, 0, 7)
SetType_3.Size = UDim2.new(0, 100, 0, 35)
SetType_3.ZIndex = 5
SetType_3.Style = Enum.ButtonStyle.RobloxRoundButton
SetType_3.Font = Enum.Font.SourceSans
SetType_3.FontSize = Enum.FontSize.Size14
SetType_3.Text = "Set Type"

BGShadow_6.Name = "BGShadow"
BGShadow_6.Parent = DeadMistBottomFrame
BGShadow_6.Active = true
BGShadow_6.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_6.BackgroundTransparency = 0.30000001192093
BGShadow_6.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_6.BorderSizePixel = 0
BGShadow_6.Position = UDim2.new(0, 1, 0, 1)
BGShadow_6.Size = UDim2.new(0, 500, 0, 50)

DMType.Name = "DMType"
DMType.Parent = DeadMistBottomFrame
DMType.BackgroundColor3 = Color3.new(0, 0, 0)
DMType.BackgroundTransparency = 0.60000002384186
DMType.Position = UDim2.new(0, 215, 0, 10)
DMType.Size = UDim2.new(0, 150, 0, 30)
DMType.ZIndex = 2
DMType.Font = Enum.Font.SourceSans
DMType.FontSize = Enum.FontSize.Size14
DMType.Text = "Type"
DMType.TextColor3 = Color3.new(1, 1, 1)

DMValue.Name = "DMValue"
DMValue.Parent = DeadMistBottomFrame
DMValue.BackgroundColor3 = Color3.new(0, 0, 0)
DMValue.BackgroundTransparency = 0.60000002384186
DMValue.Position = UDim2.new(0, 35, 0, 10)
DMValue.Size = UDim2.new(0, 50, 0, 30)
DMValue.ZIndex = 2
DMValue.Font = Enum.Font.SourceSans
DMValue.FontSize = Enum.FontSize.Size14
DMValue.Text = "0"
DMValue.TextColor3 = Color3.new(1, 1, 1)

SetValue_3.Name = "SetValue"
SetValue_3.Parent = DeadMistBottomFrame
SetValue_3.BackgroundColor3 = Color3.new(0, 0, 0)
SetValue_3.BorderColor3 = Color3.new(0, 0, 0)
SetValue_3.Position = UDim2.new(0, 95, 0, 7)
SetValue_3.Size = UDim2.new(0, 100, 0, 35)
SetValue_3.ZIndex = 5
SetValue_3.Style = Enum.ButtonStyle.RobloxRoundButton
SetValue_3.Font = Enum.Font.SourceSans
SetValue_3.FontSize = Enum.FontSize.Size14
SetValue_3.Text = "Set Value"

DeadzoneSideFrame.Name = "DeadzoneSideFrame"
DeadzoneSideFrame.Parent = skryptec_hub
DeadzoneSideFrame.Active = true
DeadzoneSideFrame.BackgroundColor3 = Color3.new(1, 1, 1)
DeadzoneSideFrame.BackgroundTransparency = 0.69999998807907
DeadzoneSideFrame.BorderColor3 = Color3.new(0, 0, 0)
DeadzoneSideFrame.Draggable = true
DeadzoneSideFrame.Position = UDim2.new(0.5, 250, 0.5, -250)
DeadzoneSideFrame.Size = UDim2.new(0, 150, 0, 300)
DeadzoneSideFrame.Visible = false
DeadzoneSideFrame.ZIndex = 2
DeadzoneSideFrame.CanvasSize = UDim2.new(0, 0, 0, 1000)
DeadzoneSideFrame.ScrollBarThickness = 8

BGShadow_7.Name = "BGShadow"
BGShadow_7.Parent = DeadzoneSideFrame
BGShadow_7.Active = true
BGShadow_7.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_7.BackgroundTransparency = 0.30000001192093
BGShadow_7.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_7.BorderSizePixel = 0
BGShadow_7.Position = UDim2.new(0, 1, 0, 1)
BGShadow_7.Size = UDim2.new(0, 150, 0, 1000)

GodMode.Name = "GodMode"
GodMode.Parent = DeadzoneSideFrame
GodMode.BackgroundColor3 = Color3.new(0, 0, 0)
GodMode.BorderColor3 = Color3.new(0, 0, 0)
GodMode.Position = UDim2.new(0, 5, 0, 90)
GodMode.Size = UDim2.new(0, 130, 0, 35)
GodMode.ZIndex = 5
GodMode.Style = Enum.ButtonStyle.RobloxRoundButton
GodMode.Font = Enum.Font.SourceSans
GodMode.FontSize = Enum.FontSize.Size14
GodMode.Text = "Godmode"

Pets.Name = "Pets"
Pets.Parent = DeadzoneSideFrame
Pets.BackgroundColor3 = Color3.new(0, 0, 0)
Pets.BorderColor3 = Color3.new(0, 0, 0)
Pets.Position = UDim2.new(0, 5, 0, 50)
Pets.Size = UDim2.new(0, 130, 0, 35)
Pets.ZIndex = 5
Pets.Style = Enum.ButtonStyle.RobloxRoundButton
Pets.Font = Enum.Font.SourceSans
Pets.FontSize = Enum.FontSize.Size14
Pets.Text = "All Pets"

Wings.Name = "Wings"
Wings.Parent = DeadzoneSideFrame
Wings.BackgroundColor3 = Color3.new(0, 0, 0)
Wings.BorderColor3 = Color3.new(0, 0, 0)
Wings.Position = UDim2.new(0, 5, 0, 10)
Wings.Size = UDim2.new(0, 130, 0, 35)
Wings.ZIndex = 5
Wings.Style = Enum.ButtonStyle.RobloxRoundButton
Wings.Font = Enum.Font.SourceSans
Wings.FontSize = Enum.FontSize.Size14
Wings.Text = "All Wings"

RestoreAll.Name = "RestoreAll"
RestoreAll.Parent = DeadzoneSideFrame
RestoreAll.BackgroundColor3 = Color3.new(0, 0, 0)
RestoreAll.BorderColor3 = Color3.new(0, 0, 0)
RestoreAll.Position = UDim2.new(0, 5, 0, 130)
RestoreAll.Size = UDim2.new(0, 130, 0, 35)
RestoreAll.ZIndex = 5
RestoreAll.Style = Enum.ButtonStyle.RobloxRoundButton
RestoreAll.Font = Enum.Font.SourceSans
RestoreAll.FontSize = Enum.FontSize.Size14
RestoreAll.Text = "Restore"

ItemSpawn.Name = "ItemSpawn"
ItemSpawn.Parent = DeadzoneSideFrame
ItemSpawn.BackgroundColor3 = Color3.new(0, 0, 0)
ItemSpawn.BorderColor3 = Color3.new(0, 0, 0)
ItemSpawn.Position = UDim2.new(0, 5, 0, 170)
ItemSpawn.Size = UDim2.new(0, 130, 0, 35)
ItemSpawn.ZIndex = 5
ItemSpawn.Style = Enum.ButtonStyle.RobloxRoundButton
ItemSpawn.Font = Enum.Font.SourceSans
ItemSpawn.FontSize = Enum.FontSize.Size14
ItemSpawn.Text = "Spawn Item"

VehicleSpawn.Name = "VehicleSpawn"
VehicleSpawn.Parent = DeadzoneSideFrame
VehicleSpawn.BackgroundColor3 = Color3.new(0, 0, 0)
VehicleSpawn.BorderColor3 = Color3.new(0, 0, 0)
VehicleSpawn.Position = UDim2.new(0, 5, 0, 210)
VehicleSpawn.Size = UDim2.new(0, 130, 0, 35)
VehicleSpawn.ZIndex = 5
VehicleSpawn.Style = Enum.ButtonStyle.RobloxRoundButton
VehicleSpawn.Font = Enum.Font.SourceSans
VehicleSpawn.FontSize = Enum.FontSize.Size14
VehicleSpawn.Text = "Spawn Vehicle"

Reputation.Name = "Reputation"
Reputation.Parent = DeadzoneSideFrame
Reputation.BackgroundColor3 = Color3.new(0, 0, 0)
Reputation.BorderColor3 = Color3.new(0, 0, 0)
Reputation.Position = UDim2.new(0, 5, 0, 250)
Reputation.Size = UDim2.new(0, 130, 0, 35)
Reputation.ZIndex = 5
Reputation.Style = Enum.ButtonStyle.RobloxRoundButton
Reputation.Font = Enum.Font.SourceSans
Reputation.FontSize = Enum.FontSize.Size14
Reputation.Text = "Set Reputation"

PlayerKills_2.Name = "PlayerKills"
PlayerKills_2.Parent = DeadzoneSideFrame
PlayerKills_2.BackgroundColor3 = Color3.new(0, 0, 0)
PlayerKills_2.BorderColor3 = Color3.new(0, 0, 0)
PlayerKills_2.Position = UDim2.new(0, 5, 0, 290)
PlayerKills_2.Size = UDim2.new(0, 130, 0, 35)
PlayerKills_2.ZIndex = 5
PlayerKills_2.Style = Enum.ButtonStyle.RobloxRoundButton
PlayerKills_2.Font = Enum.Font.SourceSans
PlayerKills_2.FontSize = Enum.FontSize.Size14
PlayerKills_2.Text = "Set Player Kills"

ZombieKills_2.Name = "ZombieKills"
ZombieKills_2.Parent = DeadzoneSideFrame
ZombieKills_2.BackgroundColor3 = Color3.new(0, 0, 0)
ZombieKills_2.BorderColor3 = Color3.new(0, 0, 0)
ZombieKills_2.Position = UDim2.new(0, 5, 0, 330)
ZombieKills_2.Size = UDim2.new(0, 130, 0, 35)
ZombieKills_2.ZIndex = 5
ZombieKills_2.Style = Enum.ButtonStyle.RobloxRoundButton
ZombieKills_2.Font = Enum.Font.SourceSans
ZombieKills_2.FontSize = Enum.FontSize.Size14
ZombieKills_2.Text = "Set Zombie Kills"

BossKills.Name = "BossKills"
BossKills.Parent = DeadzoneSideFrame
BossKills.BackgroundColor3 = Color3.new(0, 0, 0)
BossKills.BorderColor3 = Color3.new(0, 0, 0)
BossKills.Position = UDim2.new(0, 5, 0, 370)
BossKills.Size = UDim2.new(0, 130, 0, 35)
BossKills.ZIndex = 5
BossKills.Style = Enum.ButtonStyle.RobloxRoundButton
BossKills.Font = Enum.Font.SourceSans
BossKills.FontSize = Enum.FontSize.Size14
BossKills.Text = "Set Boss Kills"

KillDiablo.Name = "KillDiablo"
KillDiablo.Parent = DeadzoneSideFrame
KillDiablo.BackgroundColor3 = Color3.new(0, 0, 0)
KillDiablo.BorderColor3 = Color3.new(0, 0, 0)
KillDiablo.Position = UDim2.new(0, 5, 0, 410)
KillDiablo.Size = UDim2.new(0, 130, 0, 35)
KillDiablo.ZIndex = 5
KillDiablo.Style = Enum.ButtonStyle.RobloxRoundButton
KillDiablo.Font = Enum.Font.SourceSans
KillDiablo.FontSize = Enum.FontSize.Size14
KillDiablo.Text = "Kill Diablo"

KillBaal.Name = "KillBaal"
KillBaal.Parent = DeadzoneSideFrame
KillBaal.BackgroundColor3 = Color3.new(0, 0, 0)
KillBaal.BorderColor3 = Color3.new(0, 0, 0)
KillBaal.Position = UDim2.new(0, 5, 0, 450)
KillBaal.Size = UDim2.new(0, 130, 0, 35)
KillBaal.ZIndex = 5
KillBaal.Style = Enum.ButtonStyle.RobloxRoundButton
KillBaal.Font = Enum.Font.SourceSans
KillBaal.FontSize = Enum.FontSize.Size14
KillBaal.Text = "Kill Baal"

SpawnDiablo.Name = "SpawnDiablo"
SpawnDiablo.Parent = DeadzoneSideFrame
SpawnDiablo.BackgroundColor3 = Color3.new(0, 0, 0)
SpawnDiablo.BorderColor3 = Color3.new(0, 0, 0)
SpawnDiablo.Position = UDim2.new(0, 5, 0, 490)
SpawnDiablo.Size = UDim2.new(0, 130, 0, 35)
SpawnDiablo.ZIndex = 5
SpawnDiablo.Style = Enum.ButtonStyle.RobloxRoundButton
SpawnDiablo.Font = Enum.Font.SourceSans
SpawnDiablo.FontSize = Enum.FontSize.Size14
SpawnDiablo.Text = "Spawn Diablo"

SpawnBaal.Name = "SpawnBaal"
SpawnBaal.Parent = DeadzoneSideFrame
SpawnBaal.BackgroundColor3 = Color3.new(0, 0, 0)
SpawnBaal.BorderColor3 = Color3.new(0, 0, 0)
SpawnBaal.Position = UDim2.new(0, 5, 0, 530)
SpawnBaal.Size = UDim2.new(0, 130, 0, 35)
SpawnBaal.ZIndex = 5
SpawnBaal.Style = Enum.ButtonStyle.RobloxRoundButton
SpawnBaal.Font = Enum.Font.SourceSans
SpawnBaal.FontSize = Enum.FontSize.Size14
SpawnBaal.Text = "Spawn Baal"

Cash.Name = "Cash"
Cash.Parent = DeadzoneSideFrame
Cash.BackgroundColor3 = Color3.new(0, 0, 0)
Cash.BorderColor3 = Color3.new(0, 0, 0)
Cash.Position = UDim2.new(0, 5, 0, 570)
Cash.Size = UDim2.new(0, 130, 0, 35)
Cash.ZIndex = 5
Cash.Style = Enum.ButtonStyle.RobloxRoundButton
Cash.Font = Enum.Font.SourceSans
Cash.FontSize = Enum.FontSize.Size14
Cash.Text = "Set Cash"

GC.Name = "GC"
GC.Parent = DeadzoneSideFrame
GC.BackgroundColor3 = Color3.new(0, 0, 0)
GC.BorderColor3 = Color3.new(0, 0, 0)
GC.Position = UDim2.new(0, 5, 0, 610)
GC.Size = UDim2.new(0, 130, 0, 35)
GC.ZIndex = 5
GC.Style = Enum.ButtonStyle.RobloxRoundButton
GC.Font = Enum.Font.SourceSans
GC.FontSize = Enum.FontSize.Size14
GC.Text = "Set GC"

EXP.Name = "EXP"
EXP.Parent = DeadzoneSideFrame
EXP.BackgroundColor3 = Color3.new(0, 0, 0)
EXP.BorderColor3 = Color3.new(0, 0, 0)
EXP.Position = UDim2.new(0, 5, 0, 650)
EXP.Size = UDim2.new(0, 130, 0, 35)
EXP.ZIndex = 5
EXP.Style = Enum.ButtonStyle.RobloxRoundButton
EXP.Font = Enum.Font.SourceSans
EXP.FontSize = Enum.FontSize.Size14
EXP.Text = "Set Experience"

Level.Name = "Level"
Level.Parent = DeadzoneSideFrame
Level.BackgroundColor3 = Color3.new(0, 0, 0)
Level.BorderColor3 = Color3.new(0, 0, 0)
Level.Position = UDim2.new(0, 5, 0, 690)
Level.Size = UDim2.new(0, 130, 0, 35)
Level.ZIndex = 5
Level.Style = Enum.ButtonStyle.RobloxRoundButton
Level.Font = Enum.Font.SourceSans
Level.FontSize = Enum.FontSize.Size14
Level.Text = "Set Level"

SoulCredits.Name = "SoulCredits"
SoulCredits.Parent = DeadzoneSideFrame
SoulCredits.BackgroundColor3 = Color3.new(0, 0, 0)
SoulCredits.BorderColor3 = Color3.new(0, 0, 0)
SoulCredits.Position = UDim2.new(0, 5, 0, 730)
SoulCredits.Size = UDim2.new(0, 130, 0, 35)
SoulCredits.ZIndex = 5
SoulCredits.Style = Enum.ButtonStyle.RobloxRoundButton
SoulCredits.Font = Enum.Font.SourceSans
SoulCredits.FontSize = Enum.FontSize.Size14
SoulCredits.Text = "Set Soul Credits"

StatPoints.Name = "StatPoints"
StatPoints.Parent = DeadzoneSideFrame
StatPoints.BackgroundColor3 = Color3.new(0, 0, 0)
StatPoints.BorderColor3 = Color3.new(0, 0, 0)
StatPoints.Position = UDim2.new(0, 5, 0, 770)
StatPoints.Size = UDim2.new(0, 130, 0, 35)
StatPoints.ZIndex = 5
StatPoints.Style = Enum.ButtonStyle.RobloxRoundButton
StatPoints.Font = Enum.Font.SourceSans
StatPoints.FontSize = Enum.FontSize.Size14
StatPoints.Text = "Set Stat Points"

Strength.Name = "Strength"
Strength.Parent = DeadzoneSideFrame
Strength.BackgroundColor3 = Color3.new(0, 0, 0)
Strength.BorderColor3 = Color3.new(0, 0, 0)
Strength.Position = UDim2.new(0, 5, 0, 810)
Strength.Size = UDim2.new(0, 130, 0, 35)
Strength.ZIndex = 5
Strength.Style = Enum.ButtonStyle.RobloxRoundButton
Strength.Font = Enum.Font.SourceSans
Strength.FontSize = Enum.FontSize.Size14
Strength.Text = "Set Strength"

Defence.Name = "Defence"
Defence.Parent = DeadzoneSideFrame
Defence.BackgroundColor3 = Color3.new(0, 0, 0)
Defence.BorderColor3 = Color3.new(0, 0, 0)
Defence.Position = UDim2.new(0, 5, 0, 850)
Defence.Size = UDim2.new(0, 130, 0, 35)
Defence.ZIndex = 5
Defence.Style = Enum.ButtonStyle.RobloxRoundButton
Defence.Font = Enum.Font.SourceSans
Defence.FontSize = Enum.FontSize.Size14
Defence.Text = "Set Defence"

Safezone.Name = "Safezone"
Safezone.Parent = DeadzoneSideFrame
Safezone.BackgroundColor3 = Color3.new(0, 0, 0)
Safezone.BorderColor3 = Color3.new(0, 0, 0)
Safezone.Position = UDim2.new(0, 5, 0, 890)
Safezone.Size = UDim2.new(0, 130, 0, 35)
Safezone.ZIndex = 5
Safezone.Style = Enum.ButtonStyle.RobloxRoundButton
Safezone.Font = Enum.Font.SourceSans
Safezone.FontSize = Enum.FontSize.Size14
Safezone.Text = "Toggle Safezone"

CreditFrame.Name = "CreditFrame"
CreditFrame.Parent = skryptec_hub
CreditFrame.Active = true
CreditFrame.BackgroundColor3 = Color3.new(1, 1, 1)
CreditFrame.BackgroundTransparency = 0.69999998807907
CreditFrame.BorderColor3 = Color3.new(0, 0, 0)
CreditFrame.Draggable = true
CreditFrame.Position = UDim2.new(0.5, -403, 0.5, -250)
CreditFrame.Size = UDim2.new(0, 150, 0, 175)
CreditFrame.Visible = false
CreditFrame.ZIndex = 2

BGShadow_8.Name = "BGShadow"
BGShadow_8.Parent = CreditFrame
BGShadow_8.Active = true
BGShadow_8.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_8.BackgroundTransparency = 0.30000001192093
BGShadow_8.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_8.BorderSizePixel = 0
BGShadow_8.Position = UDim2.new(0, 1, 0, 1)
BGShadow_8.Size = UDim2.new(0, 150, 0, 175)

Credits.Name = "Credits"
Credits.Parent = CreditFrame
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.Size = UDim2.new(0, 150, 0, 300)
Credits.Image = "rbxassetid://498399606"

LT2BottomFrame.Name = "LT2BottomFrame"
LT2BottomFrame.Parent = skryptec_hub
LT2BottomFrame.Active = true
LT2BottomFrame.BackgroundColor3 = Color3.new(1, 1, 1)
LT2BottomFrame.BackgroundTransparency = 0.69999998807907
LT2BottomFrame.BorderColor3 = Color3.new(0, 0, 0)
LT2BottomFrame.Draggable = true
LT2BottomFrame.Position = UDim2.new(0.5, -250, 0.5, 50)
LT2BottomFrame.Size = UDim2.new(0, 500, 0, 50)
LT2BottomFrame.Visible = false
LT2BottomFrame.ZIndex = 2

SetType_4.Name = "SetType"
SetType_4.Parent = LT2BottomFrame
SetType_4.BackgroundColor3 = Color3.new(0, 0, 0)
SetType_4.BorderColor3 = Color3.new(0, 0, 0)
SetType_4.Position = UDim2.new(0, 375, 0, 7)
SetType_4.Size = UDim2.new(0, 100, 0, 35)
SetType_4.ZIndex = 5
SetType_4.Style = Enum.ButtonStyle.RobloxRoundButton
SetType_4.Font = Enum.Font.SourceSans
SetType_4.FontSize = Enum.FontSize.Size14
SetType_4.Text = "Set Type"

BGShadow_9.Name = "BGShadow"
BGShadow_9.Parent = LT2BottomFrame
BGShadow_9.Active = true
BGShadow_9.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_9.BackgroundTransparency = 0.30000001192093
BGShadow_9.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_9.BorderSizePixel = 0
BGShadow_9.Position = UDim2.new(0, 1, 0, 1)
BGShadow_9.Size = UDim2.new(0, 500, 0, 50)

LT2Type.Name = "LT2Type"
LT2Type.Parent = LT2BottomFrame
LT2Type.BackgroundColor3 = Color3.new(0, 0, 0)
LT2Type.BackgroundTransparency = 0.60000002384186
LT2Type.Position = UDim2.new(0, 215, 0, 10)
LT2Type.Size = UDim2.new(0, 150, 0, 30)
LT2Type.ZIndex = 2
LT2Type.Font = Enum.Font.SourceSans
LT2Type.FontSize = Enum.FontSize.Size14
LT2Type.Text = "Type"
LT2Type.TextColor3 = Color3.new(1, 1, 1)

LT2Value.Name = "LT2Value"
LT2Value.Parent = LT2BottomFrame
LT2Value.BackgroundColor3 = Color3.new(0, 0, 0)
LT2Value.BackgroundTransparency = 0.60000002384186
LT2Value.Position = UDim2.new(0, 35, 0, 10)
LT2Value.Size = UDim2.new(0, 50, 0, 30)
LT2Value.ZIndex = 2
LT2Value.Font = Enum.Font.SourceSans
LT2Value.FontSize = Enum.FontSize.Size14
LT2Value.Text = "0"
LT2Value.TextColor3 = Color3.new(1, 1, 1)

SetValue_4.Name = "SetValue"
SetValue_4.Parent = LT2BottomFrame
SetValue_4.BackgroundColor3 = Color3.new(0, 0, 0)
SetValue_4.BorderColor3 = Color3.new(0, 0, 0)
SetValue_4.Position = UDim2.new(0, 95, 0, 7)
SetValue_4.Size = UDim2.new(0, 100, 0, 35)
SetValue_4.ZIndex = 5
SetValue_4.Style = Enum.ButtonStyle.RobloxRoundButton
SetValue_4.Font = Enum.Font.SourceSans
SetValue_4.FontSize = Enum.FontSize.Size14
SetValue_4.Text = "Set Value"

LT2SideFrame.Name = "LT2SideFrame"
LT2SideFrame.Parent = skryptec_hub
LT2SideFrame.Active = true
LT2SideFrame.BackgroundColor3 = Color3.new(1, 1, 1)
LT2SideFrame.BackgroundTransparency = 0.69999998807907
LT2SideFrame.BorderColor3 = Color3.new(0, 0, 0)
LT2SideFrame.Draggable = true
LT2SideFrame.Position = UDim2.new(0.5, 250, 0.5, -250)
LT2SideFrame.Size = UDim2.new(0, 150, 0, 300)
LT2SideFrame.Visible = false
LT2SideFrame.ZIndex = 2
LT2SideFrame.CanvasSize = UDim2.new(0, 0, 0, 1000)
LT2SideFrame.ScrollBarThickness = 8

BGShadow_10.Name = "BGShadow"
BGShadow_10.Parent = LT2SideFrame
BGShadow_10.Active = true
BGShadow_10.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_10.BackgroundTransparency = 0.30000001192093
BGShadow_10.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_10.BorderSizePixel = 0
BGShadow_10.Position = UDim2.new(0, 1, 0, 1)
BGShadow_10.Size = UDim2.new(0, 150, 0, 1000)

AxePower.Name = "AxePower"
AxePower.Parent = LT2SideFrame
AxePower.BackgroundColor3 = Color3.new(0, 0, 0)
AxePower.BorderColor3 = Color3.new(0, 0, 0)
AxePower.Position = UDim2.new(0, 5, 0, 10)
AxePower.Size = UDim2.new(0, 130, 0, 35)
AxePower.ZIndex = 5
AxePower.Style = Enum.ButtonStyle.RobloxRoundButton
AxePower.Font = Enum.Font.SourceSans
AxePower.FontSize = Enum.FontSize.Size14
AxePower.Text = "Axe Power"

FreeLand.Name = "FreeLand"
FreeLand.Parent = LT2SideFrame
FreeLand.BackgroundColor3 = Color3.new(0, 0, 0)
FreeLand.BorderColor3 = Color3.new(0, 0, 0)
FreeLand.Position = UDim2.new(0, 5, 0, 50)
FreeLand.Size = UDim2.new(0, 130, 0, 35)
FreeLand.ZIndex = 5
FreeLand.Style = Enum.ButtonStyle.RobloxRoundButton
FreeLand.Font = Enum.Font.SourceSans
FreeLand.FontSize = Enum.FontSize.Size14
FreeLand.Text = "Free Land"

WhitelistAll.Name = "WhitelistAll"
WhitelistAll.Parent = LT2SideFrame
WhitelistAll.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistAll.BorderColor3 = Color3.new(0, 0, 0)
WhitelistAll.Position = UDim2.new(0, 5, 0, 90)
WhitelistAll.Size = UDim2.new(0, 130, 0, 35)
WhitelistAll.ZIndex = 5
WhitelistAll.Style = Enum.ButtonStyle.RobloxRoundButton
WhitelistAll.Font = Enum.Font.SourceSans
WhitelistAll.FontSize = Enum.FontSize.Size14
WhitelistAll.Text = "Get whitelisted to all"

TeleportTool.Name = "TeleportTool"
TeleportTool.Parent = LT2SideFrame
TeleportTool.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportTool.BorderColor3 = Color3.new(0, 0, 0)
TeleportTool.Position = UDim2.new(0, 5, 0, 130)
TeleportTool.Size = UDim2.new(0, 130, 0, 35)
TeleportTool.ZIndex = 5
TeleportTool.Style = Enum.ButtonStyle.RobloxRoundButton
TeleportTool.Font = Enum.Font.SourceSans
TeleportTool.FontSize = Enum.FontSize.Size14
TeleportTool.Text = "Teleport Tool"

UrbisSideFrame.Name = "UrbisSideFrame"
UrbisSideFrame.Parent = skryptec_hub
UrbisSideFrame.Active = true
UrbisSideFrame.BackgroundColor3 = Color3.new(1, 1, 1)
UrbisSideFrame.BackgroundTransparency = 0.69999998807907
UrbisSideFrame.BorderColor3 = Color3.new(0, 0, 0)
UrbisSideFrame.Draggable = true
UrbisSideFrame.Position = UDim2.new(0.5, 250, 0.5, -250)
UrbisSideFrame.Size = UDim2.new(0, 150, 0, 300)
UrbisSideFrame.Visible = false
UrbisSideFrame.ZIndex = 2
UrbisSideFrame.CanvasSize = UDim2.new(0, 0, 0, 1000)
UrbisSideFrame.ScrollBarThickness = 8

BGShadow_11.Name = "BGShadow"
BGShadow_11.Parent = UrbisSideFrame
BGShadow_11.Active = true
BGShadow_11.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_11.BackgroundTransparency = 0.30000001192093
BGShadow_11.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_11.BorderSizePixel = 0
BGShadow_11.Position = UDim2.new(0, 1, 0, 1)
BGShadow_11.Size = UDim2.new(0, 150, 0, 1000)

GiveMoney.Name = "GiveMoney"
GiveMoney.Parent = UrbisSideFrame
GiveMoney.BackgroundColor3 = Color3.new(0, 0, 0)
GiveMoney.BorderColor3 = Color3.new(0, 0, 0)
GiveMoney.Position = UDim2.new(0, 5, 0, 10)
GiveMoney.Size = UDim2.new(0, 130, 0, 35)
GiveMoney.ZIndex = 5
GiveMoney.Style = Enum.ButtonStyle.RobloxRoundButton
GiveMoney.Font = Enum.Font.SourceSans
GiveMoney.FontSize = Enum.FontSize.Size14
GiveMoney.Text = "Set Money"

UrbisBottomFrame.Name = "UrbisBottomFrame"
UrbisBottomFrame.Parent = skryptec_hub
UrbisBottomFrame.Active = true
UrbisBottomFrame.BackgroundColor3 = Color3.new(1, 1, 1)
UrbisBottomFrame.BackgroundTransparency = 0.69999998807907
UrbisBottomFrame.BorderColor3 = Color3.new(0, 0, 0)
UrbisBottomFrame.Draggable = true
UrbisBottomFrame.Position = UDim2.new(0.5, -250, 0.5, 50)
UrbisBottomFrame.Size = UDim2.new(0, 500, 0, 50)
UrbisBottomFrame.Visible = false
UrbisBottomFrame.ZIndex = 2

SetType_5.Name = "SetType"
SetType_5.Parent = UrbisBottomFrame
SetType_5.BackgroundColor3 = Color3.new(0, 0, 0)
SetType_5.BorderColor3 = Color3.new(0, 0, 0)
SetType_5.Position = UDim2.new(0, 375, 0, 7)
SetType_5.Size = UDim2.new(0, 100, 0, 35)
SetType_5.ZIndex = 5
SetType_5.Style = Enum.ButtonStyle.RobloxRoundButton
SetType_5.Font = Enum.Font.SourceSans
SetType_5.FontSize = Enum.FontSize.Size14
SetType_5.Text = "Set Type"

BGShadow_12.Name = "BGShadow"
BGShadow_12.Parent = UrbisBottomFrame
BGShadow_12.Active = true
BGShadow_12.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_12.BackgroundTransparency = 0.30000001192093
BGShadow_12.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_12.BorderSizePixel = 0
BGShadow_12.Position = UDim2.new(0, 1, 0, 1)
BGShadow_12.Size = UDim2.new(0, 500, 0, 50)

UrbisType.Name = "UrbisType"
UrbisType.Parent = UrbisBottomFrame
UrbisType.BackgroundColor3 = Color3.new(0, 0, 0)
UrbisType.BackgroundTransparency = 0.60000002384186
UrbisType.Position = UDim2.new(0, 215, 0, 10)
UrbisType.Size = UDim2.new(0, 150, 0, 30)
UrbisType.ZIndex = 2
UrbisType.Font = Enum.Font.SourceSans
UrbisType.FontSize = Enum.FontSize.Size14
UrbisType.Text = "Type"
UrbisType.TextColor3 = Color3.new(1, 1, 1)

UrbisValue.Name = "UrbisValue"
UrbisValue.Parent = UrbisBottomFrame
UrbisValue.BackgroundColor3 = Color3.new(0, 0, 0)
UrbisValue.BackgroundTransparency = 0.60000002384186
UrbisValue.Position = UDim2.new(0, 35, 0, 10)
UrbisValue.Size = UDim2.new(0, 50, 0, 30)
UrbisValue.ZIndex = 2
UrbisValue.Font = Enum.Font.SourceSans
UrbisValue.FontSize = Enum.FontSize.Size14
UrbisValue.Text = "0"
UrbisValue.TextColor3 = Color3.new(1, 1, 1)

SetValue_5.Name = "SetValue"
SetValue_5.Parent = UrbisBottomFrame
SetValue_5.BackgroundColor3 = Color3.new(0, 0, 0)
SetValue_5.BorderColor3 = Color3.new(0, 0, 0)
SetValue_5.Position = UDim2.new(0, 95, 0, 7)
SetValue_5.Size = UDim2.new(0, 100, 0, 35)
SetValue_5.ZIndex = 5
SetValue_5.Style = Enum.ButtonStyle.RobloxRoundButton
SetValue_5.Font = Enum.Font.SourceSans
SetValue_5.FontSize = Enum.FontSize.Size14
SetValue_5.Text = "Set Value"

ApocSkinFrame.Name = "ApocSkinFrame"
ApocSkinFrame.Parent = skryptec_hub
ApocSkinFrame.Active = true
ApocSkinFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ApocSkinFrame.BackgroundTransparency = 0.69999998807907
ApocSkinFrame.BorderColor3 = Color3.new(0, 0, 0)
ApocSkinFrame.Draggable = true
ApocSkinFrame.Position = UDim2.new(0.5, -250, 0.5, 150)
ApocSkinFrame.Size = UDim2.new(0, 375, 0, 90)
ApocSkinFrame.Visible = false
ApocSkinFrame.ZIndex = 2

BGShadow_13.Name = "BGShadow"
BGShadow_13.Parent = ApocSkinFrame
BGShadow_13.Active = true
BGShadow_13.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_13.BackgroundTransparency = 0.30000001192093
BGShadow_13.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_13.BorderSizePixel = 0
BGShadow_13.Position = UDim2.new(0, 1, 0, 1)
BGShadow_13.Size = UDim2.new(0, 375, 0, 90)

ApocSColor.Name = "ApocSColor"
ApocSColor.Parent = ApocSkinFrame
ApocSColor.BackgroundColor3 = Color3.new(0, 0, 0)
ApocSColor.BackgroundTransparency = 0.60000002384186
ApocSColor.Position = UDim2.new(0, 35, 0, 10)
ApocSColor.Size = UDim2.new(0, 50, 0, 30)
ApocSColor.ZIndex = 2
ApocSColor.Font = Enum.Font.SourceSans
ApocSColor.FontSize = Enum.FontSize.Size14
ApocSColor.Text = "0"
ApocSColor.TextColor3 = Color3.new(1, 1, 1)

ApocSMaterial.Name = "ApocSMaterial"
ApocSMaterial.Parent = ApocSkinFrame
ApocSMaterial.BackgroundColor3 = Color3.new(0, 0, 0)
ApocSMaterial.BackgroundTransparency = 0.60000002384186
ApocSMaterial.Position = UDim2.new(0, 200, 0, 10)
ApocSMaterial.Size = UDim2.new(0, 50, 0, 30)
ApocSMaterial.ZIndex = 2
ApocSMaterial.Font = Enum.Font.SourceSans
ApocSMaterial.FontSize = Enum.FontSize.Size14
ApocSMaterial.Text = "0"
ApocSMaterial.TextColor3 = Color3.new(1, 1, 1)

SetMaterial.Name = "SetMaterial"
SetMaterial.Parent = ApocSkinFrame
SetMaterial.BackgroundColor3 = Color3.new(0, 0, 0)
SetMaterial.BorderColor3 = Color3.new(0, 0, 0)
SetMaterial.Position = UDim2.new(0, 270, 0, 7)
SetMaterial.Size = UDim2.new(0, 80, 0, 35)
SetMaterial.ZIndex = 5
SetMaterial.Style = Enum.ButtonStyle.RobloxRoundButton
SetMaterial.Font = Enum.Font.SourceSans
SetMaterial.FontSize = Enum.FontSize.Size14
SetMaterial.Text = "Set Material"

SetColor.Name = "SetColor"
SetColor.Parent = ApocSkinFrame
SetColor.BackgroundColor3 = Color3.new(0, 0, 0)
SetColor.BorderColor3 = Color3.new(0, 0, 0)
SetColor.Position = UDim2.new(0, 100, 0, 7)
SetColor.Size = UDim2.new(0, 80, 0, 35)
SetColor.ZIndex = 5
SetColor.Style = Enum.ButtonStyle.RobloxRoundButton
SetColor.Font = Enum.Font.SourceSans
SetColor.FontSize = Enum.FontSize.Size14
SetColor.Text = "Set Color"

ApocSColor2.Name = "ApocSColor2"
ApocSColor2.Parent = ApocSkinFrame
ApocSColor2.BackgroundColor3 = Color3.new(0, 0, 0)
ApocSColor2.BackgroundTransparency = 0.60000002384186
ApocSColor2.Position = UDim2.new(0, 35, 0, 50)
ApocSColor2.Size = UDim2.new(0, 50, 0, 30)
ApocSColor2.ZIndex = 2
ApocSColor2.Font = Enum.Font.SourceSans
ApocSColor2.FontSize = Enum.FontSize.Size14
ApocSColor2.Text = "0"
ApocSColor2.TextColor3 = Color3.new(1, 1, 1)

SetColor2.Name = "SetColor2"
SetColor2.Parent = ApocSkinFrame
SetColor2.BackgroundColor3 = Color3.new(0, 0, 0)
SetColor2.BorderColor3 = Color3.new(0, 0, 0)
SetColor2.Position = UDim2.new(0, 100, 0, 47)
SetColor2.Size = UDim2.new(0, 80, 0, 35)
SetColor2.ZIndex = 5
SetColor2.Style = Enum.ButtonStyle.RobloxRoundButton
SetColor2.Font = Enum.Font.SourceSans
SetColor2.FontSize = Enum.FontSize.Size14
SetColor2.Text = "Set Color 2"

SetMaterial2.Name = "SetMaterial2"
SetMaterial2.Parent = ApocSkinFrame
SetMaterial2.BackgroundColor3 = Color3.new(0, 0, 0)
SetMaterial2.BorderColor3 = Color3.new(0, 0, 0)
SetMaterial2.Position = UDim2.new(0, 270, 0, 47)
SetMaterial2.Size = UDim2.new(0, 80, 0, 35)
SetMaterial2.ZIndex = 5
SetMaterial2.Style = Enum.ButtonStyle.RobloxRoundButton
SetMaterial2.Font = Enum.Font.SourceSans
SetMaterial2.FontSize = Enum.FontSize.Size14
SetMaterial2.Text = "Set Material 2"

ApocSMaterial2.Name = "ApocSMaterial2"
ApocSMaterial2.Parent = ApocSkinFrame
ApocSMaterial2.BackgroundColor3 = Color3.new(0, 0, 0)
ApocSMaterial2.BackgroundTransparency = 0.60000002384186
ApocSMaterial2.Position = UDim2.new(0, 200, 0, 50)
ApocSMaterial2.Size = UDim2.new(0, 50, 0, 30)
ApocSMaterial2.ZIndex = 2
ApocSMaterial2.Font = Enum.Font.SourceSans
ApocSMaterial2.FontSize = Enum.FontSize.Size14
ApocSMaterial2.Text = "0"
ApocSMaterial2.TextColor3 = Color3.new(1, 1, 1)

ApocClothesFrame.Name = "ApocClothesFrame"
ApocClothesFrame.Parent = skryptec_hub
ApocClothesFrame.Active = true
ApocClothesFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ApocClothesFrame.BackgroundTransparency = 0.69999998807907
ApocClothesFrame.BorderColor3 = Color3.new(0, 0, 0)
ApocClothesFrame.Draggable = true
ApocClothesFrame.Position = UDim2.new(0.5, -250, 0.5, 100)
ApocClothesFrame.Size = UDim2.new(0, 375, 0, 50)
ApocClothesFrame.Visible = false
ApocClothesFrame.ZIndex = 2

BGShadow_14.Name = "BGShadow"
BGShadow_14.Parent = ApocClothesFrame
BGShadow_14.Active = true
BGShadow_14.BackgroundColor3 = Color3.new(0, 0, 0)
BGShadow_14.BackgroundTransparency = 0.30000001192093
BGShadow_14.BorderColor3 = Color3.new(0, 0, 0)
BGShadow_14.BorderSizePixel = 0
BGShadow_14.Position = UDim2.new(0, 1, 0, 1)
BGShadow_14.Size = UDim2.new(0, 375, 0, 50)

ApocExtra1.Name = "ApocExtra1"
ApocExtra1.Parent = ApocClothesFrame
ApocExtra1.BackgroundColor3 = Color3.new(0, 0, 0)
ApocExtra1.BackgroundTransparency = 0.60000002384186
ApocExtra1.Position = UDim2.new(0, 35, 0, 10)
ApocExtra1.Size = UDim2.new(0, 50, 0, 30)
ApocExtra1.ZIndex = 2
ApocExtra1.Font = Enum.Font.SourceSans
ApocExtra1.FontSize = Enum.FontSize.Size14
ApocExtra1.Text = "0"
ApocExtra1.TextColor3 = Color3.new(1, 1, 1)

ApocExtra2.Name = "ApocExtra2"
ApocExtra2.Parent = ApocClothesFrame
ApocExtra2.BackgroundColor3 = Color3.new(0, 0, 0)
ApocExtra2.BackgroundTransparency = 0.60000002384186
ApocExtra2.Position = UDim2.new(0, 200, 0, 10)
ApocExtra2.Size = UDim2.new(0, 50, 0, 30)
ApocExtra2.ZIndex = 2
ApocExtra2.Font = Enum.Font.SourceSans
ApocExtra2.FontSize = Enum.FontSize.Size14
ApocExtra2.Text = "0"
ApocExtra2.TextColor3 = Color3.new(1, 1, 1)

SetPants.Name = "SetPants"
SetPants.Parent = ApocClothesFrame
SetPants.BackgroundColor3 = Color3.new(0, 0, 0)
SetPants.BorderColor3 = Color3.new(0, 0, 0)
SetPants.Position = UDim2.new(0, 270, 0, 7)
SetPants.Size = UDim2.new(0, 80, 0, 35)
SetPants.ZIndex = 5
SetPants.Style = Enum.ButtonStyle.RobloxRoundButton
SetPants.Font = Enum.Font.SourceSans
SetPants.FontSize = Enum.FontSize.Size14
SetPants.Text = "Set Pants"

SetShirt.Name = "SetShirt"
SetShirt.Parent = ApocClothesFrame
SetShirt.BackgroundColor3 = Color3.new(0, 0, 0)
SetShirt.BorderColor3 = Color3.new(0, 0, 0)
SetShirt.Position = UDim2.new(0, 100, 0, 7)
SetShirt.Size = UDim2.new(0, 80, 0, 35)
SetShirt.ZIndex = 5
SetShirt.Style = Enum.ButtonStyle.RobloxRoundButton
SetShirt.Font = Enum.Font.SourceSans
SetShirt.FontSize = Enum.FontSize.Size14
SetShirt.Text = "Set Shirt"

print("GUI succesfully created.")

--[[ GUI Functions ]]--
print("Preparing functions....")
wait(1)
print("Functions prepared.")
-- // Main \\ --
game.CoreGui.skryptec_hub.Hidden.Show.MouseButton1Down:connect(function() 
game.CoreGui.skryptec_hub.MenuFrame.Visible = true
game.CoreGui.skryptec_hub.Hidden.Show.Visible = false
game.CoreGui.skryptec_hub.Hidden.Hide.Visible = true
end)

game.CoreGui.skryptec_hub.Hidden.Hide.MouseButton1Down:connect(function() 
game.CoreGui.skryptec_hub.MenuFrame.Visible = false
game.CoreGui.skryptec_hub.DeadzoneBottomFrame.Visible = false
game.CoreGui.skryptec_hub.DeadzoneSideFrame.Visible = false
game.CoreGui.skryptec_hub.ApocSideFrame.Visible = false
game.CoreGui.skryptec_hub.ApocBottomFrame.Visible = false
game.CoreGui.skryptec_hub.ApocSkinFrame.Visible = false
game.CoreGui.skryptec_hub.ApocClothesFrame.Visible = false
game.CoreGui.skryptec_hub.DeadMistSideFrame.Visible = false
game.CoreGui.skryptec_hub.DeadMistBottomFrame.Visible = false
game.CoreGui.skryptec_hub.LT2SideFrame.Visible = false
game.CoreGui.skryptec_hub.LT2BottomFrame.Visible = false
game.CoreGui.skryptec_hub.UrbisSideFrame.Visible = false
game.CoreGui.skryptec_hub.UrbisBottomFrame.Visible = false
game.CoreGui.skryptec_hub.Hidden.Hide.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.Hidden.Show.Visible = true
end)

game.CoreGui.skryptec_hub.MenuFrame.Hide.MouseButton1Down:connect(function() 
game.CoreGui.skryptec_hub.MenuFrame.Visible = false
game.CoreGui.skryptec_hub.Hidden.Hide.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.Hidden.Show.Visible = true
end)

game.CoreGui.skryptec_hub.MenuFrame.ShowCredits.MouseButton1Down:connect(function() 
game.CoreGui.skryptec_hub.CreditFrame.Visible = true
game.CoreGui.skryptec_hub.MenuFrame.ShowCredits.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.ExitCredits.Visible = true
end)

game.CoreGui.skryptec_hub.MenuFrame.ExitCredits.MouseButton1Down:connect(function() 
game.CoreGui.skryptec_hub.CreditFrame.Visible = false
game.CoreGui.skryptec_hub.MenuFrame.ShowCredits.Visible = true
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.ExitCredits.Visible = false
end)


-- // Deadzone Remade \\ --
game.CoreGui.skryptec_hub.MenuFrame.Deadzone.MouseButton1Down:connect(function() 
game.CoreGui.skryptec_hub.DeadzoneBottomFrame.Visible = true
game.CoreGui.skryptec_hub.DeadzoneSideFrame.Visible = true
game.CoreGui.skryptec_hub.MenuFrame.DeadzoneHide.Visible = true
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.Deadzone.Visible = false
end)

game.CoreGui.skryptec_hub.MenuFrame.DeadzoneHide.MouseButton1Down:connect(function() 
game.CoreGui.skryptec_hub.DeadzoneBottomFrame.Visible = false
game.CoreGui.skryptec_hub.DeadzoneSideFrame.Visible = false
game.CoreGui.skryptec_hub.MenuFrame.DeadzoneHide.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.Deadzone.Visible = true
end)

-- // Apocalypse Rising \\ --
game.CoreGui.skryptec_hub.MenuFrame.Apocalypse.MouseButton1Down:connect(function() 
	for i,v in pairs(game:service'Players'.LocalPlayer.PlayerScripts:children())do
    if v.Name=='LocalScript'then
        v.Disabled=true;
    end
end
game.CoreGui.skryptec_hub.ApocBottomFrame.Visible = true
game.CoreGui.skryptec_hub.ApocSideFrame.Visible = true
game.CoreGui.skryptec_hub.MenuFrame.ApocalypseHide.Visible = true
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.Apocalypse.Visible = false
end)

game.CoreGui.skryptec_hub.MenuFrame.ApocalypseHide.MouseButton1Down:connect(function()
game.CoreGui.skryptec_hub.ApocBottomFrame.Visible = false
game.CoreGui.skryptec_hub.ApocSideFrame.Visible = false
game.CoreGui.skryptec_hub.ApocSkinFrame.Visible = false
game.CoreGui.skryptec_hub.ApocClothesFrame.Visible = false
game.CoreGui.skryptec_hub.MenuFrame.ApocalypseHide.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.Apocalypse.Visible = true
end)

game.CoreGui.skryptec_hub.ApocBottomFrame.OpenExtra.MouseButton1Down:connect(function()
game.CoreGui.skryptec_hub.ApocSkinFrame.Visible = true
game.CoreGui.skryptec_hub.ApocClothesFrame.Visible = true
game.CoreGui.skryptec_hub.ApocBottomFrame.OpenExtra.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.ApocBottomFrame.CloseExtra.Visible = true
end)

game.CoreGui.skryptec_hub.ApocBottomFrame.CloseExtra.MouseButton1Down:connect(function()
game.CoreGui.skryptec_hub.ApocSkinFrame.Visible = false
game.CoreGui.skryptec_hub.ApocClothesFrame.Visible = false
game.CoreGui.skryptec_hub.ApocBottomFrame.OpenExtra.Visible = true
wait(0.1)
game.CoreGui.skryptec_hub.ApocBottomFrame.CloseExtra.Visible = false
end)

-- // Dead Mist \\ --
game.CoreGui.skryptec_hub.MenuFrame.DeadMist.MouseButton1Down:connect(function() 
game:GetObjects("rbxassetid://393613461")[1].Parent=game.Workspace
game.CoreGui.skryptec_hub.DeadMistBottomFrame.Visible = true
game.CoreGui.skryptec_hub.DeadMistSideFrame.Visible = true
game.CoreGui.skryptec_hub.MenuFrame.DeadMistHide.Visible = true
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.DeadMist.Visible = false
end)

game.CoreGui.skryptec_hub.MenuFrame.DeadMistHide.MouseButton1Down:connect(function()
game.CoreGui.skryptec_hub.DeadMistBottomFrame.Visible = false
game.CoreGui.skryptec_hub.DeadMistSideFrame.Visible = false
game.CoreGui.skryptec_hub.MenuFrame.DeadMistHide.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.DeadMist.Visible = true
end)

-- // Lumber Tycoon 2 \\ --
game.CoreGui.skryptec_hub.MenuFrame.Lumber.MouseButton1Down:connect(function()
game.CoreGui.skryptec_hub.LT2BottomFrame.Visible = true
game.CoreGui.skryptec_hub.LT2SideFrame.Visible = true
game.CoreGui.skryptec_hub.MenuFrame.LumberHide.Visible = true
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.Lumber.Visible = false
end)

game.CoreGui.skryptec_hub.MenuFrame.LumberHide.MouseButton1Down:connect(function()
game.CoreGui.skryptec_hub.LT2BottomFrame.Visible = false
game.CoreGui.skryptec_hub.LT2SideFrame.Visible = false
game.CoreGui.skryptec_hub.MenuFrame.LumberHide.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.Lumber.Visible = true
end)

-- // Urbis \\ --
game.CoreGui.skryptec_hub.MenuFrame.Urbis.MouseButton1Down:connect(function()
game.CoreGui.skryptec_hub.UrbisBottomFrame.Visible = true
game.CoreGui.skryptec_hub.UrbisSideFrame.Visible = true
game.CoreGui.skryptec_hub.MenuFrame.UrbisHide.Visible = true
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.Urbis.Visible = false
end)

game.CoreGui.skryptec_hub.MenuFrame.UrbisHide.MouseButton1Down:connect(function()
game.CoreGui.skryptec_hub.UrbisBottomFrame.Visible = false
game.CoreGui.skryptec_hub.UrbisSideFrame.Visible = false
game.CoreGui.skryptec_hub.MenuFrame.UrbisHide.Visible = false
wait(0.1)
game.CoreGui.skryptec_hub.MenuFrame.Urbis.Visible = true
end)
---\\-------------------//---

--[[ Script Executions ]]--
print("Preparing scripts...")
wait(1)
print("Scripts prepared.")
-- // Deadzone Remade \\ --
game.CoreGui.skryptec_hub.DeadzoneSideFrame.PlayerKills.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrplayerkills.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.Reputation.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrreputation.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.ZombieKills.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrzombiekills.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.BossKills.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrbosskills.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.ItemSpawn.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzritemspawn.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.VehicleSpawn.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrvehiclespawn.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.Wings.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrallwings.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.GodMode.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrgodmode.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.KillDiablo.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrkilldiablo.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.KillBaal.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrkillbaal.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.Pets.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrallpets.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.RestoreAll.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrrestore.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.SpawnBaal.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrspawnbaal.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.SpawnDiablo.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrspawndiablo.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.Cash.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrcash.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.GC.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrgc.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.EXP.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrexp.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.Level.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrlevel.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.SoulCredits.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrsoulcredits.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.Strength.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrstrength.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.StatPoints.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrstatpoints.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.Defence.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrdefence.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadzoneSideFrame.Safezone.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/dzrsafezone.lua", true))()
end)

-- // Apocalypse Rising \\ --
game.CoreGui.skryptec_hub.ApocSideFrame.KillAll.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apockillall.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.TeleportToMe.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocteleportome.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.TeleportMeTo.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocteleportmeto.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.TeleportAll.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocteleportall.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.SpawnItem.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocspawnitem.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.SpawnDeck.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocspawndeck.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.Godmode.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocgodmode.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.SpamText.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocspamtext.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.ItemESP.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocitemesp.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.TeleportCorpse.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apoctpcorpse.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.C4Walk.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocc4walk.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.AllBadges.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocallbadges.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.ZombieKills.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apoczombiekills.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.PlayerKills.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocplayerkills.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.DaysSurvived.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocdayssurvived.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.PlayMusic.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocplaymusic.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.KillPlayer.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apockillplayer.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.LoopKillPlayer.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocloopkillplayer.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.LoopKillAll.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocloopkillall.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.VehicleGod.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocvehiclegod.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.AllBadgesAll.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocallbadgesall.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.VehicleSpeed.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocvehiclespeed.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.HKKit.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apochkkit.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.GKKit.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocgkkit.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.G3Kit.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocg3kit.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.FALKit.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocfalkit.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.PPSHKit.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocppshkit.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.AK12Kit.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocak12kit.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.BuildingKit.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocbuildingkit.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.Accuracy.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocaccuracy.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.TeleportCrates.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocteleportcrates.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.KillZombies.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apockillzombies.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.TeleportVehicle.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocteleportvehicle.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.ClearFog.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocclearfog.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.Spectate.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocspectate.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.GiveSkin.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocgiveskin.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.GiveClothes.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocgiveclothes.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.UnlimitedHunger.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocunlimitedhunger.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.UnlimitedThirst.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocunlimitedthirst.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.PlayerESP.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocplayeresp.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.KickPlayer.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apockickplayer.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.KickOthers.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apockickothers.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.DeleteMap.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocdeletemap.lua", true))()
end)

game.CoreGui.skryptec_hub.ApocSideFrame.DespawnLoot.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/apocdespawnloot.lua", true))()
end)

-- // Dead Mist \\ --
game.CoreGui.skryptec_hub.DeadMistSideFrame.SpawnItem.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/deadmistspawnitem.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadMistSideFrame.ServerMessage.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/deadmistservermessage.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadMistSideFrame.KillPlayer.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/deadmistkillplayer.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadMistSideFrame.KickPlayer.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/deadmistkickplayer.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadMistSideFrame.TeleportVehicle.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/deadmistteleportvehicle.lua", true))()
end)

game.CoreGui.skryptec_hub.DeadMistSideFrame.KillTeleport.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/deadmistkillteleport.lua", true))()
end)

-- // Lumber Tycoon 2 \\ --
game.CoreGui.skryptec_hub.LT2SideFrame.AxePower.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/lt2axepower.lua", true))()
end)

game.CoreGui.skryptec_hub.LT2SideFrame.FreeLand.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/lt2freeland.lua", true))()
end)

game.CoreGui.skryptec_hub.LT2SideFrame.WhitelistAll.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/lt2whitelistall.lua", true))()
end)

game.CoreGui.skryptec_hub.LT2SideFrame.TeleportTool.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/lt2teleporttool.lua", true))()
end)

-- // Urbis \\ --
game.CoreGui.skryptec_hub.UrbisSideFrame.GiveMoney.MouseButton1Click:connect(function()
loadstring(game:HttpGet("marketed.xyz/ypF9ynVhhn8ye9Kv/urbisgivemoney.lua", true))()
end)

---\\-------------------//---