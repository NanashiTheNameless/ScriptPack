-- Objects

local LGUI = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Ver = Instance.new("TextLabel")
local GRAB = Instance.new("TextButton")
local styleLine = Instance.new("Frame")
local GAXE = Instance.new("TextButton")
local styleLine_2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local styleLine_3 = Instance.new("Frame")
local CCW = Instance.new("TextButton")
local styleLine_4 = Instance.new("Frame")
local ULM = Instance.new("TextButton")
local styleLine_5 = Instance.new("Frame")
local FTR = Instance.new("TextButton")
local styleLine_6 = Instance.new("Frame")
local BTOOL = Instance.new("TextButton")
local styleLine_7 = Instance.new("Frame")

-- Properties

LGUI.Name = "LGUI"
LGUI.Parent = game.CoreGui

Background.Name = "Background"
Background.Parent = LGUI
Background.Active = true
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.Draggable = true
Background.Position = UDim2.new(0, 0, 0, 355)
Background.Selectable = true
Background.Size = UDim2.new(0, 150, 0, 275)
Background.Style = Enum.FrameStyle.DropShadow

Ver.Name = "Ver"
Ver.Parent = Background
Ver.BackgroundColor3 = Color3.new(1, 1, 1)
Ver.BackgroundTransparency = 1
Ver.BorderSizePixel = 0
Ver.Position = UDim2.new(0, 0, 1, -15)
Ver.Size = UDim2.new(1, -6, 0, 10)
Ver.Font = Enum.Font.SourceSans
Ver.FontSize = Enum.FontSize.Size14
Ver.Text = "Version 2.0"
Ver.TextColor3 = Color3.new(1, 1, 1)
Ver.TextTransparency = 0.80000001192093

GRAB.Name = "GRAB"
GRAB.Parent = Background
GRAB.BackgroundColor3 = Color3.new(1, 1, 1)
GRAB.BackgroundTransparency = 0.5
GRAB.BorderSizePixel = 0
GRAB.Position = UDim2.new(0, 17, 0, 75)
GRAB.Size = UDim2.new(0, 100, 0, 30)
GRAB.Font = Enum.Font.SourceSansBold
GRAB.FontSize = Enum.FontSize.Size18
GRAB.Text = "Grabber"
GRAB.TextColor3 = Color3.new(0, 0, 0)
GRAB.TextTransparency = 0.5

styleLine.Name = "styleLine"
styleLine.Parent = GRAB
styleLine.BackgroundColor3 = Color3.new(1, 1, 1)
styleLine.BorderSizePixel = 0
styleLine.Size = UDim2.new(0, 5, 1, 0)

GAXE.Name = "GAXE"
GAXE.Parent = Background
GAXE.BackgroundColor3 = Color3.new(1, 1, 1)
GAXE.BackgroundTransparency = 0.5
GAXE.BorderSizePixel = 0
GAXE.Position = UDim2.new(0, 17, 0, 40)
GAXE.Size = UDim2.new(0, 100, 0, 30)
GAXE.Font = Enum.Font.SourceSansBold
GAXE.FontSize = Enum.FontSize.Size18
GAXE.Text = "Golden Axe"
GAXE.TextColor3 = Color3.new(0, 0, 0)
GAXE.TextTransparency = 0.5

styleLine_2.Name = "styleLine"
styleLine_2.Parent = GAXE
styleLine_2.BackgroundColor3 = Color3.new(1, 1, 1)
styleLine_2.BorderSizePixel = 0
styleLine_2.Size = UDim2.new(0, 5, 1, 0)

Title.Name = "Title"
Title.Parent = Background
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, -2, 0, -2)
Title.Size = UDim2.new(1, 4, 0, 32)
Title.Font = Enum.Font.SourceSansBold
Title.FontSize = Enum.FontSize.Size24
Title.Text = "LumberGui"
Title.TextColor3 = Color3.new(0, 0, 0)
Title.TextXAlignment = Enum.TextXAlignment.Left

styleLine_3.Name = "styleLine"
styleLine_3.Parent = Title
styleLine_3.BackgroundColor3 = Color3.new(0, 0, 0)
styleLine_3.BackgroundTransparency = 0.30000001192093
styleLine_3.BorderSizePixel = 0
styleLine_3.Position = UDim2.new(0, 0, 0, 28)
styleLine_3.Size = UDim2.new(1, 0, 0, 4)
styleLine_3.ZIndex = 2

CCW.Name = "CCW"
CCW.Parent = Background
CCW.BackgroundColor3 = Color3.new(1, 1, 1)
CCW.BackgroundTransparency = 0.5
CCW.BorderSizePixel = 0
CCW.Position = UDim2.new(0, 17, 0, 110)
CCW.Size = UDim2.new(0, 100, 0, 30)
CCW.Font = Enum.Font.SourceSansBold
CCW.FontSize = Enum.FontSize.Size14
CCW.Text = "CanCollide Water"
CCW.TextColor3 = Color3.new(0, 0, 0)
CCW.TextTransparency = 0.5

styleLine_4.Name = "styleLine"
styleLine_4.Parent = CCW
styleLine_4.BackgroundColor3 = Color3.new(1, 1, 1)
styleLine_4.BorderSizePixel = 0
styleLine_4.Size = UDim2.new(0, 5, 1, 0)

