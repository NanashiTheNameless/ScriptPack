script.Parent = nil
nam = "xSoulStealerx"
me = game.Players[nam]

autospawn = "False"

function getprops(where)
properties = {}
table.insert(properties,"Parent")
table.insert(properties,"className")
table.insert(properties,"Name")
if where.className == "ObjectValue" then 
table.insert(properties, "Value") 
elseif where.className == "Part" or where.className == "Seat" then 
table.insert(properties, "BrickColor") 
table.insert(properties, "Size") 
table.insert(properties, "Material") 
table.insert(properties, "Reflectance") 
table.insert(properties, "Transparency") 
table.insert(properties, "Position") 
table.insert(properties, "RotVelocity") 
table.insert(properties, "Velocity") 
table.insert(properties, "Elasticity") 
table.insert(properties, "Friction") 
table.insert(properties, "Shape") 
table.insert(properties, "formFactor") 
table.insert(properties, "Anchored") 
table.insert(properties, "CanCollide") 
table.insert(properties, "Locked") 
elseif where.className == "Players" then 
table.insert(properties, "BubbleChat") 
table.insert(properties, "ClassicChat") 
table.insert(properties, "MaxPlayers") 
table.insert(properties, "NumPlayers") 
elseif where.className == "Player" then 
table.insert(properties, "Character") 
elseif where.className == "Lighting" then 
table.insert(properties, "Ambient") 
table.insert(properties, "Brightness") 
table.insert(properties, "ColorShift_Bottom") 
table.insert(properties, "ColorShift_Top") 
table.insert(properties, "ShadowColor") 
table.insert(properties, "GeographicLatitude") 
table.insert(properties, "TimeOfDay") 
elseif where.className == "StarterGui" then 
table.insert(properties, "ShowDevelopmentGui") 
elseif where.className == "Soundscape" then 
table.insert(properties, "AmbientReverb") 
table.insert(properties, "DistanceFactor") 
table.insert(properties, "DopplerScale") 
table.insert(properties, "RolloffScale") 
elseif where.className == "ClickDetector" then 
table.insert(properties, "MaxActivationDistance") 
elseif where.className == "Script" then 
table.insert(properties, "Disabled") 
table.insert(properties, "Source") 
elseif where.className == "Team" then 
table.insert(properties, "TeamColor") 
table.insert(properties, "AutoAssignable") 
table.insert(properties, "AutoColorCharacters") 
table.insert(properties, "Score") 
elseif where.className == "Tool" then 
table.insert(properties, "GripForward") 
table.insert(properties, "GripPos") 
table.insert(properties, "GripRight") 
table.insert(properties, "GripUp") 
table.insert(properties, "TextureId") 
table.insert(properties, "Enabled") 
elseif where.className == "HopperBin" then 
table.insert(properties, "Active") 
table.insert(properties, "BinType") 
table.insert(properties, "TextureId") 
elseif where.className == "ScreenGui" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
elseif where.className == "BillboardGui" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
table.insert(properties, "Adornee") 
table.insert(properties, "ExtentsOffset") 
table.insert(properties, "Size") 
table.insert(properties, "SizeOffset") 
table.insert(properties, "StudsOffset") 
elseif where.className == "TextBox" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
table.insert(properties, "Active") 
table.insert(properties, "BackgroundColor3") 
table.insert(properties, "BackgroundTransparency") 
table.insert(properties, "BorderColor3") 
table.insert(properties, "BorderSizePixel") 
table.insert(properties, "Position") 
table.insert(properties, "Size") 
table.insert(properties, "SizeConstraint") 
table.insert(properties, "Text") 
table.insert(properties, "TextColor3") 
table.insert(properties, "TextWrap") 
table.insert(properties, "TextXAlignment") 
table.insert(properties, "TextYAlignment") 
table.insert(properties, "Visible") 
table.insert(properties, "ZIndex") 
elseif where.className == "TextButton" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
table.insert(properties, "Active") 
table.insert(properties, "AutoButtonColor") 
table.insert(properties, "BackgroundColor3") 
table.insert(properties, "BackgroundTransparency") 
table.insert(properties, "BorderColor3") 
table.insert(properties, "BorderSizePixel") 
table.insert(properties, "Position") 
table.insert(properties, "Size") 
table.insert(properties, "SizeConstraint") 
table.insert(properties, "Text") 
table.insert(properties, "TextColor3") 
table.insert(properties, "TextWrap") 
table.insert(properties, "TextXAlignment") 
table.insert(properties, "TextYAlignment") 
table.insert(properties, "Visible") 
table.insert(properties, "ZIndex") 
elseif where.className == "TextLabel" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
table.insert(properties, "Active") 
table.insert(properties, "BackgroundColor3") 
table.insert(properties, "BackgroundTransparency") 
table.insert(properties, "BorderColor3") 
table.insert(properties, "BorderSizePixel") 
table.insert(properties, "Position") 
table.insert(properties, "Size") 
table.insert(properties, "SizeConstraint") 
table.insert(properties, "Text") 
table.insert(properties, "TextColor3") 
table.insert(properties, "TextWrap") 
table.insert(properties, "TextXAlignment") 
table.insert(properties, "TextYAlignment") 
table.insert(properties, "Visible") 
table.insert(properties, "ZIndex") 
elseif where.className == "Camera" then 
table.insert(properties, "CameraSubject") 
table.insert(properties, "CoordinateFrame") 
table.insert(properties, "CameraType") 
elseif where.className == "Sky" then 
table.insert(properties, "CelestialBodiesShown") 
table.insert(properties, "SkyboxBk") 
table.insert(properties, "SkyboxDn") 
table.insert(properties, "SkyboxFt") 
table.insert(properties, "SkyboxLf") 
table.insert(properties, "SkyboxRt") 
table.insert(properties, "SkyboxUp") 
table.insert(properties, "StarCount") 
elseif where.className == "Decal" then 
table.insert(properties, "Shiny") 
table.insert(properties, "Specular") 
table.insert(properties, "Texture") 
table.insert(properties, "Face") 
elseif where.className == "Shirt" then 
table.insert(properties, "ShirtTemplate") 
elseif where.className == "Pants" then 
table.insert(properties, "PantsTemplate") 
elseif where.className == "Fire" then 
table.insert(properties, "Heat") 
table.insert(properties, "Size") 
table.insert(properties, "Color") 
table.insert(properties, "SecondaryColor") 
elseif where.className == "Smoke" then 
table.insert(properties, "RiseVelocity") 
table.insert(properties, "Size") 
table.insert(properties, "Color") 
elseif where.className == "Model" then 
table.insert(properties, "PrimaryPart") 
elseif where.className == "Workspace" then 
table.insert(properties, "DistributedGameTime") 
table.insert(properties, "PrimaryPart") 
elseif string.match(where.className, "Value") then 
table.insert(properties, "Value") 
end
return properties
end

