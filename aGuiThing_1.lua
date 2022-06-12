Me = game.Players.LocalPlayer
Char = Me.Character
Gui = Me.PlayerGui

C3 = Color3.new
UD = UDim2.new

VisibleOptions = nil

function RemoveOptions() if VisibleOptions then VisibleOptions:remove() VisibleOptions = nil end end

Decals = {File = "http://www.roblox.com/asset/?id=42330863", Txt = "http://www.roblox.com/asset/?id=42330895"}
Options = {
	Close = {Name = "Close", Func = function(gui) if gui then gui:remove() end end},
	New = {Name = "New...", Func = function() end}
}

function Notime(func, tiem)
	if tiem then wait(tiem) end
	coroutine.resume(coroutine.create(function()
		func()
	end))
end

function EditGui(obj, parent, size, position, bgcolor, bordercolor, transparency, text, textcolor, auto)
	obj.Size = size
	obj.Position = position
	obj.BackgroundColor3 = bgcolor
	obj.BorderColor3 = bordercolor
	obj.BackgroundTransparency = transparency
	if obj:IsA("TextLabel") or obj:IsA("TextButton") then
		obj.Text = text
		obj.TextColor3 = textcolor
	end
	if obj:IsA("ImageButton") or obj:IsA("TextButton") then
		obj.AutoButtonColor = auto
		obj.MouseButton1Down:connect(function()
			RemoveOptions()
		end)
	end
	obj.Parent = parent
end

function MoveGui(gui, button)
	button.MouseButton1Down:connect(function(x, y)
		local pos = gui.Position
		local conn = button.MouseMoved:connect(function(X, Y)
			gui.Position = pos + UD(0, X-x, 0, Y-y)
		end)
		local disc = false
		Notime(function()
			button.MouseButton1Up:wait()
			if disc == false then
				conn:disconnect()
				disc = true
			end
		end)
		if disc == false then
			button.MouseLeave:wait()
			conn:disconnect()
		end
	end)
end

for _,v in pairs(Gui:children()) do if v.Name == "Files" then v:remove() end end

Sc = Instance.new("ScreenGui")
Sc.Name = "Files"

Desktop = Instance.new("ImageButton")
EditGui(Desktop, Sc, UD(1, 0, 1, 1), UD(0, 0, 0, -1), C3(0.25, 0.4, 0.9), C3(), 0, true)
Desktop.BorderSizePixel = 0

Hide = Instance.new("TextButton")
EditGui(Hide, Sc, UD(0, 200, 0, 25), UD(0.5, -100, 1, -25), C3(), C3(1,1,1), 0, "Hide", C3(1,1,1), false)
Hide.Font = "Arial"
Hide.FontSize = "Size24"

Hid = false
Hidable = true

Hide.MouseButton1Down:connect(function()
	if Hidable then
		Hidable = false
		if Hid == false then
			Hid = true
			for i = 0, 1, 0.06 do
				Desktop.Position = UD(0, 0, i, -1)
				wait()
			end
			Desktop.Position = UD(0, 0, 1, -1)
		else
			Hid = false
			for i = 0, 1, 0.06 do
				Desktop.Position = UD(0, 0, 1-i, -1)
				wait()
			end
			Desktop.Position = UD(0, 0, 0, -1)
		end
		Hidable = true
	end
	if Hid then
		Hide.Text = "Show"
	else
		Hide.Text = "Hide"
	end
end)

function ShowOptions(options, x, y, gui)
	if VisibleOptions then VisibleOptions:remove() VisibleOptions = nil end
	local X = 20
	local XX = X * #options
	local Main = Instance.new("Frame")
	EditGui(Main, Sc, UD(0, 100, 0, 4+XX), UD(0, x, 0, y), C3(0.72, 0.72, 0.72), C3(), 0, false)
	for i, v in pairs(options) do
		local Button = Instance.new("TextButton")
		EditGui(Button, Main, UD(1, 0, 0, 20), UD(0, 0, 0, 2+(X*(i-1))), C3(0.72, 0.72, 0.72), C3(), 0, v.Name, C3(), true)
		Button.BorderSizePixel = 0
		Button.TextXAlignment = "Left"
		Button.MouseButton1Down:connect(function()
			v.Func(gui)
			if VisibleOptions then VisibleOptions:remove() VisibleOptions = nil end
		end)
	end
	VisibleOptions = Main
end

function MakeWindow(name, files)
	local Main = Instance.new("ImageButton")
	EditGui(Main, Desktop, UD(0, 350, 0, 250), UD(0.5, -175, 0.5, -125), C3(0.8, 0.8, 0.8), C3(), 0, false)
	Main.MouseButton2Down:connect(RemoveOptions)
	local Sec = Instance.new("ImageButton")
	EditGui(Sec, Main, UD(1, -10, 1, -45), UD(0, 5, 0, 40), C3(1,1,1), C3(), 0, false)
	Sec.AutoButtonColor = false
	Sec.MouseButton2Down:connect(function(x,y)
		ShowOptions({Options.New, Options.Close}, x, y, Main)
	end)

	local Bar = Instance.new("ImageButton")
	EditGui(Bar, Main, UD(1, 0, 0, 25), UD(0, 0, 0, 0), C3(0.3,0.45,0.9), C3(), 0, false)
	Bar.Image = "http://www.roblox.com/asset/?id=48965808"
	Bar.AutoButtonColor = false
	Bar.MouseButton2Down:connect(function(x,y)
		ShowOptions({Options.Close}, x, y, Main)
	end)

	local Icon = Instance.new("ImageLabel")
	EditGui(Icon, Bar, UD(0, 23, 1, -2), UD(0, 2, 0, 1), C3(), C3(), 1, false)
	Icon.Image = Decals.File

	local NameText = Instance.new("TextLabel")
	EditGui(NameText, Icon, UD(0, 0, 1, 0), UD(1, 5, 0, 0), C3(), C3(), 1, name, C3(1, 1, 1), false)
	NameText.Font = "Arial"
	NameText.FontSize = "Size18"
	NameText.TextXAlignment = "Left"

	local Close = Instance.new("TextButton")
	EditGui(Close, Bar, UD(0, 19, 1, -6), UD(1, -22, 0, 3), C3(1, 0.25, 0.15), C3(), 0, "X", C3(1,1,1), true)
	Close.Font = "ArialBold"
	Close.FontSize = "Size18"

	Close.MouseButton1Click:connect(function()
		Main:remove()
	end)
	MoveGui(Main, Bar)
end

function MakeTextFile(name, textvalue)
end

Sc.Parent = Gui

wait(0.5)

MakeWindow("New Folder")
