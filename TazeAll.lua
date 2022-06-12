for _, v in pairs(game.Players:GetChildren()) do
game.Workspace.resources.RemoteEvent:FireServer("tase", v) --keep in mind friendly fire is off
end