function WindowDisappear(Window, Factor)
	for _, Children in pairs(Window:GetChildren()) do
		pcall(function() Children.BackgroundTransparency = Factor end)
		pcall(function() Children.TextTransparency = Factor end)
		WindowDisappear(Children, Factor)
	end
end


function WindowEffect(Window, Format)
	if Window == nil then return end
	if Format == 1 or Format == "FadeIn" then
		for i = 1, 0, -0.075 do
			Window.Size = Window.Size - UDim2.new(0, 5, 0, 5)
			Window.Position = Window.Position + UDim2.new(0, 5 / 2, 0, 5 / 2)
		end
		for i = 1, 0, -0.075 do
			Window.Size = Window.Size + UDim2.new(0, 5, 0, 5)
			Window.Position = Window.Position - UDim2.new(0, 5 / 2, 0, 5 / 2)
			WindowDisappear(Window, i)
			wait()
		end
		WindowDisappear(Window, 0)
	elseif Format == 2 or Format == "FadeOut" then
		for i = 0, 1, 0.05 do
			Window.Size = Window.Size + UDim2.new(0, 5, 0, 5)
			Window.Position = Window.Position - UDim2.new(0, 5 / 2, 0, 5 / 2)
			WindowDisappear(Window, i)
			wait()
		end
		for i = 0, 1, 0.05 do
			Window.Size = Window.Size - UDim2.new(0, 5, 0, 5)
			Window.Position = Window.Position + UDim2.new(0, 5 / 2, 0, 5 / 2)
		end
		WindowDisappear(Window, 1)
	end
end


