vip = game.Players.acb227
vip.Character = nil
gui = Instance.new("ScreenGui")
gui.Parent = vip.PlayerGui
script.Parent = gui

line = 1
function Type(txt, color1, color2, color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5, 0, 0.1 + line/25, 0)
message.Name = "CoolsizzleMessage" .. line
message.TextColor3 = Color3.new(color1, color2, color3)
message.Parent = gui
stretch = 1
line = line + 1
txt = txt .. "|"
length = string.len(txt)
for i = 1, length do
wait()
message.Text = string.sub(txt, 1, stretch)
stretch = stretch + 1
end
for i = 1, 3 do
wait(0.5)
message.Text = string.sub(txt, 1, length - 1)
wait(0.5)
message.Text = string.sub(txt, 1, length)
end
message.Text = string.sub(txt, 1, length - 1)
end

function StayType(txt, color1, color2, color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5, 0, 0.01 + line / 25, 0)
message.Name = "ACoolsizzle" .. line
message.TextColor3 = Color3.new(color1, color2, color3)
message.Parent = gui
stretch = 1
txt = txt .. "|"
length = string.len(txt)
for i = 1, length - 1 do
wait()
message.Text = string.sub(txt, 1, stretch)
stretch = stretch + 1
end
end

function Clear(num)
for i, v in pairs(gui:GetChildren()) do
if string.sub(v.Name, 1, 10) == "Coolsizzle" then
for i = 1, 10 do
wait()
v.TextTransparency = v.TextTransparency + 0.1
end
line = line - 1
print("Text box " .. line .. " has been deleted.")
v:Remove()
end
end
end

base = Instance.new("TextLabel")
base.BackgroundColor3 = Color3.new(0, 0, 0)
base.Text = ""
base.Parent = gui
base.Position = UDim2.new(0.5, 0, 0.5, 0)
base.BorderColor3 = Color3.new(0, 0, 0)
base.BackgroundTransparency = 0.4
for i = 1, 55 do
wait()
base.Size = base.Size + UDim2.new(0.025, 0, 0.025, 0)
base.Position = base.Position - UDim2.new(0.025/2, 0, 0.025/2, 0)
end

Type("Welcome to acb227's Explorer Gui", 1, 1, 1)
Type("The commands are: \"next \", \"back \", \"remove \", \"fix \", \"home \", and \"refresh \"", 1, 1, 1)
Type("If it doesn't work, PM cool12309 because i dont know about this much....", 1, 1, 1)
Type("The next update will be: You won't have to type the full name", 1, 1, 1)
Type("Enjoy! :D", 1, 1, 1)

Clear()

StayType("acb227's Explorer Gui V1", 1, 1, 1)

number = 0
stage = 0
space = 150
where = game
hmany = 0

hold = Instance.new("Frame")
hold.Name = "Stuff"
hold.Position = UDim2.new(0, 0, 0, 0)
hold.Parent = gui
stuff = Instance.new("Frame")
stuff.Name = "Stuffaxor"
stuff.Position = UDim2.new(0, 0, 0, 0)
stuff.Parent = gui



access = false

function Search()
hmany = 60
for _, v in pairs(where:GetChildren()) do
hmany = hmany + 1
end
if hmany > 60 then
for _, v in pairs(where:GetChildren()) do
number = number + 1
if number == 13 then
number = 1
stage = stage + 1
end
buttona = Instance.new("TextLabel")
buttona.Text = v.Name
buttona.BackgroundTransparency = 1
buttona.TextColor3 = Color3.new(1, 2, 2)
buttona.Size = UDim2.new(0, 100, 0, 25)
buttona.Position = UDim2.new(0, 100*number - 75, 0, space + (stage*50))
if access == true then
buttona.Visible = true
else
buttona.Visible = false
end
buttona.Parent = hold
wait()
end
number = 0
stage = 0
end
end

basez = Instance.new("TextButton")
basez.BackgroundColor3 = Color3.new(0.1, 0.2, 0.2)
basez.Text = "Refresh - Back"
basez.Parent = gui
basez.Position = UDim2.new(0.5, -50, 0, 60)
basez.Size = UDim2.new(0, 100, 0, 25)
basez.TextColor3 = Color3.new(1, 2, 2)
basez.BackgroundTransparency = 1
basez.Visible = false

function onButton1Down()
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
Search()
end

