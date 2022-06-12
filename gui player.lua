--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 
sc = Instance.new("ScreenGui") 
script.Parent = plyr.Character
sc.Name = "unHide" 
sc.Parent = pg 
local pitch = 1 
local sound = Instance.new("Sound")
sound.Name = "asdfasdfasfffsfafda"
sound.SoundId = "http://www.roblox.com/asset/?ID=33810432"
sound.Volume = 1 
sound.Pitch = pitch 
sound.Looped = true 
sound.archivable = true
sound.Parent = workspace.acb227  

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 150)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Pitch+0.5" 
tx3 = Instance.new("TextButton") 
tx3.BackgroundTransparency = 0.3 
tx3.Name = "Text - Reset" 
tx3.Parent = sc 
tx3.Position = UDim2.new(0, 200, 0, 175)
tx3.Size = UDim2.new(0, 99, 0, 20) 
tx3.Text = "Pitch-0.5" 
tx35 = Instance.new("TextButton") 
tx35.BackgroundTransparency = 0.3 
tx35.Name = "Text - Reset" 
tx35.Parent = sc 
tx35.Position = UDim2.new(0, 299, 0, 175)
tx35.Size = UDim2.new(0, 99, 0, 20) 
tx35.Text = "Pitch-0.25" 
tx25 = Instance.new("TextButton") 
tx25.BackgroundTransparency = 0.3 
tx25.Name = "Text - Reset" 
tx25.Parent = sc 
tx25.Position = UDim2.new(0, 299, 0, 150)
tx25.Size = UDim2.new(0, 99, 0, 20) 
tx25.Text = "Pitch+0.25" 
tx4 = Instance.new("TextButton") 
tx4.BackgroundTransparency = 0.3 
tx4.Name = "Text - Reset" 
tx4.Parent = sc 
tx4.Position = UDim2.new(0, 200, 0, 200)
tx4.Size = UDim2.new(0, 99, 0, 20) 
tx4.Text = "Play" 
tx5 = Instance.new("TextButton") 
tx5.BackgroundTransparency = 0.3 
tx5.Name = "Text - Reset" 
tx5.Parent = sc 
tx5.Position = UDim2.new(0, 200, 0, 225)
tx5.Size = UDim2.new(0, 99, 0, 20) 
tx5.Text = "Stop" 
tx6 = Instance.new("TextButton") 
tx6.BackgroundTransparency = 0.3 
tx6.Name = "Text - Reset" 
tx6.Parent = sc 
tx6.Position = UDim2.new(0, 200, 0, 250)
tx6.Size = UDim2.new(0, 99, 0, 20) 
tx6.Text = "Play pb+j" 
tx7 = Instance.new("TextButton") 
tx7.BackgroundTransparency = 0.3 
tx7.Name = "Text - Reset" 
tx7.Parent = sc 
tx7.Position = UDim2.new(0, 200, 0, 275)
tx7.Size = UDim2.new(0, 99, 0, 20) 
tx7.Text = "Play snap" 
tx8 = Instance.new("TextButton") 
tx8.BackgroundTransparency = 0.3 
tx8.Name = "Text - Reset" 
tx8.Parent = sc 
tx8.Position = UDim2.new(0, 200, 0, 300)
tx8.Size = UDim2.new(0, 99, 0, 20) 
tx8.Text = "Play victory" 
tx9 = Instance.new("TextButton") 
tx9.BackgroundTransparency = 0.3 
tx9.Name = "Text - Reset" 
tx9.Parent = sc 
tx9.Position = UDim2.new(0, 200, 0, 325)
tx9.Size = UDim2.new(0, 99, 0, 20) 
tx9.Text = "Play scatman" 
tx10 = Instance.new("TextButton") 
tx10.BackgroundTransparency = 0.3 
tx10.Name = "Text - Reset" 
tx10.Parent = sc 
tx10.Position = UDim2.new(0, 200, 0, 350)
tx10.Size = UDim2.new(0, 99, 0, 20) 
tx10.Text = "Play i kissed a girl" 
tx11 = Instance.new("TextButton") 
tx11.BackgroundTransparency = 0.3 
tx11.Name = "Text - Reset" 
tx11.Parent = sc 
tx11.Position = UDim2.new(0, 200, 0, 375)
tx11.Size = UDim2.new(0, 99, 0, 20) 
tx11.Text = "Play Old School" 
tx2 = Instance.new("TextLabel") 
tx2.BackgroundTransparency = 0.3 
tx2.Name = "Text - Reset" 
tx2.Parent = sc 
tx2.Position = UDim2.new(0, 200, 0, 125)
tx2.Size = UDim2.new(0, 99, 0, 20) 
tx2.Text = "Pitch: " ..pitch 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
if pitch < 5 then 
pitch = pitch + 0.5 
tx2.Text = "Pitch: " ..pitch 
sound.Pitch = pitch 
end 
end 
end) 
tx3.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
if pitch > -5 then 
pitch = pitch - 0.5 
tx2.Text = "Pitch: " ..pitch 
sound.Pitch = pitch 
end 
end 
end) 
tx35.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
if pitch > -5 then 
pitch = pitch - 0.25 
tx2.Text = "Pitch: " ..pitch 
sound.Pitch = pitch 
end 
end 
end) 
tx25.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
if pitch > -5 then 
pitch = pitch + 0.25 
tx2.Text = "Pitch: " ..pitch 
sound.Pitch = pitch 
end 
end 
end) 
tx4.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sound:play() 
end 
end) 
tx5.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sound:stop() 
end 
end) 
tx6.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sound.SoundId = "rbxasset://sounds\\pbg.wav" 
end 
end) 
tx7.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sound.SoundId = "rbxasset://sounds\\snap.wav" 
end 
end) 
tx8.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sound.SoundId = "rbxasset://sounds\\victory.wav" 
end 
end) 
tx9.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sound.SoundId = "rbxasset://sounds\\scatman.mp3" 
end 
end) 
tx10.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sound.SoundId = "rbxasset://sounds\\kissedagirl.mp3" 
end 
end) 
tx11.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sound.SoundId = "rbxasset://sounds\\oldschool.mp3" 
end 
end) 
plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
script:remove() 
end 
end) 