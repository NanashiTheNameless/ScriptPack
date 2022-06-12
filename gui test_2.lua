script/----=|[The Grand Four -Acb-]|=----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
script.Parent = game.workspace.acb227 
game.Workspace.acb227.Head.Transparency = 1
m = Instance.new("Model") 
m.Parent = game.Workspace.acb227
m.Name = " "
h = Instance.new("Humanoid") 
h.Parent = m 
h.MaxHealth = 100
h.Health = 100
h.MaxHealth = 0 
c = Instance.new("Part") 
c.Parent = m 
c.Name = "Head" 
c.Position = game.Workspace.acb227.Head.Position
c.Transparency = 0 
c.Reflectance = 0 
c.BrickColor = BrickColor.new ("Really black") 
c.Size = Vector3.new(2,1,2) 
c.TopSurface = "Smooth" 
c.BottomSurface = "Smooth" 
c.Locked = true 
f = Instance.new("SpecialMesh")
f.Parent = c
f.Scale = Vector3.new(0.9,1,0.625)
w1 = Instance.new("Weld") 
w1.Parent = game.Workspace.acb227.Head
w1.Part0 = c
w1.Part1 = game.Workspace.acb227.Head
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
game.Workspace.acb227.Humanoid.WalkSpeed = 25 



local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = Workspace.acb227
guimain2.Adornee = game.Workspace.acb227.Head 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 2, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(1, 0, 0, 30) 
T3.Position = UDim2.new(-0.43, 0, 0, 0) 
T3.Text = "The  " 
T3.BackgroundTransparency = 1
T3.BackgroundColor = BrickColor.new(1003)
T3.TextColor = BrickColor.new(1003) 
T3.FontSize = "Size12"

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 4) == "ad/ " then 
said = string.lower(string.sub(msg, 5)) 
T3.Text =  "Saying." ..said 
end 
if string.sub(msg, 1, 7) == "value/ " then 
said = string.lower(string.sub(msg, 8)) 
T3.Text =  "Value = " ..said 
end 
if string.sub(msg, 1, 4) == "huge" then 
said = string.lower(string.sub(msg, 5)) 
T3.Text =  math.huge 
end 
if string.sub(msg, 1, 7) == "random/" then 
said = string.lower(string.sub(msg, 8)) 
a = 1
b = said
T3.Text = math.random(a, b) 
end 
end 
vip.Chatted:connect(onChatted) 


