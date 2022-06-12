
local CustomDataConfig={
	
	
	ID = 514558366,
	
	Volume = 0.5,
	
	Looped = true
	
	
}

-- Script Main Source *DO NOT EDIT* --
wait()
local ColorsCS = {
	c1 = "Pastel blue-green",
	c2 = "Really red",
	c3 = "White",
	c4 = "Lime green",
	c5 = "Deep orange",
	c6 = "Magenta",
	c7 = "Really black",
	c8 = "Rainbow"
}

local SelectedColor = ColorsCS["c1"]

local gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
gui.Name = "MusicDjGUI"
local holder = Instance.new("Frame",gui)
holder.BackgroundColor3 = Color3.fromRGB(133, 235, 255)
holder.BorderColor3 = Color3.fromRGB(42, 85, 90)
holder.Size = UDim2.new(0,150,0,520)
holder.Position = UDim2.new(1,-150,0.5,-260)
holder.BorderSizePixel = 2
holder.BackgroundTransparency = 1
local label1 = Instance.new("TextLabel",holder)
label1.Text = "DJBoard"
label1.FontSize = Enum.FontSize.Size32
label1.TextWrapped = true
label1.TextColor3 = Color3.fromRGB(255,255,255)
label1.TextStrokeColor3 = Color3.fromRGB(0,0,0)
label1.Font = Enum.Font.Arcade
label1.TextStrokeTransparency = 1
label1.TextYAlignment = Enum.TextYAlignment.Top
label1.Size = UDim2.new(1,0,0,50)
label1.Position = UDim2.new(0,0,0,-6)
label1.BackgroundTransparency = 1
local linesp1 = Instance.new("Frame",holder)
linesp1.BackgroundColor3 = Color3.fromRGB(255,255,255)
linesp1.BorderSizePixel = 0
linesp1.Position = UDim2.new(0,5,0,34)
linesp1.Size = UDim2.new(0,140,0,2)
local button_mute = Instance.new("TextButton",holder)
button_mute.BackgroundColor3 = Color3.fromRGB(255,255,255)
button_mute.BorderSizePixel = 0
button_mute.BorderColor3 = Color3.fromRGB(0,0,0)
button_mute.AutoButtonColor = false
button_mute.Position = UDim2.new(0,5,0,45)
button_mute.Size = UDim2.new(0,140,0,30)
button_mute.Font = Enum.Font.SourceSansLight
button_mute.FontSize = Enum.FontSize.Size10
button_mute.Text = "Mute Music"
button_mute.TextColor3 = Color3.fromRGB(0,0,0)
button_mute.TextScaled = true
button_mute.TextStrokeColor3 = Color3.fromRGB(0,0,0)
button_mute.TextStrokeTransparency = 0.9
button_mute.TextWrapped = true
local button_repeat = Instance.new("TextButton",holder)
button_repeat.BackgroundColor3 = Color3.fromRGB(255,255,255)
button_repeat.BorderSizePixel = 0
button_repeat.BorderColor3 = Color3.fromRGB(0,0,0)
button_repeat.AutoButtonColor = false
button_repeat.Position = UDim2.new(0,5,0,80)
button_repeat.Size = UDim2.new(0,140,0,30)
button_repeat.Font = Enum.Font.SourceSansLight
button_repeat.FontSize = Enum.FontSize.Size10
button_repeat.Text = "Repeat"
button_repeat.TextColor3 = Color3.fromRGB(0,0,0)
button_repeat.TextScaled = true
button_repeat.TextStrokeColor3 = Color3.fromRGB(0,0,0)
button_repeat.TextStrokeTransparency = 0.9
button_repeat.TextWrapped = true
local button_idi = Instance.new("TextBox",holder)
button_idi.BackgroundColor3 = Color3.fromRGB(255,255,255)
button_idi.BorderSizePixel = 0
button_idi.BorderColor3 = Color3.fromRGB(0,0,0)
button_idi.Position = UDim2.new(0,5,0,115)
button_idi.Size = UDim2.new(0,140,0,30)
button_idi.Font = Enum.Font.SourceSansItalic
button_idi.FontSize = Enum.FontSize.Size10
button_idi.Text = "Insert Music ID Here"
button_idi.TextColor3 = Color3.fromRGB(0,0,0)
button_idi.TextScaled = true
button_idi.TextStrokeColor3 = Color3.fromRGB(0,0,0)
button_idi.TextStrokeTransparency = 0.9
button_idi.TextWrapped = true
local button_color = Instance.new("TextButton",holder)
button_color.BackgroundColor3 = Color3.fromRGB(255,255,255)
button_color.BorderSizePixel = 0
button_color.BorderColor3 = Color3.fromRGB(0,0,0)
button_color.AutoButtonColor = false
button_color.Position = UDim2.new(0,5,0,150)
button_color.Size = UDim2.new(0,140,0,30)
button_color.Font = Enum.Font.SourceSansLight
button_color.FontSize = Enum.FontSize.Size10
button_color.Text = "Change Color"
button_color.TextColor3 = Color3.fromRGB(0,0,0)
button_color.TextScaled = true
button_color.TextStrokeColor3 = Color3.fromRGB(0,0,0)
button_color.TextStrokeTransparency = 0.9
button_color.TextWrapped = true

