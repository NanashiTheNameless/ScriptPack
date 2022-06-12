if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("LocalScript") then
game.Players.LocalPlayer.PlayerScripts.LocalScript.Disabled = true
game.Players.LocalPlayer.PlayerScripts.LocalScript:Destroy()
wait()
game.Players.LocalPlayer.PlayerScripts.LocalScript.Disabled = true
game.Players.LocalPlayer.PlayerScripts.LocalScript:Destroy()
end
game.Players.LocalPlayer.PlayerScripts.ChildAdded:connect(function(kek)
    if kek.Name == "LocalScript" then
        kek.Disabled = true
        kek:Destroy()
    end
end)
local mt = getrawmetatable(game)
if fullaccess then
fullaccess(mt)
elseif setreadonly then
	setreadonly(mt,false)
	end
local foh = mt.__index
local topkey = nil
local good = game.Lighting.Remote.ChangeValue
mt.__index = function(r, m)
    if r == good and m == "FireServer" then
        return function(self, kekekekek, ...)
            if not topkey then
                topkey = kekekekek
            end
            foh(r, m)(self, kekekekek, ...)
        end
    end
    return foh(r, m)
end
while wait() do
	if topkey ~= nil then
		print(topkey)
		kek = topkey
		if game.Lighting.Remote:FindFirstChild("AddDamageSelf") then
			game.Lighting.Remote.Destruct:FireServer(topkey, game.Lighting.Remote.AddDamageSelf)
		end
