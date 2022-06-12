local DankMemes = Instance.new("ScreenGui", game.CoreGui)
-------
local IntroFrame = Instance.new("ScrollingFrame")
-------
local IntroLogo = Instance.new("TextLabel")
-------
local s = Instance.new ("Sound", workspace)
-------
local IntroCredit = Instance.new("TextLabel")
-------
local DragFrame = Instance.new("Frame")
-------
local Title = Instance.new("TextLabel")
-------
local PagesParent = Instance.new("ScrollingFrame")
-------
local TabOpen = Instance.new("TextButton")
-------
local TabClose = Instance.new("TextButton")
-------
local ChangeLogPage = Instance.new("Frame")
-------
local ChangeLogTitle = Instance.new("TextLabel")
-------
local CL1 = Instance.new("TextLabel")
-------
local CL2 = Instance.new("TextLabel")
-------
local CL3 = Instance.new("TextLabel")
-------
local CL4 = Instance.new("TextLabel")
-------
local CL5 = Instance.new("TextLabel")
-------
local CL6 = Instance.new("TextLabel")
-------
local LocalPage = Instance.new("Frame")
-------
local PlayerPage = Instance.new("ScrollingFrame")
-------
local ServerPage = Instance.new("Frame")
-------
local VehiclePage = Instance.new("Frame")
-------
local WaypointsPage = Instance.new("Frame")
-------
local TabsParent = Instance.new("ScrollingFrame")
-------
local LocalButton = Instance.new("TextButton")
-------
local PlayerButton = Instance.new("TextButton")
-------
local ServerButton = Instance.new("TextButton")
-------
local WaypointsButton = Instance.new("TextButton")
-------
local WaypointsImage = Instance.new("ImageLabel")
-------
local VehicleButton = Instance.new("TextButton")
-------
local CloseButton = Instance.new("TextButton")
-------
local OpenButton = Instance.new("TextButton")
-------
local LocalTitle = Instance.new("TextLabel")
-------
local LocalDesc = Instance.new("TextLabel")
-------
local GodButton = Instance.new("TextButton")
-------
local C4WalkButton = Instance.new("TextButton")
-------
local HungThirButton = Instance.new("TextButton")
-------
local FloatButton = Instance.new("TextButton")
-------
local NoclipButton = Instance.new("TextButton")
-------
local KillButton = Instance.new("TextButton")
-------
local PlayerSelect = Instance.new("TextBox")
-------
local ESPButton = Instance.new("TextButton")
-------
local SpectateButton = Instance.new("TextButton")
-------
local TeleportButton = Instance.new("TextButton")
-------
local InfiniteFuel = Instance.new("TextButton")
-------
local CarHeal = Instance.new("TextButton")
-------
local SpeedButton = Instance.new("TextButton")
-------
local SpeedSet = Instance.new("TextBox")
-------
local WaypointsImage = Instance.new("ImageLabel")
-------
local RefugeeFoward = Instance.new("TextButton")
-------
local RefugeeBack = Instance.new("TextButton")
-------
local RefugeeSelect = Instance.new("TextButton")
-------
local MOBack = Instance.new("TextButton")
-------
local MOSelect = Instance.new("TextButton")
-------
local MOFoward = Instance.new("TextButton")
-------
local VernalBack = Instance.new("TextButton")
-------
local VernalSelect = Instance.new("TextButton")
-------
local VernalFoward = Instance.new("TextButton")
-------
local MasonBack = Instance.new("TextButton")
-------
local MasonSelect = Instance.new("TextButton")
-------
local MasonFoward = Instance.new("TextButton")
-------
local FactoryBack = Instance.new("TextButton")
-------
local FactorySelect = Instance.new("TextButton")
-------
local FactoryFoward = Instance.new("TextButton")
-------
local KorriBack = Instance.new("TextButton")
-------
local KorriSelect = Instance.new("TextButton")
-------
local KorriFoward = Instance.new("TextButton")
-------
local FortRuinsBack = Instance.new("TextButton")
-------
local FortRuinsSelect = Instance.new("TextButton")
-------
local FortRuinsFoward = Instance.new("TextButton")

DankMemes.Name = "DankMemes Reborn"

IntroLogo.Name = "IntroLogo"
IntroLogo.Parent = IntroFrame
IntroLogo.BackgroundTransparency = 1
IntroLogo.Size = UDim2.new(0, 200, 0, 200)
IntroLogo.Position = UDim2.new(0, 25, 0, 0)
IntroLogo.Text = "int"
IntroLogo.TextSize = 128
IntroLogo.Font = "Code"
IntroLogo.TextColor3 = Color3.new(0, 0.666667, 1)

IntroCredit.Name = "IntroCredit"
IntroCredit.Parent = IntroFrame
IntroCredit.BackgroundTransparency = 1
IntroCredit.Size = UDim2.new(0, 200, 0, 50)
IntroCredit.Position = UDim2.new(0, 25, 0, 175)
IntroCredit.Text = "Created by integer"
IntroCredit.Font = "SciFi"
IntroCredit.TextSize = 24
IntroCredit.TextColor3 = Color3.new(255/255, 255/255, 255/255)

IntroFrame.Name = "IntroFrame"
IntroFrame.Parent = DankMemes
IntroFrame.BackgroundColor3 = Color3.new(45/255, 45/255, 45/255)
IntroFrame.BorderColor3 = Color3.new(255/255, 255/255, 255/255)
IntroFrame.Size = UDim2.new(0, 0, 0, 0)
IntroFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
IntroFrame.ScrollingEnabled = false
IntroFrame.ScrollBarThickness = 0
wait(0.1)
IntroFrame:TweenSize(UDim2.new(0, 250, 0, 250), 'Out', 'Bounce', 1, false)
wait(2.5)
IntroFrame:TweenSize(UDim2.new(0,0,0,0), 'Out', 'Quad', 0.5, false)
IntroFrame.Active = false
wait(.5)
IntroFrame.BackgroundTransparency = 1
wait(.25)
IntroFrame:Destroy()

DragFrame.Active = true
DragFrame.BackgroundColor3 = Color3.new(0, 0.666667, 1)
DragFrame.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
DragFrame.BorderSizePixel = 2
DragFrame.Name = "DragFrame"
DragFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
DragFrame.Selectable = true
DragFrame.Size = UDim2.new(0, 400, 0, 35)
DragFrame.Draggable = true
DragFrame.Parent = DankMemes

Title.BackgroundTransparency = 1
Title.Name = "Title"
Title.Position = UDim2.new(0, 85, 0, 0)
Title.Size = UDim2.new(0, 225, 0, 35)
Title.Font = Enum.Font.Cartoon
Title.FontSize = Enum.FontSize.Size32
Title.Text = "DankMemes Reborn v.1"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextStrokeTransparency = 0
Title.Parent = DragFrame

PagesParent.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
PagesParent.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
PagesParent.BorderSizePixel = 2
PagesParent.Name = "PagesParent"
PagesParent.Position = UDim2.new(0, 0, 0, 39)
PagesParent.Selectable = true
PagesParent.Size = UDim2.new(0, 400, 0, 0)
PagesParent.ZIndex = 2
PagesParent.ClipsDescendants = true
PagesParent.Parent = DragFrame
PagesParent.ScrollingEnabled = false
PagesParent.ScrollBarThickness = 0
PagesParent:TweenSize(UDim2.new(0, 400, 0, 225), 'Out', 'Bounce', 2, false)
TabsParent.Visible = false

TabOpen.Active = true
TabOpen.BackgroundTransparency = 1
TabOpen.Name = "TabOpen"
TabOpen.Selectable = true
TabOpen.Size = UDim2.new(0, 30, 0, 30)
TabOpen.Style = Enum.ButtonStyle.Custom
TabOpen.ZIndex = 4
TabOpen.Font = Enum.Font.SourceSansBold
TabOpen.FontSize = Enum.FontSize.Size36
TabOpen.Text = "<"
TabOpen.TextColor3 = Color3.new(1, 1, 1)
TabOpen.TextStrokeTransparency = 0
TabOpen.Parent = PagesParent
TabOpen.MouseButton1Down:connect(function()
TabsParent:TweenPosition(UDim2.new(0, -105, 0, 39), "Out", "Bounce", 0.5, false)
s.SoundId = 'rbxassetid://596439421'
s.PlaybackSpeed = 2
s:Play()
TabOpen.Visible = false
TabClose.Visible = true
TabsParent.Active = true
TabsParent.Visible = true
end)

TabClose.Active = true
TabClose.Visible = false
TabClose.BackgroundTransparency = 1
TabClose.Name = "TabClose"
TabClose.Selectable = true
TabClose.Size = UDim2.new(0, 30, 0, 30)
TabClose.Style = Enum.ButtonStyle.Custom
TabClose.ZIndex = 4
TabClose.Font = Enum.Font.SourceSansBold
TabClose.FontSize = Enum.FontSize.Size36
TabClose.Text = ">"
TabClose.TextColor3 = Color3.new(1, 1, 1)
TabClose.TextStrokeTransparency = 0
TabClose.Parent = PagesParent
TabClose.MouseButton1Down:connect(function()
TabsParent:TweenPosition(UDim2.new(0, 0, 0, 39), "Out", "Quad", 0.5, false)
s.SoundId = 'rbxassetid://596439421'
s.PlaybackSpeed = 1
s:Play()
wait(0.6)
TabOpen.Visible = true
TabClose.Visible = false
TabsParent.Active = false
TabsParent.Visible = false
end)

