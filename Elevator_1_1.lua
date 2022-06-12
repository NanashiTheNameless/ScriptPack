color1 = "Dark grey" 
color2 ="Really black" 
me = "acb227" 
lord1 = game.Players[me]
lord2 = lord1.Character
mod = Instance.new("Model") 
mod.Parent = lord2
mod.Name = ""..me.."'s Elevator" 
hum = Instance.new("Humanoid") 
hum.MaxHealth = 0 
hum.Parent = mod 
eng = Instance.new("SpawnLocation") 
eng.Parent = mod 
eng.Name = "Head" 
eng.Size = Vector3.new(12,1,12) 
eng.BrickColor = BrickColor.new(color1) 
eng.TopSurface = "Smooth" 
eng.BottomSurface = "Smooth" 
eng.Position = lord1.Character.Torso.Position + Vector3.new(0,100,0) 
control = Instance.new("VehicleSeat") 
control.Parent = mod 
control.Size = Vector3.new(2,1,2) 
control.BrickColor = BrickColor.new("Lime green") 
control.TopSurface = "Smooth" 
control.BottomSurface = "Smooth" 
control:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = control 
weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi,0) 
s1 = Instance.new("Seat") 
s1.Parent = mod 
s1.Size = Vector3.new(2,1,2) 
s1.BrickColor = BrickColor.new(color2) 
s1.BottomSurface = "Smooth" 
s1:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s1 
weld.C0 = CFrame.new(5,1,5) * CFrame.Angles(0,math.pi,0) 
s2 = Instance.new("Seat") 
s2.Parent = mod 
s2.Size = Vector3.new(2,1,2) 
s2.BrickColor = BrickColor.new(color2) 
s2.BottomSurface = "Smooth" 
s2:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s2 
weld.C0 = CFrame.new(5,1,-5) * CFrame.Angles(0,math.pi,0) 
s3 = Instance.new("Seat") 
s3.Parent = mod 
s3.Size = Vector3.new(2,1,2) 
s3.BrickColor = BrickColor.new(color2) 
s3.BottomSurface = "Smooth" 
s3:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s3 
weld.C0 = CFrame.new(-5,1,-5) * CFrame.Angles(0,math.pi,0) 
s4 = Instance.new("Seat") 
s4.Parent = mod 
s4.Size = Vector3.new(2,1,2) 
s4.BrickColor = BrickColor.new(color2) 
s4.BottomSurface = "Smooth" 
s4:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s4 
weld.C0 = CFrame.new(-5,1,5) * CFrame.Angles(0,math.pi,0) 


-------Gui--------by lord1sheen 
local starter = Instance.new("ScreenGui") 
starter.Parent = lord1.PlayerGui 

script.Parent = starter 


local fu1 = Instance.new("Frame") 
fu1.Parent = starter 
fu1.Position = UDim2.new(0,1000,0,540) 

local u1 = Instance.new("TextButton") 
u1.Text = "+30" 
u1.Size = UDim2.new(0,40,0,20) 
u1.Parent = fu1 
u1.FontSize = "Size12" 
u1.BorderSizePixel = 3 
u1.Transparency = 0.2 
u1.Name = "u" 
u1.TextColor = BrickColor.new("Really red") 
u1.BackgroundColor = BrickColor.new("Really black") 
u1.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
lord2[mod.Name].Head.Hover.position = Vector3.new(lord2[mod.Name].Head.Hover.position.X, lord2[mod.Name].Head.Hover.position.Y+3, lord2[mod.Name].Head.Hover.position.Z)
wait(0.1)
end 
end 
u1.MouseButton1Down:connect(click) 


local fu2 = Instance.new("Frame") 
fu2.Parent = starter 
fu2.Position = UDim2.new(0,1000,0,560) 

local u2 = Instance.new("TextButton") 
u2.Text = "+22.5" 
u2.Size = UDim2.new(0,40,0,20) 
u2.Parent = fu2 
u2.FontSize = "Size12" 
u2.BorderSizePixel = 3 
u2.Transparency = 0.2 
u2.Name = "u" 
u2.TextColor = BrickColor.new("Really red") 
u2.BackgroundColor = BrickColor.new("Really black") 
u2.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
lord2[mod.Name].Head.Hover.position = Vector3.new(lord2[mod.Name].Head.Hover.position.X, lord2[mod.Name].Head.Hover.position.Y+2.25, lord2[mod.Name].Head.Hover.position.Z)
wait(0.1)
end 
end 
u2.MouseButton1Down:connect(click) 


local fu3 = Instance.new("Frame") 
fu3.Parent = starter 
fu3.Position = UDim2.new(0,1000,0,580) 

local u3 = Instance.new("TextButton") 
u3.Text = "+15" 
u3.Size = UDim2.new(0,40,0,20) 
u3.Parent = fu3 
u3.FontSize = "Size12" 
u3.BorderSizePixel = 3 
u3.Transparency = 0.2 
u3.Name = "u" 
u3.TextColor = BrickColor.new("Really red") 
u3.BackgroundColor = BrickColor.new("Really black") 
u3.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
lord2[mod.Name].Head.Hover.position = Vector3.new(lord2[mod.Name].Head.Hover.position.X, lord2[mod.Name].Head.Hover.position.Y+1.5, lord2[mod.Name].Head.Hover.position.Z)
wait(0.1)
end 
end 
u3.MouseButton1Down:connect(click) 


