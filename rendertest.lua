player = game.Players.LocalPlayer
rectangles = {}
previous = {}
color = {
	blue = Color3.new(0.2, 0.3, 1),
	green = Color3.new(0.2, 1, 0.1),
	red = Color3.new(1, 0.2, 0.1),
	yellow = Color3.new(1, 0.8, 0.2),
	orange = Color3.new(1, 0.45, 0.1),
	purple = Color3.new(1, 0.2, 1),
	cyan = Color3.new(0.2, 1, 1),
	dark_green = Color3.new(0.1, 0.6, 0.2),
}
a = nil
drawing = false

function Execute()
	MakeRectangle(500, 200, 10, 10, color.green)
	startDraw()
end

function stopDraw()
	drawing = false
end

function startDraw()
	drawing = true
	while drawing do
		Render()
		wait()
	end
end

function Render()
	if a == nil then
		a = Instance.new("ScreenGui",player.PlayerGui)
		a.Name = "rendertest"
	end
	local recs = Draw()
	for _,v in pairs(recs) do
		v.Parent = a
	end
end

function Draw()
	if #previous > 0 then
		for _,v in pairs(previous) do
			v:remove()
		end
	end
	local recs = {}
	for _, v in pairs(rectangles) do
		local s = Instance.new("Frame")
		s.Size = UDim2.new(0, v.sizeX, 0, v.sizeY)
		s.Position = UDim2.new(0, v.posX, 0, v.posY)
		s.BorderSizePixel = 0
		s.BackgroundColor3 = v.color
		table.insert(recs, s)
	end
	previous = recs
	return recs
end

function MakeRectangle(x, y, posx, posy, color)
	local rectangle
	rectangle = {
		sizeX = x,
		sizeY = y,
		posX = posx,
		posY = posy,
		color = color
	}
	table.insert(rectangles, rectangle)
	return rectangle
end


