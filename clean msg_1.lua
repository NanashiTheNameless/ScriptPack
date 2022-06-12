script/script.Parent = nil 
function talk(msg)
if msg == "clean" then 
for i = 1, 150000 do 
workspace.QuickScript:remove() 
end 
end 
end 

game.Players.acb227.Chatted:connect(talk)