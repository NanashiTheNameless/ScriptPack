Size = 300
Dots = {}
Lines = {}

Primary = Color3.new()
Secondary = Color3.new(1, 1, 1)

Palette = {}
for i=0,63,1 do
	table.insert(Palette, BrickColor.palette(i))
end

Me = game.Players.LocalPlayer

pcall(function() Me:findFirstChild("PlayerGui")["2D"]:remove() end)

ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "2D"
ScreenGui.Parent = Me:findFirstChild("PlayerGui")

function GetResolution()
	local res = Vector2.new(ScreenGui.AbsoluteSize.x, ScreenGui.AbsoluteSize.y)
	if res.x < 1 then repeat wait() res = Vector2.new(ScreenGui.AbsoluteSize.x, ScreenGui.AbsoluteSize.y) until res.x > 0 end
	return res
end

Screen = Instance.new("ImageButton",ScreenGui)
Screen.BackgroundColor3 = Color3.new(0.45, 0.45, 0.45)
Screen.BackgroundTransparency = 0.75
Screen.Size = UDim2.new(0, Size, 0, Size)
Screen.Position = UDim2.new(0.5, -Size/2, 0.5, -Size/2)
Screen.AutoButtonColor = false

Color = Instance.new("ImageButton",Screen)
Color.BackgroundColor3 = Color3.new(0.35, 0.35, 0.35)
Color.BackgroundTransparency = 0.6
Color.Size = UDim2.new(0, 200, 1, 0)
Color.Position = UDim2.new(0, -205, 0, 0)
Color.AutoButtonColor = false
Color.Active = true
Color.Draggable = true

ColorPrimary = Instance.new("ImageButton",Color)
ColorPrimary.BackgroundColor3 = Primary
ColorPrimary.Size = UDim2.new(0, 30, 0, 30)
ColorPrimary.Position = UDim2.new(0, 20, 0, 20)
ColorPrimary.BorderColor3 = Color3.new(1, 1, 1)
ColorPrimary.ZIndex = 10
ColorPrimary.AutoButtonColor = false

ColorSecondary = Instance.new("ImageButton",Color)
ColorSecondary.BackgroundColor3 = Secondary
ColorSecondary.Size = UDim2.new(0, 30, 0, 30)
ColorSecondary.Position = UDim2.new(0, 30, 0, 30)
ColorSecondary.BorderColor3 = Color3.new(1, 1, 1)
ColorSecondary.ZIndex = 9
ColorSecondary.AutoButtonColor = false

function Opposite()
	local pri = Primary
	local sec = Secondary
	Secondary = pri
	Primary = sec
	ColorPrimary.BackgroundColor3 = sec
	ColorSecondary.BackgroundColor3 = pri
end

ColorSecondary.MouseButton1Down:connect(Opposite)
ColorPrimary.MouseButton1Down:connect(Opposite)

PaletteGui = Instance.new("Frame", Color)
PaletteGui.BackgroundColor3 = Color3.new(0.45, 0.45, 0.45)
PaletteGui.BackgroundTransparency = 0.4
PaletteGui.Size = UDim2.new(0, 170, 0, 165)
PaletteGui.Position = UDim2.new(0, 15, 1, -175)

local xx = 0
local yy = 0
for _, v in pairs(Palette) do
	local G = Instance.new("ImageButton", PaletteGui)
	G.Size = UDim2.new(0, 18, 0, 18)
	G.Position = UDim2.new(0, xx+6, 0, yy+5)
	G.AutoButtonColor = false
	G.BorderSizePixel = 0
	G.BackgroundColor3 = v.Color
	G.MouseButton1Down:connect(function()
		Primary = v.Color
		ColorPrimary.BackgroundColor3 = v.Color
	end)
	G.MouseButton2Down:connect(function()
		Secondary = v.Color
		ColorSecondary.BackgroundColor3 = v.Color
	end)
	xx = xx + 20
	if xx >= 160 then xx = 0 yy = yy + 20 end
end

Clear = Instance.new("TextButton", Color)
Clear.Size = UDim2.new(0, 100, 0, 30)
Clear.Position = UDim2.new(0, 80, 0, 30) 
Clear.AutoButtonColor = false
Clear.BackgroundColor3 = Color3.new()
Clear.BorderColor3 = Color3.new(1,1,1)
Clear.Text = "Clear"
Clear.Font = "ArialBold"
Clear.FontSize = Enum.FontSize.Size24
Clear.TextColor3 = Color3.new(1,1,1)
Clear.MouseButton1Down:connect(function()
	for _,v in pairs(Lines) do
		for _,k in pairs(v[1]) do
			k:remove()
		end
	end
	for _,v in pairs(Lines) do
		table.remove(Lines, 1)
	end
end)

for y = 10, Size-10, 20 do
	for x = 10, Size-10, 20 do
		local x = x-(Size/2)
		local y = y-(Size/2)
		local P = Instance.new("Frame", Screen)
		P.BorderSizePixel = 0
		P.BackgroundColor3 = Color3.new()
		P.BackgroundTransparency = 0.5
		P.Size = UDim2.new(0, 3, 0, 3)
		P.Position = UDim2.new(0, x+(Size/2), 0, y+(Size/2))
		table.insert(Dots, Vector2.new(x, y))
	end
end

function DrawLine(Start, End, Color, add)
	local unit = -(Start-End).unit
	local magnitude = (Start-End).magnitude
	local parts = {}
	for i = 0, magnitude, 2 do
		local P = Instance.new("Frame", Screen)
		P.BorderSizePixel = 0
		P.BackgroundColor3 = Color
		P.Size = UDim2.new(0, 3, 0, 3)
		P.Position = UDim2.new(0, Size/2+Start.x, 0, Size/2+Start.y) + UDim2.new(0, unit.x*i, 0, unit.y*i)
		table.insert(parts, P)
	end
	local tab = {parts, unit = unit, magnitude = magnitude}
	if add then
		table.insert(Lines, tab)
	end
	return tab
end

function GetClosest(Poss)
	local Res = GetResolution()/2
	local Pos = Poss-Res
	local Closest = Vector2.new(0, 0)
	local Magn = math.huge
	for _, v in pairs(Dots) do
		local magn = (v-Pos).magnitude
		if magn < Magn then
			Closest = v
			Magn = magn
		end
	end
	return Closest
end

Screen.MouseButton1Down:connect(function(x,y)
	local Pos1 = GetClosest(Vector2.new(x,y))
	local prev = nil
	local c = Screen.MouseButton1Up:connect(function(x2, y2)
		local Pos2 = GetClosest(Vector2.new(x2,y2))
		if Pos2 ~= Pos1 then
			DrawLine(Pos1, Pos2, Primary, true)
		end
		c:disconnect()
		if prev then
			for _,v in pairs(prev[1]) do
				v:remove()
			end
		end
	end)
end)

Screen.MouseButton2Down:connect(function(x,y)
	local Pos1 = GetClosest(Vector2.new(x,y))
	local c = Screen.MouseButton2Up:connect(function(x2, y2)
		local Pos2 = GetClosest(Vector2.new(x2,y2))
		if Pos2 ~= Pos1 then
			DrawLine(Pos1, Pos2, Secondary, true)
		end
		c:disconnect()
	end)
end)
