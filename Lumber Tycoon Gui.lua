Option = false
Found = false
Tool = "None"
Down = false
Mouse = game.Players.LocalPlayer:GetMouse()

Client = game.ReplicatedStorage.Interaction.ClientSetListPlayer
players = game.Players
for i, v in pairs(players:GetPlayers()) do
if v.Name ~= players.LocalPlayer.Name then
Client:InvokeServer(players.LocalPlayer.BlacklistFolder, v, true)
end
end
players.PlayerAdded:connect(function(plr)
Client:InvokeServer(players.LocalPlayer.BlacklistFolder, plr, true)
end)

function move(object)
object:MoveTo(game.Players.LocalPlayer.Character.Head.Position + Vector3.new(5, -4, 5))
object.WoodSection.Anchored = true
wait(2)
object.WoodSection.Anchored = false
end

function tree(object, class)
for i, v in pairs(object:GetChildren()) do
if v.Name == "TreeClass" then
if v.Value == class then
if Found == false then
move(object)
Found = true
end
end
end
end
end

function cut(object, class)
for i, v in pairs(object:GetChildren()) do
if v.Name == "TreeClass" then
if v.Value == class then
for a, b in pairs(object:GetChildren()) do
if b.Name == "Owner" then
for c, d in pairs(b:GetChildren()) do
if d.Name == "OwnerString" then
if d.Value == game.Players.LocalPlayer.Name then
move(object)
else
if d.Value == "" then
move(object)
end
end
end
end
end
end
end
end
end
end

local Text = Instance.new("TextLabel")
local Main = Instance.new("Frame")
local CF = Instance.new("ScreenGui")
local CG69 = game.CoreGui
local Tab1 = Instance.new("TextButton")
local Tab2 = Instance.new("TextButton")
local Tab3 = Instance.new("TextButton")
local TTab1 = Instance.new("Frame")
local TTab2 = Instance.new("Frame")
local TTab3 = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Depart = Instance.new("TextLabel")


local place = UDim2.new(0, 0, 0, 70)
local size = UDim2.new(0, 300, 0, 100)

CF.Name = "GO!!"
CF.Parent = CG69
local CGG = CG69["GO!!"]


Main.Name = "Main"
Main.Parent = CF
Main.BackgroundColor3 = Color3.new(0.1, 0.6, 0.3)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.Position = UDim2.new(0, 500, 0, 500)
Main.Size = UDim2.new(0, 300, 0, 75)
Main.Visible = true
Main.Draggable = true
Main.Active = true

Text.Name = "Text"
Text.Parent = Main
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0.45, 0, 0, 0)
Text.Size = UDim2.new(0, 20, 0, 35)
Text.Font = Enum.Font.SourceSansBold
Text.FontSize = Enum.FontSize.Size18
Text.Text = "GUI Not in Use"
Text.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
Text.TextSize = 18

Depart .Name = "Depart"
Depart .Parent = Main
Depart .BackgroundColor3 = Color3.new(1, 1, 1)
Depart .BackgroundTransparency = 1
Depart .Position = UDim2.new(0, 150, 0, 0)
Depart .Size = UDim2.new(0, 1, 0, 10)
Depart .Font = Enum.Font.SourceSansBold
Depart .FontSize = Enum.FontSize.Size18
Depart .Text = "Time To Departure: 0"
Depart .TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
Depart .TextSize = 18

Tab1.Name = "Basic"
Tab1.Parent = Main
Tab1.BackgroundColor3 = Color3.new(0.3, 0.6, 0.9)
Tab1.Position = UDim2.new(0, 0, 0, 35)
Tab1.Size = UDim2.new(0, 80, 0, 20)
Tab1.Font = Enum.Font.Cartoon
Tab1.FontSize = Enum.FontSize.Size14
Tab1.Text = "Basic Tab"
Tab1.TextSize = 18

Tab2.Name = "UTrees"
Tab2.Parent = Main
Tab2.BackgroundColor3 = Color3.new(1, 0, 0)
Tab2.Position = UDim2.new(0, 110, 0, 35)
Tab2.Size = UDim2.new(0, 80, 0, 20)
Tab2.Font = Enum.Font.Cartoon
Tab2.FontSize = Enum.FontSize.Size14
Tab2.Text = "UTrees"
Tab2.TextSize = 18

