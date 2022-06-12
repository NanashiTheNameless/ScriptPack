-- Objects

local LumberTycoon2 = Instance.new("ScreenGui")
local TopBar = Instance.new("Frame")
local Background = Instance.new("Frame")
local Title = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Credits = Instance.new("Frame")
local TitleCredits = Instance.new("TextLabel")
local Broto = Instance.new("TextLabel")
local Code = Instance.new("TextLabel")
local Broto_2 = Instance.new("TextLabel")
local PlotTP = Instance.new("TextButton")
local SpawnTP = Instance.new("TextButton")
local BringWood = Instance.new("TextButton")
local Line1 = Instance.new("Frame")
local Line2 = Instance.new("Frame")
local Line3 = Instance.new("Frame")
local PalmIsland = Instance.new("TextLabel")
local Teleport7 = Instance.new("TextButton")
local OrangeLine = Instance.new("Frame")
local WoodQuality = Instance.new("TextLabel")
local Rating = Instance.new("TextLabel")
local Cave = Instance.new("TextLabel")
local Teleport3 = Instance.new("TextButton")
local OrangeLine_2 = Instance.new("Frame")
local WoodQuality_2 = Instance.new("TextLabel")
local Rating_2 = Instance.new("TextLabel")
local Volcano = Instance.new("TextLabel")
local Teleport9 = Instance.new("TextButton")
local OrangeLine_3 = Instance.new("Frame")
local WoodQuality_3 = Instance.new("TextLabel")
local Rating_3 = Instance.new("TextLabel")
local Swamp = Instance.new("TextLabel")
local Teleport8 = Instance.new("TextButton")
local OrangeLine_4 = Instance.new("Frame")
local WoodQuality_4 = Instance.new("TextLabel")
local Rating_4 = Instance.new("TextLabel")
local BobsShack = Instance.new("TextLabel")
local Teleport = Instance.new("TextButton")
local OrangeLine_5 = Instance.new("Frame")
local WoodQuality_5 = Instance.new("TextLabel")
local Rating_5 = Instance.new("TextLabel")
local LinksLogic = Instance.new("TextLabel")
local Teleport6 = Instance.new("TextButton")
local OrangeLine_6 = Instance.new("Frame")
local WoodQuality_6 = Instance.new("TextLabel")
local Rating_6 = Instance.new("TextLabel")
local WoodRUs = Instance.new("TextLabel")
local Teleport10 = Instance.new("TextButton")
local OrangeLine_7 = Instance.new("Frame")
local WoodQuality_7 = Instance.new("TextLabel")
local Rating_7 = Instance.new("TextLabel")
local LandStore = Instance.new("TextLabel")
local Teleport5 = Instance.new("TextButton")
local OrangeLine_8 = Instance.new("Frame")
local WoodQuality_8 = Instance.new("TextLabel")
local Rating_8 = Instance.new("TextLabel")
local Dock = Instance.new("TextLabel")
local Teleport4 = Instance.new("TextButton")
local OrangeLine_9 = Instance.new("Frame")
local WoodQuality_9 = Instance.new("TextLabel")
local Rating_9 = Instance.new("TextLabel")
local BoxedCars = Instance.new("TextLabel")
local Teleport2 = Instance.new("TextButton")
local OrangeLine_10 = Instance.new("Frame")
local WoodQuality_10 = Instance.new("TextLabel")
local Rating_10 = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Open = Instance.new("TextButton")

-- Properties

LumberTycoon2.Name = "LumberTycoon2"
LumberTycoon2.Parent = game.CoreGui

TopBar.Name = "TopBar"
TopBar.Parent = LumberTycoon2
TopBar.Active = true
TopBar.BackgroundColor3 = Color3.new(0.14902, 0.45098, 0.866667)
TopBar.BorderSizePixel = 0
TopBar.Draggable = true
TopBar.Position = UDim2.new(0.19869706, 0, 0.172371641, 0)
TopBar.Selectable = true
TopBar.Size = UDim2.new(0, 739, 0, 17)
TopBar.Visible = false

Background.Name = "Background"
Background.Parent = TopBar
Background.BackgroundColor3 = Color3.new(0.105882, 0.133333, 0.156863)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(4.90248203e-05, 0, 1.01668346, 0)
Background.Size = UDim2.new(0, 739, 0, 544)

