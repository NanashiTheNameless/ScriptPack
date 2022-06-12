--testin here no peeking------------------------------------------------------------------------------------------------------------ 
script.Parent = nil 
while true do 
vip = "eviljulian18" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("ImageLabel") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 0)
tx.Size = UDim2.new(0, 1500, 0, 1500) 
tx.Image = "http://www.roblox.com/asset/?id=37316847" 
wait() 
end 