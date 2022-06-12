Gui = Instance.new("ScreenGui", game.CoreGui)
Button = Instance.new("TextButton", Gui)
Button.Size = UDim2.new(0, 100, 0, 40)
Button.BackgroundTransparency = 0.7
Button.Position = UDim2.new(0.003, 0, 0.93, 0)
Button.Text = "Enable Noclip"
Button.TextColor3 = Color3.new(255, 255, 255)
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
Button.MouseButton1Down:connect(function()
noclip = not noclip
if Button.Text == "Enable Noclip" then
    Button.Text = "Disable Noclip"
else
    Button.Text = "Enable Noclip"
end
end)