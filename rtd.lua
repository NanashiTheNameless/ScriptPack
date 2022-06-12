vip = game.Players.acb227 

prize = "" 

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = Workspace.acb227 
guimain2.Adornee = game.Workspace.acb227.Head 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 2, 0)) 

player = vip.Name 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(1, 0, 0, 30) 
T3.Position = UDim2.new(-0.43, 0, 0, 0) 
T3.BackgroundTransparency = 1
T3.BackgroundColor = BrickColor.new(1003)
T3.TextColor = BrickColor.new(1003) 
T3.FontSize = "Size12"
T3.Text = " " 

function onChatted(msg) 
if string.sub(msg, 1, 3) == "rtd" then 
said = string.lower(string.sub(msg, 4)) 
m = math.random(1, 3) 
if m == 1 then 
prize = "walkspeed" 
wait() 
vip.Character.Humanoid.WalkSpeed = vip.Character.Humanoid.WalkSpeed + 5 
elseif
m == 2 then 
prize = "less walkspeed" 
wait() 
vip.Character.Humanoid.WalkSpeed = vip.Character.Humanoid.WalkSpeed - 5 
elseif
m == 3 then 
prize = "god power" 
wait() 
vip.Character.Humanoid.Health = math.huge 
end 
wait()
T3.Text = player.. " rolled the dice! and got " ..prize 
wait(3) 
T3.Text = "" 
end 
end 
vip.Chatted:connect(onChatted) 


