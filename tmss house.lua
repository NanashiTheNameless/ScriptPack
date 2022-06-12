model = Instance.new("Model", workspace)
model.Name = "Message"

adminlist = {"Cobalt1164"}

function MakePart(si,ff,cfa,cf,co,na) 
local p = Instance.new("Part",house2) 
p.Name,p.Anchored,p.Locked = na,true,true 
p.formFactor,p.BrickColor = ff,BrickColor.new(co) 
p.Size,p.TopSurface,p.BottomSurface = si,"Smooth","Smooth" 
p.CFrame = cf*cfa 
return p 
end 

function makebrick(parent)
a = Instance.new("Part", parent)
a.TopSurface = "Smooth"
a.BottomSurface = "Smooth"
a.Anchored = true
a.formFactor = "Custom"
return a
end 

door = makebrick(model)
door.Name = "Door"
door.BrickColor = BrickColor.new("Deep blue")
door.Size = Vector3.new(10, 11, 1)
door.CFrame = CFrame.new(0, 406.9, 49.5)
door.CanCollide = true

deck1 = makebrick(model)
deck1.Name = "Deck1"
deck1.BrickColor = BrickColor.new("Really black")
deck1.Size = Vector3.new(100, 1, 1)
deck1.CFrame = CFrame.new(0, 400.9, 50.5)

deck2 = makebrick(model)
deck2.Name = "Deck2"
deck2.BrickColor = BrickColor.new("Really black")
deck2.Size = Vector3.new(1, 1, 100)
deck2.CFrame = CFrame.new(-50.5, 400.9, 0)

deck3 = makebrick(model)
deck3.Name = "Deck3"
deck3.BrickColor = BrickColor.new("Really black")
deck3.Size = Vector3.new(1, 1, 100)
deck3.CFrame = CFrame.new(50.5, 400.9, 0)

h2 = makebrick(model)
h2.Name = "Hatch2"
h2.BrickColor = BrickColor.new("Really black")
h2.Size = Vector3.new(10, 1, 20)
h2.CFrame = CFrame.new(5, 419.9, 0)

h1 = makebrick(model)
h1.Name = "Hatch1"
h1.BrickColor = BrickColor.new("Really black")
h1.Size = Vector3.new(10, 1, 20)
h1.CFrame = CFrame.new(-5, 419.9, 0)

e = makebrick(model)
e.Name = "Elevator"
e.BrickColor = BrickColor.new("Institutional white")
e.Size = Vector3.new(20, 1, 20)
e.CFrame = CFrame.new(0, 401.9, 0)

bottom = makebrick(model)
bottom.Name = "Bottom"
bottom.BrickColor = BrickColor.new("Really black")
bottom.Size = Vector3.new(100, 1, 80)
bottom.CFrame = CFrame.new(0, 400.9, 10)

bottom3 = makebrick(model)
bottom3.Name = "Bottom2"
bottom3.BrickColor = BrickColor.new("Really black")
bottom3.Size = Vector3.new(80, 1, 20)
bottom3.CFrame = CFrame.new(-10, 400.9, -40)

h4 = makebrick(model)
h4.Name = "Hatch4"
h4.BrickColor = BrickColor.new("Really black")
h4.Size = Vector3.new(10, 1, 20)
h4.CFrame = CFrame.new(45, 400.9, -40)

h3 = makebrick(model)
h3.Name = "Hatch3"
h3.BrickColor = BrickColor.new("Really black")
h3.Size = Vector3.new(10, 1, 20)
h3.CFrame = CFrame.new(35, 400.9, -40)

top1 = makebrick(model)
top1.Name = "Top1"
top1.BrickColor = BrickColor.new("Really black")
top1.Size = Vector3.new(40, 1, 100)
top1.CFrame = CFrame.new(-30, 419.9, 0)

top2 = makebrick(model)
top2.Name = "Top2"
top2.BrickColor = BrickColor.new("Really black")
top2.Size = Vector3.new(40, 1, 100)
top2.CFrame = CFrame.new(30, 419.9, 0)

