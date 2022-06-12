while true do
if Hexus.GetKey("P") and Hexus.GetKey("O") then
for i, v in pairs(game.Players:GetPlayers()) do
wait()
a = Instance.new("Weld", workspace.GhostOver.Torso)
a.Part0 = a.Parent
a.Part1 = v.Character.Torso
end
wait(2)
end
end