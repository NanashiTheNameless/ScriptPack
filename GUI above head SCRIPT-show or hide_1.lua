																																																																				
name = "YO GRANMA TITS!" 
realname = "ic3w0lf589" 
local brickcolorOne = BrickColor.new("White")
local colorOne = brickcolorOne.Color

local brickcolorTwo = BrickColor.new("Really black")
local colorTwo = brickcolorTwo.Color

local main = Instance.new("BillboardGui")
main.Parent = game.Workspace[realname].Head
main.Adornee = game.Workspace[realname].Head
main.StudsOffset = Vector3.new(1.1,2.5,1)
main.Size = UDim2.new(2,0,1,0)

local textlabel = Instance.new("TextLabel")
textlabel.Text = name
textlabel.FontSize = "Size24"
textlabel.Font = "ArialBold"
textlabel.TextColor3 = colorOne
textlabel.TextStrokeColor3 = colorTwo
textlabel.TextStrokeTransparency = 0
textlabel.Parent = main

local maingui = Instance.new("ScreenGui")
maingui.Name = "HideBanner"
maingui.Parent = game.Players[realname].PlayerGui

local textbutton = Instance.new("TextButton")
textbutton.Text = "Hide Banner"
textbutton.Position = UDim2.new(0, 400, 0, 0)
textbutton.Size = UDim2.new(0, 300, 0, 50)
textbutton.Parent = maingui

local textbutton2 = Instance.new("TextButton")
textbutton2.Text = "Show Banner"
textbutton2.Position = UDim2.new(0, 1200, 0, 0)
textbutton2.Size = UDim2.new(0, 300, 0, 50)
textbutton2.Parent = maingui

function onClicked()

game.Workspace[realname].Head.BillboardGui.TextLabel.Visible = false 

end 

textbutton.MouseButton1Down:connect(onClicked)

function onClickedShow()

game.Workspace[realname].Head.BillboardGui.TextLabel.Visible = true  

end 

textbutton2.MouseButton1Down:connect(onClickedShow)