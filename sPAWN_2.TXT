local ItemStorage = game:GetService('ReplicatedStorage').assets.items
local Items = workspace.targetFilter.ignore.items
local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local ScreenGui = Instance.new('ScreenGui',game.CoreGui)
local Draggable = Instance.new('TextButton',ScreenGui)
local Frame = Instance.new('Frame',Draggable)
local Item = Instance.new('TextBox',Frame)
local Amount = Instance.new('TextBox',Frame)
local Spawn = Instance.new('TextButton',Frame)
Draggable.Size = UDim2.new(0,300,0,13)
Draggable.Position = UDim2.new(0,150,0,150)
Draggable.BackgroundColor3 = Color3.new(0,0,0)
Draggable.Text = 'Spawn Gui'
Draggable.TextColor3 = Color3.new(1,1,1)
Draggable.BorderColor3 = Color3.new(1,1,1)
Draggable.Draggable = true
Frame.Size = UDim2.new(1,0,0,30)
Frame.BackgroundTransparency = 1
Frame.Position = UDim2.new(0,0,0,14)
Item.Text = 'Item'
Item.Size = UDim2.new(0,100,0,30)
Item.BorderColor3 = Color3.new(1,1,1)
Item.BackgroundColor3 = Color3.new(0,0,0)
Item.TextColor3 = Color3.new(1,1,1)
Amount.Text  =  'Amount'
Amount.BorderColor3 = Color3.new(1,1,1)
Amount.TextColor3 = Color3.new(1,1,1)
Amount.BackgroundColor3 = Color3.new(0,0,0)
Amount.Position = UDim2.new(0,100,0,0)
Amount.Size = UDim2.new(0,100,0,30)
Spawn.Text = 'Spawn'
Spawn.BorderColor3 = Color3.new(1,1,1)
Spawn.TextColor3 = Color3.new(1,1,1)
Spawn.BackgroundColor3 = Color3.new(0,0,0)
Spawn.Position = UDim2.new(0,200,0,0)
Spawn.Size = UDim2.new(0,100,0,30)
Spawn.MouseButton1Down:connect(function()
for i,v in pairs(ItemStorage:GetChildren()) do
if string.match(v.Name:lower(),'item'..Item.Text:lower()) then
for i=1, tonumber(Amount.Text) do
local x = v:Clone()
x.Parent = Items
x:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(math.random(-15,15),0,math.random(-15,15)))
for _,part in pairs(x:GetChildren()) do
if part:IsA'BasePart' then
part.Anchored = true
end
end
end
end
end
end)