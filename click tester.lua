part = Instance.new("Part")
part.Parent = workspace 
part.Name = "bush" 
part.Anchored = true 
part.Size = Vector3.new(2, 2, 2)
part.CFrame = CFrame.new(5, 2, 0)

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = Workspace.acb227
guimain2.Adornee = part 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 2, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(1, 0, 0, 30) 
T3.Position = UDim2.new(-0.43, 0, 0, 0) 
T3.Text = "The Base: " 
T3.BackgroundTransparency = 0.5 
T3.BackgroundColor = BrickColor.new(1003)
T3.TextColor = BrickColor.new(1003) 
T3.FontSize = "Size12"

click = Instance.new("ClickDetector") 
click.Parent = workspace.Base 

function onClick()
T3.Text = "The Base's number: " ..math.random(1, 15) 
end 
workspace.Base.ClickDetector.MouseClick:connect(onClick)