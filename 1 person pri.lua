bannedlist = {"lordsheen"}
function checkban(player)
for ii = 1, #bannedlist do
if player.Name ~= bannedlist[ii] then
player:Remove()
m=Instance.new("Hint",Workspace) 
m.Text = player.Name.." isnt here. LOL "
print(player.Name.." isnt here. LOL ")
wait(2) 
m:Remove() 
end end end 


for i, v in pairs(game.Players:GetChildren()) do
checkban(v)
end

function blah(blah)
checkban(blah)
end

game.Players.PlayerAdded:connect (blah) 
--[[ mediafire ]]-- 