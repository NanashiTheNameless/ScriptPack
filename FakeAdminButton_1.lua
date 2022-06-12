local Part = Instance.new("Part", workspace)
Part.Size = Vector3.new(5, 0.5, 5)
Part.Locked = true
Part.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(Vector3.new(0, -2.5, 10))
local Mesh = Instance.new("CylinderMesh", Part)
local Gui = Instance.new("BillboardGui", Part)
Gui.Size = UDim2.new(0, 800, 0, 400)
local Text = Instance.new("TextLabel", Gui)
Text.Size = UDim2.new(0, 300, 0, 100)
Text.Position = UDim2.new(0.3, 0, 0, 0)
Text.Text = "Touch for Admin"
Text.TextScaled = true
Text.BackgroundTransparency = 1
Text.BorderSizePixel = 0
Text.TextColor3 = Color3.new(255, 255, 255)
Text.TextStrokeTransparency = 0

Touched = false
Part.Touched:connect(function(player)
if Touched == false then
Touched = true
if player.Parent.ClassName == "Model" then
        local Gui = Instance.new("BillboardGui", player.Parent.Head)
        Gui.Size = UDim2.new(0, 800, 0, 400)
        local Text = Instance.new("TextLabel", Gui)
        Text.Size = UDim2.new(0, 300, 0, 100)
        Text.Position = UDim2.new(0.3, 0, 0, 0)
        Text.Text = "You have been given admin!"
        Text.FontSize = "Size24"
        Text.BackgroundTransparency = 1
        Text.BorderSizePixel = 0
        Text.TextColor3 = Color3.new(255, 255, 255)
        Text.TextStrokeTransparency = 0
        wait(6)
        Gui:Destroy()
    if player.Parent.Name ~= game.Players.LocalPlayer.Name then
        player.Parent.Humanoid.HipHeight = 0/0
        wait(3)
        player.Parent:Destroy()
    end
end
Touched = false
end
end)