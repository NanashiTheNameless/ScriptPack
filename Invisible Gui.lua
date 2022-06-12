player = game.Players.yfc 
s = Instance.new("ScreenGui") 
s.Parent = player.PlayerGui 

a = Instance.new("TextButton") 
a.Parent = s 
a.Size = UDim2.new(0,100,0,20) 
a.Position = UDim2.new(0,50,0,150)
a.Text="Invisible" 
a.BackgroundTransparency = 0.4 
a.TextColor = BrickColor.new("Lime green") 
a.BackgroundColor = BrickColor.new("Black") 
a.BorderColor = BrickColor.new("Black") 

b = Instance.new("TextButton") 
b.Parent = s 
b.Size = UDim2.new(0,100,0,20) 
b.Position = UDim2.new(0,50,0,170)
b.Text="Visible" 
b.BackgroundTransparency = 0.4 
b.TextColor = BrickColor.new("Really red") 
b.BackgroundColor = BrickColor.new("Black") 
b.BorderColor = BrickColor.new("Black") 

function click() 
if player.Character~=nil and player.Character.Parent~=Workspace.CurrentCamera then 
player.Character.Parent=Workspace.CurrentCamera 
end 
end 

a.MouseButton1Down:connect(click) 

function click() 
if player.Character~=nil and player.Character.Parent~=Workspace then 
player.Character.Parent=Workspace 
end 
end 

b.MouseButton1Down:connect(click) 


--password