pname = "yfc" 
ver = 1.3
where = -200
Admin = game.Players[pname]
local m = Instance.new("Model") 
m.Name = pname.. "'s House" 
m.Parent = game.Workspace 
local h = Instance.new("Hint")
h.Parent = Admin
h.Text = "Derp, ver. " ..ver

local ba = Instance.new("Part") 
ba.Name = "HouseBase" 
ba.Parent = m 
ba.formFactor = "Symmetric" 
ba.Size = Vector3.new(50, 1, 50) 
ba.Anchored = true 
ba.CFrame = CFrame.new(60 + where, game.Workspace.Base.Size.y + 0.5, 150) 
ba.BrickColor = BrickColor.new("Really black") 
ba.Locked = true 
ba.TopSurface = ("Weld")

m = Instance.new("BillboardGui") 
m.Parent = Game.Workspace 
m.Adornee = ba
m.Size = UDim2.new(0,300,0,500) 
bg = Instance.new("TextLabel") 
bg.Size = UDim2.new(0,300,0,30) 
bg.Position = UDim2.new(0,0,0,-16) 
bg.Text = "This jail was created by Derp corp." 
bg.Parent = m 
bg.BackgroundColor = BrickColor.new(216) 

local r = Instance.new("Part") 
r.Name = "HouseRoof" 
r.Parent = m 
r.formFactor = "Symmetric" 
r.Size = Vector3.new(50, 1, 50) 
r.Anchored = true 
r.CFrame = CFrame.new(60 + where, game.Workspace.Base.Size.y + 26.5, 150) 
r.BrickColor = BrickColor.new("Really black") 
r.Locked = true 
r.BottomSurface = ("Smooth")
r.TopSurface = ("Smooth")

w1 = Instance.new("Part") 
w1.Name = "HouseWall1" 
w1.Parent = m 
w1.formFactor = "Symmetric" 
w1.Size = Vector3.new(50, 25, 1) 
w1.Anchored = true 
w1.CFrame = CFrame.new(60 + where, game.Workspace.Base.Size.y + 13.5, 174.5) 
w1.BrickColor = BrickColor.new("Really black") 
w1.Locked = true 

w2 = Instance.new("Part") 
w2.Name = "HouseWall2" 
w2.Parent = m 
w2.formFactor = "Symmetric" 
w2.Size = Vector3.new(1, 25, 48) 
w2.Anchored = true 
w2.CFrame = CFrame.new(84.5 + where, game.Workspace.Base.Size.y + 13.5, 150) 
w2.BrickColor = BrickColor.new("Really black") 
w2.Locked = true 

w3 = Instance.new("Part") 
w3.Name = "HouseWall3" 
w3.Parent = m 
w3.formFactor = "Symmetric" 
w3.Size = Vector3.new(1, 25, 48) 
w3.Anchored = true 
w3.CFrame = CFrame.new(35.5 + where, game.Workspace.Base.Size.y + 13.5, 150) 
w3.BrickColor = BrickColor.new("Really black") 
w3.Locked = true 

w4 = Instance.new("Part") 
w4.Name = "HouseWall4" 
w4.Parent = m 
w4.formFactor = "Symmetric" 
w4.Size = Vector3.new(19, 25, 1) 
w4.Anchored = true 
w4.CFrame = CFrame.new(44.5 + where, game.Workspace.Base.Size.y + 13.5, 125.5) 
w4.BrickColor = BrickColor.new("Really black") 
w4.Locked = true 

w5 = Instance.new("Part") 
w5.Name = "HouseWall5" 
w5.Parent = m 
w5.formFactor = "Symmetric" 
w5.Size = Vector3.new(19, 25, 1) 
w5.Anchored = true 
w5.CFrame = CFrame.new(75.5 + where, game.Workspace.Base.Size.y + 13.5, 125.5) 
w5.BrickColor = BrickColor.new("Really black") 
w5.Locked = true 

d1 = Instance.new("Part") 
d1.Name = "HouseDoor1" 
d1.Parent = m 
d1.formFactor = "Symmetric" 
d1.Size = Vector3.new(12, 10, 1) 
d1.Anchored = true 
d1.CFrame = CFrame.new(60 + where, game.Workspace.Base.Size.y + 6, 125.5) 
d1.BrickColor = BrickColor.new("Institutional white") 
d1.Locked = true 

