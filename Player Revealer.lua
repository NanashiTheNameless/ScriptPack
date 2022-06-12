while wait(0.1) do
    local dir = game.CoreGui.RobloxGui.PlayerListContainer.ScrollList
    for i,v in pairs(dir:GetChildren()) do
        if game.Workspace:findFirstChild(v.Name) then
            local role = game.Players[v.Name].Character:findFirstChild("Role")
            if role then
                if role.Value == "Sheriff" then
                    v.BGFrame.PlayerName.TextColor3 = Color3.new(1, 170/255, 0)
                elseif role.Value == "Murderer" then
                    v.BGFrame.PlayerName.TextColor3 = Color3.new(1, 0, 0)
                else
                    v.BGFrame.PlayerName.TextColor3 = Color3.new(0, 1, 0)
                end
            end
        end
    end
    for i,v in pairs(game.Players:GetChildren()) do
        v.CharacterAdded:connect(function()
            v.Character.Role.Value = "Innocent"
        end)
    end
end