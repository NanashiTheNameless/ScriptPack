color1 = "Dark grey" 
color2 ="Really black" 
zeta = game.Players.yfc 
zeta2 = Workspace.yfc 
mod = Instance.new("Model") 
mod.Parent = zeta2
mod.Name = "Yfc-Mobile" 
hum = Instance.new("Humanoid") 
hum.MaxHealth = 0 
hum.Parent = mod 
eng = Instance.new("Part") 
eng.Parent = mod 
eng.Name = "Head" 
eng.Size = Vector3.new(10,2,30) 
eng.BrickColor = BrickColor.new(color1) 
eng.TopSurface = "Smooth" 
eng.BottomSurface = "Smooth" 
eng.Position = zeta.Character.Torso.Position + Vector3.new(0,100,0) 
control = Instance.new("VehicleSeat") 
control.Parent = mod 
control.Size = Vector3.new(3,1,3) 
control.BrickColor = BrickColor.new("Lime green") 
control.TopSurface = "Smooth" 
control.BottomSurface = "Smooth" 
control:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = control 
weld.C0 = CFrame.new(0,1,9) * CFrame.Angles(0,math.pi,0) 
s1 = Instance.new("Seat") 
s1.Parent = mod 
s1.Size = Vector3.new(3,1,3) 
s1.BrickColor = BrickColor.new(color2) 
s1.BottomSurface = "Smooth" 
s1:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s1 
weld.C0 = CFrame.new(0,1,2) * CFrame.Angles(0,math.pi,0) 
s2 = Instance.new("Seat") 
s2.Parent = mod 
s2.Size = Vector3.new(3,1,3) 
s2.BrickColor = BrickColor.new(color2) 
s2.BottomSurface = "Smooth" 
s2:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s2 
weld.C0 = CFrame.new(0,1,-4) * CFrame.Angles(0,math.pi,0) 
s3 = Instance.new("Seat") 
s3.Parent = mod 
s3.Size = Vector3.new(3,1,3) 
s3.BrickColor = BrickColor.new(color2) 
s3.BottomSurface = "Smooth" 
s3:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s3 
weld.C0 = CFrame.new(0,1,-10) * CFrame.Angles(0,math.pi,0) 


-------Gui-------- 
local starter = Instance.new("ScreenGui") 
starter.Parent = zeta.PlayerGui 

script.Parent = starter 


local FrameUP = Instance.new("Frame") 
FrameUP.Parent = starter 
FrameUP.Position = UDim2.new(0,1000,0,600) 

local pcontUP = Instance.new("TextButton") 
pcontUP.Text = "Up" 
pcontUP.Size = UDim2.new(0,80,0,40) 
pcontUP.Parent = FrameUP 
pcontUP.FontSize = "Size12" 
pcontUP.BorderSizePixel = 3 
pcontUP.Transparency = 0.2 
pcontUP.Name = "GoingUp" 
pcontUP.TextColor = BrickColor.new("Really red") 
pcontUP.BackgroundColor = BrickColor.new("Really black") 
pcontUP.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
zeta2 .Elevator.Head.Hover.position = Vector3.new(zeta2 .Elevator.Head.Hover.position.X, zeta2.Elevator.Head.Hover.position.Y+0.75, zeta2 .Elevator.Head.Hover.position.Z)
wait(0.1)
end 
end 
pcontUP.MouseButton1Down:connect(click) 


local FrameDown = Instance.new("Frame") 
FrameDown.Parent = starter 
FrameDown.Position = UDim2.new(0,1000,0,640) 

local pcontDown = Instance.new("TextButton") 
pcontDown.Text = "Down" 
pcontDown.Size = UDim2.new(0,80,0,40) 
pcontDown.Parent = FrameDown 
pcontDown.FontSize = "Size12" 
pcontDown.BorderSizePixel = 3 
pcontDown.Transparency = 0.2 
pcontDown.Name = "GoingDown" 
pcontDown.TextColor = BrickColor.new("Really red") 
pcontDown.BackgroundColor = BrickColor.new("Really black") 
pcontDown.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
zeta2 .Elevator.Head.Hover.position = Vector3.new(zeta2 .Elevator.Head.Hover.position.X, zeta2.Elevator.Head.Hover.position.Y-0.75, zeta2 .Elevator.Head.Hover.position.Z)
wait(0.1)
end 
end 
pcontDown.MouseButton1Down:connect(click) 



-------AI program-------- 


---Driving Systems--- 
bv = Instance.new("BodyVelocity") 
bv.Parent = eng 
bv.maxForce = Vector3.new(math.huge,0,math.huge) 
bv.velocity = Vector3.new(0,-5,0) 
bav = Instance.new("BodyAngularVelocity") 
bav.Parent = eng 
bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bav.angularvelocity = Vector3.new(0,0,0) 
hov = Instance.new("BodyPosition") 
hov.Name = "Hover" 
hov.Parent = eng 
hov.maxForce = Vector3.new(0,math.huge,0) 
hov.position = Vector3.new(0,5,0) 
bg = Instance.new("BodyGyro") 
bg.Parent = eng 
bg.maxTorque = Vector3.new(math.huge,0,math.huge) 
bg.P = 3e+003 
bg.D = 500 
parts = mod:GetChildren() 
for i = 1, #parts do 
if parts[i].className == "Part" or parts[i].className == "WedgePart" then 
parts[i].Locked = true 
end 
end 


while true do 
wait(0) 
if control.Throttle == 1 then 
bv.velocity = eng.CFrame.lookVector*-101 
end 
if control.Throttle == -1 then 
bv.velocity = eng.CFrame.lookVector*101 
end 
if control.Throttle == 0 then 
bv.velocity = Vector3.new(0,0,0) 
end 
if control.Steer == 1 then 
bav.angularvelocity = Vector3.new(0,-5,0) 
end 
if control.Steer == -1 then 
bav.angularvelocity = Vector3.new(0,5,0) 
end 
if control.Steer == 0 then 
bav.angularvelocity = Vector3.new(0,0,0) 
end 

end 