d2 = Instance.new("Part") 
d2.Name = "HouseDoor2" 
d2.Parent = m 
d2.formFactor = "Symmetric" 
d2.Size = Vector3.new(12, 15, 1) 
d2.Anchored = true 
d2.CFrame = CFrame.new(60 + where, game.Workspace.Base.Size.y + 18.5, 125.5) 
d2.BrickColor = BrickColor.new("Really black") 
d2.Locked = true 

local b = Instance.new("TextButton") 
b.Name = "Key" 
b.Text = "open/close door" 
b.BackgroundColor = BrickColor.new("Really black") 
b.TextColor = BrickColor.new("Really red") 
b.Size = UDim2.new(0, 100, 0, 20) 
b.Position = UDim2.new(0, 500, 0, -20) 
b.BackgroundTransparency = 0 
b.BorderSizePixel = 0 
b.TextWrap = true 
b.ZIndex = 1 
local s = Instance.new("ScreenGui") 
s.Parent = game.Players[pname].PlayerGui 
s.Name = "JarodGui" 
b.Parent = s 
local v = Instance.new("NumberValue") 
v.Parent = d1 
v.Value = 0 

function click() 

if v.Value == 0 then 
for i = 1, 10 do
d1.Transparency = d1.Transparency + .1
wait(.05)
end
d1.CanCollide = false 
v.Value = 1 
h.Text = "door opened..."
wait(1)
h.Text = "Derp, ver. " ..ver
else 
for i = 1, 10 do
d1.Transparency = d1.Transparency - .1
wait(.05)
end
d1.CanCollide = true 
v.Value = 0 
h.Text = "door closed..."
wait(1)
h.Text = "Derp, ver. " ..ver
end 
end 

b.MouseButton1Down:connect(click)

local c = Instance.new("TextButton") 
c.Name = "Key" 
c.Text = "open/close windows" 
c.BackgroundColor = BrickColor.new("Really black") 
c.TextColor = BrickColor.new("Really red") 
c.Size = UDim2.new(0, 100, 0, 20) 
c.Position = UDim2.new(0, 600, 0, -20) 
c.BackgroundTransparency = 0 
c.BorderSizePixel = 0 
c.TextWrap = true 
c.ZIndex = 1 
local t = Instance.new("ScreenGui") 
t.Parent = game.Players[pname].PlayerGui 
t.Name = "JarodGui" 
c.Parent = t 
local w = Instance.new("NumberValue") 
w.Parent = di
w.Value = 0 

function click() 
if w.Value == 0 then
for i = 1, 7 do
w1.Transparency = w1.Transparency + .1 
w2.Transparency = w2.Transparency + .1
w3.Transparency = w3.Transparency + .1 
w4.Transparency = w4.Transparency + .1
w5.Transparency = w5.Transparency + .1
d2.Transparency = d2.Transparency + .1
r.Transparency = r.Transparency + .1
wait(.05)
end
w.Value = 1
h.Text = "windows opened..."
wait(1)
h.Text = "Jail created by Davillion and DoogleFox, ver. " ..ver
else
for i = 1, 7 do
w1.Transparency = w1.Transparency - .1 
w2.Transparency = w2.Transparency - .1
w3.Transparency = w3.Transparency - .1 
w4.Transparency = w4.Transparency - .1
w5.Transparency = w5.Transparency - .1
d2.Transparency = d2.Transparency - .1
r.Transparency = r.Transparency - .1
wait(.05)
end
h.Text = "windows closed..."
wait(1)
h.Text = "Derp, ver. " ..ver
w.Value = 0
end
end 

c.MouseButton1Down:connect(click)

local e = Instance.new("TextButton") 
e.Name = "Key" 
e.Text = "tele to jail" 
e.BackgroundColor = BrickColor.new("Really black") 
e.TextColor = BrickColor.new("Really red") 
e.Size = UDim2.new(0, 100, 0, 20) 
e.Position = UDim2.new(0, 700, 0, -20) 
e.BackgroundTransparency = 0 
e.BorderSizePixel = 0 
e.TextWrap = true 
e.ZIndex = 1 
local v = Instance.new("ScreenGui") 
v.Parent = game.Players[pname].PlayerGui 
v.Name = "JarodGui" 
e.Parent = v

function click() 
Admin.Character.Torso.CFrame = ba.CFrame + Vector3.new(0,4,0) 
h.Text = "teleportation completed..."
wait(1)
h.Text = "Derp, ver. " ..ver
end 

e.MouseButton1Down:connect(click)

hc = m:clone()  

function Chat(msg) 

