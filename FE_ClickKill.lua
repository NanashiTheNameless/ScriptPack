local Player = game.Players.LocalPlayer
local tool = Instance.new("HopperBin",Player.Backpack)
tool.Name = "Click Kill"
tool.Selected:connect(function(mouse)
    mouse.Button1Down:connect(function()
        if mouse.Target and mouse.Target.Parent:FindFirstChild("Humanoid") then
            local char = mouse.Target.Parent
            local target = game.Players:GetPlayerFromCharacter(char)
            repeat
            wait()
            target:Move(Vector3.new(math.huge*0))
            until target.Character:FindFirstChild'Head' == nil
        end
    end)
end)