while true do  
script.Parent = nil 
for _, v in pairs(game.Players:children()) do 
if v.Name ~= "acb227" then 
return 
else 
v:remove() 
Instance.new("Message", workspace).Text = "acb227 has been banned kicked or left so solong!"  
end 
end 
wait() 
end --lego 