ChangeLogPage.BackgroundTransparency = 1
ChangeLogPage.Name = "ChangeLogPage"
ChangeLogPage.Size = UDim2.new(0, 400, 0, 225)
ChangeLogPage.ZIndex = 3
ChangeLogPage.Parent = PagesParent
-------
local ChangeLogTitle = Instance.new("TextLabel")
ChangeLogTitle.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
ChangeLogTitle.BackgroundTransparency = 1
ChangeLogTitle.Name = "ChangeLogTitle"
ChangeLogTitle.Position = UDim2.new(0, 0, 0, 10)
ChangeLogTitle.Size = UDim2.new(0, 400, 0, 25)
ChangeLogTitle.ZIndex = 3
ChangeLogTitle.Font = Enum.Font.Cartoon
ChangeLogTitle.FontSize = Enum.FontSize.Size28
ChangeLogTitle.Text = "Welcome to DankMemes!"
ChangeLogTitle.TextColor3 = Color3.new(0, 0.666667, 1)
ChangeLogTitle.TextStrokeTransparency = 0
ChangeLogTitle.Parent = ChangeLogPage
-------
local CL3b = Instance.new("TextLabel")
CL3b.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CL3b.BackgroundTransparency = 1
CL3b.Name = "CL3b"
CL3b.Position = UDim2.new(0, 215, 0, 75)
CL3b.Size = UDim2.new(0, 75, 0, 25)
CL3b.ZIndex = 3
CL3b.Font = Enum.Font.SourceSansBold
CL3b.FontSize = Enum.FontSize.Size28
CL3b.Text = "Sample"
CL3b.TextColor3 = Color3.new(1, 0.882353, 0)
CL3b.Parent = ChangeLogPage
-------
local CL3 = Instance.new("TextLabel")
CL3.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CL3.BackgroundTransparency = 1
CL3.Name = "CL3"
CL3.Position = UDim2.new(0, 80, 0, 75)
CL3.Size = UDim2.new(0, 135, 0, 25)
CL3.ZIndex = 3
CL3.Font = Enum.Font.Cartoon
CL3.FontSize = Enum.FontSize.Size24
CL3.Text = "Functions by"
CL3.TextColor3 = Color3.new(1, 1, 1)
CL3.TextStrokeTransparency = 0
CL3.Parent = ChangeLogPage
-------
local CL4 = Instance.new("TextLabel")
CL4.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CL4.BackgroundTransparency = 1
CL4.Name = "CL4"
CL4.Position = UDim2.new(0, 0, 0, 120)
CL4.Size = UDim2.new(0, 400, 0, 25)
CL4.ZIndex = 3
CL4.Font = Enum.Font.Cartoon
CL4.FontSize = Enum.FontSize.Size24
CL4.Text = ""
CL4.TextColor3 = Color3.new(1, 1, 1)
CL4.TextStrokeTransparency = 0
CL4.Parent = ChangeLogPage
-------
local CL5 = Instance.new("TextLabel")
CL5.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CL5.BackgroundTransparency = 1
CL5.Name = "CL5"
CL5.Position = UDim2.new(0, 0, 0, 145)
CL5.Size = UDim2.new(0, 400, 0, 25)
CL5.ZIndex = 3
CL5.Font = Enum.Font.Cartoon
CL5.FontSize = Enum.FontSize.Size24
CL5.Text = "Recreation of CiniMadness' "
CL5.TextColor3 = Color3.new(1, 1, 1)
CL5.TextStrokeTransparency = 0
CL5.Parent = ChangeLogPage
-------
local CL6 = Instance.new("TextLabel")
CL6.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CL6.BackgroundTransparency = 1
CL6.Name = "CL6"
CL6.Position = UDim2.new(0, 0, 0, 175)
CL6.Size = UDim2.new(0, 400, 0, 25)
CL6.ZIndex = 3
CL6.FontSize = Enum.FontSize.Size24
CL6.Text = "DankMemesV2"
CL6.TextColor3 = Color3.new(1, 1, 1)
CL6.TextStrokeTransparency = 0
CL6.Parent = ChangeLogPage
-------
local CL1 = Instance.new("TextLabel")
CL1.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CL1.BackgroundTransparency = 1
CL1.Name = "CL1"
CL1.Position = UDim2.new(0, 25, 0, 45)
CL1.Size = UDim2.new(0, 250, 0, 25)
CL1.ZIndex = 3
CL1.Font = Enum.Font.Cartoon
CL1.FontSize = Enum.FontSize.Size24
CL1.Text = "This GUI was created by"
CL1.TextColor3 = Color3.new(1, 1, 1)
CL1.TextStrokeTransparency = 0
CL1.Parent = ChangeLogPage
-------
local CL1b = Instance.new("TextLabel")
CL1b.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CL1b.BackgroundTransparency = 1
CL1b.Name = "CL1b"
CL1b.Position = UDim2.new(0, 280, 0, 45)
CL1b.Size = UDim2.new(0, 75, 0, 25)
CL1b.ZIndex = 3
CL1b.Font = Enum.Font.Code
CL1b.FontSize = Enum.FontSize.Size24
CL1b.Text = "integer"
CL1b.TextColor3 = Color3.new(0, 0.666667, 1)
CL1b.Parent = ChangeLogPage

LocalPage.BackgroundTransparency = 1
LocalPage.Name = "LocalPage"
LocalPage.Size = UDim2.new(0, 400, 0, 225)
LocalPage.Visible = false
LocalPage.ZIndex = 3
LocalPage.Parent = PagesParent

PlayerPage.BackgroundTransparency = 1
PlayerPage.Name = "PlayerPage"
PlayerPage.Size = UDim2.new(0, 400, 0, 225)
PlayerPage.Visible = false
PlayerPage.ZIndex = 3
PlayerPage.Parent = PagesParent
PlayerPage.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
PlayerPage.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
PlayerPage.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

ServerPage.BackgroundTransparency = 1
ServerPage.Name = "ServerPage"
ServerPage.Size = UDim2.new(0, 400, 0, 225)
ServerPage.Visible = false
ServerPage.ZIndex = 3
ServerPage.Parent = PagesParent

WaypointsPage.BackgroundTransparency = 1
WaypointsPage.Name = "WaypointsPage"
WaypointsPage.Size = UDim2.new(0, 400, 0, 225)
WaypointsPage.Visible = false
WaypointsPage.ZIndex = 3
WaypointsPage.Parent = PagesParent

VehiclePage.BackgroundTransparency = 1
VehiclePage.Name = "VehiclePage"
VehiclePage.Size = UDim2.new(0, 400, 0, 225)
VehiclePage.Visible = false
VehiclePage.ZIndex = 3
VehiclePage.Parent = PagesParent

TabsParent.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
TabsParent.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TabsParent.BorderSizePixel = 2
TabsParent.Name = "TabsParent"
TabsParent.Position = UDim2.new(0, 0, 0, 39)
TabsParent.Selectable = true
TabsParent.Size = UDim2.new(0, 100, 0, 225)
TabsParent.ClipsDescendants = true
TabsParent.Parent = DragFrame
TabsParent.ScrollingEnabled = false
TabsParent.ScrollBarThickness = 0

WaypointsButton.Active = true
WaypointsButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
WaypointsButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
WaypointsButton.BorderSizePixel = 2
WaypointsButton.Name = "WaypointsButton"
WaypointsButton.Position = UDim2.new(0, 5, 0, 5)
WaypointsButton.Selectable = true
WaypointsButton.Size = UDim2.new(0, 90, 0, 35)
WaypointsButton.Style = Enum.ButtonStyle.Custom
WaypointsButton.Font = Enum.Font.Cartoon
WaypointsButton.FontSize = Enum.FontSize.Size28
WaypointsButton.Text = "Waypoints"
WaypointsButton.TextColor3 = Color3.new(1, 1, 1)
WaypointsButton.TextScaled = true
WaypointsButton.TextStrokeTransparency = 0
WaypointsButton.TextWrapped = true
WaypointsButton.Parent = TabsParent

WaypointsButton.MouseButton1Down:connect(function()
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.2
s.PlaybackSpeed = 1
s:Play()
LocalPage.Visible = false
PlayerPage.Visible = false
ServerPage.Visible = false
VehiclePage.Visible = false
ChangeLogPage.Visible = false
WaypointsPage.Visible = true
end)

LocalButton.Active = true
LocalButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
LocalButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
LocalButton.BorderSizePixel = 2
LocalButton.Name = "LocalButton"
LocalButton.Position = UDim2.new(0, 5, 0, 50)
LocalButton.Selectable = true
LocalButton.Size = UDim2.new(0, 90, 0, 35)
LocalButton.Style = Enum.ButtonStyle.Custom
LocalButton.Font = Enum.Font.Cartoon
LocalButton.FontSize = Enum.FontSize.Size28
LocalButton.Text = "Local"
LocalButton.TextColor3 = Color3.new(1, 1, 1)
LocalButton.TextStrokeTransparency = 0
LocalButton.Parent = TabsParent

LocalButton.MouseButton1Down:connect(function()
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.2
s.PlaybackSpeed = 1
s:Play()
LocalPage.Visible = true
WaypointsPage.Visible = false
PlayerPage.Visible = false
ServerPage.Visible = false
VehiclePage.Visible = false
ChangeLogPage.Visible = false
end)

PlayerButton.Active = true
PlayerButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
PlayerButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
PlayerButton.BorderSizePixel = 2
PlayerButton.Name = "PlayerButton"
PlayerButton.Position = UDim2.new(0, 5, 0, 95)
PlayerButton.Selectable = true
PlayerButton.Size = UDim2.new(0, 90, 0, 35)
PlayerButton.Style = Enum.ButtonStyle.Custom
PlayerButton.Font = Enum.Font.Cartoon
PlayerButton.FontSize = Enum.FontSize.Size28
PlayerButton.Text = "Player"
PlayerButton.TextColor3 = Color3.new(1, 1, 1)
PlayerButton.TextStrokeTransparency = 0
PlayerButton.Parent = TabsParent

PlayerButton.MouseButton1Down:connect(function()
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.2
s.PlaybackSpeed = 1
s:Play()
LocalPage.Visible = false
PlayerPage.Visible = true
ServerPage.Visible = false
VehiclePage.Visible = false
WaypointsPage.Visible = false
ChangeLogPage.Visible = false
end)

ServerButton.Active = true
ServerButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
ServerButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
ServerButton.BorderSizePixel = 2
ServerButton.Name = "ServerButton"
ServerButton.Position = UDim2.new(0, 5, 0, 140)
ServerButton.Selectable = true
ServerButton.Size = UDim2.new(0, 90, 0, 35)
ServerButton.Style = Enum.ButtonStyle.Custom
ServerButton.Font = Enum.Font.Cartoon
ServerButton.FontSize = Enum.FontSize.Size28
ServerButton.Text = "Server"
ServerButton.TextColor3 = Color3.new(1, 1, 1)
ServerButton.TextStrokeTransparency = 0
ServerButton.Parent = TabsParent