top3 = makebrick(model)
top3.Name = "Top3"
top3.BrickColor = BrickColor.new("Really black")
top3.Size = Vector3.new(20, 1, 40)
top3.CFrame = CFrame.new(0, 419.9, 30)

top4 = makebrick(model)
top4.Name = "Top4"
top4.BrickColor = BrickColor.new("Really black")
top4.Size = Vector3.new(20, 1, 40)
top4.CFrame = CFrame.new(0, 419.9, -30)

top5 = makebrick(model)
top5.Name = "Top5"
top5.BrickColor = BrickColor.new("Really black")
top5.Size = Vector3.new(50, 1, 100)
top5.CFrame = CFrame.new(-25, 419.9 + 19, 0)

top6 = makebrick(model)
top6.Name = "Top6"
top6.BrickColor = BrickColor.new("Really black")
top6.Size = Vector3.new(50, 1, 100)
top6.CFrame = CFrame.new(25, 419.9 + 19, 0)

window1 = makebrick(model)
window1.Name = "Windows"
window1.BrickColor = BrickColor.new("Institutional white")
window1.Size = Vector3.new(43, 18, 1)
window1.CFrame = CFrame.new(27.5, 410.4, 49.5)

window2 = makebrick(model)
window2.Name = "Windows"
window2.BrickColor = BrickColor.new("Institutional white")
window2.Size = Vector3.new(98, 18, 1)
window2.CFrame = CFrame.new(0, 410.4, -49.5)

window3 = makebrick(model)
window3.Name = "Windows"
window3.BrickColor = BrickColor.new("Institutional white")
window3.Size = Vector3.new(1, 18, 98)
window3.CFrame = CFrame.new(49.5, 410.4, 0)

window4 = makebrick(model)
window4.Name = "Windows"
window4.BrickColor = BrickColor.new("Institutional white")
window4.Size = Vector3.new(1, 18, 98)
window4.CFrame = CFrame.new(-49.5, 410.4, 0)

window5 = makebrick(model)
window5.Name = "Windows"
window5.BrickColor = BrickColor.new("Institutional white")
window5.Size = Vector3.new(10, 6, 1)
window5.CFrame = CFrame.new(0, 416.4, 49.5)

window6 = makebrick(model)
window6.Name = "Windows"
window6.BrickColor = BrickColor.new("Institutional white")
window6.Size = Vector3.new(43, 18, 1)
window6.CFrame = CFrame.new(-27.5, 410.4, 49.5)

window7 = makebrick(model)
window7.Name = "Windows"
window7.BrickColor = BrickColor.new("Institutional white")
window7.Size = Vector3.new(1, 18, 98)
window7.CFrame = CFrame.new(49.5, 410.4 + 19, 0)

window8 = makebrick(model)
window8.Name = "Windows"
window8.BrickColor = BrickColor.new("Institutional white")
window8.Size = Vector3.new(1, 18, 98)
window8.CFrame = CFrame.new(-49.5, 410.4 + 19, 0)

window9 = makebrick(model)
window9.Name = "Windows"
window9.BrickColor = BrickColor.new("Institutional white")
window9.Size = Vector3.new(98, 18, 1)
window9.CFrame = CFrame.new(0, 410.4 + 19, 49.5)

window10 = makebrick(model)
window10.Name = "Windows"
window10.BrickColor = BrickColor.new("Institutional white")
window10.Size = Vector3.new(98, 18, 1)
window10.CFrame = CFrame.new(0, 410.4 + 19, -49.5)

si1 = makebrick(model)
si1.BrickColor = BrickColor.new("Really black")
si1.Size = Vector3.new(1, 18, 1)
si1.CFrame = CFrame.new(5.5, 410.4, 49.5)

si2 = makebrick(model)
si2.BrickColor = BrickColor.new("Really black")
si2.Size = Vector3.new(1, 18, 1)
si2.CFrame = CFrame.new(-49.5, 410.4, -49.5)

