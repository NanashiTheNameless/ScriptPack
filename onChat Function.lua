play = game.Players:findFirstChild("lordsheen")  

function onChat(msg) 

if msg == "reset" then 
Workspace.lordsheen.Head:Remove() 
end 

end 
play.Chatted:connect(onChat)