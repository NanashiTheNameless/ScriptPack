function checkteles()
players = game.Players:GetChildren()
for i=1, #players do
if players[i].PlayerGui:findFirstChild("Teleport") then
print("Already")
else
s = script.Teleport:clone()
s.Disabled = false
s.Parent = players[i].PlayerGui
end
end
end

while true do
wait()
checkteles()
end
