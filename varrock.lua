vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
char = plyr.Character
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Varrock" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
char.Humanoid.WalkSpeed = 0
char.Torso.Anchored = true 
wait(0.1) 
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 0.5, 0)
wait(0.1) 
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 0.5, 0)
wait(0.1) 
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 0.5, 0)
wait(0.1) 
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 0.5, 0)
wait(0.1) 
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 0.5, 0)
wait(0.1) 
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 0.5, 0)
wait(0.1) 
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 0.5, 0) 
wait(1)
char.Torso.CFrame = CFrame.new(0, 3, 0)
char.Humanoid.WalkSpeed = 16
char.Torso.Anchored = false 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 