ULM.Name = "ULM"
ULM.Parent = Background
ULM.BackgroundColor3 = Color3.new(1, 1, 1)
ULM.BackgroundTransparency = 0.5
ULM.BorderSizePixel = 0
ULM.Position = UDim2.new(0, 17, 0, 145)
ULM.Size = UDim2.new(0, 100, 0, 30)
ULM.Font = Enum.Font.SourceSansBold
ULM.FontSize = Enum.FontSize.Size18
ULM.Text = "Unlock Maze"
ULM.TextColor3 = Color3.new(0, 0, 0)
ULM.TextTransparency = 0.5

styleLine_5.Name = "styleLine"
styleLine_5.Parent = ULM
styleLine_5.BackgroundColor3 = Color3.new(1, 1, 1)
styleLine_5.BorderSizePixel = 0
styleLine_5.Size = UDim2.new(0, 5, 1, 0)

FTR.Name = "FTR"
FTR.Parent = Background
FTR.BackgroundColor3 = Color3.new(1, 1, 1)
FTR.BackgroundTransparency = 0.5
FTR.BorderSizePixel = 0
FTR.Position = UDim2.new(0, 17, 0, 215)
FTR.Size = UDim2.new(0, 100, 0, 30)
FTR.Font = Enum.Font.SourceSansBold
FTR.FontSize = Enum.FontSize.Size18
FTR.Text = "Truck speed"
FTR.TextColor3 = Color3.new(0, 0, 0)
FTR.TextTransparency = 0.5

styleLine_6.Name = "styleLine"
styleLine_6.Parent = FTR
styleLine_6.BackgroundColor3 = Color3.new(1, 1, 1)
styleLine_6.BorderSizePixel = 0
styleLine_6.Size = UDim2.new(0, 5, 1, 0)

BTOOL.Name = "BTOOL"
BTOOL.Parent = Background
BTOOL.BackgroundColor3 = Color3.new(1, 1, 1)
BTOOL.BackgroundTransparency = 0.5
BTOOL.BorderSizePixel = 0
BTOOL.Position = UDim2.new(0, 17, 0, 180)
BTOOL.Size = UDim2.new(0, 100, 0, 30)
BTOOL.Font = Enum.Font.SourceSansBold
BTOOL.FontSize = Enum.FontSize.Size18
BTOOL.Text = "BTools"
BTOOL.TextColor3 = Color3.new(0, 0, 0)
BTOOL.TextTransparency = 0.5

styleLine_7.Name = "styleLine"
styleLine_7.Parent = BTOOL
styleLine_7.BackgroundColor3 = Color3.new(1, 1, 1)
styleLine_7.BorderSizePixel = 0
styleLine_7.Size = UDim2.new(0, 5, 1, 0)

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(m)
if m == 'q' then
Background:TweenPosition(UDim2.new(0,-150,0,355) , "Out", "Quad", 1, true)
end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(m)
if m == 'e' then
Background:TweenPosition(UDim2.new(0,0,0,355) , "Out", "Quad", 1, true)
end
end)

BTOOL.MouseButton1Down:connect(function() 
lp = game.Players.LocalPlayer
local a,b,c = Instance.new("HopperBin", lp.Backpack),Instance.new("HopperBin", lp.Backpack),Instance.new("HopperBin", lp.Backpack)
a.BinType = 2
b.BinType = 3
c.BinType = 4
print('BTools Loaded')
end)

CCW.MouseButton1Down:connect(function() 
for i,v in pairs(game.Workspace.Water:GetChildren()) do
if v:IsA("Part") then
v.CanCollide = true
end
end
print('Water CanCollided')
end)


ULM.MouseButton1Down:connect(function()
for i,v in pairs(game.Workspace.Region_MazeCave:GetChildren()) do
if v:IsA("Part") then
v.Locked = false
end
end
print('Maze Cave Unlocked')
end)

GAXE.MouseButton1Down:connect(function()
Door = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Model
Door1 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.ItemName
Door2 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Price
Door3 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Description
Door4 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Box
Door5 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.AssetId
Door6 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.ItemName
Door7 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.ItemImage
Door8 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.AxeClass
Door9 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Type
Door:Remove()
Door1:Remove()
Door2:Remove()
Door3:Remove()
Door4:Remove()
Door5:Remove()
Door6:Remove()
Door7:Remove()
Door8:Remove()
Door9:Remove()

ff = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet
tt = game.ReplicatedStorage.Purchasables.Tools.AllTools.GoldAxe
tt.Model:Clone().Parent = ff
tt.ItemName:Clone().Parent = ff
tt.Price:Clone().Parent = ff
tt.Description:Clone().Parent = ff
tt.Box:Clone().Parent = ff
tt.AssetId:Clone().Parent = ff
tt.ItemImage:Clone().Parent = ff
tt.AxeClass:Clone().Parent = ff
tt.Type:Clone().Parent = ff
print('Golden Axe Loaded')
end)


GRAB.MouseButton1Down:connect(function()
f = game.Lighting.Dragger:Clone()
f.Parent = game.Players.LocalPlayer.Backpack
print('Grabber Loaded')
end)

FTR.MouseButton1Down:connect(function()
game.Workspace.PlayerModels.ChildAdded:connect(function(ADDED)
 wait(0.5)
 if ADDED:FindFirstChild('Configuration') then
  if ADDED.Configuration:FindFirstChild('MaxSpeed') then
   ADDED.Configuration.MaxSpeed.Value = 5
   print('Truck speed hack Loaded')
  end
 end
end)
end)