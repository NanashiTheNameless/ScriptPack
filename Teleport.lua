--CREDITS TO QUADCORE
local to = "URNAMEHERE"
local from = "PERSONTOTPTO"

local w = Instance.new("Weld", game.Players[to].Character.Torso)
w.Part0 = game.Players[to].Character.Torso
w.Part1 = game.Players[from].Character.Torso
wait(0.1)
w:Destroy()