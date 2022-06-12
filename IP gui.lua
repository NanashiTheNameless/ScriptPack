																																																																																																			
function load(add) 
player = game:GetService("Players").yfc
local starter = Instance.new("ScreenGui") 
starter.Parent = player.PlayerGui 

script.Parent = starter 

local Frame = Instance.new("Frame") 
Frame.Parent = starter 
Frame.Position = UDim2.new(0,0,0,355) 

row = 0 
for i,a in pairs(game.NetworkServer:GetChildren()) do 
row = row +1 
local pcont = Instance.new("TextLabel") 
pcont.Text = a.Name .. " = " ..game.Players:children()[i].Name.. " = "..math.floor(game.Players:children()[i].AccountAge/365).." years , "..(game.Players:children()[i].AccountAge%365).." days" --here 
pcont.Size = UDim2.new(0,500,0,20) 
pcont.Parent = Frame 
pcont.FontSize = "Size12" 
pcont.BorderSizePixel = 3 
pcont.Transparency = 0.2 
pcont.Name = "OneOfPlayers" 
pcont.TextColor = BrickColor.new("Really black") 
pcont.BackgroundColor = BrickColor.new("Bright yellow") 
pcont.Position = UDim2.new(0,0,0,-200 + row*20) 

local fref = Instance.new("Frame") 
fref.Parent = starter 
fref.Position = UDim2.new(0,50,0,335) 

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
--[[ mediafire ]]-- 
end 

load() 