--Define le values list by victiny1223
players = game:GetService('Players')
lplr = players.LocalPlayer
lchar = lplr.Character
lhum = lchar:FindFirstChild("Humanoid")
lrootpart = lchar:FindFirstChild("HumanoidRootPart")
backpack = lplr.Backpack
v3 = Vector3.new
cf = CFrame
create = Instance.new
pgui = game.CoreGui
contextActionService = game.ContextActionService

-- Objects

local ShinobiLifeGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("ScrollingFrame")
local TitleLabel = Instance.new("TextLabel")
local Underlining = Instance.new("Frame")
local InfoChangestat = Instance.new("TextLabel")
local Underlining_2 = Instance.new("Frame")
local ChangestatStat = Instance.new("TextBox")
local ChangestatValue = Instance.new("TextBox")
local ChangestatExecute = Instance.new("TextButton")
local AutoHit = Instance.new("TextButton")
local InfoAutoHit = Instance.new("TextLabel")
local Underlining_3 = Instance.new("Frame")

-- Properties

ShinobiLifeGui.Name = "Shinobi Life Gui"
ShinobiLifeGui.Parent = pgui

MainFrame.Name = "MainFrame"
MainFrame.Parent = ShinobiLifeGui
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.BackgroundTransparency = 0.25
MainFrame.BorderColor3 = Color3.new(0.690196, 0.690196, 0.690196)
MainFrame.Position = UDim2.new(0.745000005, 0, 0.745000005, 0)
MainFrame.Size = UDim2.new(0.25, 0, 0.25, 0)
MainFrame.ScrollBarThickness = 7

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = MainFrame
TitleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Size = UDim2.new(1, 0, 0.0250000004, 0)
TitleLabel.Font = Enum.Font.Fantasy
TitleLabel.FontSize = Enum.FontSize.Size14
TitleLabel.Text = "Shinobi Life Gui"
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.TextScaled = true
TitleLabel.TextSize = 14
TitleLabel.TextStrokeTransparency = 0.25
TitleLabel.TextWrapped = true

Underlining.Name = "Underlining"
Underlining.Parent = TitleLabel
Underlining.BackgroundColor3 = Color3.new(1, 1, 1)
Underlining.BackgroundTransparency = 0.25
Underlining.BorderColor3 = Color3.new(0, 0, 0)
Underlining.Position = UDim2.new(0.0500000007, 0, 0.899999976, 0)
Underlining.Size = UDim2.new(0.899999976, 0, 0.0250000004, 0)

InfoChangestat.Name = "Info/Changestat"
InfoChangestat.Parent = MainFrame
InfoChangestat.BackgroundColor3 = Color3.new(1, 1, 1)
InfoChangestat.BackgroundTransparency = 1
InfoChangestat.Position = UDim2.new(0.0500000007, 0, 0.0299999993, 0)
InfoChangestat.Size = UDim2.new(0.899999976, 0, 0.0149999997, 0)
InfoChangestat.Font = Enum.Font.Fantasy
InfoChangestat.FontSize = Enum.FontSize.Size14
InfoChangestat.Text = "Changestat"
InfoChangestat.TextColor3 = Color3.new(1, 1, 1)
InfoChangestat.TextScaled = true
InfoChangestat.TextSize = 14
InfoChangestat.TextStrokeTransparency = 0.25
InfoChangestat.TextWrapped = true

Underlining_2.Name = "Underlining"
Underlining_2.Parent = InfoChangestat
Underlining_2.BackgroundColor3 = Color3.new(1, 1, 1)
Underlining_2.Position = UDim2.new(0.0500000007, 0, 1, 0)
Underlining_2.Size = UDim2.new(0.899999976, 0, 0.0250000004, 0)

ChangestatStat.Name = "Changestat/Stat"
ChangestatStat.Parent = MainFrame
ChangestatStat.BackgroundColor3 = Color3.new(1, 1, 1)
ChangestatStat.BackgroundTransparency = 0.25
ChangestatStat.BorderSizePixel = 0
ChangestatStat.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
ChangestatStat.Size = UDim2.new(0.400000006, 0, 0.0250000004, 0)
ChangestatStat.Font = Enum.Font.Fantasy
ChangestatStat.FontSize = Enum.FontSize.Size14
ChangestatStat.Text = "Stat"
ChangestatStat.TextColor3 = Color3.new(1, 1, 1)
ChangestatStat.TextScaled = true
ChangestatStat.TextSize = 14
ChangestatStat.TextStrokeTransparency = 0.40000000596046
ChangestatStat.TextWrapped = true

ChangestatValue.Name = "Changestat/Value"
ChangestatValue.Parent = MainFrame
ChangestatValue.BackgroundColor3 = Color3.new(1, 1, 1)
ChangestatValue.BackgroundTransparency = 0.25
ChangestatValue.BorderSizePixel = 0
ChangestatValue.Position = UDim2.new(0.524999976, 0, 0.0500000007, 0)
ChangestatValue.Size = UDim2.new(0.400000006, 0, 0.0250000004, 0)
ChangestatValue.Font = Enum.Font.Fantasy
ChangestatValue.FontSize = Enum.FontSize.Size14
ChangestatValue.Text = "Value"
ChangestatValue.TextColor3 = Color3.new(1, 1, 1)
ChangestatValue.TextScaled = true
ChangestatValue.TextSize = 14
ChangestatValue.TextStrokeTransparency = 0.40000000596046
ChangestatValue.TextWrapped = true

