C.Function.CreateModule("GuiSupport", function(Self, Msg)
	function Self.WindowFade(Part, Factor)
		for _, Children in pairs(Part:children()) do
			pcall(function() Children.BackgroundTransparency = Factor end)
			pcall(function() Children.TextTransparency = Factor end)
			Self.WindowFade(Children, Factor)
		end
	end
	function Self.WindowCreate(Position, Size, Parent, Name, CanExit, CanMinimize, CanMaximize, CanResize, CanMove, OnClose, MinimumSize)
		if Position == nil then Position = UDim2.new(0, 0, 0, 0) end
		if Size == nil then Size = UDim2.new(0, 300, 0, 175) end
		if CanClose == nil then CanClose = true end
		if CanMinimize == nil then CanMinimize = true end
		if CanMaximize == nil then CanMaximize = true end
		if CanResize == nil then CanResize = true end
		if CanResize == false then CanMaximize = false end
		if CanMove == nil then CanMove = true end
		if Name == nil then Name = "Window" end
		if MinimumSize == nil then MinimumSize = UDim2.new(0, 100, 0, 100) end
		local IsMinimized = false
		local MinimizedPosition = nil
		local MinimizedSize = nil
		local UnminimizedText = nil
		local Window = new("Frame", Parent)
		Window.Name = Name
		Window.Size = Size
		Window.Position = Position
		Window.BorderSizePixel = 0
		Window.BackgroundTransparency = 1
		local TitleBarDrag = game:GetService("InsertService"):LoadAsset(52721418):children()[1]
		TitleBarDrag.Disabled = true
		TitleBarDrag.Parent = Window
		TitleBarDrag.CanMove.Value = CanMove
		local ResizeButtonResize = game:GetService("InsertService"):LoadAsset(52724860):children()[1]
		ResizeButtonResize.Disabled = true
		ResizeButtonResize.Parent = Window
		ResizeButtonResize.CanResize.Value = CanResize
		ResizeButtonResize.CanMaximize.Value = CanMaximize
		ResizeButtonResize.MinimumSizeXScale.Value = MinimumSize.X.Scale
		ResizeButtonResize.MinimumSizeXOffset.Value = MinimumSize.X.Offset
		ResizeButtonResize.MinimumSizeYScale.Value = MinimumSize.Y.Scale
		ResizeButtonResize.MinimumSizeYOffset.Value = MinimumSize.Y.Offset
		local TitleBar = new("TextButton", Window)
		TitleBar.Name = "TitleBar"
		TitleBar.Size = UDim2.new(1, 0, 0, 25)
		TitleBar.BackgroundColor3 = Color3.new(0.1, 0.1, 0.9)
		TitleBar.BorderColor3 = Color3.new(0, 0, 0)
		TitleBar.AutoButtonColor = false
		TitleBar.TextColor3 = Color3.new(1, 1, 1)
		TitleBar.TextWrap = true
		TitleBar.TextXAlignment = "Left"
		TitleBar.FontSize = "Size14"
		TitleBar.Changed:connect(function(Property)
			if Property == "Text" then
				if string.sub(TitleBar.Text, 0, 5) ~= string.rep(" ", 5) then
					TitleBar.Text = string.rep(" ", 5) .. TitleBar.Text
				end
			end
		end)
		TitleBar.Text = Name
		Icon = new("ImageLabel", Window)
		Icon.Name = "Icon"
		Icon.Size = UDim2.new(0, 16, 0, 16)
		Icon.Position = UDim2.new(0, 16 / 4, 0, 16 / 4)
		Icon.BackgroundColor3 = Color3.new(0.1, 0.1, 0.9)
		Icon.BorderSizePixel = 0
		Icon.BackgroundTransparency = 1
		local ExitButton = new("TextButton", Window)
		ExitButton.Name = "ExitButton"
		ExitButton.Size = UDim2.new(0, 25, 0, 25)
		ExitButton.Position = UDim2.new(1, -ExitButton.Size.X.Offset, 0, 0)
		ExitButton.BackgroundColor3 = CanExit == false and Color3.new(0.5, 0.25, 0.25) or Color3.new(1, 0, 0)
		ExitButton.BorderColor3 = Color3.new(0, 0, 0)
		ExitButton.Text = "X"
		ExitButton.TextColor3 = Color3.new(0, 0, 0)
		ExitButton.TextWrap = false
		ExitButton.MouseButton1Up:connect(function()
			if CanExit == false then return false end
			if OnClose ~= nil then
				OnClose(Window)
			else
				Window:Remove()
			end
		end)
		local MinimizeButton = new("TextButton", Window)
		MinimizeButton.Name = "MinimizeButton"
		MinimizeButton.Size = UDim2.new(0, 25, 0, 25)
		MinimizeButton.Position = UDim2.new(1, -MinimizeButton.Size.X.Offset * 2, 0, 0)
		MinimizeButton.BackgroundColor3 = CanMinimize == false and Color3.new(0.25, 0.25, 0.25) or Color3.new(0.5, 0.5, 0.5)
		MinimizeButton.BorderColor3 = Color3.new(0, 0, 0)
		MinimizeButton.Text =  "v"
		MinimizeButton.TextColor3 = Color3.new(0, 0, 0)
		MinimizeButton.TextWrap = false
		MinimizeButton.MouseButton1Up:connect(function()
			if CanMinimize == false then return false end
			if IsMinimized == false then
				IsMinimized = true
				MinimizeButton.Text = "^"
				UnminimizedPosition = Window.Position
				UnminimizedSize = Window.Size
				UnminimizedText = Window.TitleBar.Text
				Window.Position = UDim2.new(0, 0, 1, -50)
				Window.Size = UDim2.new(0, 175, 0, 25)
				Window.TitleBar.Text = string.sub(Window.TitleBar.Text, 0, 8).. "..."
				Window.Content.Position = Window.Content.Position + UDim2.new(0, 100000, 0, 0)
				Window.StatusBar.Position = Window.StatusBar.Position + UDim2.new(0, 100000, 0, 0)
				Window.ResizeButton.Position = Window.ResizeButton.Position + UDim2.new(0, 100000, 0, 0)
			else
				IsMinimized = false
				MinimizeButton.Text = "v"
				Window.Position = UnminimizedPosition
				Window.Size = UnminimizedSize
				Window.TitleBar.Text = UnminimizedText
				Window.Content.Position = Window.Content.Position - UDim2.new(0, 100000, 0, 0)
				Window.StatusBar.Position = Window.StatusBar.Position - UDim2.new(0, 100000, 0, 0)
				Window.ResizeButton.Position = Window.ResizeButton.Position - UDim2.new(0, 100000, 0, 0)
			end
		end)
		local Content = new("Frame")
		Content.Name = "Content"
		Content.Size = UDim2.new(1, 0, 1, -45)
		Content.Position = UDim2.new(0, 0, 0, 25)
		Content.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		Content.BorderColor3 = Color3.new(0, 0, 0)
		Content.Parent = Window
		local StatusBar = new("TextLabel")
		StatusBar.Name = "StatusBar"
		StatusBar.Size = UDim2.new(1, 0, 0, 20)
		StatusBar.Position = UDim2.new(0, 0, 1, -StatusBar.Size.Y.Offset)
		StatusBar.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
		StatusBar.BorderColor3 = Color3.new(0, 0, 0)
		StatusBar.Changed:connect(function(Property)
			if Property == "Text" then
				if string.sub(StatusBar.Text, 0, 1) ~= " " then
					StatusBar.Text = " " ..StatusBar.Text
				end
			end
		end)
		StatusBar.Text = ""
		StatusBar.TextColor3 = Color3.new(1, 1, 1)
		StatusBar.TextWrap = true
		StatusBar.TextXAlignment = "Left"
		StatusBar.Parent = Window
		local ResizeButton = new("TextButton")
		ResizeButton.Name = "ResizeButton"
		ResizeButton.Size = UDim2.new(0, 20, 0, 20)
		ResizeButton.Position = UDim2.new(1, -ResizeButton.Size.X.Offset, 1, -ResizeButton.Size.Y.Offset)
		ResizeButton.BackgroundColor3 = CanResize == false and Color3.new(0.25, 0.25, 0.25) or Color3.new(0.5, 0.5, 0.5)
		ResizeButton.BorderColor3 = Color3.new(0, 0, 0)
		ResizeButton.BorderSizePixel = 1
		ResizeButton.AutoButtonColor = false
		ResizeButton.Text = "< >"
		ResizeButton.TextColor3 = Color3.new(0, 0, 0)
		ResizeButton.TextWrap = false
		ResizeButton.Parent = Window
		coroutine.wrap(function()
			while Window.Parent ~= nil do
				if ResizeButton.Text == "> <" then
					TitleBarDrag.CanMove.Value = false
				end
				if IsMinimized == true then
					TitleBarDrag.CanMove.Value = false
					ResizeButtonResize.CanResize.Value = false
					ResizeButtonResize.CanMaximize.Value = false
				end
				if ResizeButton.Text == "< >" and IsMinimized == false then
					TitleBarDrag.CanMove.Value = CanMove
					ResizeButtonResize.CanResize.Value = CanResize
					ResizeButtonResize.CanMaximize.Value = CanMaximize
				end
				wait()
			end
		end)()
		wait(0.05)
		ResizeButtonResize.Disabled = false
		TitleBarDrag.Disabled = false
		return Window
	end
	function Self.MessageBox(Type, Words, Position, Parent, Name, CanExit, CanMinimize, CanMove)
		if CanClose == nil then CanClose = false end
		if CanMinimize == nil then CanMinimize = true end
		if CanMove == nil then CanMove = true end
		local Window = Self.WindowCreate(UDim2.new(0, 0, 0, 0), UDim2.new(0, 300, 0, 125), Parent, Name == nil and "Message" or Name,  CanExit, CanMinimize, false, false, CanMove)
		local ImageLabel = new("ImageLabel")
		ImageLabel.Size = UDim2.new(0, 64, 0, 64)
		ImageLabel.Position = UDim2.new(0, 5, 0, 5)
		ImageLabel.BorderSizePixel = 0
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Parent = Window.Content
		if Type:lower() == "prompt" then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=41363872"
			Window.Icon.Image = ImageLabel.Image
			Window.TitleBar.Text = Name ~= nil and "Prompt: " ..Name or Window.TitleBar.Text
		elseif Type:lower() == "warning" then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=41363725"
			Window.Icon.Image = ImageLabel.Image
			Window.TitleBar.Text = Name ~= nil and "Warning: " ..Name or Window.TitleBar.Text
		elseif Type:lower() == "error" then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=41364113"
			Window.Icon.Image = ImageLabel.Image
			Window.TitleBar.Text = Name ~= nil and "Error: " ..Name or Window.TitleBar.Text
		elseif Type:lower() == "fatal" or Type:lower() == "fatal error" then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=41364113"
			Window.Icon.Image = ImageLabel.Image
			Window.TitleBar.Text = Name ~= nil and "Fatal: " ..Name or Window.TitleBar.Text
		elseif tonumber(Type) ~= nil then
			ImageLabel.Image = "http://www.roblox.com/Asset/?id=" ..tonumber(Type)
			Window.Icon.Image = ImageLabel.Image
		else
			ImageLabel:Remove()
			ImageLabel = nil
		end
		for i = 1, #Words do
			local Label = new("TextLabel")
			Label.Text = string.rep(" ", 6) .. Words[i]
			Label.BackgroundColor3 = Window.Content.BackgroundColor3
			Label.BorderSizePixel = 0
			Label.TextColor3 = Color3.new(0, 0, 0)
			Label.TextXAlignment = "Left"
			Label.Size = UDim2.new(1, (i <= 5 and ImageLabel ~= nil) and -74 or 0, 0, 15)
			Label.Position = UDim2.new(0, (i <= 5 and ImageLabel ~= nil) and 74 or 0, 0, ((i - 1) * 15))
			Label.Parent = Window.Content
			if string.len(Words[i]) * 8 > Window.Size.X.Offset then
				Window.Size = UDim2.new(0, string.len(Words[i]) * 8, 0, Window.Size.Y.Offset + 15)
			else
				Window.Size = UDim2.new(0, Window.Size.X.Offset, 0, Window.Size.Y.Offset + 15)
			end
		end
		local Button = new("TextButton")
		Button.Text = "OK"
		Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
		Button.BorderColor3 = Color3.new(0, 0, 0)
		Button.BorderSizePixel = 1
		Button.TextColor3 = Color3.new(0, 0, 0)
		Button.Size = UDim2.new(0, 80, 0, 35)
		Button.Position = UDim2.new(0.5, -40, 1, -50)
		Button.Parent = Window.Content
		Button.MouseButton1Up:connect(function() Window:Remove() end)
		if Position == nil then Window.Position = UDim2.new(0.5, -Window.Size.X.Offset / 2, 0.5, -Window.Size.Y.Offset / 2) end
		return Window
	end
	Self.WindowControls = {}
	Self.WindowControls.TabFrame = {}
	function Self.WindowControls.TabFrame.New(NumTabs)
		if NumTabs == nil or NumTabs <= 0 then NumTabs = 1 end
		local TabFrame = new("Frame")
		TabFrame.Name = "TabFrame"
		TabFrame.Size = UDim2.new(1, 0, 0, 25)
		local TabInstance = new("TextButton")
		TabInstance.Name = "Tab"
		TabInstance.Text = "Tab"
		TabInstance.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
		TabInstance.TextColor3 = Color3.new(0, 0, 0)
		TabInstance.TextWrap = true
		for i = 0, NumTabs - 1 do
			local Tab = TabInstance:Clone()
			Tab.Name = TabInstance.Name .. tostring(i + 1)
			Tab.Position = UDim2.new(i / NumTabs, 0, 0.2, 0)
			Tab.Size = UDim2.new(1 / NumTabs, 0, 0.8, 0)
			Tab.Parent = TabFrame
			Tab.MouseButton1Up:connect(function()
				Self.WindowControls.TabFrame.SelectTab(TabFrame, i + 1)
			end)
		end
		return TabFrame
	end
	function Self.WindowControls.TabFrame.SelectTab(Frame, Tab)
		local NewTab = Frame["Tab" ..Tab]
		if NewTab ~= nil then
			for _, Tabs in pairs(Frame:children()) do
				Tabs.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
				Tabs.Position = UDim2.new(Tabs.Position.X.Scale, 0, 0.2, 0)
				Tabs.Size = UDim2.new(Tabs.Size.X.Scale, 0, 0.8, 0)
			end
			NewTab.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
			NewTab.Position = UDim2.new(NewTab.Position.X.Scale, 0, 0, 0)
			NewTab.Size = UDim2.new(NewTab.Size.X.Scale, 0, 1, 0)
			return true
		else
			return false
		end
	end
	function Self.WindowControls.TabFrame.GetSelectedTab(Frame)
		for _, Tabs in pairs(Frame:children()) do
			if Tabs.Size.Y.Scale >= 1 then
				return Tabs, true
			end
		end
		return nil, false
	end
	Self.WindowControls.CheckBox = {}
	Self.WindowControls.CheckBox.Icon = "X"
	function Self.WindowControls.CheckBox.New(IsOn)
		local IsOn = IsOn == nil and false or IsOn
		local CheckBox = new("TextButton")
		CheckBox.Name = "CheckBox"
		CheckBox.Text = IsOn == true and Self.WindowControls.CheckBox.Icon or ""
		CheckBox.Size = UDim2.new(0, 15, 0, 15)
		CheckBox.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
		CheckBox.TextColor3 = Color3.new(0, 0, 0)
		CheckBox.MouseButton1Up:connect(function()
			IsOn = not IsOn
			Self.WindowControls.CheckBox.SelectCheckBox(CheckBox, IsOn)
		end)
		return CheckBox
	end
	function Self.WindowControls.CheckBox.SelectCheckBox(Box, IsOn)
		if IsOn == false then
			Box.Text = ""
			return false
		elseif IsOn == true then
			Box.Text = Self.WindowControls.CheckBox.Icon
			return true
		end
	end
	function Self.WindowControls.CheckBox.ToggleCheckBox(Box, IsOn)
		if Box.Text == Self.WindowControls.CheckBox.Icon then
			Box.Text = ""
			return false
		else
			Box.Text = Self.WindowControls.CheckBox.Icon
			return true
		end
	end
	function Self.WindowControls.CheckBox.GetCheckBoxState(Box) return Box.Text == Self.WindowControls.CheckBox.Icon and true or false end
	Self.WindowControls.ListFrame = {}
	function Self.WindowControls.ListFrame.New()
		local ListFrame = new("Frame")
		ListFrame.Name = "ListFrame"
		ListFrame.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
		ListFrame.BorderColor3 = Color3.new(0, 0, 0)
		local ListIndex = new("IntValue")
		ListIndex.Name = "ListIndex"
		ListIndex.Value = 0
		ListIndex.Parent = ListFrame
		return ListFrame
	end
	function Self.WindowControls.ListFrame.ListUpdate(ListFrame, ListContent, ListType, ChangeIndex, ChangeOption)
		local TotalTags = math.floor((ListFrame.AbsoluteSize.Y - 20) / 20)
		local ListIndex = ListFrame.ListIndex.Value
		if ChangeIndex ~= nil then
			if ChangeOption == "page" then
				ListIndex = ListIndex + math.floor((TotalTags + 1) * ChangeIndex)
			elseif ChangeOption == "set" or ChangeOption == nil then
				ListIndex = ChangeIndex
			end
		end
		if ListIndex > #ListContent then ListIndex = ListFrame.ListIndex.Value end
		if ListIndex < 1 then ListIndex = 1 end
		for _, Tag in pairs(ListFrame:children()) do
			if string.match(Tag.Name, "Tag") then Tag:Remove() end
		end
		for i = ListIndex, ListIndex + TotalTags do
			if i > #ListContent then break end
			local Parts = C.Function.Explode("\t", ListContent[i])
			local Tag = new("TextButton")
			Tag.Name = "Tag" ..i
			Tag.AutoButtonColor = false
			Tag.Text = ""
			Tag.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
			Tag.BorderColor3 = Color3.new(0, 0, 0)
			Tag.Size = UDim2.new(1, 0, 0, 20)
			Tag.Position = UDim2.new(0, 0, 0, 20 * (i - ListIndex))
			Tag.Parent = ListFrame
			if ListType == nil or ListType == 1 then
				Tag.MouseEnter:connect(function()
					for _, Table in pairs(Tag:children()) do
						Table.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
					end
				end)
				Tag.MouseLeave:connect(function()
					for _, Table in pairs(Tag:children()) do
						Table.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
					end
				end)
				Tag.MouseButton1Down:connect(function()
					for _, Table in pairs(Tag:children()) do
						Table.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					end
				end)
				Tag.MouseButton1Up:connect(function()
					for _, Table in pairs(Tag:children()) do
						Table.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
					end
				end)
			end
			for x = 1, #Parts do
				local Table = new("TextButton")
				Table.Name = "Table" ..x
				Table.AutoButtonColor = false
				Table.Position = UDim2.new((x - 1) / #Parts, 0, 0, 0)
				Table.Size = UDim2.new(1 / #Parts, 0, 1, 0)
				Table.Changed:connect(function(Property)
					if Property == "Text" then
						if string.sub(Table.Text, 0, 5) ~= string.rep(" ", 1) then
							Table.Text = string.rep(" ", 1) ..Table.Text
						end
					end
				end)
				Table.Text = Parts[x]
				Table.TextXAlignment = "Left"
				Table.TextWrap = true
				Table.TextColor3 = Color3.new(0, 0, 0)
				Table.BorderSizePixel = 1
				Table.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
				Table.BorderColor3 = Color3.new(0, 0, 0)
				Table.Parent = Tag
				if ListType == 2 then
					Table.MouseEnter:connect(function()
						Table.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
					end)
					Table.MouseLeave:connect(function()
						Table.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
					end)
					Table.MouseButton1Down:connect(function()
						Table.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					end)
					Table.MouseButton1Up:connect(function()
						Table.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
					end)
				end
			end
		end
		ListFrame.ListIndex.Value = ListIndex
	end
	return true
end, function(Self, Msg)
	Self.WindowFade = nil
	Self.WindowCreate = nil
	return true
end, "Windows 95-like Gui support.")