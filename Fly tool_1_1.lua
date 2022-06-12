t = Instance.new("HopperBin") 
t.Parent = Game.Players.acb227.Backpack 
t.Name = "Fly"
-----------------------------------------------
script.Parent = t 

local power = 10
wait() 
bin = script.Parent 
bpos = Instance.new("BodyPosition") 
gyro = Instance.new("BodyGyro") 
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bpos.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
fly = false 
player = game.Players.LocalPlayer 
char = player.Character.Torso 
airborne = false 

function onButton1Down(mouse) 
fly = true 
while fly do 
pos = mouse.Hit.p 
--gyro.cframe = CFrame.new(char.Position,pos) 
bpos.position = char.Position + (pos-char.Position).unit * power 
wait() 
end 
end 

function onMove(mouse) 
pos = mouse.Hit.p 
gyro.cframe = CFrame.new(char.Position,pos) * CFrame.fromEulerAnglesXYZ(-3.14/2+1.2,0,0) 
--bpos.position = char.Position + 
--wait() 
--end 
end 

function onButton1Up(mouse) 
fly = false 
end 

function onSelected(mouse) 
print("select") 
if mouse == nil then 
return 
end 
airborne = true 
bpos.Parent = char 
bpos.position = char.Position + Vector3.new(0,10,0) 
gyro.Parent = char 
char.Parent.Humanoid.Sit = false 
mouse.Icon = "rbxasset://textures\\ArrowCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.Move:connect(function() onMove(mouse) end) 

for i, v in ipairs(char:GetChildren()) do 
if v.className == "Motor" then 
v.MaxVelocity = 0 
v.CurrentAngle = -1 
if v.Name == "Left Hip" then 
v.CurrentAngle = 1 
end 
end 
end 
end 

function onDeselected(mouse) 
print("deselect") 
gyro.Parent = nil 
fly = false 
airborne = false 
for i, v in ipairs(char:GetChildren()) do 
if v.className == "Motor" then 
v.MaxVelocity = 1 
end 
end 
char.Parent.Humanoid.Sit = false 
for i = 1, 30 do 
if not airborne then 
bpos.position = bpos.position - Vector3.new(0,0.3,0) 
wait(0.1) 
end 
end 
if not airborne then 
bpos.Parent = nil 
end 
end 


bin.Selected:connect(onSelected) 
bin.Deselected:connect(onDeselected)