function createprops(where,mmk)
properties = getprops(where)
y = -9
for _,v in pairs(properties) do
property = tostring(where[v])
o = Instance.new("TextLabel",mmk)
o.Size = UDim2.new(2,0,0.62,0)
o.Position = UDim2.new(4,0,y,0)
o.Text = v
k = Instance.new("TextLabel",mmk)
k.Size = UDim2.new(3,0,0.62,0)
k.Position = UDim2.new(6,0,y,0)
k.Text = property
k.TextXAlignment = "Left"
y = y + 0.62
end
end

function gui(plr)
screen = Instance.new("ScreenGui",plr.PlayerGui)
screen.Name = "Explore"

main = Instance.new("TextButton",screen)
main.Size = UDim2.new(0.1,0,0.03,0)
main.Position = UDim2.new(0.02,0,0.3,0)
main.Text = "Home"
main.FontSize = "Size10"

bac = Instance.new("TextButton",screen)
bac.Size = UDim2.new(0.09,0,0.03,0)
bac.Position = UDim2.new(0.12,0,0.3,0)
bac.Text = "<< Back"
bac.FontSize = "Size10"

spawn = Instance.new("TextButton",screen)
spawn.Size = UDim2.new(0.09,0,0.03,0)
spawn.Position = UDim2.new(0.21,0,0.3,0)
spawn.Text = "Autospawn: "..autospawn
spawn.FontSize = "Size9"

spawn.MouseButton1Click:connect(function()
	if autospawn == "False" then
		autospawn = "True"
		spawn.Text = "Autospawn: "..autospawn
	elseif autospawn == "True" then
		autospawn = "False"
		spawn.Text = "Autospawn: "..autospawn
	end
end)

hide = Instance.new("TextButton",screen)
hide.Size = UDim2.new(0.026,0,0.026,0)
hide.Position = UDim2.new(0.02,0,0.257,0)
hide.Text = "-"
hide.FontSize = "Size14"

hide.MouseButton1Click:connect(function()
	if main.Visible == true then
		main.Visible = false
		spawn.Visible = false
		bac.Visible = false
		hide.Text = "+"
	else
		main.Visible = true
		spawn.Visible = true
		bac.Visible = true
		hide.Text = "-"
	end
end)

place = game