si3 = makebrick(model)
si3.BrickColor = BrickColor.new("Really black")
si3.Size = Vector3.new(1, 18, 1)
si3.CFrame = CFrame.new(49.5, 410.4, -49.5)

si4 = makebrick(model)
si4.BrickColor = BrickColor.new("Really black")
si4.Size = Vector3.new(1, 18, 1)
si4.CFrame = CFrame.new(49.5, 410.4, 49.5)

si5 = makebrick(model)
si5.BrickColor = BrickColor.new("Really black")
si5.Size = Vector3.new(10, 1, 1)
si5.CFrame = CFrame.new(0, 412.9, 49.5)

si6 = makebrick(model)
si6.BrickColor = BrickColor.new("Really black")
si6.Size = Vector3.new(1, 18, 1)
si6.CFrame = CFrame.new(-49.5, 410.4, 49.5)

si7 = makebrick(model)
si7.BrickColor = BrickColor.new("Really black")
si7.Size = Vector3.new(1, 18, 1)
si7.CFrame = CFrame.new(-5.5, 410.4, 49.5)

si8 = makebrick(model)
si8.BrickColor = BrickColor.new("Really black")
si8.Size = Vector3.new(1, 18, 1)
si8.CFrame = CFrame.new(49.5, 410.4 + 19, -49.5)

si9 = makebrick(model)
si9.BrickColor = BrickColor.new("Really black")
si9.Size = Vector3.new(1, 18, 1)
si9.CFrame = CFrame.new(49.5, 410.4 + 19, 49.5)

si10 = makebrick(model)
si10.BrickColor = BrickColor.new("Really black")
si10.Size = Vector3.new(1, 18, 1)
si10.CFrame = CFrame.new(-49.5, 410.4 + 19, 49.5)

si11 = makebrick(model)
si11.BrickColor = BrickColor.new("Really black")
si11.Size = Vector3.new(1, 18, 1)
si11.CFrame = CFrame.new(-49.5, 410.4 + 19, -49.5)

