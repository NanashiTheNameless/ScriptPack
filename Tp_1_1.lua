function GetPName(p)
    if(p == "me") then return game:GetService("Players").LocalPlayer.Name end
    return p
end

Raindrop:AddCommand("tp", 2, function(p1, p2)
    local PlayerA = game:GetService("Players"):FindFirstChild(GetPName(p1))
    local PlayerB = game:GetService("Players"):FindFirstChild(GetPName(p2))
    local targetV3 = PlayerB.Character.Torso.Position
    PlayerA.Character:MoveTo(Vector3.new(targetV3.x, targetV3.y, targetV3.z))
end)