Tab3.Name = "CTrees"
Tab3.Parent = Main
Tab3.BackgroundColor3 = Color3.new(0.5, 0.8, 0.2)
Tab3.Position = UDim2.new(0, 220, 0, 35)
Tab3.Size = UDim2.new(0, 80, 0, 20)
Tab3.Font = Enum.Font.Cartoon
Tab3.FontSize = Enum.FontSize.Size14
Tab3.Text = "CTrees"
Tab3.TextSize = 18

TTab1.Name = "GunsTab"
TTab1.Parent = Main
TTab1.BackgroundColor3 = Color3.new(0, 0, 0)
TTab1.BorderColor3 = Color3.new(1, 1, 1)
TTab1.Position = place
TTab1.Size = size
TTab1.Visible = true

TTab2.Name = "ItemsTab"
TTab2.Parent = Main
TTab2.BackgroundColor3 = Color3.new(1, 1, 1)
TTab2.BorderColor3 = Color3.new(0, 0, 0)
TTab2.Position = place
TTab2.Size = size
TTab2.Visible = false

TTab3.Name = "StatsTab"
TTab3.Parent = Main
TTab3.BackgroundColor3 = Color3.new(0, 1, 0)
TTab3.BorderColor3 = Color3.new(1, 0, 1)
TTab3.Position = place
TTab3.Size = size
TTab3.Visible = false

Close.Name = "X"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 0, 0)
Close.Position = UDim2.new(0, 275, 0, 0)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Font = Enum.Font.Cartoon
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextSize = 14


-- Tab 1 Buttons --
Dupe = Instance.new("TextButton")
DupeLabel = Instance.new("TextLabel")
Steal = Instance.new("TextButton")
CopyTool = Instance.new("TextButton")
DeleteTool = Instance.new("TextButton")
MoveTool = Instance.new("TextButton")

Dupe.Name = "Dupe"
Dupe.Parent = TTab1
Dupe.BackgroundColor3 = Color3.new(0.7, 0, 0)
Dupe.Position = UDim2.new(0, 105, 0, 54)
Dupe.Size = UDim2.new(0,85, 0, 25)
Dupe.Font = Enum.Font.Cartoon
Dupe.FontSize = Enum.FontSize.Size14
Dupe.Text = "Dupe"
Dupe.TextSize = 14

DupeLabel.Name = "Dupe"
DupeLabel.Parent = TTab1
DupeLabel.BackgroundColor3 = Color3.new(0.7, 0, 0)
DupeLabel.BackgroundTransparency = 1
DupeLabel.Position = UDim2.new(0, 105, 0, 74)
DupeLabel.Size = UDim2.new(0,85, 0, 25)
DupeLabel.Font = Enum.Font.Cartoon
DupeLabel.FontSize = Enum.FontSize.Size14
DupeLabel.Text = "Current save Will Save"
DupeLabel.TextColor3 = Color3.new(255, 255, 255)
DupeLabel.TextSize = 14

Steal.Name = "Dupe"
Steal.Parent = TTab1
Steal.BackgroundColor3 = Color3.new(1, 1, 1)
Steal.Position = UDim2.new(0, 105, 0, 31)
Steal.Size = UDim2.new(0,85, 0, 25)
Steal.Font = Enum.Font.Cartoon
Steal.FontSize = Enum.FontSize.Size14
Steal.Text = "Steal"
Steal.TextSize = 14

CopyTool.Name = "CopyTool"
CopyTool.Parent = TTab1
CopyTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
CopyTool.Position = UDim2.new(0, 1, 0, 1)
CopyTool.Size = UDim2.new(0,85, 0, 25)
CopyTool.Font = Enum.Font.Cartoon
CopyTool.FontSize = Enum.FontSize.Size14
CopyTool.Text = "Copy"
CopyTool.TextSize = 14

DeleteTool.Name = "DeleteTool"
DeleteTool.Parent = TTab1
DeleteTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
DeleteTool.Position = UDim2.new(0, 90, 0, 1)
DeleteTool.Size = UDim2.new(0,85, 0, 25)
DeleteTool.Font = Enum.Font.Cartoon
DeleteTool.FontSize = Enum.FontSize.Size14
DeleteTool.Text = "Delete"
DeleteTool.TextSize = 14

