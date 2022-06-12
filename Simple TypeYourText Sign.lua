--[[
	made by mr steal yo bork dont edit anything below plz just run script and you will see
--]]


p = game.Players.LocalPlayer
t = Instance.new("Tool") 
t.Parent = p.Backpack 
t.Name = "Sign lololo" 
local handlelol = Instance.new("Part") 
handlelol.Name = "Handle" 
handlelol.Parent = t 
handlelol.formFactor = "Plate" 
handlelol.BrickColor = BrickColor.new("Brown") 
handlelol.Size = Vector3.new(1, 4.5, .5) 
handlelol.TopSurface = "Smooth" 
handlelol.BottomSurface = "Smooth" 
handlelol.Reflectance = 0 
handlelol.Material = "Wood"
local sign = Instance.new("Part") 
sign.Name = "Part" 
sign.Parent = t 
sign.formFactor = "Plate" 
sign.BrickColor = BrickColor.new("Bright bluish green") 
sign.Size = Vector3.new(5, 4, 1) 
sign.TopSurface = "Smooth" 
sign.BottomSurface = "Smooth" 
sign.Reflectance = 0 
 
mesh123 = Instance.new("BlockMesh") 
mesh123.Parent = sign 
mesh123.Scale = Vector3.new(1.1, 1.1, 0.8) 

w2 = Instance.new("Weld")
w2.Parent = handlelol
w2.Part0 = sign
w2.Part1 = handlelol
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2.5, 0)
-----------------------------------------------------------------------
local SurfaceGui = Instance.new("SurfaceGui")
local TextBox = Instance.new("TextBox")
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextBox")
ScreenGui.Parent = p.PlayerGui
TextBox.Parent = ScreenGui
TextBox.BackgroundColor3 = Color3.new(0.756863, 0.705882, 1)
TextBox.Position = UDim2.new(0, 74, 0, 374)
TextBox.Size = UDim2.new(0, 176, 0, 50)
TextBox.Font = Enum.Font.Highway
TextBox.FontSize = Enum.FontSize.Size28
TextBox.Text = "Type text you want here"
TextBox.TextSize = 10
TextBox.TextWrapped = true
TextBox.Visible = false
SurfaceGui.Parent = sign
SurfaceGui.Face = Enum.NormalId.Front
TextLabel.Parent = SurfaceGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 800, 0, 600)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size96
TextLabel.Text = "same"
TextLabel.TextColor3 = Color3.new(0.956863, 0.345098, 0.0588235)
TextLabel.TextSize = 100
TextLabel.TextWrapped = true
t.Equipped:connect(function()
	TextBox.Visible = true
end)

t.Unequipped:connect(function()
	TextBox.Visible = false
end)
wait(1)
TextBox.Changed:connect(function()
	TextLabel.Text = TextBox.Text
end)