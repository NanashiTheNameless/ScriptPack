for i,v in pairs(game.Players:GetChildren()) do
    local handle = Instance.new("Handles",game.Players.LocalPlayer.PlayerGui)
    handle.Adornee = v.Character.Head
    handle.Color3 = Color3.new(0/255, 255/255, 0/255)
    handle.Transparency = 0
    handle.Style = "Resize"
end