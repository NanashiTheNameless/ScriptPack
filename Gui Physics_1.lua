Parts = {}
a = Instance.new("Hint",workspace)
coroutine.resume(coroutine.create(function()
	game:service("RunService").Stepped:connect(function()
		for _, par in pairs(Parts) do
			local gui = par[2]
			local part = par[1]
			local insize = part.Size*5
			local inpos = part.Position*5
			gui.Size = UDim2.new(0, insize.x, 0, insize.y)
			gui.Text = part.Text
			gui.BackgroundTransparency = part.Transparency
			gui.BackgroundColor3 = part.Color
			gui.Position = UDim2.new(0.5, (-insize.x/2)+(inpos.x), 0.5, (-insize.y/2)+(inpos.y))
			local collided = nil
			for _, collidingpar in pairs(Parts) do
				if collidingpar ~= par then
					local gui2 = collidingpar[2]
					local collidingpart = collidingpar[1]
					local insize2 = collidingpart.Size*5
					local inpos2 = collidingpart.Position*5
					local pos1 = (inpos - inpos2)
					local pos2 = (inpos2 - inpos)
					if part.Anchored == false then
						if pos1.x >= -(insize2.x)/2 and pos1.x <= (insize2.x)/2 and pos1.y >= -(insize2.y)/2 and pos1.y <= (insize2.y)/2 then
							collided = {collidingpart, gui2}
							break
						end
					end
				end
			end
			if collided then
				a.Text="collided"
				local gui2 = collided[2]
				collided = collided[1]
				local insize2 = collided.Size*5
				local inpos2 = collided.Position*5
				local vel = (part.Velocity + pos1.unit)
				local vel2 = (collided.Velocity + pos2.unit)
				gui.Position = UDim2.new(0.5, ((-insize.x/2)+(inpos.x)), 0.5, ((-insize.y/2)+(inpos.y))) + UDim2.new(0, vel.x, 0, vel.y)
				gui2.Position = UDim2.new(0.5, ((-insize2.x/2)+(inpos2.x)), 0.5, ((-insize2.y/2)+(inpos2.y))) + UDim2.new(0, vel2.x, 0, vel2.y)
			else
			a.Text="not collided"
			end
		end
	end)
end))

Me = game.Players.xSoulStealerx

ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Physics"
ScreenGui.Parent = Me:findFirstChild("PlayerGui")

Screen = Instance.new("ImageLabel", ScreenGui)
Screen.Size = UDim2.new(1, 0, 1, 1)
Screen.Position = UDim2.new(0, 0, 0, -1)
Screen.BorderSizePixel = 0
Screen.Image = ""
Screen.BackgroundColor3 = Color3.new(0.5, 0.85, 1)

Make = {
Object = function()
	local obj = {
		Size = Vector2.new(5, 5),
		Position = Vector2.new(0, 0),
		Color = Color3.new(0.2, 0.35, 0.8),
		Anchored = false,
		Collide = true,
		Transparency = 0,
		Bounce = 0.3,
		Velocity = Vector2.new(0, 0),
		Text = "",
	}
	local insize = obj.Size*5
	local inpos = obj.Position*5
	local gui = Instance.new("TextLabel")
	gui.Size = UDim2.new(0, insize.x, 0, insize.y)
	gui.Position = UDim2.new(0.5, -(insize.x/2)+(inpos.x), 0.5, -(insize.y/2)+(inpos.y))
	gui.Text = obj.Text
	gui.BackgroundTransparency = obj.Transparency
	gui.BackgroundColor3 = obj.Color
	gui.Parent = Screen
	table.insert(Parts, {obj, gui})
	return obj
end
}

wait(1)
Make.Object().Position = Vector2.new(20, 7)
wait(0.2)
Make.Object().Position = Vector2.new(24.5, 7)

