local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local level7 = Instance.new("TextLabel")
local scripty = Instance.new("ScrollingFrame")
local executor = Instance.new("TextBox")
local execute = Instance.new("TextButton")
local clear = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.Draggable = true
Frame.Position = UDim2.new(0, 300, 1, -210)
Frame.Size = UDim2.new(0, 200, 0, 200)

level7.Name = "level7"
level7.Parent = Frame
level7.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
level7.BorderColor3 = Color3.new(0, 0, 0)
level7.Size = UDim2.new(0, 200, 0, 20)
level7.Font = Enum.Font.SciFi
level7.FontSize = Enum.FontSize.Size14
level7.Text = "Level 7"
level7.TextColor3 = Color3.new(1, 0.333333, 0)
level7.TextScaled = true
level7.TextStrokeTransparency = 0
level7.TextWrapped = true
level7.TextXAlignment = Enum.TextXAlignment.Left

scripty.Name = "scripty"
scripty.Parent = Frame
scripty.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
scripty.BorderColor3 = Color3.new(1, 0.333333, 0)
scripty.Position = UDim2.new(0, 10, 0, 30)
scripty.Size = UDim2.new(0, 180, 0, 130)
scripty.CanvasSize = UDim2.new(0, 0, 10, 0)
scripty.ScrollBarThickness = 0

executor.Name = "executor"
executor.Parent = scripty
executor.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
executor.BorderColor3 = Color3.new(1, 0.333333, 0)
executor.Size = UDim2.new(1, 0, 1, 0)
executor.ClearTextOnFocus = false
executor.Font = Enum.Font.SciFi
executor.FontSize = Enum.FontSize.Size18
executor.MultiLine = true
executor.TextColor3 = Color3.new(1, 0.333333, 0)
executor.TextStrokeTransparency = 0
executor.TextWrapped = true
executor.TextXAlignment = Enum.TextXAlignment.Left
executor.TextYAlignment = Enum.TextYAlignment.Top

execute.Name = "execute"
execute.Parent = Frame
execute.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
execute.BorderColor3 = Color3.new(1, 0.333333, 0)
execute.Position = UDim2.new(0, 10, 1, -35)
execute.Size = UDim2.new(1, -110, 0, 30)
execute.Font = Enum.Font.SciFi
execute.FontSize = Enum.FontSize.Size14
execute.Text = "Execute"
execute.TextColor3 = Color3.new(1, 0.333333, 0)
execute.TextScaled = true
execute.TextStrokeTransparency = 0
execute.TextWrapped = true

clear.Name = "clear"
clear.Parent = Frame
clear.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
clear.BorderColor3 = Color3.new(1, 0.333333, 0)
clear.Position = UDim2.new(1, -100, 1, -35)
clear.Size = UDim2.new(1, -110, 0, 30)
clear.Font = Enum.Font.SciFi
clear.FontSize = Enum.FontSize.Size14
clear.Text = "Clear"
clear.TextColor3 = Color3.new(1, 0.333333, 0)
clear.TextScaled = true
clear.TextStrokeTransparency = 0
clear.TextWrapped = true

execute.MouseButton1Click:connect(function()
	loadstring(executor.Text)()
end)

clear.MouseButton1Click:connect(function()
	executor.Text = ""
end)