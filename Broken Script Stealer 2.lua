----...---------------------------------------------------------------------------------------------------------------------------------------------- 
vip = game.Players.lordsheen 
danumber1 = 0 
danumber2 = 1 
danumber3 = 0 
open = false 
editopen = false 
local gui = Instance.new("ScreenGui") 
gui.Parent = vip.PlayerGui 
gui.Name = "quickscriptgui" 
local fr1 = Instance.new("Frame") 
fr1.Parent = gui 
fr1.Name = "inboxframe" 
fr1.Position = UDim2.new(0, 170, 0, 70) 
fr1.Size = UDim2.new(0, 240, 0, 170) 
local but1 = Instance.new("TextButton") 
but1.Parent = fr1 
but1.BackgroundColor3 = Color3.new(1, 0.64, 0) 
but1.Name = "left" 
but1.Position = UDim2.new(0,5,0,60) 
but1.Size = UDim2.new(0,30,0,30) 
but1.Text = "<" 
local but2 = Instance.new("TextButton") 
but2.Parent = fr1 
but2.BackgroundColor3 = Color3.new(1,0.64,0) 
but2.Name = "right" 
but2.Position = UDim2.new(0, 205, 0, 60) 
but2.Size = UDim2.new(0, 30, 0, 30) 
but2.Text = ">" 
local label1 = Instance.new("TextLabel") 
label1.Parent = fr1 
label1.Name = "sign" 
label1.Text = "Inbox" 
label1.Position = UDim2.new(0,20,0,10) 
label1.Size = UDim2.new(0, 60, 0, 20) 
label1.BackgroundTransparency = 1 
label1.TextXAlignment = "Left" 
local fr3 = Instance.new("Frame") 
fr3.Parent = gui 
fr3.BackgroundColor3 = Color3.new(1,1,1) 
fr3.Name = "scriptframe" 
fr3.Position = UDim2.new(0, 170, 0, 250) 
fr3.Size = UDim2.new(0, 450, 0, 140) 
fr3.Visible = false 
local sir = Instance.new("StringValue") 
sir.Parent = fr3 
sir.Name = "Source2" 
local but3 = Instance.new("TextButton") 
but3.Parent = fr3 
but3.BackgroundColor3 = Color3.new(0,1,0) 
but3.Name = "start" 
but3.Position = UDim2.new(0, 10, 0, 50) 
but3.Size = UDim2.new(0, 100, 0, 30) 
but3.Text = "Start" 
local but4 = Instance.new("TextButton") 
but4.Parent = fr3 
but4.BackgroundColor3 = Color3.new(1,0,0) 
but4.Name = "stop" 
but4.Position = UDim2.new(0, 10, 0, 50) 
but4.Size = UDim2.new(0, 100, 0, 30) 
but4.Text = "Stop" 
but4.Visible = false 
local but5 = Instance.new("TextButton") 
but5.Parent = fr3 
but5.BackgroundColor3 = Color3.new(0.84, 1, 1) 
but5.Name = "pause" 
but5.Position = UDim2.new(0, 120, 0, 50) 
but5.Size = UDim2.new(0, 90, 0, 30) 
but5.Text = "Pause" 
but5.Visible = false 
local but6 = Instance.new("TextButton") 
but6.Parent = fr3 
but6.BackgroundColor3 = Color3.new(0.63, 1, 0.2) 
but6.Name = "play" 
but6.Position = UDim2.new(0, 120, 0, 50) 
but6.Size = UDim2.new(0, 90, 0, 30) 
but6.Text = "Play" 
but6.Visible = false 
local but7 = Instance.new("TextButton") 
but7.Parent = fr3 
but7.BackgroundColor3 = Color3.new(1,0.2,0) 
but7.Name = "delete" 
but7.Position = UDim2.new(0, 230, 0, 50) 
but7.Size = UDim2.new(0, 90, 0, 30) 
but7.Text = "Delete!" 
but7.Visible = false 
local label4 = Instance.new("TextLabel") 
label4.Parent = fr3 
label4.BackgroundColor3 = Color3.new(0,1,1) 
label4.Position = UDim2.new(0,10,0,10) 
label4.Name = "thescript" 
label4.Text = "Scrolling Script" 
label4.Size = UDim2.new(0, 430, 0, 20) 
function add(child) 
if child:isA("Script") then 
local fr2 = Instance.new("Frame") 
fr2.Parent = fr1 
danumber1=danumber1+1 
fr2.Name = "mail" .. danumber1 
fr2.BackgroundColor3 = Color3.new(1,0.64,0) 
fr2.Position = UDim2.new(0, 45, 0, 40) 
fr2.Size = UDim2.new(0, 150, 0, 100) 
if danumber1 == 1 then 
fr2.Visible = true 
else 
fr2.Visible = false 
end 
plr = child.Creator 
if plr == nil then fr2:remove() return end 
local label2 = Instance.new("TextLabel") 
label2.Parent = fr2 
label2.Name = "number" 
label2.BackgroundTransparency = 1 
label2.Size = UDim2.new(0, 150, 0, 20) 
label2.Text = "Script #" .. danumber1 
local label3 = Instance.new("TextLabel") 
label3.Parent = fr2 
label3.Name = "contains" 
label3.BackgroundTransparency = 1 
label3.Position = UDim2.new(0,0,0,20) 
label3.Size = UDim2.new(0, 150, 0, 20) 
if (string.match(child.Sour.Value, "Chatted")) then 
label3.Text = "Contains: Command" 
elseif (string.match(child.Sour.Value, "Tool")) then 
label3.Text = "Contains: Tool" 
elseif (string.match(child.Sour.Value, "HopperBin")) then 
label3.Text = "Contains: HopperBin" 
elseif (string.match(child.Sour.Value, "ScreenGui")) then 
label3.Text = "Contains: GUI" 
elseif (string.match(child.Sour.Value, "BillboardGui")) then 
label3.Text = "Contains: BillboardGui" 
elseif (string.match(child.Sour.Value, "Tool")) then 
label3.Text = "Contains: Tool" 
else 
label3.Text = "Contains: Unknown" 
end 
local but8 = Instance.new("TextButton") 
but8.Parent = fr2 
but8.Name = "button" 
but8.BackgroundColor3 = Color3.new(1,0,0) 
but8.Position = UDim2.new(0, 10, 0, 50) 
but8.Size = UDim2.new(0, 130, 0, 30) 
but8.Text = "Check it out" 
function click() 
fr3.Visible = true 
open = true 
sir.Value = child.Sour.Value 
end 
but8.MouseButton1Click:connect(click) 
end end 
game.Workspace.ChildAdded:connect(add) 
bool = false 
b = 1 
speed = 0.075 
function scroll() 
for i = b, 50 do 
label4.Text = string.sub(sir.Value,1,i) 
b=b+1 
if bool == false then 
return 
end 
for ii = b, 50-#label4.Text do 
label4.Text = " " .. label4.Text 
b=b+1 
if bool == false then 
return 
end 
end 
if i ~= #sir.Value then 
wait(speed) 
end end 
for i = b, #sir.Value+2 do 
label4.Text = string.sub(sir.Value,i,50+i) 
b=b+1 
if bool == false then 
return 
end 
if #label4.Text < 50 then 
for ii = b, 50-#label4.Text do 
label4.Text = label4.Text .. " " 
b=b+1 
if bool == false then 
return 
end 
end end 
wait(speed) 
end end 
function click() 
but3.Visible = false 
but4.Visible = true 
but5.Visible = true 
but7.Visible = true 
bool = true 
scroll() 
end 
but3.MouseButton1Down:connect(click) 
local fr4 = Instance.new("Frame") 
fr4.Parent = gui 
fr4.BackgroundColor3 = Color3.new(0.61, 0.81, 1) 
fr4.Name = "cloneframe" 
fr4.Position = UDim2.new(0, 170, 0, 215) 
fr4.Size = UDim2.new(0, 440, 0, 130) 
fr4.Visible = false 
local sv = Instance.new("StringValue") 
sv.Parent = fr4 
sv.Name = "newSource" 
local newlabel1 = Instance.new("TextLabel") 
newlabel1.Parent = fr4 
newlabel1.BackgroundTransparency = 1 
newlabel1.Name = "help" 