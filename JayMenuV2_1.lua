-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local God = Instance.new("TextButton")
local TPAll = Instance.new("TextButton")
local KillA = Instance.new("TextButton")
local FAL = Instance.new("TextButton")
local Patriot = Instance.new("TextButton")
local pText = Instance.new("TextBox")
local ItemID = Instance.new("TextBox")
local execute = Instance.new("TextButton")

-- Properties
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.BorderSizePixel = 2
Frame.Draggable = true
Frame.Position = UDim2.new(0, 150, 0, 100)
Frame.Size = UDim2.new(0, 200, 0, 300)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 0.5
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Highway
TextLabel.FontSize = Enum.FontSize.Size36
TextLabel.Text = "JaysMenu V2"
TextLabel.TextColor3 = Color3.new(0.290196, 0, 0.545098)
TextLabel.TextSize = 36

God.Name = "God"
God.Parent = Frame
God.BackgroundColor3 = Color3.new(0, 0, 0)
God.BackgroundTransparency = 0.5
God.Position = UDim2.new(0, 0, 0, 275)
God.Size = UDim2.new(0, 200, 0, 25)
God.Font = Enum.Font.Arcade
God.FontSize = Enum.FontSize.Size36
God.Text = "God"
God.TextColor3 = Color3.new(0, 1, 0.615686)
God.TextSize = 36
God.TextTransparency = 0.5

TPAll.Name = "TPAll"
TPAll.Parent = Frame
TPAll.BackgroundColor3 = Color3.new(0, 0, 0)
TPAll.BackgroundTransparency = 0.5
TPAll.Position = UDim2.new(0, 0, 0, 250)
TPAll.Size = UDim2.new(0, 200, 0, 25)
TPAll.Font = Enum.Font.Arcade
TPAll.FontSize = Enum.FontSize.Size28
TPAll.Text = "TP-All"
TPAll.TextColor3 = Color3.new(1, 0.933333, 0)
TPAll.TextSize = 28
TPAll.TextTransparency = 0.5

KillA.Name = "KillA"
KillA.Parent = Frame
KillA.BackgroundColor3 = Color3.new(0, 0, 0)
KillA.BackgroundTransparency = 0.5
KillA.Position = UDim2.new(0, 0, 0, 225)
KillA.Size = UDim2.new(0, 200, 0, 25)
KillA.Font = Enum.Font.Arcade
KillA.FontSize = Enum.FontSize.Size28
KillA.Text = "KIll-All"
KillA.TextColor3 = Color3.new(0, 1, 1)
KillA.TextSize = 28
KillA.TextTransparency = 0.5

FAL.Name = "FAL"
FAL.Parent = Frame
FAL.BackgroundColor3 = Color3.new(0, 0, 0)
FAL.BackgroundTransparency = 0.5
FAL.Position = UDim2.new(0, 0, 0, 175)
FAL.Size = UDim2.new(0, 200, 0, 25)
FAL.Font = Enum.Font.Arcade
FAL.FontSize = Enum.FontSize.Size28
FAL.Text = "FAL-Kit"
FAL.TextColor3 = Color3.new(1, 0, 0)
FAL.TextSize = 28
FAL.TextTransparency = 0.5

Patriot.Name = "Patriot"
Patriot.Parent = Frame
Patriot.BackgroundColor3 = Color3.new(0, 0, 0)
Patriot.BackgroundTransparency = 0.5
Patriot.Position = UDim2.new(0, 0, 0, 200)
Patriot.Size = UDim2.new(0, 200, 0, 25)
Patriot.Font = Enum.Font.Arcade
Patriot.FontSize = Enum.FontSize.Size28
Patriot.Text = "Patriot-Kit"
Patriot.TextColor3 = Color3.new(1, 0, 1)
Patriot.TextSize = 28
Patriot.TextTransparency = 0.5

pText.Name = "pText"
pText.Parent = Frame
pText.BackgroundColor3 = Color3.new(0, 0, 0)
pText.BackgroundTransparency = 0.5
pText.Position = UDim2.new(0, 0, 0, 50)
pText.Size = UDim2.new(0, 200, 0, 25)
pText.Font = Enum.Font.Arcade
pText.FontSize = Enum.FontSize.Size24
pText.Text = "PlayerName Here"
pText.TextColor3 = Color3.new(1, 1, 1)
pText.TextSize = 24

ItemID.Name = "ItemID"
ItemID.Parent = Frame
ItemID.BackgroundColor3 = Color3.new(0, 0, 0)
ItemID.BackgroundTransparency = 0.5
ItemID.Position = UDim2.new(0, 0, 0, 76)
ItemID.Size = UDim2.new(0, 200, 0, 50)
ItemID.Font = Enum.Font.Garamond
ItemID.FontSize = Enum.FontSize.Size42
ItemID.Text = "Item ID"
ItemID.TextColor3 = Color3.new(1, 1, 1)
ItemID.TextSize = 42

execute.Name = "execute"
execute.Parent = Frame
execute.BackgroundColor3 = Color3.new(0, 0, 0)
execute.BackgroundTransparency = 0.5
execute.Position = UDim2.new(0, 0, 0, 125)
execute.Size = UDim2.new(0, 200, 0, 50)
execute.Font = Enum.Font.ArialBold
execute.FontSize = Enum.FontSize.Size28
execute.Text = "Execute"
execute.TextColor3 = Color3.new(0.14902, 1, 0)
execute.TextSize = 28
execute.TextTransparency = 0.5

execute.MouseButton1Down:connect(function()
 game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot20, tonumber(ItemID.Text))
   end)

FAL.MouseButton1Down:connect(function()
	 game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slotbackpack, 4016)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slotprimary, 1029)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot1, 9013)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot2, 9010)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot3, 9005)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot4, 64)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot5, 64)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot6, 64)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot7, 64)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot8, 64)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot9, 64)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot10, 64)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot11, 64)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot12, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot13, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot14, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot15, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot16, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot17, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot18, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot19, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot20, 11)
    wait(0.1)
end)

Patriot.MouseButton1Down:connect(function()
	 game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slotbackpack, 4016)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slotprimary, 1021)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot1, 9013)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot2, 9010)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot3, 9005)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot4, 53)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot5, 53)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot6, 53)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot7, 53)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot8, 53)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot9, 53)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot10, 53)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot11, 53)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot12, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot13, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot14, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot15, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot16, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot17, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot18, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot19, 11)
    wait(0.1)
    game.Lighting.Remote.AddObject:FireServer(game.Players.LocalPlayer.playerstats.slots.slot20, 11)
    wait(0.1)
end)


God.MouseButton1Down:connect(function()
lp = game.Workspace:findFirstChild(game.Players.LocalPlayer.Name)
remote = game.Lighting.Remote
game.Players.LocalPlayer.playerstats.Hunger.Value = 10000
game.Players.LocalPlayer.playerstats.Thirst.Value = 10000
while true do 
wait(0.1)
remote.AddHealth:FireServer(lp.Humanoid, 5345355)
end

end)

TPAll.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
wait(.01)
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), v.Name)
else
print('there are no players in the server!')
end
end
end)

KillA.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == game.Players.LocalPlayer.Name then
for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'Red', "My Killall did not Work ;(") end
else
Player = game.Workspace:FindFirstChild(v.Name)
wait(.01)
game.Lighting.Remote.AddHealth:FireServer(Player.Humanoid, -420699001)
end
end
end)