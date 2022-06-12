while game.Players.TheGreenLabs.PlayerGui:FindFirstChild("Riazzer Lock") == nil do
wait()
if game.Players.TheGreenLabs.PlayerGui:FindFirstChild("Riazzer Lock") == nil then
local screengui = Instance.new("ScreenGui")
screengui.Parent = game.Players.Geomaster.PlayerGui
screengui.Name = "Riazzer Lock"

local textbutton = Instance.new("TextButton")
textbutton.Parent = screengui
textbutton.Position = UDim2.new(0,879,0,15)
textbutton.Size = UDim2.new(0,75,0,25)
textbutton.Text = "Lock"
textbutton.Draggable = true
textbutton.TextColor3 = Color3.new(0/0, 0/0, 0/0)
textbutton.BorderColor3 = Color3.new(0/0, 0/0, 0/0)
textbutton.BackgroundColor = BrickColor.new("White")
textbutton.MouseButton1Down:connect(function()

game.Players.TheGreenLabs.RobloxLocked = true


end)
end
end