ChangestatExecute.Name = "Changestat/Execute"
ChangestatExecute.Parent = MainFrame
ChangestatExecute.BackgroundColor3 = Color3.new(1, 1, 1)
ChangestatExecute.BackgroundTransparency = 0.25
ChangestatExecute.BorderSizePixel = 0
ChangestatExecute.Position = UDim2.new(0.0500000007, 0, 0.0799999982, 0)
ChangestatExecute.Size = UDim2.new(0.875, 0, 0.0149999997, 0)
ChangestatExecute.Font = Enum.Font.Fantasy
ChangestatExecute.FontSize = Enum.FontSize.Size14
ChangestatExecute.Text = "Change"
ChangestatExecute.TextColor3 = Color3.new(1, 1, 1)
ChangestatExecute.TextScaled = true
ChangestatExecute.TextSize = 14
ChangestatExecute.TextStrokeTransparency = 0.25
ChangestatExecute.TextWrapped = true

AutoHit.Name = "AutoHit"
AutoHit.Parent = MainFrame
AutoHit.BackgroundColor3 = Color3.new(1, 1, 1)
AutoHit.BackgroundTransparency = 0.25
AutoHit.BorderSizePixel = 0
AutoHit.Position = UDim2.new(0.0500000007, 0, 0.119999997, 0)
AutoHit.Size = UDim2.new(0.875, 0, 0.0175, 0)
AutoHit.Font = Enum.Font.Fantasy
AutoHit.FontSize = Enum.FontSize.Size14
AutoHit.Text = "Activate AutoHit"
AutoHit.TextColor3 = Color3.new(1, 1, 1)
AutoHit.TextScaled = true
AutoHit.TextSize = 14
AutoHit.TextStrokeTransparency = 0.25
AutoHit.TextWrapped = true

InfoAutoHit.Name = "Info/AutoHit"
InfoAutoHit.Parent = MainFrame
InfoAutoHit.BackgroundColor3 = Color3.new(1, 1, 1)
InfoAutoHit.BackgroundTransparency = 1
InfoAutoHit.Position = UDim2.new(0.0500000007, 0, 0.100000001, 0)
InfoAutoHit.Size = UDim2.new(0.899999976, 0, 0.0149999997, 0)
InfoAutoHit.Font = Enum.Font.Fantasy
InfoAutoHit.FontSize = Enum.FontSize.Size14
InfoAutoHit.Text = "AutoHit"
InfoAutoHit.TextColor3 = Color3.new(1, 1, 1)
InfoAutoHit.TextScaled = true
InfoAutoHit.TextSize = 14
InfoAutoHit.TextStrokeTransparency = 0.25
InfoAutoHit.TextWrapped = true

Underlining_3.Name = "Underlining"
Underlining_3.Parent = InfoAutoHit
Underlining_3.BackgroundColor3 = Color3.new(1, 1, 1)
Underlining_3.Position = UDim2.new(0.0500000007, 0, 1, 0)
Underlining_3.Size = UDim2.new(0.899999976, 0, 0.0250000004, 0)

--[[Script Variables]]--
prefix = Enum.KeyCode.Quote
autohit_enabled = false
gui_enabled = true

--[[Inputs]]--
function SlideGui(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		if gui_enabled == true then
			MainFrame:TweenPosition(UDim2.new(-0.25, 0, .745, 0), 'In', 'Quad')
			gui_enabled = false
		elseif gui_enabled == false then
			MainFrame:TweenPosition(UDim2.new(.745, 0, .745, 0), 'Out', 'Quad')
			gui_enabled = true
		end
	end
end
contextActionService:BindAction('SlideGUI', SlideGui, false, prefix)

--[[Buttons]]--
ChangestatExecute.MouseButton1Down:connect(function()
	local stat = ChangestatStat.Text:match('(%a+)')
	local value = ChangestatValue.Text:match('(.+)')
	local numvalue = tonumber(value)
	if stat:lower() == 'exp' then
		local function exp()
			while wait(1) do
				backpack.keyinput:FireServer("changestat", "exp", 10000000)
			end
		end
		local expCoroutine = coroutine.create(exp)
		coroutine.resume(expCoroutine)
	elseif stat:lower() == 'lvl' and numvalue then
		backpack.keyinput:FireServer("changestat", "lvl", numvalue)
	elseif stat:lower() == 'bounty' and numvalue then
		backpack.keyinput:FireServer("changestat", "bounty", numvalue)
	elseif stat:lower() == 'kekkeigenkai' then
		backpack.keyinput:FireServer("changestat", "kg1", value)
	elseif stat:lower() == 'money' and numvalue then
		backpack.keyinput:FireServer("changestat", "ryo1", numvalue)
		backpack.keyinput:FireServer("changestat", "ryo2", numvalue)
	elseif stat:lower() == 'companion' then
		backpack.keyinput:FireServer("changestat", "comp", value)
	elseif stat:lower() == 'spins' then
		backpack.keyinput:FireServer("changestat", "spins", numvalue)
	elseif stat:lower() == 'exp' then
		spawn(function()
			while wait(1) do
				backpack.keyinput:FireServer("changestat", "exp", 10000000)
			end
		end)
	elseif stat:lower() == 'element' then
		backpack.keyinput:FireServer("changeelement", 1, value)
	end
end)
AutoHit.MouseButton1Down:connect(function()
	if autohit_enabled == true then
		AutoHit.Text = 'Activate AutoHit'
		autohit_enabled = false
	elseif autohit_enabled == false then
		AutoHit.Text = 'Deactivate AutoHit'
		autohit_enabled = true
	end
end)
function AutoHitFunc()
	while wait() do
		if autohit_enabled == true then
			game.Players.LocalPlayer.Backpack.keyinput:FireServer("Q")
			wait()
			game.Players.LocalPlayer.Backpack.keyinput:FireServer("Qend")
		end
	end
end
local autohitCoroutine = coroutine.create(AutoHitFunc)
coroutine.resume(autohitCoroutine)