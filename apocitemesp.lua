x = Instance.new('ScreenGui',game.CoreGui)
y = Instance.new('TextButton',x)
z = Instance.new('Frame',y)
f = Instance.new('TextButton',z)
local open = false
function esp()
workspace.CurrentCamera:ClearAllChildren()
local LootContainers = workspace.DropLoot
local LootContainers2 = workspace.SpawnLoot
for i,v in pairs(LootContainers:GetChildren()) do
bill = Instance.new('BillboardGui',workspace.CurrentCamera)
bill.AlwaysOnTop = true
bill.Size = UDim2.new(3,0,3,0)
bill.Adornee = v
Frame = Instance.new('Frame',bill)
Frame.BackgroundColor3 = Color3.fromRGB(0,226,37)
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 0.7
Text = Instance.new('TextLabel',Frame)
Text.Size = UDim2.new(1,0,1,0)
Text.BackgroundTransparency = 1
Text.TextScaled = false
Text.Position = UDim2.new(0,0,-0.9,0)
Text.Text = v.Name
Text.TextColor3 = Color3.new(1,1,1)
end
for i,v in pairs(LootContainers2:GetChildren()) do
bill = Instance.new('BillboardGui',workspace.CurrentCamera)
bill.AlwaysOnTop = true
bill.Size = UDim2.new(3,0,3,0)
bill.Adornee = v
Frame = Instance.new('Frame',bill)
Frame.BackgroundColor3 = Color3.fromRGB(0,226,37)
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 0.7
Text = Instance.new('TextLabel',Frame)
Text.Size = UDim2.new(1,0,1,0)
Text.BackgroundTransparency = 1
Text.TextScaled = false
Text.Position = UDim2.new(0,0,-0.9,0)
Text.Text = v.Name
Text.TextColor3 = Color3.new(1,1,1)
end
end
if open == false then
open = true
esp()
elseif open == true then
open = false
workspace.CurrentCamera:ClearAllChildren()
end