MoveTool.Name = "MoveTool"
MoveTool.Parent = TTab1
MoveTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
MoveTool.Position = UDim2.new(0, 179, 0, 1)
MoveTool.Size = UDim2.new(0,85, 0, 25)
MoveTool.Font = Enum.Font.Cartoon
MoveTool.FontSize = Enum.FontSize.Size14
MoveTool.Text = "Move"
MoveTool.TextSize = 14

-- end --



-- Tab 1 Button Functions --
Dupe.MouseButton1Down:connect(function()
plr = game:GetService("Players").LocalPlayer
slot = plr.CurrentSaveSlot
if Option == false then
if slot.Value == -1 then
Option = true
slot.RobloxLocked = true
Dupe.BackgroundColor3 = Color3.new(0, 1, 0)
DupeLabel.Text = "Current save Will  Not Save"
end
else
Option = false
slot.RobloxLocked = false
Dupe.BackgroundColor3 = Color3.new(0.7, 0, 0)
DupeLabel.Text = "Current save Will Save"
end
end)

Steal.MouseButton1Down:connect(function()
Owner = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "Owner" then
Owner = true
end
end

if Owner == false then
for i, v in pairs(game.Workspace.PlayerModels:GetChildren()) do
for a, b in pairs(v:GetChildren()) do
if b.Name == "Owner" then
for c, d in pairs(b:GetChildren()) do
if d:IsA("StringValue") then
if d.Value == game.Players.LocalPlayer.Name then
object = b
end
end
end
end
end
end

print("Copied")

if object then
Owner = true
object:clone().Parent = game.Workspace
end
end
wait()

if Owner == true then
print("Copying")
for i, v in pairs(game.Workspace.PlayerModels:GetChildren()) do
for a, b in pairs(v:GetChildren()) do
if b.Name == "Owner" then
b:remove()
game.Workspace.Owner:clone().Parent = v
end
end
end
end

end)

CopyTool.MouseButton1Down:connect(function()
if Tool == "Copy" then
Tool = "None"
CopyTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
else
Tool = "Copy"
CopyTool.BackgroundColor3 = Color3.new(0, 0.7, 0)
DeleteTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
MoveTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
end
end)

DeleteTool.MouseButton1Down:connect(function()
if Tool == "Delete" then
Tool = "Nothing"
DeleteTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
else
Tool = "Delete"
CopyTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
DeleteTool.BackgroundColor3 = Color3.new(0, 0.7, 0)
MoveTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
end
end)

MoveTool.MouseButton1Down:connect(function()
if Tool == "Move" then
Tool = "Nothing"
MoveTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
else
Tool = "Move"
CopyTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
DeleteTool.BackgroundColor3 = Color3.new(0.7, 0, 0)
MoveTool.BackgroundColor3 = Color3.new(0, 0.7, 0)

end
end)

-- end --

-- Tab2 Buttons --
Birch = Instance.new("TextButton")
CaveCrawler = Instance.new("TextButton")
Cherry = Instance.new("TextButton")
Fir = Instance.new("TextButton")
Generic = Instance.new("TextButton")
GoldSwampy = Instance.new("TextButton")
GreenSwampy = Instance.new("TextButton")
Koa = Instance.new("TextButton")
LoneCave = Instance.new("TextButton")
Oak = Instance.new("TextButton")
Palm = Instance.new("TextButton")
Pine = Instance.new("TextButton")
Volcano = Instance.new("TextButton")
Walnut = Instance.new("TextButton")

Birch.Name = "Birch"
Birch.Parent = TTab2
Birch.BackgroundColor3 = Color3.new(0, 1, 1)
Birch.Position = UDim2.new(0, 1, 0, 1)
Birch.Size = UDim2.new(0,70, 0, 25)
Birch.Font = Enum.Font.Cartoon
Birch.FontSize = Enum.FontSize.Size14
Birch.Text = "Birch"
Birch.TextSize = 14

CaveCrawler.Name = "CaveCrawler"
CaveCrawler.Parent = TTab2
CaveCrawler.BackgroundColor3 = Color3.new(0, 1, 1)
CaveCrawler.Position = UDim2.new(0, 71, 0, 1)
CaveCrawler.Size = UDim2.new(0,70, 0, 25)
CaveCrawler.Font = Enum.Font.Cartoon
CaveCrawler.FontSize = Enum.FontSize.Size14
CaveCrawler.Text = "CaveCrawler"
CaveCrawler.TextSize = 14