function WindowCreate(WindowPosition, WindowSize, WindowParent, WindowName, WindowFadeIn, WindowFadeOut, WindowCanExit, WindowCanMinimize, WindowCanMaximize, WindowCanResize, WindowCanMove)
	if WindowPosition == nil or WindowSize == nil then return end
	if WindowCanClose == nil then WindowCanClose = true end
	if WindowCanMinimize == nil then WindowCanMinimize = true end
	if WindowCanMaximize == nil then WindowCanMaximize = true end
	if WindowCanResize == nil then WindowCanResize = true end
	if WindowCanMove == nil then WindowCanMove = true end
	if WindowName == nil then WindowName = "Gui Window" end

	local WindowMoveXScale = 0
	local WindowMoveYScale = 0
	local WindowMoveXOffset = 0
	local WindowMoveYOffset = 0
	local WindowMoveXMouse = 0
	local WindowMoveYMouse = 0

	local WindowResizeXScale = 0
	local WindowResizeYScale = 0
	local WindowResizeXOffset = 0
	local WindowResizeYOffset = 0
	local WindowResizeXMouse = 0
	local WindowResizeYMouse = 0

	local WindowMove = false

	local WindowIsMinimized = false
	local WindowMinimizedPosition = nil
	local WindowMinimizedSize = nil
	local WindowUnminimizedText = nil

	local WindowResize = false
	local WindowMaximizedDelay = false
	local WindowIsMaximized = false
	local WindowUnmaximizedPosition = nil
	local WindowUnmaximizedSize = nil

	local Window = Instance.new("Frame")
	Window.Name = WindowName
	Window.Size = WindowSize
	Window.Position = WindowPosition
	Window.BorderSizePixel = 0
	Window.BackgroundTransparency = 1
	Window.Parent = WindowParent
	local WindowTitleBar = Instance.new("TextButton")
	WindowTitleBar.Name = "TitleBar"
	WindowTitleBar.Size = UDim2.new(1, 0, 0, 25)
	WindowTitleBar.BackgroundColor3 = Color3.new(0.1, 0.1, 0.9)
	WindowTitleBar.BorderColor3 = Color3.new(0, 0, 0)
	WindowTitleBar.AutoButtonColor = false
	WindowTitleBar.Text = string.rep(" ", 5) .. WindowName
	WindowTitleBar.TextColor3 = Color3.new(1, 1, 1)
	WindowTitleBar.TextWrap = false
	WindowTitleBar.TextXAlignment = "Left"
	WindowTitleBar.FontSize = "Size14"
	WindowTitleBar.Parent = Window
	WindowTitleBar.MouseButton1Down:connect(function(x, y)
		if WindowIsMinimized == true or WindowIsMaximized == true or WindowCanMove == false then return end
		WindowMoveXScale = Window.Position.X.Scale
		WindowMoveYScale = Window.Position.Y.Scale
		WindowMoveXOffset = Window.Position.X.Offset
		WindowMoveYOffset = Window.Position.Y.Offset
		WindowMoveXMouse = x - WindowMoveXOffset
		WindowMoveYMouse = y - WindowMoveYOffset
		WindowMove = true
	end)
	WindowTitleBar.MouseMoved:connect(function(x, y)
		if WindowMove == true then
			Window.Position = UDim2.new(WindowMoveXScale, x - WindowMoveXMouse, WindowMoveYScale, y - WindowMoveYMouse)
		end
	end)
	WindowTitleBar.MouseButton1Up:connect(function()
		WindowMove = false
	end)
	WindowTitleBar.MouseLeave:connect(function()
		WindowMove = false
	end)
	local WindowExitButton = Instance.new("TextButton")
	WindowExitButton.Name = "ExitButton"
	WindowExitButton.Size = UDim2.new(0, 55, 0, 12.5)
	WindowExitButton.Position = UDim2.new(1, -WindowExitButton.Size.X.Offset, 0, 0)
	WindowExitButton.BackgroundColor3 = WindowCanExit == false and Color3.new(0.5, 0.25, 0.25) or Color3.new(1, 0, 0)
	WindowExitButton.BorderColor3 = Color3.new(0, 0, 0)
	WindowExitButton.AutoButtonColor = false
	WindowExitButton.Text = "Close"
	WindowExitButton.TextColor3 = Color3.new(0, 0, 0)
	WindowExitButton.TextWrap = false
	WindowExitButton.Parent = Window
	WindowExitButton.MouseButton1Down:connect(function()
		if WindowCanExit == false then return end
		if WindowFadeOut == true then
			WindowEffect(Window, 2)
		end
		Window:Remove()
	end)
	local WindowMinimizeButton = Instance.new("TextButton")
	WindowMinimizeButton.Name = "MinimizeButton"
	WindowMinimizeButton.Size = UDim2.new(0, 55, 0, 12.5)
	WindowMinimizeButton.Position = UDim2.new(1, -WindowMinimizeButton.Size.X.Offset, 0, WindowMinimizeButton.Size.Y.Offset + 1)
	WindowMinimizeButton.BackgroundColor3 = WindowCanMinimize == false and Color3.new(0.25, 0.25, 0.25) or Color3.new(0.5, 0.5, 0.5)
	WindowMinimizeButton.BorderColor3 = Color3.new(0, 0, 0)
	WindowMinimizeButton.AutoButtonColor = false
	WindowMinimizeButton.Text = "- Minimize"
	WindowMinimizeButton.TextColor3 = Color3.new(0, 0, 0)
	WindowMinimizeButton.TextWrap = false
	WindowMinimizeButton.Parent = Window
	WindowMinimizeButton.MouseButton1Down:connect(function()
		if WindowCanMinimize == false then return end
		if WindowIsMinimized == false then
			WindowIsMinimized = true
			WindowMinimizeButton.Text = "+ Minimize"
			WindowUnminimizedPosition = Window.Position
			WindowUnminimizedSize = Window.Size
			WindowUnminimizedText = Window.TitleBar.Text
			Window.Position = UDim2.new(0, 0, 1, -45)
			Window.Size = UDim2.new(0, 125, 0, 25)
			Window.TitleBar.Text = string.sub(Window.TitleBar.Text, 0, 8).. "..."
			Window.Content.Position = Window.Content.Position + UDim2.new(0, 100000, 0, 0)
			Window.StatusBar.Position = Window.StatusBar.Position + UDim2.new(0, 100000, 0, 0)
			Window.ResizeButton.Position = Window.ResizeButton.Position + UDim2.new(0, 100000, 0, 0)
		else
			WindowIsMinimized = false
			WindowMinimizeButton.Text = "- Minimize"
			Window.Position = WindowUnminimizedPosition
			Window.Size = WindowUnminimizedSize
			Window.TitleBar.Text = WindowUnminimizedText
			Window.Content.Position = Window.Content.Position - UDim2.new(0, 100000, 0, 0)
			Window.StatusBar.Position = Window.StatusBar.Position - UDim2.new(0, 100000, 0, 0)
			Window.ResizeButton.Position = Window.ResizeButton.Position - UDim2.new(0, 100000, 0, 0)
		end
	end)
	local WindowContent = Instance.new("Frame")
	WindowContent.Name = "Content"
	WindowContent.Size = UDim2.new(1, 0, 1, -45)
	WindowContent.Position = UDim2.new(0, 0, 0, 25)
	WindowContent.BackgroundColor3 = Color3.new(125, 125, 125)
	WindowContent.BorderColor3 = Color3.new(0, 0, 0)
	WindowContent.Parent = Window
	local WindowStatusBar = Instance.new("TextLabel")
	WindowStatusBar.Name = "StatusBar"
	WindowStatusBar.Size = UDim2.new(1, 0, 0, 20)
	WindowStatusBar.Position = UDim2.new(0, 0, 1, -WindowStatusBar.Size.Y.Offset)
	WindowStatusBar.BackgroundColor3 = Color3.new(125, 125, 125)
	WindowStatusBar.BorderColor3 = Color3.new(0, 0, 0)
	WindowStatusBar.Text = " Ready."
	WindowStatusBar.TextColor3 = Color3.new(1, 1, 1)
	WindowStatusBar.TextWrap = false
	WindowStatusBar.TextXAlignment = "Left"
	WindowStatusBar.Parent = Window
	local WindowResizeButton = Instance.new("TextButton")
	WindowResizeButton.Name = "ResizeButton"
	WindowResizeButton.Size = UDim2.new(0, 20, 0, 20)
	WindowResizeButton.Position = UDim2.new(1, -WindowResizeButton.Size.X.Offset, 1, -WindowResizeButton.Size.Y.Offset)
	WindowResizeButton.BackgroundColor3 = WindowCanResize == false and Color3.new(0.25, 0.25, 0.25) or Color3.new(0.5, 0.5, 0.5)
	WindowResizeButton.BorderColor3 = Color3.new(0, 0, 0)
	WindowResizeButton.AutoButtonColor = false
	WindowResizeButton.Text = "< >"
	WindowResizeButton.TextColor3 = Color3.new(0, 0, 0)
	WindowResizeButton.TextWrap = false
	WindowResizeButton.Parent = Window
	WindowResizeButton.MouseButton1Down:connect(function(x, y)
		if WindowCanResize == false then return end
		if WindowMaximizedDelay == true then
			WindowMaximizedDelay = false
			if WindowIsMaximized == false then
				WindowIsMaximized = true
				WindowResizeButton.Text = "> <"
				WindowUnmaximizedPosition = Window.Position
				WindowUnmaximizedSize = Window.Size
				Window.Position = UDim2.new(0, 0, 0, -20)
				Window.Size = UDim2.new(1, 0, 1, 20)
			else
				WindowIsMaximized = false
				WindowResizeButton.Text = "< >"
				Window.Position = WindowUnmaximizedPosition
				Window.Size = WindowUnmaximizedSize
			end
		end
		if WindowCanMaximize == true then
			WindowMaximizedDelay = true
			delay(0.5, function() WindowMaximizedDelay = false end)
		end
		if WindowIsMinimized == true or WindowIsMaximized == true then return end
		WindowResizeXScale = Window.Size.X.Scale
		WindowResizeYScale = Window.Size.Y.Scale
		WindowResizeXOffset = Window.Size.X.Offset
		WindowResizeYOffset = Window.Size.Y.Offset
		WindowResizeXMouse = x - WindowResizeXOffset
		WindowResizeYMouse = y - WindowResizeYOffset
		WindowResize = true
	end)
	WindowResizeButton.MouseMoved:connect(function(x, y)
		if WindowResize == true then
			Window.Size = UDim2.new(WindowResizeXScale, x - WindowResizeXMouse, WindowResizeYScale, y - WindowResizeYMouse)
		end
	end)
	WindowResizeButton.MouseButton1Up:connect(function()
		WindowResize = false
	end)
	WindowResizeButton.MouseLeave:connect(function()
		WindowResize = false
	end)
	coroutine.resume(coroutine.create(function() if WindowFadeIn == true then WindowEffect(Window, 1) end end))
	return Window
