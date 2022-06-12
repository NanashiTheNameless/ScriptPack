local Player = game:GetService("Players").LocalPlayer
local PlayerGui = Player.PlayerGui
local CoreGui = game:GetService("CoreGui")
local Remote = game:GetService("Lighting"):FindFirstChild("Remote")
local AO = Remote.AddObject
local Slots = game.Players.LocalPlayer.playerstats.slots
local Found = CoreGui:FindFirstChild("HexusMenu")
if Found then
	Found:Destroy()
end

local GuiOpen = true

local Gui = Instance.new("ScreenGui", CoreGui)
Gui.Name = "HexusMenu"

local Frame = Instance.new("Frame", Gui)
Frame.Name = "Top"
Frame.Position = UDim2.new(1, -350, 1, -170)
Frame.Size = UDim2.new(0, 333, 0, 150)
Frame.BackgroundTransparency = 1

local Header = Instance.new("Frame", Frame)
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 35)
Header.Style = "DropShadow"

local T = Instance.new("TextLabel", Header)
T.Text = "Hexus Gui"
T.Font = "SourceSansLight"
T.TextXAlignment = "Right"
T.Size = UDim2.new(0.4, 0, 1, -2)
T.Position = UDim2.new(0.55, 0, 0, 0)
T.BackgroundTransparency = 1
T.FontSize = 7
T.TextColor3 = Color3.new(1, 1, 1)

local B = Instance.new("TextButton", Header)
B.Size = UDim2.new(0, 20, 0, 20)
B.Text = ""
B.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
B.BorderSizePixel = 0

B.MouseButton1Click:connect(function()
	if GuiOpen then
		Frame:TweenPosition(UDim2.new(1, -350, 1, -40), "Out", "Quad", 0.2, true)
	else
		Frame:TweenPosition(UDim2.new(1, -350, 1, -170), "Out", "Quad", 0.2, true)
	end
	GuiOpen = not GuiOpen
end)

function SpawnItem(Slot, Id)
	AO:FireServer(Slot, Id)
end

local Inner = Instance.new("Frame", Frame)
Inner.Name = "Inner"
Inner.Size = UDim2.new(1, 0, 1, -30)
Inner.Position = UDim2.new(0, 0, 0, 35)
Inner.Style = "DropShadow"

local ArgumentBox1 = Instance.new("TextBox", Inner)
ArgumentBox1.Size = UDim2.new(0.45, 0, 0, 25)
ArgumentBox1.Position = UDim2.new(0.025, 0, 1, -30)
ArgumentBox1.Text = "Argument"
ArgumentBox1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ArgumentBox1.BorderSizePixel = 0
ArgumentBox1.TextColor3 = Color3.new(1, 1, 1)
ArgumentBox1.Font = "SourceSansLight"
ArgumentBox1.FontSize = 6

local ArgumentBox2 = Instance.new("TextBox", Inner)
ArgumentBox2.Size = UDim2.new(0.45, 0, 0, 25)
ArgumentBox2.Position = UDim2.new(0.52, 0, 1, -30)
ArgumentBox2.Text = "Argument"
ArgumentBox2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ArgumentBox2.BorderSizePixel = 0
ArgumentBox2.TextColor3 = Color3.new(1, 1, 1)
ArgumentBox2.Font = "SourceSansLight"
ArgumentBox2.FontSize = 6

local MaxHunger = Instance.new("TextButton", Inner)
MaxHunger.Size = UDim2.new(0, 95, 0, 20)
MaxHunger.Position = UDim2.new(0.025, 0, 0.025, 0)
MaxHunger.Text = "Max Hunger"
MaxHunger.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MaxHunger.BorderSizePixel = 0
MaxHunger.Font = "SourceSansLight"
MaxHunger.FontSize = 6
MaxHunger.TextColor3 = Color3.new(1, 1, 1)

MaxHunger.MouseButton1Click:connect(function()
	Player.playerstats.Hunger.Value = 100
end)

local MaxThirst = Instance.new("TextButton", Inner)
MaxThirst.Size = UDim2.new(0, 95, 0, 20)
MaxThirst.Position = UDim2.new(0.025, 103, 0.025, 0)
MaxThirst.Text = "Max Thirst"
MaxThirst.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MaxThirst.BorderSizePixel = 0
MaxThirst.Font = "SourceSansLight"
MaxThirst.FontSize = 6
MaxThirst.TextColor3 = Color3.new(1, 1, 1)

MaxThirst.MouseButton1Click:connect(function()
	Player.playerstats.Thirst.Value = 100
end)

local G36KKit = Instance.new("TextButton", Inner)
G36KKit.Size = UDim2.new(0, 95, 0, 20)
G36KKit.Position = UDim2.new(0.025, 208, 0.025, 0)
G36KKit.Text = "G36K Pack"
G36KKit.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
G36KKit.BorderSizePixel = 0
G36KKit.Font = "SourceSansLight"
G36KKit.FontSize = 6
G36KKit.TextColor3 = Color3.new(1, 1, 1)

G36KKit.MouseButton1Click:connect(function()
	SpawnItem(Slots.slotbackpack, 4016)
	SpawnItem(Slots.slotprimary, 1023)
	for i = 5, 8 do
		SpawnItem(Slots["slot" .. i], 53)
	end
end)

local BringPlayer = Instance.new("TextButton", Inner)
BringPlayer.Size = UDim2.new(0, 95, 0, 20)
BringPlayer.Position = UDim2.new(0.025, 0, 0.025, 30)
BringPlayer.Text = "Bring"
BringPlayer.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BringPlayer.BorderSizePixel = 0
BringPlayer.Font = "SourceSansLight"
BringPlayer.FontSize = 6
BringPlayer.TextColor3 = Color3.new(1, 1, 1)

BringPlayer.MouseButton1Click:connect(function()
	Remote.TeleportRequest:InvokeServer("To Me", math.floor(tick() % 1 * 100000), ArgumentBox1.Text)
end)

local GoToPlayer = Instance.new("TextButton", Inner)
GoToPlayer.Size = UDim2.new(0, 95, 0, 20)
GoToPlayer.Position = UDim2.new(0.025, 103, 0.025, 30)
GoToPlayer.Text = "Go To"
GoToPlayer.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GoToPlayer.BorderSizePixel = 0
GoToPlayer.Font = "SourceSansLight"
GoToPlayer.FontSize = 6
GoToPlayer.TextColor3 = Color3.new(1, 1, 1)

GoToPlayer.MouseButton1Click:connect(function()
	Remote.TeleportRequest:InvokeServer("Me To", math.floor(tick() % 1 * 100000), ArgumentBox1.Text)
end)

local KillPlayer = Instance.new("TextButton", Inner)
KillPlayer.Size = UDim2.new(0, 95, 0, 20)
KillPlayer.Position = UDim2.new(0.025, 208, 0.025, 30)
KillPlayer.Text = "Kill"
KillPlayer.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
KillPlayer.BorderSizePixel = 0
KillPlayer.Font = "SourceSansLight"
KillPlayer.FontSize = 6
KillPlayer.TextColor3 = Color3.new(1, 1, 1)

KillPlayer.MouseButton1Click:connect(function()
	local Char = workspace:FindFirstChild(ArgumentBox1.Text)
	if Char then
		local Hum = Char:FindFirstChild("Humanoid")
		if Hum then
			Remote.AddHealth:FireServer(Hum, -100)
		end
	end
end)