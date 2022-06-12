local deb = false
function clicked()
if deb == false then 
deb = true
script.Parent.Open.Text = "Close shop"
game.Lighting.Shop1:Clone().Parent = script.Parent.Parent
elseif deb == true then
deb = false
script.Parent.Open.Text = "Open shop"
script.Parent.Parent.Shop1:Remove()
c = script.Parent.Parent.Parent:FindFirstChild("Message")
if c ~= nil then
c:Remove()
end
end
end
script.Parent.Open.MouseButton1Down:connect(clicked)


function clicked()
if deb == false then 
deb = true
script.Parent.Open.Text = "Close Donate"
game.Lighting.Donate:Clone().Parent = script.Parent.Parent
elseif deb == true then
deb = false
script.Parent.Open.Text = "Open Donate"
script.Parent.Parent.Donate:Remove()
c = script.Parent.Parent.Parent:FindFirstChild("Message")
if c ~= nil then
c:Remove()
end
end
end
script.Parent.Open.MouseButton1Down:connect(clicked)


deb = false
function clicked()
if deb == false then 
deb = true
script.Parent.Open.Text = "Close shop"
game.Lighting.Shop1:Clone().Parent = script.Parent.Parent
elseif deb == true then
deb = false
script.Parent.Open.Text = "Open shop"
script.Parent.Parent.Shop1:Remove()
c = script.Parent.Parent.Parent:FindFirstChild("Message")
if c ~= nil then
c:Remove()
end
end
end
script.Parent.Open.MouseButton1Down:connect(clicked)deb = false
function clicked()
if deb == false then 
deb = true
script.Parent.Open.Text = "Close shop"
game.Lighting.Shop1:Clone().Parent = script.Parent.Parent
elseif deb == true then
deb = false
script.Parent.Open.Text = "Open shop"
script.Parent.Parent.Shop1:Remove()
c = script.Parent.Parent.Parent:FindFirstChild("Message")
if c ~= nil then
c:Remove()
end
end
end
script.Parent.Open.MouseButton1Down:connect(clicked)