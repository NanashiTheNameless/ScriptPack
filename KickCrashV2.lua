Raindrop:AddCommand("crash", 1, function(player)
    local p = game:GetService("Players"):FindFirstChild(player)
    if p then
        p.Character.Humanoid.HipHeight = 0/0
    end
end)