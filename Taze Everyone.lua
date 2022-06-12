for i,v in pairs(game.Players:GetChildren()) do
if v.Character and v.Character:FindFirstChild('Humanoid') then
game.ReplicatedStorage.Events.TazerEvent:FireServer(v.Character.Torso)
end
end