if msg == "breakjail" then 
w1.Anchored = false 
w2.Anchored = false 
w3.Anchored = false 
w4.Anchored = false 
w5.Anchored = false 
d2.Anchored = false 
d1.Anchored = false 
r.Anchored = false 
wait(0.01) 
m:BreakJoints() 
end 

if msg == "fixjail" then 
w1.Anchored = true 
w2.Anchored = true 
w3.Anchored = true 
w4.Anchored = true 
w5.Anchored = true 
d2.Anchored = true 
d1.Anchored = true 
r.Anchored = true 
ba.Anchored = true 
wait(0.01) 
w1.CFrame = hc.HouseWall1.CFrame 
w2.CFrame = hc.HouseWall2.CFrame 
w3.CFrame = hc.HouseWall3.CFrame 
w4.CFrame = hc.HouseWall4.CFrame 
w5.CFrame = hc.HouseWall5.CFrame 
d1.CFrame = hc.HouseDoor1.CFrame 
d2.CFrame = hc.HouseDoor2.CFrame 
ba.CFrame = hc.HouseBase.CFrame 
r.CFrame = hc.HouseRoof.CFrame 
wait(0.01) 
m:MakeJoints() 
end 

if msg == "openjail" then 
w1.Anchored = true 
w2.Anchored = true 
w3.Anchored = true 
w4.Anchored = true 
w5.Anchored = true 
d2.Anchored = true 
d1.Anchored = true 
r.Anchored = true 
ba.Anchored = true 
wait(0.01) 
w1.Position = m.HouseWall1.Position + Vector3.new(0,0,25) 
w2.Position = m.HouseWall2.Position + Vector3.new(25,0,0) 
w3.Position = m.HouseWall3.Position + Vector3.new(-25,0,0) 
w4.Position = m.HouseWall4.Position + Vector3.new(0,0,-25) 
w5.Position = m.HouseWall5.Position + Vector3.new(0,0,-25) 
d1.Position = m.HouseDoor1.Position +Vector3.new(0,0,-25) 
d2.Position = m.HouseDoor2.Position +Vector3.new(0,0,-25) 
r.Position = m.HouseRoof.Position +Vector3.new(0,25,0) 
wait(0.01) 
m:MakeJoints() 
end 

if msg == "closejail" then 
w1.Anchored = true 
w2.Anchored = true 
w3.Anchored = true 
w4.Anchored = true 
w5.Anchored = true 
d2.Anchored = true 
d1.Anchored = true 
r.Anchored = true 
ba.Anchored = true 
wait(0.01) 
w1.Position = m.HouseWall1.Position + Vector3.new(0,0,25) 
w2.Position = m.HouseWall2.Position + Vector3.new(25,0,0) 
w3.Position = m.HouseWall3.Position + Vector3.new(25,0,0) 
w4.Position = m.HouseWall4.Position + Vector3.new(0,0,25) 
w5.Position = m.HouseWall5.Position + Vector3.new(0,0,25) 
d1.Position = m.HouseDoor1.Position +Vector3.new(0,0,25) 
d2.Position = m.HouseDoor2.Position +Vector3.new(0,0,25) 
r.Position = m.HouseRoof.Position +Vector3.new(0,-25,0) 
wait(0.01) 
m:MakeJoints() 
end 

if msg == "remove" then
m:Remove()
b:Remove()
c:Remove()
h:Remove()
e:Remove()
ba:Remove()
script:Remove()
end

if msg == "reset" then
Admin.Character:BreakJoints()
end

if string.sub(msg, 1, 5) == "jail/" then 
name = string.sub(msg, 6) 
local M = Instance.new("Message")
M.Parent = Admin
M.Text = "jailed " ..name.. "..."
if game.Players:findFirstChild(name) ~= nil then 
player = game.Players[name] 
if player.Character:findFirstChild("Torso") ~= nil then 
player.Character.Torso.CFrame = ba.CFrame + Vector3.new(0, 7, 0) 
end 
end 
wait(3)
M:Remove()
end

if string.sub(msg, 1, 5) == "free/" then 
name = string.sub(msg, 6) 
local M = Instance.new("Message")
M.Parent = Admin
M.Text = "released " ..name.. "..."
if game.Players:findFirstChild(name) ~= nil then 
player = game.Players[name] 
if player.Character:findFirstChild("Torso") ~= nil then 
player.Character.Torso.CFrame = ba.CFrame + Vector3.new(0, 7, -30) 
end 
end 
wait(3)
M:Remove()
end
end 

Admin.Chatted:connect(Chat) 