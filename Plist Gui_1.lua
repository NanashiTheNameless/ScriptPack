player = game:GetService("Players").lordsheen 
local starter = Instance.new("ScreenGui") 
starter.Parent = player.PlayerGui 

script.Parent = starter 

local FrameAll = Instance.new("Frame") 
FrameAll.Parent = starter 
FrameAll.Position = UDim2.new(0,0,0,480) 

local pcontAll = Instance.new("TextLabel") 
pcontAll.Text = "All"
pcontAll.Size = UDim2.new(0,150,0,20) 
pcontAll.Parent = FrameAll 
pcontAll.FontSize = "Size12" 
pcontAll.BorderSizePixel = 3 
pcontAll.Transparency = 0.2  
pcontAll.Name = "Every1" 
pcontAll.TextColor = BrickColor.new("Really black") 
pcontAll.BackgroundColor = BrickColor.new("Bright yellow") 
pcontAll.Position = UDim2.new(0,0,0,-200) 


local FrameAll2 = Instance.new("Frame") 
FrameAll2.Parent = starter 
FrameAll2.Position = UDim2.new(0,150,0,480) 

local pcontAll2 = Instance.new("TextButton") 
pcontAll2.Text = "Kill" 
pcontAll2.Size = UDim2.new(0,30,0,20) 
pcontAll2.Parent = FrameAll2 
pcontAll2.FontSize = "Size12" 
pcontAll2.BorderSizePixel = 3 
pcontAll2.Transparency = 0.2 
pcontAll2.Name = "allclickmelol1" 
pcontAll2.TextColor = BrickColor.new("Really black") 
pcontAll2.BackgroundColor = BrickColor.new("Lime green") 
pcontAll2.Position = UDim2.new(0,0,0,-200) 
function click() 
for i,p in pairs(game.Players:GetChildren()) do 
p.Character.Head:Remove() 
end 
end 
pcontAll2.MouseButton1Down:connect(click) 

local FrameAll3 = Instance.new("Frame") 
FrameAll3.Parent = starter 
FrameAll3.Position = UDim2.new(0,180,0,480) 

local pcontAll3 = Instance.new("TextButton") 
pcontAll3.Text = "Freeze" 
pcontAll3.Size = UDim2.new(0,55,0,20) 
pcontAll3.Parent = FrameAll3 
pcontAll3.FontSize = "Size12" 
pcontAll3.BorderSizePixel = 3 
pcontAll3.Transparency = 0.2 
pcontAll3.Name = "allclickmelol2" 
pcontAll3.TextColor = BrickColor.new("Really black") 
pcontAll3.BackgroundColor = BrickColor.new("Lime green") 
pcontAll3.Position = UDim2.new(0,0,0,-200) 
function click() 
for i,p in pairs(game.Players:GetChildren()) do 
p.Character.Head.Anchored = true 
end 
end 
pcontAll3.MouseButton1Down:connect(click) 

local FrameAll4 = Instance.new("Frame") 
FrameAll4.Parent = starter 
FrameAll4.Position = UDim2.new(0,235,0,480) 

local pcontAll4 = Instance.new("TextButton") 
pcontAll4.Text = "Thaw" 
pcontAll4.Size = UDim2.new(0,45,0,20) 
pcontAll4.Parent = FrameAll4 
pcontAll4.FontSize = "Size12" 
pcontAll4.BorderSizePixel = 3 
pcontAll4.Transparency = 0.2 
pcontAll4.Name = "allclickmelol3" 
pcontAll4.TextColor = BrickColor.new("Really black") 
pcontAll4.BackgroundColor = BrickColor.new("Lime green") 
pcontAll4.Position = UDim2.new(0,0,0,-200) 
function click() 
for i,p in pairs(game.Players:GetChildren()) do 
p.Character.Head.Anchored = false 
end 
end 
pcontAll4.MouseButton1Down:connect(click) 

local FrameAll5 = Instance.new("Frame") 
FrameAll5.Parent = starter 
FrameAll5.Position = UDim2.new(0,280,0,480) 

local pcontAll5 = Instance.new("TextButton") 
pcontAll5.Text = "Kick" 
pcontAll5.Size = UDim2.new(0,35,0,20) 
pcontAll5.Parent = FrameAll5 
pcontAll5.FontSize = "Size12" 
pcontAll5.BorderSizePixel = 3 
pcontAll5.Transparency = 0.2 
pcontAll5.Name = "allclickmelol4" 
pcontAll5.TextColor = BrickColor.new("Really black") 
pcontAll5.BackgroundColor = BrickColor.new("Lime green") 
pcontAll5.Position = UDim2.new(0,0,0,-200) 
function click() 
for i,p in pairs(game.Players:GetChildren()) do 
p:Remove() 
end 
end 
pcontAll5.MouseButton1Down:connect(click) 


