--click to go on a new line
gui = Instance.new("ScreenGui",game.CoreGui)
gui.Name = "ScriptExecutor"
gui.ResetOnSpawn = false

box = Instance.new("Frame",gui)
box.Name = "Box"
box.Size = UDim2.new(0,400,0,400)
box.BackgroundColor3 = Color3.new(255,255,255)
box.BackgroundTransparency = .25
box.BorderColor3 = Color3.new(0,0,0)
box.Active = true
box.Draggable = true

lab = Instance.new("TextLabel",box)
lab.Name = "TopBar"
lab.Size = UDim2.new(0,400,0,35)
lab.BackgroundColor3 = Color3.new(255,255,255)
lab.BackgroundTransparency = .2
lab.BorderSizePixel = 0
lab.Font = "Code"
lab.FontSize = "Size24"
lab.Text = "Script Executor"
lab.TextColor3 = Color3.new(0,0,0)

scroll = Instance.new("ScrollingFrame",box)
scroll.Size = UDim2.new(0,400,0,315)
scroll.Position = UDim2.new(0,0,0,35)
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 0
scroll.CanvasSize = UDim2.new(0,0,900,0)

text = Instance.new("TextBox",scroll)
text.Name = "Script"
text.Size = UDim2.new(0,400,0,10000)
text.BackgroundColor3 = Color3.new(255,255,255)
text.BackgroundTransparency = .5
text.BorderColor3 = Color3.new(0,0,0)
text.ClearTextOnFocus = false
text.Font = "Code"
text.FontSize = "Size14"
text.Text = "Insert Script Here"
text.TextColor3 = Color3.new(0,0,0)
text.TextWrapped = true
text.TextXAlignment = "Left"
text.TextYAlignment = "Top"

text.Focused:connect(function(enterPressed)
text.Text = text.Text.."\n"
end)

clear = Instance.new("TextButton",box)
clear.Name = "ClearButton"
clear.Size = UDim2.new(0,200,0,50)
clear.Position = UDim2.new(0,0,0,350)
clear.BackgroundColor3 = Color3.new(255,255,255)
clear.BackgroundTransparency = .3
clear.BorderSizePixel = 0
clear.Font = "Code"
clear.FontSize = "Size24"
clear.Text = "Clear"
clear.TextColor3 = Color3.new(0,0,0)

clear.MouseButton1Down:connect(function()
text.Text = ""
end)

exe = Instance.new("TextButton",box)
exe.Name = "ExecuteButton"
exe.Size = UDim2.new(0,200,0,50)
exe.Position = UDim2.new(0,200,0,350)
exe.BackgroundColor3 = Color3.new(255,255,255)
exe.BackgroundTransparency = .3
exe.BorderSizePixel = 0
exe.Font = "Code"
exe.FontSize = "Size24"
exe.Text = "Execute"
exe.TextColor3 = Color3.new(0,0,0)

exe.MouseButton1Down:connect(function()
loadstring(text.Text)()
end)