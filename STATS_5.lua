local Players = game:GetService("Players") 
for _,v in pairs(Players:GetChildren()) do 
local who = v.Name 
local plyr = Players[who] 
local char = plyr.Character 
local int = 10 
if v.Name == "Joshuzzz" then 
int = 2500
end 
local hun = 100 
local thi = 100 
local statss = false 
pcall(function() plyr.PlayerGui.Stats:remove() end) 
local sc = Instance.new("ScreenGui", plyr.PlayerGui) 
sc.Name = "Stats" 
local tb = Instance.new("TextButton", sc) 
tb.Draggable = true 
tb.Size = UDim2.new(0, 200, 0, 20) 
tb.Text = "DRAG ME" 
local tbc = Instance.new("TextButton", sc) 
tbc.Draggable = true 
tbc.Size = UDim2.new(0, 500, 0, 20) 
tbc.Position = UDim2.new(0, 500, 0, 100) 
tbc.Text = "DRAG ME" 
tbc.Visible = false 
local tb2 = Instance.new("TextButton", tb) 
tb2.Size = UDim2.new(0, 200, 0, 20) 
tb2.Position = UDim2.new(0, 0, 0, 20) 
tb2.Text = "Open Stats" 
local tbc2 = Instance.new("TextLabel", tbc) 
tbc2.Size = UDim2.new(0, 500, 0, 20) 
tbc2.Position = UDim2.new(0, 0, 0, 20) 
tbc2.Text = "Intelect: " ..int.. " " 
local tbc3 = Instance.new("TextLabel", tbc) 
tbc3.Size = UDim2.new(0, 500, 0, 20) 
tbc3.Position = UDim2.new(0, 0, 0, 40) 
tbc3.Text = "Hunger: " ..hun.. " " 
local tbc4 = Instance.new("TextLabel", tbc) 
tbc4.Size = UDim2.new(0, 500, 0, 20) 
tbc4.Position = UDim2.new(0, 0, 0, 60) 
tbc4.Text = "Thirst: " ..thi.. " " 

tb2.MouseButton1Down:connect(function() 
if statss == false then 
statss = true
tbc.Visible = true 
tb2.Text = "Close Stats" 
else 
statss = false
tbc.Visible = false 
tb2.Text = "Open Stats" 
end 
end)

function die() 
v.Character:BreakJoints() 
end 

coroutine.resume(coroutine.create(function() 
while wait(0.15) do 
hun = hun - 1 
thi = thi - 1 
tbc3.Text = "Hunger: " ..hun.. " " 
tbc4.Text = "Thirst: " ..thi.. " " 
if thi <= 0 or hun <= 0 then 
die() 
hun = 100 
thi = 100 
end 
end 
end)) 
end 