local Delay = 1 --The delay you prefer

function Stop()
game.Lighting.Ambient = Color3.new(0,0,0)
end

for i=1, 9999 do -- How many times it should loop   	
   game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random()) wait(Delay)
end