--vortexe
local version = 'V.1'
local MENU = Instance.new("ScreenGui")
local Topbar = Instance.new("Frame")
local exit = Instance.new("TextButton")
local menu = Instance.new("Frame")
local kill = Instance.new("TextButton")
local killall = Instance.new("TextButton")
local loopkill = Instance.new("TextButton")
local god = Instance.new("TextButton")
local victim = Instance.new("TextBox")
local goto = Instance.new("TextButton")
local float = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
MENU.Name = "MENU"
MENU.Parent = game.CoreGui
Topbar.Name = "Topbar"
Topbar.Parent = MENU
Topbar.Active = true
Topbar.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
Topbar.BorderSizePixel = 0
Topbar.Draggable = true
Topbar.Position = UDim2.new(0.5, -100, 0.5, -13)
Topbar.Selectable = true
Topbar.Size = UDim2.new(0, 200, 0, 27)
exit.Name = "exit"
exit.Parent = Topbar
exit.BackgroundColor3 = Color3.new(1, 1, 1)
exit.BackgroundTransparency = 1
exit.Position = UDim2.new(0, 163, 0, 0)
exit.Size = UDim2.new(0, 37, 0, 27)
exit.Font = Enum.Font.Arial
exit.FontSize = Enum.FontSize.Size18
exit.Text = "X"
exit.TextColor3 = Color3.new(1, 1, 1)
exit.TextSize = 18
menu.Name = "menu"
menu.Parent = Topbar
menu.BackgroundColor3 = Color3.new(1, 1, 1)
menu.BorderSizePixel = 0
menu.Position = UDim2.new(0, 0, 0, 27)
menu.Size = UDim2.new(0, 200, 0, 232)
kill.Name = "kill"
kill.Parent = menu
kill.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
kill.BorderSizePixel = 0
kill.Position = UDim2.new(0, 14, 0, 45)
kill.Size = UDim2.new(0, 80, 0, 50)
kill.Font = Enum.Font.Arial
kill.FontSize = Enum.FontSize.Size18
kill.Text = "Kill"
kill.TextColor3 = Color3.new(1, 1, 1)
kill.TextSize = 18
killall.Name = "killall"
killall.Parent = menu
killall.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
killall.BorderSizePixel = 0
killall.Position = UDim2.new(0, 107, 0, 45)
killall.Size = UDim2.new(0, 80, 0, 50)
killall.Font = Enum.Font.Arial
killall.FontSize = Enum.FontSize.Size18
killall.Text = "Kill All"
killall.TextColor3 = Color3.new(1, 1, 1)
killall.TextSize = 18
loopkill.Name = "loopkill"
loopkill.Parent = menu
loopkill.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
loopkill.BorderSizePixel = 0
loopkill.Position = UDim2.new(0, 14, 0, 110)
loopkill.Size = UDim2.new(0, 80, 0, 50)
loopkill.Font = Enum.Font.Arial
loopkill.FontSize = Enum.FontSize.Size18
loopkill.Text = "Loop Kill"
loopkill.TextColor3 = Color3.new(1, 1, 1)
loopkill.TextSize = 18
god.Name = "god"
god.Parent = menu
god.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
god.BorderSizePixel = 0
god.Position = UDim2.new(0, 107, 0, 110)
god.Size = UDim2.new(0, 80, 0, 50)
god.Font = Enum.Font.Arial
god.FontSize = Enum.FontSize.Size18
god.Text = "God"
god.TextColor3 = Color3.new(1, 1, 1)
god.TextSize = 18
god.TextWrapped = true
victim.Name = "victim"
victim.Parent = menu
victim.BackgroundColor3 = Color3.new(1, 1, 1)
victim.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
victim.BorderSizePixel = 2
victim.Position = UDim2.new(0, 16, 0, 10)
victim.Size = UDim2.new(0, 170, 0, 25)
victim.Font = Enum.Font.Arial
victim.FontSize = Enum.FontSize.Size14
victim.Text = "Player Name"
victim.TextColor3 = Color3.new(0.333333, 0.666667, 1)
victim.TextSize = 14
goto.Name = "goto"
goto.Parent = menu
goto.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
goto.BorderSizePixel = 0
goto.Position = UDim2.new(0, 14, 0, 172)
goto.Size = UDim2.new(0, 80, 0, 50)
goto.Font = Enum.Font.Arial
goto.FontSize = Enum.FontSize.Size18
goto.Text = "Goto"
goto.TextColor3 = Color3.new(1, 1, 1)
goto.TextSize = 18
float.Name = "float"
float.Parent = menu
float.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
float.BorderSizePixel = 0
float.Position = UDim2.new(0, 107, 0, 172)
float.Size = UDim2.new(0, 80, 0, 50)
float.Font = Enum.Font.Arial
float.FontSize = Enum.FontSize.Size18
float.Text = "Floating Torso"
float.TextColor3 = Color3.new(1, 1, 1)
float.TextSize = 18
float.TextWrapped = true
TextLabel.Parent = Topbar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 43, 0, 0)
TextLabel.Size = UDim2.new(0, 115, 0, 27)
TextLabel.Font = Enum.Font.Arial
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "Stick v1"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 18
goto.MouseButton1Click:connect(function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players:FindFirstChild(victim.Text).Character.HumanoidRootPart.Position)
end)
kill.MouseButton1Click:connect(function()
	local target = game.Players:FindFirstChild(victim.Text)
    target:Move(Vector3.new(math.huge,math.huge,math.huge))
end)
killall.MouseButton1Click:connect(function()
	for i,v in pairs(game.Players:GetChildren()) do
v:Move(Vector3.new(math.huge,math.huge,math.huge))
end
end)
loopkill.MouseButton1Click:connect(function()
	while true do
	local target = game.Players:FindFirstChild(victim.Text)
    target:Move(Vector3.new(math.huge,math.huge,math.huge))
wait()
end
end)
god.MouseButton1Click:connect(function()
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
float.MouseButton1Click:connect(function()
	local Weld1 = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
Weld1.Part0 = game.Players.LocalPlayer.Character.Head
Weld1.Part1 = game.Players.LocalPlayer.Character.Torso
local Weld2 = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
Weld2.Part0 = game.Players.LocalPlayer.Character["Left Arm"]
Weld2.Part1 = game.Players.LocalPlayer.Character.Torso
local Weld3 = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
Weld3.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
Weld3.Part1 = game.Players.LocalPlayer.Character.Torso
local Weld4 = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
Weld4.Part0 = game.Players.LocalPlayer.Character["Right Leg"]
Weld4.Part1 = game.Players.LocalPlayer.Character.Torso
local Weld5 = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
Weld5.Part0 = game.Players.LocalPlayer.Character["Left Leg"]
Weld5.Part1 = game.Players.LocalPlayer.Character.Torso
end)
exit.MouseButton1Click:connect(function()
	MENU:remove()
    warn("Goodbye, "..game.Players.LocalPlayer.Name)
	warn("Stick "..version.." was Closed")
end)