if script.Parent.className ~= "HopperBin" then 
local h = Instance.new("HopperBin") script.Parent = h 
h.Name = "MultiTool" 
h.Parent = game:getService("Players").acb227.Backpack 
wait(0.5) 
end 
bin = script.Parent 
player = bin.Parent.Parent 

vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "KeyBoard" 
sc.Parent = pg 

t = Instance.new("TextLabel") 
t.BackgroundTransparency = 0 
t.BackgroundColor3 = Color3.new(56, 1, 50)
t.Name = "Gui" 
t.Parent = sc 
t.Position = UDim2.new(0, 50, 0, 200)
t.Size = UDim2.new(0, 200, 0, 200) 
t.Text = "" 

te = Instance.new("TextLabel") 
te.BackgroundTransparency = 0 
te.BackgroundColor3 = Color3.new(23, 75, 5)
te.Name = "Gui" 
te.Parent = sc 
te.Position = UDim2.new(0, 55, 0, 205)
te.Size = UDim2.new(0, 190, 0, 25) 
te.Text = "blah blah blah" 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.BackgroundColor3 = Color3.new(156, 156, 156)
tx.Name = "Gui" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 100, 0, 275)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "<-- Backspace" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
te.Text = "" 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

function onMoved(mouse) 

end 

function onButton1Down(mouse) 

end 

function onButton1Up(mouse) 

end 

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if key=="a" then 
te.Text = te.Text.. "a" 
end 

if key=="b" then 
te.Text = te.Text.. "b" 
end 

if key=="c" then 
te.Text = te.Text.. "c" 
end 








end 
end 

function onDeselected(mouse) 
t.Visible = false 
tx.Visible = false 
te.Visible = false 
end 

function Selected(mouse) 
t.Visible = true 
tx.Visible = true 
te.Visible = true 
end 




function onSelected(mouse) 

mouse.Icon = "rbxasset://textures\\Reloading.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.Move:connect(function() onMoved(mouse) end) 
end 


bin.Selected:connect(onSelected) 
bin.Deselected:connect(onDeselected)  