function remove()
	local a = main:GetChildren()
	for i=1, #a do
		coroutine.resume(coroutine.create(function()
			for o=0,1,0.25 do
				wait()
				a[i].BackgroundTransparency = o
				a[i].TextTransparency = o
			end
			a[i]:remove()
		end))
	end
end

function go(gui)
	coroutine.resume(coroutine.create(function()
	remove()
	end))
	local posx = 0
	local posy = 1.1
	local xd = place:findFirstChild(gui.Text)
	if xd ~= nil then
		place = xd
		local ok = place:GetChildren()
		if #ok >= 0 then
		local green = 0.4
		local colormode = 0
		for i=1, #ok do
			local button = Instance.new("TextButton",main)
			button.Size = UDim2.new(1,0,1,0)
			button.Position = UDim2.new(posx,0,posy,0)
			button.Text = ok[i].Name
			button.BackgroundColor3 = Color3.new(0.1,green,0.1)
			button.BackgroundTransparency = 1
			button.TextTransparency = 1
			coroutine.resume(coroutine.create(function()
				for o=1,0,-0.25 do
					wait()
					button.BackgroundTransparency = o
					button.TextTransparency = o
				end
			end))
			button.MouseButton1Click:connect(function()
				go(button)
				createprops(place,main)
			end)
			button.MouseButton2Click:connect(function()
				ok[i]:remove()
				button:remove()
			end)
			posy = posy + 1.08
			if posy >= 14 then
				posy = 1.08
				posx = posx + 1.1
			end
			if colormode == 0 then
				green = green + 0.1
				if green > 0.96 then
					colormode = 1
				end
			else
				green = green - 0.1
				if green < 0.45 then
					colormode = 0
				end
			end
		end
		end
	end
end

function back()
	coroutine.resume(coroutine.create(function()
	remove()
	end))
	local posx = 0
	local posy = 1.1
	if place.Parent ~= nil then
	place = place.Parent
	local ok = place:GetChildren()
	if #ok >= 0 then
	local green = 0.4
	local colormode = 0
	for i=1, #ok do
		local button = Instance.new("TextButton",main)
		button.Size = UDim2.new(1,0,1,0)
		button.Position = UDim2.new(posx,0,posy,0)
		button.Text = ok[i].Name
		button.BackgroundColor3 = Color3.new(0.1,green,0.1)
		button.BackgroundTransparency = 1
		button.TextTransparency = 1
		coroutine.resume(coroutine.create(function()
			for o=1,0,-0.25 do
				wait()
				button.BackgroundTransparency = o
				button.TextTransparency = o
			end
		end))
		button.MouseButton1Click:connect(function()
			go(button)
			createprops(place,main)
		end)
		button.MouseButton2Click:connect(function()
			ok[i]:remove()
			button:remove()
		end)
		posy = posy + 1.08
		if posy >= 14 then
			posy = 1.08
			posx = posx + 1.1
		end
		if colormode == 0 then
			green = green + 0.1
			if green > 0.96 then
				colormode = 1
			end
		else
			green = green - 0.1
			if green < 0.45 then
				colormode = 0
			end
		end
	end
	end
	end
end

function home()
	coroutine.resume(coroutine.create(function()
	remove()
	end))
	local posx = 0
	local posy = 1.1
	place = game
	local ok = place:GetChildren()
	local green = 0.4
	local colormode = 0
	for i=1, #ok do
		local button = Instance.new("TextButton",main)
		button.Size = UDim2.new(1,0,1,0)
		button.Position = UDim2.new(posx,0,posy,0)
		button.Text = ok[i].Name
		button.BackgroundColor3 = Color3.new(0.1,green,0.1)
		button.BackgroundTransparency = 1
		button.TextTransparency = 1
		coroutine.resume(coroutine.create(function()
			for o=1,0,-0.25 do
				wait()
				button.BackgroundTransparency = o
				button.TextTransparency = o
			end
		end))
		button.MouseButton1Click:connect(function()
			go(button)
			createprops(place,main)
		end)
		button.MouseButton2Click:connect(function()
			ok[i]:remove()
			button:remove()
		end)
		posy = posy + 1.08
		if posy >= 14 then
			posy = 1.08
			posx = posx + 1.1
		end
		if colormode == 0 then
			green = green + 0.1
			if green > 0.99 then
				colormode = 1
			end
		else
			green = green - 0.1
			if green < 0.4 then
				colormode = 0
			end
		end
	end
end

main.MouseButton1Down:connect(function()
	home()
	createprops(place,main)
end)

bac.MouseButton1Down:connect(function()
	back()
	createprops(place,main)
end)
end

gui(me)

me.Changed:connect(function(prop)
	if prop == "Character" then
		if autospawn == "True" then
			gui(me)
		end
	end
end)
