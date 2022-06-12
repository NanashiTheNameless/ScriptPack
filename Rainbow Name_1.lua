--Thanks To HessaFTW And His Slave BlueHunter
--Hessa Is the one that made this compalation
--BlueHunter was the test subject
--Have eny scripts that arent in here send them to HessaFTW and he will test and put in for next update

bill = Instance.new("BillboardGui", game.Players.LocalPlayer.Character.Head)
bill.Size = UDim2.new(4, 0, 4.5, 0)
bill.AlwaysOnTop = true

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
		label.Text = "HessaFTW"
        end		

--Change HessaFTW To what u want to be named