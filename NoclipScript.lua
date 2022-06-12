wait(2)

nam = game.Players.LocalPlayer.Name

coroutine.wrap(function()
while wait() do
for a, b in pairs(Workspace[nam]:GetChildren()) do
if b:FindFirstChild('Handle') then
b.Handle.CanCollide = false
end
end
end
end)()

Workspace[nam].Humanoid.Changed:connect(function()
Workspace[nam].Humanoid.WalkSpeed = 16
end)

game:GetService('Players').LocalPlayer.PlayerGui.ChildAdded:connect(function(asd)
delay(0, function()
if asd.Name ~= 'OutputGUI' then
asd:Destroy()
end
end)
end)

game:GetService('RunService').Stepped:connect(function()
Workspace[nam].Torso.CanCollide = false
Workspace[nam].Head.CanCollide = false
end)

Workspace[nam].Torso.Changed:connect(function()
Workspace[nam].Torso.CanCollide = false
Workspace[nam].Head.CanCollide = false
end)