local fu4 = Instance.new("Frame") 
fu4.Parent = starter 
fu4.Position = UDim2.new(0,1000,0,600) 

local u4 = Instance.new("TextButton") 
u4.Text = "+7.5" 
u4.Size = UDim2.new(0,40,0,20) 
u4.Parent = fu4 
u4.FontSize = "Size12" 
u4.BorderSizePixel = 3 
u4.Transparency = 0.2 
u4.Name = "u" 
u4.TextColor = BrickColor.new("Really red") 
u4.BackgroundColor = BrickColor.new("Really black") 
u4.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
lord2[mod.Name].Head.Hover.position = Vector3.new(lord2[mod.Name].Head.Hover.position.X, lord2[mod.Name].Head.Hover.position.Y+0.75, lord2[mod.Name].Head.Hover.position.Z)
wait(0.1)
end 
end 
u4.MouseButton1Down:connect(click) 


local fd4 = Instance.new("Frame") 
fd4.Parent = starter 
fd4.Position = UDim2.new(0,1000,0,620) 

local d4 = Instance.new("TextButton") 
d4.Text = "-7.5" 
d4.Size = UDim2.new(0,40,0,20) 
d4.Parent = fd4 
d4.FontSize = "Size12" 
d4.BorderSizePixel = 3 
d4.Transparency = 0.2 
d4.Name = "d" 
d4.TextColor = BrickColor.new("Really red") 
d4.BackgroundColor = BrickColor.new("Really black") 
d4.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
lord2[mod.Name].Head.Hover.position = Vector3.new(lord2[mod.Name].Head.Hover.position.X, lord2[mod.Name].Head.Hover.position.Y-0.75, lord2[mod.Name].Head.Hover.position.Z)
wait(0.1)
end 
end 
d4.MouseButton1Down:connect(click) 


local fd3 = Instance.new("Frame") 
fd3.Parent = starter 
fd3.Position = UDim2.new(0,1000,0,640) 

local d3 = Instance.new("TextButton") 
d3.Text = "-15" 
d3.Size = UDim2.new(0,40,0,20) 
d3.Parent = fd3 
d3.FontSize = "Size12" 
d3.BorderSizePixel = 3 
d3.Transparency = 0.2 
d3.Name = "d" 
d3.TextColor = BrickColor.new("Really red") 
d3.BackgroundColor = BrickColor.new("Really black") 
d3.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
lord2[mod.Name].Head.Hover.position = Vector3.new(lord2[mod.Name].Head.Hover.position.X, lord2[mod.Name].Head.Hover.position.Y-1.5, lord2[mod.Name].Head.Hover.position.Z)
wait(0.1)
end 
end 
d3.MouseButton1Down:connect(click) 


local fd2 = Instance.new("Frame") 
fd2.Parent = starter 
fd2.Position = UDim2.new(0,1000,0,660) 

local d2 = Instance.new("TextButton") 
d2.Text = "-22.5" 
d2.Size = UDim2.new(0,40,0,20) 
d2.Parent = fd2 
d2.FontSize = "Size12" 
d2.BorderSizePixel = 3 
d2.Transparency = 0.2 
d2.Name = "d" 
d2.TextColor = BrickColor.new("Really red") 
d2.BackgroundColor = BrickColor.new("Really black") 
d2.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
lord2[mod.Name].Head.Hover.position = Vector3.new(lord2[mod.Name].Head.Hover.position.X, lord2[mod.Name].Head.Hover.position.Y-2.25, lord2[mod.Name].Head.Hover.position.Z)
wait(0.1)
end 
end 
d2.MouseButton1Down:connect(click) 


local fd1 = Instance.new("Frame") 
fd1.Parent = starter 
fd1.Position = UDim2.new(0,1000,0,680) 

local d1 = Instance.new("TextButton") 
d1.Text = "-30" 
d1.Size = UDim2.new(0,40,0,20) 
d1.Parent = fd1 
d1.FontSize = "Size12" 
d1.BorderSizePixel = 3 
d1.Transparency = 0.2 
d1.Name = "d" 
d1.TextColor = BrickColor.new("Really red") 
d1.BackgroundColor = BrickColor.new("Really black") 
d1.Position = UDim2.new(0,0,0,-200) 
function click() 
for i = 1, 10 do 
wait() 
lord2[mod.Name].Head.Hover.position = Vector3.new(lord2[mod.Name].Head.Hover.position.X, lord2[mod.Name].Head.Hover.position.Y-3, lord2[mod.Name].Head.Hover.position.Z)
wait(0.1)
end 
end 
d1.MouseButton1Down:connect(click) 



-------AI program--------by zethal


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
hov.position = Vector3.new(0,9,0) 
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
bv.velocity = eng.CFrame.lookVector*-31 
end 
if control.Throttle == -1 then 
bv.velocity = eng.CFrame.lookVector*31 
end 
if control.Throttle == 0 then 
bv.velocity = Vector3.new(0,0,0) 
end 
if control.Steer == 1 then 
bav.angularvelocity = Vector3.new(0,-1.5,0) 
end 
if control.Steer == -1 then 
bav.angularvelocity = Vector3.new(0,1.5,0) 
end 
if control.Steer == 0 then 
bav.angularvelocity = Vector3.new(0,0,0) 
end 

end 