plyr = game.Players.acb227 

local hint = Instance.new("Hint") 
hint.Parent = nil 

function cmds(msg) 
if string.sub(msg, 1, 0) == "" then 
said = string.lower(string.sub(msg, 1)) 
hint.Parent = workspace 
hint.Text = "acb227:" ..said.. ". " 
wait(1) 
hint.Parent = nil 
end 
if string.sub(msg, 1, 2) == "p/" then 
said = string.lower(string.sub(msg, 3)) 
said2 = string.lower(string.sub(msg, 4)) 
said3 = string.lower(string.sub(msg, 5)) 
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(said,said2,said3) 
end 
end 

plyr.Chatted:connect(cmds) 