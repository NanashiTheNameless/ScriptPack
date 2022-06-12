me = game.Players.xSoulStealerx
if script.Parent.className ~= "HopperBin" then
hop = Instance.new("HopperBin")
hop.Parent = me.Backpack
hop.Name = "Plane"
script.Parent = hop
end

guis = {}
colors = {}

for i = 1, 1032 do 
if BrickColor.new(i) ~= BrickColor.new("Medium stone grey") then 
table.insert(colors, tostring(BrickColor.new(i))) 
end 
end

sp = script.Parent
char = me.Character

hold = false

sc = Instance.new("ScreenGui")
sc.Parent = me.PlayerGui
sc.Name = "BuildGui"

fram1 = Instance.new("Frame")
fram1.Parent = sc
fram1.Size = UDim2.new(0,200,0,400)
fram1.Position = UDim2.new(0,4,0,140)
fram1.BorderColor3 = Color3.new(1,1,1)
fram1.BackgroundColor3 = Color3.new(0.1,0.1,0.15)
fram1.Visible = false
table.insert(guis,fram1)

fram2 = Instance.new("TextLabel")
fram2.Parent = fram1
fram2.Size = UDim2.new(0,194,0,60)
fram2.Position = UDim2.new(0,4,0,4)
fram2.BorderColor3 = Color3.new(1,1,1)
fram2.TextColor3 = Color3.new(1,1,1)
fram2.FontSize = "Size14"
fram2.BackgroundColor3 = Color3.new(0.1,0.1,0.15)
fram2.Text = "Size"
fram2.TextYAlignment = "Top"
fram2.TextXAlignment = "Left"
table.insert(guis,fram2)

fram3 = fram2:clone()
fram3.Parent = fram1
fram3.Text = "Colors"
fram3.Position = UDim2.new(0,4,0,68)
fram3.Size = UDim2.new(0,194,0,184)
table.insert(guis, fram3)

fram4 = fram2:clone()
fram4.Parent = fram1
fram4.Size = UDim2.new(0,1,0,1)
fram4.Position = UDim2.new(0,50,0,10)
fram4.Text = "X         Y         Z"
fram4.BackgroundTransparency = 1

sizeguis = {}

sizes = {1,1,1}

vc = 49
for i=1, 3 do
	op = Instance.new("TextBox")
	op.Parent = fram1
	op.Size = UDim2.new(0,15,0,17)
	op.Position = UDim2.new(0,vc,0,30)
	op.Text = 1
	op.Changed:connect(function()
		sizes[i] = op.Text
	end)
	vc = vc + 56
end

	

posx = 2
posy = 25

topsurf = 0
bottomsurf = 0
rightsurf = 0
leftsurf = 0
backsurf = 0
frontsurf = 0

color = "White"

for i=1, #colors do
	local k = Instance.new("TextButton")
	k.Parent = fram3
	k.Size = UDim2.new(0,12,0,12)
	k.Position = UDim2.new(0,posx,0,posy)
	k.BackgroundColor = BrickColor.new(colors[i])
	k.BorderColor3 = Color3.new(0,0,0)
	k.Text = ""
	table.insert(guis,k)
	k.MouseButton1Click:connect(function()
		color = colors[i]
	end)
	posx = posx + 14
	if posx >= 180 then
		posx = 2
		posy = posy + 14
	end
end

function sel(mouse)
	fram1.Visible = true
	mouse.Button1Down:connect(function()
		p = Instance.new("Part")
		p.Parent = workspace
		p.formFactor = 0
		p.Size = Vector3.new(sizes[1],sizes[2],sizes[3])
		p.Anchored = true
		p.TopSurface = topsurf
		p.BottomSurface = bottomsurf
		p.FrontSurface = frontsurf
		p.BackSurface = backsurf
		p.LeftSurface = leftsurf
		p.RightSurface = rightsurf
		p.BrickColor = BrickColor.new(color)
		p.CFrame = CFrame.new(mouse.Hit.p)
		p.CFrame = p.CFrame * CFrame.new(0,sizes[2]/2,0)
	end)
end

function desel()
fram1.Visible = false
end

sp.Deselected:connect(desel)
sp.Selected:connect(sel)
