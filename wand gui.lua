--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 
sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id=1369158" 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Light Ambient" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Lighting.Ambient = Color3.new(2, 2, 2)
sound.Parent = workspace 
sound:play() 
wait(0.5) 
sound:stop() 
sound.Parent = nil 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 145)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Dark Ambient" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Lighting.Ambient = Color3.new(0, 0, 0)
sound.Parent = workspace 
sound:play() 
wait(0.5) 
sound:stop() 
sound.Parent = nil 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "remove" then 
sc:Remove() 
end 
end) 