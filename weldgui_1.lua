Me = game.Players.LocalPlayer
Char = Me.Character
Cam = workspace.CurrentCamera
Gui = Me:findFirstChild("PlayerGui")

Screen = Instance.new("ScreenGui",Gui)
Screen.Name = "Gui weld"

local C3 = Color3.new
local UD = UDim2.new
local V2 = Vector2.new

Resolution = V2(0, 0)

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

ResGui = Make("Frame", Screen, UD(0, 0, 0, 0), UD(1, 0, 1, 0), C3(0,0,0), 1, 0, C3())

ResGui.Changed:connect(function()
	Resolution = V2(ResGui.AbsolutePosition.X, ResGui.AbsolutePosition.Y)
end)


function Follow(Item, Target, Offset)
	local CamPos = Cam.CoordinateFrame.p
	local TargPos = (Target.CFrame * Offset).p
	local CF = CFrame.new(CamPos, TargPos)
	local Size = V2(Item.Size.X.Offset, Item.Size.Y.Offset)
	local Pos = 
	Item.Position = UD(0, (Resolution.X/2)-(Size.X/2), 0, (Resolution.Y/2)-(Size.Y/2))
end

Weld = Make("Frame", Screen, UD(0, 50, 0, 20), UD(0, 0, 0, 0), C3(0,0,0), 0, 0, C3())

while true do
	wait(0.1)
	local i = Char.Head
	Follow(Weld, i, CFrame.new(0, 0, 0))
end

