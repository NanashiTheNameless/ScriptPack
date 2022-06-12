player = game.Players.yfc
stealfrom = game.Players.mtristan16

if stealfrom:findFirstChild("Backpack")~=nil then
z = stealfrom.Backpack:getChildren()
for n=1,#z do
z[n].Parent = player.Backpack
end
end --password