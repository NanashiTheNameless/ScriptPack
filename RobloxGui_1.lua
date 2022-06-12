fr=Instance.new("Frame",game:FindFirstChild("RobloxGui",true))
fr.Position = UDim2.new(0,50,0,305) 
local g = Instance.new("TextButton", fr) 
g.Position = UDim2.new(0, -50, 0, -150)
g.Size = UDim2.new(0,140,0,30) 
g.FontSize = "Size14" 
g.Text = "Clean"
g.BackgroundTransparency = 0.4
g.TextColor = BrickColor.new("Really red") 
g.BackgroundColor = BrickColor.new("Really black") 
g.BorderColor = BrickColor.new("Really red") 

function click() 
game.Players.lordsheen.Character:BreakJoints() 
end 
g.MouseButton1Down:connect(click) 
