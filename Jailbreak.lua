-- Made by Excrio with love
-- v1.1 (UPDATES COMING ;D)
 
local GUI = Instance.new("ScreenGui")
local Menu = Instance.new("Frame")
local Jail = Instance.new("TextButton")
local CrimBase1 = Instance.new("TextButton")
local CrimBase2 = Instance.new("TextButton")
local Police = Instance.new("TextButton")
local Bank = Instance.new("TextButton")
local Helipad1 = Instance.new("TextButton")
local Helipad2 = Instance.new("TextButton")
local Garage = Instance.new("TextButton")
local Vault = Instance.new("TextButton")
local Jewlery = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Button = Instance.new("TextButton")
local God = Instance.new("TextButton")
 
GUI.Name = "GUI"
GUI.Parent = game.CoreGui
 
Menu.Name = "Menu"
Menu.Parent = GUI
Menu.Active = true
Menu.BackgroundColor3 = Color3.new(0, 0, 0)
Menu.BackgroundTransparency = 0.5
Menu.Draggable = true
Menu.Position = UDim2.new(0, 1202, 0, 453)
Menu.Selectable = true
Menu.Size = UDim2.new(0, 362, 0, 363)
 
Jail.Name = "Jail"
Jail.Parent = Menu
Jail.BackgroundColor3 = Color3.new(1, 1, 1)
Jail.BorderSizePixel = 0
Jail.Position = UDim2.new(0, 15, 0, 15)
Jail.Size = UDim2.new(0, 130, 0, 28)
Jail.Font = Enum.Font.Highway
Jail.FontSize = Enum.FontSize.Size24
Jail.Text = "Jail"
Jail.TextColor3 = Color3.new(0, 0, 0)
Jail.TextSize = 20
 
CrimBase1.Name = "CrimBase1"
CrimBase1.Parent = Menu
CrimBase1.BackgroundColor3 = Color3.new(1, 1, 1)
CrimBase1.BorderSizePixel = 0
CrimBase1.Position = UDim2.new(0, 15, 0, 60)
CrimBase1.Size = UDim2.new(0, 130, 0, 28)
CrimBase1.Font = Enum.Font.Highway
CrimBase1.FontSize = Enum.FontSize.Size24
CrimBase1.Text = "Crim Base 1"
CrimBase1.TextColor3 = Color3.new(0, 0, 0)
CrimBase1.TextSize = 20
 
CrimBase2.Name = "CrimBase2"
CrimBase2.Parent = Menu
CrimBase2.BackgroundColor3 = Color3.new(1, 1, 1)
CrimBase2.BorderSizePixel = 0
CrimBase2.Position = UDim2.new(0, 15, 0, 105)
CrimBase2.Size = UDim2.new(0, 130, 0, 28)
CrimBase2.Font = Enum.Font.Highway
CrimBase2.FontSize = Enum.FontSize.Size24
CrimBase2.Text = "Crim Base 2"
CrimBase2.TextColor3 = Color3.new(0, 0, 0)
CrimBase2.TextSize = 20
 
Police.Name = "Police"
Police.Parent = Menu
Police.BackgroundColor3 = Color3.new(1, 1, 1)
Police.BorderSizePixel = 0
Police.Position = UDim2.new(0, 15, 0, 150)
Police.Size = UDim2.new(0, 130, 0, 28)
Police.Font = Enum.Font.Highway
Police.FontSize = Enum.FontSize.Size24
Police.Text = "Police HQ"
Police.TextColor3 = Color3.new(0, 0, 0)
Police.TextSize = 20
 
Bank.Name = "Bank"
Bank.Parent = Menu
Bank.BackgroundColor3 = Color3.new(1, 1, 1)
Bank.BorderSizePixel = 0
Bank.Position = UDim2.new(0, 215, 0, 15)
Bank.Size = UDim2.new(0, 130, 0, 28)
Bank.Font = Enum.Font.Highway
Bank.FontSize = Enum.FontSize.Size24
Bank.Text = "Bank"
Bank.TextColor3 = Color3.new(0, 0, 0)
Bank.TextSize = 20
 
Helipad1.Name = "Helipad1"
Helipad1.Parent = Menu
Helipad1.BackgroundColor3 = Color3.new(1, 1, 1)
Helipad1.BorderSizePixel = 0
Helipad1.Position = UDim2.new(0, 215, 0, 60)
Helipad1.Size = UDim2.new(0, 130, 0, 28)
Helipad1.Font = Enum.Font.Highway
Helipad1.FontSize = Enum.FontSize.Size24
Helipad1.Text = "Helipad 1"
Helipad1.TextColor3 = Color3.new(0, 0, 0)
Helipad1.TextSize = 20
 
