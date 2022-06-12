vip = game.Players.lordsheen

function onChatted(msg) 
game:GetService("Chat"):Chat(vip.Character.Head, ""..msg.."") 
end
vip.Chatted:connect(onChatted)
