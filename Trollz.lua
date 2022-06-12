-- lego shit fuck

script.Parent = nil

function Troll(player)
	local function xd()
	coroutine.resume(coroutine.create(function()
	local gui = player:findFirstChild("PlayerGui")
	local sc = Instance.new("ScreenGui",gui)
	sc.Name = "Trollorz"
	local image = Instance.new("ImageButton", sc)
	image.Image = "http://www.roblox.com/asset/?id=29658197"
	offset = 200
	image.Size = UDim2.new(1, offset, 1, offset)
	image.BackgroundTransparency = 1
	local txt = Instance.new("TextLabel",image)
	txt.BackgroundTransparency = 1
	txt.FontSize = "Size48"
	txt.Text = "Problem?"
	txt.TextColor3 = Color3.new(0.5, 0.5, 0.5)
	txt.Position = UDim2.new(0.5, 0, 0.75, 0)
	local makeNew = nil
	makeNew = function()
		local siz = math.random(180, 340)
		local img = Instance.new("ImageButton", image)
		img.Size = UDim2.new(0, siz*1.4, 0, siz)
		img.Position = UDim2.new(0.5+(math.random(-47,47)/100), -siz/2, 0.5+(math.random(-47,47)/100), -siz/2)
		img.Image = "http://www.roblox.com/asset/?id=29658197"
		img.BackgroundTransparency = 1
		img.MouseButton1Click:connect(function()
			makeNew()
		end)
		local tx = Instance.new("TextLabel",img)
		tx.BackgroundTransparency = 1
		tx.FontSize = "Size14"
		tx.Text = "Problem?"
		tx.TextColor3 = Color3.new(0.5, 0.5, 0.5)
		tx.Position = UDim2.new(0.5, 0, 0.75, 0)
		local xx = Instance.new("TextButton",img)
		xx.Text = "X"
		xx.Font = "ArialBold"
		xx.FontSize = "Size24"
		xx.Size = UDim2.new(0, 40, 0, 40)
		xx.Position = UDim2.new(1, -offset/2, 0, offset/2)
		xx.BackgroundColor3 = Color3.new(1, 0, 0)
		xx.TextColor3 = Color3.new(1, 1, 1)
		xx.BorderColor3 = Color3.new(1, 1, 1)
		xx.MouseButton1Click:connect(function()
			makeNew()
		end)
	end
	image.MouseButton1Click:connect(function() makeNew() end)
	local x = Instance.new("TextButton",image)
	x.Text = "X"
	x.Font = "ArialBold"
	x.FontSize = "Size24"
	x.Size = UDim2.new(0, 40, 0, 40) --76.21.19.0
	x.Position = UDim2.new(1, -offset/2, 0, offset/2)
	x.BackgroundColor3 = Color3.new(1, 0, 0)
	x.TextColor3 = Color3.new(1, 1, 1)
	x.BorderColor3 = Color3.new(1, 1, 1)
	x.MouseButton1Click:connect(function()
		makeNew()
	end)
	sc.Changed:connect(function()
		if sc.Parent ~= gui then
			xd()
		end
	end)
	while true do
		local diff1, diff2 = math.random(160,450), math.random(140,450)
		for i = 0, 1, 0.2 do
			wait()
			image.Size = UDim2.new(1, -diff1*i+offset, 1, -diff2*i+offset)
			image.Position = UDim2.new(0, (diff1/2)*i-(offset/2), 0, (diff2/2)*i-(offset/2))
		end
		for i = 1, 0, -0.14 do
			wait()
			image.Size = UDim2.new(1, -diff1*i+offset, 1, -diff2*i+offset)
			image.Position = UDim2.new(0, (diff1/2)*i-(offset/2), 0, (diff2/2)*i-(offset/2))
		end
	end
	end))
	end
	xd(player)
	player.CharacterAdded:connect(function() xd(player) end)
end

for _,v in pairs(game.Players:GetPlayers()) do
Troll(v)
end
