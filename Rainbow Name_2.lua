bill = Instance.new("BillboardGui", game.Players.LocalPlayer.Character.Head)
bill.Size = UDim2.new(4, 0, 4.5, 0)
bill.AlwaysOnTop = true
bill2 = Instance.new('BillboardGui', game.Players.LocalPlayer.Character.Head)
bill2.Size = UDim2.new(0, 120, 0, 120)
bill2.AlwaysOnTop = true
face = Instance.new('ImageLabel', bill2)
face.Image = 'rbxassetid://343377229'
face.Size = UDim2.new(0, 120, 0, 120)
face.BackgroundTransparency = 1
label = Instance.new("TextLabel", bill)
label.Size = UDim2.new(2, 0, 1, 0) 
label.Position = UDim2.new(-0.5, 0, -0.5, 0) 
label.BackgroundTransparency = 1
label.FontSize = "Size14"
while true do            
        label.TextColor3 = Color3.new(math.random(),math.random(),math.random())
wait(.09)            
        label.TextStrokeColor3 = Color3.new(0 ,0 ,0)
        label.TextStrokeTransparency = 0    
        label.Text = "DONALD TRUMP"
end  