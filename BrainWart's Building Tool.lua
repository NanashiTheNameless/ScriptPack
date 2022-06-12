--[==[============================================== BrainWart's Building Tool ==============================================]==]--
assert(script.ClassName == "LocalScript", "Must be a local script.")

if script.Parent.ClassName ~= "HopperBin" then
	local Hopper = Instance.new("HopperBin")
	Hopper.Name = "B-Tool"
	Hopper.Parent = game:GetService("Players").LocalPlayer.Backpack
	
	local scriptClone = script:Clone()
	scriptClone.Parent = Hopper
	script:Remove()
	assert(false, "Parent not a hopperbin")
end

--[ Code ]--
Player = game:GetService("Players").LocalPlayer
Original = nil
Clipboard = nil
Selection = nil
Dragging = false
isMouseButton1Down = false
version = "1.0.0"
CurrentMode = "Move"
Settings = {
	SettingPanelOpen = false,
	ColorWindowOpen = false,
	ColorWindowOpenPos = UDim2.new(0.5,-75,0.5,-75)
}
Snapto = {
	Enabled = {["Move"] = true,["Resize"] = true, ["Rotate"] = true},
	Distance = {["Move"] = 1, ["Resize"] = 1, ["Rotate"] = 45}
}
CustomColors = {BrickColor.new(1003), BrickColor.new(1003), BrickColor.new(1003), BrickColor.new(1003),
	BrickColor.new(1003), BrickColor.new(1003), BrickColor.new(1003), BrickColor.new(1003)}

local Part = Instance.new("Part")
	Part.Name = "Part"
	Part.Anchored = true
	Part.TopSurface = "Smooth"
	Part.BottomSurface = "Smooth"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(2,1,4)
Clipboard = Part

local Gui = Instance.new("ScreenGui")
	Gui.Name = "B-Tool Gui"
local ColorFrame = Instance.new("TextButton")
	ColorFrame.Name = "Color Frame"
	ColorFrame.AutoButtonColor = false
	ColorFrame.Text = ""
	ColorFrame.TextTransparency = 1
	ColorFrame.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	ColorFrame.BorderColor3 = Color3.new(0,0,0)
	ColorFrame.Position = UDim2.new(0,-200,0.5,-85)
	ColorFrame.Size = UDim2.new(0,151,0,170)
	ColorFrame.BackgroundTransparency = 0
	ColorFrame.ZIndex = 3
	ColorFrame.Draggable = true
	ColorFrame.Parent = Gui
local Title = Instance.new("TextLabel")
	Title.Name = "Title"
	Title.Text = "Color BETA"
	Title.TextColor3 = Color3.new(0,0,0)
	Title.TextTransparency = 0
	Title.TextXAlignment = 2
	Title.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	Title.BorderColor3 = Color3.new(0,0,0)
	Title.Position = UDim2.new(0.5,0,0,12)
	Title.Size = UDim2.new(0,0,0,0)
	Title.BackgroundTransparency = 0
	Title.ZIndex = 3
	Title.Parent = ColorFrame
local DefualtColorSelectionButton = Instance.new("ImageButton")
	DefualtColorSelectionButton.Name = "Color Button"
	DefualtColorSelectionButton.AutoButtonColor = false
	DefualtColorSelectionButton.BackgroundColor3 = Color3.new(0,0,0)
	DefualtColorSelectionButton.BorderColor3 = Color3.new(0,0,0)
	DefualtColorSelectionButton.Position = UDim2.new(0,0,0,0)
	DefualtColorSelectionButton.Size = UDim2.new(0,15,0,15)
	DefualtColorSelectionButton.BackgroundTransparency = 0
	DefualtColorSelectionButton.ZIndex = 3
	DefualtColorSelectionButton.Draggable = false
for i = 0, 63 do
	local Button = DefualtColorSelectionButton:Clone()
	Button.BackgroundColor3 = BrickColor.palette(i).Color
	Button.Position = UDim2.new(0,(math.fmod(i,8)*18) + 5,0,(math.floor(i/8) * 18) + 24)
	Button.Parent = ColorFrame
	Button.MouseButton1Click:connect(function()
		if Selection == nil then
			return
		end
		
		Selection.BrickColor = BrickColor.palette(i)
	end)
end
local Frame = Instance.new("TextButton")
	Frame.Name = "Main Frame"
	Frame.AutoButtonColor = false
	Frame.Text = ""
	Frame.TextTransparency = 1
	Frame.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	Frame.BorderColor3 = Color3.new(0,0,0)
	Frame.Position = UDim2.new(0,20,0,200)
	Frame.Size = UDim2.new(0,100,0,150)
	Frame.BackgroundTransparency = 0
	Frame.ZIndex = 2
	Frame.Draggable = true
	Frame.Parent = Gui
local Title = Instance.new("TextLabel")
	Title.Name = "Title"
	Title.Text = "B-Tool v" .. version
	Title.TextColor3 = Color3.new(0,0,0)
	Title.TextTransparency = 0
	Title.TextXAlignment = 2
	Title.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	Title.BorderColor3 = Color3.new(0,0,0)
	Title.Position = UDim2.new(0.5,0,0,15)
	Title.Size = UDim2.new(0,0,0,0)
	Title.BackgroundTransparency = 0
	Title.ZIndex = 2
	Title.Parent = Frame
local Color = Instance.new("TextButton")
	Color.Name = "ColorButton"
	Color.Text = "Color"
	Color.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	Color.BorderColor3 = Color3.new(0,0,0)
	Color.TextColor3 = Color3.new(0,0,0)
	Color.Position = UDim2.new(0,5,0,120)
	Color.Size = UDim2.new(0,90,0,25)
	Color.BackgroundTransparency = 0
	Color.ZIndex = 2
	Color.Draggable = false
	Color.Parent = Frame
	Color.MouseButton1Click:connect(function()
		Settings.ColorWindowOpen = not Settings.ColorWindowOpen
		
		if Settings.ColorWindowOpen then
			ColorFrame:TweenPosition(Settings.ColorWindowOpenPos, "Out", "Quad", 1, true)
			Color.BackgroundColor3 = Color3.new(0.5,0.5,0.5)
		else
			Settings.ColorWindowOpenPos = ColorFrame.Position
			ColorFrame:TweenPosition(UDim2.new(0,-200,Settings.ColorWindowOpenPos.Y.Scale,Settings.ColorWindowOpenPos.Y.Offset), "Out", "Quad", 1, true)
			Color.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		end
	end)
local Move = Instance.new("TextButton")
	Move.Name = "MoveButton"
	Move.Text = "Move"
	Move.BackgroundColor3 = Color3.new(0.5,0.5,0.5)
	Move.BorderColor3 = Color3.new(0,0,0)
	Move.TextColor3 = Color3.new(0,0,0)
	Move.Position = UDim2.new(0,5,0,30)
	Move.Size = UDim2.new(0,90,0,25)
	Move.BackgroundTransparency = 0
	Move.ZIndex = 2
	Move.Draggable = false
	Move.Parent = Frame
	Move.MouseButton1Click:connect(function()
		ChangeMode("Move")
	end)
	Move.MouseButton2Click:connect(function()
		ChangeSnap("Move", not Snapto.Enabled.Move)
	end)
local Resize = Instance.new("TextButton")
	Resize.Name = "ResizeButton"
	Resize.Text = "Resize"
	Resize.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	Resize.BorderColor3 = Color3.new(0,0,0)
	Resize.TextColor3 = Color3.new(0,0,0)
	Resize.Position = UDim2.new(0,5,0,60)
	Resize.Size = UDim2.new(0,90,0,25)
	Resize.BackgroundTransparency = 0
	Resize.ZIndex = 2
	Resize.Draggable = false
	Resize.Parent = Frame
	Resize.MouseButton1Click:connect(function()
		ChangeMode("Resize")
	end)
	Resize.MouseButton2Click:connect(function()
		ChangeSnap("Resize", not Snapto.Enabled.Resize)
	end)
local Rotate = Instance.new("TextButton")
	Rotate.Name = "RotateButton"
	Rotate.Text = "Rotate"
	Rotate.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	Rotate.BorderColor3 = Color3.new(0,0,0)
	Rotate.TextColor3 = Color3.new(0,0,0)
	Rotate.Position = UDim2.new(0,5,0,90)
	Rotate.Size = UDim2.new(0,90,0,25)
	Rotate.BackgroundTransparency = 0
	Rotate.ZIndex = 2
	Rotate.Draggable = false
	Rotate.Parent = Frame
	Rotate.MouseButton1Click:connect(function()
		ChangeMode("Rotate")
	end)
	Rotate.MouseButton2Click:connect(function()
		ChangeSnap("Rotate", not Snapto.Enabled.Rotate)
	end)
local SettingFrame = Instance.new("Frame")
	SettingFrame.Name = "Settings"
	SettingFrame.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	SettingFrame.BorderColor3 = Color3.new(0,0,0)
	SettingFrame.Position = UDim2.new(0,0,0,0)
	SettingFrame.Size = UDim2.new(0,100,0,150)
	SettingFrame.BackgroundTransparency = 0
	SettingFrame.Active = false
	SettingFrame.ZIndex = 1
	SettingFrame.Draggable = false
	SettingFrame.Parent = Frame
local SettingTitle = Instance.new("TextLabel")
	SettingTitle.Name = "Title"
	SettingTitle.Text = "Settings"
	SettingTitle.TextColor3 = Color3.new(0,0,0)
	SettingTitle.TextTransparency = 0
	SettingTitle.TextXAlignment = 2
	SettingTitle.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	SettingTitle.BorderColor3 = Color3.new(0,0,0)
	SettingTitle.Position = UDim2.new(0.5,0,0,10)
	SettingTitle.Size = UDim2.new(0,0,0,0)
	SettingTitle.BackgroundTransparency = 0
	SettingTitle.ZIndex = 1
	SettingTitle.Parent = SettingFrame
local SettleButton = Instance.new("TextButton")
	SettleButton.Name = "Settle"
	SettleButton.Text = "Settle"
	SettleButton.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	SettleButton.BorderColor3 = Color3.new(0,0,0)
	SettleButton.TextColor3 = Color3.new(0,0,0)
	SettleButton.Position = UDim2.new(0,10,0,136)
	SettleButton.Size = UDim2.new(0,80,0,12)
	SettleButton.BackgroundTransparency = 0
	SettleButton.ZIndex = 1
	SettleButton.Draggable = false
	SettleButton.Parent = SettingFrame
	SettleButton.MouseButton1Click:connect(function()
		if Selection == nil then
			return
		end
		local function round(number)
			return math.floor(number + 0.5)
		end
		
		local Position = Vector3.new(round(Selection.Position.X),round(Selection.Position.Y),round(Selection.Position.Z))
		Selection.CFrame = CFrame.new(Position)
		Original = Selection:Clone()
	end)
local SnapTitle = Instance.new("TextLabel")
	SnapTitle.Name = "Snapping Title"
	SnapTitle.Text = "Snap"
	SnapTitle.TextColor3 = Color3.new(0.1,0.1,0.1)
	SnapTitle.TextTransparency = 0
	SnapTitle.TextXAlignment = 1
	SnapTitle.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	SnapTitle.BorderColor3 = Color3.new(0,0,0)
	SnapTitle.Position = UDim2.new(0.3,0,0,20)
	SnapTitle.Size = UDim2.new(0,0,0,0)
	SnapTitle.BackgroundTransparency = 0
	SnapTitle.ZIndex = 1
	SnapTitle.Parent = SettingFrame
local SnapFrame = Instance.new("Frame")
	SnapFrame.Name = "Settings"
	SnapFrame.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	SnapFrame.BorderColor3 = Color3.new(0,0,0)
	SnapFrame.Position = UDim2.new(0,5,0,30)
	SnapFrame.Size = UDim2.new(0,90,0,44)
	SnapFrame.BackgroundTransparency = 0
	SnapFrame.ZIndex = 1
	SnapFrame.Draggable = false
	SnapFrame.Parent = SettingFrame
local MoveSnapButton = Instance.new("TextButton")
	MoveSnapButton.Name = "MoveSnap"
	MoveSnapButton.Text = "Move: TRUE"
	MoveSnapButton.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	MoveSnapButton.BorderColor3 = Color3.new(0,0,0)
	MoveSnapButton.TextColor3 = Color3.new(0,0,0)
	MoveSnapButton.Position = UDim2.new(0,5,0,2)
	MoveSnapButton.Size = UDim2.new(0,80,0,12)
	MoveSnapButton.BackgroundTransparency = 0
	MoveSnapButton.ZIndex = 1
	MoveSnapButton.Draggable = false
	MoveSnapButton.Parent = SnapFrame
	MoveSnapButton.MouseButton1Click:connect(function()
		ChangeSnap("Move", not Snapto.Enabled.Move)
	end)
local ResizeSnapButton = Instance.new("TextButton")
	ResizeSnapButton.Name = "ResizeSnap"
	ResizeSnapButton.Text = "Resize: TRUE"
	ResizeSnapButton.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	ResizeSnapButton.BorderColor3 = Color3.new(0,0,0)
	ResizeSnapButton.TextColor3 = Color3.new(0,0,0)
	ResizeSnapButton.Position = UDim2.new(0,5,0,16)
	ResizeSnapButton.Size = UDim2.new(0,80,0,12)
	ResizeSnapButton.BackgroundTransparency = 0
	ResizeSnapButton.ZIndex = 1
	ResizeSnapButton.Draggable = false
	ResizeSnapButton.Parent = SnapFrame
	ResizeSnapButton.MouseButton1Click:connect(function()
		ChangeSnap("Resize", not Snapto.Enabled.Resize)
	end)
local RotateSnapButton = Instance.new("TextButton")
	RotateSnapButton.Name = "RotateSnap"
	RotateSnapButton.Text = "Rotate: TRUE"
	RotateSnapButton.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	RotateSnapButton.BorderColor3 = Color3.new(0,0,0)
	RotateSnapButton.TextColor3 = Color3.new(0,0,0)
	RotateSnapButton.Position = UDim2.new(0,5,0,30)
	RotateSnapButton.Size = UDim2.new(0,80,0,12)
	RotateSnapButton.BackgroundTransparency = 0
	RotateSnapButton.ZIndex = 1
	RotateSnapButton.Draggable = false
	RotateSnapButton.Parent = SnapFrame
	RotateSnapButton.MouseButton1Click:connect(function()
		ChangeSnap("Rotate", not Snapto.Enabled.Rotate)
	end)
local DistanceTitle = Instance.new("TextLabel")
	DistanceTitle.Name = "Distance Title"
	DistanceTitle.Text = "Distance"
	DistanceTitle.TextColor3 = Color3.new(0.1,0.1,0.1)
	DistanceTitle.TextTransparency = 0
	DistanceTitle.TextXAlignment = 1
	DistanceTitle.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	DistanceTitle.BorderColor3 = Color3.new(0,0,0)
	DistanceTitle.Position = UDim2.new(0.47,0,0,80)
	DistanceTitle.Size = UDim2.new(0,0,0,0)
	DistanceTitle.BackgroundTransparency = 0
	DistanceTitle.ZIndex = 1
	DistanceTitle.Parent = SettingFrame
local DistanceFrame = Instance.new("Frame")
	DistanceFrame.Name = "Settings"
	DistanceFrame.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	DistanceFrame.BorderColor3 = Color3.new(0,0,0)
	DistanceFrame.Position = UDim2.new(0,5,0,90)
	DistanceFrame.Size = UDim2.new(0,90,0,44)
	DistanceFrame.BackgroundTransparency = 0
	DistanceFrame.ZIndex = 1
	DistanceFrame.Draggable = false
	DistanceFrame.Parent = SettingFrame
local MoveDistanceLabel = Instance.new("TextLabel")
	MoveDistanceLabel.Name = "Move Label"
	MoveDistanceLabel.Text = "Move:"
	MoveDistanceLabel.TextColor3 = Color3.new(0.1,0.1,0.1)
	MoveDistanceLabel.TextTransparency = 0
	MoveDistanceLabel.TextXAlignment = 0
	MoveDistanceLabel.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	MoveDistanceLabel.BorderColor3 = Color3.new(0,0,0)
	MoveDistanceLabel.Position = UDim2.new(0,3,0,7)
	MoveDistanceLabel.Size = UDim2.new(0,0,0,0)
	MoveDistanceLabel.BackgroundTransparency = 0
	MoveDistanceLabel.ZIndex = 1
	MoveDistanceLabel.Parent = DistanceFrame
local MoveDistanceTextBox = Instance.new("TextBox")
	MoveDistanceTextBox.Name = "Move TextBox"
	MoveDistanceTextBox.Text = Snapto.Distance.Move
	MoveDistanceTextBox.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	MoveDistanceTextBox.BorderColor3 = Color3.new(0,0,0)
	MoveDistanceTextBox.TextColor3 = Color3.new(0,0,0)
	MoveDistanceTextBox.Position = UDim2.new(0,45,0,2)
	MoveDistanceTextBox.Size = UDim2.new(0,40,0,12)
	MoveDistanceTextBox.BackgroundTransparency = 0
	MoveDistanceTextBox.ZIndex = 1
	MoveDistanceTextBox.Draggable = false
	MoveDistanceTextBox.Parent = DistanceFrame
	MoveDistanceTextBox.Changed:connect(function(Prop)
		if string.lower(Prop) == "text" then
			if MoveDistanceTextBox.Text == "" then
				MoveDistanceTextBox.Text = Snapto.Distance.Move
			end
			
			if IsNumber(MoveDistanceTextBox.Text) then
				MoveDistanceTextBox.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
				Snapto.Distance.Move = tonumber(MoveDistanceTextBox.Text)
			else
				MoveDistanceTextBox.BackgroundColor3 = Color3.new(0.8,0.5,0.5)
				MoveDistanceTextBox.Text = "ERROR"
			end
		end
	end)
local ResizeDistanceLabel = Instance.new("TextLabel")
	ResizeDistanceLabel.Name = "Resize Label"
	ResizeDistanceLabel.Text = "Resize:"
	ResizeDistanceLabel.TextColor3 = Color3.new(0.1,0.1,0.1)
	ResizeDistanceLabel.TextTransparency = 0
	ResizeDistanceLabel.TextXAlignment = 0
	ResizeDistanceLabel.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	ResizeDistanceLabel.BorderColor3 = Color3.new(0,0,0)
	ResizeDistanceLabel.Position = UDim2.new(0,3,0,22)
	ResizeDistanceLabel.Size = UDim2.new(0,0,0,0)
	ResizeDistanceLabel.BackgroundTransparency = 0
	ResizeDistanceLabel.ZIndex = 1
	ResizeDistanceLabel.Parent = DistanceFrame
local ResizeDistanceTextBox = Instance.new("TextBox")
	ResizeDistanceTextBox.Name = "Resize TextBox"
	ResizeDistanceTextBox.Text = Snapto.Distance.Resize
	ResizeDistanceTextBox.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	ResizeDistanceTextBox.BorderColor3 = Color3.new(0,0,0)
	ResizeDistanceTextBox.TextColor3 = Color3.new(0,0,0)
	ResizeDistanceTextBox.Position = UDim2.new(0,45,0,16)
	ResizeDistanceTextBox.Size = UDim2.new(0,40,0,12)
	ResizeDistanceTextBox.BackgroundTransparency = 0
	ResizeDistanceTextBox.ZIndex = 1
	ResizeDistanceTextBox.Draggable = false
	ResizeDistanceTextBox.Parent = DistanceFrame
	ResizeDistanceTextBox.Changed:connect(function(Prop)
		if string.lower(Prop) == "text" then
			if ResizeDistanceTextBox.Text == "" then
				ResizeDistanceTextBox.Text = Snapto.Distance.Resize
			end
			
			if IsNumber(ResizeDistanceTextBox.Text) then
				ResizeDistanceTextBox.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
				Snapto.Distance.Resize = tonumber(ResizeDistanceTextBox.Text)
			else
				ResizeDistanceTextBox.BackgroundColor3 = Color3.new(0.8,0.5,0.5)
				ResizeDistanceTextBox.Text = "ERROR"
			end
		end
	end)
local RotateDistanceLabel = Instance.new("TextLabel")
	RotateDistanceLabel.Name = "Rotate Label"
	RotateDistanceLabel.Text = "Rotate:"
	RotateDistanceLabel.TextColor3 = Color3.new(0.1,0.1,0.1)
	RotateDistanceLabel.TextTransparency = 0
	RotateDistanceLabel.TextXAlignment = 0
	RotateDistanceLabel.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	RotateDistanceLabel.BorderColor3 = Color3.new(0,0,0)
	RotateDistanceLabel.Position = UDim2.new(0,3,0,36)
	RotateDistanceLabel.Size = UDim2.new(0,0,0,0)
	RotateDistanceLabel.BackgroundTransparency = 0
	RotateDistanceLabel.ZIndex = 1
	RotateDistanceLabel.Parent = DistanceFrame
local RotateDistanceTextBox = Instance.new("TextBox")
	RotateDistanceTextBox.Name = "Rotate TextBox"
	RotateDistanceTextBox.Text = Snapto.Distance.Rotate
	RotateDistanceTextBox.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	RotateDistanceTextBox.BorderColor3 = Color3.new(0,0,0)
	RotateDistanceTextBox.TextColor3 = Color3.new(0,0,0)
	RotateDistanceTextBox.Position = UDim2.new(0,45,0,30)
	RotateDistanceTextBox.Size = UDim2.new(0,40,0,12)
	RotateDistanceTextBox.BackgroundTransparency = 0
	RotateDistanceTextBox.ZIndex = 1
	RotateDistanceTextBox.Draggable = false
	RotateDistanceTextBox.Parent = DistanceFrame
	RotateDistanceTextBox.Changed:connect(function(Prop)
		if string.lower(Prop) == "text" then
			if RotateDistanceTextBox.Text == "" then
				RotateDistanceTextBox.Text = Snapto.Distance.Rotate
			end
			
			if IsNumber(RotateDistanceTextBox.Text) then
				RotateDistanceTextBox.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
				Snapto.Distance.Rotate = tonumber(RotateDistanceTextBox.Text)
			else
				RotateDistanceTextBox.BackgroundColor3 = Color3.new(0.8,0.5,0.5)
				RotateDistanceTextBox.Text = "ERROR"
			end
		end
	end)
local OpenSettings = Instance.new("TextButton")
	OpenSettings.Name = "OpenSettingsButton"
	OpenSettings.Text = ">>"
	OpenSettings.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
	OpenSettings.BorderColor3 = Color3.new(0,0,0)
	OpenSettings.TextColor3 = Color3.new(0,0,0)
	OpenSettings.Position = UDim2.new(0,75,0,150)
	OpenSettings.Size = UDim2.new(0,20,0,15)
	OpenSettings.BackgroundTransparency = 0
	OpenSettings.ZIndex = 2
	OpenSettings.Draggable = false
	OpenSettings.Parent = Frame
	OpenSettings.MouseButton1Click:connect(function()
		Settings.SettingPanelOpen = not Settings.SettingPanelOpen
		if Settings.SettingPanelOpen then
			SettingFrame:TweenPosition(UDim2.new(0,100,0,0), "Out", "Bounce", 1, true, function()
				SettingFrame.Active = true
			end)
			OpenSettings:TweenPosition(UDim2.new(0,105,0,150), "Out", "Bounce", 1, true)
			OpenSettings.Text = "<<"
		else
			SettingFrame.Active = false
			SettingFrame:TweenPosition(UDim2.new(0,0,0,0), "Out", "Bounce", 1, true)
			OpenSettings:TweenPosition(UDim2.new(0,75,0,150), "Out", "Bounce", 1, true)
			OpenSettings.Text = ">>"
		end
	end)
local SelectionBox = Instance.new("SelectionBox")
	SelectionBox.Name = "Building Tool Selection Box"
local Handles = Instance.new("Handles")
	Handles.Color = BrickColor.new("Bright blue")
	Handles.Style = "Movement"
	Handles.MouseDrag:connect(function(Face, Distance)
		Dragging = true
		if Selection == nil then
			return
		end
		
		if CurrentMode == "Move" then
			if Snapto.Enabled.Move then
				Distance = Round(Distance,Snapto.Distance.Move)
			end
			
			if Face == Enum.NormalId.Top then
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(0,Distance,0))
			elseif Face == Enum.NormalId.Bottom then
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(0,-Distance,0))
			elseif Face == Enum.NormalId.Right then
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(Distance,0,0))
			elseif Face == Enum.NormalId.Left then
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(-Distance,0,0))
			elseif Face == Enum.NormalId.Front then
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(0,0,-Distance))
			elseif Face == Enum.NormalId.Back then
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(0,0,Distance))
			end
		elseif CurrentMode == "Resize" then
			if Snapto.Enabled.Resize then
				Distance = Round(Distance,Snapto.Distance.Resize)
			end
			
			if Face == Enum.NormalId.Top then
				Selection.Size = Original.Size + Vector3.new(0,Distance,0)
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(0,Distance/2,0))
			elseif Face == Enum.NormalId.Bottom then
				Selection.Size = Original.Size + Vector3.new(0,Distance,0)
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(0,-Distance/2,0))
			elseif Face == Enum.NormalId.Right then
				Selection.Size = Original.Size + Vector3.new(Distance,0,0)
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(Distance/2,0,0))
			elseif Face == Enum.NormalId.Left then
				Selection.Size = Original.Size + Vector3.new(Distance,0,0)
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(-Distance/2,0,0))
			elseif Face == Enum.NormalId.Front then
				Selection.Size = Original.Size + Vector3.new(0,0,Distance)
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(0,0,-Distance/2))
			elseif Face == Enum.NormalId.Back then
				Selection.Size = Original.Size + Vector3.new(0,0,Distance)
				Selection.CFrame = Original.CFrame:toWorldSpace(CFrame.new(0,0,Distance/2))
			end
		end
	end)
