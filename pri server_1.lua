-- not ur eyes --------------------------------------------------------------------------------------------------------------------------------------------------------

list={"acb227","Scriptaxor","cool12309","bob371","Digit349","crusher12555","ImInABlox","Dr4gOnh4ck3rz2","Fenrier","","joshmottley","juhooliagn878","FlamedSkull"}

function check(name)
for i,v in pairs(list) do
if v:lower()==name:lower() then
return true
end
end
return false
end

function onEnter(player)
local name=player.Name
if check(name) then
print("Player "..name.." is allowed.")
else
player:remove()
end
end


--[[get all players who entered]]
for i,b in pairs(game.Players:getPlayers()) do
onEnter(b)
end
game.Players.PlayerAdded:connect(onEnter)