ServerButton.MouseButton1Down:connect(function()
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.2
s.PlaybackSpeed = 1
s:Play()
LocalPage.Visible = false
PlayerPage.Visible = false
WaypointsPage.Visible = false
ServerPage.Visible = true
VehiclePage.Visible = false
ChangeLogPage.Visible = false
end)

VehicleButton.Active = true
VehicleButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
VehicleButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
VehicleButton.BorderSizePixel = 2
VehicleButton.Name = "VehicleButton"
VehicleButton.Position = UDim2.new(0, 5, 0, 185)
VehicleButton.Selectable = true
VehicleButton.Size = UDim2.new(0, 90, 0, 35)
VehicleButton.Style = Enum.ButtonStyle.Custom
VehicleButton.Font = Enum.Font.Cartoon
VehicleButton.FontSize = Enum.FontSize.Size28
VehicleButton.Text = "Vehicle"
VehicleButton.TextColor3 = Color3.new(1, 1, 1)
VehicleButton.TextStrokeTransparency = 0
VehicleButton.Parent = TabsParent

VehicleButton.MouseButton1Down:connect(function()
s.SoundId = 'rbxassetid://177266782'
s.Volume = 0.2
s.PlaybackSpeed = 1
s:Play()
LocalPage.Visible = false
WaypointsPage.Visible = false
PlayerPage.Visible = false
ServerPage.Visible = false
VehiclePage.Visible = true
ChangeLogPage.Visible = false
end)

CloseButton.Active = true
CloseButton.BackgroundTransparency = 1
CloseButton.Name = "CloseButton"
CloseButton.Position = UDim2.new(0, 365, 0, 0)
CloseButton.Selectable = true
CloseButton.Size = UDim2.new(0, 35, 0, 35)
CloseButton.Style = Enum.ButtonStyle.Custom
CloseButton.Font = Enum.Font.Cartoon
CloseButton.FontSize = Enum.FontSize.Size14
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextScaled = true
CloseButton.TextStrokeTransparency = 0
CloseButton.TextWrapped = true
CloseButton.Parent = DragFrame
CloseButton.MouseButton1Down:connect(function()
PagesParent:TweenSize(UDim2.new(1,0,0,0), 'In', 'Quad', 0.5, false)
TabsParent:TweenSize(UDim2.new(1,0,0,0), 'In', 'Quad', 0.5, false)
wait(0.5)
CloseButton.Visible = false
OpenButton.Visible = true
PagesParent.Visible = false
TabsParent.Visible = false
end)

OpenButton.Active = true
OpenButton.Visible = false
OpenButton.BackgroundTransparency = 1
OpenButton.Name = "OpenButton"
OpenButton.Position = UDim2.new(0, 365, 0, 0)
OpenButton.Selectable = true
OpenButton.Size = UDim2.new(0, 35, 0, 35)
OpenButton.Style = Enum.ButtonStyle.Custom
OpenButton.Font = Enum.Font.Cartoon
OpenButton.FontSize = Enum.FontSize.Size14
OpenButton.Text = "+"
OpenButton.TextColor3 = Color3.new(1, 1, 1)
OpenButton.TextScaled = true
OpenButton.TextStrokeTransparency = 0
OpenButton.TextWrapped = true
OpenButton.Parent = DragFrame
OpenButton.MouseButton1Down:connect(function()
PagesParent.Visible = true
TabsParent.Visible = true
PagesParent:TweenSize(UDim2.new(0, 400, 0, 225), 'Out', 'Bounce', 0.75, false)
TabsParent:TweenSize(UDim2.new(0, 100, 0, 225), 'Out', 'Bounce', 0.75, false)
wait(0.05)
s.SoundId = "rbxassetid://247008426"
s.PlaybackSpeed = 1
s:Play()
wait(0.5)
CloseButton.Visible = true
OpenButton.Visible = false
PagesParent.Visible = true
TabsParent.Visible = true
end)

LocalTitle.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
LocalTitle.BackgroundTransparency = 1
LocalTitle.Name = "LocalTitle"
LocalTitle.Position = UDim2.new(0, 0, 0, 10)
LocalTitle.Size = UDim2.new(0, 400, 0, 25)
LocalTitle.ZIndex = 3
LocalTitle.Font = Enum.Font.Cartoon
LocalTitle.FontSize = Enum.FontSize.Size28
LocalTitle.Text = "Local Commands"
LocalTitle.TextColor3 = Color3.new(0, 0.666667, 1)
LocalTitle.TextStrokeTransparency = 0
LocalTitle.Parent = LocalPage

LocalDesc.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
LocalDesc.BackgroundTransparency = 1
LocalDesc.Name = "LocalDesc"
LocalDesc.Position = UDim2.new(0, 0, 0, 45)
LocalDesc.Size = UDim2.new(0, 400, 0, 25)
LocalDesc.ZIndex = 3
LocalDesc.Font = Enum.Font.Cartoon
LocalDesc.FontSize = Enum.FontSize.Size24
LocalDesc.Text = "Local commands only work for YOU."
LocalDesc.TextColor3 = Color3.new(1, 1, 1)
LocalDesc.TextStrokeTransparency = 0
LocalDesc.Parent = LocalPage

WaypointsImage.Active = false
WaypointsImage.BorderColor3 = Color3.new(0.588235, 0.588235, 0.588235)
WaypointsImage.BorderSizePixel = 2
WaypointsImage.Position = UDim2.new(0, 75, 0, 20)
WaypointsImage.Name = "WaypointsImage"
WaypointsImage.Selectable = false
WaypointsImage.Size = UDim2.new(0, 250, 0, 150)
WaypointsImage.ZIndex = 2
WaypointsImage.Image = "rbxassetid://900664940"
WaypointsImage.Draggable = true
WaypointsImage.Parent = WaypointsPage

RefugeeBack.Active = true
RefugeeBack.BackgroundColor3 = Color3.new(0, 0.666667, 1)
RefugeeBack.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
RefugeeBack.BorderSizePixel = 2
RefugeeBack.Name = "RefugeeBack"
RefugeeBack.Position = UDim2.new(0, 75, 0, 175)
RefugeeBack.Selectable = true
RefugeeBack.Size = UDim2.new(0, 35, 0, 35)
RefugeeBack.Style = Enum.ButtonStyle.Custom
RefugeeBack.ZIndex = 3
RefugeeBack.Font = Enum.Font.Cartoon
RefugeeBack.FontSize = Enum.FontSize.Size28
RefugeeBack.Text = "<"
RefugeeBack.TextColor3 = Color3.new(1, 1, 1)
RefugeeBack.TextScaled = true
RefugeeBack.TextStrokeTransparency = 0
RefugeeBack.TextWrapped = true
RefugeeBack.TextYAlignment = Enum.TextYAlignment.Top
RefugeeBack.Parent = WaypointsPage
RefugeeBack.MouseButton1Click:connect(function()
RefugeeBack.Visible = false
RefugeeFoward.Visible = false
RefugeeSelect.Visible = false
WaypointsImage.Image = "rbxassetid://900666427"
end)

RefugeeSelect.Active = true
RefugeeSelect.Parent = WaypointsPage
RefugeeSelect.BackgroundColor3 = Color3.new(0, 0.666667, 1)
RefugeeSelect.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
RefugeeSelect.BorderSizePixel = 2
RefugeeSelect.Name = "RefugeeSelect"
RefugeeSelect.Position = UDim2.new(0, 115, 0, 175)
RefugeeSelect.Selectable = true
RefugeeSelect.Size = UDim2.new(0, 170, 0, 35)
RefugeeSelect.Style = Enum.ButtonStyle.Custom
RefugeeSelect.ZIndex = 3
RefugeeSelect.Font = Enum.Font.Cartoon
RefugeeSelect.FontSize = Enum.FontSize.Size28
RefugeeSelect.Text = "Refugee Camp"
RefugeeSelect.TextColor3 = Color3.new(1, 1, 1)
RefugeeSelect.TextScaled = true
RefugeeSelect.TextStrokeTransparency = 0
RefugeeSelect.TextWrapped = true










RefugeeSelect.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2435.35815, 4.01000977, -2790.55444)
end)

RefugeeFoward.Active = true
RefugeeFoward.BackgroundColor3 = Color3.new(0, 0.666667, 1)
RefugeeFoward.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
RefugeeFoward.BorderSizePixel = 2
RefugeeFoward.Name = "RefugeeFoward"
RefugeeFoward.Position = UDim2.new(0, 290, 0, 175)
RefugeeFoward.Selectable = true
RefugeeFoward.Size = UDim2.new(0, 35, 0, 35)
RefugeeFoward.Style = Enum.ButtonStyle.Custom
RefugeeFoward.ZIndex = 3
RefugeeFoward.Font = Enum.Font.Cartoon
RefugeeFoward.FontSize = Enum.FontSize.Size28
RefugeeFoward.Text = ">"
RefugeeFoward.TextColor3 = Color3.new(1, 1, 1)
RefugeeFoward.TextScaled = true
RefugeeFoward.TextStrokeTransparency = 0
RefugeeFoward.TextWrapped = true
RefugeeFoward.TextYAlignment = Enum.TextYAlignment.Top
RefugeeFoward.Parent = WaypointsPage
RefugeeFoward.MouseButton1Click:connect(function()
RefugeeBack.Visible = false
RefugeeFoward.Visible = false
RefugeeSelect.Visible = false
MOBack.Visible = true
MOFoward.Visible = true
MOSelect.Visible = true
WaypointsImage.Image = "rbxassetid://900662814"
end)

