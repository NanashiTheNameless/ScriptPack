-- Made By Jay

-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Credit = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local PlayerName = Instance.new("TextBox")
local Kill = Instance.new("TextButton")
local Message = Instance.new("TextButton")
local Spawn = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = "ModGui"

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
Frame.BorderColor3 = Color3.new(0.0470588, 0.67451, 0.0470588)
Frame.BorderSizePixel = 0
Frame.Draggable = true
Frame.Position = UDim2.new(0.800000012, 0, 0.699999988, 50)
Frame.Size = UDim2.new(0, 250, 0, 200)

Credit.Name = "Credit"
Credit.Parent = Frame
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.BorderSizePixel = 0
Credit.Position = UDim2.new(0, 0, 0, 20)
Credit.Size = UDim2.new(0, 250, 0, 50)
Credit.FontSize = Enum.FontSize.Size10
Credit.Text = "Made by PhantomNulled-HeadSec#1092 (Obviously)"
Credit.TextColor3 = Color3.new(0.227451, 0.854902, 0)
Credit.TextSize = 10

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 250, 0, 50)
Title.FontSize = Enum.FontSize.Size18
Title.Text = "Phantom's Troll Gui"
Title.TextColor3 = Color3.new(0.854902, 0, 0.0117647)
Title.TextSize = 18

PlayerName.Name = "PlayerName"
PlayerName.Parent = Frame
PlayerName.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0, 25, 0, 70)
PlayerName.Size = UDim2.new(0, 200, 0, 25)
PlayerName.FontSize = Enum.FontSize.Size14
PlayerName.Text = "Name"
PlayerName.TextSize = 14

Kill.Name = "Kill"
Kill.Parent = Frame
Kill.BackgroundColor3 = Color3.new(1, 1, 1)
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0, 25, 0, 100)
Kill.Size = UDim2.new(0, 200, 0, 25)
Kill.Font = Enum.Font.SourceSans
Kill.FontSize = Enum.FontSize.Size28
Kill.Text = "Kill a player"
Kill.TextSize = 28

Message.Name = "KillAll"
Message.Parent = Frame
Message.BackgroundColor3 = Color3.new(1, 1, 1)
Message.BorderSizePixel = 0
Message.Position = UDim2.new(0, 25, 0, 130)
Message.Size = UDim2.new(0, 200, 0, 25)
Message.Font = Enum.Font.SourceSans
Message.FontSize = Enum.FontSize.Size28
Message.Text = "Kill All"
Message.TextSize = 28

Spawn.Name = "Spawn"
Spawn.Parent = Frame
Spawn.BackgroundColor3 = Color3.new(1, 1, 1)
Spawn.BorderSizePixel = 0
Spawn.Position = UDim2.new(0, 25, 0, 160)
Spawn.Size = UDim2.new(0, 200, 0, 25)
Spawn.Font = Enum.Font.SourceSans
Spawn.FontSize = Enum.FontSize.Size28
Spawn.Text = "Fal Kit"
Spawn.TextSize = 28

--CMDS
Kill.MouseButton1Down:connect(function()
Player1 = game.Workspace:FindFirstChild(PlayerName.Text)
game.Lighting.Remote.AddHealth:FireServer(Player1.Humanoid, -133769420)
end)

Spawn.MouseButton1Down:connect(function()
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
end)


	
	

KillAll.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == game.Players.LocalPlayer.Name then
print('nope')
else
Player2 = game.Workspace:FindFirstChild(v.Name)
wait(.01)
game.Lighting.Remote.AddHealth:FireServer(Player2.Humanoid, -133769420)
end
end
end)


