player = game:GetService("Players").lordsheen                                                                                                                                                                                                                                                                      

local search = game.Workspace.Themes

function load(add) 
local starter = Instance.new("ScreenGui") 
starter.Parent = player.PlayerGui 

script.Parent = starter 

local Frame = Instance.new("Frame") 
Frame.Parent = starter 
Frame.Position = UDim2.new(0,0,0,325) 

row = 0 
for i,a in pairs(search:GetChildren()) do 
row = row +1 
local pcont = Instance.new("TextLabel") 
pcont.Text = a.Name 
pcont.Size = UDim2.new(0,150,0,20) 
pcont.Parent = Frame 
pcont.FontSize = "Size12" 
pcont.BorderSizePixel = 3 
pcont.Transparency = 0.2 
pcont.Name = "OneOfPlayers" 
pcont.TextColor = BrickColor.new("Really black") 
pcont.BackgroundColor = BrickColor.new("Bright yellow") 
pcont.Position = UDim2.new(0,0,0,-200 + row*20) 


local Frame3 = Instance.new("Frame") 
Frame3.Parent = starter 
Frame3.Position = UDim2.new(0,170,0,325) 

local pcont3 = Instance.new("TextButton") 
pcont3.Text = "X" 
pcont3.Size = UDim2.new(0,20,0,20) 
pcont3.Parent = Frame3 
pcont3.FontSize = "Size12" 
pcont3.BorderSizePixel = 3 
pcont3.Transparency = 0.2 
pcont3.Name = "clickmelol1" 
pcont3.TextColor = BrickColor.new("Really red") 
pcont3.BackgroundColor = BrickColor.new("Really black") 
pcont3.Position = UDim2.new(0,0,0,-200 + row*20) 
function click() 
search:findFirstChild(a.Name):Stop() 
end 
pcont3.MouseButton1Down:connect(click) 


local fnum = Instance.new("Frame") 
fnum.Parent = starter 
fnum.Position = UDim2.new(0,150,0,325) 


local num = Instance.new("TextButton") 
num.Text = "O" 
num.Size = UDim2.new(0,20,0,20) 
num.Parent = fnum 
num.FontSize = "Size12" 
num.BorderSizePixel = 3 
num.Transparency = 0.2 
num.Name = "OneOfPlayers" 
num.TextColor = BrickColor.new("Limegreen") 
num.BackgroundColor = BrickColor.new("White") 
num.Position = UDim2.new(0,0,0,-200 + row*20) 
function click() 
search:findFirstChild(a.Name).Name = a.Name .. row 
wait() 
starter:remove() 
wait() 
load() 
end 
num.MouseButton1Down:connect(click) 


local fref = Instance.new("Frame") 
fref.Parent = starter 
fref.Position = UDim2.new(0,50,0,305) 

local ref = Instance.new("TextButton") 
ref.Text = "Refresh" 
ref.Size = UDim2.new(0,140,0,40) 
ref.Parent = fref 
ref.FontSize = "Size24" 
ref.BorderSizePixel = 3 
ref.Transparency = 0.2 
ref.Name = "clickmelol1" 
ref.TextColor = BrickColor.new("Really black") 
ref.BackgroundColor = BrickColor.new("Lime green") 
ref.Position = UDim2.new(0,0,0,-200) 
function click() 
for i,p in pairs(player.PlayerGui:GetChildren()) do 
if p.className == "ScreenGui" then 
p:Remove() 
end 
end 
wait() 
load() 
end 
ref.MouseButton1Down:connect(click) 


end 
end 

load() 
