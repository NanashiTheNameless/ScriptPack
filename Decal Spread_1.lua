local screenGui = Instance.new("ScreenGui", game.CoreGui)
screenGui.Name = "Plugin"
local ph = Instance.new("TextButton",screenGui)
ph.BackgroundColor3 = BrickColor.new("Really black").Color --You can change the backround.
ph.BorderColor3 = BrickColor.new("White").Color --You can change the border color.
ph.TextColor3 = BrickColor.new("White").Color --You can change the Text Color.
ph.Size = UDim2.new(0,100,0,15) --You can change the Size. [YOU WILL NEED TO DO THIS]
ph.Position = UDim2.new(0,0,0.5,150) --You can change the Position.
ph.Text = "CHANGE-HERE" --This is the Gui-Button. Change to what you want.
ph.FontSize = "Size12" --You can change the font size.
 
ph.MouseButton1Down:connect(function()
for i,v in pairs(game.Workspace:GetChildren()) do
if (v:IsA("BasePart")) then
for _,e in pairs(Enum.NormalId:GetEnumItems()) do
local d = Instance.new("Decal",v)
d.Texture = "http://www.roblox.com/asset/?id=00000000" --Change the code after the "id" to your decal.
d.Face = e
end
end
end 
end) 