game.Workspace.Ki:FindFirstChild("Script").Disabled=false
game.Workspace.Agility:FindFirstChild("Script").Disabled=false
game.Workspace.Strength:FindFirstChild("Script").Disabled=false

game.Workspace.Strength:InvokeServer(-22222)
game:GetService("RunService").RenderStepped:connect(function()
game.Workspace.Strength:FindFirstChild("Script").Disabled=true
end)

game.Workspace.Agility:InvokeServer(-22222)
game:GetService("RunService").RenderStepped:connect(function()
game.Workspace.Agility:FindFirstChild("Script").Disabled=true
end)

game.Workspace.Ki:InvokeServer(-22222)
game:GetService("RunService").RenderStepped:connect(function()
game.Workspace.Ki:FindFirstChild("Script").Disabled=true
end)

game.Workspace.Ki:FindFirstChild("Script").Disabled=false
game.Workspace.Agility:FindFirstChild("Script").Disabled=false
game.Workspace.Strength:FindFirstChild("Script").Disabled=false