Cherry.Name = "Cherry"
Cherry.Parent = TTab2
Cherry.BackgroundColor3 = Color3.new(0, 1, 1)
Cherry.Position = UDim2.new(0, 141, 0, 1)
Cherry.Size = UDim2.new(0,70, 0, 25)
Cherry.Font = Enum.Font.Cartoon
Cherry.FontSize = Enum.FontSize.Size14
Cherry.Text = "Cherry"
Cherry.TextSize = 14

Fir.Name = "Fir"
Fir.Parent = TTab2
Fir.BackgroundColor3 = Color3.new(0, 1, 1)
Fir.Position = UDim2.new(0, 211, 0, 1)
Fir.Size = UDim2.new(0,70, 0, 25)
Fir.Font = Enum.Font.Cartoon
Fir.FontSize = Enum.FontSize.Size14
Fir.Text = "Fir"
Fir.TextSize = 14

Generic.Name = "Generic"
Generic.Parent = TTab2
Generic.BackgroundColor3 = Color3.new(0, 1, 1)
Generic.Position = UDim2.new(0, 1, 0, 26)
Generic.Size = UDim2.new(0,70, 0, 25)
Generic.Font = Enum.Font.Cartoon
Generic.FontSize = Enum.FontSize.Size14
Generic.Text = "Generic"
Generic.TextSize = 14

GoldSwampy.Name = "GoldSwampy"
GoldSwampy.Parent = TTab2
GoldSwampy.BackgroundColor3 = Color3.new(0, 1, 1)
GoldSwampy.Position = UDim2.new(0, 71, 0, 26)
GoldSwampy.Size = UDim2.new(0,70, 0, 25)
GoldSwampy.Font = Enum.Font.Cartoon
GoldSwampy.FontSize = Enum.FontSize.Size14
GoldSwampy.Text = "Gold"
GoldSwampy.TextSize = 14

GreenSwampy.Name = "GreenSwampy"
GreenSwampy.Parent = TTab2
GreenSwampy.BackgroundColor3 = Color3.new(0, 1, 1)
GreenSwampy.Position = UDim2.new(0, 141, 0, 26)
GreenSwampy.Size = UDim2.new(0,70, 0, 25)
GreenSwampy.Font = Enum.Font.Cartoon
GreenSwampy.FontSize = Enum.FontSize.Size14
GreenSwampy.Text = "Green"
GreenSwampy.TextSize = 14

Koa.Name = "Koa"
Koa.Parent = TTab2
Koa.BackgroundColor3 = Color3.new(0, 1, 1)
Koa.Position = UDim2.new(0, 211, 0, 26)
Koa.Size = UDim2.new(0,70, 0, 25)
Koa.Font = Enum.Font.Cartoon
Koa.FontSize = Enum.FontSize.Size14
Koa.Text = "Koa"
Koa.TextSize = 14

LoneCave.Name = "LoneCave"
LoneCave.Parent = TTab2
LoneCave.BackgroundColor3 = Color3.new(0, 1, 1)
LoneCave.Position = UDim2.new(0, 1, 0, 51)
LoneCave.Size = UDim2.new(0,70, 0, 25)
LoneCave.Font = Enum.Font.Cartoon
LoneCave.FontSize = Enum.FontSize.Size14
LoneCave.Text = "LoneCave"
LoneCave.TextSize = 14

Oak.Name = "Oak"
Oak.Parent = TTab2
Oak.BackgroundColor3 = Color3.new(0, 1, 1)
Oak.Position = UDim2.new(0, 71, 0, 51)
Oak.Size = UDim2.new(0,70, 0, 25)
Oak.Font = Enum.Font.Cartoon
Oak.FontSize = Enum.FontSize.Size14
Oak.Text = "Oak"
Oak.TextSize = 14

Palm.Name = "Palm"
Palm.Parent = TTab2
Palm.BackgroundColor3 = Color3.new(0, 1, 1)
Palm.Position = UDim2.new(0, 141, 0, 51)
Palm.Size = UDim2.new(0,70, 0, 25)
Palm.Font = Enum.Font.Cartoon
Palm.FontSize = Enum.FontSize.Size14
Palm.Text = "Palm"
Palm.TextSize = 14

