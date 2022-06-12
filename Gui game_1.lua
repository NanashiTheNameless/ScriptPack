Players = game:service("Players")
Player = Players["xSoulStealerx"]

C3 = Color3.new
V = Vector2.new
UD = UDim2.new
V2 = function(x, y)
	return V(x*5, y*5)
end
SetVec = function(vec)
	return UD(0, vec.X, 0, vec.Y)
end

Resolution = V2(0, 0)

local ResTest = Instance.new("ScreenGui")
ResTest.Name = "ResTest"
ResTest.Parent = Player.PlayerGui

repeat
	wait()
	Resolution = ResTest.AbsoluteSize
until Resolution ~= V2(0, 0)

ResTest:remove()

local Grid = V2(100, 60)
local Center = Grid/2

User = {
	Point = V2(0, 0),
	Position = V2(0, 0),
	PointLine = {},
}

local Classes = {"Frame", "ImageLabel", "ImageButton", "TextLabel", "TextButton", "TextBox"}
function Make(Class, Par, Size, Pos, Color, Trans, Border, Borderc, Txt, TxtC, Img)
	local Mk = "Frame"
	for _,v in pairs(Classes) do
		if Class == v then
			Mk = v
		end
	end
	local g = Instance.new(Mk)
	g.Size = Size
	g.Position = Pos
	g.BackgroundColor3 = Color
	g.Transparency = Trans
	g.BorderSizePixel = Border
	g.BorderColor3 = Borderc
	if Mk == "TextButton" or Mk == "TextLabel" or Mk == "TextBox" then
		g.Text = Txt
		g.TextColor3 = TxtC
	elseif Mk == "ImageLabel" or Mk == "ImageButton" then
		g.Image = Img
	end
	g.Parent = Par
	return g
end

function LineProp(Point1, Point2)
	local Props = {
		--unit = 
		--magnitude = 
	}
end

function DrawLine(Start, End, Width)
	local Line = {}
end

local Sc = Instance.new("ScreenGui")
Sc.Name = "Game"

local Main = Make("ImageButton", Sc, SetVec(Grid), UD(0, -Grid.X/2+Resolution.X/2, 0, -Grid.Y/2+Resolution.Y/2), C3(0.3, 0.3, 0.3), 0, 0, C3(), nil, nil, "")

Sc.Parent = Player.PlayerGui
