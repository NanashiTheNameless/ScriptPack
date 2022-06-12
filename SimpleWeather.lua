Controller = "yfc" 

a = game.Players:FindFirstChild(Controller) 
function Chat(text) 
if text == "day" then 
game.Lighting.TimeOfDay = "14" 
end 

if text == "night" then 
game.Lighting.TimeOfDay = "24" 
end 

if text == "midnight" then 
game.Lighting.TimeOfDay = "18" 
end 
end 

a.Chatted:connect(Chat) 