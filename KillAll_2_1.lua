for _, v in pairs(game.Players:GetChildren()) do
game.Workspace.resources.RemoteEvent:FireServer("dealDamage", v.Character.Humanoid, 100) --keep in mind friendly fire is off
end