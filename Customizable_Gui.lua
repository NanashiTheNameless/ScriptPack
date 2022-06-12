--[Welcome to my customizable gui! By joseph2235]--
--[To get started, scroll through the gui and look at the notes]--
--[If you just want to add buttons, go from line 31]--

gui = Instance.new("ScreenGui",game.CoreGui)
gui.Name = "CustomizableGui"
gui.ResetOnSpawn = false

box = Instance.new("ScrollingFrame",gui)
box.Name = "Box"
box.Size = UDim2.new(0,300,0,400)
box.Position = UDim2.new(0,0,0,300)
box.BackgroundColor3 = Color3.new(255,255,255) -- What you want the color to be in R,G,B (you can keep it as it already is)
box.BackgroundTransparency = .65 -- What you want the transparency to be
box.BorderSizePixel = 0
box.ScrollBarThickness = 0
box.Active = true
box.Draggable = true -- If you want the box to be draggable or not (recommended to keep true)

top = Instance.new("TextLabel",box)
top.Name = "TopBar"
top.Size = UDim2.new(0,300,0,25)
top.BackgroundColor3 = Color3.new(255,255,255) -- Color of the top bar
top.BackgroundTransparency = .4 -- Transparency of the bar
top.BorderSizePixel = 0
top.Font = "SourceSans"
top.FontSize = "Size14"
top.Text = "Raindrop" -- Change it to what you want the top bar to say (or keep it blank)
top.TextColor3 = Color3.new(0,0,0)

pos1 = 25
function c1(txt) -- This is a function that creates buttons!
local a = Instance.new("TextButton",box)
a.Name = (txt)
a.Size = UDim2.new(0,150,0,40)
a.Position = UDim2.new(0,0,0,pos1)
a.BackgroundColor3 = Color3.new(255,255,255)
a.BackgroundTransparency = .5
a.BorderSizePixel = 0
a.Font = "SourceSansLight"
a.FontSize = "Size24"
a.Text = (txt)
a.TextColor3 = Color3.new(0,0,0)
pos1 = pos1+40
return a
end

pos2 = 25
function c2(txt)
local a = Instance.new("TextButton",box)
a.Name = (txt)
a.Size = UDim2.new(0,150,0,40)
a.Position = UDim2.new(0,150,0,pos2)
a.BackgroundColor3 = Color3.new(255,255,255)
a.BackgroundTransparency = .5
a.BorderSizePixel = 0
a.Font = "SourceSansLight"
a.FontSize = "Size24"
a.Text = (txt)
a.TextColor3 = Color3.new(0,0,0)
pos2 = pos2+40
return a
end

--[READ: To add buttons just type c1("button text") to put the button on the left or c2("button text") to put the button on the right!]--

-- example:
prnt = c1("Print Something")

prnt.MouseButton1Down:connect(function() --copy and paste this each time and replace the stuff
print("Hello!")
end)