local plyr = game.Players.acb227 
local pg = plyr.PlayerGui 

pcall(function() pg.WorkspaceGui:remove()  end) 
local sc = Instance.new("ScreenGui", pg) 
sc.Name = "WorkspaceGui" 
local y = 165 

local wrkspace = game:GetService("Workspace") 
local select = nil 

function load() 
for _,v in pairs(wrkspace:GetChildren()) do 
y = y + 15
local tt = Instance.new("TextButton", sc) 
tt.Position = UDim2.new(0, 165, 0, y) 
tt.Size = UDim2.new(0, 200, 0, 15) 
tt.Text = "" ..v.Name.. "" 
tt.BackgroundTransparency = 0.75
tt.BackgroundColor = BrickColor.new("White") 
tt.MouseButton1Down:connect(function() 
if wrkspace[v.Name] ~= nil then 
wrkspace[v.Name].Archible = true 
asd = wrkspace[v.Name]:clone() 
asd.Parent = wrkspace 
asd.Archible = false 
wrkspace[v.Name].Archible = false 
redo() 
end 
end)
tt.MouseButton2Down:connect(function() 
if wrkspace[v.Name] ~= nil then 
wrkspace[v.Name]:remove() 
tt:remove() 
redo() 
end 
end)
end 
end 

load() 
while wait(15) do 
load() 
end 