local x = game.Players.LocalPlayer.Character.Torso.CFrame
local x1 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x1"
local x2 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x2"
local x3 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x3"
local x4 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x4"
local x5 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x5"
local x6 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x6"
local x7 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x7"
local x8 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x8"
local x9 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x9"
local x10 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x10"
local x11 = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x11"
x1.Anchored = true
x2.Anchored = true
x3.Anchored = true
x4.Anchored = true
x5.Anchored = true
x6.Anchored = true
x7.Anchored = true
x8.Anchored = true
x9.Anchored = true
x10.Anchored = true
x11.Anchored = true
x1.CanCollide = false
x2.CanCollide = false
x3.CanCollide = false
x4.CanCollide = false
x5.CanCollide = false
x6.CanCollide = false
x7.CanCollide = false
x8.CanCollide = false
x9.CanCollide = false
x10.CanCollide = false
x11.CanCollide = false
x1.Size = Vector3.new(0.2,0.2,1.4)
x2.Size = Vector3.new(0.2,0.4,1.4)
x3.Size = Vector3.new(0.2,0.6,1.4)
x4.Size = Vector3.new(0.2,0.8,1.4)
x5.Size = Vector3.new(0.2,1,1.4)
x6.Size = Vector3.new(0.2,1.2,1.4)
x7.Size = Vector3.new(0.2,1.4,1.4)
x8.Size = Vector3.new(0.2,1.6,1.4)
x9.Size = Vector3.new(0.2,1.8,1.4)
x10.Size = Vector3.new(0.2,2,1.4)
x11.Size = Vector3.new(0.2,2.2,1.4)
x1.Material = "Neon"
x2.Material = "Neon"
x3.Material = "Neon"
x4.Material = "Neon"
x5.Material = "Neon"
x6.Material = "Neon"
x7.Material = "Neon"
x8.Material = "Neon"
x9.Material = "Neon"
x10.Material = "Neon"
x11.Material = "Neon"





























local x1x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x1"
local x2x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x2"
local x3x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x3"
local x4x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x4"
local x5x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x5"
local x6x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x6"
local x7x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x7"
local x8x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x8"
local x9x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x9"
local x10x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x10"
local x11x = Instance.new("Part",game.Players.LocalPlayer.Character) x1.Name = "x11"
x1x.Anchored = true
x2x.Anchored = true
x3x.Anchored = true
x4x.Anchored = true
x5x.Anchored = true
x6x.Anchored = true
x7x.Anchored = true
x8x.Anchored = true
x9x.Anchored = true
x10x.Anchored = true
x11x.Anchored = true
x1x.CanCollide = false
x2x.CanCollide = false
x3x.CanCollide = false
x4x.CanCollide = false
x5x.CanCollide = false
x6x.CanCollide = false
x7x.CanCollide = false
x8x.CanCollide = false
x9x.CanCollide = false
x10x.CanCollide = false
x11x.CanCollide = false
x1x.Size = Vector3.new(0.2,0.2,1.4)
x2x.Size = Vector3.new(0.2,0.4,1.4)
x3x.Size = Vector3.new(0.2,0.6,1.4)
x4x.Size = Vector3.new(0.2,0.8,1.4)
x5x.Size = Vector3.new(0.2,1,1.4)
x6x.Size = Vector3.new(0.2,1.2,1.4)
x7x.Size = Vector3.new(0.2,1.4,1.4)
x8x.Size = Vector3.new(0.2,1.6,1.4)
x9x.Size = Vector3.new(0.2,1.8,1.4)
x10x.Size = Vector3.new(0.2,2,1.4)
x11x.Size = Vector3.new(0.2,2.2,1.4)
x1x.Material = "Neon"
x2x.Material = "Neon"
x3x.Material = "Neon"
x4x.Material = "Neon"
x5x.Material = "Neon"
x6x.Material = "Neon"
x7x.Material = "Neon"
x8x.Material = "Neon"
x9x.Material = "Neon"
x10x.Material = "Neon"
x11x.Material = "Neon"


























