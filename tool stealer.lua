player = game.Players.acb227
stealfrom = game.Players.DragonWarlord101

if stealfrom:findFirstChild("Backpack")~=nil then
z = stealfrom.Backpack:getChildren()
for n=1,#z do
z[n].Parent = player.Backpack
end
end --lego