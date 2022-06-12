objects = {"TextButton", "Frame", "TextLabel", "ImageLabel", "ImageButton"}
fonts = {"Arial", "ArialBold", "Legacy"}
sizes = {"Size8", "Size9", "Size10", "Size11", "Size12", "Size14", "Size18", "Size24", "Size36"}

plrs = game:service("Players")
me = plrs.xSoulStealerx
gui = me:findFirstChild("PlayerGui")
selected = nil
color = BrickColor.new("Medium grey")
tran = 0
clon = false

for i,v in pairs(gui:children()) do
	if v.Name == "MakeGuis" then v:remove() end
end

sc = Instance.new("ScreenGui",gui)
sc.Name = "MakeGuis"

fr = Instance.new("Frame",sc)
fr.Size = UDim2.new(0, 120, 1, 1)
fr.Position = UDim2.new(1, -120, 0, -1)
fr.BackgroundColor3 = Color3.new(0.2, 0.2, 0.7)

make = Instance.new("Frame",fr)
make.Size = UDim2.new(1, 0, 0, 100)
make.Position = UDim2.new(0, 0, 0.2, 0)
make.BackgroundTransparency = 1

sel = Instance.new("TextLabel",make)
sel.Size = UDim2.new(1, 0, 0, 80)
sel.Position = UDim2.new(0, 0, 1, 5)
sel.Text = "Selected: None"
sel.TextWrap = true
sel.BackgroundTransparency = 1
sel.FontSize = "Size18"
sel.Font = "ArialBold"
sel.TextColor3 = Color3.new(1,1,1)

function showsel()
	if selected ~= nil then
		sel.Text = "Selected: "..selected[1].Name
	else
		sel.Text = "Selected: None"
	end
end

rem = Instance.new("TextButton",sel)
rem.Size = UDim2.new(1, 0, 0, 20)
rem.Position = UDim2.new(0, 0, 1, 0)
rem.BorderSizePixel = 0
rem.BackgroundColor3 = Color3.new(0.7, 0.2, 0.1)
rem.Text = "Remove"
rem.TextColor3 = Color3.new(1,1,1)
rem.MouseButton1Click:connect(function()
	if selected ~= nil then
		selected[1]:remove()
		selected = nil
		showsel()
	end
end)

showtran = Instance.new("TextLabel",sel)
showtran.Size = UDim2.new(0.4, 0, 0, 20)
showtran.Position = UDim2.new(0.3, 0, 1, 20)
showtran.BackgroundTransparency = 1
showtran.TextColor3 = Color3.new(1,1,1)
showtran.Text = "0"

tran1 = Instance.new("TextButton",sel)
tran1.Size = UDim2.new(0.3, 0, 0, 20)
tran1.Position = UDim2.new(0, 0, 1, 20)
tran1.BorderSizePixel = 0
tran1.BackgroundColor3 = Color3.new(0.7, 0.2, 0.1)
tran1.Text = "<"
tran1.TextColor3 = Color3.new(1,1,1)
tran1.MouseButton1Click:connect(function()
	tran = tran - 0.1
	if tran < 0 then tran = 0 end
	if selected ~= nil then
		selected[1].BackgroundTransparency = tran
	end
	showtran.Text = tran
end)

tran2 = Instance.new("TextButton",sel)
tran2.Size = UDim2.new(0.3, 0, 0, 20)
tran2.Position = UDim2.new(0.7, 0, 1, 20)
tran2.BorderSizePixel = 0
tran2.BackgroundColor3 = Color3.new(0.7, 0.2, 0.1)
tran2.Text = ">"
tran2.TextColor3 = Color3.new(1,1,1)
tran2.MouseButton1Click:connect(function()
	tran = tran + 0.1
	if tran > 1 then tran = 1 end
	if selected ~= nil then
		selected[1].BackgroundTransparency = tran
	end
	showtran.Text = tran
end)

local blay = 40
for i,v in pairs(sizes) do
	local maw = Instance.new("TextButton",sel)
	maw.Size = UDim2.new(1, 0, 0, 16)
	maw.Position = UDim2.new(0, 0, 1, blay)
	maw.BorderSizePixel = 0
	maw.BackgroundColor3 = Color3.new(0.7, 0.2, 0.1)
	maw.Text = v
	maw.TextColor3 = Color3.new(1,1,1)
	maw.MouseButton1Click:connect(function()
		if selected ~= nil then
			if selected[2] == "TextLabel" or selected[2] == "TextButton" then
				selected[1].FontSize = v
			end
		end
	end)
	blay = blay + 16
end

clo = Instance.new("TextButton",sel)
clo.Size = UDim2.new(1, 0, 0, 16)
clo.Position = UDim2.new(0, 0, 1, blay+1)
clo.BorderSizePixel = 0
clo.BackgroundColor3 = Color3.new(0.7, 0.2, 0.1)
clo.Text = "Clone: "..tostring(clon)
clo.TextColor3 = Color3.new(1,1,1)
clo.MouseButton1Click:connect(function()
	if clon then
		clon = false
	else
		clon = true
	end
	clo.Text = "Clone: "..tostring(clon)
end)

mah = Instance.new("ImageButton",fr)
mah.Size = UDim2.new(0, 172, 0, 212)
mah.Position = UDim2.new(0, -162, 1, -212)
mah.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
mah.AutoButtonColor = false