CreateGui = function()
	local NewGuiPart1 = Instance.new("ScreenGui")
	NewGuiPart1.Name = "SpawnGui"
	NewGuiPart1.Parent = game.CoreGui
	local NewGuiPart2 = Instance.new("Frame")
	NewGuiPart2.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart2.BackgroundTransparency = 0.40000000596046
	NewGuiPart2.Name = "PlayerInfo"
	NewGuiPart2.Position = UDim2.new(0.5, -100, 0, 60)
	NewGuiPart2.Size = UDim2.new(0, 200, 0, 17)
	NewGuiPart2.ZIndex = 8
	NewGuiPart2.Parent = NewGuiPart1

	local NewGuiPart3 = Instance.new("TextLabel")
	NewGuiPart3.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart3.BackgroundTransparency = 1
	NewGuiPart3.BorderSizePixel = 0
	NewGuiPart3.Name = "pName"
	NewGuiPart3.Position = UDim2.new(0, 0, -1, -3)
	NewGuiPart3.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart3.ZIndex = 8
	NewGuiPart3.Font = Enum.Font.ArialBold
	NewGuiPart3.FontSize = Enum.FontSize.Size24
	NewGuiPart3.Text = "Player"
	NewGuiPart3.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart3.TextStrokeTransparency = 0.69999998807907
	NewGuiPart3.Parent = NewGuiPart2

	local NewGuiPart4 = Instance.new("TextLabel")
	NewGuiPart4.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart4.BackgroundTransparency = 1
	NewGuiPart4.BorderSizePixel = 0
	NewGuiPart4.Name = "Health"
	NewGuiPart4.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart4.ZIndex = 10
	NewGuiPart4.Font = Enum.Font.ArialBold
	NewGuiPart4.FontSize = Enum.FontSize.Size18
	NewGuiPart4.Text = "100"
	NewGuiPart4.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart4.Parent = NewGuiPart2

	local NewGuiPart5 = Instance.new("Frame")
	NewGuiPart5.BackgroundColor3 = Color3.new(0, 0.74902, 0)
	NewGuiPart5.BackgroundTransparency = 0.5
	NewGuiPart5.BorderSizePixel = 0
	NewGuiPart5.Name = "Bar"
	NewGuiPart5.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart5.ZIndex = 9
	NewGuiPart5.Parent = NewGuiPart2

	local NewGuiPart6 = Instance.new("TextButton")
	NewGuiPart6.Active = true
	NewGuiPart6.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart6.BackgroundTransparency = 0.40000000596046
	NewGuiPart6.Name = "Previous"
	NewGuiPart6.Position = UDim2.new(0, -21, 0, 0)
	NewGuiPart6.Selectable = true
	NewGuiPart6.Size = UDim2.new(0, 17, 1, 0)
	NewGuiPart6.Style = Enum.ButtonStyle.Custom
	NewGuiPart6.ZIndex = 9
	NewGuiPart6.Font = Enum.Font.ArialBold
	NewGuiPart6.FontSize = Enum.FontSize.Size14
	NewGuiPart6.Text = "<"
	NewGuiPart6.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart6.Parent = NewGuiPart2

	local NewGuiPart7 = Instance.new("TextButton")
	NewGuiPart7.Active = true
	NewGuiPart7.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart7.BackgroundTransparency = 0.40000000596046
	NewGuiPart7.Name = "Reset"
	NewGuiPart7.Position = UDim2.new(1, -68, 1, 4)
	NewGuiPart7.Selectable = true
	NewGuiPart7.Size = UDim2.new(0, 68, 0, 11)
	NewGuiPart7.Style = Enum.ButtonStyle.Custom
	NewGuiPart7.ZIndex = 9
	NewGuiPart7.Font = Enum.Font.ArialBold
	NewGuiPart7.FontSize = Enum.FontSize.Size14
	NewGuiPart7.Text = "Reset View"
	NewGuiPart7.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart7.Parent = NewGuiPart2

	local NewGuiPart8 = Instance.new("TextButton")
	NewGuiPart8.Active = true
	NewGuiPart8.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart8.BackgroundTransparency = 0.40000000596046
	NewGuiPart8.Name = "Next"
	NewGuiPart8.Position = UDim2.new(1, 4, 0, 0)
	NewGuiPart8.Selectable = true
	NewGuiPart8.Size = UDim2.new(0, 17, 1, 0)
	NewGuiPart8.Style = Enum.ButtonStyle.Custom
	NewGuiPart8.ZIndex = 9
	NewGuiPart8.Font = Enum.Font.ArialBold
	NewGuiPart8.FontSize = Enum.FontSize.Size14
	NewGuiPart8.Text = ">"
	NewGuiPart8.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart8.Parent = NewGuiPart2

	local NewGuiPart9 = Instance.new("Frame")
	NewGuiPart9.Active = true
	NewGuiPart9.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart9.BackgroundTransparency = 0.40000000596046
	NewGuiPart9.Name = "BigFrame"
	NewGuiPart9.Position = UDim2.new(0.5, -250, 0.5, -175)
	NewGuiPart9.Size = UDim2.new(0, 500, 0, 350)
	NewGuiPart9.ClipsDescendants = true
	NewGuiPart9.Draggable = true
	NewGuiPart9.Parent = NewGuiPart1

	local NewGuiPart10 = Instance.new("Frame")
	NewGuiPart10.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart10.BackgroundTransparency = 1
	NewGuiPart10.Name = "Local"
	NewGuiPart10.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart10.Visible = false
	NewGuiPart10.ZIndex = 2
	NewGuiPart10.ClipsDescendants = true
	NewGuiPart10.Parent = NewGuiPart9

	local NewGuiPart11 = Instance.new("Frame")
	NewGuiPart11.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart11.BackgroundTransparency = 1
	NewGuiPart11.Position = UDim2.new(0.00999999978, 0, 0, 28)
	NewGuiPart11.Size = UDim2.new(0.980000019, 0, 0, 17)
	NewGuiPart11.ZIndex = 8
	NewGuiPart11.Parent = NewGuiPart10

	local NewGuiPart12 = Instance.new("TextLabel")
	NewGuiPart12.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart12.BackgroundTransparency = 1
	NewGuiPart12.BorderSizePixel = 0
	NewGuiPart12.Name = "Item"
	NewGuiPart12.Size = UDim2.new(0, 40, 0, 17)
	NewGuiPart12.ZIndex = 8
	NewGuiPart12.Font = Enum.Font.ArialBold
	NewGuiPart12.FontSize = Enum.FontSize.Size14
	NewGuiPart12.Text = "Item: "
	NewGuiPart12.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart12.Parent = NewGuiPart11

	local NewGuiPart13 = Instance.new("TextBox")
	NewGuiPart13.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart13.BackgroundTransparency = 0.40000000596046
	NewGuiPart13.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart13.BorderSizePixel = 0
	NewGuiPart13.Name = "Box"
	NewGuiPart13.Position = UDim2.new(1, 0, 0, 2)
	NewGuiPart13.Size = UDim2.new(3.5, 2, 1, -4)
	NewGuiPart13.ZIndex = 9
	NewGuiPart13.Font = Enum.Font.ArialBold
	NewGuiPart13.FontSize = Enum.FontSize.Size14
	NewGuiPart13.Text = ""
	NewGuiPart13.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart13.Parent = NewGuiPart12

	local NewGuiPart14 = Instance.new("TextLabel")
	NewGuiPart14.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart14.BackgroundTransparency = 1
	NewGuiPart14.BorderSizePixel = 0
	NewGuiPart14.Name = "Count"
	NewGuiPart14.Position = UDim2.new(0, 171, 0, 0)
	NewGuiPart14.Size = UDim2.new(0, 40, 0, 17)
	NewGuiPart14.ZIndex = 8
	NewGuiPart14.Font = Enum.Font.ArialBold
	NewGuiPart14.FontSize = Enum.FontSize.Size14
	NewGuiPart14.Text = "x"
	NewGuiPart14.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart14.Parent = NewGuiPart11

	local NewGuiPart15 = Instance.new("TextBox")
	NewGuiPart15.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart15.BackgroundTransparency = 0.40000000596046
	NewGuiPart15.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart15.BorderSizePixel = 0
	NewGuiPart15.Name = "Box"
	NewGuiPart15.Position = UDim2.new(0, 29, 0, 2)
	NewGuiPart15.Size = UDim2.new(0, 15, 1, -4)
	NewGuiPart15.ZIndex = 9
	NewGuiPart15.Font = Enum.Font.ArialBold
	NewGuiPart15.FontSize = Enum.FontSize.Size14
	NewGuiPart15.Text = ""
	NewGuiPart15.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart15.Parent = NewGuiPart14

	local NewGuiPart16 = Instance.new("TextButton")
	NewGuiPart16.Active = true
	NewGuiPart16.BackgroundColor3 = Color3.new(0, 0.333333, 0)
	NewGuiPart16.BackgroundTransparency = 0.60000002384186
	NewGuiPart16.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart16.BorderSizePixel = 0
	NewGuiPart16.Name = "Spawn"
	NewGuiPart16.Position = UDim2.new(0, 218, 0, 2)
	NewGuiPart16.Selectable = true
	NewGuiPart16.Size = UDim2.new(0, 50, 1, -4)
	NewGuiPart16.Style = Enum.ButtonStyle.Custom
	NewGuiPart16.ZIndex = 9
	NewGuiPart16.Font = Enum.Font.ArialBold
	NewGuiPart16.FontSize = Enum.FontSize.Size12
	NewGuiPart16.Text = "SPAWN"
	NewGuiPart16.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart16.Parent = NewGuiPart11

	local NewGuiPart17 = Instance.new("ScrollingFrame")
	NewGuiPart17.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart17.BackgroundTransparency = 0.40000000596046
	NewGuiPart17.Name = "ItemList"
	NewGuiPart17.Position = UDim2.new(0, 0, 1, 25)
	NewGuiPart17.Selectable = true
	NewGuiPart17.Size = UDim2.new(0, 271, 0, 100)
	NewGuiPart17.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart17.ScrollBarThickness = 4
	NewGuiPart17.ClipsDescendants = true
	NewGuiPart17.Parent = NewGuiPart11

	local NewGuiPart18 = Instance.new("TextButton")
	NewGuiPart18.Active = true
	NewGuiPart18.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart18.BackgroundTransparency = 0.60000002384186
	NewGuiPart18.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart18.BorderSizePixel = 0
	NewGuiPart18.Name = "Template"
	NewGuiPart18.Position = UDim2.new(0, 2, 0, 2)
	NewGuiPart18.Selectable = true
	NewGuiPart18.Size = UDim2.new(1, -4, 0, 13)
	NewGuiPart18.Style = Enum.ButtonStyle.Custom
	NewGuiPart18.Visible = false
	NewGuiPart18.ZIndex = 9
	NewGuiPart18.Font = Enum.Font.ArialBold
	NewGuiPart18.FontSize = Enum.FontSize.Size12
	NewGuiPart18.Text = "MilitaryPackBlack"
	NewGuiPart18.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart18.Parent = NewGuiPart17

	local NewGuiPart19 = Instance.new("TextBox")
	NewGuiPart19.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart19.BackgroundTransparency = 0.40000000596046
	NewGuiPart19.Name = "SearchBox"
	NewGuiPart19.Position = UDim2.new(0, 0, 1, 4)
	NewGuiPart19.Size = UDim2.new(0, 271, 0, 17)
	NewGuiPart19.ZIndex = 9
	NewGuiPart19.Font = Enum.Font.ArialBold
	NewGuiPart19.FontSize = Enum.FontSize.Size14
	NewGuiPart19.Text = "Click here to search"
	NewGuiPart19.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart19.Parent = NewGuiPart11

	local NewGuiPart20 = Instance.new("Frame")
	NewGuiPart20.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart20.BackgroundTransparency = 0.40000000596046
	NewGuiPart20.Size = UDim2.new(0, 271, 0, 17)
	NewGuiPart20.ZIndex = 8
	NewGuiPart20.Parent = NewGuiPart11

	local NewGuiPart21 = Instance.new("TextLabel")
	NewGuiPart21.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart21.BackgroundTransparency = 0.40000000596046
	NewGuiPart21.Name = "Title"
	NewGuiPart21.Position = UDim2.new(0, 274, 0, 0)
	NewGuiPart21.Size = UDim2.new(1, -274, 0, 17)
	NewGuiPart21.ZIndex = 8
	NewGuiPart21.Font = Enum.Font.ArialBold
	NewGuiPart21.FontSize = Enum.FontSize.Size14
	NewGuiPart21.Text = "LoadOuts"
	NewGuiPart21.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart21.Parent = NewGuiPart11

	local NewGuiPart22 = Instance.new("ScrollingFrame")
	NewGuiPart22.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart22.BackgroundTransparency = 0.40000000596046
	NewGuiPart22.Name = "LoadOutList"
	NewGuiPart22.Position = UDim2.new(0, 274, 1, 4)
	NewGuiPart22.Selectable = true
	NewGuiPart22.Size = UDim2.new(1, -274, 0, 121)
	NewGuiPart22.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart22.ScrollBarThickness = 4
	NewGuiPart22.ClipsDescendants = true
	NewGuiPart22.Parent = NewGuiPart11

	local NewGuiPart23 = Instance.new("Frame")
	NewGuiPart23.BackgroundColor3 = Color3.new(0, 0, 0)
	NewGuiPart23.Name = "Line"
	NewGuiPart23.Position = UDim2.new(0.00999999978, 0, 0, 174)
	NewGuiPart23.Size = UDim2.new(0.980000019, 0, 0, 1)
	NewGuiPart23.ClipsDescendants = true
	NewGuiPart23.Parent = NewGuiPart10

	local NewGuiPart24 = Instance.new("Frame")
	NewGuiPart24.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart24.BackgroundTransparency = 1
	NewGuiPart24.Name = "Frame2"
	NewGuiPart24.Position = UDim2.new(0.00999999978, 0, 0, 179)
	NewGuiPart24.Size = UDim2.new(0.980000019, 0, 0, 17)
	NewGuiPart24.ZIndex = 8
	NewGuiPart24.Parent = NewGuiPart10

	local NewGuiPart25 = Instance.new("TextLabel")
	NewGuiPart25.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart25.BackgroundTransparency = 0.40000000596046
	NewGuiPart25.Name = "Hunger"
	NewGuiPart25.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart25.ZIndex = 8
	NewGuiPart25.Font = Enum.Font.ArialBold
	NewGuiPart25.FontSize = Enum.FontSize.Size14
	NewGuiPart25.Text = " Infinite Hunger"
	NewGuiPart25.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart25.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart25.Parent = NewGuiPart24

	local NewGuiPart26 = Instance.new("TextButton")
	NewGuiPart26.Active = true
	NewGuiPart26.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart26.BackgroundTransparency = 0.60000002384186
	NewGuiPart26.BorderSizePixel = 0
	NewGuiPart26.Name = "Btn"
	NewGuiPart26.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart26.Selectable = true
	NewGuiPart26.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart26.Style = Enum.ButtonStyle.Custom
	NewGuiPart26.ZIndex = 10
	NewGuiPart26.Font = Enum.Font.ArialBold
	NewGuiPart26.FontSize = Enum.FontSize.Size12
	NewGuiPart26.Text = "OFF"
	NewGuiPart26.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart26.Parent = NewGuiPart25

	local NewGuiPart27 = Instance.new("TextLabel")
	NewGuiPart27.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart27.BackgroundTransparency = 0.40000000596046
	NewGuiPart27.Name = "Thirst"
	NewGuiPart27.Position = UDim2.new(0, 0, 1, 4)
	NewGuiPart27.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart27.ZIndex = 8
	NewGuiPart27.Font = Enum.Font.ArialBold
	NewGuiPart27.FontSize = Enum.FontSize.Size14
	NewGuiPart27.Text = " Infinite Thirst"
	NewGuiPart27.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart27.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart27.Parent = NewGuiPart24

	local NewGuiPart28 = Instance.new("TextButton")
	NewGuiPart28.Active = true
	NewGuiPart28.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart28.BackgroundTransparency = 0.60000002384186
	NewGuiPart28.BorderSizePixel = 0
	NewGuiPart28.Name = "Btn"
	NewGuiPart28.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart28.Selectable = true
	NewGuiPart28.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart28.Style = Enum.ButtonStyle.Custom
	NewGuiPart28.ZIndex = 10
	NewGuiPart28.Font = Enum.Font.ArialBold
	NewGuiPart28.FontSize = Enum.FontSize.Size12
	NewGuiPart28.Text = "OFF"
	NewGuiPart28.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart28.Parent = NewGuiPart27

	local NewGuiPart29 = Instance.new("TextLabel")
	NewGuiPart29.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart29.BackgroundTransparency = 0.40000000596046
	NewGuiPart29.Name = "Godmode"
	NewGuiPart29.Position = UDim2.new(0, 0, 1, 25)
	NewGuiPart29.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart29.ZIndex = 8
	NewGuiPart29.Font = Enum.Font.ArialBold
	NewGuiPart29.FontSize = Enum.FontSize.Size14
	NewGuiPart29.Text = " LocalPlayer God"
	NewGuiPart29.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart29.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart29.Parent = NewGuiPart24

	local NewGuiPart30 = Instance.new("TextButton")
	NewGuiPart30.Active = true
	NewGuiPart30.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart30.BackgroundTransparency = 0.60000002384186
	NewGuiPart30.BorderSizePixel = 0
	NewGuiPart30.Name = "Btn"
	NewGuiPart30.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart30.Selectable = true
	NewGuiPart30.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart30.Style = Enum.ButtonStyle.Custom
	NewGuiPart30.ZIndex = 10
	NewGuiPart30.Font = Enum.Font.ArialBold
	NewGuiPart30.FontSize = Enum.FontSize.Size12
	NewGuiPart30.Text = "OFF"
	NewGuiPart30.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart30.Parent = NewGuiPart29

	local NewGuiPart31 = Instance.new("TextLabel")
	NewGuiPart31.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart31.BackgroundTransparency = 0.40000000596046
	NewGuiPart31.Name = "Stamina"
	NewGuiPart31.Position = UDim2.new(0.300000012, 4, 0, 0)
	NewGuiPart31.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart31.ZIndex = 8
	NewGuiPart31.Font = Enum.Font.ArialBold
	NewGuiPart31.FontSize = Enum.FontSize.Size14
	NewGuiPart31.Text = " Infinite Stamina"
	NewGuiPart31.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart31.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart31.Parent = NewGuiPart24

	local NewGuiPart32 = Instance.new("TextButton")
	NewGuiPart32.Active = true
	NewGuiPart32.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart32.BackgroundTransparency = 0.60000002384186
	NewGuiPart32.BorderSizePixel = 0
	NewGuiPart32.Name = "Btn"
	NewGuiPart32.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart32.Selectable = true
	NewGuiPart32.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart32.Style = Enum.ButtonStyle.Custom
	NewGuiPart32.ZIndex = 10
	NewGuiPart32.Font = Enum.Font.ArialBold
	NewGuiPart32.FontSize = Enum.FontSize.Size12
	NewGuiPart32.Text = "[WIP]"
	NewGuiPart32.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart32.Parent = NewGuiPart31

	local NewGuiPart33 = Instance.new("TextLabel")
	NewGuiPart33.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart33.BackgroundTransparency = 0.40000000596046
	NewGuiPart33.Name = "Reload"
	NewGuiPart33.Position = UDim2.new(0.300000012, 4, 1, 4)
	NewGuiPart33.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart33.ZIndex = 8
	NewGuiPart33.Font = Enum.Font.ArialBold
	NewGuiPart33.FontSize = Enum.FontSize.Size14
	NewGuiPart33.Text = " Instant Reload"
	NewGuiPart33.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart33.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart33.Parent = NewGuiPart24

	local NewGuiPart34 = Instance.new("TextButton")
	NewGuiPart34.Active = true
	NewGuiPart34.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart34.BackgroundTransparency = 0.60000002384186
	NewGuiPart34.BorderSizePixel = 0
	NewGuiPart34.Name = "Btn"
	NewGuiPart34.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart34.Selectable = true
	NewGuiPart34.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart34.Style = Enum.ButtonStyle.Custom
	NewGuiPart34.ZIndex = 10
	NewGuiPart34.Font = Enum.Font.ArialBold
	NewGuiPart34.FontSize = Enum.FontSize.Size12
	NewGuiPart34.Text = "OFF"
	NewGuiPart34.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart34.Parent = NewGuiPart33

	local NewGuiPart35 = Instance.new("Frame")
	NewGuiPart35.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart35.BackgroundTransparency = 1
	NewGuiPart35.Name = "Buttons"
	NewGuiPart35.Size = UDim2.new(1, 0, 0, 23)
	NewGuiPart35.ClipsDescendants = true
	NewGuiPart35.Parent = NewGuiPart9

	local NewGuiPart36 = Instance.new("TextButton")
	NewGuiPart36.Active = true
	NewGuiPart36.BackgroundColor3 = Color3.new(0, 0.333333, 0)
	NewGuiPart36.BackgroundTransparency = 0.40000000596046
	NewGuiPart36.BorderColor3 = Color3.new(0, 0.254902, 0)
	NewGuiPart36.Name = "Local"
	NewGuiPart36.Position = UDim2.new(0.00999999978, 0, 0, 5)
	NewGuiPart36.Selectable = true
	NewGuiPart36.Size = UDim2.new(0, 100, 0, 13)
	NewGuiPart36.Style = Enum.ButtonStyle.Custom
	NewGuiPart36.ZIndex = 10
	NewGuiPart36.Font = Enum.Font.ArialBold
	NewGuiPart36.FontSize = Enum.FontSize.Size14
	NewGuiPart36.Text = "LOCAL"
	NewGuiPart36.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart36.Parent = NewGuiPart35

	local NewGuiPart37 = Instance.new("TextButton")
	NewGuiPart37.Active = true
	NewGuiPart37.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart37.BackgroundTransparency = 0.40000000596046
	NewGuiPart37.BorderColor3 = Color3.new(0.356863, 0.0117647, 0.0196078)
	NewGuiPart37.Name = "Server"
	NewGuiPart37.Position = UDim2.new(0.00999999978, 106, 0, 5)
	NewGuiPart37.Selectable = true
	NewGuiPart37.Size = UDim2.new(0, 100, 0, 13)
	NewGuiPart37.Style = Enum.ButtonStyle.Custom
	NewGuiPart37.ZIndex = 10
	NewGuiPart37.Font = Enum.Font.ArialBold
	NewGuiPart37.FontSize = Enum.FontSize.Size14
	NewGuiPart37.Text = "SERVER"
	NewGuiPart37.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart37.Parent = NewGuiPart35

	local NewGuiPart38 = Instance.new("Frame")
	NewGuiPart38.BackgroundColor3 = Color3.new(0, 0, 0)
	NewGuiPart38.Name = "Line"
	NewGuiPart38.Position = UDim2.new(0.00999999978, 0, 0, 23)
	NewGuiPart38.Size = UDim2.new(0.980000019, 0, 0, 1)
	NewGuiPart38.ClipsDescendants = true
	NewGuiPart38.Parent = NewGuiPart9

	local NewGuiPart39 = Instance.new("Frame")
	NewGuiPart39.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart39.BackgroundTransparency = 1
	NewGuiPart39.Name = "Server"
	NewGuiPart39.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart39.ZIndex = 2
	NewGuiPart39.ClipsDescendants = true
	NewGuiPart39.Parent = NewGuiPart9

	local NewGuiPart40 = Instance.new("Frame")
	NewGuiPart40.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart40.BackgroundTransparency = 1
	NewGuiPart40.Name = "Buttons"
	NewGuiPart40.Position = UDim2.new(0, 0, 0, 28)
	NewGuiPart40.Size = UDim2.new(1, 0, 0, 13)
	NewGuiPart40.ClipsDescendants = true
	NewGuiPart40.Parent = NewGuiPart39

	local NewGuiPart41 = Instance.new("TextButton")
	NewGuiPart41.Active = true
	NewGuiPart41.BackgroundColor3 = Color3.new(0, 0.333333, 0)
	NewGuiPart41.BackgroundTransparency = 0.40000000596046
	NewGuiPart41.BorderColor3 = Color3.new(0, 0.254902, 0)
	NewGuiPart41.Name = "Player"
	NewGuiPart41.Position = UDim2.new(0.00999999978, 0, 0, 0)
	NewGuiPart41.Selectable = true
	NewGuiPart41.Size = UDim2.new(0, 100, 0, 13)
	NewGuiPart41.Style = Enum.ButtonStyle.Custom
	NewGuiPart41.ZIndex = 10
	NewGuiPart41.Font = Enum.Font.ArialBold
	NewGuiPart41.FontSize = Enum.FontSize.Size14
	NewGuiPart41.Text = "PLAYER"
	NewGuiPart41.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart41.Parent = NewGuiPart40

	local NewGuiPart42 = Instance.new("TextButton")
	NewGuiPart42.Active = true
	NewGuiPart42.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart42.BackgroundTransparency = 0.40000000596046
	NewGuiPart42.BorderColor3 = Color3.new(0.356863, 0.0117647, 0.0196078)
	NewGuiPart42.Name = "Vehicle"
	NewGuiPart42.Position = UDim2.new(0.00999999978, 106, 0, 0)
	NewGuiPart42.Selectable = true
	NewGuiPart42.Size = UDim2.new(0, 100, 0, 13)
	NewGuiPart42.Style = Enum.ButtonStyle.Custom
	NewGuiPart42.ZIndex = 10
	NewGuiPart42.Font = Enum.Font.ArialBold
	NewGuiPart42.FontSize = Enum.FontSize.Size14
	NewGuiPart42.Text = "VEHICLE"
	NewGuiPart42.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart42.Parent = NewGuiPart40

	local NewGuiPart43 = Instance.new("TextButton")
	NewGuiPart43.Active = true
	NewGuiPart43.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart43.BackgroundTransparency = 0.40000000596046
	NewGuiPart43.BorderColor3 = Color3.new(0.356863, 0.0117647, 0.0196078)
	NewGuiPart43.Name = "ItemSpawn"
	NewGuiPart43.Position = UDim2.new(0.00999999978, 211, 0, 0)
	NewGuiPart43.Selectable = true
	NewGuiPart43.Size = UDim2.new(0, 100, 0, 13)
	NewGuiPart43.Style = Enum.ButtonStyle.Custom
	NewGuiPart43.ZIndex = 10
	NewGuiPart43.Font = Enum.Font.ArialBold
	NewGuiPart43.FontSize = Enum.FontSize.Size14
	NewGuiPart43.Text = "SPAWNING"
	NewGuiPart43.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart43.Parent = NewGuiPart40

	local NewGuiPart44 = Instance.new("TextButton")
	NewGuiPart44.Active = true
	NewGuiPart44.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart44.BackgroundTransparency = 0.40000000596046
	NewGuiPart44.BorderColor3 = Color3.new(0.356863, 0.0117647, 0.0196078)
	NewGuiPart44.Name = "Misc"
	NewGuiPart44.Position = UDim2.new(0.00999999978, 316, 0, 0)
	NewGuiPart44.Selectable = true
	NewGuiPart44.Size = UDim2.new(0, 100, 0, 13)
	NewGuiPart44.Style = Enum.ButtonStyle.Custom
	NewGuiPart44.ZIndex = 10
	NewGuiPart44.Font = Enum.Font.ArialBold
	NewGuiPart44.FontSize = Enum.FontSize.Size14
	NewGuiPart44.Text = "MISC"
	NewGuiPart44.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart44.Parent = NewGuiPart40

	local NewGuiPart45 = Instance.new("Frame")
	NewGuiPart45.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart45.BackgroundTransparency = 1
	NewGuiPart45.Name = "Vehicle"
	NewGuiPart45.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart45.Visible = false
	NewGuiPart45.ZIndex = 2
	NewGuiPart45.ClipsDescendants = true
	NewGuiPart45.Parent = NewGuiPart39

	local NewGuiPart46 = Instance.new("TextButton")
	NewGuiPart46.Active = true
	NewGuiPart46.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart46.BackgroundTransparency = 0.40000000596046
	NewGuiPart46.Name = "Prev"
	NewGuiPart46.Position = UDim2.new(0.200000003, 0, 0, 51)
	NewGuiPart46.Selectable = true
	NewGuiPart46.Size = UDim2.new(0, 26, 0, 26)
	NewGuiPart46.Style = Enum.ButtonStyle.Custom
	NewGuiPart46.ZIndex = 10
	NewGuiPart46.Font = Enum.Font.ArialBold
	NewGuiPart46.FontSize = Enum.FontSize.Size14
	NewGuiPart46.Text = "<"
	NewGuiPart46.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart46.Parent = NewGuiPart45

	local NewGuiPart47 = Instance.new("TextButton")
	NewGuiPart47.Active = true
	NewGuiPart47.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart47.BackgroundTransparency = 0.40000000596046
	NewGuiPart47.Name = "Next"
	NewGuiPart47.Position = UDim2.new(0.800000012, -26, 0, 51)
	NewGuiPart47.Selectable = true
	NewGuiPart47.Size = UDim2.new(0, 26, 0, 26)
	NewGuiPart47.Style = Enum.ButtonStyle.Custom
	NewGuiPart47.ZIndex = 10
	NewGuiPart47.Font = Enum.Font.ArialBold
	NewGuiPart47.FontSize = Enum.FontSize.Size14
	NewGuiPart47.Text = ">"
	NewGuiPart47.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart47.Parent = NewGuiPart45

	local NewGuiPart48 = Instance.new("TextLabel")
	NewGuiPart48.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart48.BackgroundTransparency = 0.40000000596046
	NewGuiPart48.Name = "CurrentVehicle"
	NewGuiPart48.Position = UDim2.new(0.200000003, 34, 0, 51)
	NewGuiPart48.Size = UDim2.new(0.5, -18, 0, 26)
	NewGuiPart48.ZIndex = 8
	NewGuiPart48.Font = Enum.Font.ArialBold
	NewGuiPart48.FontSize = Enum.FontSize.Size14
	NewGuiPart48.Text = "Not Set"
	NewGuiPart48.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart48.Parent = NewGuiPart45

	local NewGuiPart49 = Instance.new("TextLabel")
	NewGuiPart49.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart49.BackgroundTransparency = 0.40000000596046
	NewGuiPart49.Name = "GodVehicle"
	NewGuiPart49.Position = UDim2.new(0.00999999978, 0, 0, 82)
	NewGuiPart49.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart49.ZIndex = 8
	NewGuiPart49.Font = Enum.Font.ArialBold
	NewGuiPart49.FontSize = Enum.FontSize.Size14
	NewGuiPart49.Text = " God Vehicle"
	NewGuiPart49.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart49.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart49.Parent = NewGuiPart45

	local NewGuiPart50 = Instance.new("TextButton")
	NewGuiPart50.Active = true
	NewGuiPart50.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart50.BackgroundTransparency = 0.60000002384186
	NewGuiPart50.BorderSizePixel = 0
	NewGuiPart50.Name = "Btn"
	NewGuiPart50.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart50.Selectable = true
	NewGuiPart50.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart50.Style = Enum.ButtonStyle.Custom
	NewGuiPart50.ZIndex = 10
	NewGuiPart50.Font = Enum.Font.ArialBold
	NewGuiPart50.FontSize = Enum.FontSize.Size12
	NewGuiPart50.Text = "OFF"
	NewGuiPart50.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart50.Parent = NewGuiPart49

	local NewGuiPart51 = Instance.new("TextLabel")
	NewGuiPart51.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart51.BackgroundTransparency = 0.40000000596046
	NewGuiPart51.Name = "ExplVehicle"
	NewGuiPart51.Position = UDim2.new(0.00999999978, 0, 0, 104)
	NewGuiPart51.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart51.ZIndex = 8
	NewGuiPart51.Font = Enum.Font.ArialBold
	NewGuiPart51.FontSize = Enum.FontSize.Size14
	NewGuiPart51.Text = " Explode Vehicle"
	NewGuiPart51.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart51.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart51.Parent = NewGuiPart45

	local NewGuiPart52 = Instance.new("TextButton")
	NewGuiPart52.Active = true
	NewGuiPart52.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart52.BackgroundTransparency = 0.60000002384186
	NewGuiPart52.BorderSizePixel = 0
	NewGuiPart52.Name = "Btn"
	NewGuiPart52.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart52.Selectable = true
	NewGuiPart52.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart52.Style = Enum.ButtonStyle.Custom
	NewGuiPart52.ZIndex = 10
	NewGuiPart52.Font = Enum.Font.ArialBold
	NewGuiPart52.FontSize = Enum.FontSize.Size12
	NewGuiPart52.Text = "OFF"
	NewGuiPart52.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart52.Parent = NewGuiPart51

	local NewGuiPart53 = Instance.new("ScrollingFrame")
	NewGuiPart53.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart53.BackgroundTransparency = 0.40000000596046
	NewGuiPart53.Name = "PlayerList"
	NewGuiPart53.Position = UDim2.new(0.469999999, 58, 0, 104)
	NewGuiPart53.Selectable = true
	NewGuiPart53.Size = UDim2.new(0.300000012, -12, 0, 83)
	NewGuiPart53.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart53.ScrollBarThickness = 4
	NewGuiPart53.ClipsDescendants = true
	NewGuiPart53.Parent = NewGuiPart45

	local NewGuiPart54 = Instance.new("TextLabel")
	NewGuiPart54.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart54.BackgroundTransparency = 0.40000000596046
	NewGuiPart54.Name = "TPVehicle"
	NewGuiPart54.Position = UDim2.new(0.310000002, 5, 0, 82)
	NewGuiPart54.Size = UDim2.new(0.540000021, 60, 0, 17)
	NewGuiPart54.ZIndex = 8
	NewGuiPart54.Font = Enum.Font.ArialBold
	NewGuiPart54.FontSize = Enum.FontSize.Size14
	NewGuiPart54.Text = " Clone/TP Vehicle to:"
	NewGuiPart54.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart54.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart54.Parent = NewGuiPart45

	local NewGuiPart55 = Instance.new("TextButton")
	NewGuiPart55.Active = true
	NewGuiPart55.BackgroundColor3 = Color3.new(0, 0.254902, 0)
	NewGuiPart55.BackgroundTransparency = 0.60000002384186
	NewGuiPart55.BorderSizePixel = 0
	NewGuiPart55.Name = "Btn"
	NewGuiPart55.Position = UDim2.new(1, -56, 0, 2)
	NewGuiPart55.Selectable = true
	NewGuiPart55.Size = UDim2.new(0, 54, 0, 13)
	NewGuiPart55.Style = Enum.ButtonStyle.Custom
	NewGuiPart55.ZIndex = 10
	NewGuiPart55.Font = Enum.Font.ArialBold
	NewGuiPart55.FontSize = Enum.FontSize.Size12
	NewGuiPart55.Text = "TP"
	NewGuiPart55.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart55.Parent = NewGuiPart54

	local NewGuiPart56 = Instance.new("TextBox")
	NewGuiPart56.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart56.BackgroundTransparency = 0.40000000596046
	NewGuiPart56.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart56.BorderSizePixel = 0
	NewGuiPart56.Name = "Box"
	NewGuiPart56.Position = UDim2.new(0, 132, 0, 2)
	NewGuiPart56.Size = UDim2.new(0, 140, 1, -4)
	NewGuiPart56.ZIndex = 9
	NewGuiPart56.Font = Enum.Font.ArialBold
	NewGuiPart56.FontSize = Enum.FontSize.Size14
	NewGuiPart56.Text = ""
	NewGuiPart56.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart56.Parent = NewGuiPart54

	local NewGuiPart57 = Instance.new("TextLabel")
	NewGuiPart57.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart57.BackgroundTransparency = 0.40000000596046
	NewGuiPart57.Name = "SetOnRoadSpeed"
	NewGuiPart57.Position = UDim2.new(0.00999999978, 0, 0, 146)
	NewGuiPart57.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart57.ZIndex = 8
	NewGuiPart57.Font = Enum.Font.ArialBold
	NewGuiPart57.FontSize = Enum.FontSize.Size14
	NewGuiPart57.Text = " Onroad Speed:"
	NewGuiPart57.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart57.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart57.Parent = NewGuiPart45

	local NewGuiPart58 = Instance.new("TextBox")
	NewGuiPart58.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart58.BackgroundTransparency = 0.40000000596046
	NewGuiPart58.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart58.BorderSizePixel = 0
	NewGuiPart58.Name = "Box"
	NewGuiPart58.Position = UDim2.new(1, -52, 0, 2)
	NewGuiPart58.Size = UDim2.new(0, 50, 0, 13)
	NewGuiPart58.ZIndex = 9
	NewGuiPart58.Font = Enum.Font.ArialBold
	NewGuiPart58.FontSize = Enum.FontSize.Size14
	NewGuiPart58.Text = ""
	NewGuiPart58.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart58.Parent = NewGuiPart57

	local NewGuiPart59 = Instance.new("TextLabel")
	NewGuiPart59.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart59.BackgroundTransparency = 0.40000000596046
	NewGuiPart59.Name = "SetOffRoadSpeed"
	NewGuiPart59.Position = UDim2.new(0.00999999978, 0, 0, 168)
	NewGuiPart59.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart59.ZIndex = 8
	NewGuiPart59.Font = Enum.Font.ArialBold
	NewGuiPart59.FontSize = Enum.FontSize.Size14
	NewGuiPart59.Text = " Offroad Speed:"
	NewGuiPart59.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart59.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart59.Parent = NewGuiPart45

	local NewGuiPart60 = Instance.new("TextBox")
	NewGuiPart60.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart60.BackgroundTransparency = 0.40000000596046
	NewGuiPart60.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart60.BorderSizePixel = 0
	NewGuiPart60.Name = "Box"
	NewGuiPart60.Position = UDim2.new(1, -52, 0, 2)
	NewGuiPart60.Size = UDim2.new(0, 50, 0, 13)
	NewGuiPart60.ZIndex = 9
	NewGuiPart60.Font = Enum.Font.ArialBold
	NewGuiPart60.FontSize = Enum.FontSize.Size14
	NewGuiPart60.Text = ""
	NewGuiPart60.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart60.Parent = NewGuiPart59

	local NewGuiPart61 = Instance.new("TextLabel")
	NewGuiPart61.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart61.BackgroundTransparency = 0.40000000596046
	NewGuiPart61.Name = "ResetSpeed"
	NewGuiPart61.Position = UDim2.new(0.00999999978, 0, 0, 190)
	NewGuiPart61.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart61.ZIndex = 8
	NewGuiPart61.Font = Enum.Font.ArialBold
	NewGuiPart61.FontSize = Enum.FontSize.Size14
	NewGuiPart61.Text = " Reset Speed"
	NewGuiPart61.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart61.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart61.Parent = NewGuiPart45

	local NewGuiPart62 = Instance.new("TextButton")
	NewGuiPart62.Active = true
	NewGuiPart62.BackgroundColor3 = Color3.new(0, 0.333333, 0)
	NewGuiPart62.BackgroundTransparency = 0.60000002384186
	NewGuiPart62.BorderSizePixel = 0
	NewGuiPart62.Name = "Btn"
	NewGuiPart62.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart62.Selectable = true
	NewGuiPart62.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart62.Style = Enum.ButtonStyle.Custom
	NewGuiPart62.ZIndex = 10
	NewGuiPart62.Font = Enum.Font.ArialBold
	NewGuiPart62.FontSize = Enum.FontSize.Size12
	NewGuiPart62.Text = "EXEC"
	NewGuiPart62.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart62.Parent = NewGuiPart61

	local NewGuiPart63 = Instance.new("TextLabel")
	NewGuiPart63.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart63.BackgroundTransparency = 0.40000000596046
	NewGuiPart63.Name = "HornId"
	NewGuiPart63.Position = UDim2.new(0.00999999978, 0, 0, 210)
	NewGuiPart63.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart63.ZIndex = 8
	NewGuiPart63.Font = Enum.Font.ArialBold
	NewGuiPart63.FontSize = Enum.FontSize.Size14
	NewGuiPart63.Text = "Horn Id:"
	NewGuiPart63.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart63.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart63.Parent = NewGuiPart45

	local NewGuiPart64 = Instance.new("TextBox")
	NewGuiPart64.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart64.BackgroundTransparency = 0.40000000596046
	NewGuiPart64.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart64.BorderSizePixel = 0
	NewGuiPart64.Name = "Box"
	NewGuiPart64.Position = UDim2.new(1, -97, 0, 3)
	NewGuiPart64.Size = UDim2.new(0, 96, 0, 12)
	NewGuiPart64.ZIndex = 9
	NewGuiPart64.Font = Enum.Font.ArialBold
	NewGuiPart64.FontSize = Enum.FontSize.Size14
	NewGuiPart64.Text = ""
	NewGuiPart64.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart64.Parent = NewGuiPart63

	local NewGuiPart65 = Instance.new("TextLabel")
	NewGuiPart65.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart65.BackgroundTransparency = 0.40000000596046
	NewGuiPart65.Name = "CloneVehicle"
	NewGuiPart65.Position = UDim2.new(0.00999999978, 0, 0, 124)
	NewGuiPart65.Size = UDim2.new(0.300000012, 0, 0, 17)
	NewGuiPart65.ZIndex = 8
	NewGuiPart65.Font = Enum.Font.ArialBold
	NewGuiPart65.FontSize = Enum.FontSize.Size14
	NewGuiPart65.Text = "Clone Vehicle"
	NewGuiPart65.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart65.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart65.Parent = NewGuiPart45

	local NewGuiPart66 = Instance.new("TextButton")
	NewGuiPart66.Active = true
	NewGuiPart66.BackgroundColor3 = Color3.new(0.552941, 0.0235294, 0.0313726)
	NewGuiPart66.BackgroundTransparency = 0.60000002384186
	NewGuiPart66.BorderSizePixel = 0
	NewGuiPart66.Name = "Btn"
	NewGuiPart66.Position = UDim2.new(1, -46, 0, 2)
	NewGuiPart66.Selectable = true
	NewGuiPart66.Size = UDim2.new(0, 44, 0, 13)
	NewGuiPart66.Style = Enum.ButtonStyle.Custom
	NewGuiPart66.ZIndex = 10
	NewGuiPart66.Font = Enum.Font.ArialBold
	NewGuiPart66.FontSize = Enum.FontSize.Size12
	NewGuiPart66.Text = "EXEC"
	NewGuiPart66.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart66.Parent = NewGuiPart65

	local NewGuiPart67 = Instance.new("Frame")
	NewGuiPart67.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart67.BackgroundTransparency = 1
	NewGuiPart67.Name = "Player"
	NewGuiPart67.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart67.ZIndex = 2
	NewGuiPart67.ClipsDescendants = true
	NewGuiPart67.Parent = NewGuiPart39

	local NewGuiPart68 = Instance.new("Frame")
	NewGuiPart68.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart68.BackgroundTransparency = 1
	NewGuiPart68.Position = UDim2.new(0.00999999978, 0, 0, 51)
	NewGuiPart68.Size = UDim2.new(0.980000019, 0, 0, 17)
	NewGuiPart68.ZIndex = 8
	NewGuiPart68.Parent = NewGuiPart67

	local NewGuiPart69 = Instance.new("TextButton")
	NewGuiPart69.Active = true
	NewGuiPart69.BackgroundColor3 = Color3.new(0, 0.333333, 0)
	NewGuiPart69.BackgroundTransparency = 0.60000002384186
	NewGuiPart69.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart69.BorderSizePixel = 0
	NewGuiPart69.Name = "Execute"
	NewGuiPart69.Position = UDim2.new(1, -62, 0, 2)
	NewGuiPart69.Selectable = true
	NewGuiPart69.Size = UDim2.new(0, 60, 1, -4)
	NewGuiPart69.Style = Enum.ButtonStyle.Custom
	NewGuiPart69.ZIndex = 9
	NewGuiPart69.Font = Enum.Font.ArialBold
	NewGuiPart69.FontSize = Enum.FontSize.Size12
	NewGuiPart69.Text = "EXECUTE"
	NewGuiPart69.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart69.Parent = NewGuiPart68

	local NewGuiPart70 = Instance.new("ScrollingFrame")
	NewGuiPart70.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart70.BackgroundTransparency = 0.40000000596046
	NewGuiPart70.Name = "PlayerList"
	NewGuiPart70.Position = UDim2.new(0, 0, 1, 25)
	NewGuiPart70.Selectable = true
	NewGuiPart70.Size = UDim2.new(0.5, -2, 0, 100)
	NewGuiPart70.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart70.ScrollBarThickness = 4
	NewGuiPart70.ClipsDescendants = true
	NewGuiPart70.Parent = NewGuiPart68

	local NewGuiPart71 = Instance.new("Frame")
	NewGuiPart71.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart71.BackgroundTransparency = 0.40000000596046
	NewGuiPart71.Size = UDim2.new(1, 0, 0, 17)
	NewGuiPart71.ZIndex = 8
	NewGuiPart71.Parent = NewGuiPart68

	local NewGuiPart72 = Instance.new("TextLabel")
	NewGuiPart72.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart72.BackgroundTransparency = 0.40000000596046
	NewGuiPart72.Name = "Title1"
	NewGuiPart72.Position = UDim2.new(0, 0, 1, 4)
	NewGuiPart72.Size = UDim2.new(0.5, -2, 0, 17)
	NewGuiPart72.ZIndex = 8
	NewGuiPart72.Font = Enum.Font.ArialBold
	NewGuiPart72.FontSize = Enum.FontSize.Size14
	NewGuiPart72.Text = "Players"
	NewGuiPart72.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart72.Parent = NewGuiPart68

	local NewGuiPart73 = Instance.new("ScrollingFrame")
	NewGuiPart73.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart73.BackgroundTransparency = 0.40000000596046
	NewGuiPart73.Name = "ModeList"
	NewGuiPart73.Position = UDim2.new(0.5, 2, 1, 25)
	NewGuiPart73.Selectable = true
	NewGuiPart73.Size = UDim2.new(0.5, -2, 0, 100)
	NewGuiPart73.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart73.ScrollBarThickness = 4
	NewGuiPart73.ClipsDescendants = true
	NewGuiPart73.Parent = NewGuiPart68

	local NewGuiPart74 = Instance.new("TextLabel")
	NewGuiPart74.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart74.BackgroundTransparency = 1
	NewGuiPart74.BorderSizePixel = 0
	NewGuiPart74.Name = "Mode"
	NewGuiPart74.Position = UDim2.new(0, 217, 0, 0)
	NewGuiPart74.Size = UDim2.new(0, 40, 0, 17)
	NewGuiPart74.ZIndex = 8
	NewGuiPart74.Font = Enum.Font.ArialBold
	NewGuiPart74.FontSize = Enum.FontSize.Size14
	NewGuiPart74.Text = "Mode:"
	NewGuiPart74.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart74.Parent = NewGuiPart68

	local NewGuiPart75 = Instance.new("TextBox")
	NewGuiPart75.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart75.BackgroundTransparency = 0.40000000596046
	NewGuiPart75.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart75.BorderSizePixel = 0
	NewGuiPart75.Name = "Box"
	NewGuiPart75.Position = UDim2.new(1, 2, 0, 2)
	NewGuiPart75.Size = UDim2.new(4, 5, 1, -4)
	NewGuiPart75.ZIndex = 9
	NewGuiPart75.Font = Enum.Font.ArialBold
	NewGuiPart75.FontSize = Enum.FontSize.Size14
	NewGuiPart75.Text = ""
	NewGuiPart75.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart75.Parent = NewGuiPart74

	local NewGuiPart76 = Instance.new("TextLabel")
	NewGuiPart76.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart76.BackgroundTransparency = 1
	NewGuiPart76.BorderSizePixel = 0
	NewGuiPart76.Name = "Player"
	NewGuiPart76.Position = UDim2.new(0, 4, 0, 0)
	NewGuiPart76.Size = UDim2.new(0, 40, 0, 17)
	NewGuiPart76.ZIndex = 8
	NewGuiPart76.Font = Enum.Font.ArialBold
	NewGuiPart76.FontSize = Enum.FontSize.Size14
	NewGuiPart76.Text = "Player:"
	NewGuiPart76.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart76.Parent = NewGuiPart68

	local NewGuiPart77 = Instance.new("TextBox")
	NewGuiPart77.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart77.BackgroundTransparency = 0.40000000596046
	NewGuiPart77.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart77.BorderSizePixel = 0
	NewGuiPart77.Name = "Box"
	NewGuiPart77.Position = UDim2.new(1, 4, 0, 2)
	NewGuiPart77.Size = UDim2.new(4, 5, 1, -4)
	NewGuiPart77.ZIndex = 9
	NewGuiPart77.Font = Enum.Font.ArialBold
	NewGuiPart77.FontSize = Enum.FontSize.Size14
	NewGuiPart77.Text = ""
	NewGuiPart77.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart77.Parent = NewGuiPart76

	local NewGuiPart78 = Instance.new("TextLabel")
	NewGuiPart78.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart78.BackgroundTransparency = 0.40000000596046
	NewGuiPart78.Name = "Title2"
	NewGuiPart78.Position = UDim2.new(0.5, 2, 1, 4)
	NewGuiPart78.Size = UDim2.new(0.5, -2, 0, 17)
	NewGuiPart78.ZIndex = 8
	NewGuiPart78.Font = Enum.Font.ArialBold
	NewGuiPart78.FontSize = Enum.FontSize.Size14
	NewGuiPart78.Text = "Modes"
	NewGuiPart78.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart78.Parent = NewGuiPart68

	local NewGuiPart79 = Instance.new("Frame")
	NewGuiPart79.BackgroundColor3 = Color3.new(0, 0, 0)
	NewGuiPart79.Name = "Line"
	NewGuiPart79.Position = UDim2.new(0.00999999978, 0, 0, 198)
	NewGuiPart79.Size = UDim2.new(0.980000019, 0, 0, 1)
	NewGuiPart79.ClipsDescendants = true
	NewGuiPart79.Parent = NewGuiPart67

	local NewGuiPart80 = Instance.new("TextLabel")
	NewGuiPart80.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart80.BackgroundTransparency = 0.40000000596046
	NewGuiPart80.Name = "StatChange"
	NewGuiPart80.Position = UDim2.new(0.00999999978, 0, 0, 204)
	NewGuiPart80.Size = UDim2.new(0.889999986, 0, 0, 17)
	NewGuiPart80.ZIndex = 8
	NewGuiPart80.Font = Enum.Font.ArialBold
	NewGuiPart80.FontSize = Enum.FontSize.Size14
	NewGuiPart80.Text = " Player:"
	NewGuiPart80.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart80.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart80.Parent = NewGuiPart67

	local NewGuiPart81 = Instance.new("TextLabel")
	NewGuiPart81.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart81.BackgroundTransparency = 1
	NewGuiPart81.Name = "Label"
	NewGuiPart81.Position = UDim2.new(0, 195, 0, 0)
	NewGuiPart81.Size = UDim2.new(0, 100, 0, 17)
	NewGuiPart81.ZIndex = 8
	NewGuiPart81.Font = Enum.Font.ArialBold
	NewGuiPart81.FontSize = Enum.FontSize.Size14
	NewGuiPart81.Text = " Stat:"
	NewGuiPart81.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart81.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart81.Parent = NewGuiPart80

	local NewGuiPart82 = Instance.new("ScrollingFrame")
	NewGuiPart82.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart82.BackgroundTransparency = 0.40000000596046
	NewGuiPart82.Name = "PlayerList"
	NewGuiPart82.Position = UDim2.new(0.109999999, 2, 1, 5)
	NewGuiPart82.Selectable = true
	NewGuiPart82.Size = UDim2.new(0, 138, 0, 83)
	NewGuiPart82.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart82.ScrollBarThickness = 4
	NewGuiPart82.ClipsDescendants = true
	NewGuiPart82.Parent = NewGuiPart80

	local NewGuiPart83 = Instance.new("ScrollingFrame")
	NewGuiPart83.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart83.BackgroundTransparency = 0.40000000596046
	NewGuiPart83.Name = "StatList"
	NewGuiPart83.Position = UDim2.new(0.50999999, 4, 1, 5)
	NewGuiPart83.Selectable = true
	NewGuiPart83.Size = UDim2.new(0, 78, 0, 83)
	NewGuiPart83.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart83.ScrollBarThickness = 4
	NewGuiPart83.ClipsDescendants = true
	NewGuiPart83.Parent = NewGuiPart80

	local NewGuiPart84 = Instance.new("Frame")
	NewGuiPart84.BackgroundTransparency = 1
	NewGuiPart84.Name = "Player"
	NewGuiPart84.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart84.Parent = NewGuiPart80

	local NewGuiPart85 = Instance.new("TextBox")
	NewGuiPart85.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart85.BackgroundTransparency = 0.40000000596046
	NewGuiPart85.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart85.BorderSizePixel = 0
	NewGuiPart85.Name = "Box"
	NewGuiPart85.Position = UDim2.new(0, 50, 0, 2)
	NewGuiPart85.Size = UDim2.new(0, 140, 1, -4)
	NewGuiPart85.ZIndex = 9
	NewGuiPart85.Font = Enum.Font.ArialBold
	NewGuiPart85.FontSize = Enum.FontSize.Size14
	NewGuiPart85.Text = ""
	NewGuiPart85.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart85.Parent = NewGuiPart84

	local NewGuiPart86 = Instance.new("Frame")
	NewGuiPart86.BackgroundTransparency = 1
	NewGuiPart86.Name = "Stat"
	NewGuiPart86.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart86.Parent = NewGuiPart80

	local NewGuiPart87 = Instance.new("TextBox")
	NewGuiPart87.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart87.BackgroundTransparency = 0.40000000596046
	NewGuiPart87.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart87.BorderSizePixel = 0
	NewGuiPart87.Name = "Box"
	NewGuiPart87.Position = UDim2.new(0, 230, 0, 2)
	NewGuiPart87.Size = UDim2.new(0, 80, 1, -4)
	NewGuiPart87.ZIndex = 9
	NewGuiPart87.Font = Enum.Font.ArialBold
	NewGuiPart87.FontSize = Enum.FontSize.Size14
	NewGuiPart87.Text = ""
	NewGuiPart87.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart87.Parent = NewGuiPart86

	local NewGuiPart88 = Instance.new("TextLabel")
	NewGuiPart88.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart88.BackgroundTransparency = 1
	NewGuiPart88.BorderSizePixel = 0
	NewGuiPart88.Name = "Count"
	NewGuiPart88.Position = UDim2.new(0, 300, 0, 0)
	NewGuiPart88.Size = UDim2.new(0, 40, 0, 17)
	NewGuiPart88.ZIndex = 8
	NewGuiPart88.Font = Enum.Font.ArialBold
	NewGuiPart88.FontSize = Enum.FontSize.Size14
	NewGuiPart88.Text = "x"
	NewGuiPart88.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart88.Parent = NewGuiPart80

	local NewGuiPart89 = Instance.new("TextBox")
	NewGuiPart89.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart89.BackgroundTransparency = 0.40000000596046
	NewGuiPart89.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart89.BorderSizePixel = 0
	NewGuiPart89.Name = "oldbox"
	NewGuiPart89.Position = UDim2.new(0, 29, 0, 2)
	NewGuiPart89.Size = UDim2.new(0, 50, 1, -4)
	NewGuiPart89.ZIndex = 9
	NewGuiPart89.Font = Enum.Font.ArialBold
	NewGuiPart89.FontSize = Enum.FontSize.Size14
	NewGuiPart89.Text = ""
	NewGuiPart89.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart89.Parent = NewGuiPart88

	local NewGuiPart90 = Instance.new("TextButton")
	NewGuiPart90.Active = true
	NewGuiPart90.BackgroundColor3 = Color3.new(0, 0.333333, 0)
	NewGuiPart90.BackgroundTransparency = 0.60000002384186
	NewGuiPart90.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart90.BorderSizePixel = 0
	NewGuiPart90.Name = "Btn"
	NewGuiPart90.Position = UDim2.new(1, -62, 0, 2)
	NewGuiPart90.Selectable = true
	NewGuiPart90.Size = UDim2.new(0, 60, 1, -4)
	NewGuiPart90.Style = Enum.ButtonStyle.Custom
	NewGuiPart90.ZIndex = 9
	NewGuiPart90.Font = Enum.Font.ArialBold
	NewGuiPart90.FontSize = Enum.FontSize.Size12
	NewGuiPart90.Text = "EXECUTE"
	NewGuiPart90.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart90.Parent = NewGuiPart80

	local NewGuiPart91 = Instance.new("Frame")
	NewGuiPart91.BackgroundColor3 = Color3.new(0, 0, 0)
	NewGuiPart91.Name = "Line"
	NewGuiPart91.Position = UDim2.new(0.00999999978, 0, 0, 45)
	NewGuiPart91.Size = UDim2.new(0.980000019, 0, 0, 1)
	NewGuiPart91.ClipsDescendants = true
	NewGuiPart91.Parent = NewGuiPart39

	local NewGuiPart92 = Instance.new("Frame")
	NewGuiPart92.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart92.BackgroundTransparency = 1
	NewGuiPart92.Name = "Misc"
	NewGuiPart92.Size = UDim2.new(1, 0, 1, 0)
	NewGuiPart92.Visible = false
	NewGuiPart92.ZIndex = 2
	NewGuiPart92.ClipsDescendants = true
	NewGuiPart92.Parent = NewGuiPart39

	local NewGuiPart93 = Instance.new("TextLabel")
	NewGuiPart93.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart93.BackgroundTransparency = 0.40000000596046
	NewGuiPart93.Name = "Rarity"
	NewGuiPart93.Position = UDim2.new(0.00999999978, 0, 0, 51)
	NewGuiPart93.Size = UDim2.new(0.400000006, 0, 0, 17)
	NewGuiPart93.ZIndex = 2
	NewGuiPart93.Font = Enum.Font.ArialBold
	NewGuiPart93.FontSize = Enum.FontSize.Size14
	NewGuiPart93.Text = " Loot Spawn Rarity"
	NewGuiPart93.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart93.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart93.Parent = NewGuiPart92

	local NewGuiPart94 = Instance.new("TextBox")
	NewGuiPart94.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart94.BackgroundTransparency = 0.40000000596046
	NewGuiPart94.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart94.BorderSizePixel = 0
	NewGuiPart94.Name = "Box"
	NewGuiPart94.Position = UDim2.new(1, -62, 0, 2)
	NewGuiPart94.Size = UDim2.new(0, 60, 0, 13)
	NewGuiPart94.ZIndex = 3
	NewGuiPart94.Font = Enum.Font.ArialBold
	NewGuiPart94.FontSize = Enum.FontSize.Size14
	NewGuiPart94.Text = ""
	NewGuiPart94.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart94.Parent = NewGuiPart93

	local NewGuiPart95 = Instance.new("TextLabel")
	NewGuiPart95.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart95.BackgroundTransparency = 1
	NewGuiPart95.BorderSizePixel = 0
	NewGuiPart95.Name = "Rarity"
	NewGuiPart95.Position = UDim2.new(0, -12, 0, 0)
	NewGuiPart95.Size = UDim2.new(0, 13, 1, 0)
	NewGuiPart95.ZIndex = 2
	NewGuiPart95.Font = Enum.Font.ArialBold
	NewGuiPart95.FontSize = Enum.FontSize.Size14
	NewGuiPart95.Text = "%"
	NewGuiPart95.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart95.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart95.Parent = NewGuiPart94

	local NewGuiPart96 = Instance.new("TextLabel")
	NewGuiPart96.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart96.BackgroundTransparency = 0.40000000596046
	NewGuiPart96.Name = "AE"
	NewGuiPart96.Position = UDim2.new(0.00999999978, 130, 0, 71)
	NewGuiPart96.Size = UDim2.new(0.25, 0, 0, 17)
	NewGuiPart96.ZIndex = 2
	NewGuiPart96.Font = Enum.Font.ArialBold
	NewGuiPart96.FontSize = Enum.FontSize.Size14
	NewGuiPart96.Text = "TM46"
	NewGuiPart96.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart96.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart96.Parent = NewGuiPart92

	local NewGuiPart97 = Instance.new("TextButton")
	NewGuiPart97.Active = true
	NewGuiPart97.BackgroundColor3 = Color3.new(0.745098, 0.266667, 0.121569)
	NewGuiPart97.BackgroundTransparency = 0.60000002384186
	NewGuiPart97.BorderSizePixel = 0
	NewGuiPart97.Name = "Btn"
	NewGuiPart97.Position = UDim2.new(1, -42, 1, -15)
	NewGuiPart97.Selectable = true
	NewGuiPart97.Size = UDim2.new(0, 40, 0, 13)
	NewGuiPart97.Style = Enum.ButtonStyle.Custom
	NewGuiPart97.ZIndex = 10
	NewGuiPart97.Font = Enum.Font.ArialBold
	NewGuiPart97.FontSize = Enum.FontSize.Size12
	NewGuiPart97.Text = "Place"
	NewGuiPart97.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart97.Parent = NewGuiPart96

	local NewGuiPart98 = Instance.new("TextLabel")
	NewGuiPart98.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart98.BackgroundTransparency = 0.40000000596046
	NewGuiPart98.Name = "C4"
	NewGuiPart98.Position = UDim2.new(0.00999999978, 0, 0, 71)
	NewGuiPart98.Size = UDim2.new(0.25, 0, 0, 17)
	NewGuiPart98.ZIndex = 2
	NewGuiPart98.Font = Enum.Font.ArialBold
	NewGuiPart98.FontSize = Enum.FontSize.Size14
	NewGuiPart98.Text = "C4"
	NewGuiPart98.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart98.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart98.Parent = NewGuiPart92

	local NewGuiPart99 = Instance.new("TextButton")
	NewGuiPart99.Active = true
	NewGuiPart99.BackgroundColor3 = Color3.new(0.745098, 0.266667, 0.121569)
	NewGuiPart99.BackgroundTransparency = 0.60000002384186
	NewGuiPart99.BorderSizePixel = 0
	NewGuiPart99.Name = "Btn"
	NewGuiPart99.Position = UDim2.new(1, -42, 1, -15)
	NewGuiPart99.Selectable = true
	NewGuiPart99.Size = UDim2.new(0, 40, 0, 13)
	NewGuiPart99.Style = Enum.ButtonStyle.Custom
	NewGuiPart99.ZIndex = 10
	NewGuiPart99.Font = Enum.Font.ArialBold
	NewGuiPart99.FontSize = Enum.FontSize.Size12
	NewGuiPart99.Text = "Place"
	NewGuiPart99.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart99.Parent = NewGuiPart98

	local NewGuiPart100 = Instance.new("TextLabel")
	NewGuiPart100.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart100.BackgroundTransparency = 0.40000000596046
	NewGuiPart100.Name = "VS50"
	NewGuiPart100.Position = UDim2.new(0.00999999978, 260, 0, 71)
	NewGuiPart100.Size = UDim2.new(0.25, 0, 0, 17)
	NewGuiPart100.ZIndex = 2
	NewGuiPart100.Font = Enum.Font.ArialBold
	NewGuiPart100.FontSize = Enum.FontSize.Size14
	NewGuiPart100.Text = "VS50"
	NewGuiPart100.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart100.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart100.Parent = NewGuiPart92

	local NewGuiPart101 = Instance.new("TextButton")
	NewGuiPart101.Active = true
	NewGuiPart101.BackgroundColor3 = Color3.new(0.745098, 0.266667, 0.121569)
	NewGuiPart101.BackgroundTransparency = 0.60000002384186
	NewGuiPart101.BorderSizePixel = 0
	NewGuiPart101.Name = "Btn"
	NewGuiPart101.Position = UDim2.new(1, -42, 1, -15)
	NewGuiPart101.Selectable = true
	NewGuiPart101.Size = UDim2.new(0, 40, 0, 13)
	NewGuiPart101.Style = Enum.ButtonStyle.Custom
	NewGuiPart101.ZIndex = 10
	NewGuiPart101.Font = Enum.Font.ArialBold
	NewGuiPart101.FontSize = Enum.FontSize.Size12
	NewGuiPart101.Text = "Place"
	NewGuiPart101.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart101.Parent = NewGuiPart100

	local NewGuiPart102 = Instance.new("TextLabel")
	NewGuiPart102.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart102.BackgroundTransparency = 0.40000000596046
	NewGuiPart102.Name = "Music"
	NewGuiPart102.Position = UDim2.new(0.00999999978, 210, 0, 51)
	NewGuiPart102.Size = UDim2.new(0.400000006, 50, 0, 17)
	NewGuiPart102.ZIndex = 2
	NewGuiPart102.Font = Enum.Font.ArialBold
	NewGuiPart102.FontSize = Enum.FontSize.Size14
	NewGuiPart102.Text = "Play Music"
	NewGuiPart102.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart102.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart102.Parent = NewGuiPart92

	local NewGuiPart103 = Instance.new("TextBox")
	NewGuiPart103.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart103.BackgroundTransparency = 0.40000000596046
	NewGuiPart103.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart103.BorderSizePixel = 0
	NewGuiPart103.Name = "Box"
	NewGuiPart103.Position = UDim2.new(1, -152, 0, 2)
	NewGuiPart103.Size = UDim2.new(0, 60, 0, 13)
	NewGuiPart103.ZIndex = 3
	NewGuiPart103.Font = Enum.Font.ArialBold
	NewGuiPart103.FontSize = Enum.FontSize.Size14
	NewGuiPart103.Text = ""
	NewGuiPart103.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart103.Parent = NewGuiPart102

	local NewGuiPart104 = Instance.new("TextLabel")
	NewGuiPart104.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart104.BackgroundTransparency = 1
	NewGuiPart104.BorderSizePixel = 0
	NewGuiPart104.Name = "ID"
	NewGuiPart104.Position = UDim2.new(0, -20, 0, 0)
	NewGuiPart104.Size = UDim2.new(0, 13, 1, 0)
	NewGuiPart104.ZIndex = 2
	NewGuiPart104.Font = Enum.Font.ArialBold
	NewGuiPart104.FontSize = Enum.FontSize.Size14
	NewGuiPart104.Text = "ID"
	NewGuiPart104.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart104.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart104.Parent = NewGuiPart103

	local NewGuiPart105 = Instance.new("TextButton")
	NewGuiPart105.Active = true
	NewGuiPart105.BackgroundColor3 = Color3.new(0.745098, 0.266667, 0.121569)
	NewGuiPart105.BackgroundTransparency = 0.60000002384186
	NewGuiPart105.BorderSizePixel = 0
	NewGuiPart105.Name = "Btn"
	NewGuiPart105.Position = UDim2.new(1, -81, 1, -15)
	NewGuiPart105.Selectable = true
	NewGuiPart105.Size = UDim2.new(0, 70, 0, 13)
	NewGuiPart105.Style = Enum.ButtonStyle.Custom
	NewGuiPart105.ZIndex = 10
	NewGuiPart105.Font = Enum.Font.ArialBold
	NewGuiPart105.FontSize = Enum.FontSize.Size12
	NewGuiPart105.Text = "Play Music"
	NewGuiPart105.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart105.Parent = NewGuiPart102

	local NewGuiPart106 = Instance.new("TextLabel")
	NewGuiPart106.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart106.BackgroundTransparency = 0.40000000596046
	NewGuiPart106.Name = "Shirt"
	NewGuiPart106.Position = UDim2.new(0.00999999978, 0, 0, 91)
	NewGuiPart106.Size = UDim2.new(0.400000006, 50, 0, 17)
	NewGuiPart106.ZIndex = 2
	NewGuiPart106.Font = Enum.Font.ArialBold
	NewGuiPart106.FontSize = Enum.FontSize.Size14
	NewGuiPart106.Text = "Change Shirt"
	NewGuiPart106.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart106.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart106.Parent = NewGuiPart92

	local NewGuiPart107 = Instance.new("TextBox")
	NewGuiPart107.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart107.BackgroundTransparency = 0.40000000596046
	NewGuiPart107.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart107.BorderSizePixel = 0
	NewGuiPart107.Name = "Box"
	NewGuiPart107.Position = UDim2.new(1, -142, 0, 2)
	NewGuiPart107.Size = UDim2.new(0, 60, 0, 13)
	NewGuiPart107.ZIndex = 3
	NewGuiPart107.Font = Enum.Font.ArialBold
	NewGuiPart107.FontSize = Enum.FontSize.Size14
	NewGuiPart107.Text = ""
	NewGuiPart107.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart107.Parent = NewGuiPart106

	local NewGuiPart108 = Instance.new("TextLabel")
	NewGuiPart108.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart108.BackgroundTransparency = 1
	NewGuiPart108.BorderSizePixel = 0
	NewGuiPart108.Name = "ID"
	NewGuiPart108.Position = UDim2.new(0, -20, 0, 0)
	NewGuiPart108.Size = UDim2.new(0, 13, 1, 0)
	NewGuiPart108.ZIndex = 2
	NewGuiPart108.Font = Enum.Font.ArialBold
	NewGuiPart108.FontSize = Enum.FontSize.Size14
	NewGuiPart108.Text = "ID"
	NewGuiPart108.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart108.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart108.Parent = NewGuiPart107

	local NewGuiPart109 = Instance.new("TextButton")
	NewGuiPart109.Active = true
	NewGuiPart109.BackgroundColor3 = Color3.new(0.745098, 0.266667, 0.121569)
	NewGuiPart109.BackgroundTransparency = 0.60000002384186
	NewGuiPart109.BorderSizePixel = 0
	NewGuiPart109.Name = "Btn"
	NewGuiPart109.Position = UDim2.new(1, -71, 1, -15)
	NewGuiPart109.Selectable = true
	NewGuiPart109.Size = UDim2.new(0, 70, 0, 13)
	NewGuiPart109.Style = Enum.ButtonStyle.Custom
	NewGuiPart109.ZIndex = 10
	NewGuiPart109.Font = Enum.Font.ArialBold
	NewGuiPart109.FontSize = Enum.FontSize.Size12
	NewGuiPart109.Text = "Change"
	NewGuiPart109.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart109.Parent = NewGuiPart106

	local NewGuiPart110 = Instance.new("TextLabel")
	NewGuiPart110.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart110.BackgroundTransparency = 0.40000000596046
	NewGuiPart110.Name = "Pants"
	NewGuiPart110.Position = UDim2.new(0.00999999978, 0, 0, 111)
	NewGuiPart110.Size = UDim2.new(0.400000006, 50, 0, 17)
	NewGuiPart110.ZIndex = 2
	NewGuiPart110.Font = Enum.Font.ArialBold
	NewGuiPart110.FontSize = Enum.FontSize.Size14
	NewGuiPart110.Text = "Change Pants"
	NewGuiPart110.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart110.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart110.Parent = NewGuiPart92

	local NewGuiPart111 = Instance.new("TextBox")
	NewGuiPart111.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart111.BackgroundTransparency = 0.40000000596046
	NewGuiPart111.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart111.BorderSizePixel = 0
	NewGuiPart111.Name = "Box"
	NewGuiPart111.Position = UDim2.new(1, -142, 0, 2)
	NewGuiPart111.Size = UDim2.new(0, 60, 0, 13)
	NewGuiPart111.ZIndex = 3
	NewGuiPart111.Font = Enum.Font.ArialBold
	NewGuiPart111.FontSize = Enum.FontSize.Size14
	NewGuiPart111.Text = ""
	NewGuiPart111.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart111.Parent = NewGuiPart110

	local NewGuiPart112 = Instance.new("TextLabel")
	NewGuiPart112.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart112.BackgroundTransparency = 1
	NewGuiPart112.BorderSizePixel = 0
	NewGuiPart112.Name = "ID"
	NewGuiPart112.Position = UDim2.new(0, -20, 0, 0)
	NewGuiPart112.Size = UDim2.new(0, 13, 1, 0)
	NewGuiPart112.ZIndex = 2
	NewGuiPart112.Font = Enum.Font.ArialBold
	NewGuiPart112.FontSize = Enum.FontSize.Size14
	NewGuiPart112.Text = "ID"
	NewGuiPart112.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart112.TextXAlignment = Enum.TextXAlignment.Left
	NewGuiPart112.Parent = NewGuiPart111

	local NewGuiPart113 = Instance.new("TextButton")
	NewGuiPart113.Active = true
	NewGuiPart113.BackgroundColor3 = Color3.new(0.745098, 0.266667, 0.121569)
	NewGuiPart113.BackgroundTransparency = 0.60000002384186
	NewGuiPart113.BorderSizePixel = 0
	NewGuiPart113.Name = "Btn"
	NewGuiPart113.Position = UDim2.new(1, -71, 1, -15)
	NewGuiPart113.Selectable = true
	NewGuiPart113.Size = UDim2.new(0, 70, 0, 13)
	NewGuiPart113.Style = Enum.ButtonStyle.Custom
	NewGuiPart113.ZIndex = 10
	NewGuiPart113.Font = Enum.Font.ArialBold
	NewGuiPart113.FontSize = Enum.FontSize.Size12
	NewGuiPart113.Text = "Change"
	NewGuiPart113.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart113.Parent = NewGuiPart110


	local NewGuiPart116 = Instance.new("Frame")
	NewGuiPart116.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart116.BackgroundTransparency = 1
	NewGuiPart116.Name = "ItemSpawn"
	NewGuiPart116.Position = UDim2.new(0.00999999978, 0, 0, 50)
	NewGuiPart116.Size = UDim2.new(0.980000019, 0, 0, 17)
	NewGuiPart116.Visible = false
	NewGuiPart116.ZIndex = 8
	NewGuiPart116.Parent = NewGuiPart39

	local NewGuiPart117 = Instance.new("TextLabel")
	NewGuiPart117.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart117.BackgroundTransparency = 1
	NewGuiPart117.BorderSizePixel = 0
	NewGuiPart117.Name = "Item"
	NewGuiPart117.Size = UDim2.new(0, 40, 0, 17)
	NewGuiPart117.ZIndex = 8
	NewGuiPart117.Font = Enum.Font.ArialBold
	NewGuiPart117.FontSize = Enum.FontSize.Size14
	NewGuiPart117.Text = "Item: "
	NewGuiPart117.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart117.Parent = NewGuiPart116

	local NewGuiPart118 = Instance.new("TextBox")
	NewGuiPart118.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart118.BackgroundTransparency = 0.40000000596046
	NewGuiPart118.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart118.BorderSizePixel = 0
	NewGuiPart118.Name = "Box"
	NewGuiPart118.Position = UDim2.new(1, 0, 0, 2)
	NewGuiPart118.Size = UDim2.new(3.5, 2, 1, -4)
	NewGuiPart118.ZIndex = 9
	NewGuiPart118.Font = Enum.Font.ArialBold
	NewGuiPart118.FontSize = Enum.FontSize.Size14
	NewGuiPart118.Text = ""
	NewGuiPart118.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart118.Parent = NewGuiPart117

	local NewGuiPart119 = Instance.new("TextLabel")
	NewGuiPart119.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
	NewGuiPart119.BackgroundTransparency = 1
	NewGuiPart119.BorderSizePixel = 0
	NewGuiPart119.Name = "Count"
	NewGuiPart119.Position = UDim2.new(0, 171, 0, 0)
	NewGuiPart119.Size = UDim2.new(0, 40, 0, 17)
	NewGuiPart119.ZIndex = 8
	NewGuiPart119.Font = Enum.Font.ArialBold
	NewGuiPart119.FontSize = Enum.FontSize.Size14
	NewGuiPart119.Text = "x"
	NewGuiPart119.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart119.Parent = NewGuiPart116

	local NewGuiPart120 = Instance.new("TextBox")
	NewGuiPart120.BackgroundColor3 = Color3.new(0.0431373, 0.0431373, 0.0431373)
	NewGuiPart120.BackgroundTransparency = 0.40000000596046
	NewGuiPart120.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart120.BorderSizePixel = 0
	NewGuiPart120.Name = "oldbox"
	NewGuiPart120.Position = UDim2.new(0, 29, 0, 2)
	NewGuiPart120.Size = UDim2.new(0, 15, 1, -4)
	NewGuiPart120.Visible = false
	NewGuiPart120.ZIndex = 9
	NewGuiPart120.Font = Enum.Font.ArialBold
	NewGuiPart120.FontSize = Enum.FontSize.Size14
	NewGuiPart120.Text = ""
	NewGuiPart120.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart120.Parent = NewGuiPart119

	local NewGuiPart121 = Instance.new("TextLabel")
	NewGuiPart121.BackgroundColor3 = Color3.new(0.184314, 0.184314, 0.184314)
	NewGuiPart121.BackgroundTransparency = 0.40000000596046
	NewGuiPart121.BorderSizePixel = 0
	NewGuiPart121.Name = "Box"
	NewGuiPart121.Position = UDim2.new(0, 29, 0, 2)
	NewGuiPart121.Size = UDim2.new(0, 15, 1, -4)
	NewGuiPart121.ZIndex = 8
	NewGuiPart121.Font = Enum.Font.ArialBold
	NewGuiPart121.FontSize = Enum.FontSize.Size14
	NewGuiPart121.Text = "1"
	NewGuiPart121.TextColor3 = Color3.new(0.439216, 0.439216, 0.439216)
	NewGuiPart121.Parent = NewGuiPart119

	local NewGuiPart122 = Instance.new("TextButton")
	NewGuiPart122.Active = true
	NewGuiPart122.BackgroundColor3 = Color3.new(0, 0.333333, 0)
	NewGuiPart122.BackgroundTransparency = 0.60000002384186
	NewGuiPart122.BorderColor3 = Color3.new(0, 0, 0)
	NewGuiPart122.BorderSizePixel = 0
	NewGuiPart122.Name = "Spawn"
	NewGuiPart122.Position = UDim2.new(0, 218, 0, 2)
	NewGuiPart122.Selectable = true
	NewGuiPart122.Size = UDim2.new(0, 50, 1, -4)
	NewGuiPart122.Style = Enum.ButtonStyle.Custom
	NewGuiPart122.ZIndex = 9
	NewGuiPart122.Font = Enum.Font.ArialBold
	NewGuiPart122.FontSize = Enum.FontSize.Size12
	NewGuiPart122.Text = "SPAWN"
	NewGuiPart122.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart122.Parent = NewGuiPart116

	local NewGuiPart123 = Instance.new("ScrollingFrame")
	NewGuiPart123.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart123.BackgroundTransparency = 0.40000000596046
	NewGuiPart123.Name = "ItemList"
	NewGuiPart123.Position = UDim2.new(0, 0, 1, 25)
	NewGuiPart123.Selectable = true
	NewGuiPart123.Size = UDim2.new(0, 271, 0, 100)
	NewGuiPart123.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart123.ScrollBarThickness = 4
	NewGuiPart123.ClipsDescendants = true
	NewGuiPart123.Parent = NewGuiPart116

	local NewGuiPart124 = Instance.new("TextBox")
	NewGuiPart124.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart124.BackgroundTransparency = 0.40000000596046
	NewGuiPart124.Name = "SearchBox"
	NewGuiPart124.Position = UDim2.new(0, 0, 1, 4)
	NewGuiPart124.Size = UDim2.new(0, 271, 0, 17)
	NewGuiPart124.ZIndex = 9
	NewGuiPart124.Font = Enum.Font.ArialBold
	NewGuiPart124.FontSize = Enum.FontSize.Size14
	NewGuiPart124.Text = "Click here to search"
	NewGuiPart124.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart124.Parent = NewGuiPart116

	local NewGuiPart125 = Instance.new("Frame")
	NewGuiPart125.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart125.BackgroundTransparency = 0.40000000596046
	NewGuiPart125.Size = UDim2.new(0, 271, 0, 17)
	NewGuiPart125.ZIndex = 8
	NewGuiPart125.Parent = NewGuiPart116

	local NewGuiPart126 = Instance.new("TextLabel")
	NewGuiPart126.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart126.BackgroundTransparency = 0.40000000596046
	NewGuiPart126.Name = "Title"
	NewGuiPart126.Position = UDim2.new(0, 274, 0, 0)
	NewGuiPart126.Size = UDim2.new(1, -274, 0, 17)
	NewGuiPart126.ZIndex = 8
	NewGuiPart126.Font = Enum.Font.ArialBold
	NewGuiPart126.FontSize = Enum.FontSize.Size14
	NewGuiPart126.Text = "LoadOuts"
	NewGuiPart126.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart126.Parent = NewGuiPart116

	local NewGuiPart127 = Instance.new("ScrollingFrame")
	NewGuiPart127.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart127.BackgroundTransparency = 0.40000000596046
	NewGuiPart127.Name = "LoadOutList"
	NewGuiPart127.Position = UDim2.new(0, 274, 1, 4)
	NewGuiPart127.Selectable = true
	NewGuiPart127.Size = UDim2.new(1, -274, 0, 121)
	NewGuiPart127.CanvasSize = UDim2.new(0, 0, 0, 0)
	NewGuiPart127.ScrollBarThickness = 4
	NewGuiPart127.ClipsDescendants = true
	NewGuiPart127.Parent = NewGuiPart116

	local NewGuiPart128 = Instance.new("TextLabel")
	NewGuiPart128.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart128.BackgroundTransparency = 1
	NewGuiPart128.Name = "Title"
	NewGuiPart128.Position = UDim2.new(1, 0, 0, 0)
	NewGuiPart128.Size = UDim2.new(0, 0, 0, 17)
	NewGuiPart128.ZIndex = 8
	NewGuiPart128.Font = Enum.Font.ArialBold
	NewGuiPart128.FontSize = Enum.FontSize.Size14
	NewGuiPart128.Text = "Click and drag "
	NewGuiPart128.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart128.TextXAlignment = Enum.TextXAlignment.Right
	NewGuiPart128.Parent = NewGuiPart9

	local NewGuiPart129 = Instance.new("TextButton")
	NewGuiPart129.Active = true
	NewGuiPart129.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
	NewGuiPart129.BackgroundTransparency = 0.40000000596046
	NewGuiPart129.Name = "Toggle"
	NewGuiPart129.Position = UDim2.new(0, 50, 1, -38)
	NewGuiPart129.Selectable = true
	NewGuiPart129.Size = UDim2.new(0, 34, 0, 34)
	NewGuiPart129.Style = Enum.ButtonStyle.Custom
	NewGuiPart129.ZIndex = 9
	NewGuiPart129.Font = Enum.Font.ArialBold
	NewGuiPart129.FontSize = Enum.FontSize.Size28
	NewGuiPart129.Text = "-"
	NewGuiPart129.TextColor3 = Color3.new(0.752941, 0.752941, 0.752941)
	NewGuiPart129.Parent = NewGuiPart1
