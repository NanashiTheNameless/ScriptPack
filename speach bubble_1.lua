local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = Workspace.rigletto
guimain2.Adornee = game.Workspace.rigletto.Head 
guimain2.Size = UDim2.new(0, 150, 0, 150) 
guimain2.StudsOffset = (Vector3.new(-4, 5, 0)) 

T3 = Instance.new("ImageLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(0, 280, 0, 120) 
T3.Position = UDim2.new(0, 0, 0, 0) 
--T3.Text = "" 
T3.BackgroundTransparency = 1 
--T3.BackgroundColor = BrickColor.new(1003)
--T3.TextColor = BrickColor.new(1003) 
--T3.FontSize = "Size8"
T3.Image = "http://www.roblox.com/asset/?id=37032432" 
T3.Visible = false 

T2 = Instance.new("TextLabel") 
T2.Parent = guimain2 
T2.Size = UDim2.new(0, 70, 0, 70) 
T2.Position = UDim2.new(0, 85, 0, 20) 
T2.Text = " " 
T2.BackgroundTransparency = 1 
T2.BackgroundColor = BrickColor.new(1003)
T2.TextColor = BrickColor.new(1003) 
T2.FontSize = "Size8" 
T2.Visible = false 

vip = game.Players.rigletto 

function onChatted(msg) 
if string.sub(msg, 1, 0) == "" then 
said = string.lower(string.sub(msg, 1)) 
T2.Visible = true 
T3.Visible = true 
wait(0.1) 
T2.Text =  "r "
wait(0.04) 
T2.Text =  "i " 
wait(0.04) 
T2.Text =  "g " 
wait(0.04) 
T2.Text =  "rigletto: " 
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 40)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 39)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 38)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 37)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 36)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 35)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 34)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 33)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 32)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 31)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 30)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 29)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 28)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 27)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 26)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 25)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 24)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 23)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 22)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 21)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 20)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 19)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 18)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 17)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 16)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 15)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 14)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 13)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 12)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 11)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 10)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 9)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 8)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 7)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 6)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 5)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 4)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 3)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 2)  
wait(0.04) 
T2.Text =  "rigletto: " ..string.sub(msg, 1)  
wait(5) 
T2.Visible = false 
T3.Visible = false 
T2.Text = " " 
end 
end 
vip.Chatted:connect(onChatted)