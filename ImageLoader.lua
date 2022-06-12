function LoadImage(ID)
	Image = ""
	Images = game:GetService("InsertService"):LoadAsset(ID):GetChildren()
	table.sort(Images, function(a, b) return a.Name < b.Name end)
	for i, Part in pairs(Images) do
		Image = Image .. Part.Value
	end
	loadstring(Image)()
end


function ImageToGui(Player, Speed, Position)
	if Player:FindFirstChild("PlayerGui") ~= nil then
		if Player.PlayerGui:FindFirstChild("Image") == nil then
			coroutine.wrap(function()
				local Gui = Instance.new("ScreenGui", Player.PlayerGui)
				Gui.Name = "Image"
				local Holder = Instance.new("Frame", Gui)
				Holder.Name = "Image Holder"
				Holder.Size = UDim2.new(0, xSize, 0, ySize)
				Holder.Position = Position or UDim2.new(1, -xSize, 1, -ySize)
				Holder.BorderSizePixel = 0
				Holder.BackgroundColor3 = BackgroundColor
				local i = 0
				for x = #Image, 1, -1 do
					for y = 1, #Image[x] do
						local Source = Image[x][y]
						if Source ~= 0 then
							local RGB = string.format("%X", Image[x][y])
							while RGB:len() < 6 do
								RGB = "0" ..RGB
							end
							local R = tonumber("0x" ..RGB:sub(0, 2)) / 255
							local G = tonumber("0x" ..RGB:sub(3, 4)) / 255
							local B = tonumber("0x" ..RGB:sub(5, 6)) / 255
							local Pixel = Instance.new("Frame", Holder)
							Pixel.BorderSizePixel = 0
							Pixel.Name = x.. ", " ..y
							Pixel.BackgroundColor3 = Color3.new(R, G, B)
							Pixel.Size = UDim2.new(1 / xSize, 0, 1 / ySize, 0)
							Pixel.Position = UDim2.new((x - 1) / xSize, 0, (y - 1) / ySize, 0)
							i = i + 1
							if i > Speed then
								wait()
								i = 0
							end
						end
					end
				end
			end)()
		end
	end
end


function ImageToBrick(Position, Scale, Speed)
	local Holder = Instance.new("Model", workspace)
	Holder.Name = "Image"
	local Background = Instance.new("Part", Holder)
	Background.Name = "Background"
	Background.TopSurface = 0
	Background.BottomSurface = 0
	Background.BrickColor = BrickColor.new(BackgroundColor)
	Background.Anchored = true
	Background.FormFactor = "Custom"
	Background.Size = Vector3.new(Scale * xSize, Scale * ySize, Scale)
	Background.CFrame = Position * CFrame.new((xSize * Scale) / 2, (ySize * Scale) / 2, 0.01)
	local Mesh = Instance.new("SpecialMesh", Background)
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
	Mesh.TextureId = "http://www.roblox.com/Asset/?id=48358980"
	Mesh.Scale = Background.Size * 2
	Mesh.VertexColor = Vector3.new(BackgroundColor.r, BackgroundColor.g, BackgroundColor.b)
	local i = 0
	for x = #Image, 1, -1 do
		for y = 1, #Image[x] do
			local Source = Image[x][y]
			if Source ~= 0 then
				local RGB = string.format("%X", Image[x][y])
				while RGB:len() < 6 do
					RGB = "0" ..RGB
				end
				local R = tonumber("0x" ..RGB:sub(0, 2)) / 255
				local G = tonumber("0x" ..RGB:sub(3, 4)) / 255
				local B = tonumber("0x" ..RGB:sub(5, 6)) / 255
				local Pixel = Instance.new("Part", Holder)
				Pixel.Name = x.. ", " ..y
				Pixel.TopSurface = 0
				Pixel.BottomSurface = 0
				Pixel.BrickColor = BrickColor.new(Color3.new(R, G, B))
				Pixel.Anchored = true
				Pixel.FormFactor = "Custom"
				Pixel.Size = Vector3.new(Scale, Scale, Scale)
				Pixel.CFrame = Position * CFrame.new(x * Scale, y * Scale, 0)
				local Mesh = Instance.new("SpecialMesh", Pixel)
				Mesh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
				Mesh.TextureId = "http://www.roblox.com/Asset/?id=48358980"
				Mesh.Scale = Vector3.new(2, 2, 2) * Scale
				Mesh.VertexColor = Vector3.new(R, G, B)
				i = i + 1
				if i > Speed then
					wait()
					i = 0
				end
			end
		end
	end
end