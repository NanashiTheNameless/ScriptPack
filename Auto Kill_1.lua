function TypeName()
    for i,v in pairs(workspace.Enemies:GetChildren()) do
        if v.Humanoid.Health ~= 0 then
            game.Players:Chat(tostring(v.Name))
            break
        end
    end
end

while wait(2.5) do
    TypeName()
end