Title.Name = "Title"
Title.Parent = Background
Title.BackgroundColor3 = Color3.new(0.14902, 0.45098, 0.866667)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.00872512162, 0, 0.0105350167, 0)
Title.Size = UDim2.new(0, 585, 0, 63)

ImageLabel.Parent = Title
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.Size = UDim2.new(0, 585, 0, 63)
ImageLabel.Image = "rbxassetid://972607194"

Credits.Name = "Credits"
Credits.Parent = Background
Credits.BackgroundColor3 = Color3.new(0.14902, 0.45098, 0.866667)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.809621572, 0, 0.0105350167, 0)
Credits.Size = UDim2.new(0, 133, 0, 530)

TitleCredits.Name = "TitleCredits"
TitleCredits.Parent = Credits
TitleCredits.BackgroundColor3 = Color3.new(1, 1, 1)
TitleCredits.BackgroundTransparency = 1
TitleCredits.BorderSizePixel = 0
TitleCredits.Size = UDim2.new(0, 133, 0, 29)
TitleCredits.Font = Enum.Font.Arial
TitleCredits.FontSize = Enum.FontSize.Size18
TitleCredits.Text = "Credits Below"
TitleCredits.TextColor3 = Color3.new(1, 1, 1)
TitleCredits.TextSize = 18

Broto.Name = "Broto"
Broto.Parent = Credits
Broto.BackgroundColor3 = Color3.new(1, 1, 1)
Broto.BackgroundTransparency = 1
Broto.BorderSizePixel = 0
Broto.Position = UDim2.new(0, 0, 0.0622641519, 0)
Broto.Size = UDim2.new(0, 133, 0, 36)
Broto.Font = Enum.Font.Arial
Broto.FontSize = Enum.FontSize.Size14
Broto.Text = " GUI Design by BrotoBrother#1658"
Broto.TextColor3 = Color3.new(1, 1, 1)
Broto.TextSize = 14
Broto.TextWrapped = true

Code.Name = "Code"
Code.Parent = Credits
Code.BackgroundColor3 = Color3.new(1, 1, 1)
Code.BackgroundTransparency = 1
Code.BorderSizePixel = 0
Code.Position = UDim2.new(0, 0, 0.137735844, 0)
Code.Size = UDim2.new(0, 133, 0, 35)
Code.Font = Enum.Font.Arial
Code.FontSize = Enum.FontSize.Size14
Code.Text = " Scripted By           Harley#2487"
Code.TextColor3 = Color3.new(1, 1, 1)
Code.TextSize = 14
Code.TextWrapped = true

Broto_2.Name = "Broto"
Broto_2.Parent = Credits
Broto_2.BackgroundColor3 = Color3.new(0.14902, 0.45098, 0.866667)
Broto_2.BorderSizePixel = 0
Broto_2.Position = UDim2.new(-4.45488739, 0, 0.883018851, 0)
Broto_2.Size = UDim2.new(0, 585, 0, 22)
Broto_2.Font = Enum.Font.Arial
Broto_2.FontSize = Enum.FontSize.Size18
Broto_2.Text = "(Enjoy scripts like these? Join our discord! discord.me/roleak)"
Broto_2.TextColor3 = Color3.new(1, 1, 1)
Broto_2.TextSize = 16
Broto_2.TextWrapped = true

PlotTP.Name = "PlotTP"
PlotTP.Parent = Background
PlotTP.BackgroundColor3 = Color3.new(0.14902, 0.45098, 0.866667)
PlotTP.BorderSizePixel = 0
PlotTP.Position = UDim2.new(0.00811908022, 0, 0.92463237, 0)
PlotTP.Size = UDim2.new(0, 208, 0, 33)
PlotTP.Font = Enum.Font.Arial
PlotTP.FontSize = Enum.FontSize.Size18
PlotTP.Text = "Teleport to your plot"
PlotTP.TextColor3 = Color3.new(1, 1, 1)
PlotTP.TextSize = 18

SpawnTP.Name = "SpawnTP"
SpawnTP.Parent = Background
SpawnTP.BackgroundColor3 = Color3.new(0.14902, 0.45098, 0.866667)
SpawnTP.BorderSizePixel = 0
SpawnTP.Position = UDim2.new(0.51826793, 0, 0.92463237, 0)
SpawnTP.Size = UDim2.new(0, 208, 0, 33)
SpawnTP.Font = Enum.Font.Arial
SpawnTP.FontSize = Enum.FontSize.Size18
SpawnTP.Text = "Teleport to Spawn"
SpawnTP.TextColor3 = Color3.new(1, 1, 1)
SpawnTP.TextSize = 18