local sound = Instance.new("Sound",game.Players.LocalPlayer.Character.Head) 
sound.SoundId = "http://www.roblox.com/asset/?id="..CustomDataConfig["ID"]
sound.Volume = CustomDataConfig["Volume"]
sound.Looped = CustomDataConfig["Looped"]
sound.Name = "MusicDJ"
sound:Play()

button_mute.MouseButton1Click:connect(function()
	if sound.Volume == CustomDataConfig["Volume"] or sound.Volume > 0 then
		sound.Volume = 0
	elseif sound.Volume == 0 then
		sound.Volume = CustomDataConfig["Volume"]
		end
end)
button_repeat.MouseButton1Click:connect(function()
	sound:Play()
end)
button_idi.Changed:connect(function()
	sound.SoundId = "http://www.roblox.com/asset/?id="..button_idi.Text
	sound:Play()
end)
button_color.MouseButton1Click:connect(function()
	if SelectedColor == ColorsCS["c1"] then
		SelectedColor = ColorsCS["c2"]
	elseif SelectedColor == ColorsCS["c2"] then
		SelectedColor = ColorsCS["c3"]
	elseif SelectedColor == ColorsCS["c3"] then
		SelectedColor = ColorsCS["c4"]
	elseif SelectedColor == ColorsCS["c4"] then
		SelectedColor = ColorsCS["c5"]
	elseif SelectedColor == ColorsCS["c5"] then
		SelectedColor = ColorsCS["c6"]
	elseif SelectedColor == ColorsCS["c6"] then
		SelectedColor = ColorsCS["c7"]
		elseif SelectedColor == ColorsCS["c7"] then
		SelectedColor = ColorsCS["c8"]
	elseif SelectedColor == ColorsCS["c8"] then
		SelectedColor = ColorsCS["c1"]
	end
end)
		x1x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-1.5)
x2x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-3)
x3x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-4.5)
x4x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-6)
x5x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-7.5)
x6x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-9)
x7x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-10.5)
x8x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-12)
x9x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-13.5)
x10x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-15)
x11x.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z-16.5)
x1.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+1.5)
x2.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+3)
x3.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+4.5)
x4.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+6)
x5.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+7.5)
x6.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+9)
x7.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+10.5)
x8.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+12)
x9.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+13.5)
x10.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+15)
x11.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X,game.Players.LocalPlayer.Character.Torso.Position.Y+40,game.Players.LocalPlayer.Character.Torso.Position.Z+16.5)

while true do
	
	
	
	
	if SelectedColor ~= ColorsCS["c8"] then
x1x.BrickColor = BrickColor.new(SelectedColor)
x2x.BrickColor = BrickColor.new(SelectedColor)
x3x.BrickColor = BrickColor.new(SelectedColor)
x4x.BrickColor = BrickColor.new(SelectedColor)
x5x.BrickColor = BrickColor.new(SelectedColor)
x6x.BrickColor = BrickColor.new(SelectedColor)
x7x.BrickColor = BrickColor.new(SelectedColor)
x8x.BrickColor = BrickColor.new(SelectedColor)
x9x.BrickColor = BrickColor.new(SelectedColor)
x10x.BrickColor = BrickColor.new(SelectedColor)
x11x.BrickColor = BrickColor.new(SelectedColor)
x1.BrickColor = BrickColor.new(SelectedColor)
x2.BrickColor = BrickColor.new(SelectedColor)
x3.BrickColor = BrickColor.new(SelectedColor)
x4.BrickColor = BrickColor.new(SelectedColor)
x5.BrickColor = BrickColor.new(SelectedColor)
x6.BrickColor = BrickColor.new(SelectedColor)
x7.BrickColor = BrickColor.new(SelectedColor)
x8.BrickColor = BrickColor.new(SelectedColor)
x9.BrickColor = BrickColor.new(SelectedColor)
x10.BrickColor = BrickColor.new(SelectedColor)
x11.BrickColor = BrickColor.new(SelectedColor)
	else  
		colorrandom = BrickColor.Random()
		x1x.BrickColor = colorrandom