end
CreateGui()
Gui = game.CoreGui.SpawnGui
local rekt = topkey
local BF = Gui:WaitForChild("BigFrame")
local SF = BF:WaitForChild("Server")
local LF = BF:WaitForChild("Local")
local LP = game.Players.LocalPlayer
local Template = LF.Frame.ItemList.Template
local Btns = BF.Buttons
local pInfo = Gui.PlayerInfo
local LocalSpawn = LF.Frame
local LocalStats = LF.Frame2
local sBtns = SF.Buttons
local VehicleFr = SF.Vehicle
local PlayerFr = SF.Player
local MiscFr = SF.Misc
local ServerSpawn = SF.ItemSpawn
local OnCol, OffCol = Color3.new(0, 85/255, 0), Color3.new(141/255, 6/255, 8/255)
local bOnCol, bOffCol = Color3.new(0, 65/255, 0), Color3.new(91/255, 3/255, 5/255)
local CurrMsgCol = "White"
local CurrVehIndex = 1
local CurrPlrIndex = 1
local CurrVeh, CurrPlr
local NumPlrs = game.Players.NumPlayers
local Bools = {
["Stamina"] = false,
["Hunger"] = false,
["Thirst"] = false,
["Godmode"] = false,
["Reload"] = false
}
local PlayerModes = {
{["NAME"] = "Horde", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
local clonesubject = nil
local stahp = false
local collected_zombies = {}
				for _, zombie in pairs(game.Workspace.Zombies:GetChildren()) do
						if #zombie:GetChildren() > 0 and #collected_zombies < 90 then
							table.insert(collected_zombies, zombie)
					end
				end
				for index = 0, 50, 5 do
						if index ~= 50 then
							local zombies = {unpack(collected_zombies, index)}
							for z_index = 1, 5 do
								local zombie = zombies[z_index]
								if zombie and pcall(game.IsA, zombie, "Instance") then
									local formula = z_index / 5 * math.pi * 2
									RepV(
										zombie,
										Player.Character.Torso.CFrame * CFrame.new(5 * math.sin(formula), 0, 5 * math.cos(formula))
									)
								end
							end
						end

				end
end)
end},
{["NAME"] = "Invis", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
function meh(root)
for _, v in pairs(root:GetChildren()) do
if v:IsA("BasePart") then
game.Lighting.Remote.BreakWindow2:FireServer(rekt, v, true)
end
meh(v)
end
end
meh(Player.Character)
game.Lighting.Remote.Destruct:FireServer(kek, Player.Character.Head.face)
end)
end},
{["NAME"] = "MakTroll", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
AddItem(Player.playerstats.slots.slot1, tonumber(2003))
AddItem(Player.playerstats.slots.slot2, tonumber(2003))
AddItem(Player.playerstats.slots.slot3, tonumber(2003))
AddItem(Player.playerstats.slots.slot4, tonumber(2003))
AddItem(Player.playerstats.slots.slot5, tonumber(2003))
AddItem(Player.playerstats.slots.slot6, tonumber(2003))
AddItem(Player.playerstats.slots.slot7, tonumber(2003))
AddItem(Player.playerstats.slots.slot8, tonumber(2003))
AddItem(Player.playerstats.slots.slot9, tonumber(2003))
AddItem(Player.playerstats.slots.slot10, tonumber(2003))
AddItem(Player.playerstats.slots.slot11, tonumber(2003))
AddItem(Player.playerstats.slots.slot12, tonumber(2003))
AddItem(Player.playerstats.slots.slot13, tonumber(2003))
AddItem(Player.playerstats.slots.slot14, tonumber(2003))
AddItem(Player.playerstats.slots.slot15, tonumber(2003))
AddItem(Player.playerstats.slots.slot16, tonumber(2003))
AddItem(Player.playerstats.slots.slot17, tonumber(2003))
AddItem(Player.playerstats.slots.slot18, tonumber(2003))
AddItem(Player.playerstats.slots.slot19, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
AddItem(Player.playerstats.slots.slot20, tonumber(2003))
end
end)
end},
{["NAME"] = "Loadout", ["FUNC"] = function(...) -- lelelelellelel
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
function meh(root)
for _, v in pairs(root:GetChildren()) do
if v.Name == "ObjectID" then
Destroy(v)
end
meh(v)
end
end
meh(Player.playerstats.slots)
end
AddItem(Player.playerstats.slots.slotprimary, tonumber(1023))
AddItem(Player.playerstats.slots.slotbackpack, tonumber(4016))
AddItem(Player.playerstats.slots.slot1, tonumber(9013))
AddItem(Player.playerstats.slots.slot2, tonumber(9006))
AddItem(Player.playerstats.slots.slot3, tonumber(53))
AddItem(Player.playerstats.slots.slot4, tonumber(53))
AddItem(Player.playerstats.slots.slot5, tonumber(53))
AddItem(Player.playerstats.slots.slot6, tonumber(53))
AddItem(Player.playerstats.slots.slot7, tonumber(53))
AddItem(Player.playerstats.slots.slot8, tonumber(53))
AddItem(Player.playerstats.slots.slot9, tonumber(53))
AddItem(Player.playerstats.slots.slot10, tonumber(53))
AddItem(Player.playerstats.slots.slot11, tonumber(53))
AddItem(Player.playerstats.slots.slot12, tonumber(53))
AddItem(Player.playerstats.slots.slot13, tonumber(53))
AddItem(Player.playerstats.slots.slot14, tonumber(53))
AddItem(Player.playerstats.slots.slot15, tonumber(53))
AddItem(Player.playerstats.slots.slot16, tonumber(11))
AddItem(Player.playerstats.slots.slot17, tonumber(11))
AddItem(Player.playerstats.slots.slot18, tonumber(11))
AddItem(Player.playerstats.slots.slot19, tonumber(11))
end)
end},
{["NAME"] = "Kill", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
Destroy(Player.Character.Head)
end
end)
end},
{["NAME"] = "Heal", ["FUNC"] = function(...) 
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
Heal(Player, 100)
end
end)
end},
{["NAME"] = "Hunger", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
ChangeVal(Player.playerstats.Hunger, 1000000)
end
end)
end},
{["NAME"] = "Thirst", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
ChangeVal(Player.playerstats.Thirst, 1000000)
end
end)
end},
{["NAME"] = "God", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
kek1 = game.Players.LocalPlayer.Character.Humanoid
kek2 = Player.Character.Humanoid
game.Lighting.Remote.ChangeParent:FireServer(kek, kek1, Player.Character)
game.Lighting.Remote.ChangeParent:FireServer(kek, kek2, game.Players.LocalPlayer.Character)
wait()
game.Lighting.Remote.HealthSet:FireServer(kek, "MaxHealth", math.huge)
game.Lighting.Remote.HealthSet:FireServer(kek, "Health", math.huge)
wait()
game.Lighting.Remote.ChangeParent:FireServer(kek, kek1, game.Players.LocalPlayer.Character)
game.Lighting.Remote.ChangeParent:FireServer(kek, kek2, Player.Character)
end
end)
end},
{["NAME"] = "UnGod", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
kek1 = game.Players.LocalPlayer.Character.Humanoid
kek2 = Player.Character.Humanoid
game.Lighting.Remote.ChangeParent:FireServer(kek, kek1, Player.Character)
game.Lighting.Remote.ChangeParent:FireServer(kek, kek2, game.Players.LocalPlayer.Character)
wait()
game.Lighting.Remote.HealthSet:FireServer(kek, "MaxHealth", 100)
game.Lighting.Remote.HealthSet:FireServer(kek, "Health", 100)
wait()
game.Lighting.Remote.ChangeParent:FireServer(kek, kek1, game.Players.LocalPlayer.Character)
game.Lighting.Remote.ChangeParent:FireServer(kek, kek2, Player.Character)
end
end)
end},
{["NAME"] = "Go To Player", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("Me To", math.floor(tick() % 1 * 100000), Player.Name)
end)
end},
{["NAME"] = "Bring Player", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), Player.Name)
end)
end},
{["NAME"] = "Kick", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
game.Lighting.Remote.SetCFrame:FireServer(Players[1].Character, CFrame.new(99e9,99e9,99e9))
end
end)
end},
{["NAME"] = "Clear loot", ["FUNC"] = function(...)
function meh(root)
for _, v in pairs(root:GetChildren()) do
if v:IsA("Model") then
Destroy(v)
end
meh(v)
end
end
meh(game.Workspace.DropLoot)
end},
{["NAME"] = "Fix mak", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
function meh(root)
for _, v in pairs(root:GetChildren()) do
if v.Name == "ObjectID" then
Destroy(v)
end
meh(v)
end
end
meh(Player.playerstats.slots)
end)
end}}
local LPModes = {
--[[{["NAME"] = "Stamina", ["FUNC"] = function()
if Stamina == true then
Stamina = false
ChangeVal(LP.Backpack.GlobalFunctions.Stamina, 100)
else
Stamina = true
ChangeVal(LP.Backpack.GlobalFunctions.Stamina, 100000)
end
end},]]
{["NAME"] = "Hunger", ["FUNC"] = function()
if Bools["Hunger"] == true then
Bools["Hunger"] = false
ChangeVal(LP.playerstats.Hunger, 100)
else
Bools["Hunger"] = true
ChangeVal(LP.playerstats.Hunger, 100000)
end
end},
{["NAME"] = "Thirst", ["FUNC"] = function()
if Bools["Thirst"] == true then
Bools["Thirst"] = false
ChangeVal(LP.playerstats.Thirst, 100)
else
Bools["Thirst"] = true
ChangeVal(LP.playerstats.Thirst, 100000)
end
end}
,
{["NAME"] = "Godmode", ["FUNC"] = function()
if Bools["Godmode"] == true then
Bools["Thirst"] = false
game.Lighting.Remote.HealthSet:FireServer(kek, "MaxHealth", 100)
game.Lighting.Remote.HealthSet:FireServer(kek, "Health", 100)
else
Bools["Godmode"] = true
game.Lighting.Remote.HealthSet:FireServer(kek, "MaxHealth", math.huge)
game.Lighting.Remote.HealthSet:FireServer(kek, math.huge)
end
end}
}
local VehicleSpeeds = {
["Humvee"] = {["MaxSpeed"] = 62, ["Offroad"] = 40},
["Humvee2"] = {["MaxSpeed"] = 62, ["Offroad"] = 40},
["Jeep"] = {["MaxSpeed"] = 58, ["Offroad"] = 40},
["Jeep2"] = {["MaxSpeed"] = 58, ["Offroad"] = 40},
["SUV"] = {["MaxSpeed"] = 60, ["Offroad"] = 42},
["Car"] = {["MaxSpeed"] = 60, ["Offroad"] = 35},
["ATV"] = {["MaxSpeed"] = 52, ["Offroad"] = 46},
["Ambulance"] = {["MaxSpeed"] = 65, ["Offroad"] = 35},
["Bicycle"] = {["MaxSpeed"] = 36, ["Offroad"] = 28},
["Pickup"] = {["MaxSpeed"] = 58, ["Offroad"] = 40},
["Pickup2"] = {["MaxSpeed"] = 58, ["Offroad"] = 40},
["Tractor"] = {["MaxSpeed"] = 45, ["Offroad"] = 40},
["Motorside"] = {["MaxSpeed"] = 55, ["Offroad"] = 35},
["Motorcycle"] = {["MaxSpeed"] = 55, ["Offroad"] = 35},
["Ural"] = {["MaxSpeed"] = 55, ["Offroad"] = 35},
["Ural2"] = {["MaxSpeed"] = 55, ["Offroad"] = 35},
["DeliveryVan"] = {["MaxSpeed"] = 58, ["Offroad"] = 30},
["PoliceCar"] = {["MaxSpeed"] = 68, ["Offroad"] = 36},
["Firetruck"] = {["MaxSpeed"] = 66, ["Offroad"] = 36},
}
local VehicleModes = {
{["NAME"] = "GodVehicle", ["FUNC"] = function(...)
local tab = {...}
local Veh = tab[1]
ForEach(Veh.Stats:GetChildren(), function(Value)
if Value.Name ~= "MaxSpeed" or Value.Name ~= "Speed" then
Value.Value = 9999999
ChangeVal(Veh.Stats.Armor.Max, 9999999)
wait(0.1)
ChangeVal(Veh.Stats.Armor, 9999999)
end
end)
end
},
{["NAME"] = "UnGodVehicle", ["FUNC"] = function(...)
local tab = {...}
local Veh = tab[1]
ForEach(Veh.Stats:GetChildren(), function(Value)
ChangeVal(Value, Value:GetChildren()[1].Value)
end)
end},
{["NAME"] = "TPVehicle", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[2])
local Veh = tab[1]
RepV(Veh,Players[1].Character.Torso.CFrame * CFrame.new(-20, 0, 0))
end},
{["NAME"] = "CloneVehicle", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[2])
local Veh = tab[1]
game.Lighting.Remote.PlaceMaterial:FireServer(Veh, Vector3.new(0,0,0))
local wow = workspace:WaitForChild(Veh.Name)
game.Lighting.Remote.ChangeParent:FireServer(kek, wow, workspace.Vehicles)
game.Lighting.Remote.SetCFrame:FireServer(wow, Players[1].Character.Torso.CFrame * CFrame.new(-20, 0, 0))
end},
{["NAME"] = "ExplVehicle", ["FUNC"] = function(...)
local tab = {...}
local Veh = tab[1]
ChangeVal(Veh.Stats.Engine, 0)
end},
{["NAME"] = "SetOnRoadSpeed", ["FUNC"] = function(...)
local tab = {...}
local Veh = tab[1]
ChangeVal(Veh.Stats.MaxSpeed, tonumber(tab[2]))
end},
{["NAME"] = "SetOffRoadSpeed", ["FUNC"] = function(...)
local tab = {...}
local Veh = tab[1]
ChangeVal(Veh.Stats.MaxSpeed.Offroad, tonumber(tab[2]))
end},
{["NAME"] = "ResetSpeed", ["FUNC"] = function(...)
local tab = {...}
local Veh = tab[1]
ForEach(VehicleSpeeds[Veh.Name], function(Value, Index)
ChangeVal(Veh.Stats.MaxSpeed, Value.MaxSpeed)
ChangeVal(Veh.Stats.MaxSpeed.Offroad, Value.MaxSpeed.Offroad)
end)
end},
{["NAME"] = "HornId", ["FUNC"] = function(...)
local tab = {...}
local Veh = tab[1]
Sound(Veh.Essentials.Base.Horn, "http://www.roblox.com/asset/?id="..tostring(game.CoreGui.SpawnGui.BigFrame.Server.Vehicle.HornId.Box.Text))
game.Lighting.Remote.SoundPitchLocalSet:FireServer(kek, Veh.Essentials.Base.Horn, 1)
game.Lighting.Remote.SoundVolumeLocalSet:FireServer(kek, Veh.Essentials.Base.Horn, 1)
end},
}
local LoadOuts = {
{["NAME"] = "Mercenary (MK 17)", ["ITEMS"] = {
"Map",
"Entrencher",
"Sabre",
"GPS",
"Compass",
"Detonator",
"OmniLight",

"MilitaryPackBlack",
"Mk 17",
"Suppressor762",
"ACOG",
"Grip",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"C4",
"BloodBag",
"BloodBag",
"BloodBag",
"BloodBag",
"MRE",
"MRE",
"WaterBottle",
"WaterBottle"
}},
{["NAME"] = "Overwatch (M14)", ["ITEMS"] = {
"Map",
"Entrencher",
"Sabre",
"GPS",
"Compass",
"OmniLight",

"MilitaryPackBlack",
"M14",
"Suppressor762",
"ACOG",
"Grip",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"BloodBag",
"BloodBag",
"BloodBag",
"BloodBag",
"MRE",
"MRE",
"WaterBottle",
"WaterBottle",
"VS50",
"VS50"
}},
{["NAME"] = "Breacher (M4A1)", ["ITEMS"] = {
"Map",
"Entrencher",
"Sabre",
"GPS",
"Compass",
"OmniLight",

"MilitaryPackBlack",
"M4A1",
"Suppressor556",
"ACOG",
"Grip",
"STANAGAmmo100",
"STANAGAmmo100",
"STANAGAmmo100",
"STANAGAmmo100",
"STANAGAmmo100",
"STANAGAmmo100",
"STANAGAmmo100",
"STANAGAmmo100",
"BloodBag",
"BloodBag",
"BloodBag",
"BloodBag",
"Painkillers",
"Painkillers",
"Painkillers",
"Painkillers",
"MRE",
"MRE",
"WaterBottle",
"WaterBottle",

}},
{["NAME"] = "Mercenary (FAL)", ["ITEMS"] = {
"Map",
"Entrencher",
"Sabre",
"GPS",
"Compass",
"Detonator",
"OmniLight",

"MilitaryPackBlack",
"FAL",
"Suppressor762",
"ACOG",
"Grip",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"M14Ammo50",
"C4",
"BloodBag",
"BloodBag",
"BloodBag",
"BloodBag",
"MRE",
"MRE",
"WaterBottle",
"WaterBottle"
}},
{["NAME"] = "Terrorist", ["ITEMS"] = {
"Map",
"Entrencher",
"Sabre",
"GPS",
"Compass",
"Detonator",
"OmniLight",

"MilitaryPackBlack",
"AK-47",
"AK47Ammo75",
"AK47Ammo75",
"AK47Ammo75",
"AK47Ammo75",
"AK47Ammo75",
"AK47Ammo75",
"AK47Ammo75",
"AK47Ammo75",
"AK47Ammo75",
"C4",
"C4",
"C4",
"C4",
"C4",
"C4",
"C4",
"C4",
"C4",
"C4",
}},
{["NAME"] = "Vehicle Repair", ["ITEMS"] = {
"ReinforcedWheel",
"ReinforcedWheel",
"ReinforcedWheel",
"ReinforcedWheel",
"ReinforcedWheel",
"ReinforcedWheel",

"JerryCan",
"JerryCan",
"JerryCan",
"JerryCan",

"FuelTank",
"Engine",
"ScrapMetal",
"ArmorPlates",

"BallisticGlass"
}},
}
local Stats = {
{["NAME"] = "PlayerKills", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
ChangeVal(Player.playerstats.PlayerKill.Aggressive, tonumber(tab[2]))
end
end)
end},
{["NAME"] = "ZombieKills", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
ChangeVal(Player.playerstats.ZombieKill.Military, tonumber(tab[2]))
spawn(function()
local d = Player.playerstats.Days.Value
wait(0.1)
ChangeVal(Player.playerstats.Days, 0)
wait(1)
ChangeVal(Player.playerstats.Days, d)
end)
end
end)
end},
{["NAME"] = "Days", ["FUNC"] = function(...)
local tab = {...}
local Players = GetPlayers(tab[1])
ForEach(Players, function(Player)
if Player and game.Workspace:findFirstChild(Player.Name) then
ChangeVal(Player.playerstats.Days, tonumber(tab[2]))
end
end)
end},
}
local DropIDs = {
{["NAME"] = "AK-104", ["ID"] = "1037"},
{["NAME"] = "WindscreenGlass", ["ID"] = "184"},
{["NAME"] = "WaterBottle", ["ID"] = "209"},
{["NAME"] = "Watch", ["ID"] = "3001"},
{["NAME"] = "VehicleJack", ["ID"] = "3016"},
{["NAME"] = "Vegetables", ["ID"] = "214"},
{["NAME"] = "VS50", ["ID"] = "256"},
{["NAME"] = "Uzi", ["ID"] = "2015"},
{["NAME"] = "Ushanka", ["ID"] = "7014"},
{["NAME"] = "USP45Ammo", ["ID"] = "26"},
{["NAME"] = "USP45", ["ID"] = "2007"},
{["NAME"] = "Twinkies", ["ID"] = "212"},
{["NAME"] = "Tuna", ["ID"] = "4"},
{["NAME"] = "TrinityBeret", ["ID"] = "7015"},
{["NAME"] = "TomatoSoup", ["ID"] = "215"},
{["NAME"] = "TM46", ["ID"] = "257"},
{["NAME"] = "TEC9Ammo32", ["ID"] = "57"},
{["NAME"] = "TEC9Ammo20", ["ID"] = "56"},
{["NAME"] = "TEC9Ammo", ["ID"] = "20"},
{["NAME"] = "TEC-9", ["ID"] = "2005"},
{["NAME"] = "SurvivalPackTan", ["ID"] = "4009"},
{["NAME"] = "SurvivalPackGrey", ["ID"] = "4010"},
{["NAME"] = "SurvivalPackGreen", ["ID"] = "4011"},
{["NAME"] = "SurvivalPackBrown", ["ID"] = "4012"},
{["NAME"] = "Suppressor9", ["ID"] = "9007"},
{["NAME"] = "Suppressor762", ["ID"] = "9010"},
{["NAME"] = "Suppressor556", ["ID"] = "9009"},
{["NAME"] = "Suppressor545", ["ID"] = "9011"},
{["NAME"] = "Suppressor45", ["ID"] = "9008"},
{["NAME"] = "Spam", ["ID"] = "6"},
{["NAME"] = "SodaSprite", ["ID"] = "205"},
{["NAME"] = "SodaRoot", ["ID"] = "207"},
{["NAME"] = "SodaPepsi", ["ID"] = "7"},
{["NAME"] = "SodaPepper", ["ID"] = "9"},
{["NAME"] = "SodaMoxie", ["ID"] = "208"},
{["NAME"] = "SodaDew", ["ID"] = "202"},
{["NAME"] = "SodaCrush", ["ID"] = "201"},
{["NAME"] = "SodaCoke", ["ID"] = "8"},
{["NAME"] = "ShotgunAmmo", ["ID"] = "18"},
{["NAME"] = "Shotgun", ["ID"] = "1002"},
{["NAME"] = "ShadesGrey", ["ID"] = "8005"},
{["NAME"] = "ShadesBlack", ["ID"] = "8001"},
{["NAME"] = "ScrapMetal", ["ID"] = "183"},
{["NAME"] = "Sabre", ["ID"] = "3014"},
{["NAME"] = "SUSAT", ["ID"] = "9014"},
{["NAME"] = "STANAGAmmo50", ["ID"] = "52"},
{["NAME"] = "STANAGAmmo30", ["ID"] = "51"},
{["NAME"] = "STANAGAmmo100", ["ID"] = "53"},
{["NAME"] = "SKSAmmo", ["ID"] = "45"},
{["NAME"] = "SKS", ["ID"] = "1018"},
{["NAME"] = "SCAR-L", ["ID"] = "1022"},
{["NAME"] = "RoadFlare", ["ID"] = "251"},
{["NAME"] = "RevolverAmmo", ["ID"] = "25"},
{["NAME"] = "Revolver", ["ID"] = "2006"},
{["NAME"] = "ReinforcedWheel", ["ID"] = "189"},
{["NAME"] = "Reflex", ["ID"] = "9003"},
{["NAME"] = "RedChemlight", ["ID"] = "3020"},
{["NAME"] = "RedBeret", ["ID"] = "7013"},
{["NAME"] = "RawMeat", ["ID"] = "220"},
{["NAME"] = "Ranger", ["ID"] = "7003"},
{["NAME"] = "RamboClothingTop", ["ID"] = "5003"},
{["NAME"] = "RamboClothingBottom", ["ID"] = "6003"},
{["NAME"] = "Radio", ["ID"] = "3018"},
{["NAME"] = "RPK", ["ID"] = "1034"},
{["NAME"] = "Pringles", ["ID"] = "204"},
{["NAME"] = "PilotGreen", ["ID"] = "7010"},
{["NAME"] = "PilotBlack", ["ID"] = "7009"},
{["NAME"] = "Pasta", ["ID"] = "5"},
{["NAME"] = "Painkillers", ["ID"] = "12"},
{["NAME"] = "PaddedClothingTop", ["ID"] = "5002"},
{["NAME"] = "PaddedClothingBottom", ["ID"] = "6002"},
{["NAME"] = "PPSHAmmo", ["ID"] = "46"},
{["NAME"] = "PPSH", ["ID"] = "1019"},
{["NAME"] = "PP19Ammo64", ["ID"] = "58"},
{["NAME"] = "SmallCrate", ["ID"] = "38"},
{["NAME"] = "OmniLight", ["ID"] = "3015"},
{["NAME"] = "OTs-14", ["ID"] = "1036"},
{["NAME"] = "NagantAmmo", ["ID"] = "17"},
{["NAME"] = "Mosin-Nagant", ["ID"] = "1001"},
{["NAME"] = "Model459Ammo14", ["ID"] = "59"},
{["NAME"] = "Model 459", ["ID"] = "2013"},
{["NAME"] = "Mk48Ammo", ["ID"] = "23"},
{["NAME"] = "Mk 48", ["ID"] = "1005"},
{["NAME"] = "Mk 23", ["ID"] = "2018"},
{["NAME"] = "Mk 17", ["ID"] = "1031"},
{["NAME"] = "MilitaryPackGrime", ["ID"] = "4013"},
{["NAME"] = "MilitaryPackGrey", ["ID"] = "4015"},
{["NAME"] = "MilitaryPackGreen", ["ID"] = "4014"},
{["NAME"] = "MilitaryPackBlack", ["ID"] = "4016"},
{["NAME"] = "MaverickAmmo", ["ID"] = "27"},
{["NAME"] = "Maverick", ["ID"] = "1010"},
{["NAME"] = "Material6", ["ID"] = "36"},
{["NAME"] = "Material5", ["ID"] = "35"},
{["NAME"] = "Material4", ["ID"] = "34"},
{["NAME"] = "Material3", ["ID"] = "33"},
{["NAME"] = "Material2", ["ID"] = "32"},
{["NAME"] = "Material1", ["ID"] = "31"},
{["NAME"] = "Matches", ["ID"] = "3005"},
{["NAME"] = "MaskSpecOps", ["ID"] = "8009"},
{["NAME"] = "MaskPhantom", ["ID"] = "8013"},
{["NAME"] = "MaskMime", ["ID"] = "8008"},
{["NAME"] = "MaskMercenary", ["ID"] = "8007"},
{["NAME"] = "MaskHockey", ["ID"] = "8012"},
{["NAME"] = "Map", ["ID"] = "3003"},
{["NAME"] = "MakarovAmmo", ["ID"] = "16"},
{["NAME"] = "Makarov", ["ID"] = "2003"},
{["NAME"] = "MRE", ["ID"] = "10"},
{["NAME"] = "MP5Ammo", ["ID"] = "29"},
{["NAME"] = "MP5", ["ID"] = "1012"},
{["NAME"] = "M9Ammo32", ["ID"] = "55"},
{["NAME"] = "M9Ammo17", ["ID"] = "54"},
{["NAME"] = "M9Ammo", ["ID"] = "19"},
{["NAME"] = "M93R", ["ID"] = "2016"},
{["NAME"] = "M9", ["ID"] = "2004"},
{["NAME"] = "M870Ammo", ["ID"] = "28"},
{["NAME"] = "M870", ["ID"] = "1011"},
{["NAME"] = "M4A1Ammo", ["ID"] = "22"},
{["NAME"] = "M4A1", ["ID"] = "1004"},
{["NAME"] = "M3Ammo30", ["ID"] = "60"},
{["NAME"] = "M3", ["ID"] = "1028"},
{["NAME"] = "M249Ammo100", ["ID"] = "61"},
{["NAME"] = "M249", ["ID"] = "1024"},
{["NAME"] = "M1911Ammo", ["ID"] = "15"},
{["NAME"] = "M1911", ["ID"] = "2002"},
{["NAME"] = "M14Ammo50", ["ID"] = "64"},
{["NAME"] = "M14Ammo30", ["ID"] = "63"},
{["NAME"] = "M14Ammo20", ["ID"] = "62"},
{["NAME"] = "M14", ["ID"] = "1016"},
{["NAME"] = "M1014", ["ID"] = "1027"},
{["NAME"] = "M1 Garand", ["ID"] = "1006"},
{["NAME"] = "Lemonade", ["ID"] = "206"},
{["NAME"] = "Laser", ["ID"] = "9006"},
{["NAME"] = "Kobra", ["ID"] = "9004"},
{["NAME"] = "Knife", ["ID"] = "3013"},
{["NAME"] = "KethArmorTop", ["ID"] = "5011"},
{["NAME"] = "KethArmorBottom", ["ID"] = "6011"},
{["NAME"] = "JerryCanEmpty", ["ID"] = "186"},
{["NAME"] = "JerryCan", ["ID"] = "185"},
{["NAME"] = "HornRimmed", ["ID"] = "8006"},
{["NAME"] = "Holo", ["ID"] = "9002"},
{["NAME"] = "HikingPackWhite", ["ID"] = "4006"},
{["NAME"] = "HikingPackOrange", ["ID"] = "4005"},
{["NAME"] = "HikingPackBrown", ["ID"] = "4008"},
{["NAME"] = "HikingPackBlue", ["ID"] = "4007"},
{["NAME"] = "Hatchet", ["ID"] = "3011"},
{["NAME"] = "HK417", ["ID"] = "1033"},
{["NAME"] = "HK21", ["ID"] = "1032"},
{["NAME"] = "GusArmorTop", ["ID"] = "5010"},
{["NAME"] = "GusArmorBottom", ["ID"] = "6010"},
{["NAME"] = "Grip", ["ID"] = "9005"},
{["NAME"] = "GreenChemlight", ["ID"] = "3021"},
{["NAME"] = "GarandAmmo", ["ID"] = "24"},
{["NAME"] = "GPS", ["ID"] = "3006"},
{["NAME"] = "G37", ["ID"] = "2017"},
{["NAME"] = "G36K", ["ID"] = "1023"},
{["NAME"] = "G3", ["ID"] = "1030"},
{["NAME"] = "G18Ammo", ["ID"] = "41"},
{["NAME"] = "G18", ["ID"] = "2011"},
{["NAME"] = "FuelTank", ["ID"] = "182"},
{["NAME"] = "Floodlight", ["ID"] = "37"},
{["NAME"] = "FlashlightSurvival", ["ID"] = "3009"},
{["NAME"] = "FlashlightOld", ["ID"] = "3008"},
{["NAME"] = "FlashlightMilitary", ["ID"] = "3010"},
{["NAME"] = "FlashlightAttachment", ["ID"] = "9012"},
{["NAME"] = "Firewood", ["ID"] = "250"},
{["NAME"] = "Firefighter", ["ID"] = "8004"},
{["NAME"] = "FedorovAmmo", ["ID"] = "44"},
{["NAME"] = "Fedorov", ["ID"] = "1017"},
{["NAME"] = "Fedora", ["ID"] = "7004"},
{["NAME"] = "FannyPackWhite", ["ID"] = "4002"},
{["NAME"] = "FannyPackTan", ["ID"] = "4001"},
{["NAME"] = "FannyPackPurple", ["ID"] = "4004"},
{["NAME"] = "FannyPackBlue", ["ID"] = "4003"},
{["NAME"] = "FAL", ["ID"] = "1029"},
{["NAME"] = "Eyepatch", ["ID"] = "8003"},
{["NAME"] = "Entrencher", ["ID"] = "3004"},
{["NAME"] = "EngineParts", ["ID"] = "181"},
{["NAME"] = "EnfieldAmmo", ["ID"] = "42"},
{["NAME"] = "Enfield", ["ID"] = "1015"},
{["NAME"] = "Detonator", ["ID"] = "3017"},
{["NAME"] = "Crowbar", ["ID"] = "3012"},
{["NAME"] = "CowlGreen", ["ID"] = "7002"},
{["NAME"] = "CowlBlack", ["ID"] = "7001"},
{["NAME"] = "Cowboy", ["ID"] = "7012"},
{["NAME"] = "CookedMeat", ["ID"] = "221"},
{["NAME"] = "Compass", ["ID"] = "3002"},
{["NAME"] = "ClothingTopFalse", ["ID"] = "5000"},
{["NAME"] = "ClothingBottomFalse", ["ID"] = "6000"},
{["NAME"] = "CivilianClothingTop", ["ID"] = "5001"},
{["NAME"] = "CivilianClothingBottom", ["ID"] = "6001"},
{["NAME"] = "ChocolateBar", ["ID"] = "211"},
{["NAME"] = "ChipsAhoy", ["ID"] = "213"},
{["NAME"] = "ChickenSoup", ["ID"] = "216"},
{["NAME"] = "CheezIts", ["ID"] = "203"},
{["NAME"] = "CarWheel", ["ID"] = "180"},
{["NAME"] = "CamoWoodlandsTop", ["ID"] = "5007"},
{["NAME"] = "CamoWoodlandsBottom", ["ID"] = "6007"},
{["NAME"] = "CamoUrbanTop", ["ID"] = "5005"},
{["NAME"] = "CamoUrbanBottom", ["ID"] = "6005"},
{["NAME"] = "CamoSpecialTop", ["ID"] = "5009"},
{["NAME"] = "CamoSpecialBottom", ["ID"] = "6009"},
{["NAME"] = "CamoSnowTop", ["ID"] = "5008"},
{["NAME"] = "CamoSnowBottom", ["ID"] = "6008"},
{["NAME"] = "CamoJungleTop", ["ID"] = "5006"},
{["NAME"] = "CamoJungleBottom", ["ID"] = "6006"},
{["NAME"] = "CamoDesertTop", ["ID"] = "5004"},
{["NAME"] = "CamoDesertBottom", ["ID"] = "6004"},
{["NAME"] = "CZ75Ammo", ["ID"] = "40"},
{["NAME"] = "CZ75", ["ID"] = "2010"},
{["NAME"] = "CCO", ["ID"] = "9001"},
{["NAME"] = "CBJ-MS", ["ID"] = "2014"},
{["NAME"] = "C4", ["ID"] = "255"},
{["NAME"] = "BrimmedBrown", ["ID"] = "7007"},
{["NAME"] = "BrimmedBlack", ["ID"] = "7008"},
{["NAME"] = "Bowler", ["ID"] = "7005"},
{["NAME"] = "BlueChemlight", ["ID"] = "3022"},
{["NAME"] = "BloodBag", ["ID"] = "11"},
{["NAME"] = "Binoculars", ["ID"] = "3007"},
{["NAME"] = "Biker", ["ID"] = "7006"},
{["NAME"] = "BeefStew", ["ID"] = "217"},
{["NAME"] = "BeefJerky", ["ID"] = "210"},
{["NAME"] = "Beans", ["ID"] = "3"},
{["NAME"] = "Beanie", ["ID"] = "7011"},
{["NAME"] = "BandanaSkull", ["ID"] = "8014"},
{["NAME"] = "BandanaRenegade", ["ID"] = "8011"},
{["NAME"] = "BandanaRed", ["ID"] = "8010"},
{["NAME"] = "BandanaBlack", ["ID"] = "8002"},
{["NAME"] = "BallisticUrban", ["ID"] = "7018"},
{["NAME"] = "BallisticSpecOps", ["ID"] = "7019"},
{["NAME"] = "BallisticJungle", ["ID"] = "7017"},
{["NAME"] = "BallisticGlass", ["ID"] = "187"},
{["NAME"] = "BallisticDesert", ["ID"] = "7016"},
{["NAME"] = "Auto-5", ["ID"] = "1025"},
{["NAME"] = "ArmorPlates", ["ID"] = "188"},
{["NAME"] = "AN-94", ["ID"] = "1040"},
{["NAME"] = "AKS-74U", ["ID"] = "1041"},
{["NAME"] = "AKM", ["ID"] = "1038"},
{["NAME"] = "AKAmmo75", ["ID"] = "67"},
{["NAME"] = "AKAmmo45", ["ID"] = "66"},
{["NAME"] = "AKAmmo30", ["ID"] = "65"},
{["NAME"] = "AK47Ammo75", ["ID"] = "50"},
{["NAME"] = "AK47Ammo40", ["ID"] = "49"},
{["NAME"] = "AK47Ammo30", ["ID"] = "48"},
{["NAME"] = "AK-74", ["ID"] = "1039"},
{["NAME"] = "AK-47", ["ID"] = "1003"},
{["NAME"] = "AK-12", ["ID"] = "1035"},
{["NAME"] = "ACOG", ["ID"] = "9013"},
{["NAME"] = "LargeCrate", ["ID"] = "39"},
{["NAME"] = "PP-19", ["ID"] = "1026"},
}
RepV = function(veh,cf)
game.Lighting.Remote.SetCFrame:FireServer(veh,cf)
end
ChangeVal = function(instance, property, new_val)
game.Lighting.Remote.ChangeValue:FireServer(rekt, instance, property, new_val)
end
Sound = function(instance, SoundID)
game.Lighting.Remote.SoundIdSet:FireServer(rekt, instance, SoundID)
end
CreateVal = function(parent, new_val)
game.Lighting.Remote.CreateValue:FireServer("ObjectID", parent, new_val)
print(parent:findFirstChild("ObjectID") and "found" or "missing")
end
CreateSlot = function(number, parent, new_val)
game.Lighting.Remote.CreateValue:FireServer("slot[number]", parent, new_val)
end
Damage = function(Player, Amount)
game.Lighting.Remote.AddDamage:FireServer(Player.Character.Humanoid, Amount)
end
Heal = function(Player, Amount)
game.Lighting.Remote.AddHealth:FireServer(Player.Character.Humanoid, Amount)
end
AddItem = function(Slot, ID)
game.Lighting.Remote.AddObject:FireServer(Slot, ID)
end
DropItem = function(Slot, oID)
game.Lighting.Remote.DropItem:FireServer(Slot, oID)
end
Destroy = function(instance)
game.Lighting.Remote.Destruct:FireServer(kek, instance)
end
GenerateList = function(Data, Parent)
for i,v in pairs(Parent:GetChildren()) do
if v ~= Template then
v:Destroy()
end
end

