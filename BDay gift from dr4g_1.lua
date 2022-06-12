immune = {"Dr4gOnh4ck3r2", "Fenrier", "Zewl", "xSoulStealerx"} 

boom = false 
start = false 
time = 10 
over = 0 
incr = 1 
decr = 1 

local mm = Instance.new("Model") 
mm.Parent = workspace 
mm.Name = "BlackBomb" 

local m = Instance.new("Model") 
m.Parent = mm 
m.Name = "-Black Bomb- "..time.." -Black Bomb-" 

local x = Instance.new("Part") 
x.Parent = m 
x.Name = "Explosive" 
x.BrickColor = BrickColor.new("Really black") 
x.Size = Vector3.new(1,1,1) 
x.CanCollide = false 
x.Anchored = true 
x.CFrame = workspace.Base.CFrame + Vector3.new(0,1.4,0) 
x.TopSurface = "Smooth" 
x.BottomSurface = "Smooth" 

local c = Instance.new("SpecialMesh") 
c.Parent = x 
c.MeshType = "Sphere" 
c.Scale = Vector3.new(1,1,1) 

local x22 = Instance.new("Humanoid") 
x22.Parent = m 
x22.Name = "Humanoid" 
x22.MaxHealth = 0 


local x2 = Instance.new("Part") 
x2.Parent = m 
x2.Name = "Head" 
x2.BrickColor = BrickColor.new("Really black") 
x2.Size = Vector3.new(2,2,2) 
x2.CanCollide = true 
x2.Anchored = true 
x2.CFrame = workspace.Base.CFrame + Vector3.new(0,1.4,0) 
x2.TopSurface = "Smooth" 
x2.BottomSurface = "Smooth" 

local x3 = Instance.new("Part") 
x3.Parent = m 
x3.Name = "Start" 
x3.BrickColor = BrickColor.new("Bright violet") 
x3.Size = Vector3.new(1,0,1) 
x3.FormFactor = "Plate" 
x3.CanCollide = true 
x3.Anchored = true 
x3.CFrame = workspace.Base.CFrame + Vector3.new(-0.45,2,0.45) 
x3.TopSurface = "Smooth" 
x3.BottomSurface = "Smooth" 


local c = Instance.new("ClickDetector") 
c.Parent = x3 
c.MaxActivationDistance = 1000 

local x4 = Instance.new("Part") 
x4.Parent = m 
x4.Name = "Stop" 
x4.BrickColor = BrickColor.new("Bright red") 
x4.Size = Vector3.new(1,0,1) 
x4.FormFactor = "Plate" 
x4.CanCollide = true 
x4.Anchored = true 
x4.CFrame = workspace.Base.CFrame + Vector3.new(0.45,2,0.45) 
x4.TopSurface = "Smooth" 
x4.BottomSurface = "Smooth" 


local x44 = Instance.new("Part") 
x44.Parent = m 
x44.Name = "Stop" 
x44.BrickColor = BrickColor.new("Bright orange") 
x44.Size = Vector3.new(1,0,1) 
x44.FormFactor = "Plate" 
x44.CanCollide = true 
x44.Anchored = true 
x44.CFrame = workspace.Base.CFrame + Vector3.new(0.45,2,-0.45) 
x44.TopSurface = "Smooth" 
x44.BottomSurface = "Smooth" 

local x33 = Instance.new("Part") 
x33.Parent = m 
x33.Name = "Start" 
x33.BrickColor = BrickColor.new("Bright green") 
x33.Size = Vector3.new(1,0,1) 
x33.FormFactor = "Plate" 
x33.CanCollide = true 
x33.Anchored = true 
x33.CFrame = workspace.Base.CFrame + Vector3.new(-0.45,2,-0.45) 
x33.TopSurface = "Smooth" 
x33.BottomSurface = "Smooth" 


local c = Instance.new("ClickDetector") 
c.Parent = x33 
c.MaxActivationDistance = 1000 

local c = Instance.new("ClickDetector") 
c.Parent = x4 
c.MaxActivationDistance = 1000 

local c = Instance.new("ClickDetector") 
c.Parent = x44 
c.MaxActivationDistance = 1000 