x2x.BrickColor = colorrandom
x3x.BrickColor = colorrandom
x4x.BrickColor = colorrandom
x5x.BrickColor = colorrandom
x6x.BrickColor = colorrandom
x7x.BrickColor = colorrandom
x8x.BrickColor = colorrandom
x9x.BrickColor = colorrandom
x10x.BrickColor = colorrandom
x11x.BrickColor = colorrandom
x1.BrickColor = colorrandom
x2.BrickColor = colorrandom
x3.BrickColor = colorrandom
x4.BrickColor = colorrandom
x5.BrickColor = colorrandom
x6.BrickColor = colorrandom
x7.BrickColor = colorrandom
x8.BrickColor = colorrandom
x9.BrickColor = colorrandom
x10.BrickColor = colorrandom
x11.BrickColor = colorrandom
		end
	
	
	
	
	
	
	
	
	



	if sound.Volume > 0 then
	if sound.PlaybackLoudness-1 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x1.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-1,0.8)
	x1.Transparency = 0
	else
		x1.Size = Vector3.new(0.2,0.2,0.8)
		x1.Transparency = 1
	end
	
	if sound.PlaybackLoudness-2 > 0.2 or sound.PlaybackLoudness/2 == 0.2 then
	x2.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-2,0.8)
	x2.Transparency = 0
	else
		x2.Size = Vector3.new(0.2,0.2,0.8)
		x2.Transparency = 1
	end
	
	if sound.PlaybackLoudness-3 > 0.2 or sound.PlaybackLoudness/2 == 0.2 then
	x3.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-3,0.8)
	x3.Transparency = 0
	else
		x3.Size = Vector3.new(0.2,0.2,0.8)
		x3.Transparency = 1
	end
	
	if sound.PlaybackLoudness-4 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x4.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-4,0.8)
	x4.Transparency = 0
	else
		x4.Size = Vector3.new(0.2,0.2,0.8)
		x4.Transparency = 1
	end
	
	if sound.PlaybackLoudness-5 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x5.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-5,0.8)
	x5.Transparency = 0
	else
		x5.Size = Vector3.new(0.2,0.2,0.8)
		x5.Transparency = 1
	end
	
	if sound.PlaybackLoudness-6 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x6.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-6,0.8)
	x6.Transparency = 0
	else
		x6.Size = Vector3.new(0.2,0.2,0.8)
		x6.Transparency = 1
	end
	
	if sound.PlaybackLoudness-7 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x7.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-7,0.8)
	x7.Transparency = 0
	else
		x7.Size = Vector3.new(0.2,0.2,0.8)
		x7.Transparency = 1
	end
	
	if sound.PlaybackLoudness-8 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x8.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-8,0.8)
	x8.Transparency = 0
	else
		x8.Size = Vector3.new(0.2,0.2,0.8)
		x8.Transparency = 1
	end
	
	if sound.PlaybackLoudness-9 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x9.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-9,0.8)
	x9.Transparency = 0
	else
		x9.Size = Vector3.new(0.2,0.2,0.8)
		x9.Transparency = 1
	end
	
	if sound.PlaybackLoudness-10 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x10.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-10,0.8)
	x10.Transparency = 0
	else
		x10.Size = Vector3.new(0.2,0.2,0.8)
		x10.Transparency = 1
	end
	
	if sound.PlaybackLoudness-11 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x11.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-11,0.8)
	x11.Transparency = 0
	else
		x11.Size = Vector3.new(0.2,0.2,0.8)
		x11.Transparency = 1
	end	
	else
x1.Size = Vector3.new(0.2,0.2,0.8)
x2.Size = Vector3.new(0.2,0.2,0.8)
x3.Size = Vector3.new(0.2,0.2,0.8)
x4.Size = Vector3.new(0.2,0.2,0.8)
x5.Size = Vector3.new(0.2,0.2,0.8)
x6.Size = Vector3.new(0.2,0.2,0.8)
x7.Size = Vector3.new(0.2,0.2,0.8)
x8.Size = Vector3.new(0.2,0.2,0.8)
x9.Size = Vector3.new(0.2,0.2,0.8)
x10.Size = Vector3.new(0.2,0.2,0.8)
x11.Size = Vector3.new(0.2,0.2,0.8)
x1x.Size = Vector3.new(0.2,0.2,0.8)
x2x.Size = Vector3.new(0.2,0.2,0.8)
x3x.Size = Vector3.new(0.2,0.2,0.8)
x4x.Size = Vector3.new(0.2,0.2,0.8)
x5x.Size = Vector3.new(0.2,0.2,0.8)
x6x.Size = Vector3.new(0.2,0.2,0.8)
x7x.Size = Vector3.new(0.2,0.2,0.8)
x8x.Size = Vector3.new(0.2,0.2,0.8)
x9x.Size = Vector3.new(0.2,0.2,0.8)
x10x.Size = Vector3.new(0.2,0.2,0.8)
x11x.Size = Vector3.new(0.2,0.2,0.8)
end
