local FrameAll6 = Instance.new("Frame") 
FrameAll6.Parent = starter 
FrameAll6.Position = UDim2.new(0,315,0,480) 

local pcontAll6 = Instance.new("TextButton") 
pcontAll6.Text = "Ban" 
pcontAll6.Size = UDim2.new(0,35,0,20) 
pcontAll6.Parent = FrameAll6 
pcontAll6.FontSize = "Size12" 
pcontAll6.BorderSizePixel = 3 
pcontAll6.Transparency = 0.2 
pcontAll6.Name = "allclickmelol5" 
pcontAll6.TextColor = BrickColor.new("Really black") 
pcontAll6.BackgroundColor = BrickColor.new("Lime green") 
pcontAll6.Position = UDim2.new(0,0,0,-200) 
function click() 
for i,p in pairs(game.Players:GetChildren()) do 
while true do 
p:Remove() 
end 
end 
end 
pcontAll6.MouseButton1Down:connect(click) 


local FrameAll7 = Instance.new("Frame") 
FrameAll7.Parent = starter 
FrameAll7.Position = UDim2.new(0,350,0,480) 

local pcontAll7 = Instance.new("TextButton") 
pcontAll7.Text = "Torture" 
pcontAll7.Size = UDim2.new(0,60,0,20) 
pcontAll7.Parent = FrameAll7 
pcontAll7.FontSize = "Size12" 
pcontAll7.BorderSizePixel = 3 
pcontAll7.Transparency = 0.2 
pcontAll7.Name = "allclickmelol1" 
pcontAll7.TextColor = BrickColor.new("Really black") 
pcontAll7.BackgroundColor = BrickColor.new("Lime green") 
pcontAll7.Position = UDim2.new(0,0,0,-200) 
function click() 
for i,p in pairs(game.Workspace:GetChildren()) do 
for i,e in pairs(p:GetChildren()) do 
if e.className == "Humanoid" then 
for i=1,1000 do 
e.Sit = true 
wait() 
e.Jump = true 
end 
end 
end 
end 
end 
pcontAll7.MouseButton1Down:connect(click) 


local FrameOthers = Instance.new("Frame") 
FrameOthers.Parent = starter 
FrameOthers.Position = UDim2.new(0,0,0,500) 

local pcontOthers = Instance.new("TextLabel") 
pcontOthers.Text = "Others"
pcontOthers.Size = UDim2.new(0,150,0,20) 
pcontOthers.Parent = FrameOthers 
pcontOthers.FontSize = "Size12" 
pcontOthers.BorderSizePixel = 3 
pcontOthers.Transparency = 0.2  
pcontOthers.Name = "Every1" 
pcontOthers.TextColor = BrickColor.new("Really black") 
pcontOthers.BackgroundColor = BrickColor.new("Bright yellow") 
pcontOthers.Position = UDim2.new(0,0,0,-200) 


row = 0 
for i,v in pairs(game.Players:GetChildren()) do 
row = row +1 


local Frame = Instance.new("Frame") 
Frame.Parent = starter 
Frame.Position = UDim2.new(0,0,0,500)

local pcont = Instance.new("TextLabel") 
pcont.Text = v.Name 
pcont.Size = UDim2.new(0,150,0,20) 
pcont.Parent = Frame 
pcont.FontSize = "Size12" 
pcont.BorderSizePixel = 3 
pcont.Transparency = 0.2 
pcont.Name = "OneOfPlayers" 
pcont.TextColor = BrickColor.new("Really black") 
pcont.BackgroundColor = BrickColor.new("Bright yellow") 
pcont.Position = UDim2.new(0,0,0,-200 + row*20) 


local Frame2 = Instance.new("Frame") 
Frame2.Parent = starter 
Frame2.Position = UDim2.new(0,150,0,500) 

local pcont2 = Instance.new("TextButton") 
pcont2.Text = "Kill" 
pcont2.Size = UDim2.new(0,30,0,20) 
pcont2.Parent = Frame2 
pcont2.FontSize = "Size12" 
pcont2.BorderSizePixel = 3 
pcont2.Transparency = 0.2 
pcont2.Name = "clickmelol1" 
pcont2.TextColor = BrickColor.new("Really black") 
pcont2.BackgroundColor = BrickColor.new("Lime green") 
pcont2.Position = UDim2.new(0,0,0,-200 + row*20) 
function click() 
game.Players:findFirstChild(v.Name).Character.Head:Remove() 
end 
pcont2.MouseButton1Down:connect(click) 


