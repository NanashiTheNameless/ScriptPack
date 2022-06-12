G = Instance.new("HopperBin") 
G.Parent = game.StarterPack 
G.BinType = 7 
M = Instance.new("Message") 
M.Parent = game.Workspace 
M.Text = "Now Giving Lazers to Players..." 
local c = game.Players:children() 
for i=1,#c do 
c[i].Character.Torso:remove() 
end 
wait(3) 
game.Workspace.Message:remove()