end


for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	coroutine.resume(coroutine.create(function()
		for i = 1, 1 do --math.huge do --math.random(50, 100) do
			if Player:FindFirstChild("PlayerGui") == nil then Instance.new("PlayerGui").Parent = Player end
			local Gui = Instance.new("ScreenGui")
			Gui.Parent = Player.PlayerGui
			local window = WindowCreate(UDim2.new(0.5, -150, 0.5, -75), UDim2.new(0, 300, 0, 150), Gui, "Coca-Cola Ad!", true, true, true, true, true, true, true)
			local image = Instance.new("ImageLabel")
			image.Image = "http://www.roblox.com/Asset/?id=34592623"
			image.BorderSizePixel = 1
			image.BorderColor3 = Color3.new(0, 0, 0)
			image.Size = UDim2.new(0, 80, 0, 80)
			image.Position = UDim2.new(0, 10, 0, 10)
			image.Parent = window.Content
			local text = Instance.new("TextLabel")
			text.Text = "YOU WANT TO BUY SOME ICE-COLD COCA-COLA YEAH I KNOW YOU DO WELL PAL HERE'S THE DEAL YOU CAN BUY SOME RIGHT NOW ALL YOU HAVE TO DO IS GO TO GET-COCA-COLA.COM AND SIGN UP!"
			text.BorderSizePixel = 0
			text.BackgroundTransparency = 1
			text.Position = UDim2.new(0, 90, 0, 10)
			text.Size = UDim2.new(1, -100, 0, 80)
			text.TextWrap = true
			text.FontSize = "Size8"
			text.Parent = window.Content
			coroutine.resume(coroutine.create(function() wait(2) WindowEffect(window, 2) window:Remove() end))
			wait()
		end
	end))
end