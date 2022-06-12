for i=1,#game.Workspace:children() do 
wait() 
if game.Workspace:children()[i].className=="Part" and game.Workspace:children()[i].Name~="Base" then 
game.Workspace:children()[i].formFactor="Custom" 
game.Workspace:children()[i].TopSurface="Weld"
game.Workspace:children()[i].BottomSurface="Weld"
game.Workspace:children()[i].RightSurface="Weld"
game.Workspace:children()[i].LeftSurface="Weld"
game.Workspace:children()[i].FrontSurface="Weld"
game.Workspace:children()[i].BackSurface="Weld"
Instance.new("BlockMesh",game.Workspace:children()[i])
end 
end 