basez.MouseButton1Down:connect(onButton1Down)

function onButton2Down()
if where == game then return end
where = where.Parent
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
Search()
end

basez.MouseButton2Down:connect(onButton2Down)

bases = Instance.new("TextButton")
bases.BackgroundColor3 = Color3.new(0.1, 0.2, 0.2)
bases.Text = "Fix - Home"
bases.Parent = gui
bases.Position = UDim2.new(0.5, -50, 0, 0)
bases.Size = UDim2.new(0, 100, 0, 25)
bases.TextColor3 = Color3.new(1, 2, 2)
bases.BackgroundTransparency = 1
bases.Visible = false

function onButton1Down()
where = game
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
Search()
end

bases.MouseButton1Down:connect(onButton1Down)

function onButton2Down()
where = game
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
Search()
end

bases.MouseButton2Down:connect(onButton2Down)

basec = Instance.new("TextBox")
basec.BackgroundColor3 = Color3.new(0.1, 0.2, 0.2)
basec.Text = "Enter password here"
basec.Parent = gui
basec.Position = UDim2.new(0.5, -50, 0, 25)
basec.Size = UDim2.new(0, 100, 0, 25)
basec.TextColor3 = Color3.new(1, 2, 2)
basec.BackgroundTransparency = 1
basec.Visible = true

basex = Instance.new("TextButton")
basex.BackgroundColor3 = Color3.new(0.1, 0.2, 0.2)
basex.Text = "Ok - Cancel"
basex.Parent = gui
basex.Position = UDim2.new(0.5, -50, 0, 0)
basex.Size = UDim2.new(0, 100, 0, 25)
basex.TextColor3 = Color3.new(1, 2, 2)
basex.BackgroundTransparency = 1
basex.Visible = true

function onButton1Down()
if basec.Text == "acb227 rules" then
basex.Visible = false
basec.Visible = false
bases.Visible = true
basez.Visible = true
access = true
where = game
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
Search()
else
basec.Text = "Wrong password noob"
end
end

basex.MouseButton1Down:connect(onButton1Down)

function onButton2Down()
gui:Remove()
end

basex.MouseButton2Down:connect(onButton2Down)

Search()

function onChatted(msg)
if access == false then return end
if msg == "refresh " then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
Search()
end
if string.sub(msg, 1, 5) == "next " or string.sub(msg, 1, 5) == "show " then
if where:findFirstChild(string.sub(msg, 6)) then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
where = where[string.sub(msg, 6)]
Search()
end
end
if string.sub(msg, 1, 7) == "remove " then
if where:findFirstChild(string.sub(msg, 8)) then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
where[string.sub(msg, 8)]:Remove()
Search()
end
end
if string.sub(msg, 1, 6) == "break " then
if where:findFirstChild(string.sub(msg, 7)) then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
if where[string.sub(msg, 7)].className == "Part" or where[string.sub(msg, 7)].className == "Model" then
where[string.sub(msg, 7)]:BreakJoints()
end
Search()
end
end
if string.sub(msg, 1, 11) == "remove all " then
if where:findFirstChild(string.sub(msg, 12)) then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
for _, v in pairs(where:GetChildren()) do
if v.Name == string.sub(msg, 12) then
v:Remove()
end
end
Search()
end
end
if string.sub(msg, 1, 10) == "break all " then
if where:findFirstChild(string.sub(msg, 11)) then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
if where[string.sub(msg, 11)].className == "Part" or where[string.sub(msg, 11)].className == "Model" then
for _, v in pairs(where:GetChildren()) do
if v.Name == string.sub(msg, 11) then
v:BreakJoints()
end
end
end
Search()
end
end
if msg == "back " then
if where == game then return end
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
where = where.Parent
Search()
end
if msg == "fix " or msg == "home " then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
where = game
Search()
end
if string.sub(msg, 1, 5) == "move " then
if where == game then return end
if where:findFirstChild(string.sub(msg, 6)) then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
where[string.sub(msg, 6)].Parent = stuff
Search()
end
end
if string.sub(msg, 1, 6) == "place " then
if stuff:findFirstChild(msg, 7) then
for _, v in pairs(hold:GetChildren()) do
v:Remove()
end
stuff[string.sub(msg, 7)].Parent = where
Search()
end
end
end

vip.Chatted:connect(onChatted)
