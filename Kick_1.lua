me = game.Players.robert147jansen
gui = Instance.new("ScreenGui")
gui.Parent = me.PlayerGui
gui.Name = "Kick"

pos = 135
pos2 = 10
pos3 = 0

enabled = false

button = Instance.new("TextButton")
button.Parent = gui
button.Size = UDim2.new(0, 100, 0, 30)
button.Position = UDim2.new(0, 8, 0, pos)
button.Text = "Kick"
button.MouseButton1Click:connect(function()
	if enabled == false then 
		enabled = true
		local a = game.Workspace:GetChildren()
		red = 0
		green = 0.5
		blue = 0
		for i=1, #a do
			wait()
			pos2 = pos2 + 23
			if pos2 >= 450 then
				pos3 = pos3 + 103
				pos2 = 33
			end
			if green <= 0.9 then
				green = green + 0.46
			elseif green >= 0.9 then
				green = green - 0.46
			end
			local bu = Instance.new("TextButton")
			bu.Parent = button
			bu.Size = UDim2.new(0, 100, 0, 20)
			bu.Position = UDim2.new(0, pos3, 0, pos2)
			bu.Text = a[i].Name
			bu.BackgroundTransparency = 1
			bu.TextTransparency = 1
			bu.BackgroundColor3 = Color3.new(red,green,blue)
			coroutine.resume(coroutine.create(function()
				for i=1, 3 do
					wait()
					bu.BackgroundTransparency = bu.BackgroundTransparency - 0.34
					bu.TextTransparency = bu.BackgroundTransparency
				end
			end))
			bu.MouseButton2Down:connect(function()
				local play = game.Workspace:findFirstChild(bu.Text)
				if play ~= nil then
					play:remove()
					bu:remove()
				end
			end)
		end
	elseif enabled == true then
		enabled = false
		pos2 = 10
		pos3 = 0
		local o = button:GetChildren()
		for i=1, #o do
			wait()
			o[i]:remove()
		end
	end
end)



--lego