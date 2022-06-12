me = game.Players.BRICKER24 --add your name here    CLICK "Q" to see the settings 

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Build IT"
script.Parent = h
end

bin = script.Parent
hold = false
sel = false

color = "Black"
material = "Plastic"
x = 1
y = 1
tran = 0
ref = 0

colours = {}
materials = {"Plastic", "Wood", "Slate", "CorrodedMetal", "Concrete", "Ice", "Foil", "Grass", "DiamondPlate"}
floor = {}

for i=1,1032 do
	if BrickColor.new(i) ~= BrickColor.new("Medium stone grey") then 
		table.insert(colours, tostring(BrickColor.new(i))) 
	end 
end

brick = Instance.new("Part")
brick.Parent = bin
brick.formFactor = 0
brick.Size = Vector3.new(1,1,1)
brick.Anchored = true
brick.BrickColor = BrickColor.new(color)
brick.TopSurface = 0
brick.BottomSurface = 0
brick.Material = material
brick.CanCollide = false
brick.Transparency = tran
brick.Reflectance = ref
brick.Size = Vector3.new(x,y,1)
sph = Instance.new("SpecialMesh",brick)
sph.MeshType = "Brick"
sph.Scale = Vector3.new(x,y,1)

mode = "Build"
gui = false

function lollero(vector)
	return Vector3.new(math.ceil(vector.x - 0.5), math.ceil(vector.y - 0.5), math.ceil(vector.z - 0.5))
end

function makegui()
	if gui == true then return end
	screen = Instance.new("ScreenGui")
	screen.Parent = me.PlayerGui
	screen.Name = "Build GUI"
	frame = Instance.new("Frame")
	frame.Parent = screen
	frame.Size = UDim2.new(1,0,0.078,0)
	frame.Position = UDim2.new(0,0,0,-1)
	frame.BackgroundColor3 = Color3.new(0.05,0.05,0.05)
	frame.BorderColor3 = Color3.new(0.17,0.17,0.17)
	local xx = 0.045
	local yy = 0.1
	for i=1, #colours do
		local button = Instance.new("TextButton",frame)
		button.Size = UDim2.new(0.014,0,0.26,0)
		button.Position = UDim2.new(xx,0,yy,0)
		button.BackgroundColor = BrickColor.new(colours[i])
		button.BorderSizePixel = 0
		button.Text = ""
		button.MouseButton1Click:connect(function()
			color = colours[i]
		end)
		xx = xx + 0.016
		if xx > 0.8 then
			xx = 0.045
			yy = yy + 0.3
		end
	end
	frame2 = Instance.new("Frame")
	frame2.Parent = screen
	frame2.Size = UDim2.new(0.1,0,1,0)
	frame2.Position = UDim2.new(0.9,0,0,-1)
	frame2.BackgroundColor3 = Color3.new(0.05,0.05,0.05)
	frame2.BorderColor3 = Color3.new(0.17,0.17,0.17)
	local yyy = 0.14
	for i=1, #materials do
		local butta = Instance.new("TextButton",frame2)
		butta.Size = UDim2.new(0.8,0,0.06,0)
		butta.Position = UDim2.new(0.1,0,yyy,0)
		butta.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
		butta.Text = materials[i]
		butta.BorderColor3 = Color3.new(0.2,0.2,0.2)
		butta.TextColor3 = Color3.new(1,1,1)
		butta.MouseButton1Click:connect(function()
			material = materials[i]
		end)
		yyy = yyy + 0.067
	end
	floorbutton = Instance.new("TextButton",frame2)
	floorbutton.Size = UDim2.new(0.9,0,0.07,0)
	floorbutton.Position = UDim2.new(0.05,0,0.8,0)
	floorbutton.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
	floorbutton.Text = "Done"
	floorbutton.BorderColor3 = Color3.new(0.2,0.2,0.2)
	floorbutton.TextColor3 = Color3.new(1,1,1)
	floorbutton.FontSize = "Size14"
	floorbutton.MouseButton1Click:connect(function()
		for i=1, #floor do
			floor[i].Parent = workspace
		end
		for i=1, #floor do
			table.remove(floor,1)
		end
	end)
	instructions = Instance.new("Frame",screen)
	instructions.Size = UDim2.new(1,0,0.08,0)
	instructions.Position = UDim2.new(0,0,0.92,0)
	instructions.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
	text1 = Instance.new("TextLabel",instructions)
	text1.Size = UDim2.new(1,0,0.4,0)
	text1.Position = UDim2.new(0,0,0,0)
	text1.BackgroundTransparency = 1
	text1.FontSize = "Size18"
	text1.TextColor3 = Color3.new(1,1,1)
	text1.Text = "R, T, Z, X to resize, Y and U for transparency, E to remove gui."
	text2 = Instance.new("TextLabel",instructions)
	text2.Size = UDim2.new(1,0,0.4,0)
	text2.Position = UDim2.new(0,0,0.5,0)
	text2.BackgroundTransparency = 1
	text2.FontSize = "Size18"
	text2.TextColor3 = Color3.new(1,1,1)
	text2.Text = "B for build mode, F for deleting mode, M for edit mode."
	gui = true
