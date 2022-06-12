script/c = Instance.new("Hint") 
script.Parent = workspace.acb227
c.Text = "Womperz =P" 
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