Helipad2.Name = "Helipad2"
Helipad2.Parent = Menu
Helipad2.BackgroundColor3 = Color3.new(1, 1, 1)
Helipad2.BorderSizePixel = 0
Helipad2.Position = UDim2.new(0, 215, 0, 105)
Helipad2.Size = UDim2.new(0, 130, 0, 28)
Helipad2.Font = Enum.Font.Highway
Helipad2.FontSize = Enum.FontSize.Size24
Helipad2.Text = "Helipad 2"
Helipad2.TextColor3 = Color3.new(0, 0, 0)
Helipad2.TextSize = 20
 
Garage.Name = "Garage"
Garage.Parent = Menu
Garage.BackgroundColor3 = Color3.new(1, 1, 1)
Garage.BorderSizePixel = 0
Garage.Position = UDim2.new(0, 215, 0, 150)
Garage.Size = UDim2.new(0, 130, 0, 28)
Garage.Font = Enum.Font.Highway
Garage.FontSize = Enum.FontSize.Size24
Garage.Text = "Garage"
Garage.TextColor3 = Color3.new(0, 0, 0)
Garage.TextSize = 20
 
Vault.Name = "Vault"
Vault.Parent = Menu
Vault.BackgroundColor3 = Color3.new(1, 1, 1)
Vault.BorderSizePixel = 0
Vault.Position = UDim2.new(0, 15, 0, 195)
Vault.Size = UDim2.new(0, 130, 0, 28)
Vault.Font = Enum.Font.Highway
Vault.FontSize = Enum.FontSize.Size24
Vault.Text = "Bank Vault"
Vault.TextColor3 = Color3.new(0, 0, 0)
Vault.TextSize = 20
 
Jewlery.Name = "Jewlery"
Jewlery.Parent = Menu
Jewlery.BackgroundColor3 = Color3.new(1, 1, 1)
Jewlery.BorderSizePixel = 0
Jewlery.Position = UDim2.new(0, 215, 0, 195)
Jewlery.Size = UDim2.new(0, 130, 0, 28)
Jewlery.Font = Enum.Font.Highway
Jewlery.FontSize = Enum.FontSize.Size24
Jewlery.Text = "Jewelry Store"
Jewlery.TextColor3 = Color3.new(0, 0, 0)
Jewlery.TextSize = 20
 
TextLabel.Parent = Menu
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 131, 0, 332)
TextLabel.Size = UDim2.new(0, 100, 0, 23)
TextLabel.Font = Enum.Font.Highway
TextLabel.FontSize = Enum.FontSize.Size24
TextLabel.Text = "Jailbreak GUI By Excrio v1.1"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 20
 
Button.Name = "Button"
Button.Parent = Menu
Button.BackgroundColor3 = Color3.new(1, 1, 1)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 116, 0, 242)
Button.Size = UDim2.new(0, 130, 0, 28)
Button.Font = Enum.Font.Highway
Button.FontSize = Enum.FontSize.Size24
Button.Text = "Enable Noclip"
Button.TextColor3 = Color3.new(0, 0, 0)
Button.TextSize = 20
 
God.Name = "God"
God.Parent = Menu
God.BackgroundColor3 = Color3.new(1, 1, 1)
God.BorderSizePixel = 0
God.Position = UDim2.new(0, 116, 0, 290)
God.Size = UDim2.new(0, 130, 0, 28)
God.Font = Enum.Font.Highway
God.FontSize = Enum.FontSize.Size24
God.Text = "God"
God.TextColor3 = Color3.new(0, 0, 0)
God.TextSize = 20
 
Jail.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1138.66, 18.009, -1430.01) + Vector3.new(1,0,0)
end)
 
CrimBase1.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-222.339157, 17.9125443, 1575.82336) + Vector3.new(1,0,0)
end)
 
CrimBase2.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1579.4823, 49.787693, -1759.61438) + Vector3.new(1,0,0)
end)
 
Police.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1130.11426, 17.950058, -1593.09766) + Vector3.new(1,0,0)
end)
 
Bank.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.036747, 17.9193821, 797.971521) + Vector3.new(1,0,0)
end)
 
Helipad1.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1172.01172, 59.586, -1553.929) + Vector3.new(1,0,0)
end)
 
Helipad2.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(741.508, 71.005, 1136.33826) + Vector3.new(1,0,0)
end)
 
Garage.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-341.0529, 19.644, 1182.502) + Vector3.new(1,0,0)
end)
 
Vault.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(32.214, 2.67609, 818.648926) + Vector3.new(1,0,0)
end)
 
Jewlery.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.325, 17.878, 1320.123) + Vector3.new(1,0,0)
end)
 
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
 
Button.MouseButton1Click:connect(function()
noclip = not noclip
if Button.Text == "Enable Noclip" then
    Button.Text = "Disable Noclip"
else
    Button.Text = "Enable Noclip"
end
end)
 
God.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.Humanoid.Name = 1
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