if sound.Volume > 0 then
	if sound.PlaybackLoudness-1 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x1x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-1,0.8)
	x1x.Transparency = 0
	else
		x1x.Size = Vector3.new(0.2,0.2,0.8)
		x1x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-2 > 0.2 or sound.PlaybackLoudness/2 == 0.2 then
	x2x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-2,0.8)
	x2x.Transparency = 0
	else
		x2x.Size = Vector3.new(0.2,0.2,0.8)
		x2x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-3 > 0.2 or sound.PlaybackLoudness/2 == 0.2 then
	x3x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-3,0.8)
	x3x.Transparency = 0
	else
		x3x.Size = Vector3.new(0.2,0.2,0.8)
		x3x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-4 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x4x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-4,0.8)
	x4x.Transparency = 0
	else
		x4x.Size = Vector3.new(0.2,0.2,0.8)
		x4x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-5 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x5x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-5,0.8)
	x5x.Transparency = 0
	else
		x5.Size = Vector3.new(0.2,0.2,0.8)
		x5.Transparency = 1
	end
	
	if sound.PlaybackLoudness-6 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x6x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-6,0.8)
	x6x.Transparency = 0
	else
		x6x.Size = Vector3.new(0.2,0.2,0.8)
		x6x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-7 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x7x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-7,0.8)
	x7x.Transparency = 0
	else
		x7x.Size = Vector3.new(0.2,0.2,0.8)
		x7x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-8 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x8x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-8,0.8)
	x8x.Transparency = 0
	else
		x8x.Size = Vector3.new(0.2,0.2,0.8)
		x8x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-9 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x9x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-9,0.8)
	x9x.Transparency = 0
	else
		x9x.Size = Vector3.new(0.2,0.2,0.8)
		x9x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-10 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x10x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-10,0.8)
	x10x.Transparency = 0
	else
		x10x.Size = Vector3.new(0.2,0.2,0.8)
		x10x.Transparency = 1
	end
	
	if sound.PlaybackLoudness-11 > 0.2 or sound.PlaybackLoudness == 0.2 then
	x11x.Size = Vector3.new(0.2,sound.PlaybackLoudness/15-11,0.8)
	x11x.Transparency = 0
	else
		x11x.Size = Vector3.new(0.2,0.2,0.8)
		x11x.Transparency = 1
	end	
	else
x1.Size = Vector3.new(0.2,0.2,0.8)
x2.Size = Vector3.new(0.2,0.2,0.8)
x3.Size = Vector3.new(0.2,0.2,0.8)
x4.Size = Vector3.new(0.2,0.2,0.8)
x5.Size = Vector3.new(0.2,0.2,0.8)
x6.Size = Vector3.new(0.2,0.2,0.8)
x7.Size = Vector3.new(0.2,0.2,0.8)
x8.Size = Vector3.new(0.2,0.2,0.8)
x9.Size = Vector3.new(0.2,0.2,0.8)
x10.Size = Vector3.new(0.2,0.2,0.8)
x11.Size = Vector3.new(0.2,0.2,0.8)
x1x.Size = Vector3.new(0.2,0.2,0.8)
x2x.Size = Vector3.new(0.2,0.2,0.8)
x3x.Size = Vector3.new(0.2,0.2,0.8)
x4x.Size = Vector3.new(0.2,0.2,0.8)
x5x.Size = Vector3.new(0.2,0.2,0.8)
x6x.Size = Vector3.new(0.2,0.2,0.8)
x7x.Size = Vector3.new(0.2,0.2,0.8)
x8x.Size = Vector3.new(0.2,0.2,0.8)
x9x.Size = Vector3.new(0.2,0.2,0.8)
x10x.Size = Vector3.new(0.2,0.2,0.8)
x11x.Size = Vector3.new(0.2,0.2,0.8)
end






















	
	wait()
end