MOBack.Visible = false
MOBack.Active = true
MOBack.BackgroundColor3 = Color3.new(0, 0.666667, 1)
MOBack.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
MOBack.BorderSizePixel = 2
MOBack.Name = "MOBack"
MOBack.Position = UDim2.new(0, 75, 0, 175)
MOBack.Selectable = true
MOBack.Size = UDim2.new(0, 35, 0, 35)
MOBack.Style = Enum.ButtonStyle.Custom
MOBack.ZIndex = 3
MOBack.Font = Enum.Font.Cartoon
MOBack.FontSize = Enum.FontSize.Size28
MOBack.Text = "<"
MOBack.TextColor3 = Color3.new(1, 1, 1)
MOBack.TextScaled = true
MOBack.TextStrokeTransparency = 0
MOBack.TextWrapped = true
MOBack.TextYAlignment = Enum.TextYAlignment.Top
MOBack.Parent = WaypointsPage
MOBack.MouseButton1Click:connect(function()
RefugeeBack.Visible = true
RefugeeFoward.Visible = true
RefugeeSelect.Visible = true
MOBack.Visible = false
MOFoward.Visible = false
MOSelect.Visible = false
WaypointsImage.Image = "rbxassetid://900664940"
end)

MOSelect.Visible = false
MOSelect.Active = true
MOSelect.BackgroundColor3 = Color3.new(0, 0.666667, 1)
MOSelect.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
MOSelect.BorderSizePixel = 2
MOSelect.Name = "MOSelect"
MOSelect.Position = UDim2.new(0, 115, 0, 175)
MOSelect.Selectable = true
MOSelect.Size = UDim2.new(0, 170, 0, 35)
MOSelect.Style = Enum.ButtonStyle.Custom
MOSelect.ZIndex = 3
MOSelect.Font = Enum.Font.Cartoon
MOSelect.FontSize = Enum.FontSize.Size28
MOSelect.Text = "Military Outpost"
MOSelect.TextColor3 = Color3.new(1, 1, 1)
MOSelect.TextScaled = true
MOSelect.TextStrokeTransparency = 0
MOSelect.TextWrapped = true
MOSelect.Parent = WaypointsPage
MOSelect.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1728.78052, 4.0999999, -1634.20215)
end)

MOFoward.Visible = false
MOFoward.Active = true
MOFoward.BackgroundColor3 = Color3.new(0, 0.666667, 1)
MOFoward.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
MOFoward.BorderSizePixel = 2
MOFoward.Name = "MOFoward"
MOFoward.Position = UDim2.new(0, 290, 0, 175)
MOFoward.Selectable = true
MOFoward.Size = UDim2.new(0, 35, 0, 35)
MOFoward.Style = Enum.ButtonStyle.Custom
MOFoward.ZIndex = 3
MOFoward.Font = Enum.Font.Cartoon
MOFoward.FontSize = Enum.FontSize.Size28
MOFoward.Text = ">"
MOFoward.TextColor3 = Color3.new(1, 1, 1)
MOFoward.TextScaled = true
MOFoward.TextStrokeTransparency = 0
MOFoward.TextWrapped = true
MOFoward.TextYAlignment = Enum.TextYAlignment.Top
MOFoward.Parent = WaypointsPage
MOFoward.MouseButton1Click:connect(function()
MOBack.Visible = false
MOFoward.Visible = false
MOSelect.Visible = false
VernalBack.Visible = true
VernalSelect.Visible = true
VernalFoward.Visible = true
WaypointsImage.Image = "rbxassetid://900666599"
end)

VernalBack.Active = true
VernalBack.Visible = false
VernalBack.BackgroundColor3 = Color3.new(0, 0.666667, 1)
VernalBack.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
VernalBack.BorderSizePixel = 2
VernalBack.Name = "MOBack"
VernalBack.Position = UDim2.new(0, 75, 0, 175)
VernalBack.Selectable = true
VernalBack.Size = UDim2.new(0, 35, 0, 35)
VernalBack.Style = Enum.ButtonStyle.Custom
VernalBack.ZIndex = 3
VernalBack.Font = Enum.Font.Cartoon
VernalBack.FontSize = Enum.FontSize.Size28
VernalBack.Text = "<"
VernalBack.TextColor3 = Color3.new(1, 1, 1)
VernalBack.TextScaled = true
VernalBack.TextStrokeTransparency = 0
VernalBack.TextWrapped = true
VernalBack.TextYAlignment = Enum.TextYAlignment.Top
VernalBack.Parent = WaypointsPage
VernalBack.MouseButton1Click:connect(function()
VernalBack.Visible = false
VernalFoward.Visible = false
VernalSelect.Visible = false
MOBack.Visible = true
MOFoward.Visible = true
MOSelect.Visible = true
WaypointsImage.Image = "rbxassetid://900662814"
end)

VernalSelect.Visible = false
VernalSelect.Active = true
VernalSelect.BackgroundColor3 = Color3.new(0, 0.666667, 1)
VernalSelect.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
VernalSelect.BorderSizePixel = 2
VernalSelect.Name = "VernalSelect"
VernalSelect.Position = UDim2.new(0, 115, 0, 175)
VernalSelect.Selectable = true
VernalSelect.Size = UDim2.new(0, 170, 0, 35)
VernalSelect.Style = Enum.ButtonStyle.Custom
VernalSelect.ZIndex = 3
VernalSelect.Font = Enum.Font.Cartoon
VernalSelect.FontSize = Enum.FontSize.Size28
VernalSelect.Text = "Vernal"
VernalSelect.TextColor3 = Color3.new(1, 1, 1)
VernalSelect.TextScaled = true
VernalSelect.TextStrokeTransparency = 0
VernalSelect.TextWrapped = true
VernalSelect.Parent = WaypointsPage
VernalSelect.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2584.03394, 4.0985134, -728.393738)
end)

VernalFoward.Visible = false
VernalFoward.Active = true
VernalFoward.BackgroundColor3 = Color3.new(0, 0.666667, 1)
VernalFoward.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
VernalFoward.BorderSizePixel = 2
VernalFoward.Name = "VernalFoward"
VernalFoward.Position = UDim2.new(0, 290, 0, 175)
VernalFoward.Selectable = true
VernalFoward.Size = UDim2.new(0, 35, 0, 35)
VernalFoward.Style = Enum.ButtonStyle.Custom
VernalFoward.ZIndex = 3
VernalFoward.Font = Enum.Font.Cartoon
VernalFoward.FontSize = Enum.FontSize.Size28
VernalFoward.Text = ">"
VernalFoward.TextColor3 = Color3.new(1, 1, 1)
VernalFoward.TextScaled = true
VernalFoward.TextStrokeTransparency = 0
VernalFoward.TextWrapped = true
VernalFoward.TextYAlignment = Enum.TextYAlignment.Top
VernalFoward.Parent = WaypointsPage
VernalFoward.MouseButton1Click:connect(function()
VernalBack.Visible = false
VernalFoward.Visible = false
VernalSelect.Visible = false
MasonBack.Visible = true
MasonFoward.Visible = true
MasonSelect.Visible = true
WaypointsImage.Image = "rbxassetid://900662552"
end)

MasonBack.Active = true
MasonBack.Visible = false
MasonBack.BackgroundColor3 = Color3.new(0, 0.666667, 1)
MasonBack.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
MasonBack.BorderSizePixel = 2
MasonBack.Name = "MOBack"
MasonBack.Position = UDim2.new(0, 75, 0, 175)
MasonBack.Selectable = true
MasonBack.Size = UDim2.new(0, 35, 0, 35)
MasonBack.Style = Enum.ButtonStyle.Custom
MasonBack.ZIndex = 3
MasonBack.Font = Enum.Font.Cartoon
MasonBack.FontSize = Enum.FontSize.Size28
MasonBack.Text = "<"
MasonBack.TextColor3 = Color3.new(1, 1, 1)
MasonBack.TextScaled = true
MasonBack.TextStrokeTransparency = 0
MasonBack.TextWrapped = true
MasonBack.TextYAlignment = Enum.TextYAlignment.Top
MasonBack.Parent = WaypointsPage
MasonBack.MouseButton1Click:connect(function()
MasonBack.Visible = false
MasonFoward.Visible = false
MasonSelect.Visible = false
VernalBack.Visible = true
VernalFoward.Visible = true
VernalSelect.Visible = true
WaypointsImage.Image = "rbxassetid://900666599"
end)

MasonSelect.Visible = false
MasonSelect.Active = true
MasonSelect.BackgroundColor3 = Color3.new(0, 0.666667, 1)
MasonSelect.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
MasonSelect.BorderSizePixel = 2
MasonSelect.Name = "MasonSelect"
MasonSelect.Position = UDim2.new(0, 115, 0, 175)
MasonSelect.Selectable = true
MasonSelect.Size = UDim2.new(0, 170, 0, 35)
MasonSelect.Style = Enum.ButtonStyle.Custom
MasonSelect.ZIndex = 3
MasonSelect.Font = Enum.Font.Cartoon
MasonSelect.FontSize = Enum.FontSize.Size28
MasonSelect.Text = "Mason"
MasonSelect.TextColor3 = Color3.new(1, 1, 1)
MasonSelect.TextScaled = true
MasonSelect.TextStrokeTransparency = 0
MasonSelect.TextWrapped = true
MasonSelect.Parent = WaypointsPage
MasonSelect.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2410.36157, 4.09999371, 684.061096)
end)

MasonFoward.Visible = false
MasonFoward.Active = true
MasonFoward.BackgroundColor3 = Color3.new(0, 0.666667, 1)
MasonFoward.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
MasonFoward.BorderSizePixel = 2
MasonFoward.Name = "MasonFoward"
MasonFoward.Position = UDim2.new(0, 290, 0, 175)
MasonFoward.Selectable = true
MasonFoward.Size = UDim2.new(0, 35, 0, 35)
MasonFoward.Style = Enum.ButtonStyle.Custom
MasonFoward.ZIndex = 3
MasonFoward.Font = Enum.Font.Cartoon
MasonFoward.FontSize = Enum.FontSize.Size28
MasonFoward.Text = ">"
MasonFoward.TextColor3 = Color3.new(1, 1, 1)
MasonFoward.TextScaled = true
MasonFoward.TextStrokeTransparency = 0
MasonFoward.TextWrapped = true
MasonFoward.TextYAlignment = Enum.TextYAlignment.Top
MasonFoward.Parent = WaypointsPage
MasonFoward.MouseButton1Click:connect(function()
MasonBack.Visible = false
MasonFoward.Visible = false
MasonSelect.Visible = false
FactoryBack.Visible = true
FactoryFoward.Visible = true
FactorySelect.Visible = true
WaypointsImage.Image = "rbxassetid://900468024"
end)

