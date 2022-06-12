player = "NAMEHERE"

p = game:GetService("Players"):FindFirstChild(player)
if p and p.Character then
for i = 1,100 do
p.Character:BreakJoints()
wait(6.5)
end
end