local ArcHandles = Instance.new("ArcHandles")
	ArcHandles.Color = BrickColor.new("Bright green")
	ArcHandles.MouseDrag:connect(function(Face, Distance)
		Dragging = true
		if Selection == nil then
			return
		end
		
		Distance = Distance * 45
		if Snapto.Enabled.Rotate then
			Distance = Round(Distance,Snapto.Distance.Rotate)
		end
			
		if Face == Enum.Axis.X then
			Selection.CFrame = Original.CFrame * CFrame.Angles(math.rad(Distance),0,0)
		elseif Face == Enum.Axis.Y then
			Selection.CFrame = Original.CFrame * CFrame.Angles(0,math.rad(Distance),0)
		elseif Face == Enum.Axis.Z then
			Selection.CFrame = Original.CFrame * CFrame.Angles(0,0,math.rad(Distance))
		end
	end)

function IsNumber(str)
	if string.match(str, "%d+%.?%d*") == str then
		return true
	end
	return false
end

function Round(Number, Size)
	local TestableNum = math.abs(Number)
	
	local Sign = 1
	if Number < 0 then
		Sign = -1
	end
	
	if Size == nil then
		Size = 1
	end
	
	while TestableNum > Size do
		TestableNum = TestableNum - Size
	end

	if TestableNum < Size/2 then
		return Number - (TestableNum * Sign)
	elseif TestableNum == Size then
		return Number
	elseif TestableNum > Size/2 then
		return Number + ((Size - TestableNum) * Sign)
	end
