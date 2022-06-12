ply = game.Players.acb227
load = false 
 
g = Instance.new("GuiMain") 
g.Parent = ply.PlayerGui 
g.Name = "controlls" 
desktop = Instance.new("ImageLabel") 
desktop.Parent = g 
desktop.Image = "http://www.roblox.com/asset/?id=51028037" 
desktop.Position = UDim2.new(0, 25, 0, 25) 
desktop.Size = UDim2.new(0.899999976, 0, 0.899999976, 0) 
bin = Instance.new("ImageButton") 
bin.Parent = g 
bin.Transparency = 1
bin.Image = "http://www.roblox.com/asset/?id=51338258" 
bin.Position = UDim2.new(0, 50, 0, 50) 
bin.Size = UDim2.new(0, 50, 0, 50) 
start = Instance.new("TextButton") 
start.Parent = g 
start.Transparency = 0
start.Text = "Start" 
start.Position = UDim2.new(0, 35, 0.87, 0) 
start.BackgroundColor = BrickColor.new("Bright green") 
start.Size = UDim2.new(0, 100, 0, 50) 
startm = Instance.new("TextButton") 
startm.Parent = g 
startm.Active = false 
startm.Transparency = 1
startm.Text = "" 
startm.Position = UDim2.new(0, 50, 0.79, 0) 
startm.BackgroundColor = BrickColor.new("White") 
startm.Size = UDim2.new(0, 100, 0, 50) 
firefox = Instance.new("ImageLabel") 
firefox.Parent = g 
firefox.Image = "" 
firefox.BackgroundColor = BrickColor.new("White") 
firefox.Transparency = 1
firefox.Position = UDim2.new(0, 25, 0, 25) 
firefox.Size = UDim2.new(0.899999976, 0, 0.899999976, 0) 
google = Instance.new("ImageLabel") 
google.Parent = g 
google.Image = "" 
google.BackgroundColor = BrickColor.new("White") 
google.Transparency = 1
google.Position = UDim2.new(0, 25, 0, 25) 
google.Size = UDim2.new(0.899999976, 0, 0.899999976, 0) 
firefox2 = Instance.new("ImageLabel") 
firefox2.Parent = g 
firefox2.Image = "" 
firefox2.BackgroundColor = BrickColor.new("Bright blue") 
firefox2.Transparency = 1
firefox2.Position = UDim2.new(0, 25, 0, 25) 
firefox2.Size = UDim2.new(0.899999976, 0, 0, 25) 
web = Instance.new("TextBox") 
web.Parent = g 
web.Text = "new:Tab" 
web.BackgroundColor = BrickColor.new("White") 
web.Transparency = 1
web.Position = UDim2.new(0, 50, 0, 25) 
web.Size = UDim2.new(0.799999976, 0, 0, 22) 
search = Instance.new("TextBox") 
search.Parent = g 
search.Text = "" 
search.BackgroundColor = BrickColor.new("White") 
search.Transparency = 1
search.Position = UDim2.new(0, 60, 0, 465) 
search.Size = UDim2.new(0.85, 0, 0, 55) 
close = Instance.new("TextButton") 
close.Active = false 
close.Parent = g 
close.Text = "X" 
close.BackgroundColor = BrickColor.new("Bright red") 
close.Transparency = 1
close.Position = UDim2.new(0, 1037, 0, 25) 
close.Size = UDim2.new(0, 25, 0, 25) 
go = Instance.new("TextButton") 
go.Active = false 
go.Parent = g 
go.Text = "->" 
go.BackgroundColor = BrickColor.new("Bright green") 
go.Transparency = 1
go.Position = UDim2.new(0, 1017, 0, 25) 
go.Size = UDim2.new(0, 25, 0, 25) 
 
 
 
start.MouseOver:connect(function()
if load == false then 
load = true 

end 
end)
 
bin.Mouse.Button1Down:connect(function()
if load == false then 
load = true 
for i = 1,0,-0.1 do
firefox.Transparency = i
firefox2.Transparency = i 
go.Transparency = i 
go.Active = true 
web.Transparency = i
close.Transparency = i 
close.Active = true 
bin.Active = false 
start.Active = false 
startm.Active = false 
wait()
end
for i = 0.1,1,0.1 do
desktop.Transparency = i
bin.Transparency = 1
start.Transparency = 1
startm.Transparency = 1 
load = false
wait() 
end 
end
end)
close.MouseButton1Down:connect(function()
if load == false then 
load = true 
for i=0.1,1,0.1 do
firefox.Transparency = i
search.Transparency = i
firefox2.Transparency = i
go.Transparency = i
google.Transparency = i
google.Image = ""
go.Active = false 
web.Transparency = i 
close.Transparency = i 
close.Active = false 
bin.Active = true 
start.Active = true 
start.Transparency = 0
startm.Active = false 
wait()
end
for i = 1,0,-0.1 do
desktop.Transparency = i
bin.Transparency = 1
start.Transparency = 1
startm.Transparency = 1 
load = false 
wait()
end 
end
end)
go.MouseButton1Down:connect(function()
if load == false then 
load = true 
if web.Text == "www.google.com" then 
wait(1)
firefox.Transparency = 1
firefox2.Transparency = 0
google.Transparency = 0
search.Transparency = 0
google.Image = "http://www.roblox.com/asset/?id=29978517"
load = false 
end 
end 
end)
 
