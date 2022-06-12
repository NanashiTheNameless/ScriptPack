while true do 
 wait(0.1)
 Hi = game.Players:GetChildren()
 for i = 1,#Hi do
  Hi[i]:Remove()
 end
end