mah.MouseButton1Down:connect(function(x,yz)
	local pos = mah.Position
	local conn = mah.MouseMoved:connect(function(X,Y)
		mah.Position = pos + UDim2.new(0, X-x, 0, Y-yz)
	end)
	coroutine.resume(coroutine.create(function()
		mah.MouseButton1Up:wait()
		conn:disconnect()
	end))
	mah.MouseLeave:wait()
	conn:disconnect()
end)

txtbox = Instance.new("TextBox",sc)
txtbox.Size = UDim2.new(1, 0, 0, 28)
txtbox.Position = UDim2.new(0, 0, 0, -1)
txtbox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.7)
txtbox.BorderSizePixel = 0
txtbox.TextColor3 = Color3.new(1, 1, 1)
txtbox.Text = "Enter text here"
txtbox.FontSize = "Size12"

txtapply = Instance.new("TextButton",txtbox)
txtapply.Size = UDim2.new(0.5, 0, 0, 28)
txtapply.Position = UDim2.new(0.25, 0, 1, 0)
txtapply.BorderSizePixel = 0
txtapply.TextColor3 = Color3.new(1, 1, 1)
txtapply.BackgroundColor3 = Color3.new(0.7, 0.2, 0.1)
txtapply.Text = "Apply text"
txtapply.FontSize = "Size14"
txtapply.MouseButton1Down:connect(function()
	if selected ~= nil then
		if selected[2] == "TextLabel" or selected[2] == "TextButton" then
			selected[1].Text = txtbox.Text
		end
	end
end)

colors = {}
for i=0,63,1 do
	table.insert(colors, BrickColor.palette(i))
end

local xx = 0
local zz = 0

for i,v in pairs(colors) do
	local g = Instance.new("TextButton",mah)
	g.BackgroundColor = v
	g.Size = UDim2.new(0, 18, 0, 18)
	g.BorderColor3 = Color3.new(0,0,0)
	g.Text = ""
	g.Position = UDim2.new(0, xx + 3, 0, zz + 3)
	g.MouseButton1Click:connect(function()
		if selected ~= nil then
			selected[1].BackgroundColor = v
		end
		color = v
	end)
	xx = xx + 21
	if xx >= 150 then
		xx = 0
		zz = zz + 21
	end
end

y = 0

for i,v in pairs(objects) do
	local goinon = 0
	local makebutton = Instance.new("TextButton",make)
	makebutton.Size = UDim2.new(1, 0, 0, 20)
	makebutton.Position = UDim2.new(0, 0, 0, y)
	makebutton.Text = v
	makebutton.BackgroundColor3 = Color3.new(0.7, 0.2, 0.1)
	makebutton.BorderSizePixel = 0
	makebutton.TextColor3 = Color3.new(1,1,1)
	makebutton.MouseButton1Click:connect(function()
		goinon = goinon + 1
		local but = Instance.new("TextButton",sc)
		but.Size = UDim2.new(0, math.random(40, 100), 0, math.random(40, 100))
		but.Position = UDim2.new(0, 0, 0, math.random(100,200))
		but.BackgroundColor = color
		but.Name = v.." "..goinon
		but.BackgroundTransparency = tran
		but.TextWrap = true
		if selected ~= nil and clon then
			but.Size = selected[1].Size
			but.Position = selected[1].Position
			but.BackgroundColor = selected[1].BackgroundColor
		end
		selected = {but, v}
		local but2 = Instance.new("TextButton",but)
		but2.BackgroundTransparency = 1
		but2.Size = UDim2.new(0, 14, 1, 0)
		but2.Position = UDim2.new(1, -7, 0, 0)
		but2.Text = ""
		local but3 = Instance.new("TextButton",but)
		but3.BackgroundTransparency = 1
		but3.Size = UDim2.new(1, 0, 0, 14)
		but3.Position = UDim2.new(0, 0, 1, -7)
		but3.Text = ""
		if v == "Frame" or v == "ImageLabel" or v == "TextLabel" then
			but.AutoButtonColor = false
		end
		if v == "TextLabel" or v == "TextButton" then
			but.Text = v
		else
			but.Text = ""
		end
		showsel()
		but.MouseButton1Down:connect(function(x,yz)
			selected = {but, v}
			coroutine.resume(coroutine.create(function()
				local pos = but.Position
				local conn = but.MouseMoved:connect(function(X,Y)
					but.Position = pos + UDim2.new(0, X-x, 0, Y-yz)
				end)
				coroutine.resume(coroutine.create(function()
					but.MouseButton1Up:wait()
					conn:disconnect()
				end))
				but.MouseLeave:wait()
				conn:disconnect()
			end))
			showsel()
		end)
		but2.MouseButton1Down:connect(function(x,yz)
			local pos = but.Position
			local conn = but2.MouseMoved:connect(function(X,Y)
				but.Size = UDim2.new(0, X-pos.X.Offset, 0, but.Size.Y.Offset)
			end)
			coroutine.resume(coroutine.create(function()
				but2.MouseButton1Up:wait()
				conn:disconnect()
			end))
			but2.MouseLeave:wait()
			conn:disconnect()
		end)
		but3.MouseButton1Down:connect(function(x,yz)
			local pos = but.Position
			local conn = but3.MouseMoved:connect(function(X,Y)
				but.Size = UDim2.new(0, but.Size.X.Offset, 0, Y-pos.Y.Offset)
			end)
			coroutine.resume(coroutine.create(function()
				but3.MouseButton1Up:wait()
				conn:disconnect()
			end))
			but3.MouseLeave:wait()
			conn:disconnect()
		end)
	end)
	y = y + 20
end