script.Parent = model
house2 = model 
dooropen = false
eleing = false
hatch = false
bet, hot = "/", "close"
hclose = true
top = false
etouch = true
objects = house2:GetChildren() 
function findp(name) 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if string.lower(string.sub(v.Name,1,#name))==string.lower(name) then
return v 
end 
end 
end 

function onChatted(msg, speaker)
for i,v in pairs(adminlist) do
if speaker.Name == v then

if string.lower(msg) == "opendoor/" then
if dooropen == false then
local c = door.CFrame
for i = 1, 11 do
c = c * CFrame.new(0, 0.5, 0)
door.Size = door.Size - Vector3.new(0, 1, 0)
door.CFrame = c
wait()
end 

c = deck1.CFrame
c2 = deck2.CFrame
c3 = deck3.CFrame
for i = 1, 50 do
c = c * CFrame.new(0, 0, 0.5)
c2 = c2 * CFrame.new(-0.5, 0, 0)
c3 = c3 * CFrame.new(0.5, 0, 0)
deck1.Size = deck1.Size - Vector3.new(0, 0, -1)
deck2.Size = deck2.Size - Vector3.new(-1, 0, 0)
deck3.Size = deck3.Size - Vector3.new(-1, 0, 0)
deck1.CFrame = c
deck2.CFrame = c2
deck3.CFrame = c3
wait()
end 
for i = 1, 102 do
deck1.Size = deck1.Size + Vector3.new(1, 0, 0)
deck1.CFrame = c
wait()
end 
dooropen = true
end 

elseif(string.lower(msg) == "touchon/") then
etouch = true

elseif(string.lower(msg) == "touchoff/") then
etouch = false

elseif(string.sub(string.lower(msg), 1, 3) == "in/") then
local a = findp(string.sub(string.lower(msg), 4))
if a ~= nil then
if a.Character:findFirstChild("Torso") ~= nil then
a.Character.Torso.CFrame = script.Parent.Bottom.CFrame + Vector3.new(0, 3.5, 0)
end 
elseif(string.sub(string.lower(msg), 4) == "all") then
for i,a in pairs(game.Players:GetPlayers()) do
if a.Character:findFirstChild("Torso") ~= nil then
a.Character.Torso.CFrame = script.Parent.Bottom.CFrame + Vector3.new(0, 3.5, 0)
end 
end 
end 

elseif(string.sub(string.lower(msg), 1, 4) == "out/") then
local a = findp(string.sub(string.lower(msg), 5))
if a ~= nil then
if a.Character:findFirstChild("Torso") ~= nil then
a.Character.Torso.CFrame = script.Parent.Bottom.CFrame - Vector3.new(0, 5, 0)
end 
end 

elseif(string.lower(msg) == "elevator/") then
if eleing == false then
eleing = true
local c = e.CFrame
for i = 1, 180 do
c = c * CFrame.new(0, 0.1, 0)
e.CFrame = c
wait(0.1)
end 
e.BrickColor = BrickColor.new("Bright blue")
wait(4)
e.BrickColor = BrickColor.new("Institutional white")
local c = e.CFrame
for i = 1, 180 do
c = c * CFrame.new(0, -0.1, 0)
e.CFrame = c
wait()
end 
eleing = false
end 

elseif(string.lower(msg) == "remove/") then
model:remove()

elseif(string.lower(msg) == "lift/") then
if eleing == false then
eleing = true
local c = e.CFrame
for i = 1, 180 do
c = c * CFrame.new(0, 0.1, 0)
e.CFrame = c
wait(0.1)
end 
e.BrickColor = BrickColor.new("Bright blue")
wait(4)
e.BrickColor = BrickColor.new("Institutional white")
local c = e.CFrame
for i = 1, 180 do
c = c * CFrame.new(0, -0.1, 0)
e.CFrame = c
wait()
end 
eleing = false
end 

elseif(string.lower(msg) == "closedoor/") then
if dooropen == true then
local c = door.CFrame
for i = 1, 11 do
c = c * CFrame.new(0, -0.5, 0)
door.Size = door.Size + Vector3.new(0, 1, 0)
door.CFrame = c
wait()
end 

local c = deck1.CFrame
c2 = deck2.CFrame
c3 = deck3.CFrame

for i = 1, 102 do
deck1.Size = deck1.Size - Vector3.new(1, 0, 0)
deck1.CFrame = c
wait()
end 

for i = 1, 50 do
c = c * CFrame.new(0, 0, -0.5)
c2 = c2 * CFrame.new(0.5, 0, 0)
c3 = c3 * CFrame.new(-0.5, 0, 0)
deck1.Size = deck1.Size - Vector3.new(0, 0, 1)
deck2.Size = deck2.Size - Vector3.new(1, 0, 0)
deck3.Size = deck3.Size - Vector3.new(1, 0, 0)
deck1.CFrame = c
deck2.CFrame = c2
deck3.CFrame = c3
wait()
end 
dooropen = false
end 

elseif string.sub(string.lower(msg),1,5) == "hatch" then 
local word = string.sub(string.lower(msg),6) 
if word == "open/" then 
if hclose == true then
hclose = false
hot = "opening" 
local p1,p2 = h3.CFrame,h4.CFrame 
for i=1, 100 do 
h3.Size = h3.Size - Vector3.new(0.1,0,0) 
h4.Size = h4.Size - Vector3.new(0.1,0,0) 
h3.CFrame = p1 
h4.CFrame = p2 
p1,p2 = p1 * CFrame.new(-0.05,0,0),p2 * CFrame.new(0.05,0,0) 
wait() 
end 
end 
hot = "open" 
elseif word == "close/" then 
if hclose == false then
hclose = true
hot = "closing" 
local p1,p2 = h3.CFrame,h4.CFrame 
for i=1, 100 do 
h3.Size = h3.Size - Vector3.new(-0.1,0,0) 
h4.Size = h4.Size - Vector3.new(-0.1,0,0) 
h3.CFrame = p1 
h4.CFrame = p2 
p1,p2 = p1 * CFrame.new(0.05,0,0),p2 * CFrame.new(-0.05,0,0) 
wait() 
end 
hot = "close" 
end 
end 

elseif(string.sub(string.lower(msg), 1, 4) == "roof") then
local word = string.sub(string.lower(msg),5) 
if word == "open/" then 
if hatch == false then
hatch = true
local p1,p2 = h1.CFrame,h2.CFrame 
for i=1, 100 do 
h1.Size = h1.Size - Vector3.new(0.1,0,0) 
h2.Size = h2.Size - Vector3.new(0.1,0,0) 
h1.CFrame = p1 
h2.CFrame = p2 
p1,p2 = p1 * CFrame.new(-0.05,0,0),p2 * CFrame.new(0.05,0,0) 
wait() 
end 
end 
elseif word == "close/" then 
if hatch == true then
hatch = false
local p1,p2 = h1.CFrame,h2.CFrame 
for i=1, 100 do 
h1.Size = h1.Size - Vector3.new(-0.1,0,0) 
h2.Size = h2.Size - Vector3.new(-0.1,0,0) 
h1.CFrame = p1 
h2.CFrame = p2 
p1,p2 = p1 * CFrame.new(0.05,0,0),p2 * CFrame.new(-0.05,0,0) 
wait() 
end 
end
end 

elseif(string.sub(string.lower(msg), 1, 3) == "top") then
local word = string.sub(string.lower(msg),4) 
if word == "open/" then 
if top == false then
top = true
local p1,p2 = top5.CFrame,top6.CFrame 
for i=1, 500 do 
top5.Size = top5.Size - Vector3.new(0.1,0,0) 
top6.Size = top6.Size - Vector3.new(0.1,0,0) 
top5.CFrame = p1 
top6.CFrame = p2 
p1,p2 = p1 * CFrame.new(-0.05,0,0),p2 * CFrame.new(0.05,0,0) 
wait() 
end 
end 

elseif word == "close/" then 
if top == true then
top = false
local p1,p2 = top5.CFrame,top6.CFrame 
for i=1, 500 do 
top5.Size = top5.Size - Vector3.new(-0.1,0,0) 
top6.Size = top6.Size - Vector3.new(-0.1,0,0) 
top5.CFrame = p1 
top6.CFrame = p2 
p1,p2 = p1 * CFrame.new(0.05,0,0),p2 * CFrame.new(-0.05,0,0) 
wait() 
end 
end
end 

elseif(string.lower(msg) == "windows/") then
for i = 1, 7 do
for i,v in pairs(script.Parent:GetChildren()) do
if v.Name == "Windows" then
v.Transparency = v.Transparency + 0.1
end 
end 
wait()
end 

elseif(string.lower(msg) == "walls/") then
for i = 1, 7 do
for i,v in pairs(script.Parent:GetChildren()) do
if v.Name == "Windows" then
v.Transparency = v.Transparency - 0.1
end 
end 
wait()
end 


end 
end 
end 
end 

game.Players.PlayerAdded:connect(function(p)
p.Chatted:connect(function(msg) onChatted(msg, p) end)
end)

for i,v in pairs(game.Players:GetPlayers()) do
v.Chatted:connect(function(msg) onChatted(msg, v) end)
end


e.Touched:connect(function()
if etouch == true then
if eleing == false then
eleing = true
local c = e.CFrame
for i = 1, 180 do
c = c * CFrame.new(0, 0.1, 0)
e.CFrame = c
wait(0.1)
end 
e.BrickColor = BrickColor.new("Bright blue")
wait(4)
e.BrickColor = BrickColor.new("Institutional white")
local c = e.CFrame
for i = 1, 180 do
c = c * CFrame.new(0, -0.1, 0)
e.CFrame = c
wait()
end 
eleing = false
end 
end 
end)

game.DescendantRemoving:connect(function()
house2.Parent = workspace 
for s=1, #objects do 
objects[s].Parent = house2 
end 
end) 

