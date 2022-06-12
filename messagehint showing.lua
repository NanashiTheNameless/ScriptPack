script.Parent = nil

function msgchange(object,gui)
	object.Changed:connect(function(property)
		if property == "Parent" then
			gui:remove()
		end
	end)
end

function txtchange(object,gui)
	object.Changed:connect(function(prop)
		if prop == "Text" then
			gui.Text = object.Text
		end
	end)
end

function output(player)
	player.ChildAdded:connect(function(prop)
		wait()
		if prop:IsA("Hint") then
			local sc = Instance.new("ScreenGui",player.PlayerGui)
			sc.Name = "Output"
			local txt = Instance.new("TextLabel",sc)
			txt.FontSize = "Size12"
			txt.TextColor3 = Color3.new(1,1,1)
			txt.BackgroundColor3 = Color3.new(0,0,0)
			txt.BorderSizePixel = 0
			txt.Position = UDim2.new(0,0,0,-1)
			txt.Size = UDim2.new(1,0,0.028,0)
			txt.Text = prop.Text
			wait()
			msgchange(prop,sc)
			txtchange(prop,txt)
		elseif prop:IsA("Message") then
			local sc = Instance.new("ScreenGui",player.PlayerGui)
			sc.Name = "Mess"
			local txt = Instance.new("TextLabel",sc)
			txt.FontSize = "Size14"
			txt.TextColor3 = Color3.new(1,1,1)
			txt.BorderSizePixel = 0
			txt.Position = UDim2.new(0.02,0,0.25,0)
			txt.BackgroundTransparency = 0.45
			txt.Size = UDim2.new(0.3,0,0.3,0)
			txt.Text = prop.Text
			txt.BackgroundColor3 = Color3.new(0.47,0.47,0.47)
			wait()
			msgchange(prop,sc)
			txtchange(prop,txt)
		end
	end)
end

for _,v in pairs(game.Players:GetChildren()) do
	output(v)
end
game.Players.ChildAdded:connect(function(player)
	if player:IsA("Player") then
		wait(8)
		output(player)
	end
end)