for i = 1, #Data do
local YSize = 13
local YPos = ((i * YSize) - YSize)
local newLabel = Template:Clone()

if Parent.Parent.Name == "ItemSpawn" then
newLabel.Name = Data[i].NAME
newLabel.Text = Data[i].NAME
else
newLabel.Name = Data[i].Name
newLabel.Text = Data[i].Name
end
newLabel.Parent = Parent
newLabel.Visible = true
newLabel.Position = UDim2.new(0, 2, 0, YPos + 2)

Parent.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 4)

newLabel.MouseButton1Click:connect(function()
if Parent.Name == "ItemList" then
if Parent.Parent.Name == "ItemSpawn" then
Parent.Parent.Item.Box.Text = Data[i].NAME
GenerateList(DropIDs, Parent)
else
Parent.Parent.Item.Box.Text = Data[i].Name
GenerateList(game.Lighting.LootDrops:GetChildren(), Parent)
Parent.Parent.Count.Box.Text = "1"
end
elseif Parent.Name == "PlayerList" then
if Parent.Parent.Name == "Vehicle" then
Parent.Parent.TPVehicle.Box.Text = Data[i].Name
else
Parent.Parent.Player.Box.Text = Data[i].Name
end
elseif Parent.Name == "ModeList" then
Parent.Parent.Mode.Box.Text = Data[i].Name
elseif Parent.Name == "StatList" then
Parent.Parent.Stat.Box.Text = Data[i].Name
end
end)
end
end
GenerateList(game.Lighting.LootDrops:GetChildren(), LF.Frame.ItemList)
GenerateList(DropIDs, SF.ItemSpawn.ItemList)
GenerateList(game.Players:GetChildren(), SF.Player.Frame.PlayerList)
GenerateList(game.Players:GetChildren(), SF.Player.StatChange.PlayerList)
GenerateList(game.Players:GetChildren(), SF.Vehicle.PlayerList)
game.Players.PlayerAdded:connect(function(obj)
GenerateList(game.Players:GetChildren(), SF.Player.Frame.PlayerList)
GenerateList(game.Players:GetChildren(), SF.Player.StatChange.PlayerList)
GenerateList(game.Players:GetChildren(), SF.Vehicle.PlayerList)
end)
game.Players.PlayerRemoving:connect(function(obj)
GenerateList(game.Players:GetChildren(), SF.Player.Frame.PlayerList)
GenerateList(game.Players:GetChildren(), SF.Player.StatChange.PlayerList)
GenerateList(game.Players:GetChildren(), SF.Vehicle.PlayerList)
end)
spawn(function()
for i,v in pairs(PlayerFr.Frame.ModeList:GetChildren()) do
if v ~= Template then
v:Destroy()
end
end
for i = 1, #PlayerModes do
local YSize = 13
local YPos = ((i * YSize) - YSize)
local newLabel = Template:Clone()

newLabel.Name = PlayerModes[i].NAME
newLabel.Text = PlayerModes[i].NAME
newLabel.Parent = PlayerFr.Frame.ModeList
newLabel.Visible = true
newLabel.Position = UDim2.new(0, 2, 0, YPos + 2)

PlayerFr.Frame.ModeList.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 4)

