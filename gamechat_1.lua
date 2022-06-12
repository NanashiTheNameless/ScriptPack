local Players = game:GetService("Players") 
local Workspace = game:GetService("Workspace") 

script.Parent = nil 

function hint(msg, time) 
local hint = Instance.new("Hint", Workspace) 
hint.Text = msg 
coroutine.resume(coroutine.create(function() 
wait(time) 
hint:remove() 
end)) 
end 

function chat(msg) 
if string.sub(msg, 1, 0) == "" then 
said = string.lower(string.sub(msg, 1)) 
hint(said, 3) 
end 
end 

while wait() do 
for _,v in pairs(Players:GetChildren()) do 
v.Chatted:connect(chat) 
end 
end 