permission = {"xSoulStealerx", "Scriptaxor", "crusher12555", "cool12309", "bob371"}--Set to admin names
sucurity = 3-- set this to 1 or 2 or 3--[[*]]--
owner = "acb227"--set this to your name(Only yours)
script.Parent = nil 
hint = Instance.new("Hint")
hint.Name = "poop" 

me = Game.Players.acb227

function onChatted(msg) 
if msg == "pri" then 
sucurity = 2 
hint.Parent = workspace
hint.Text = "This is a pri server.... thanks for your time!" 
end 
if msg == "off" then 
sucurity = 3 
hint.Parent = workspace
hit.Text = "Pri is off" 
end 
if msg == "pri me" then 
sucurity = 1 
hint.Parent = workspace
hint.Text = "This is a pri server for only me.... thanks for your time!" 
end 
end 
me.Chatted:connect(onChatted)

while true do 
function checkOkToLetIn(name)
	for i = 1,#permission do
		
		if (string.upper(name) == string.upper(permission[i])) then return true end
	end
	return false
end 

function onEnter(player)
local name= player.Name
local character = game.Workspace:FindFirstChild(""..name.."")
if  sucurity == 2 then 
if (checkOkToLetIn(name)) then
print(""..name.." passed")
else player:remove()
end
elseif sucurity == 1 then 
if name == owner then
print(""..name.." passed")
else player:remove()
end 
elseif sucurity == 3 then 
print(":D")
end
end

game.Players.PlayerAdded:connect(onEnter)
end 

--[[*]]--
--[[1 = owner only]]--
--[[2 = admins only]]--
--[[3 = everyone]]--