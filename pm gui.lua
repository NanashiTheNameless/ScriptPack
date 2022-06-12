Player = game.Players.acb227 
local M = Instance.new("ScreenGui")
M.Parent = Player.PlayerGui
local c = Instance.new("Frame")
c.Parent = M 
c.Position = UDim2.new(0,9,0,412) 
c.Size = UDim2.new(0,556,0,46) 
c.BackgroundColor3 = Color3.new(210, 30, 230)
local s = Instance.new("TextButton")
s.Parent = M 
s.Position = UDim2.new(0,470,0,420) 
s.Size = UDim2.new(0,86,0,30) 
s.Text = "->"
s.FontSize = "Size48"
s.BackgroundColor3 = Color3.new(240, 80, 255)
local b = Instance.new("TextBox")
b.Parent = M 
b.Position = UDim2.new(0,12,0,415) 
b.Size = UDim2.new(0,450,0,18) 
b.Text = "Insert your message here, "..M.Parent.Parent.Name.."."
b.FontSize = "Size9"
b.BackgroundColor3 = Color3.new(255, 100, 255)
b.TextXAlignment = "Left"
local j = Instance.new("TextBox")
j.Parent = M 
j.Position = UDim2.new(0,12,0,437) 
j.Size = UDim2.new(0,200,0,18) 
j.Text = "Player name here, "..M.Parent.Parent.Name.."." 
j.FontSize = "Size9" 
j.BackgroundColor3 = Color3.new(255, 120, 255) 
local x = Instance.new("TextLabel")
x.Parent = M 
x.Position = UDim2.new(0,12,0,463) 
x.Size = UDim2.new(0,200,0,0) 
x.Text = "Player name here"
x.FontSize = "Size10"
x.BackgroundTransparency = 1
local z = Instance.new("TextLabel")
z.Parent = M 
z.Position = UDim2.new(0,12,0,405) 
z.Size = UDim2.new(0,200,0,0) 
z.Text = "Message here"
z.FontSize = "Size10"
z.BackgroundTransparency = 1
local q = Instance.new("TextButton")
q.Parent = M 
q.Position = UDim2.new(0,200,0,398) 
q.Size = UDim2.new(0,60,0,14) 
q.Text = "Hide"
q.FontSize = "Size10"
q.BackgroundColor3 = Color3.new(240, 80, 255)
local p = Instance.new("TextButton")
p.Parent = M 
p.Position = UDim2.new(0,200,0,398) 
p.Size = UDim2.new(0,60,0,14) 
p.Text = "Show"
p.FontSize = "Size10"
p.BackgroundColor3 = Color3.new(240, 80, 255)
p.BackgroundTransparency = 0.7
p.Visible = false
p.TextTransparency = 0.6

function clicked() 
plrs = game.Players:GetChildren() 
for i = 1, #plrs do 
if plrs[i].Name:lower() == j.Text then 
local msg = Instance.new("ScreenGui") 
msg.Parent = plrs[i].PlayerGui 
local mg = Instance.new("TextLabel") 
mg.Parent = msg 
mg.Text = Player.Name..": "..b.Text 
mg.Position = UDim2.new(0,150,0,200) 
mg.Size = UDim2.new(0,700,0,30) 
mg.FontSize = "Size10"
mg.BackgroundColor3 = Color3.new(200, 80, 200) 
local ms = Instance.new("Message") 
ms.Parent = Player 
ms.Text = "Message sent." 
wait(0.5) 
ms:remove() 
wait(7) 
msg:remove() 
end 
end 
end 

function clickah() 
c.Visible = false
s.Visible = false
b.Visible = false
j.Visible = false
x.Visible = false
z.Visible = false
q.Visible = false
p.Visible = true
end 

function clickarr() 
c.Visible = true
s.Visible = true
b.Visible = true
j.Visible = true
x.Visible = true
z.Visible = true
q.Visible = true
p.Visible = false
end 

s.MouseButton1Click:connect(clicked) 
q.MouseButton1Click:connect(clickah) 
p.MouseButton1Click:connect(clickarr) 


