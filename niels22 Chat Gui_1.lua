player1 = "lordsheen"
player2 = "AccountMoniter" 

playergui1 = game.Players:findFirstChild(player1).PlayerGui  
playergui2 = game.Players:findFirstChild(player2).PlayerGui  

screengui1 = Instance.new("ScreenGui") 
screengui1.Parent = playergui1 
screengui1.Name = "gui" 

screengui2 = Instance.new("ScreenGui") 
screengui2.Parent = playergui2 
screengui2.Name = "gui" 

local Frame1 = Instance.new("Frame") 
Frame1.Parent = screengui1 
Frame1.Position = UDim2.new(0,0,0,120) 

local Frame2 = Instance.new("Frame") 
Frame2.Parent = screengui2 
Frame2.Position = UDim2.new(0,0,0,120) 

local Framey1 = Instance.new("Frame") 
Framey1.Parent = screengui1 
Framey1.Position = UDim2.new(0,0,0,100) 

local Framey2 = Instance.new("Frame") 
Framey2.Parent = screengui2 
Framey2.Position = UDim2.new(0,0,0,100) 

local FrameN1 = Instance.new("Frame") 
FrameN1.Parent = screengui1 
FrameN1.Position = UDim2.new(0,0,0,60) 

local FrameN2 = Instance.new("Frame") 
FrameN2.Parent = screengui2 
FrameN2.Position = UDim2.new(0,0,0,60) 

N1 = Instance.new("TextLabel") 
N1.Parent = FrameN1 
N1.Size = UDim2.new(0,500,0,40) 
N1.Position = UDim2.new(0,0,0,120) 
N1.BackgroundColor = BrickColor.new() 
N1.BorderColor = BrickColor.new(1) 
N1.Text = "Chatting with: "..player2
N1.FontSize = "Size18" 
N1.TextColor = BrickColor.new("Really red") 

N2 = Instance.new("TextLabel") 
N2.Parent = FrameN2 
N2.Size = UDim2.new(0,500,0,40) 
N2.Position = UDim2.new(0,0,0,120) 
N2.BackgroundColor = BrickColor.new() 
N2.BorderColor = BrickColor.new(1) 
N2.Text = "Chatting with: "..player1
N2.FontSize = "Size18" 
N2.TextColor = BrickColor.new("Really red") 

tb1 = Instance.new("TextBox") 
tb1.Parent = Frame1 
tb1.Size = UDim2.new(0,500,0,20) 
tb1.Position = UDim2.new(0,0,0,120) 
tb1.BackgroundColor = BrickColor.new() 
tb1.BorderColor = BrickColor.new(1) 
tb1.Text = "hey, its "..player1 
tb1.FontSize = "Size10" 
tb1.TextColor = BrickColor.new(1) 


tbb1 = Instance.new("TextLabel") 
tbb1.Parent = Framey1 
tbb1.Size = UDim2.new(0,500,0,20) 
tbb1.Position = UDim2.new(0,0,0,120) 
tbb1.BackgroundColor = BrickColor.new() 
tbb1.BorderColor = BrickColor.new(1) 
tbb1.Text = ""
tbb1.FontSize = "Size10" 
tbb1.TextColor = BrickColor.new(1) 


tb2 = Instance.new("TextBox") 
tb2.Parent = Frame2 
tb2.Size = UDim2.new(0,500,0,20) 
tb2.Position = UDim2.new(0,0,0,120) 
tb2.BackgroundColor = BrickColor.new() 
tb2.BorderColor = BrickColor.new(1) 
tb2.Text = "click me to send a message to "..player1 
tb2.FontSize = "Size10" 
tb2.TextColor = BrickColor.new(1) 


tbb2 = Instance.new("TextLabel") 
tbb2.Parent = Framey2 
tbb2.Size = UDim2.new(0,500,0,20) 
tbb2.Position = UDim2.new(0,0,0,120) 
tbb2.BackgroundColor = BrickColor.new() 
tbb2.BorderColor = BrickColor.new(1) 
tbb2.Text = ""
tbb2.FontSize = "Size10" 
tbb2.TextColor = BrickColor.new(1) 

wait(0.01) 

while true do
wait()
tbb1.Text = tb2.Text
tbb2.Text = tb1.Text
if screengui1==nil then 
screengui2:Remove() 
end 
if screengui2==nil then 
screengui1:Remove() 
end 
end --lego 