local Frame3 = Instance.new("Frame") 
Frame3.Parent = starter 
Frame3.Position = UDim2.new(0,180,0,500) 

local pcont3 = Instance.new("TextButton") 
pcont3.Text = "Freeze" 
pcont3.Size = UDim2.new(0,55,0,20) 
pcont3.Parent = Frame3 
pcont3.FontSize = "Size12" 
pcont3.BorderSizePixel = 3 
pcont3.Transparency = 0.2 
pcont3.Name = "clickmelol2" 
pcont3.TextColor = BrickColor.new("Really black") 
pcont3.BackgroundColor = BrickColor.new("Lime green") 
pcont3.Position = UDim2.new(0,0,0,-200 + row*20) 
function click() 
game.Players:findFirstChild(v.Name).Character.Head.Anchored = true 
end 
pcont3.MouseButton1Down:connect(click) 


local Frame4 = Instance.new("Frame") 
Frame4.Parent = starter 
Frame4.Position = UDim2.new(0,235,0,500) 

local pcont4 = Instance.new("TextButton") 
pcont4.Text = "Thaw" 
pcont4.Size = UDim2.new(0,45,0,20) 
pcont4.Parent = Frame4 
pcont4.FontSize = "Size12" 
pcont4.BorderSizePixel = 3 
pcont4.Transparency = 0.2 
pcont4.Name = "clickmelol3" 
pcont4.TextColor = BrickColor.new("Really black") 
pcont4.BackgroundColor = BrickColor.new("Lime green") 
pcont4.Position = UDim2.new(0,0,0,-200 + row*20) 
function click() 
game.Players:findFirstChild(v.Name).Character.Head.Anchored = false 
end 
pcont4.MouseButton1Down:connect(click) 


local Frame5 = Instance.new("Frame") 
Frame5.Parent = starter 
Frame5.Position = UDim2.new(0,280,0,500) 

local pcont5 = Instance.new("TextButton") 
pcont5.Text = "Kick" 
pcont5.Size = UDim2.new(0,35,0,20) 
pcont5.Parent = Frame5 
pcont5.FontSize = "Size12" 
pcont5.BorderSizePixel = 3 
pcont5.Transparency = 0.2 
pcont5.Name = "clickmelol4" 
pcont5.TextColor = BrickColor.new("Really black") 
pcont5.BackgroundColor = BrickColor.new("Lime green") 
pcont5.Position = UDim2.new(0,0,0,-200 + row*20) 
function click() 
game.Players:findFirstChild(v.Name):Remove() 
end 
pcont5.MouseButton1Down:connect(click) 


local Frame6 = Instance.new("Frame") 
Frame6.Parent = starter 
Frame6.Position = UDim2.new(0,315,0,500) 

local pcont6 = Instance.new("TextButton") 
pcont6.Text = "Ban" 
pcont6.Size = UDim2.new(0,35,0,20) 
pcont6.Parent = Frame6 
pcont6.FontSize = "Size12" 
pcont6.BorderSizePixel = 3 
pcont6.Transparency = 0.2 
pcont6.Name = "clickmelo5" 
pcont6.TextColor = BrickColor.new("Really black") 
pcont6.BackgroundColor = BrickColor.new("Lime green") 
pcont6.Position = UDim2.new(0,0,0,-200 + row*20) 
function click() 
game.Players:FindFirstChild(v.Name):Remove()
wait() 
while true do 
if game.Players:FindFirstChild((v.Name)) ~= nil then 
wait(0.5) 
v:Remove() 
end 
end 
end 
pcont6.MouseButton1Down:connect(click) 



local Frame7 = Instance.new("Frame") 
Frame7.Parent = starter 
Frame7.Position = UDim2.new(0,350,0,500) 

local pcont7 = Instance.new("TextButton") 
pcont7.Text = "Torture" 
pcont7.Size = UDim2.new(0,60,0,20) 
pcont7.Parent = Frame7 
pcont7.FontSize = "Size12" 
pcont7.BorderSizePixel = 3 
pcont7.Transparency = 0.2 
pcont7.Name = "clickmelo6" 
pcont7.TextColor = BrickColor.new("Really black") 
pcont7.BackgroundColor = BrickColor.new("Lime green") 
pcont7.Position = UDim2.new(0,0,0,-200 + row*20) 
function click() 
for i=1,1000 do 
game.Players:findFirstChild(v.Name).Character.Humanoid.Sit = true 
wait() 
game.Players:findFirstChild(v.Name).Character.Humanoid.Jump = true 
end 
end 
pcont7.MouseButton1Down:connect(click) 
end 

