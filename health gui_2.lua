--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 
hea = plyr.Character.Humanoid.Health 
tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0 
tx.Name = "Stats" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 200)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Stats" 

tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0 
tx.Name = "Health" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 220)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Health: " ..hea.. " " 

--[[ tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) ]]--

plyr.Chatted:connect(function(msg) 
if msg == "remove" then 
sc:Remove() 
end 
end) 
while true do 
hea = plyr.Character.Humanoid.Health 
tx.Text = "Health: " ..hea.. " " 
wait() 
if hea <= 50 then 
tx.BackgroundTransparency = 0.5 
end 
if hea <= 0 then 
tx.BackgroundTransparency = 1 
end 
end 