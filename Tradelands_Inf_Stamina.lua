local useStamina = game.Players.LocalPlayer.PlayerGui.GameGui.UseStamina
useStamina.Event:connect(function(val)
    wait()
    if val > 0 then
        useStamina:Fire(-val)
    end
end)