Pine.Name = "Pine"
Pine.Parent = TTab2
Pine.BackgroundColor3 = Color3.new(0, 1, 1)
Pine.Position = UDim2.new(0, 211, 0, 51)
Pine.Size = UDim2.new(0,70, 0, 25)
Pine.Font = Enum.Font.Cartoon
Pine.FontSize = Enum.FontSize.Size14
Pine.Text = "Pine"
Pine.TextSize = 14

Volcano.Name = "Volcano"
Volcano.Parent = TTab2
Volcano.BackgroundColor3 = Color3.new(0, 1, 1)
Volcano.Position = UDim2.new(0, 1, 0, 76)
Volcano.Size = UDim2.new(0,70, 0, 25)
Volcano.Font = Enum.Font.Cartoon
Volcano.FontSize = Enum.FontSize.Size14
Volcano.Text = "Volcano"
Volcano.TextSize = 14

Walnut.Name = "Walnut"
Walnut.Parent = TTab2
Walnut.BackgroundColor3 = Color3.new(0, 1, 1)
Walnut.Position = UDim2.new(0, 71, 0, 76)
Walnut.Size = UDim2.new(0,70, 0, 25)
Walnut.Font = Enum.Font.Cartoon
Walnut.FontSize = Enum.FontSize.Size14
Walnut.Text = "Walnut"
Walnut.TextSize = 14

-- end --

-- Tab2 Button Functions --
Birch.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Birch")
end
end
end
end)

CaveCrawler.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "CaveCrawler")
end
end
end
end)

Cherry.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Cherry")
end
end
end
end)

Fir.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Fir")
end
end
end
end)

Generic.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Generic")
end
end
end
end)

GoldSwampy.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "GoldSwampy")
end
end
end
end)

GreenSwampy.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "GreenSwampy")
end
end
end
end)

Koa.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Koa")
end
end
end
end)

LoneCave.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "LoneCave")
end
end
end
end)

Oak.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Oak")
end
end
end
end)

Palm.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Palm")
end
end
end
end)

Pine.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Pine")
end
end
end
end)

Volcano.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Volcano")
end
end
end
end)

Walnut.MouseButton1Down:connect(function()
Found = false
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "Walnut")
end
end
end
end)

-- end --

-- Tab3 Buttons --
Birch2 = Instance.new("TextButton")
CaveCrawler2 = Instance.new("TextButton")
Cherry2 = Instance.new("TextButton")
Fir2 = Instance.new("TextButton")
Generic2 = Instance.new("TextButton")
GoldSwampy2 = Instance.new("TextButton")
GreenSwampy2 = Instance.new("TextButton")
Koa2 = Instance.new("TextButton")
LoneCave2 = Instance.new("TextButton")
Oak2 = Instance.new("TextButton")
Palm2 = Instance.new("TextButton")
Pine2 = Instance.new("TextButton")
Volcano2 = Instance.new("TextButton")
Walnut2 = Instance.new("TextButton")

Birch2.Name = "Birch"
Birch2.Parent = TTab3
Birch2.BackgroundColor3 = Color3.new(1, 1, 0)
Birch2.Position = UDim2.new(0, 1, 0, 1)
Birch2.Size = UDim2.new(0,70, 0, 25)
Birch2.Font = Enum.Font.Cartoon
Birch2.FontSize = Enum.FontSize.Size14
Birch2.Text = "Birch"
Birch2.TextSize = 14

CaveCrawler2.Name = "CaveCrawler"
CaveCrawler2.Parent = TTab3
CaveCrawler2.BackgroundColor3 = Color3.new(1, 1, 0)
CaveCrawler2.Position = UDim2.new(0, 71, 0, 1)
CaveCrawler2.Size = UDim2.new(0,70, 0, 25)
CaveCrawler2.Font = Enum.Font.Cartoon
CaveCrawler2.FontSize = Enum.FontSize.Size14
CaveCrawler2.Text = "CaveCrawler"
CaveCrawler2.TextSize = 14

Cherry2.Name = "Cherry"
Cherry2.Parent = TTab3
Cherry2.BackgroundColor3 = Color3.new(1, 1, 0)
Cherry2.Position = UDim2.new(0, 141, 0, 1)
Cherry2.Size = UDim2.new(0,70, 0, 25)
Cherry2.Font = Enum.Font.Cartoon
Cherry2.FontSize = Enum.FontSize.Size14
Cherry2.Text = "Cherry"
Cherry2.TextSize = 14

