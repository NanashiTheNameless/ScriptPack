vip = Game.Players.acb227
namer = vip.Name 
script.Parent = vip.Character 

function onChatted(msg) 
if string.sub(msg, 1, 2) == "m/" then 
said = string.lower(string.sub(msg, 3)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
msg = Instance.new("Message") 
msg.Parent = workspace 
msg.Text = " " ..namer.. ": " ..said.. " "  
wait(2) 
msg:remove() 
end 
end 
end 
end 
vip.Chatted:connect(onChatted)