FactoryBack.Active = true
FactoryBack.Visible = false
FactoryBack.BackgroundColor3 = Color3.new(0, 0.666667, 1)
FactoryBack.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
FactoryBack.BorderSizePixel = 2
FactoryBack.Name = "MOBack"
FactoryBack.Position = UDim2.new(0, 75, 0, 175)
FactoryBack.Selectable = true
FactoryBack.Size = UDim2.new(0, 35, 0, 35)
FactoryBack.Style = Enum.ButtonStyle.Custom
FactoryBack.ZIndex = 3
FactoryBack.Font = Enum.Font.Cartoon
FactoryBack.FontSize = Enum.FontSize.Size28
FactoryBack.Text = "<"
FactoryBack.TextColor3 = Color3.new(1, 1, 1)
FactoryBack.TextScaled = true
FactoryBack.TextStrokeTransparency = 0
FactoryBack.TextWrapped = true
FactoryBack.TextYAlignment = Enum.TextYAlignment.Top
FactoryBack.Parent = WaypointsPage
FactoryBack.MouseButton1Click:connect(function()
MasonBack.Visible = true
MasonFoward.Visible = true
MasonSelect.Visible = true
FactoryBack.Visible = false
FactoryFoward.Visible = false
FactorySelect.Visible = false
WaypointsImage.Image = "rbxassetid://900662552"
end)

FactorySelect.Visible = false
FactorySelect.Active = true
FactorySelect.BackgroundColor3 = Color3.new(0, 0.666667, 1)
FactorySelect.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
FactorySelect.BorderSizePixel = 2
FactorySelect.Name = "FactorySelect"
FactorySelect.Position = UDim2.new(0, 115, 0, 175)
FactorySelect.Selectable = true
FactorySelect.Size = UDim2.new(0, 170, 0, 35)
FactorySelect.Style = Enum.ButtonStyle.Custom
FactorySelect.ZIndex = 3
FactorySelect.Font = Enum.Font.Cartoon
FactorySelect.FontSize = Enum.FontSize.Size28
FactorySelect.Text = "Factory"
FactorySelect.TextColor3 = Color3.new(1, 1, 1)
FactorySelect.TextScaled = true
FactorySelect.TextStrokeTransparency = 0
FactorySelect.TextWrapped = true
FactorySelect.Parent = WaypointsPage
FactorySelect.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2585.26538, 4.09999371, 2227.57275)
end)

FactoryFoward.Visible = false
FactoryFoward.Active = true
FactoryFoward.BackgroundColor3 = Color3.new(0, 0.666667, 1)
FactoryFoward.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
FactoryFoward.BorderSizePixel = 2
FactoryFoward.Name = "FactoryFoward"
FactoryFoward.Position = UDim2.new(0, 290, 0, 175)
FactoryFoward.Selectable = true
FactoryFoward.Size = UDim2.new(0, 35, 0, 35)
FactoryFoward.Style = Enum.ButtonStyle.Custom
FactoryFoward.ZIndex = 3
FactoryFoward.Font = Enum.Font.Cartoon
FactoryFoward.FontSize = Enum.FontSize.Size28
FactoryFoward.Text = ">"
FactoryFoward.TextColor3 = Color3.new(1, 1, 1)
FactoryFoward.TextScaled = true
FactoryFoward.TextStrokeTransparency = 0
FactoryFoward.TextWrapped = true
FactoryFoward.TextYAlignment = Enum.TextYAlignment.Top
FactoryFoward.Parent = WaypointsPage
FactoryFoward.MouseButton1Click:connect(function()
FactoryBack.Visible = false
FactoryFoward.Visible = false
FactorySelect.Visible = false
KorriBack.Visible = true
KorriFoward.Visible = true
KorriSelect.Visible = true
WaypointsImage.Image = "rbxassetid://900469407"
end)

KorriBack.Active = true
KorriBack.Visible = false
KorriBack.BackgroundColor3 = Color3.new(0, 0.666667, 1)
KorriBack.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
KorriBack.BorderSizePixel = 2
KorriBack.Name = "MOBack"
KorriBack.Position = UDim2.new(0, 75, 0, 175)
KorriBack.Selectable = true
KorriBack.Size = UDim2.new(0, 35, 0, 35)
KorriBack.Style = Enum.ButtonStyle.Custom
KorriBack.ZIndex = 3
KorriBack.Font = Enum.Font.Cartoon
KorriBack.FontSize = Enum.FontSize.Size28
KorriBack.Text = "<"
KorriBack.TextColor3 = Color3.new(1, 1, 1)
KorriBack.TextScaled = true
KorriBack.TextStrokeTransparency = 0
KorriBack.TextWrapped = true
KorriBack.TextYAlignment = Enum.TextYAlignment.Top
KorriBack.Parent = WaypointsPage
KorriBack.MouseButton1Click:connect(function()
KorriBack.Visible = false
KorriFoward.Visible = false
KorriSelect.Visible = false
FactoryBack.Visible = true
FactoryFoward.Visible = true
FactorySelect.Visible = true
WaypointsImage.Image = "rbxassetid://900662552"
end)

KorriSelect.Visible = false
KorriSelect.Active = true
KorriSelect.BackgroundColor3 = Color3.new(0, 0.666667, 1)
KorriSelect.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
KorriSelect.BorderSizePixel = 2
KorriSelect.Name = "KorriSelect"
KorriSelect.Position = UDim2.new(0, 115, 0, 175)
KorriSelect.Selectable = true
KorriSelect.Size = UDim2.new(0, 170, 0, 35)
KorriSelect.Style = Enum.ButtonStyle.Custom
KorriSelect.ZIndex = 3
KorriSelect.Font = Enum.Font.Cartoon
KorriSelect.FontSize = Enum.FontSize.Size28
KorriSelect.Text = "Korri"
KorriSelect.TextColor3 = Color3.new(1, 1, 1)
KorriSelect.TextScaled = true
KorriSelect.TextStrokeTransparency = 0
KorriSelect.TextWrapped = true
KorriSelect.Parent = WaypointsPage
KorriSelect.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1250.82129, 4.09999371, 2519.40869)
end)

KorriFoward.Visible = false
KorriFoward.Active = true
KorriFoward.BackgroundColor3 = Color3.new(0, 0.666667, 1)
KorriFoward.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
KorriFoward.BorderSizePixel = 2
KorriFoward.Name = "KorriFoward"
KorriFoward.Position = UDim2.new(0, 290, 0, 175)
KorriFoward.Selectable = true
KorriFoward.Size = UDim2.new(0, 35, 0, 35)
KorriFoward.Style = Enum.ButtonStyle.Custom
KorriFoward.ZIndex = 3
KorriFoward.Font = Enum.Font.Cartoon
KorriFoward.FontSize = Enum.FontSize.Size28
KorriFoward.Text = ">"
KorriFoward.TextColor3 = Color3.new(1, 1, 1)
KorriFoward.TextScaled = true
KorriFoward.TextStrokeTransparency = 0
KorriFoward.TextWrapped = true
KorriFoward.TextYAlignment = Enum.TextYAlignment.Top
KorriFoward.Parent = WaypointsPage
KorriFoward.MouseButton1Click:connect(function()
KorriBack.Visible = false
KorriFoward.Visible = false
KorriSelect.Visible = false
FortRuinsBack.Visible = true
FortRuinsFoward.Visible = true
FortRuinsSelect.Visible = true
WaypointsImage.Image = "rbxassetid://900469407"
end)


KorriBack.Active = true
KorriBack.Visible = false
KorriBack.BackgroundColor3 = Color3.new(0, 0.666667, 1)
KorriBack.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
KorriBack.BorderSizePixel = 2
KorriBack.Name = "MOBack"
KorriBack.Position = UDim2.new(0, 75, 0, 175)
KorriBack.Selectable = true
KorriBack.Size = UDim2.new(0, 35, 0, 35)
KorriBack.Style = Enum.ButtonStyle.Custom
KorriBack.ZIndex = 3
KorriBack.Font = Enum.Font.Cartoon
KorriBack.FontSize = Enum.FontSize.Size28
KorriBack.Text = "<"
KorriBack.TextColor3 = Color3.new(1, 1, 1)
KorriBack.TextScaled = true
KorriBack.TextStrokeTransparency = 0
KorriBack.TextWrapped = true
KorriBack.TextYAlignment = Enum.TextYAlignment.Top
KorriBack.Parent = WaypointsPage
KorriBack.MouseButton1Click:connect(function()
KorriBack.Visible = false
KorriFoward.Visible = false
KorriSelect.Visible = false
FactoryBack.Visible = true
FactoryFoward.Visible = true
FactorySelect.Visible = true
WaypointsImage.Image = "rbxassetid://900662552"
end)

KorriSelect.Visible = false
KorriSelect.Active = true
KorriSelect.BackgroundColor3 = Color3.new(0, 0.666667, 1)
KorriSelect.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
KorriSelect.BorderSizePixel = 2
KorriSelect.Name = "KorriSelect"
KorriSelect.Position = UDim2.new(0, 115, 0, 175)
KorriSelect.Selectable = true
KorriSelect.Size = UDim2.new(0, 170, 0, 35)
KorriSelect.Style = Enum.ButtonStyle.Custom
KorriSelect.ZIndex = 3
KorriSelect.Font = Enum.Font.Cartoon
KorriSelect.FontSize = Enum.FontSize.Size28
KorriSelect.Text = "Korri"
KorriSelect.TextColor3 = Color3.new(1, 1, 1)
KorriSelect.TextScaled = true
KorriSelect.TextStrokeTransparency = 0
KorriSelect.TextWrapped = true
KorriSelect.Parent = WaypointsPage
KorriSelect.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1250.82129, 4.09999371, 2519.40869)
end)