Fir2.Name = "Fir"
Fir2.Parent = TTab3
Fir2.BackgroundColor3 = Color3.new(1, 1, 0)
Fir2.Position = UDim2.new(0, 211, 0, 1)
Fir2.Size = UDim2.new(0,70, 0, 25)
Fir2.Font = Enum.Font.Cartoon
Fir2.FontSize = Enum.FontSize.Size14
Fir2.Text = "Fir"
Fir2.TextSize = 14

Generic2.Name = "Generic"
Generic2.Parent = TTab3
Generic2.BackgroundColor3 = Color3.new(1, 1, 0)
Generic2.Position = UDim2.new(0, 1, 0, 26)
Generic2.Size = UDim2.new(0,70, 0, 25)
Generic2.Font = Enum.Font.Cartoon
Generic2.FontSize = Enum.FontSize.Size14
Generic2.Text = "Generic"
Generic2.TextSize = 14

GoldSwampy2.Name = "GoldSwampy"
GoldSwampy2.Parent = TTab3
GoldSwampy2.BackgroundColor3 = Color3.new(1, 1, 0)
GoldSwampy2.Position = UDim2.new(0, 71, 0, 26)
GoldSwampy2.Size = UDim2.new(0,70, 0, 25)
GoldSwampy2.Font = Enum.Font.Cartoon
GoldSwampy2.FontSize = Enum.FontSize.Size14
GoldSwampy2.Text = "Gold"
GoldSwampy2.TextSize = 14

GreenSwampy2.Name = "GreenSwampy"
GreenSwampy2.Parent = TTab3
GreenSwampy2.BackgroundColor3 = Color3.new(1, 1, 0)
GreenSwampy2.Position = UDim2.new(0, 141, 0, 26)
GreenSwampy2.Size = UDim2.new(0,70, 0, 25)
GreenSwampy2.Font = Enum.Font.Cartoon
GreenSwampy2.FontSize = Enum.FontSize.Size14
GreenSwampy2.Text = "Green"
GreenSwampy2.TextSize = 14

Koa2.Name = "Koa"
Koa2.Parent = TTab3
Koa2.BackgroundColor3 = Color3.new(1, 1, 0)
Koa2.Position = UDim2.new(0, 211, 0, 26)
Koa2.Size = UDim2.new(0,70, 0, 25)
Koa2.Font = Enum.Font.Cartoon
Koa2.FontSize = Enum.FontSize.Size14
Koa2.Text = "Koa"
Koa2.TextSize = 14

LoneCave2.Name = "LoneCave"
LoneCave2.Parent = TTab3
LoneCave2.BackgroundColor3 = Color3.new(1, 1, 0)
LoneCave2.Position = UDim2.new(0, 1, 0, 51)
LoneCave2.Size = UDim2.new(0,70, 0, 25)
LoneCave2.Font = Enum.Font.Cartoon
LoneCave2.FontSize = Enum.FontSize.Size14
LoneCave2.Text = "LoneCave"
LoneCave2.TextSize = 14

Oak2.Name = "Oak"
Oak2.Parent = TTab3
Oak2.BackgroundColor3 = Color3.new(1, 1, 0)
Oak2.Position = UDim2.new(0, 71, 0, 51)
Oak2.Size = UDim2.new(0,70, 0, 25)
Oak2.Font = Enum.Font.Cartoon
Oak2.FontSize = Enum.FontSize.Size14
Oak2.Text = "Oak"
Oak2.TextSize = 14

Palm2.Name = "Palm"
Palm2.Parent = TTab3
Palm2.BackgroundColor3 = Color3.new(1, 1, 0)
Palm2.Position = UDim2.new(0, 141, 0, 51)
Palm2.Size = UDim2.new(0,70, 0, 25)
Palm2.Font = Enum.Font.Cartoon
Palm2.FontSize = Enum.FontSize.Size14
Palm2.Text = "Palm"
Palm2.TextSize = 14

