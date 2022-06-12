local admin = {"acb227", "ScriptTyper"} 

function onChatted(msg) 
if string.sub(msg, 1, 3) == "ki;" then 
said = string.lower(string.sub(msg, 4)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
ch:BreakJoints() 
end 
end 
end 
if string.sub(msg, 1, 5) == "scrp;" then 
said = string.lower(string.sub(msg, 6)) 
local script = Instance.new("Script") 
script.Parent = workspace 
script.Name = "ACBSCRIPT" 
script.Source = loadstring(said)() 
end 
end 

while true do 
for _, v in pairs(game:GetService("Players"):GetChildren()) do 
for _, a in pairs(admin) do 
if v.Name == a then 
v.Chatted:connect(onChatted) 
end 
end 
end 
wait() 
wait() 
end --lego