BringWood.Name = "BringWood"
BringWood.Parent = Background
BringWood.BackgroundColor3 = Color3.new(0.14902, 0.45098, 0.866667)
BringWood.BorderSizePixel = 0
BringWood.Position = UDim2.new(0.2976996, 0, 0.92463237, 0)
BringWood.Size = UDim2.new(0, 157, 0, 33)
BringWood.Font = Enum.Font.Arial
BringWood.FontSize = Enum.FontSize.Size18
BringWood.Text = "Bring Wood"
BringWood.TextColor3 = Color3.new(1, 1, 1)
BringWood.TextSize = 18

Line1.Name = "Line1"
Line1.Parent = Background
Line1.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
Line1.BorderSizePixel = 0
Line1.Position = UDim2.new(0.808945, 0, 0.0638438389, 0)
Line1.Size = UDim2.new(0, 133, 0, 4)

Line2.Name = "Line2"
Line2.Parent = Background
Line2.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
Line2.BorderSizePixel = 0
Line2.Position = UDim2.new(0.809621572, 0, 0.137373239, 0)
Line2.Size = UDim2.new(0, 133, 0, 4)

Line3.Name = "Line3"
Line3.Parent = Background
Line3.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
Line3.BorderSizePixel = 0
Line3.Position = UDim2.new(0.808945, 0, 0.209064424, 0)
Line3.Size = UDim2.new(0, 133, 0, 4)

PalmIsland.Name = "PalmIsland"
PalmIsland.Parent = Background
PalmIsland.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
PalmIsland.Position = UDim2.new(0.00811908022, 0, 0.137867644, 0)
PalmIsland.Size = UDim2.new(0, 193, 0, 34)
PalmIsland.Font = Enum.Font.Arial
PalmIsland.FontSize = Enum.FontSize.Size18
PalmIsland.Text = "Palm Island"
PalmIsland.TextColor3 = Color3.new(1, 1, 1)
PalmIsland.TextSize = 18

Teleport7.Name = "Teleport7"
Teleport7.Parent = PalmIsland
Teleport7.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport7.BorderSizePixel = 0
Teleport7.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport7.Size = UDim2.new(0, 76, 0, 34)
Teleport7.Font = Enum.Font.Arial
Teleport7.FontSize = Enum.FontSize.Size18
Teleport7.Text = "Teleport"
Teleport7.TextColor3 = Color3.new(1, 1, 1)
Teleport7.TextSize = 18

OrangeLine.Name = "OrangeLine"
OrangeLine.Parent = PalmIsland
OrangeLine.BackgroundColor3 = Color3.new(1, 0.584314, 0.0431373)
OrangeLine.BorderSizePixel = 0
OrangeLine.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine.Size = UDim2.new(0, 224, 0, 5)

WoodQuality.Name = "WoodQuality"
WoodQuality.Parent = PalmIsland
WoodQuality.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality.BorderSizePixel = 0
WoodQuality.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality.Size = UDim2.new(0, 224, 0, 29)
WoodQuality.Font = Enum.Font.Arial
WoodQuality.FontSize = Enum.FontSize.Size18
WoodQuality.Text = "Wood Quality: 65"
WoodQuality.TextColor3 = Color3.new(1, 1, 1)
WoodQuality.TextSize = 16

Rating.Name = "Rating"
Rating.Parent = PalmIsland
Rating.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating.BorderSizePixel = 0
Rating.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating.Size = UDim2.new(0, 74, 0, 35)
Rating.Font = Enum.Font.Arial
Rating.FontSize = Enum.FontSize.Size18
Rating.Text = "Decent"
Rating.TextColor3 = Color3.new(1, 1, 1)
Rating.TextSize = 16

Cave.Name = "Cave"
Cave.Parent = Background
Cave.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
Cave.Position = UDim2.new(0.00811908022, 0, 0.209558815, 0)
Cave.Size = UDim2.new(0, 193, 0, 34)
Cave.Font = Enum.Font.Arial
Cave.FontSize = Enum.FontSize.Size18
Cave.Text = "Cave"
Cave.TextColor3 = Color3.new(1, 1, 1)
Cave.TextSize = 18