function explode(part) 
for i = 1 , 100 do 
wait() 
x.Reflectance = x.Reflectance + 0.01 
end 
wait(0) 
x.Reflectance = 0 
cDir=Vector3.new(math.random(-1,1)/2,math.random(-1,1)/2,math.random(-1,1)/2) 
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=2101159") 
for ubervolume=1, 5 do 
s=Instance.new("Sound") 
s.SoundId="http://www.roblox.com/asset/?id=2101159" 
s.Pitch=2 
s.Name="Kaboom" 
s.Volume=1 
s.Parent=x 
s:Play() 
end 
wait(0.1) 
for ubervolume=1, 5 do 
s=Instance.new("Sound") 
s.SoundId="http://www.roblox.com/asset/?id=2101159" 
s.Pitch=2 
s.Name="Kaboom" 
s.Volume=1 
s.Parent=x 
s:Play() 
end 
wait(0.1) 
for ubervolume=1, 5 do 
s=Instance.new("Sound") 
s.SoundId="http://www.roblox.com/asset/?id=2101159" 
s.Pitch=2 
s.Name="Kaboom" 
s.Volume=1 
s.Parent=x 
s:Play() 
end 
wait(0.1) 
for ubervolume=1, 5 do 
s=Instance.new("Sound") 
s.SoundId="http://www.roblox.com/asset/?id=2101159" 
s.Pitch=2 
s.Name="Kaboom" 
s.Volume=1 
s.Parent=x 
s:Play() 
end 
c=x.CFrame 
onTouched=function(v) 
if v.Parent==nil then 
return 
end 
if v.Anchored==false then 
wait() 
v.Velocity=(((v.Position-x.Position).unit*100+Vector3.new(math.random(-2,2),0,math.random(-2,2)))) 
v.RotVelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)) 
r=Instance.new("BodyAngularVelocity") 
r.P=1000 
r.maxTorque=Vector3.new(50000,50000,50000)*500 
r.angularvelocity=v.RotVelocity 
r.Parent=v 
game:GetService("Debris"):AddItem(r,.5) 
if v.Parent:FindFirstChild("Humanoid")~=nil and v.Parent.Name ~= immune[1] and v.Parent.Name ~= immune[2] and v.Parent.Name ~= immune[3] then 
--v.Parent.Humanoid.PlatformStand = true 
v.Parent.Torso:Remove() 
v.Parent.Head:Remove() 
v.Parent["Right Leg"]:Remove() 
v.Parent["Right Arm"]:Remove() 
v.Parent["Left Leg"]:Remove() 
v.Parent["Left Arm"]:Remove() 
end 
end 
end 
con=x.Touched:connect(onTouched) 
p=Instance.new("Part") 
p.TopSurface=0 
p.BottomSurface=0 
p.Reflectance=.2 
p.formFactor="Symmetric" 
p.BrickColor=BrickColor.new("Teal") 
p.Size=Vector3.new(1,1,1) 
p.Anchored=true 
p.CanCollide=false 
v=Instance.new("BodyPosition") 
v.P=3000 
v.maxForce=Vector3.new(50000,50000,50000)*50000 
v.position=CFrame.new(x.Position).p 
v.Parent=p 
p.Name="Blast" 
p.CFrame=CFrame.new(x.Position)*CFrame.fromEulerAnglesXYZ(math.random(-20,20)/20,math.random(-10,10)/20,math.random(-20,20)/20) 
p.Parent=workspace 
p.Transparency=1 
p.CanCollide=false 
m=Instance.new("BlockMesh") 
m.Scale=Vector3.new(1,0,1) 
m.Parent=p 
game:GetService("Debris"):AddItem(p,5) 

d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Top" 
d.Parent=p 
d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Top" 
d.Parent=p 
orp=p.CFrame 
coroutine.resume(coroutine.create(function(p,orp) 
for i=1, 20 do 
p.Size=p.Size+Vector3.new(7,7,7) 
p.CFrame=orp 
wait() 
end 
p.Parent=nil 
end),p,p.CFrame) 

p=Instance.new("Part") 
p.TopSurface=0 
p.BottomSurface=0 
p.Reflectance=.2 
p.formFactor="Symmetric" 
p.BrickColor=BrickColor.new("Teal") 
p.Size=Vector3.new(1,1,1) 
p.Anchored=true 
p.CanCollide=false 
v=Instance.new("BodyPosition") 
v.P=3000 
v.maxForce=Vector3.new(50000,50000,50000)*50000 
v.position=CFrame.new(x.Position).p 
v.Parent=p 
p.Name="Blast" 
p.CFrame=CFrame.new(x.Position)*CFrame.fromEulerAnglesXYZ(math.random(-20,20)/20,math.random(-10,10)/20,math.random(-20,20)/20) 
p.Parent=workspace 
p.Transparency=1 
p.CanCollide=false 
m=Instance.new("BlockMesh") 
m.Scale=Vector3.new(1,0,1) 
m.Parent=p 
game:GetService("Debris"):AddItem(p,5) 

