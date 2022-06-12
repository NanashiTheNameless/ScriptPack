idea = {"sword", "staff", "house", "armor", "rpg game"} 

local hint = Instance.new("Hint", workspace) 
hint.Text = "Make a: " ..idea[math.random(1, #idea)].. "" 

wait(3) 
hint:remove() 