Pine2.Name = "Pine"
Pine2.Parent = TTab3
Pine2.BackgroundColor3 = Color3.new(1, 1, 0)
Pine2.Position = UDim2.new(0, 211, 0, 51)
Pine2.Size = UDim2.new(0,70, 0, 25)
Pine2.Font = Enum.Font.Cartoon
Pine2.FontSize = Enum.FontSize.Size14
Pine2.Text = "Pine"
Pine2.TextSize = 14

Volcano2.Name = "Volcano"
Volcano2.Parent = TTab3
Volcano2.BackgroundColor3 = Color3.new(1, 1, 0)
Volcano2.Position = UDim2.new(0, 1, 0, 76)
Volcano2.Size = UDim2.new(0,70, 0, 25)
Volcano2.Font = Enum.Font.Cartoon
Volcano2.FontSize = Enum.FontSize.Size14
Volcano2.Text = "Volcano"
Volcano2.TextSize = 14

Walnut2.Name = "Walnut"
Walnut2.Parent = TTab3
Walnut2.BackgroundColor3 = Color3.new(1, 1, 0)
Walnut2.Position = UDim2.new(0, 71, 0, 76)
Walnut2.Size = UDim2.new(0,70, 0, 25)
Walnut2.Font = Enum.Font.Cartoon
Walnut2.FontSize = Enum.FontSize.Size14
Walnut2.Text = "Walnut"
Walnut2.TextSize = 14

-- end --

-- Tab3 Button Functions --
Birch2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Birch")
end
end)

CaveCrawler2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "CaveCrawler")
end
end)

Cherry2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Cherry")
end
end)

Fir2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Fir")
end
end)

Generic2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Generic")
end
end)

GoldSwampy2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "GoldSwampy")
end
end)

GreenSwampy2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "GreenSwampy")
end
end)

Koa2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Koa")
end
end)

LoneCave2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "LoneCave")
end
end)

Oak2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Oak")
end
end)

Palm2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Palm")
end
end)

Pine2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Pine")
end
end)

Volcano2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Volcano")
end
end)

Pine2.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace.LogModels:GetChildren()) do
cut(v, "Walnut")
end
end)


-- end --


-- button function --
Tab1.MouseButton1Down:connect(function()
TTab1.Visible = true
TTab2.Visible = false
TTab3.Visible = false

end)

Tab2.MouseButton1Down:connect(function()
TTab1.Visible = false
TTab2.Visible = true
TTab3.Visible = false
end)

Tab3.MouseButton1Down:connect(function()
TTab1.Visible = false
TTab2.Visible = false
TTab3.Visible = true
end)

Close.MouseButton1Down:connect(function()
CGG:remove()
end)

departure = game.Workspace.Ferry.TimeToDeparture
game.Workspace.Ferry.TimeToDeparture.Changed:connect(function()
Depart.Text = "Time To Departure: ".. game.Workspace.Ferry.TimeToDeparture.Value
end)

Mouse.Button1Up:connect(function()
Down = false
end)

Mouse.Button1Down:connect(function()
Down = true
if Tool == "Copy" then
if Mouse.Target ~= nil then
Clone = Mouse.Target:clone()
Clone.Parent = game.Workspace
end
end

if Tool == "Delete" then
if Mouse.Target ~= nil then
Mouse.Target:remove()
end
end

if Tool == "Move" then
if Mouse.Target ~= nil then
MoveObject = Mouse.Target
end
end

wait()
if Clone ~= nil then
Clone.CanCollide = false
repeat
wait()
SubX = Clone.Size.X/2
SubY = Clone.Size.Y/2
SubZ = Clone.Size.Z/2
Clone.Position = Vector3.new(Mouse.Hit.X - SubX, Mouse.Hit.Y - SubY, Mouse.Hit.Z - SubZ)
until Down == false
Clone.CanCollide = true
Clone.Position = Clone.Position + Vector3.new(SubX, SubY, SubZ)
Clone = nil
end

if MoveObject ~= nil then
MoveObject.CanCollide = false
repeat
wait()
SubX = MoveObject.Size.X/2
SubY = MoveObject.Size.Y/2
SubZ = MoveObject.Size.Z/2
MoveObject.Position = Vector3.new(Mouse.Hit.X - SubX, Mouse.Hit.Y - SubY, Mouse.Hit.Z - SubZ)
until Down == false
MoveObject.CanCollide = true
MoveObject.Position =  MoveObject.Position + Vector3.new(SubX, SubY, SubZ)
MoveObject= nil
end
end)