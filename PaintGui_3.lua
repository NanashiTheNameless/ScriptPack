name = "yfc"
me = game.Players[name]

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Draw"
script.Parent = h
end

sp = script.Parent

size = 10
color = "Really black"
hold = false

colors = {}

for i = 1, 1032 do 
if BrickColor.new(i) ~= BrickColor.new("Medium stone grey") then 
table.insert(colors, tostring(BrickColor.new(i))) 
end 
end

drawings = {}

function sel(mouse)
	mouse.Icon = " "
	gu = Instance.new("ScreenGui")
	gu.Parent = me.PlayerGui
	gu.Name = "clicklol"
	fra = Instance.new("Frame")
	fra.Parent = gu
	fra.Size = UDim2.new(0,200,0,600)
	fra.Position = UDim2.new(0,0,0,-20)
	fra.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	local pos = 200
	local pos2 = 10
	for i=1, #colors do
		ki = Instance.new("TextButton")
		ki.Parent = gu
		ki.Size = UDim2.new(0,17,0,17)
		ki.Position = UDim2.new(0,pos,0,pos2)
		ki.BackgroundColor = BrickColor.new(colors[i])
		ki.Text = ""
		ki.MouseButton1Click:connect(function()
			color = colors[i]
		end)
		pos = pos + 20
		if pos >= 180 then
			pos = 10
			pos2 = pos2 + 20
		end
	end
	clear = Instance.new("TextButton")
	clear.Parent = gu
	clear.Size = UDim2.new(0,120,0,50)
	clear.Position = UDim2.new(0,40,0,400)
	clear.BackgroundColor3 = Color3.new(0.1,0.1,0.5)
	clear.Text = "Clear"
	clear.FontSize = "Size12"
	clear.MouseButton1Click:connect(function()
		for i=1, #drawings do
			drawings[i]:remove()
		end
	end)
	mouse.Button1Down:connect(function()
		hold = true
		mouse.Move:connect(function()
			if hold == true then
				local k = Instance.new("Frame")
				k.Parent = gu
				k.Size = UDim2.new(0,size,0,size)
				k.BackgroundColor = BrickColor.new(color)
				k.BorderColor = k.BackgroundColor
				k.Position = UDim2.new(0,mouse.X - 2,0,mouse.Y - 22)
				table.insert(drawings,k)
			end
		end)
	end)
	mouse.Button1Up:connect(function()
		hold = false
		fra:remove()
	end)
end

sp.Selected:connect(sel)


--lego