end

function ChangeSnap(Mode, Arg)
	if type(Arg) == "boolean" then
		Snapto.Enabled[Mode] = Arg
	elseif type(Arg) == "number" then
		Snapto.Distance[Mode] = Arg
	end
	
	MoveSnapButton.Text = "Move: " .. string.upper(tostring(Snapto.Enabled.Move))
	ResizeSnapButton.Text = "Resize: " .. string.upper(tostring(Snapto.Enabled.Resize))
	RotateSnapButton.Text = "Rotate: " .. string.upper(tostring(Snapto.Enabled.Rotate))
end

function ChangeMode(Mode)
	if Mode == "Move" then
		Move.BackgroundColor3 = Color3.new(0.5,0.5,0.5)
		Resize.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		Rotate.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		Handles.Color = BrickColor.new("Bright blue")
		if CurrentMode == "Rotate" then
			Handles.Adornee = ArcHandles.Adornee
			ArcHandles.Adornee = nil
		end
	elseif Mode == "Resize" then
		Move.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		Resize.BackgroundColor3 = Color3.new(0.5,0.5,0.5)
		Rotate.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		Handles.Color = BrickColor.new("Deep orange")
		if CurrentMode == "Rotate" then
			Handles.Adornee = ArcHandles.Adornee
			ArcHandles.Adornee = nil
		end
	elseif Mode == "Rotate" then
		Move.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		Resize.BackgroundColor3 = Color3.new(0.7,0.7,0.7)
		Rotate.BackgroundColor3 = Color3.new(0.5,0.5,0.5)
		if CurrentMode ~= "Rotate" then
			ArcHandles.Adornee = Handles.Adornee
			Handles.Adornee = nil
		end
	end
	
	CurrentMode = Mode