Teleport3.Name = "Teleport3"
Teleport3.Parent = Cave
Teleport3.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport3.BorderSizePixel = 0
Teleport3.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport3.Size = UDim2.new(0, 76, 0, 34)
Teleport3.Font = Enum.Font.Arial
Teleport3.FontSize = Enum.FontSize.Size18
Teleport3.Text = "Teleport"
Teleport3.TextColor3 = Color3.new(1, 1, 1)
Teleport3.TextSize = 18

OrangeLine_2.Name = "OrangeLine"
OrangeLine_2.Parent = Cave
OrangeLine_2.BackgroundColor3 = Color3.new(1, 0.584314, 0.0431373)
OrangeLine_2.BorderSizePixel = 0
OrangeLine_2.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_2.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_2.Name = "WoodQuality"
WoodQuality_2.Parent = Cave
WoodQuality_2.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_2.BorderSizePixel = 0
WoodQuality_2.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_2.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_2.Font = Enum.Font.Arial
WoodQuality_2.FontSize = Enum.FontSize.Size18
WoodQuality_2.Text = "Wood Quality: 90"
WoodQuality_2.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_2.TextSize = 16

Rating_2.Name = "Rating"
Rating_2.Parent = Cave
Rating_2.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_2.BorderSizePixel = 0
Rating_2.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_2.Size = UDim2.new(0, 74, 0, 35)
Rating_2.Font = Enum.Font.Arial
Rating_2.FontSize = Enum.FontSize.Size18
Rating_2.Text = "Good"
Rating_2.TextColor3 = Color3.new(1, 1, 1)
Rating_2.TextSize = 16

Volcano.Name = "Volcano"
Volcano.Parent = Background
Volcano.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
Volcano.Position = UDim2.new(0.0074424902, 0, 0.28125, 0)
Volcano.Size = UDim2.new(0, 193, 0, 34)
Volcano.Font = Enum.Font.Arial
Volcano.FontSize = Enum.FontSize.Size18
Volcano.Text = "Volcano"
Volcano.TextColor3 = Color3.new(1, 1, 1)
Volcano.TextSize = 18

Teleport9.Name = "Teleport9"
Teleport9.Parent = Volcano
Teleport9.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport9.BorderSizePixel = 0
Teleport9.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport9.Size = UDim2.new(0, 76, 0, 34)
Teleport9.Font = Enum.Font.Arial
Teleport9.FontSize = Enum.FontSize.Size18
Teleport9.Text = "Teleport"
Teleport9.TextColor3 = Color3.new(1, 1, 1)
Teleport9.TextSize = 18

OrangeLine_3.Name = "OrangeLine"
OrangeLine_3.Parent = Volcano
OrangeLine_3.BackgroundColor3 = Color3.new(1, 0.584314, 0.0431373)
OrangeLine_3.BorderSizePixel = 0
OrangeLine_3.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_3.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_3.Name = "WoodQuality"
WoodQuality_3.Parent = Volcano
WoodQuality_3.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_3.BorderSizePixel = 0
WoodQuality_3.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_3.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_3.Font = Enum.Font.Arial
WoodQuality_3.FontSize = Enum.FontSize.Size18
WoodQuality_3.Text = "Wood Quality: 86"
WoodQuality_3.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_3.TextSize = 16

Rating_3.Name = "Rating"
Rating_3.Parent = Volcano
Rating_3.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_3.BorderSizePixel = 0
Rating_3.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_3.Size = UDim2.new(0, 74, 0, 35)
Rating_3.Font = Enum.Font.Arial
Rating_3.FontSize = Enum.FontSize.Size18
Rating_3.Text = "Good"
Rating_3.TextColor3 = Color3.new(1, 1, 1)
Rating_3.TextSize = 16

Swamp.Name = "Swamp"
Swamp.Parent = Background
Swamp.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
Swamp.Position = UDim2.new(0.0074424902, 0, 0.352941155, 0)
Swamp.Size = UDim2.new(0, 193, 0, 34)
Swamp.Font = Enum.Font.Arial
Swamp.FontSize = Enum.FontSize.Size18
Swamp.Text = "Swamp"
Swamp.TextColor3 = Color3.new(1, 1, 1)
Swamp.TextSize = 18

Teleport8.Name = "Teleport8"
Teleport8.Parent = Swamp
Teleport8.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport8.BorderSizePixel = 0
Teleport8.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport8.Size = UDim2.new(0, 76, 0, 34)
Teleport8.Font = Enum.Font.Arial
Teleport8.FontSize = Enum.FontSize.Size18
Teleport8.Text = "Teleport"
Teleport8.TextColor3 = Color3.new(1, 1, 1)
Teleport8.TextSize = 18

OrangeLine_4.Name = "OrangeLine"
OrangeLine_4.Parent = Swamp
OrangeLine_4.BackgroundColor3 = Color3.new(1, 0.584314, 0.0431373)
OrangeLine_4.BorderSizePixel = 0
OrangeLine_4.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_4.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_4.Name = "WoodQuality"
WoodQuality_4.Parent = Swamp
WoodQuality_4.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_4.BorderSizePixel = 0
WoodQuality_4.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_4.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_4.Font = Enum.Font.Arial
WoodQuality_4.FontSize = Enum.FontSize.Size18
WoodQuality_4.Text = "Wood Quality: 60"
WoodQuality_4.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_4.TextSize = 16

Rating_4.Name = "Rating"
Rating_4.Parent = Swamp
Rating_4.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_4.BorderSizePixel = 0
Rating_4.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_4.Size = UDim2.new(0, 74, 0, 35)
Rating_4.Font = Enum.Font.Arial
Rating_4.FontSize = Enum.FontSize.Size18
Rating_4.Text = "Decent"
Rating_4.TextColor3 = Color3.new(1, 1, 1)
Rating_4.TextSize = 16

BobsShack.Name = "BobsShack"
BobsShack.Parent = Background
BobsShack.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
BobsShack.Position = UDim2.new(0.0074424902, 0, 0.424632341, 0)
BobsShack.Size = UDim2.new(0, 193, 0, 34)
BobsShack.Font = Enum.Font.Arial
BobsShack.FontSize = Enum.FontSize.Size18
BobsShack.Text = "Bob's Shack"
BobsShack.TextColor3 = Color3.new(1, 1, 1)
BobsShack.TextSize = 18

Teleport.Name = "Teleport"
Teleport.Parent = BobsShack
Teleport.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport.BorderSizePixel = 0
Teleport.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport.Size = UDim2.new(0, 76, 0, 34)
Teleport.Font = Enum.Font.Arial
Teleport.FontSize = Enum.FontSize.Size18
Teleport.Text = "Teleport"
Teleport.TextColor3 = Color3.new(1, 1, 1)
Teleport.TextSize = 18

OrangeLine_5.Name = "OrangeLine"
OrangeLine_5.Parent = BobsShack
OrangeLine_5.BackgroundColor3 = Color3.new(0.364706, 0.705882, 0.364706)
OrangeLine_5.BorderSizePixel = 0
OrangeLine_5.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_5.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_5.Name = "WoodQuality"
WoodQuality_5.Parent = BobsShack
WoodQuality_5.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_5.BorderSizePixel = 0
WoodQuality_5.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_5.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_5.Font = Enum.Font.Arial
WoodQuality_5.FontSize = Enum.FontSize.Size18
WoodQuality_5.Text = "Recipe Items"
WoodQuality_5.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_5.TextSize = 16

Rating_5.Name = "Rating"
Rating_5.Parent = BobsShack
Rating_5.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_5.BorderSizePixel = 0
Rating_5.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_5.Size = UDim2.new(0, 74, 0, 35)
Rating_5.Font = Enum.Font.Arial
Rating_5.FontSize = Enum.FontSize.Size18
Rating_5.Text = "Good"
Rating_5.TextColor3 = Color3.new(1, 1, 1)
Rating_5.TextSize = 16

LinksLogic.Name = "LinksLogic"
LinksLogic.Parent = Background
LinksLogic.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
LinksLogic.Position = UDim2.new(0.0074424902, 0, 0.496323496, 0)
LinksLogic.Size = UDim2.new(0, 193, 0, 34)
LinksLogic.Font = Enum.Font.Arial
LinksLogic.FontSize = Enum.FontSize.Size18
LinksLogic.Text = "Link's Logic"
LinksLogic.TextColor3 = Color3.new(1, 1, 1)
LinksLogic.TextSize = 18

