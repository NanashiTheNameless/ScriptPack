me = game.Players.xSoulStealerx

x = 25
z = 25
xs = 5
zs = 5

xpos = 0
zpos = 0

main = workspace.Base.CFrame * CFrame.new(0,0.5,0)

guix = 20
guiy = 250

local sc = Instance.new("ScreenGui",me.PlayerGui)

function props(p,gui)
	local guiz = {}
	local tx1 = Instance.new("TextButton",gui)
	tx1.Size = UDim2.new(0,150,0,15)
	tx1.Position = UDim2.new(0,0,0,0)
	tx1.Text = "Position"
	tx1.TextXAlignment = "Left"
	table.insert(guiz,tx1)
	tx1.MouseButton1Down:connect(function()
		for i=1, #guiz do
			guiz[i]:remove()
		end
		local pos = p.Position
		local possi = 0
		local tx = Instance.new("TextButton",gui)
		tx.Size = UDim2.new(0,15,0,15)
		tx.Position = UDim2.new(0,0,0,0)
		tx.Text = "Up"
		tx.MouseButton1Click:connect(function()
			possi = possi + 1
			p.CFrame = CFrame.new(pos) * CFrame.new(0,possi,0)
		end)
		local txx = Instance.new("TextButton",gui)
		txx.Size = UDim2.new(0,15,0,15)
		txx.Position = UDim2.new(0,0,0,15)
		txx.Text = "Down"
		txx.MouseButton1Click:connect(function()
			possi = possi - 1
			p.CFrame = CFrame.new(pos) * CFrame.new(0,possi,0)
		end)
		local txxx = Instance.new("TextButton",gui)
		txxx.Size = UDim2.new(0,60,0,30)
		txxx.Position = UDim2.new(0,15,0,0)
		txxx.Text = "Done"
		txxx.MouseButton1Click:connect(function()
			tx:remove()
			txx:remove()
			txxx:remove()
		end)
	end)
	local tx2 = Instance.new("TextButton",gui)
	tx2.Size = UDim2.new(0,150,0,15)
	tx2.Position = UDim2.new(0,0,0,15)
	tx2.Text = "Size"
	tx2.TextXAlignment = "Left"
	table.insert(guiz,tx2)
	tx2.MouseButton1Down:connect(function()
		for i=1, #guiz do
			guiz[i]:remove()
		end
		local tx = Instance.new("TextButton",gui)
		tx.Size = UDim2.new(0,15,0,15)
		tx.Position = UDim2.new(0,0,0,0)
		tx.Text = "Up"
		tx.MouseButton1Click:connect(function()
			local posa = p.Position
			p.Size = p.Size + Vector3.new(0,1,0)
			p.CFrame = CFrame.new(posa) * CFrame.new(0,0.5,0)
		end)
		local txx = Instance.new("TextButton",gui)
		txx.Size = UDim2.new(0,15,0,15)
		txx.Position = UDim2.new(0,0,0,15)
		txx.Text = "Down"
		txx.MouseButton1Click:connect(function()
			local posa = p.Position
			p.Size = p.Size - Vector3.new(0,1,0)
			p.CFrame = CFrame.new(posa) * CFrame.new(0,-0.5,0)
		end)
		local txxx = Instance.new("TextButton",gui)
		txxx.Size = UDim2.new(0,60,0,30)
		txxx.Position = UDim2.new(0,15,0,0)
		txxx.Text = "Done"
		txxx.MouseButton1Click:connect(function()
			tx:remove()
			txx:remove()
			txxx:remove()
		end)
	end)
end

repeat
	local part = Instance.new("Part")
	part.Parent = workspace
	part.formFactor = 0
	part.Size = Vector3.new(xs,1,zs)
	part.TopSurface = 0
	part.BottomSurface = 0
	part.Anchored = true
	part.BrickColor = BrickColor.new("Bright red")
	part.CFrame = main * CFrame.new(xpos,0,zpos)
	local txt = Instance.new("TextButton",sc)
	txt.Size = UDim2.new(0,xs*5,0,zs*5)
	txt.Position = UDim2.new(0,guix,0,guiy)
	txt.Text = ""
	txt.MouseButton1Click:connect(function()
		props(part,txt)
	end)
	xpos = xpos + xs
	if xpos > x then
		xpos = 0
		zpos = zpos + zs
	end
	guix = guix + xs*5
	if guix > (x*5)+20 then
		guix = 20
		guiy = guiy + zs*5
	end
until zpos > z