d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Top" 
d.Parent=p 
d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Top" 
d.Parent=p 
orp=p.CFrame 
coroutine.resume(coroutine.create(function(p,orp) 
for i=1, 15 do 
p.Size=p.Size+Vector3.new(9,9,9) 
p.CFrame=orp 
wait() 
end 
p.Parent=nil 
end),p,p.CFrame) 

p=Instance.new("Part") 
p.TopSurface=0 
p.BottomSurface=0 
p.Reflectance=.2 
p.formFactor="Symmetric" 
p.BrickColor=BrickColor.new("Teal") 
p.Size=Vector3.new(1,1,1) 
p.Anchored=true 
p.CanCollide=false 
v=Instance.new("BodyPosition") 
v.P=3000 
v.maxForce=Vector3.new(50000,50000,50000)*50000 
v.position=CFrame.new(x.Position).p 
v.Parent=p 
p.Name="Blast" 
p.CFrame=CFrame.new(x.Position)*CFrame.fromEulerAnglesXYZ(math.random(-20,20)/20,math.random(-10,10)/20,math.random(-20,20)/20) 
p.Parent=workspace 
p.Transparency=1 
p.CanCollide=false 
m=Instance.new("BlockMesh") 
m.Scale=Vector3.new(1,0,1) 
m.Parent=p 
game:GetService("Debris"):AddItem(p,5) 

d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Top" 
d.Parent=p 
d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Top" 
d.Parent=p 
orp=p.CFrame 
coroutine.resume(coroutine.create(function(p,orp) 
for i=1, 15 do 
p.Size=p.Size+Vector3.new(10,10,10) 
p.CFrame=orp 
wait() 
end 
p.Parent=nil 
end),p,p.CFrame) 
for i=1, 10 do 
wait() 
x.Transparency=i/20 
ccDir=cDir*i 
x.Size=x.Size+Vector3.new(5,5,5) 
x.CFrame=c*CFrame.fromEulerAnglesXYZ(ccDir.x,ccDir.y,ccDir.z)*CFrame.new(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) 
end 
for i=1, 10 do 
wait() 
x.Transparency=i/20+.25 
ccDir=cDir*i 
x.Size=x.Size+Vector3.new(5,5,5) 
x.CFrame=c*CFrame.fromEulerAnglesXYZ(ccDir.x,ccDir.y,ccDir.z)*CFrame.new(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) 
end 
for i=1, 10 do 
wait() 
x.Transparency=i/20+.50 
ccDir=cDir*i 
x.Size=x.Size+Vector3.new(4,4,4) 
x.CFrame=c*CFrame.fromEulerAnglesXYZ(ccDir.x,ccDir.y,ccDir.z)*CFrame.new(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) 
end 
for i=1, 10 do 
wait() 
x.Transparency=i/20+.75 
ccDir=cDir*i 
x.Size=x.Size+Vector3.new(3,3,3) 
x.CFrame=c*CFrame.fromEulerAnglesXYZ(ccDir.x,ccDir.y,ccDir.z)*CFrame.new(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) 
end 
for i=1, 10 do 
wait() 
x.Transparency=i/20+.325 
ccDir=cDir*i 
x.Size=x.Size+Vector3.new(2,2,2) 
x.CFrame=c*CFrame.fromEulerAnglesXYZ(ccDir.x,ccDir.y,ccDir.z)*CFrame.new(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) 
end 
for i=1, 10 do 
wait() 
x.Transparency=i/20+.325 
ccDir=cDir*i 
x.Size=x.Size+Vector3.new(1,1,1) 
x.CFrame=c*CFrame.fromEulerAnglesXYZ(ccDir.x,ccDir.y,ccDir.z)*CFrame.new(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) 
end 
for i=1, 5 do 
wait() 
x.CFrame=c*CFrame.fromEulerAnglesXYZ(ccDir.x,ccDir.y,ccDir.z)*CFrame.new(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) 
end 
wait(0.2) 
mm:Remove() 
end 


function onClicked() 
start = true 
end 
x3.ClickDetector.MouseClick:connect(onClicked) 

function onClicked() 
start = false 
end 
x4.ClickDetector.MouseClick:connect(onClicked) 


function onClicked() 
if boom == false then 
time = time -1 
m.Name = "-Black Bomb- "..time.." -Black Bomb-" 
end 
end 
x44.ClickDetector.MouseClick:connect(onClicked) 


function onClicked() 
if boom == false then 
time = time +1 
m.Name = "-Black Bomb- "..time.." -Black Bomb-" 
end 
end 
x33.ClickDetector.MouseClick:connect(onClicked) 

while true do 
wait(1) 
if start == true then 
time = time - 1 
m.Name = "-Black Bomb- "..time.." -Black Bomb-" 
if time <= 1 and boom == false then 
explode(x) 
boom = true 
end 
end 
end 