newLabel.MouseButton1Click:connect(function()
PlayerFr.Frame.Mode.Box.Text = PlayerModes[i].NAME
end)
end
end)
spawn(function()
for i,v in pairs(LF.Frame.LoadOutList:GetChildren()) do
if v ~= Template then
v:Destroy()
end
end
for i = 1, #LoadOuts do
local YSize = 13
local YPos = ((i * YSize) - YSize)
local newLabel = Template:Clone()

newLabel.Name = LoadOuts[i].NAME
newLabel.Text = LoadOuts[i].NAME
newLabel.Parent = LF.Frame.LoadOutList
newLabel.Visible = true
newLabel.Position = UDim2.new(0, 2, 0, YPos + 2)

LF.Frame.LoadOutList.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 4)

newLabel.MouseButton1Click:connect(function()
PlayerFr.Frame.Item.Box.Text = LoadOuts[i].NAME
end)
end
end)
spawn(function()
for i,v in pairs(PlayerFr.StatChange.StatList:GetChildren()) do
if v ~= Template then
v:Destroy()
end
end
for i = 1, #Stats do
local YSize = 13
local YPos = ((i * YSize) - YSize)
local newLabel = Template:Clone()

newLabel.Name = Stats[i].NAME
newLabel.Text = Stats[i].NAME
newLabel.Parent = PlayerFr.StatChange.StatList
newLabel.Visible = true
newLabel.Position = UDim2.new(0, 2, 0, YPos + 2)

PlayerFr.StatChange.StatList.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 4)