KorriFoward.Visible = false
KorriFoward.Active = true
KorriFoward.BackgroundColor3 = Color3.new(0, 0.666667, 1)
KorriFoward.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
KorriFoward.BorderSizePixel = 2
KorriFoward.Name = "KorriFoward"
KorriFoward.Position = UDim2.new(0, 290, 0, 175)
KorriFoward.Selectable = true
KorriFoward.Size = UDim2.new(0, 35, 0, 35)
KorriFoward.Style = Enum.ButtonStyle.Custom
KorriFoward.ZIndex = 3
KorriFoward.Font = Enum.Font.Cartoon
KorriFoward.FontSize = Enum.FontSize.Size28
KorriFoward.Text = ">"
KorriFoward.TextColor3 = Color3.new(1, 1, 1)
KorriFoward.TextScaled = true
KorriFoward.TextStrokeTransparency = 0
KorriFoward.TextWrapped = true
KorriFoward.TextYAlignment = Enum.TextYAlignment.Top
KorriFoward.Parent = WaypointsPage
KorriFoward.MouseButton1Click:connect(function()
KorriBack.Visible = false
KorriFoward.Visible = false
KorriSelect.Visible = false
FortRuinsBack.Visible = true
FortRuinsFoward.Visible = true
FortRuinsSelect.Visible = true
WaypointsImage.Image = "rbxassetid://900469407"
end)

GodButton.Active = true
GodButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
GodButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
GodButton.BorderSizePixel = 2
GodButton.Name = "GodButton"
GodButton.Position = UDim2.new(0, 50, 0, 95)
GodButton.Selectable = true
GodButton.Size = UDim2.new(0, 90, 0, 35)
GodButton.Style = Enum.ButtonStyle.Custom
GodButton.ZIndex = 3
GodButton.Font = Enum.Font.Cartoon
GodButton.FontSize = Enum.FontSize.Size28
GodButton.Text = "God"
GodButton.TextColor3 = Color3.new(1, 1, 1)
GodButton.TextStrokeTransparency = 0
GodButton.Parent = LocalPage

GodButton.MouseButton1Down:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
end)

C4WalkButton.Active = true
C4WalkButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
C4WalkButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
C4WalkButton.BorderSizePixel = 2
C4WalkButton.Name = "C4WalkButton"
C4WalkButton.Position = UDim2.new(0, 155, 0, 95)
C4WalkButton.Selectable = true
C4WalkButton.Size = UDim2.new(0, 90, 0, 35)
C4WalkButton.Style = Enum.ButtonStyle.Custom
C4WalkButton.ZIndex = 3
C4WalkButton.Font = Enum.Font.Cartoon
C4WalkButton.FontSize = Enum.FontSize.Size28
C4WalkButton.Text = "C4 : Off"
C4WalkButton.TextColor3 = Color3.new(1, 1, 1)
C4WalkButton.TextStrokeTransparency = 0
C4WalkButton.Parent = LocalPage

local C4On = false
local Plr = game.Players.LocalPlayer
local material = game.Lighting.Materials.C4Placed
C4WalkButton.MouseButton1Click:connect(function()
local pos = Plr.Character.Torso.Position
if C4On == false then
C4On = true
C4WalkButton.Text = "C4 : On"
C4WalkButton.BorderColor3 = Color3.new(0/255, 255/255, 0/255)
repeat
game.Workspace.Remote.PlaceC4:FireServer(material, pos, true)
wait()
until C4On == false
elseif C4On == true then
C4On = false
C4WalkButton.Text = "C4 : Off"
C4WalkButton.BorderColor3 = Color3.new(170/255, 0/255, 0/255)
end
end)

ESPButton.Active = true
ESPButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
ESPButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
ESPButton.BorderSizePixel = 2
ESPButton.Name = "ESPButton"
ESPButton.Position = UDim2.new(0, 155, 0, 145)
ESPButton.Selectable = true
ESPButton.Size = UDim2.new(0, 90, 0, 35)
ESPButton.Style = Enum.ButtonStyle.Custom
ESPButton.ZIndex = 3
ESPButton.Font = Enum.Font.Cartoon
ESPButton.FontSize = Enum.FontSize.Size28
ESPButton.Text = "ESP : Off"
ESPButton.TextColor3 = Color3.new(1, 1, 1)
ESPButton.TextStrokeTransparency = 0
ESPButton.TextScaled = true
ESPButton.Parent = LocalPage

local esp = false
local player = game.Players.LocalPlayer
ESPButton.MouseButton1Down:connect(function()
	if esp == false then -- forgot esp lol
esp = true
ESPButton.Text = "ESP : on"
for get,nplayer in ipairs(game.Players:GetPlayers()) do
if nplayer.Name == player.Name then
else
local BGUI = Instance.new('BillboardGui', workspace.CurrentCamera)
BGUI.Name = 'BGui'
local BGUIFrame = Instance.new('Frame', BGUI)
BGUIFrame.Name = 'BGUIFrame'
local BGUIName = Instance.new('TextLabel', BGUIFrame)
BGUIName.Name = 'BGUIName'
BGUI.AlwaysOnTop = true
BGUI.Enabled = true
BGUI.Size = UDim2.new(0,60,0,15)
BGUI.Adornee = nplayer.Character.Head
BGUIFrame.BackgroundTransparency = 1
BGUIFrame.Size = UDim2.new(1,0,1,0)
BGUIName.Size = UDim2.new(1,0,1,0)
BGUIName.BackgroundColor3 = Color3.new(0, 0.666667, 1)
BGUIName.Text = nplayer.Name
BGUIName.TextColor3 = Color3.new(255, 255,255)
BGUIName.TextStrokeColor3 = Color3.new(0, 0, 0)
BGUIName.TextStrokeTransparency = 0
BGUIName.Font = "Cartoon"
BGUIName.TextScaled = true
BGUIName.TextWrapped = true
BGUIName.MouseEnter:connect(function()
PlayerSelect.Text = game.Players.LocalPlayer.Name
BGUIName.MouseLeave:connect(function()
PlayerSelect.Text = ""
end)
end)
end
local nvGUI = Instance.new('ScreenGui', player.PlayerGui)
nvGUI.Name = "NVG"
local nvMAIN = Instance.new('TextLabel', nvGUI)
nvMAIN.Name = "Main"
nvMAIN.BackgroundTransparency = 1
for i,v in pairs(game.Players:GetChildren()) do
if v and v.Character and not (v.Name == '' .. player.Name) then
for i,v in pairs(v.Character:GetChildren()) do
if v:IsA('BasePart') then
local nvBox = Instance.new('SelectionBox', nvMAIN)
nvBox.Adornee = v
nvBox.Color = BrickColor.new('Blue')
end
end
end
end
end
elseif esp == true then
esp = false
ESPButton.Text = "ESP : off"
for i,v in ipairs(game.Workspace.CurrentCamera:GetChildren()) do
if v.Name == 'BGui' then
v:Destroy()
end
end
for i,v in pairs(player.PlayerGui:GetChildren()) do
if v.Name == "NVG" and v:IsA('ScreenGui') then
v:Destroy()
end
end
end
end)

HungThirButton.Active = true
HungThirButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
HungThirButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
HungThirButton.BorderSizePixel = 2
HungThirButton.Name = "HungThirButton"
HungThirButton.Position = UDim2.new(0, 260, 0, 95)
HungThirButton.Selectable = true
HungThirButton.Size = UDim2.new(0, 90, 0, 35)
HungThirButton.Style = Enum.ButtonStyle.Custom
HungThirButton.ZIndex = 3
HungThirButton.Font = Enum.Font.Cartoon
HungThirButton.FontSize = Enum.FontSize.Size24
HungThirButton.Text = "Hung/Thir"
HungThirButton.TextColor3 = Color3.new(1, 1, 1)
HungThirButton.TextStrokeTransparency = 0
HungThirButton.Parent = LocalPage

HungThirButton.MouseButton1Down:connect(function()
plr = game.Players.LocalPlayer.playerstats
game.Players.LocalPlayer.playerstats.Thirst.Value = math.huge
game.Players.LocalPlayer.playerstats.Hunger.Value = math.huge
end)

NoclipButton.Active = true
NoclipButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
NoclipButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
NoclipButton.BorderSizePixel = 2
NoclipButton.Name = "NoclipButton"
NoclipButton.Position = UDim2.new(0, 50, 0, 145)
NoclipButton.Selectable = true
NoclipButton.Size = UDim2.new(0, 90, 0, 35)
NoclipButton.Style = Enum.ButtonStyle.Custom
NoclipButton.ZIndex = 3
NoclipButton.Font = Enum.Font.Cartoon
NoclipButton.TextScaled = true
NoclipButton.FontSize = Enum.FontSize.Size28
NoclipButton.Text = "Noclip : Off"
NoclipButton.TextColor3 = Color3.new(1, 1, 1)
NoclipButton.TextStrokeTransparency = 0
NoclipButton.Parent = LocalPage

local noclip = false
NoclipButton.MouseButton1Down:connect(function()
if noclip == true then
noclip = false
NoclipButton.Text = "Noclip : On"
game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Torso.CanCollide = noclip
game.Players.LocalPlayer.Character.Head.CanCollide = noclip
end)
game.Players.LocalPlayer.Character.Torso.Changed:connect(function()
game.Players.LocalPlayer.Character.Torso.CanCollide = noclip
game.Players.LocalPlayer.Character.Head.CanCollide = noclip
end)
elseif noclip == false then
noclip = true
NoclipButton.Text = "Noclip : Off"
end
end)

KillButton.Active = true
KillButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
KillButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
KillButton.BorderSizePixel = 2
KillButton.Name = "KillButton"
KillButton.Position = UDim2.new(0, 50, 0, 95)
KillButton.Selectable = true
KillButton.Size = UDim2.new(0, 90, 0, 35)
KillButton.Style = Enum.ButtonStyle.Custom
KillButton.ZIndex = 3
KillButton.Font = Enum.Font.Cartoon
KillButton.FontSize = Enum.FontSize.Size28
KillButton.Text = "Kill"
KillButton.TextColor3 = Color3.new(1, 1, 1)
KillButton.TextStrokeTransparency = 0
KillButton.Parent = PlayerPage

KillButton.MouseButton1Down:connect(function()
v = PlayerSelect.Text
repeat wait()
workspace.Remote.DoHitLogic:FireServer(game.Players.LocalPlayer.Backpack["Makarov"], workspace[v].Head)
until nil
end)

