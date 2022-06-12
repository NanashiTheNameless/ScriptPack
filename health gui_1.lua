pcall(function() game.StarterGui.ScreenGui:remove() end) 
local sc = Instance.new("ScreenGui", game.StarterGui) 

wait(10) 
local char = sc.Parent.Parent.Character 

local max = char.Humanoid.MaxHealth 
local health = char.Humanoid.Health 

local tt = Instance.new("TextLabel", sc) 
tt.Position = UDim2.new(0, 300, 0, 0) 
tt.Size = UDim2.new(0, max*2, 0, 20) 
tt.Text = "" 
tt.BackgroundColor = BrickColor.new("Bright red") 
local tt2 = Instance.new("TextLabel", sc) 
tt2.Position = UDim2.new(0, 300, 0, 0) 
tt2.Size = UDim2.new(0, health*2, 0, 20) 
tt2.Text = "" 
tt2.BackgroundColor = BrickColor.new("Bright green") 
local tt3 = Instance.new("TextLabel", sc) 
tt3.Position = UDim2.new(0, 300, 0, 0) 
tt3.Size = UDim2.new(0, max*2, 0, 20) 
tt3.BackgroundTransparency = 1 
tt3.Text = "" ..health.. "/" ..max.. " " 
tt3.BackgroundColor = BrickColor.new("Bright red") 
--tt.MouseButton1Down:connect(function() 

while wait() do 
max = char.Humanoid.MaxHealth 
health = char.Humanoid.Health 
tt2.Size = UDim2.new(0, health*2, 0, 20) 
tt3.Text = "" ..health.. "/" ..max.. " " 
end 