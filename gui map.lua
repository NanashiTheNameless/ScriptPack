plyr = Game.Players.acb227

sc = Instance.new("ScreenGui") 
sc.Parent = plyr.PlayerGui 
sc.Name = "Map" 

for i = 1, 5000, 10 do 
tx = Instance.new("TextLabel") 
tx.Parent = sc 
tx.Name = "hola" 
tx.Size = UDim2.new(0, i, 0, i) 
tx.Position = UDim2.new(0*math.cos(math.rad(i)), 100*math.cos(math.rad(i)), 0*math.cos(math.rad(i)), 100*math.cos(math.rad(i))) 
tx.Text = " Greetings from acb227!!!   ---   Merry Christmas" 
wait(0.1) 
end 