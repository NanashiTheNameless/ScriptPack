m = Instance.new("HopperBin") 
m.Parent = game.Players.acb227.Backpack 
m.Name = "Controller" 
script.Parent = m 
Plyr = script.Parent.Parent.Parent 
Dist = -8 
Lock = true 
ss = false 


function B1D(mouse) 
fink = true 
brick = mouse.Target 
if brick ~= nil then 
if sel == true then 
human = mouse.Target.Parent:FindFirstChild("Humanoid") 
if brick.Locked == false and brick.Anchored == false or human ~= nil or brick.Name == "Handle" or Lock == false then 
if human == nil then 
brick:BreakJoints() 
end 
if Lock == false then 
brick.Anchored = false 
brick:BreakJoints() 
end 
b = Instance.new("SelectionPartLasso") 
b.Parent = Workspace 
b.Humanoid = Plyr.Character.Humanoid 
b.Part = brick 
b.Color = BrickColor.new(41) 
p = Instance.new("BodyPosition") 
p.Parent = brick 
p.position = Vector3.new(0,0,0) 
p.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
Drag(brick,mouse,p) 
end 
end 
end 
end 

function KeyD(me) 
if me == "v" then 
ss = false 
end 
if me == "b" then 
ss = true 
end 
if me == "u" then 
Time = game:service("Lighting") 

while true do 
wait(0.01) 
Time:SetMinutesAfterMidnight(Time:GetMinutesAfterMidnight()+0.1) 
end 
end 
if me == "n" and ss == false then 
m = Instance.new("Hint") 
m.Text = "OKIE DOKIE!" 
wait(3) 
a = brick.Parent.Name 
ss = game.Players:FindFirstChild(a) 
ss:remove() 
m:remove() 
end 
if me == "l" then 
wait(5) 
m = Instance.new("Part") 
m.Parent = game.Workspace 
m.Position = Vector3.new (-10, 1.6, -2) 
m.Size = Vector3.new (3,3,3) 
m.Name = "Brick" 
wait(1) 
m.Size = Vector3.new (5,5,5) 
wait(1) 
m.Size = Vector3.new (7,7,7) 
wait(1) 
m.Size = Vector3.new (9,9,9) 
wait(1) 
m.Size = Vector3.new (7,7,7) 
wait(1) 
m.Size = Vector3.new (5,5,5) 
wait(1) 
m.Size = Vector3.new (3,3,3) 
wait(0.1) 
b = Instance.new("Explosion") 
b.Parent = game.Workspace 
b.Position = Vector3.new (1, 5.8, 0.5) 
b.BlastPressure = 5000000 
b.BlastRadius = 10000 
wait(2) 
b:remove() 
end 
if me == "f" then 
dd = Instance.new("Part") 
dd.Parent = game.workspace 
end 
if me == "t" then 
e = Instance.new("Explosion") 
e.Parent = game.Workspace 
e.Position = brick.Position 
end 
if me == "r" then 
brick:BreakJoints() 
end 
if me == "z" and ss == false then 
brick.Size = brick.Size + Vector3.new(0,0,1) 
end 
if me == "y" and ss == false then 
brick.Size = brick.Size + Vector3.new(0,1,0) 
end 
if me == "x" and ss == false then 
brick.Size = brick.Size + Vector3.new(1,0,0) 
end 
if me == "z" and ss == true then 
brick.Size = brick.Size + Vector3.new(0,0,-1) 
end 
if me == "y" and ss == true then 
brick.Size = brick.Size + Vector3.new(0,-1,0) 
end 
if me == "x" and ss == true then 
brick.Size = brick.Size + Vector3.new(-1,0,0) 
end 
if me == "h" then 
ee = Instance.new("Seat") 
ee.Parent = game.workspace 
end 
if me == "g" then 
local M = Instance.new("ScreenGui") 
M.Parent = game.Players.acb227.PlayerGui 
local K = Instance.new("Frame") 
K.Parent = M 
K.Position = UDim2.new(0,5,0,200) 
K.Size = UDim2.new(0,250,0,70) 
local d = Instance.new("TextLabel") 
d.Parent = M 
d.Position = UDim2.new(0,5,0,200) 
d.Size = UDim2.new(0,250,0,10) 
d.BackgroundTransparency = 1 
d.Text = "Name:  ".. mouse.Target.Name 
local f = Instance.new("TextLabel")
f.Parent = M 
f.Position = UDim2.new(0,5,0,210) 
f.Size = UDim2.new(0,250,0,10) 
f.BackgroundTransparency = 1 
f.Text = "Parent:  ".. mouse.Target.Parent.Name 
local j = Instance.new("TextLabel") 
j.Parent = M 
j.Position = UDim2.new(0,5,0,220) 
j.Size = UDim2.new(0,250,0,10) 
j.BackgroundTransparency = 1 
j.Text = "Classname:  ".. mouse.Target.className
local b = Instance.new("TextLabel")
b.Parent = M 
b.Position = UDim2.new(0,5,0,230) 
b.Size = UDim2.new(0,250,0,10) 
b.BackgroundTransparency = 1 
b.Text = "Reflectance:  ".. mouse.Target.Reflectance 
local v = Instance.new("TextLabel")
v.Parent = M 
v.Position = UDim2.new(0,5,0,240) 
v.Size = UDim2.new(0,250,0,10) 
v.BackgroundTransparency = 1 
v.Text = "Transparency:  ".. mouse.Target.Transparency 
local h = Instance.new("TextLabel")
h.Parent = M 
h.Position = UDim2.new(0,5,0,250) 
h.Size = UDim2.new(0,50,0,10) 
h.BackgroundTransparency = 1 
h.Text = "Position:  "  
x = math.ceil(mouse.Target.Position.X) 
y = math.ceil(mouse.Target.Position.Y) 
z = math.ceil(mouse.Target.Position.Z) 
local kl = Instance.new("TextLabel")
kl.Parent = M 
kl.Position = UDim2.new(0,125,0,250) 
kl.Size = UDim2.new(0,0,0,10) 
kl.BackgroundTransparency = 1 
kl.Text = "X:  " ..x.. "  Y:  " ..y.. "  Z:  "..z 
x1 = math.ceil(mouse.Target.Size.X) 
y1 = math.ceil(mouse.Target.Size.Y) 
z1 = math.ceil(mouse.Target.Size.Z) 
local a = Instance.new("TextLabel")
a.Parent = M 
a.Position = UDim2.new(0,125,0,260) 
a.Size = UDim2.new(0,0,0,10) 
a.BackgroundTransparency = 1 
a.Text = "X:  " ..x1.. "  Y:  " ..y1.. "  Z:  "..z1 
local t = Instance.new("TextLabel")
t.Parent = M 
t.Position = UDim2.new(0,5,0,260) 
t.Size = UDim2.new(0,40,0,10) 
t.BackgroundTransparency = 1 
t.Text = "Size:  "  
wait(15)
b:remove()
v:remove()
K:remove()
d:remove()
f:remove()
j:remove()
h:remove()
kl:remove()
a:remove()
t:remove()
end 
if me == "q" then 
NDist = Dist + 9 
Dist = NDist 
elseif me == "e" then 
NDist = Dist - 9 
Dist = NDist 
elseif me == "p" then 
New = not Lock 
Lock = New 
i = Instance.new("Message") 
i.Parent = Plyr 
i.Text = ""..tostring(Lock).."" 
wait(1) 
i:remove() 
end 
end 

