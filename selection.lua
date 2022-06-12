me = game.Players.xSoulStealerx
gui = me.PlayerGui

for i,v in pairs(gui:children()) do if v.Name == "LolScreen" then v:remove() end end

screen = Instance.new("ScreenGui")
screen.Name = "LolScreen"

frame = Instance.new("ImageButton",screen)
frame.Size = UDim2.new(0,300,0,200)
frame.Position = UDim2.new(0,10,0.5,-100)
frame.BackgroundColor3 = Color3.new(.8,.8,.8)
frame.AutoButtonColor = false

for i=1,math.random(6,13) do
	local o = Instance.new("Frame",frame)
	o.Size = UDim2.new(0,math.random(10,50),0,math.random(10,50))
	o.Position = UDim2.new(0,math.random(0,300),0,math.random(0,200))
end

screen.Parent = gui

frame.MouseButton1Down:connect(function(x,y)
	local g = Instance.new("Frame",screen)
	g.BorderColor3 = Color3.new(0.1,0.1,0.6)
	g.BackgroundColor3 = Color3.new(0.2,0.4,0.8)
	g.BackgroundTransparency = 0.4
	g.Size = UDim2.new(0,0,0,0)
	g.Position = UDim2.new(0,x,0,y)
	local conn = frame.MouseMoved:connect(function(X,Y)
		g.Size = UDim2.new(0,X-x,0,Y-y)
		local gs = g.AbsoluteSize
		local gpos = g.AbsolutePosition
		for i,v in pairs(frame:children()) do
			local vsx = v.Size.X
			local vsy = v.Size.Y
			if gs.X > vsx.Offset and gs.Y > vsy.Offset and
			v.AbsolutePosition.X > gpos.X + gs.X and
			v.AbsolutePosition.Y > gpos.Y + gs.Y then
				v.BackgroundColor3 = Color3.new(1,0,0)
			end
		end
	end)
	frame.MouseButton1Up:wait()
	conn:disconnect()
	g:remove()
end)