workspace.Gravity = 0

local mouse = game.Players.LocalPlayer:GetMouse()
local bp
mouse.KeyDown:connect(function(key)
    if key == 'g' then
        bp = Instance.new('BodyPosition', game.Players.LocalPlayer.Character.Torso)
        bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = mouse.Hit.p
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    end
end)
mouse.KeyUp:connect(function(key)
    if key == 'g' and bp then
        bp:Destroy()
    end
end)