function Drag(brick,mouse,p) 
while fink == true do 
wait() 
lookAt = CFrame.new(Plyr.Character.Torso.Position, mouse.Hit.p) 
NlookAt = lookAt*CFrame.new(0, 0, Dist)--8 studs forward 
p.position = NlookAt.p 
p.position = NlookAt.p 
p.position = NlookAt.p 
end 
end 

function B1D(mouse) 
fink = true 
brick = mouse.Target 
if brick ~= nil then 
if sel == true then 
human = mouse.Target.Parent:FindFirstChild("Humanoid") 
if brick.Locked == false and brick.Anchored == false or human ~= nil or brick.Name == "Handle" or Lock == false then 
if human == nil then 
brick:BreakJoints() 
end 
if Lock == false then 
brick.Anchored = false 
brick:BreakJoints() 
end 
b = Instance.new("SelectionPartLasso") 
b.Parent = Workspace 
b.Humanoid = Plyr.Character.Humanoid 
b.Part = brick 
b.Color = BrickColor.new(math.random(100,244)) 
p = Instance.new("BodyPosition") 
p.Parent = brick 
p.position = Vector3.new(0,0,0) 
p.maxForce = Vector3.new(99999999999999999999,9999999999999999999999,99999999999999999999999999) 
Drag(brick,mouse,p) 
end 
end 
end 
end 

function B1Up(mouse) 

if p ~= nil then 
p:remove() 
end 
fink = false 
if b ~= nil then 
b:remove() 
end 
end 

function onEquippedLocal(mouse) 
fink = false 
sel = true 
if mouse == nil then 
print("BLaargh!!!") 
return 
end 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() B1D(mouse) end) 
mouse.Button1Up:connect(function() B1Up(mouse) end) 
mouse.KeyDown:connect(KeyD) 
end 

function unsel(mouse) 
sel = false 
end 


script.Parent.Selected:connect(onEquippedLocal) 
script.Parent.Deselected:connect(unsel) 
while true do 
wait(1) 
end 