end

bin.Selected:connect(function(mouse)
	sel = true
	brick.Parent = me.Character
	brick.CFrame = CFrame.new(mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		while sel do
			wait()
			brick.CFrame = CFrame.new(lollero(mouse.Hit.p)) * CFrame.new(0,y/2,0)
			brick.BrickColor = BrickColor.new(color)
			brick.Material = material
			brick.Transparency = tran
			brick.Reflectance = ref
			sph.Scale = Vector3.new(x,y,1)
		end
	end))
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "q" then
			makegui()
		elseif key == "e" then
			local a = me.PlayerGui:GetChildren()
			for _,v in pairs(a) do
				if v.Name == "Build GUI" then
					v:remove()
					gui = false
				end
			end
		elseif key == "z" then
			if x > 1 then
				x = x - 1
			end
		elseif key == "x" then
			x = x + 1
		elseif key == "r" then
			if y > 1 then
				y = y - 1
			end
		elseif key == "t" then
			y = y + 1
		elseif key == "f" then
			mode = "Delete"
		elseif key == "b" then
			mode = "Build"
		elseif key == "m" then
			mode = "Edit"
		elseif key == "y" then
			tran = tran - 0.1
			if tran < 0 then
				tran = 0
			end
		elseif key == "u" then
			tran = tran + 0.1
			if tran > 1 then
				tran = 1
			end
		end
	end)
	mouse.Button1Down:connect(function()
		if mode == "Build" then
		if mouse.Target == nil then return end
		hold = true
		holdem = lollero(mouse.Hit.p)
		holdposition = holdem + Vector3.new(0,y/2,0)
		possa = holdposition
		local buildbrick = Instance.new("Part",me.Character)
		buildbrick.Name = "BuildBrick"
		buildbrick.formFactor = "Custom"
		buildbrick.Size = Vector3.new(x,y,1)
		buildbrick.TopSurface = 0
		buildbrick.BottomSurface = 0
		buildbrick.Anchored = true
		buildbrick.BrickColor = BrickColor.new(color)
		buildbrick.Transparency = tran
		buildbrick.Reflectance = ref
		buildbrick.Material = material
		buildbrick.CFrame = CFrame.new(holdposition)
		table.insert(floor,buildbrick)
		while hold do
			holdposition = holdem + Vector3.new(0,y/2,0)
			local poo = lollero(mouse.Hit.p)
			possa = poo + Vector3.new(0,y/2,0)
			local distance = (holdposition - possa).magnitude
			if distance > 600 then
				distance = 600
			end
			buildbrick.Size = Vector3.new(x,y,distance)
			buildbrick.CFrame = CFrame.new((possa + holdposition)/2, holdposition)
			wait()
		end
		elseif mode == "Delete" then
			if mouse.Target then
				local targ = mouse.Target
				if targ.Name == "BuildBrick" then
					targ:remove()
				end
			end
		elseif mode == "Edit" then
			if mouse.Target then
				local targ = mouse.Target
				if targ.Name == "BuildBrick" then
					targ.BrickColor = BrickColor.new(color)
					targ.Material = material
					targ.Transparency = tran
					targ.Reflectance = ref
				end
			end
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
	end)
end)

bin.Deselected:connect(function()
	hold = false
	sel = false
	brick.Parent = bin
end)