end

function MouseButton1Down(m)
	isMouseButton1Down = true
end

function MouseButton1Up(m)
	if not Dragging then
		Selection = m.Target
		
		if Selection ~= nil then
			Original = Selection:Clone()
		end
		
		SelectionBox.Adornee = Selection
		if CurrentMode == "Rotate" then
			ArcHandles.Adornee = Selection
			Handles.Adornee = nil
		else
			Handles.Adornee = Selection
			ArcHandles.Adornee = nil
		end
	else
		Original = Selection:Clone()
	end
	isMouseButton1Down = false
	Dragging = false
end

function KeyUp(k)
	k = string.byte(k)
	if string.byte("c") == k then
		Clipboard = Selection:Clone()
	elseif string.byte("x") == k then
		if Selection ~= nil then
			Clipboard = Selection:Clone()
			Selection:Remove()
			SelectionBox.Adornee = nil
			Handles.Adornee = nil
			ArcHandles.Adornee = nil
			Original = nil
			Selection = nil
		end
	elseif string.byte("v") == k then
		if Clipboard ~= nil then
			local P = Clipboard:Clone()
			P.Parent = Workspace
			Selection = P
			SelectionBox.Adornee = Selection
			if CurrentMode == "Rotate" then
				ArcHandles.Adornee = Selection
				Handles.Adornee = nil
			else
				Handles.Adornee = Selection
				ArcHandles.Adornee = nil
			end
			Original = Selection:Clone()
		end
	end
end

function Selected(m)
	Gui.Parent = Player:FindFirstChild("PlayerGui")
	SelectionBox.Parent = Player:FindFirstChild("PlayerGui")
	Handles.Parent = Player:FindFirstChild("PlayerGui")
	ArcHandles.Parent = Player:FindFirstChild("PlayerGui")
	m.Button1Down:connect(function() MouseButton1Down(m) end)
	m.KeyUp:connect(KeyUp)
	m.Button1Up:connect(function() MouseButton1Up(m) end)
end

function Deselected()
	Selection = nil
	Gui.Parent = nil
	Original = nil
	SelectionBox.Parent = nil
	SelectionBox.Adornee = nil
	ArcHandles.Parent = nil
	ArcHandles.Adornee = nil
	Handles.Parent = nil
	Handles.Adornee = nil
end
script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected)