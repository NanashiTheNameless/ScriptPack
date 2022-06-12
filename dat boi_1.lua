s = Instance.new("Sound", game.Workspace)
s.Volume = 1
s.SoundId = "http://www.roblox.com/asset/?id=410806544"
for _,v in pairs(game.Players:GetChildren()) do
v.Chatted:connect(function(msg)
if string.match(msg,"here come dat boi") then
s:Play()
if v.Character.Head:FindFirstChild("Dat Boi") then
print("Already Exists Gui")
else
gui = Instance.new("BillboardGui", v.Character.Head)
gui.Name = "Dat Boi"
gui.Size = UDim2.new(3,0,3,0)
gui.SizeOffset = Vector2.new(0,1)
image = Instance.new("ImageLabel", gui)
image.Size = UDim2.new(1,0,1,0)
image.Image = "http://www.roblox.com/asset/?id=408957433"
image.BackgroundTransparency = 1
end
end
end)
end
