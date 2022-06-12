who = "yfc" 
players = game:GetService('Players') 
plyr = players[who] 
char = plyr.Character 
pg = plyr.PlayerGui 

pcall(function() pg.s3dgui:remove() end) 
local gui = Instance.new("ScreenGui", pg) 
gui.Name = "s3dgui" 

local back = Instance.new("Frame", gui) 
back.Position = UDim2.new(0, 0, 0, 0) 
back.Size = UDim2.new(1.5, 0, 1.5, 0) 
back.BorderSizePixel = 0 
back.BackgroundColor = BrickColor.new("Really black") 
back.BackgroundTransparency = 1
local id = Instance.new("TextLabel", back) 
id.Position = UDim2.new(0.375, 0, 0, 0) 
id.Size = UDim2.new(1.5, 0, 1.5, 0) 
id.BorderSizePixel = 0 
id.BackgroundColor3 = Color3.new(0.25, 0.25, 0.5) 
id.BackgroundTransparency = 0.05 
id.Text = "" 
local id2 = Instance.new("TextLabel", back) 
id2.Position = UDim2.new(0, 0, 0, 0) 
id2.Size = UDim2.new(0.375, 0, 1.5, 0) 
id2.BorderSizePixel = 0 
id2.BackgroundColor3 = Color3.new(0.75, 0.25, 0.25) 
id2.BackgroundTransparency = 0.05 
id2.Text = "" 