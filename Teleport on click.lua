local player = game:service("Players").LocalPlayer
mouse = player:GetMouse()

mouse.Button1Down:connect(function()
player.Character:MoveTo(mouse.Target.Position)
end