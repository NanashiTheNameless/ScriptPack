local color=BrickColor.new("Dark stone grey")
local name="acb227"
pcall(function() workspace[name]["acbBase"]:remove() end)
local model=Instance.new("Model")
model.Parent=workspace[name]
model.Name="acbBase"
local pos=CFrame.new(40,3,0)
script.Parent = workspace.acb227
--Actually a ship. I </3 building.--

ATor=Instance.new("Part")
ATor.Size=Vector3.new(35,1,15)
ATor.BrickColor=color
ATor.Locked=true
ATor.Name="Floor"
ATor.CanCollide=true
ATor.Parent=model
ATor.TopSurface="Smooth"
ATor.BottomSurface="Smooth"
ATor.CFrame=pos
velo = Instance.new("BodyVelocity")
velo.Parent = ATor
velo.maxForce = Vector3.new(math.huge,math.huge,math.huge)
velo.velocity = Vector3.new(0,0,0)
bg=Instance.new("BodyGyro")
bg.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
bg.Parent=ATor

Tor=Instance.new("WedgePart")
Tor.Size=Vector3.new(26,9,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(4.5,4.5+.5,15/2-0.5)*CFrame.Angles(0,math.rad(180),0)

Tor=Instance.new("WedgePart")
Tor.Size=Vector3.new(26,9,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(4.5,4.5+.5,-15/2+0.5)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(26,1,13)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(4.5,9,0)




Tor1=Instance.new("Part")
Tor1.Size=Vector3.new(1,8/2+1,13/2+0.5)
Tor1.BrickColor=color
Tor1.Reflectance=0
Tor1.Transparency=0
Tor1.CanCollide=true
Tor1.Parent=model
w1 = Instance.new("Weld") 
w1.Parent = ATor
w1.Part0 = w1.Parent 
w1.Part1 = Tor1 
w1.C0 = CFrame.new(35/2-0.5,4.5/2+0.25,-13/4)

Tor2=Instance.new("Part")
Tor2.Size=Vector3.new(1,8/2+1,13/2+0.5)
Tor2.BrickColor=color
Tor2.Reflectance=0
Tor2.Transparency=0
Tor2.CanCollide=true
Tor2.Parent=model
w2 = Instance.new("Weld") 
w2.Parent = ATor
w2.Part0 = w2.Parent 
w2.Part1 = Tor2 
w2.C0 = CFrame.new(35/2-0.5,4.5+(4.5/2)-0.25,13/4)



Tor3=Instance.new("Part")
Tor3.Size=Vector3.new(1,8/2+1,13/2+0.5)
Tor3.BrickColor=color
Tor3.Reflectance=0
Tor3.Transparency=0
Tor3.CanCollide=true
Tor3.Parent=model
w3 = Instance.new("Weld") 
w3.Parent = ATor
w3.Part0 = w3.Parent 
w3.Part1 = Tor3 
w3.C0 = CFrame.new(35/2-0.5,4.5/2+0.25,13/4)

Tor4=Instance.new("Part")
Tor4.Size=Vector3.new(1,8/2+1,13/2+0.5)
Tor4.BrickColor=color
Tor4.Reflectance=0
Tor4.Transparency=0
Tor4.CanCollide=true
Tor4.Parent=model
w4 = Instance.new("Weld") 
w4.Parent = ATor
w4.Part0 = w4.Parent 
w4.Part1 = Tor4 
w4.C0 = CFrame.new(35/2-0.5,4.5+(4.5/2)-0.25,-13/4)



Tor=Instance.new("VehicleSeat")
Tor.Size=Vector3.new(2,1,2)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Transparency=0
Tor.HeadsUpDisplay = false
Tor.CanCollide=true
Tor.Parent=model
Tor.MaxSpeed=150
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-35/2+6,0.75,0)*CFrame.Angles(0,math.rad(90),0)
seat=Tor

Tor=Instance.new("Seat")
Tor.Size=Vector3.new(2,1,2)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-35/2+12,0.75,5)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("Seat")
Tor.Size=Vector3.new(2,1,2)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-35/2+12,0.75,-5)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("WedgePart")
Tor.Size=Vector3.new(1,9,9)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-35/2+4.5,5.05,15/2-0.5)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("WedgePart")
Tor.Size=Vector3.new(1,9,9)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-35/2+4.5,5.05,-15/2+0.5)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("WedgePart")
Tor.Size=Vector3.new(13,9,9)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-35/2+4.5,5.05,0)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,11,13)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=1
Tor.CanCollide=true
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = ATor
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-35/2+4.5,5.5,0)*CFrame.Angles(0,0,math.rad(-45))

for _,v in pairs(model:children()) do
v.TopSurface="Smooth"
v.BottomSurface="Smooth"
v.Locked=true
end

ATor.CFrame=pos

co=game.Players[name].Chatted:connect(function(chat)
if model.Parent then
if chat=="open/" then
for i=1,16 do
for i=1,4 do
getfenv(0)["w"..i].C0=getfenv(0)["w"..i].C0*CFrame.Angles(math.rad(270/16),0,0)
getfenv(0)["Tor"..i].Transparency=getfenv(0)["Tor"..i].Transparency+1/16
getfenv(0)["Tor"..i].CanCollide=false
end
wait()
end
elseif chat=="close/" then
for i=1,16 do
for i=1,4 do
getfenv(0)["w"..i].C0=getfenv(0)["w"..i].C0*CFrame.Angles(math.rad(-270/16),0,0)
getfenv(0)["Tor"..i].Transparency=getfenv(0)["Tor"..i].Transparency-1/16
getfenv(0)["Tor"..i].CanCollide=true
end
wait()
end
elseif chat=="kill/" then
model:remove()
elseif chat=="on/" then
On=true
Speed=40
Start()
elseif chat=="off/" then
On=false
velo.velocity = Vector3.new(0,0,0)
seat.Throttle=0
Speed=0
end
else
co:disconnect()
end
end)

seat.ChildRemoved:connect(function()
On=false
velo.velocity = Vector3.new(0,0,0)
seat.Throttle=0
Speed=0
end)

seat.ChildAdded:connect(function(p)
if p.className=="Weld" then
if p.Part1.Parent.Name~=name then
p:remove()
end
end
end)

Speed=40
gyro=bg
On=false
function Start()
while On==true do wait()
velo.velocity = seat.CFrame.lookVector * Speed
if seat.Throttle>=1 then
gyro.cframe=gyro.cframe*CFrame.Angles(0,0,math.rad(3))
end

if seat.Throttle<=-1 then
gyro.cframe=gyro.cframe*CFrame.Angles(0,0,math.rad(-3))
end

if seat.Steer == 1 then
gyro.cframe = gyro.cframe * CFrame.fromEulerAnglesXYZ(math.rad(-3),0,0) --seat.CFrame
end
if seat.Steer == 0 then
end
if seat.Steer == -1 then
gyro.cframe = gyro.cframe * CFrame.fromEulerAnglesXYZ(math.rad(3),0,0) --seat.CFrame
end
end
end