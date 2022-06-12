local Remote = game.Lighting.Remote.AddHealth
local Player = game.Workspace.UnjustifiedLimited.Humanoid
game:GetService("RunService").RenderStepped:connect(function() 
Remote:FireServer(Player, 5000000)
end)