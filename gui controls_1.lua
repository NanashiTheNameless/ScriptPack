--I dont think you have high enough athority!------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 400)
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "<" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
left()
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 240, 0, 400)
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = ">" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
right()
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 215, 0, 440)
tx.Size = UDim2.new(0, 50, 0, 20) 
tx.Text = "Select tool" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
select() 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 215, 0, 460)
tx.Size = UDim2.new(0, 50, 0, 20) 
tx.Text = "Deselect" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
deselect() 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 215, 0, 380)
tx.Size = UDim2.new(0, 50, 0, 20) 
tx.Text = "^" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
up()
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 215, 0, 420)
tx.Size = UDim2.new(0, 50, 0, 20) 
tx.Text = "v" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
down()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

function left() 
plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame * CFrame.new(-1, 0, 0)
end 

function right() 
plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame * CFrame.new(1, 0, 0)
end 

function up() 
plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame * CFrame.new(0, 0, -1)
end 

function down() 
plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame * CFrame.new(0, 0, 1)
end 

function select() 
tool = Instance.new("Tool") 
tool.Parent = plyr.Character 
tool.Name = "select me " ..plyr.Name 
end 

function deselect() 
t = plyr.Character:findfirstChild("Tool")
if t == nil then 
t:remove() 
end 
end 