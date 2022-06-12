local plays = game:GetService("Players") 
local Workspace = game:GetService("Workspace") 
local Lighting = game:GetService("Lighting") 
local Admins = {"acb227"} 
local mods = {"hyper900", "bob371", "DarkShadow6"} 
local banned = {} 

--[[function onChatted(msg) 
if string.sub(msg, 1, 5) == "kill/" or string.sub(msg, 1, 5) == "kill " or string.sub(msg, 1, 5) == "kill;" then 
said = string.lower(string.sub(msg, 6)) 
look = plays 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 

end 
end 
end 
end ]]

function onChatted(msg,recip)
local cmd = msg:lower()
	if string.sub(cmd,1,5) == "kill;" then
		local killed = string.sub(msg,6)
		plays[killed].Character:BreakJoints() 
	end
end
	
coroutine.resume(coroutine.create(function() 
while wait() do
for _,v in pairs(plays:GetChildren()) do 
for _,a in pairs(Admin) do 
for _,m in pairs(mods) do 
for _,b in pairs(banned) do 
if v.Name == b then 
v:remove() 
end 
if v.Name == a or v.Name == m then 
v.Chatted:connect(onChatted) 
end 
--ends needed 
end 
end 
end 
end 
end 
end)) 

