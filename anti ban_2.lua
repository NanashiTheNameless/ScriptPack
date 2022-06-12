script/c = Instance.new("Hint") 
script.Parent = nil 
c.Text = "I wuve you, you wuve me, were a happy family, with a great big hug and a kiss from me to you, wont you say you luve me tooo" 
c.Parent = game.Workspace 
text = {"acb227 has been kicked or banned and all will pay.... DIE noobs!......","have a nice day :P"} 
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
