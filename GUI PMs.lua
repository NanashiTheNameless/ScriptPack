------------------------------
--GUI Based Private Messaging-
------------------------------
 
Debris = Game:GetService("Debris");
Players = Game:GetService("Players");
 
Users = {"rigletto", "Person"};
 
for Person, Player in pairs(Players:GetChildren()) do
for Number, Table in pairs(Users) do
if Player.Name ~= Table then
return
end
GUI = Instance.new("ScreenGui", Player:FindFirstChild("PlayerGui"))
GUI.Name = "GUI"
 
MainFrameSize = UDim2.new(0.15, 0, 0.1, 0)
MainFrameX = MainFrameSize.X
MainFrameY = MainFrameSize.Y
 
MainFrame = Instance.new("Frame", GUI)
MainFrame.Name = "MainFrame"
MainFrame.Size = MainFrameSize
MainFrame.Position = UDim2.new(1-MainFrameX, 0, 1-MainFrameY, 0)
MainFrame.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
MainFrame.BorderColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0
MainFrame.Draggable = true
 
DropDownPlayerList = Instance.new("TextButton", MainFrame)
DropDownPlayerList.Name = "DropDownPlayerList"
DropDownPlayerList.Size = UDim2.new(0.25, 0, 0.05, 0)
DropDownPlayerList.Position = UDim2.new(0, 0, 0, 0)
DropDownPlayerList.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
DropDownPlayerList.BorderColor3 = Color3.new(0, 0, 0)
DropDownPlayerList.BackgroundTransparency = 0
 
DropDownPlayerList.MouseButton1Down:connect(function () 
 
for i, v in pairs(Players:GetChildren()) do
 
if v:IsA("Player") and v.Name ~= Player.Name then
 
PlayerButton = Instance.new("TextButton", MainFrame)
PlayerButton.Name = "PlayerButton"
PlayerButton.Size = UDim2.new(0.25, 0, 0.05, 0)
PlayerButton.Position = UDim2.new(0, 0, 0+i*0.05, 0)
PlayerButton.BackgroundColor3 = Color3.new(0, 0.5, 0.75)
PlayerButton.BorderColor3 = Color3.new(0, 0, 0)
PlayerButton.BackgroundTransparency = 0
 
end
 
end
 
 
end)
 
end
end
 