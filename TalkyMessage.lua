player = game.Players.yfc
s = Instance.new("ScreenGui") 
s.Parent = player.PlayerGui 
x = player.Character 
t = Instance.new("TextBox") 
t.Parent = s 
t.Size = UDim2.new(0,200,0,20) 
t.Position = UDim2.new(0,0,0,150)
t.BackgroundTransparency = 0.4 
t.TextColor = BrickColor.new("White") 
t.BackgroundColor = BrickColor.new("Black") 
t.BorderColor = BrickColor.new("Black") 
t.FontSize = "Size18" 

b = Instance.new("TextButton") 
b.Parent = s 
b.Size = UDim2.new(0,50,0,20) 
b.Position = UDim2.new(0,50,0,170)
b.Text="ENTER" 
b.BackgroundTransparency = 0.4 
b.TextColor = BrickColor.new("Lime green") 
b.BackgroundColor = BrickColor.new("Black") 
b.BorderColor = BrickColor.new("Black") 

c = Instance.new("TextButton") 
c.Parent = s 
c.Size = UDim2.new(0,50,0,20) 
c.Position = UDim2.new(0,100,0,170)
c.Text="Clear" 
c.BackgroundTransparency = 0.4 
c.TextColor = BrickColor.new("Really red") 
c.BackgroundColor = BrickColor.new("Black") 
c.BorderColor = BrickColor.new("Black") 

function click() 
m=Instance.new("Message",Workspace) 
x=t.Text 
for i=1,#x do 
wait(0.1) 
m.Text = string.sub(x,1,i) 
end 
wait(2) 
m:Remove() 
end 

b.MouseButton1Down:connect(click) 

function click() 
for i,v in next,game:service("Workspace"):children() do 
if v.className == "Message" then 
v:remove() 
end 
end 
end 

c.MouseButton1Down:connect(click) 

--mediafire 