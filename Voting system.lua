titles = {{"Who's the coolest person?", "coolest person"}, {"Who's the best scripter?", "best scripter"},
{"Who's the best friend?", "best friend"}, {"Who do you think is more likely a girl?", "girl"},
{"Who makes the best weapons?", "good weapon maker"}, {"Who's epic?", "epic"},
{"Who's the best builder?", "best builder"}}

function makedraggable(gui)
	local but = Instance.new("ImageButton",gui)
	but.Size = UDim2.new(1, 0, 1, 0)
	but.BackgroundTransparency = 1
	but.AutoButtonColor = false
	but.MouseButton1Down:connect(function(x,yz)
		local pos = gui.Position
		local conn = but.MouseMoved:connect(function(X,Y)
			gui.Position = pos + UDim2.new(0, X-x, 0, Y-yz)
		end)
		coroutine.resume(coroutine.create(function()
			but.MouseButton1Up:wait()
			conn:disconnect()
		end))
		but.MouseLeave:wait()
		conn:disconnect()
	end)
end

function maeknew()
local plrs = game.Players:GetPlayers()
local title = titles[math.random(1,#titles)]
local votes = 0
local things = {}
for i,v in pairs(plrs) do
	table.insert(things, {v.Name, 0, {}})
end

function color(gui, r, g, b)
	gui.BackgroundColor3 = Color3.new(r, g, b)
end

for i,v in pairs(plrs) do
local myvotes = 3

local g = v:findFirstChild("PlayerGui")
if g ~= nil then
for i,k in pairs(g:children()) do if k.Name == "G" then k:remove() end end
local sc = Instance.new("ScreenGui",g)
sc.Name = "G"

local bg = Instance.new("TextLabel",sc)
bg.Size = UDim2.new(0, 500, 0, 350)
bg.Position = UDim2.new(1, -504, 1, -354)
bg.TextYAlignment = "Top"
bg.Text = title[1]
bg.TextColor3 = Color3.new(1, 1, 1)
bg.FontSize = "Size18"
bg.TextWrap = true
color(bg, 0, 0, 0)

makedraggable(bg)

local close = Instance.new("TextButton",bg)
close.Size = UDim2.new(0, 25, 0, 25)
close.Position = UDim2.new(1, -25, 0, 0)
close.Text = "X"
close.Font = "ArialBold"
close.TextColor3 = Color3.new(0, 0, 0)
color(close, 1, 0.15, 0.25)
close.FontSize = "Size18"
close.MouseButton1Click:connect(function()
	sc:remove()
end)

local txt2 = Instance.new("TextLabel",bg)
txt2.Text = "Votes: "..myvotes
txt2.BackgroundTransparency = 1
txt2.Position = UDim2.new(0.5, 0, 0.1, 0)
txt2.TextColor3 = Color3.new(1, 1, 1)
txt2.FontSize = "Size12"

function make(pos, val)
	local fr = Instance.new("TextLabel",bg)
	fr.Size = UDim2.new(0.16, 0, 0.16, 0)
	fr.Position = pos
	fr.TextYAlignment = "Top"
	fr.Text = val[1]
	color(fr, 1, 1, 1)
	local bar = Instance.new("Frame",fr)
	bar.Size = UDim2.new(0.8, 0, 0.2, 0)
	bar.Position = UDim2.new(0.1, 0, 0.7, 0)
	color(bar, 0, 0, 0)
	local bar2 = Instance.new("Frame",bar)
	bar2.Size = UDim2.new(0, 0, 1, 0)
	color(bar2, 1, 1, 1)
	local button = Instance.new("TextButton",bar)
	button.Text = "Vote"
	button.Size = UDim2.new(1, 0, 1, 0)
	button.Position = UDim2.new(0, 0, -1, -1)
	color(button, 0.9, 0.25, 0.15)
	button.MouseButton1Click:connect(function()
		if val[1] ~= v.Name then
			if myvotes > 0 then
				myvotes = myvotes - 1
				votes = votes + 1
				val[2] = val[2] + 1
			else
				myvotes = 0
			end
		end
		txt2.Text = "Votes: "..myvotes
	end)
	local txt = Instance.new("TextLabel",fr)
	txt.Text = "0% V: 0"
	txt.BackgroundTransparency = 1
	txt.Position = UDim2.new(0.5, 0, 0.3, 0)
	txt.TextColor3 = Color3.new(0, 0, 0)

	table.insert(val[3], {bar2, txt})
end

local x, y = 0.02, 0.15

for i,v in pairs(things) do
	make(UDim2.new(x, 0, y, 0), v)
	x = x + 0.18
	if x > 0.9 then
		x = 0.02
		y = y + 0.18
	end
	if y > 0.9 then break end
end
coroutine.resume(coroutine.create(function()
while true do
	wait()
	if votes > 0 then
		for i,k in pairs(things) do
			for a,v in pairs(k[3]) do
				for c, o in pairs(v) do
					v[1].Size = UDim2.new(k[2]/votes, 0, 1, 0)
					v[2].Text = math.floor((k[2]/votes)*100).."% V: "..k[2]
				end
			end
		end
	end
end
end))
coroutine.resume(coroutine.create(function()
wait(22)
for _,vv in pairs(bg:children()) do
	vv:remove()
end
local last = -1
local winnar = ""
for _,vv in pairs(things) do
	if vv[2] > last then
		winnar = vv[1]
		last = vv[2]
	end
end
bg.Text = winnar.." is the "..title[2].." according to the votes!"
wait(3)
bg:remove()
end))
end
end
wait(25)
end

while true do
	maeknew()
end