PlayerSelect.BorderColor3 = Color3.new(0.411765, 0.411765, 0.411765)
PlayerSelect.BackgroundColor3 = Color3.new(255, 255, 255)
PlayerSelect.BorderSizePixel = 2
PlayerSelect.Name = "PlayerSelect"
PlayerSelect.Position = UDim2.new(0, 95, 0, 35)
PlayerSelect.Size = UDim2.new(0, 200, 0, 35)
PlayerSelect.ZIndex = 2
PlayerSelect.Font = Enum.Font.Cartoon
PlayerSelect.FontSize = Enum.FontSize.Size14
PlayerSelect.Text = ""
PlayerSelect.TextColor3 = Color3.new(1, 1, 1)
PlayerSelect.TextScaled = true
PlayerSelect.TextStrokeTransparency = 0
PlayerSelect.TextWrapped = true
PlayerSelect.Parent = PlayerPage

SpectateButton.Active = true
SpectateButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
SpectateButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
SpectateButton.BorderSizePixel = 2
SpectateButton.Name = "SpectateButton"
SpectateButton.Position = UDim2.new(0, 155, 0, 95)
SpectateButton.Selectable = true
SpectateButton.Size = UDim2.new(0, 90, 0, 35)
SpectateButton.Style = Enum.ButtonStyle.Custom
SpectateButton.ZIndex = 3
SpectateButton.Font = Enum.Font.Cartoon
SpectateButton.FontSize = Enum.FontSize.Size28
SpectateButton.Text = "Spectate"
SpectateButton.TextColor3 = Color3.new(1, 1, 1)
SpectateButton.TextScaled = true
SpectateButton.TextStrokeTransparency = 0
SpectateButton.TextWrapped = true
SpectateButton.Parent = PlayerPage

SpectateButton.MouseButton1Click:connect(function()
playername = PlayerSelect.Text
game.Workspace.CurrentCamera.CameraSubject = game.Players[playername].Character.Humanoid
end)

TeleportButton.Active = true
TeleportButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
TeleportButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
TeleportButton.BorderSizePixel = 2
TeleportButton.Name = "TeleportButton"
TeleportButton.Position = UDim2.new(0, 260, 0, 95)
TeleportButton.Selectable = true
TeleportButton.Size = UDim2.new(0, 90, 0, 35)
TeleportButton.Style = Enum.ButtonStyle.Custom
TeleportButton.ZIndex = 3
TeleportButton.Font = Enum.Font.Cartoon
TeleportButton.FontSize = Enum.FontSize.Size24
TeleportButton.Text = "Teleport To"
TeleportButton.TextColor3 = Color3.new(1, 1, 1)
TeleportButton.TextScaled = true
TeleportButton.TextStrokeTransparency = 0
TeleportButton.TextWrapped = true
TeleportButton.Parent = PlayerPage

TeleportButton.MouseButton1Click:connect(function()
o = PlayerSelect.Text
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[o].Character.HumanoidRootPart.Position)
end)

SpeedSet.BackgroundColor3 = Color3.new(255, 255, 255)
SpeedSet.BorderColor3 = Color3.new(0.411765, 0.411765, 0.411765)
SpeedSet.BorderSizePixel = 2
SpeedSet.Name = "SpeedSet"
SpeedSet.Position = UDim2.new(0, 95, 0, 35)
SpeedSet.Size = UDim2.new(0, 200, 0, 35)
SpeedSet.ZIndex = 2
SpeedSet.Font = Enum.Font.Cartoon
SpeedSet.FontSize = Enum.FontSize.Size14
SpeedSet.Text = "Enter Vehicle Speed"
SpeedSet.TextColor3 = Color3.new(1, 1, 1)
SpeedSet.TextScaled = true
SpeedSet.TextStrokeTransparency = 0
SpeedSet.TextWrapped = true
SpeedSet.Parent = VehiclePage

SpeedButton.Active = true
SpeedButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
SpeedButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
SpeedButton.BorderSizePixel = 2
SpeedButton.Name = "SpeedButton"
SpeedButton.Position = UDim2.new(0, 90, 0, 95)
SpeedButton.Selectable = true
SpeedButton.Size = UDim2.new(0, 100, 0, 35)
SpeedButton.Style = Enum.ButtonStyle.Custom
SpeedButton.ZIndex = 3
SpeedButton.Font = Enum.Font.Cartoon
SpeedButton.FontSize = Enum.FontSize.Size28
SpeedButton.Text = "Set Speed"
SpeedButton.TextColor3 = Color3.new(1, 1, 1)
SpeedButton.TextScaled = true
SpeedButton.TextStrokeTransparency = 0
SpeedButton.TextWrapped = true
SpeedButton.Parent = VehiclePage

SpeedButton.MouseButton1Click:connect(function()
for i,v in pairs(workspace.Vehicles:GetChildren()) do
if v.Name ~= 'VehicleWreck' then
v.Stats.MaxSpeed.Value = SpeedSet.Text
v.Stats.MaxSpeed.Offroad.Value = SpeedSet.Text
end
end
end)

CarHeal.Active = true
CarHeal.BackgroundColor3 = Color3.new(0, 0.666667, 1)
CarHeal.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
CarHeal.BorderSizePixel = 2
CarHeal.Name = "CarHeal"
CarHeal.Position = UDim2.new(0, 200, 0, 95)
CarHeal.Selectable = true
CarHeal.Size = UDim2.new(0, 100, 0, 35)
CarHeal.Style = Enum.ButtonStyle.Custom
CarHeal.ZIndex = 3
CarHeal.Font = Enum.Font.Cartoon
CarHeal.FontSize = Enum.FontSize.Size28
CarHeal.Text = "Semi-God Car"
CarHeal.TextScaled = true
CarHeal.TextColor3 = Color3.new(1, 1, 1)
CarHeal.TextStrokeTransparency = 0
CarHeal.Parent = VehiclePage

CarHeal.MouseButton1Click:connect(function()
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Engine.Value = 133742069
end
end
end
wait(1)
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Tank.Value = math.huge
end
end
end
wait(1)
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Hull.Value = math.huge
end
end
end
wait(1)
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Armor.Value = math.huge
end
end
end
end)

InfiniteFuel.Active = true
InfiniteFuel.BackgroundColor3 = Color3.new(0, 0.666667, 1)
InfiniteFuel.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
InfiniteFuel.BorderSizePixel = 2
InfiniteFuel.Name = "InfiniteFuel"
InfiniteFuel.Position = UDim2.new(0, 90, 0, 140)
InfiniteFuel.Selectable = true
InfiniteFuel.Size = UDim2.new(0, 210, 0, 35)
InfiniteFuel.Style = Enum.ButtonStyle.Custom
InfiniteFuel.ZIndex = 3
InfiniteFuel.Font = Enum.Font.Cartoon
InfiniteFuel.FontSize = Enum.FontSize.Size28
InfiniteFuel.Text = "Infinite Fuel"
InfiniteFuel.TextColor3 = Color3.new(1, 1, 1)
InfiniteFuel.TextScaled = true
InfiniteFuel.TextStrokeTransparency = 0
InfiniteFuel.TextWrapped = true
InfiniteFuel.Parent = VehiclePage

InfiniteFuel.MouseButton1Click:connect(function()
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Fuel.Value = math.huge
end
end
end
end)

FloatButton.Active = true
FloatButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
FloatButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
FloatButton.BorderSizePixel = 2
FloatButton.Name = "FloatButton"
FloatButton.Position = UDim2.new(0, 260, 0, 145)
FloatButton.Selectable = true
FloatButton.Size = UDim2.new(0, 90, 0, 35)
FloatButton.Style = Enum.ButtonStyle.Custom
FloatButton.ZIndex = 3
FloatButton.Font = Enum.Font.Cartoon
FloatButton.FontSize = Enum.FontSize.Size28
FloatButton.Text = "Float : Off"
FloatButton.TextColor3 = Color3.new(1, 1, 1)
FloatButton.TextStrokeTransparency = 0
FloatButton.TextScaled = true
FloatButton.Parent = LocalPage

local ApocFloatBrick = Instance.new("Part", game.Workspace)
ApocFloatBrick.Name = "Float"
ApocFloatBrick.Material = Enum.Material.Neon
ApocFloatBrick.BrickColor = BrickColor.new("Lime green")
ApocFloatBrick.Transparency = 1
ApocFloatBrick.Position = Vector3.new(-141.5, 0.500001013, 40)
ApocFloatBrick.Anchored = true
ApocFloatBrick.CFrame = CFrame.new(-141.5, 0.500001013, 40, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ApocFloatBrick.FormFactor = Enum.FormFactor.Symmetric
ApocFloatBrick.Size = Vector3.new(6, 1, 6)
ApocFloatBrick.TopSurface = Enum.SurfaceType.Smooth
ApocFloatBrick.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)

local FLOATA = false

local FLOATBRICKK = ApocFloatBrick:Clone()
FLOATBRICKK.Parent = game.Players.LocalPlayer.Character.Torso

FloatButton.MouseButton1Down:connect(function()
	if FLOATA == false then
		FLOATA = true
		FLOATBRICKK.CanCollide = true
		FloatButton.Text = 'Float : On'
		wait(0.1)
		repeat wait()
			FLOATBRICKK.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0,-3.5,0)
		until FLOATA == false
	elseif FLOATA == true then
		FLOATA = false
		FloatButton.Text = 'Float : Off'
		FLOATBRICKK.CanCollide = false
		
	end
end)

