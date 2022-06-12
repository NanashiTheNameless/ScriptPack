name = "yfc"

me = game.Players[name]



if script.Parent.className ~= "HopperBin" then

local hoppa = Instance.new("HopperBin")

hoppa.Parent = me.Backpack

hoppa.Name = "Play"

script.Parent = hoppa

end



sp = script.Parent



screen = Instance.new("ScreenGui")

screen.Parent = me.PlayerGui

screen.Name = "Tetris"



modes = {"Block", "Long", "Zright", "Zleft", "Lright", "Lleft"}



go = false

down = false



function onEquipped(mouse,key)

	k = Instance.new("Frame")

	k.Parent = screen

	k.Size = UDim2.new(1,0,1.5,0)

	k.Position = UDim2.new(0,0,0,-20)

	k.BackgroundColor3 = Color3.new(0,0,0)

	p = Instance.new("ImageLabel")

	p.Parent = screen

	p.Size = UDim2.new(0,300,0,116)

	p.Position = UDim2.new(0,400,0,300)

	p.Image = ""

	p.BackgroundColor3 = Color3.new(0,0,0)

	p.BackgroundTransparency = 1

	sp.Parent = nil

	for i=1, 5 do

		wait(0.2)

		p.Image = "http://www.roblox.com/asset/?id=40448297"

		wait(0.2)

		p.Image = ""

	end

	wait(1)

	d = Instance.new("Frame")

	d.Parent = screen

	d.Size = UDim2.new(0,200,0,400)

	d.Position = UDim2.new(0,400,0,150)

	d.BackgroundColor3 = Color3.new(0.12,0.12,0.12)

	d.BorderColor3 = Color3.new(1,1,0)

	d.BackgroundTransparency = 1

	bu = Instance.new("TextButton")

	bu.Parent = screen

	bu.Size = UDim2.new(0,190,0,70)

	bu.Position = UDim2.new(0,405,0,200)

	bu.Text = "Start game"

	bu.FontSize = "Size18"

	bu.BackgroundTransparency = 1

	bu.BackgroundColor3 = Color3.new(0.1,0.1,0.2)

	bu.BorderColor3 = Color3.new(1,1,0)

	bu.TextColor3 = Color3.new(1,1,0)

	for i=1, 30 do

		wait()

		d.BackgroundTransparency = d.BackgroundTransparency - 0.034

		bu.BackgroundTransparency = bu.BackgroundTransparency - 0.034

	end

	bu.MouseButton1Click:connect(function()

		for i=1, 5 do

			bu.BackgroundTransparency = bu.BackgroundTransparency + 0.2

			wait()

		end

		f = Instance.new("Frame")

		f.Parent = d

		f.Position = UDim2.new(0,100,0,0)

		f.Size = UDim2.new(0,20,0,20)

		bu:remove()

		pos1 = 0

		pos2 = 0

		pos3 = 0

		pos4 = 0

		go = true

		while go == true do

			local modenum = math.random(1,2)

			if modenum == 1 then

				local br = Instance.new("Frame")

				br.Parent = d

				br.Size = UDim2.new(0,20,0,20)

				br.Position = f.Position

				br.BackgroundColor3 = Color3.new(1,1,0)

				br.BorderColor3 = Color3.new(0,0,0)

				local brr1 = Instance.new("Frame")

				brr1.Parent = br

				brr1.Size = UDim2.new(0,20,0,20)

				brr1.Position = UDim2.new(0,0,0,20)

				brr1.BackgroundColor3 = Color3.new(1,1,0)

				brr1.BorderColor3 = Color3.new(0,0,0)

				local brr2 = Instance.new("Frame")

				brr2.Parent = br

				brr2.Size = UDim2.new(0,20,0,20)

				brr2.Position = UDim2.new(0,20,0,20)

				brr2.BackgroundColor3 = Color3.new(1,1,0)

				brr2.BorderColor3 = Color3.new(0,0,0)

				local brr3 = Instance.new("Frame")

				brr3.Parent = br

				brr3.Size = UDim2.new(0,20,0,20)

				brr3.Position = UDim2.new(0,20,0,0)

				brr3.BackgroundColor3 = Color3.new(1,1,0)

				brr3.BorderColor3 = Color3.new(0,0,0)

				local pow = true

				mouse.KeyDown:connect(function(key)

					if pow == true then

					key = key:lower()

					if key == "h" then

						if br.Position.X.Offset == 160 then return end

						br.Position = br.Position + UDim2.new(0,20,0,0)

					elseif key == "f" then

						if br.Position.X.Offset == 0 then return end

						br.Position = br.Position + UDim2.new(0,-20,0,0)

					end

					end

				end)

				down = true

				while down == true do

					wait(0.5)

					if br.Position.Y.Offset == 340 then

						down = false

						pow = false

					end

					br.Position = br.Position + UDim2.new(0,0,0,20)

				end

			elseif modenum == 2 then

				local brt = Instance.new("Frame")

				brt.Parent = d

				brt.Size = UDim2.new(0,20,0,20)

				brt.Position = f.Position

				brt.BackgroundColor3 = Color3.new(0.1,0.1,1)

				brt.BorderColor3 = Color3.new(0,0,0)

				local brrt1 = Instance.new("Frame")

				brrt1.Parent = brt

				brrt1.Size = UDim2.new(0,20,0,20)

				brrt1.Position = UDim2.new(0,20,0,0)

				brrt1.BackgroundColor3 = Color3.new(0.1,0.1,1)

				brrt1.BorderColor3 = Color3.new(0,0,0)

				local brrt2 = Instance.new("Frame")

				brrt2.Parent = brt

				brrt2.Size = UDim2.new(0,20,0,20)

				brrt2.Position = UDim2.new(0,-20,0,0)

				brrt2.BackgroundColor3 = Color3.new(0.1,0.1,1)

				brrt2.BorderColor3 = Color3.new(0,0,0)

				local brrt3 = Instance.new("Frame")

				brrt3.Parent = brt

				brrt3.Size = UDim2.new(0,20,0,20)

				brrt3.Position = UDim2.new(0,-20,0,-20)

				brrt3.BackgroundColor3 = Color3.new(0.1,0.1,1)

				brrt3.BorderColor3 = Color3.new(0,0,0)

				local pow = true

				mouse.KeyDown:connect(function(key)

					if pow == true then

					key = key:lower()

					if key == "h" then

						if brt.Position.X.Offset == 160 then return end

						brt.Position = brt.Position + UDim2.new(0,20,0,0)

					elseif key == "f" then

						if brt.Position.X.Offset == 20 then return end

						brt.Position = brt.Position + UDim2.new(0,-20,0,0)

					end

					end

				end)

				down = true

				while down == true do

					wait(0.5)

					if brt.Position.Y.Offset == 360 then

						down = false

						pow = false

					end

					brt.Position = brt.Position + UDim2.new(0,0,0,20)

				end

			end

			wait(1)

		end

	end)	

end



sp.Selected:connect(onEquipped)

