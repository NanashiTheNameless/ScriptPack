Players = {}

C3 = Color3.new
UD = UDim2.new
V2 = Vector2.new

Themes = {
	{Name = "Default", Colors = {Main = C3(0.75, 0.8, 0.9), Main2 = C3(0.8, 0.9, 0.9)}},
}

Classes = {"Frame", "TextBox", "ImageLabel", "ImageButton", "TextLabel", "TextButton"}
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
	if Mk == "TextButton" or Mk == "TextLabel" then
		g.Text = Txt
		g.TextColor3 = TxtC
	elseif Mk == "ImageLabel" or Mk == "ImageButton" then
		g.Image = Img
	end
	g.Parent = Par
	return g
end

function GiveMessenger(Player, Theme)
	local Gui = Player:findFirstChild("PlayerGui")
	if Gui then
	for _,v in pairs(Gui:children()) do if v.Name == "SoulMessenger" then v:remove() end end
	end
	local Screen = Instance.new("ScreenGui")
	Screen.Name = "SoulMessenger"
	local Main = Make("Frame", Screen, UD(0, 220, 0, 320), UD(1, -230, 0.5, -160), Theme.Colors.Main, 0, 0, C3())
	local Main2 = Make("Frame", Main, UD(1, -6, 1, -6), UD(0, 3, 0, 3), Theme.Colors.Main2, 0, 0, C3())
	Screen.Parent = Gui
end

function AddPlayer(P)
	local Player = {
	Player = P
	Theme = Themes[1],
	}
	P.CharacterAdded:connect(function()
		GiveMessenger(P, Player.Theme)
	end)
	GiveMessenger(P, Player.Theme)
end

AddPlayer(game.Players.xSoulStealerx)