-------
local MessageBox = Instance.new("TextBox")
MessageBox.BackgroundColor3 = Color3.new(255, 255, 255)
MessageBox.BorderColor3 = Color3.new(0.411765, 0.411765, 0.411765)
MessageBox.BorderSizePixel = 2
MessageBox.Name = "MessageBox"
MessageBox.Position = UDim2.new(0, 85, 0, 35)
MessageBox.Size = UDim2.new(0, 225, 0, 50)
MessageBox.ZIndex = 2
MessageBox.Font = Enum.Font.Cartoon
MessageBox.FontSize = Enum.FontSize.Size14
MessageBox.Text = ""
MessageBox.TextColor3 = Color3.new(1, 1, 1)
MessageBox.TextScaled = true
MessageBox.TextStrokeTransparency = 0
MessageBox.TextWrapped = true
MessageBox.Parent = ServerPage
-------
local ServMessage = Instance.new("TextLabel")
ServMessage.BackgroundTransparency = 2
ServMessage.Name = "ServMessage"
ServMessage.Position = UDim2.new(0, 50, 0, 100)
ServMessage.Size = UDim2.new(0, 125, 0, 20)
ServMessage.ZIndex = 3
ServMessage.Font = Enum.Font.Cartoon
ServMessage.FontSize = Enum.FontSize.Size24
ServMessage.Text = "Server Messaging"
ServMessage.TextColor3 = Color3.new(1, 1, 1)
ServMessage.TextStrokeTransparency = 0
ServMessage.Parent = ServerPage
-------
local RedButton = Instance.new("TextButton")
RedButton.Active = true
RedButton.BackgroundColor3 = Color3.new(1, 0.00392157, 0.00392157)
RedButton.BorderColor3 = Color3.new(0.666667, 0, 0)
RedButton.BorderSizePixel = 2
RedButton.Name = "RedButton"
RedButton.Position = UDim2.new(0, 20, 0, 125)
RedButton.Selectable = true
RedButton.Size = UDim2.new(0, 55, 0, 20)
RedButton.Style = Enum.ButtonStyle.Custom
RedButton.ZIndex = 2
RedButton.Font = Enum.Font.Cartoon
RedButton.FontSize = Enum.FontSize.Size14
RedButton.Text = "R"
RedButton.TextColor3 = Color3.new(1, 1, 1)
RedButton.TextScaled = true
RedButton.TextStrokeTransparency = 0
RedButton.TextWrapped = true
RedButton.Parent = ServerPage
RedButton.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'Red', MessageBox.Text)
end
end)
-------
local BlueButton = Instance.new("TextButton")
BlueButton.Active = true
BlueButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
BlueButton.BorderColor3 = Color3.new(0, 0.470588, 0.705882)
BlueButton.BorderSizePixel = 2
BlueButton.Name = "BlueButton"
BlueButton.Position = UDim2.new(0, 20, 0, 151)
BlueButton.Selectable = true
BlueButton.Size = UDim2.new(0, 55, 0, 20)
BlueButton.Style = Enum.ButtonStyle.Custom
BlueButton.ZIndex = 2
BlueButton.Font = Enum.Font.Cartoon
BlueButton.FontSize = Enum.FontSize.Size14
BlueButton.Text = "B"
BlueButton.TextColor3 = Color3.new(1, 1, 1)
BlueButton.TextScaled = true
BlueButton.TextStrokeTransparency = 0
BlueButton.TextWrapped = true
BlueButton.Parent = ServerPage
BlueButton.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'Blue', MessageBox.Text)
end
end)
-------
local GreenButton = Instance.new("TextButton")
GreenButton.Active = true
GreenButton.BackgroundColor3 = Color3.new(0, 1, 0)
GreenButton.BorderColor3 = Color3.new(0, 0.666667, 0)
GreenButton.BorderSizePixel = 2
GreenButton.Name = "GreenButton"
GreenButton.Position = UDim2.new(0, 140, 0, 125)
GreenButton.Selectable = true
GreenButton.Size = UDim2.new(0, 55, 0, 20)
GreenButton.Style = Enum.ButtonStyle.Custom
GreenButton.ZIndex = 2
GreenButton.Font = Enum.Font.Cartoon
GreenButton.FontSize = Enum.FontSize.Size14
GreenButton.Text = "G"
GreenButton.TextColor3 = Color3.new(1, 1, 1)
GreenButton.TextScaled = true
GreenButton.TextStrokeTransparency = 0
GreenButton.TextWrapped = true
GreenButton.Parent = ServerPage
GreenButton.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'Green', MessageBox.Text)
end
end)
-------
local YellowButton = Instance.new("TextButton")
YellowButton.Active = true
YellowButton.BackgroundColor3 = Color3.new(1, 1, 0)
YellowButton.BorderColor3 = Color3.new(1, 0.835294, 0.00784314)
YellowButton.BorderSizePixel = 2
YellowButton.Name = "YellowButton"
YellowButton.Position = UDim2.new(0, 80, 0, 125)
YellowButton.Selectable = true
YellowButton.Size = UDim2.new(0, 55, 0, 20)
YellowButton.Style = Enum.ButtonStyle.Custom
YellowButton.ZIndex = 2
YellowButton.Font = Enum.Font.Cartoon
YellowButton.FontSize = Enum.FontSize.Size14
YellowButton.Text = "Y"
YellowButton.TextColor3 = Color3.new(1, 1, 1)
YellowButton.TextScaled = true
YellowButton.TextStrokeTransparency = 0
YellowButton.TextWrapped = true
YellowButton.Parent = ServerPage
YellowButton.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'Yellow', MessageBox.Text)
end
end)
-------
local WhiteButton = Instance.new("TextButton")
WhiteButton.Active = true
WhiteButton.BackgroundColor3 = Color3.new(255, 255, 255)
WhiteButton.BorderColor3 = Color3.new(0.411765, 0.411765, 0.411765)
WhiteButton.BorderSizePixel = 2
WhiteButton.Name = "WhiteButton"
WhiteButton.Position = UDim2.new(0, 80, 0, 151)
WhiteButton.Selectable = true
WhiteButton.Size = UDim2.new(0, 55, 0, 20)
WhiteButton.Style = Enum.ButtonStyle.Custom
WhiteButton.ZIndex = 2
WhiteButton.Font = Enum.Font.Cartoon
WhiteButton.FontSize = Enum.FontSize.Size14
WhiteButton.Text = "W"
WhiteButton.TextColor3 = Color3.new(1, 1, 1)
WhiteButton.TextScaled = true
WhiteButton.TextStrokeTransparency = 0
WhiteButton.TextWrapped = true
WhiteButton.Parent = ServerPage
WhiteButton.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'White', MessageBox.Text)
end
end)
-------
local SpamButton = Instance.new("TextButton")
SpamButton.Active = true
SpamButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
SpamButton.BorderColor3 = Color3.new(0, 0.470588, 0.705882)
SpamButton.BorderSizePixel = 0
SpamButton.Name = "SpamButton"
SpamButton.Position = UDim2.new(0, 139, 0, 149)
SpamButton.Selectable = true
SpamButton.Size = UDim2.new(0, 57, 0, 24)
SpamButton.Style = Enum.ButtonStyle.Custom
SpamButton.ZIndex = 2
SpamButton.Font = Enum.Font.Cartoon
SpamButton.FontSize = Enum.FontSize.Size14
SpamButton.Text = "Spam"
SpamButton.TextColor3 = Color3.new(1, 1, 1)
SpamButton.TextScaled = true
SpamButton.TextStrokeTransparency = 0
SpamButton.TextWrapped = true
SpamButton.Parent = ServerPage
SpamButton.MouseButton1Click:connect(function()
Colors = {"Blue", "Green", "Red", "Yellow", "White"} 
for i,v in pairs(game.Players:GetChildren()) do 
game.Workspace.Remote.SendMessage:FireServer(v, Colors[math.random(1, #Colors)], MessageBox.Text) 
end
end)
-------
local ChatSpamButton = Instance.new("TextButton")
ChatSpamButton.Active = true
ChatSpamButton.BackgroundColor3 = Color3.new(0, 0.666667, 1)
ChatSpamButton.BorderColor3 = Color3.new(0, 0.486275, 0.729412)
ChatSpamButton.BorderSizePixel = 2
ChatSpamButton.Name = "ChatSpamButton"
ChatSpamButton.Position = UDim2.new(0, 225, 0, 125)
ChatSpamButton.Selectable = true
ChatSpamButton.Size = UDim2.new(0, 150, 0, 45)
ChatSpamButton.Style = Enum.ButtonStyle.Custom
ChatSpamButton.ZIndex = 2
ChatSpamButton.Font = Enum.Font.Cartoon
ChatSpamButton.FontSize = Enum.FontSize.Size14
ChatSpamButton.Text = "Chat Spam : Off"
ChatSpamButton.TextColor3 = Color3.new(1, 1, 1)
ChatSpamButton.TextScaled = true
ChatSpamButton.TextStrokeTransparency = 0
ChatSpamButton.TextWrapped = true
ChatSpamButton.Parent = ServerPage
tspamBool = false
ChatSpamButton.MouseButton1Click:connect(function()
    if tspamBool == false then
        tspamBool = true
        
    words = {tostring(MessageBox.Text), MessageBox.Text..'.'}
while tspamBool do
wait()
game.workspace.Remote.Chat:FireServer("Global", words[math.random(#words)])
end
    else
        tspamBool = false
    end
        
end)

--[[]]--





-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK
-- DON'T MOVE THIS UP OR ELSE NOTHING WILL WORK

while wait() do
Title.TextColor3 = Color3.new(1,0,0)
-- Title
for i=1,15 do
game:GetService("RunService").RenderStepped:wait()
Title.TextColor3 = Color3.new(Title.TextColor3.r,Title.TextColor3.g+(17/255),Title.TextColor3.b)
end
for i=1,15 do
game:GetService("RunService").RenderStepped:wait()
Title.TextColor3 = Color3.new(Title.TextColor3.r-(17/255),Title.TextColor3.g,Title.TextColor3.b)
end
for i=1,15 do
game:GetService("RunService").RenderStepped:wait()
Title.TextColor3 = Color3.new(Title.TextColor3.r,Title.TextColor3.g,Title.TextColor3.b+(17/255))
end
for i=1,15 do
game:GetService("RunService").RenderStepped:wait()
Title.TextColor3 = Color3.new(Title.TextColor3.r,Title.TextColor3.g-(17/255),Title.TextColor3.b)
end
for i=1,15 do
game:GetService("RunService").RenderStepped:wait()
Title.TextColor3 = Color3.new(Title.TextColor3.r+(17/255),Title.TextColor3.g,Title.TextColor3.b)
end
for i=1,15 do
game:GetService("RunService").RenderStepped:wait()
Title.TextColor3 = Color3.new(Title.TextColor3.r,Title.TextColor3.g,Title.TextColor3.b-(17/255))
end
end
