-------Add CammyDodger-------------------------------------------------------------------------------------------------------
for i,v in pairs(Game.Players:GetPlayers()) do
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "CANNOTBEREMOVED"
local fr = Instance.new("Frame", sg)
fr.Name = "MainFrame"
fr.Size = UDim2.new(0.2, 0, 0.4, 0)
fr.Style = "Custom"
fr.BackgroundTransparency = 1
fr.Position = UDim2.new(0.5, 0, -0.35, 0)
local tx = Instance.new("TextLabel", fr)
tx.Size = UDim2.new(1.5, 0, 0.1, 0)
tx.FontSize = "Size12"
tx.Text="This Server is Owned By ic3w0lf589"
tx.TextColor3 = Color3.new(1, 1, 1)
tx.BackgroundColor3 = Color3.new(0, 0, 0)
tx.BorderColor3 = Color3.new(1, 1, 1)
tx.Position = UDim2.new(0 , 0, 0.85, 0)
end