newLabel.MouseButton1Click:connect(function()
PlayerFr.StatChange.Stat.Box.Text = Stats[i].NAME
end)
end
end)
SpawnItem = function(String)
local Angle = math.random(1, 63) / 10
local Drop = game.Lighting.LootDrops[String]:Clone()
Drop.Parent = game.Workspace
Drop:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(6 * math.cos(Angle), 0, 6 * math.sin(Angle)))
end
ServerSpawnItem = function(String)
for i, v in pairs(DropIDs) do
if String:lower() == DropIDs[i].NAME:lower() then
wait(1)
AddItem(game.Players.LocalPlayer.playerstats.slots.slot20, tonumber(DropIDs[i].ID))
game.Players.LocalPlayer.playerstats.slots.slot20:WaitForChild("ObjectID")
DropItem(game.Players.LocalPlayer.playerstats.slots.slot20, game.Players.LocalPlayer.playerstats.slots.slot20.ObjectID)
local ev
ev = game.Workspace.DropLoot.ChildAdded:connect(function(obj)
if obj.Name == String then
if not obj:findFirstChild("ObjectID") then
CreateVal(obj, game.Lighting:findFirstChild(String).ObjectID.Value)
end
else
Destroy(obj)
end
end)
ev:disconnect()
end
end
end
ForEach = function(Base, Function)
for Index, Value in pairs (Base) do
Function(Value, Index)
end
end
GetPlayers = function(String) -- note 2 self: snipped this from my cmdscript
local UsersCalled = {}
for newString in String:gmatch('([^,]+)') do -- thanks scleratis
if newString:lower() == "me" then
table.insert(UsersCalled, game.Players.LocalPlayer)
elseif newString:lower() == "all" then
ForEach(game.Players:children(), function(Player)
table.insert(UsersCalled, Player)
end)
elseif newString:lower() == "others" then
ForEach(game.Players:children(), function(Player)
if Player ~= game.Players.LocalPlayer then
table.insert(UsersCalled, Player)
end
end)
elseif newString:lower() == "random" then
table.insert(UsersCalled, game.Players:children()[math.random(#game.Players:children())])
else
for i,v in pairs(game.Players:children()) do
if v.Name:lower():sub(1, #newString) == newString:lower() then
table.insert(UsersCalled, v)
end
end
end
end
return UsersCalled
end
AdjustPlr = function(Table, Forward)
local Plrs = Table

if Forward == true then
CurrPlrIndex = CurrPlrIndex + 1
else
CurrPlrIndex = CurrPlrIndex - 1
if CurrPlrIndex < 1 then
CurrPlrIndex = game.Players.NumPlrs
end
end

if Plrs[CurrPlrIndex] ~= nil then
CurrPlr = Plrs[CurrPlrIndex]
game.Workspace.CurrentCamera.CameraSubject = CurrPlr.Character.Humanoid
--if Plrs[CurrPlrIndex] ~= game.Players.LocalPlayer then
spawn(function()
local index = CurrPlrIndex
while CurrPlrIndex == index do
wait()

local health, maxhealth
if game.Workspace:findFirstChild(CurrPlr.Name) then
health = CurrPlr.Character.Humanoid.Health
maxhealth = CurrPlr.Character.Humanoid.MaxHealth
end

pInfo.Bar.Size = UDim2.new(health / maxhealth, 0, 1, 0)
pInfo.Health.Text = tostring(math.floor(health))
pInfo.pName.Text = CurrPlr.Name
end
end)
--end
elseif Plrs[CurrPlrIndex] == nil then
Plrs[CurrPlrIndex] = NumPlrs
CurrPlr = Plrs[CurrPlrIndex]
game.Workspace.CurrentCamera.CameraSubject = Plrs[CurrPlrIndex].Character.Humanoid
end

end
AdjustVeh = function(Table, Forward)
local Vehs = Table

if Forward == true then
CurrVehIndex = CurrVehIndex + 1
else
CurrVehIndex = CurrVehIndex - 1
end

if Vehs[CurrVehIndex] ~= nil then
CurrVeh = Vehs[CurrVehIndex]
elseif Vehs[CurrVehIndex] == nil then
Vehs[CurrVehIndex] = #Vehs
CurrVeh = Vehs[CurrVehIndex]
end

VehicleFr.CurrentVehicle.Text = CurrVeh.Name
end
LocalSpawn.Spawn.MouseButton1Click:connect(function()
local Amount, Count = 0, 0
if LocalSpawn.Count.Box.Text == "" then
Amount = 1
else
Amount = tonumber(LocalSpawn.Count.Box.Text)
end
repeat
wait()
Count = Count + 1
SpawnItem(LocalSpawn.Item.Box.Text)
until
Count == Amount

LocalSpawn.Count.Box.Text = ""
LocalSpawn.Item.Box.Text = ""
end)
ServerSpawn.Spawn.MouseButton1Click:connect(function()
local Amount, Count = 0, 0
if ServerSpawn.Count.Box.Text == "" then
Amount = 1
else
Amount = tonumber(ServerSpawn.Count.Box.Text)
end
if Amount > 15 then
Amount = 15
end
repeat
wait()
Count = Count + 1
ServerSpawnItem(ServerSpawn.Item.Box.Text)
until
Count == Amount

ServerSpawn.Count.Box.Text = ""
ServerSpawn.Item.Box.Text = ""
end)
PlayerFr.Frame.Execute.MouseButton1Click:connect(function()
for i, v in pairs(PlayerModes) do
if PlayerModes[i].NAME == PlayerFr.Frame.Mode.Box.Text then
PlayerModes[i].FUNC(PlayerFr.Frame.Player.Box.Text)
end
end
end)
PlayerFr.StatChange.Btn.MouseButton1Click:connect(function()
for i, v in pairs(Stats) do
if Stats[i].NAME == PlayerFr.StatChange.Stat.Box.Text then
Stats[i].FUNC(PlayerFr.StatChange.Player.Box.Text, PlayerFr.StatChange.Count.oldbox.Text)
end
end
end)
ServerSpawn.SearchBox.FocusLost:connect(function(enterPressed)
if ServerSpawn.SearchBox.Text == "" or ServerSpawn.SearchBox.Text == " " then
GenerateList(DropIDs, ServerSpawn.ItemList)
ServerSpawn.SearchBox.Text = "Click here to search"
else
local temp_table = {}
for i, v in pairs(DropIDs) do
if DropIDs[i].NAME:lower():find(ServerSpawn.SearchBox.Text) then
table.insert(temp_table, #temp_table + 1, DropIDs[i])
end
end
GenerateList(temp_table, ServerSpawn.ItemList)
ServerSpawn.SearchBox.Text = "Click here to search"
end
end)
LocalSpawn.SearchBox.FocusLost:connect(function(enterPressed)
if LocalSpawn.SearchBox.Text == "" or LocalSpawn.SearchBox.Text == " " then
GenerateList(game.Lighting.LootDrops:GetChildren(), LocalSpawn.ItemList)
LocalSpawn.SearchBox.Text = "Click here to search"
else
local temp_table = {}
for i, v in pairs(game.Lighting.LootDrops:GetChildren()) do
if v.Name:lower():find(LocalSpawn.SearchBox.Text) then
table.insert(temp_table, #temp_table + 1, v)
end
end
GenerateList(temp_table, LocalSpawn.ItemList)
LocalSpawn.SearchBox.Text = "Click here to search"
end
end)
VehicleFr.Next.MouseButton1Click:connect(function()
AdjustVeh(game.Workspace.Vehicles:GetChildren(), true)
end)
VehicleFr.Prev.MouseButton1Click:connect(function()
AdjustVeh(game.Workspace.Vehicles:GetChildren(), false)
end)
pInfo.Next.MouseButton1Click:connect(function()
AdjustPlr(game.Players:GetChildren(), true)
end)
pInfo.Reset.MouseButton1Click:connect(function()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)
pInfo.Previous.MouseButton1Click:connect(function()
AdjustPlr(game.Players:GetChildren(), false)
end)
Gui.Toggle.MouseButton1Down:connect(function()
BF.Visible = not BF.Visible
pInfo.Visible = BF.Visible
Gui.Toggle.Text = (BF.Visible and "-" or "+")
end)
for _, v in pairs(VehicleFr:GetChildren()) do
if v.Name == "TPVehicle" or v:findFirstChild("Btn") then
spawn(function()
v.Btn.MouseButton1Click:connect(function()
if v:IsA("TextLabel") and v.Name ~= "CurrentVehicle" then
for a, b in pairs(VehicleModes) do
if VehicleModes[a].NAME == v.Name then
if v.Name ~= "ResetSpeed" and v.Name ~= "TPVehicle" and v.Name ~= "ExplVehicle" and v.Name ~= "CloneVehicle" then
if v.Btn.Text == "OFF" then
v.Btn.Text = "ON"
v.Btn.BackgroundColor3 = OnCol
else
v.Btn.Text = "OFF"
v.Btn.BackgroundColor3 = OffCol
end
end
if v.Name == "GodVehicle" then
if v.Btn.Text == "OFF" then
for h, c in pairs(VehicleModes) do
if VehicleModes[h].NAME == "UnGodVehicle" then
VehicleModes[h].FUNC(game.Workspace.Vehicles:GetChildren()[CurrVehIndex], VehicleFr.TPVehicle.Box.Text)
end
end
elseif v.Btn.Text == "ON" then
for h, c in pairs(VehicleModes) do
if VehicleModes[h].NAME == "GodVehicle" then
VehicleModes[h].FUNC(game.Workspace.Vehicles:GetChildren()[CurrVehIndex], VehicleFr.TPVehicle.Box.Text)
end
end
end
else
VehicleModes[a].FUNC(game.Workspace.Vehicles:GetChildren()[CurrVehIndex], VehicleFr.TPVehicle.Box.Text)
end

end
end
end
end)
end)
elseif v.Name ~= "TPVehicle" and v:findFirstChild("Box") then
spawn(function()
v.Box.FocusLost:connect(function(enterPressed)
if enterPressed then
for a, b in pairs(VehicleModes) do
if VehicleModes[a].NAME == v.Name then
VehicleModes[a].FUNC(game.Workspace.Vehicles:GetChildren()[CurrVehIndex], v.Box.Text)
end
end
end
end)
end)
elseif v.Name ~= "TPVehicle" and v:findFirstChild("Box") then
spawn(function()
v.Box.FocusLost:connect(function(enterPressed)
if enterPressed then
for a, b in pairs(VehicleModes) do
if VehicleModes[a].NAME == v.Name then
VehicleModes[a].FUNC(game.Workspace.Vehicles:GetChildren()[CurrVehIndex], v.Box.Text)
end
end
end
end)
end)
end
end
for _, v in pairs(MiscFr:GetChildren()) do
if v.Name == "AE" then
spawn(function()
v.Btn.MouseButton1Click:connect(function()
local player = game.Players.LocalPlayer
local material = game.Lighting.Materials.TM46Placed
local pos = player.Character.Torso.Position - material.Head.Position + Vector3.new(0,-2.9,0)
game.Lighting.Remote.PlaceMaterial:FireServer(material, pos, true)
end)
end)
end
end
for _, v in pairs(MiscFr:GetChildren()) do
if v.Name == "C4" then
spawn(function()
v.Btn.MouseButton1Click:connect(function()
local player = game.Players.LocalPlayer
local material = game.Lighting.Materials.C4Placed
local pos = player.Character.Torso.Position - material.Head.Position + Vector3.new(0,-2.9,0)
game.Lighting.Remote.PlaceMaterial:FireServer(material, pos, true)
end)
end)
end
end
for _, v in pairs(MiscFr:GetChildren()) do
if v.Name == "Music" then
spawn(function()
v.Btn.MouseButton1Click:connect(function()
if game.workspace.Vehicles:FindFirstChild("Died") then
game.Lighting.Remote.SoundIdSet:FireServer(kek, game.Workspace.Vehicles.Died, "http://www.roblox.com/asset/?id="..tostring(v.Box.Text))
game.Lighting.Remote.SoundPitchLocalSet:FireServer(kek, workspace.Vehicles.Died, 1)
game.Lighting.Remote.PlaySound:FireServer(game.Workspace.Vehicles.Died,1,1)
game.Workspace.Vehicles.Died.Ended:wait()
game.Lighting.Remote.StopSound:FireServer(game.Workspace.Vehicles.Died)
else
game.Lighting.Remote.CreateSounds:InvokeServer()
game.Lighting.Remote.ChangeParent:FireServer(kek, game.Players.LocalPlayer.Character.Head.Died, game.Workspace.Vehicles)
wait()
game.Lighting.Remote.SoundIdSet:FireServer(kek, game.Workspace.Vehicles.Died, "http://www.roblox.com/asset/?id="..tostring(v.Box.Text))
game.Lighting.Remote.SoundPitchLocalSet:FireServer(kek, workspace.Vehicles.Died, 1)
game.Lighting.Remote.PlaySound:FireServer(game.Workspace.Vehicles.Died,1,1)
game.Workspace.Vehicles.Died.Ended:wait()
game.Lighting.Remote.StopSound:FireServer(game.Workspace.Vehicles.Died)
end
end)
end)
end
end
for _, v in pairs(MiscFr:GetChildren()) do
if v.Name == "Pants" then
spawn(function()
v.Btn.MouseButton1Click:connect(function()
game.Lighting.Remote.ChangeValue:FireServer(kek,game.Players.LocalPlayer.playerstats.character.pants.ObjectID.Pants, v.Box.Text)
game.Lighting.Remote.CheckPants:FireServer()
if game.Players.LocalPlayer.Character:FindFirstChild("Heavy") then
game.Lighting.Remote.Destruct:FireServer(kek, game.Players.LocalPlayer.Character.Heavy)
elseif game.Players.LocalPlayer.Character:FindFirstChild("Standard") then
game.Lighting.Remote.Destruct:FireServer(kek, game.Players.LocalPlayer.Character.Light)
elseif game.Players.LocalPlayer.Character:FindFirstChild("Light") then
game.Lighting.Remote.Destruct:FireServer(kek, game.Players.LocalPlayer.Character.Light)
else print("No vest found")
end
end)
end)
end
end
for _, v in pairs(MiscFr:GetChildren()) do
if v.Name == "Shirt" then
spawn(function()
v.Btn.MouseButton1Click:connect(function()
game.Lighting.Remote.ChangeValue:FireServer(kek,game.Players.LocalPlayer.playerstats.character.shirt.ObjectID.Shirt, v.Box.Text)
game.Lighting.Remote.CheckShirt:FireServer()
if game.Players.LocalPlayer.Character:FindFirstChild("Heavy") then
game.Lighting.Remote.Destruct:FireServer(kek, game.Players.LocalPlayer.Character.Heavy)
elseif game.Players.LocalPlayer.Character:FindFirstChild("Standard") then
game.Lighting.Remote.Destruct:FireServer(kek, game.Players.LocalPlayer.Character.Standard)
elseif game.Players.LocalPlayer.Character:FindFirstChild("Light") then
game.Lighting.Remote.Destruct:FireServer(kek, game.Players.LocalPlayer.Character.Light)
else print("No vest found")
end
end)
end)
end
end
for _, v in pairs(MiscFr:GetChildren()) do
if v.Name == "VS50" then
spawn(function()
v.Btn.MouseButton1Click:connect(function()
local player = game.Players.LocalPlayer
local material = game.Lighting.Materials.VS50Placed
local pos = player.Character.Torso.Position - material.Head.Position + Vector3.new(0,-2.9,0)
game.Lighting.Remote.PlaceMaterial:FireServer(material, pos, true)
end)
end)
end
end
for _, v in pairs(LocalStats:GetChildren()) do
spawn(function()
v.Btn.MouseButton1Click:connect(function()
if v.Name ~= "Stamina" then
for a, b in pairs(LPModes) do
if LPModes[a].NAME == v.Name then
LPModes[a].FUNC()
end
end
wait()
if Bools[v.Name] == false then
v.Btn.Text = "OFF"
v.Btn.BackgroundColor3 = OffCol
v.Btn.BorderColor3 = bOffCol
elseif Bools[v.Name] == true then
v.Btn.Text = "ON"
v.Btn.BackgroundColor3 = OnCol
v.Btn.BorderColor3 = bOnCol
end
end
end)
end)
end
spawn(function()
for _, v in pairs(Btns:GetChildren()) do
v.MouseButton1Click:connect(function()
for _, b in pairs(Btns:GetChildren()) do
if b ~= v then
b.BackgroundColor3 = OffCol
b.BorderColor3 = bOffCol
else
b.BackgroundColor3 = OnCol
b.BorderColor3 = bOnCol
end
end
for _, b in pairs(v.Parent.Parent:GetChildren()) do
if b:IsA("Frame") and b.Name ~= "Buttons" and b.Name ~= "Line" and b.Name ~= v.Name then
b.Visible = false
elseif b.Name == v.Name then
b.Visible = true
end
end
end)
end
end)
spawn(function()
for _, v in pairs(sBtns:GetChildren()) do
v.MouseButton1Click:connect(function()
for _, b in pairs(sBtns:GetChildren()) do
if b ~= v then
b.BackgroundColor3 = OffCol
b.BorderColor3 = bOffCol
else
b.BackgroundColor3 = OnCol
b.BorderColor3 = bOnCol
end
end
for _, b in pairs(v.Parent.Parent:GetChildren()) do
if b:IsA("Frame") and b.Name ~= "Buttons" and b.Name ~= "Line" and b.Name ~= v.Name then
b.Visible = false
elseif b.Name == v.Name then
b.Visible = true
end
end
end)
end
end)
if game.Lighting.Remote:FindFirstChild("BanService") then
game.Lighting.Remote.Destruct:FireServer(kek, game.Lighting.Remote.BanService)
end
break
end
end