Teleport6.Name = "Teleport6"
Teleport6.Parent = LinksLogic
Teleport6.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport6.BorderSizePixel = 0
Teleport6.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport6.Size = UDim2.new(0, 76, 0, 34)
Teleport6.Font = Enum.Font.Arial
Teleport6.FontSize = Enum.FontSize.Size18
Teleport6.Text = "Teleport"
Teleport6.TextColor3 = Color3.new(1, 1, 1)
Teleport6.TextSize = 18

OrangeLine_6.Name = "OrangeLine"
OrangeLine_6.Parent = LinksLogic
OrangeLine_6.BackgroundColor3 = Color3.new(0.364706, 0.705882, 0.364706)
OrangeLine_6.BorderSizePixel = 0
OrangeLine_6.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_6.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_6.Name = "WoodQuality"
WoodQuality_6.Parent = LinksLogic
WoodQuality_6.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_6.BorderSizePixel = 0
WoodQuality_6.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_6.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_6.Font = Enum.Font.Arial
WoodQuality_6.FontSize = Enum.FontSize.Size18
WoodQuality_6.Text = "Recipe Items"
WoodQuality_6.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_6.TextSize = 16

Rating_6.Name = "Rating"
Rating_6.Parent = LinksLogic
Rating_6.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_6.BorderSizePixel = 0
Rating_6.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_6.Size = UDim2.new(0, 74, 0, 35)
Rating_6.Font = Enum.Font.Arial
Rating_6.FontSize = Enum.FontSize.Size18
Rating_6.Text = "Good"
Rating_6.TextColor3 = Color3.new(1, 1, 1)
Rating_6.TextSize = 16

WoodRUs.Name = "WoodRUs"
WoodRUs.Parent = Background
WoodRUs.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
WoodRUs.Position = UDim2.new(0.00811908022, 0, 0.568014681, 0)
WoodRUs.Size = UDim2.new(0, 193, 0, 34)
WoodRUs.Font = Enum.Font.Arial
WoodRUs.FontSize = Enum.FontSize.Size18
WoodRUs.Text = "Wood R Us"
WoodRUs.TextColor3 = Color3.new(1, 1, 1)
WoodRUs.TextSize = 18

Teleport10.Name = "Teleport10"
Teleport10.Parent = WoodRUs
Teleport10.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport10.BorderSizePixel = 0
Teleport10.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport10.Size = UDim2.new(0, 76, 0, 34)
Teleport10.Font = Enum.Font.Arial
Teleport10.FontSize = Enum.FontSize.Size18
Teleport10.Text = "Teleport"
Teleport10.TextColor3 = Color3.new(1, 1, 1)
Teleport10.TextSize = 18

OrangeLine_7.Name = "OrangeLine"
OrangeLine_7.Parent = WoodRUs
OrangeLine_7.BackgroundColor3 = Color3.new(0.364706, 0.705882, 0.364706)
OrangeLine_7.BorderSizePixel = 0
OrangeLine_7.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_7.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_7.Name = "WoodQuality"
WoodQuality_7.Parent = WoodRUs
WoodQuality_7.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_7.BorderSizePixel = 0
WoodQuality_7.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_7.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_7.Font = Enum.Font.Arial
WoodQuality_7.FontSize = Enum.FontSize.Size18
WoodQuality_7.Text = "Recipe Items"
WoodQuality_7.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_7.TextSize = 16

Rating_7.Name = "Rating"
Rating_7.Parent = WoodRUs
Rating_7.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_7.BorderSizePixel = 0
Rating_7.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_7.Size = UDim2.new(0, 74, 0, 35)
Rating_7.Font = Enum.Font.Arial
Rating_7.FontSize = Enum.FontSize.Size18
Rating_7.Text = "Good"
Rating_7.TextColor3 = Color3.new(1, 1, 1)
Rating_7.TextSize = 16

LandStore.Name = "LandStore"
LandStore.Parent = Background
LandStore.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
LandStore.Position = UDim2.new(0.00811908022, 0, 0.639705837, 0)
LandStore.Size = UDim2.new(0, 193, 0, 34)
LandStore.Font = Enum.Font.Arial
LandStore.FontSize = Enum.FontSize.Size18
LandStore.Text = "Land Store"
LandStore.TextColor3 = Color3.new(1, 1, 1)
LandStore.TextSize = 18

Teleport5.Name = "Teleport5"
Teleport5.Parent = LandStore
Teleport5.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport5.BorderSizePixel = 0
Teleport5.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport5.Size = UDim2.new(0, 76, 0, 34)
Teleport5.Font = Enum.Font.Arial
Teleport5.FontSize = Enum.FontSize.Size18
Teleport5.Text = "Teleport"
Teleport5.TextColor3 = Color3.new(1, 1, 1)
Teleport5.TextSize = 18

OrangeLine_8.Name = "OrangeLine"
OrangeLine_8.Parent = LandStore
OrangeLine_8.BackgroundColor3 = Color3.new(0.364706, 0.705882, 0.364706)
OrangeLine_8.BorderSizePixel = 0
OrangeLine_8.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_8.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_8.Name = "WoodQuality"
WoodQuality_8.Parent = LandStore
WoodQuality_8.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_8.BorderSizePixel = 0
WoodQuality_8.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_8.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_8.Font = Enum.Font.Arial
WoodQuality_8.FontSize = Enum.FontSize.Size18
WoodQuality_8.Text = "Recipe Items"
WoodQuality_8.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_8.TextSize = 16

Rating_8.Name = "Rating"
Rating_8.Parent = LandStore
Rating_8.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_8.BorderSizePixel = 0
Rating_8.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_8.Size = UDim2.new(0, 74, 0, 35)
Rating_8.Font = Enum.Font.Arial
Rating_8.FontSize = Enum.FontSize.Size18
Rating_8.Text = "Good"
Rating_8.TextColor3 = Color3.new(1, 1, 1)
Rating_8.TextSize = 16

Dock.Name = "Dock"
Dock.Parent = Background
Dock.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
Dock.Position = UDim2.new(0.00800000038, 0, 0.711000025, 0)
Dock.Size = UDim2.new(0, 193, 0, 34)
Dock.Font = Enum.Font.Arial
Dock.FontSize = Enum.FontSize.Size18
Dock.Text = "Dock"
Dock.TextColor3 = Color3.new(1, 1, 1)
Dock.TextSize = 18

Teleport4.Name = "Teleport4"
Teleport4.Parent = Dock
Teleport4.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport4.BorderSizePixel = 0
Teleport4.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport4.Size = UDim2.new(0, 76, 0, 34)
Teleport4.Font = Enum.Font.Arial
Teleport4.FontSize = Enum.FontSize.Size18
Teleport4.Text = "Teleport"
Teleport4.TextColor3 = Color3.new(1, 1, 1)
Teleport4.TextSize = 18

OrangeLine_9.Name = "OrangeLine"
OrangeLine_9.Parent = Dock
OrangeLine_9.BackgroundColor3 = Color3.new(0.364706, 0.705882, 0.364706)
OrangeLine_9.BorderSizePixel = 0
OrangeLine_9.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_9.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_9.Name = "WoodQuality"
WoodQuality_9.Parent = Dock
WoodQuality_9.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_9.BorderSizePixel = 0
WoodQuality_9.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_9.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_9.Font = Enum.Font.Arial
WoodQuality_9.FontSize = Enum.FontSize.Size18
WoodQuality_9.Text = "Vessel Items"
WoodQuality_9.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_9.TextSize = 16

Rating_9.Name = "Rating"
Rating_9.Parent = Dock
Rating_9.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_9.BorderSizePixel = 0
Rating_9.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_9.Size = UDim2.new(0, 74, 0, 35)
Rating_9.Font = Enum.Font.Arial
Rating_9.FontSize = Enum.FontSize.Size18
Rating_9.Text = "Good"
Rating_9.TextColor3 = Color3.new(1, 1, 1)
Rating_9.TextSize = 16

BoxedCars.Name = "BoxedCars"
BoxedCars.Parent = Background
BoxedCars.BackgroundColor3 = Color3.new(0.145098, 0.415686, 0.768628)
BoxedCars.Position = UDim2.new(0.00800000038, 0, 0.782000005, 0)
BoxedCars.Size = UDim2.new(0, 193, 0, 34)
BoxedCars.Font = Enum.Font.Arial
BoxedCars.FontSize = Enum.FontSize.Size18
BoxedCars.Text = "Boxed Cars"
BoxedCars.TextColor3 = Color3.new(1, 1, 1)
BoxedCars.TextSize = 18

Teleport2.Name = "Teleport2"
Teleport2.Parent = BoxedCars
Teleport2.BackgroundColor3 = Color3.new(0, 0.290196, 0.662745)
Teleport2.BorderSizePixel = 0
Teleport2.Position = UDim2.new(1.03626943, 0, 0, 0)
Teleport2.Size = UDim2.new(0, 76, 0, 34)
Teleport2.Font = Enum.Font.Arial
Teleport2.FontSize = Enum.FontSize.Size18
Teleport2.Text = "Teleport"
Teleport2.TextColor3 = Color3.new(1, 1, 1)
Teleport2.TextSize = 18

OrangeLine_10.Name = "OrangeLine"
OrangeLine_10.Parent = BoxedCars
OrangeLine_10.BackgroundColor3 = Color3.new(0.364706, 0.705882, 0.364706)
OrangeLine_10.BorderSizePixel = 0
OrangeLine_10.Position = UDim2.new(1.46113992, 0, 0.852941155, 0)
OrangeLine_10.Size = UDim2.new(0, 224, 0, 5)

WoodQuality_10.Name = "WoodQuality"
WoodQuality_10.Parent = BoxedCars
WoodQuality_10.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
WoodQuality_10.BorderSizePixel = 0
WoodQuality_10.Position = UDim2.new(1.46099997, 0, -0.0149999997, 0)
WoodQuality_10.Size = UDim2.new(0, 224, 0, 29)
WoodQuality_10.Font = Enum.Font.Arial
WoodQuality_10.FontSize = Enum.FontSize.Size18
WoodQuality_10.Text = "Vehicle Items"
WoodQuality_10.TextColor3 = Color3.new(1, 1, 1)
WoodQuality_10.TextSize = 16

Rating_10.Name = "Rating"
Rating_10.Parent = BoxedCars
Rating_10.BackgroundColor3 = Color3.new(0.152941, 0.172549, 0.196078)
Rating_10.BorderSizePixel = 0
Rating_10.Position = UDim2.new(2.64752841, 0, -0.0149998665, 0)
Rating_10.Size = UDim2.new(0, 74, 0, 35)
Rating_10.Font = Enum.Font.Arial
Rating_10.FontSize = Enum.FontSize.Size18
Rating_10.Text = "Good"
Rating_10.TextColor3 = Color3.new(1, 1, 1)
Rating_10.TextSize = 16

Exit.Name = "Exit"
Exit.Parent = TopBar
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.976995945, 0, 0, 0)
Exit.Size = UDim2.new(0, 17, 0, 17)
Exit.Font = Enum.Font.Arial
Exit.FontSize = Enum.FontSize.Size14
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextSize = 14

Open.Name = "Open"
Open.Parent = LumberTycoon2
Open.BackgroundColor3 = Color3.new(0.556863, 1, 0.419608)
Open.BackgroundTransparency = 0.5
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.57011795, 0)
Open.Size = UDim2.new(0, 56, 0, 30)
Open.Font = Enum.Font.Arial
Open.FontSize = Enum.FontSize.Size14
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 14

Exit.MouseButton1Down:connect(function()
	TopBar.Visible = false
	Open.Visible = true
end)

Open.MouseButton1Down:connect(function()
	TopBar.Visible = true
	Open.Visible = false
end)

BringWood.MouseButton1Down:connect(function()
	for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
		if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") and Log.Owner.Value == game.Players.LocalPlayer then
			Log:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0, 10, 0))
		end
	end
end)

PlotTP.MouseButton1Down:connect(function()
	for i, v in pairs(game.Workspace.Properties:GetChildren()) do
		if v.Owner.Value == game.Players.LocalPlayer then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame
		end
	end
end)

SpawnTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(155, 3, 74))
end)

Teleport.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(260, 8, -2542))
end)

Teleport2.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(509, 3, -1463))
end)

Teleport3.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3581, -179, 430))
end)

Teleport4.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1114, -1, -197))
end)

Teleport5.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(258, 3, -99))
end)

Teleport6.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4605, 3, -727))
end)

Teleport7.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2549, -5, -42))
end)

Teleport8.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1209, 132, -801))
end)

Teleport9.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1585, 622, 1140))
end)

Teleport10.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(265, 3, 57))
end)