game.Lighting.GlobalShadows = true
game.Lighting.Ambient = Color3.new(1,1,1)
game.Lighting.FogEnd = 1000000

function change()
game.Lighting.GlobalShadows = true
game.Lighting.Ambient = Color3.new(1,1,1)
game.Lighting.FogEnd = 1000000
end

game.Lighting.Changed:connect(change)

]