--jarredbcv's hovercraft made in 30 min
lp=game.Players.LocalPlayer
pl=lp.Character
rotsped=124
psped=20
speed=0
turn=0
rot=0
heat=0
function w()
if pl.Humanoid.Sit==false then return end
bre=true
move:play()
idle:stop()
rotsped=20
psped=1
speed=80
end
function a()
lop=false
if pl.Humanoid.Sit==false then return end
coroutine.wrap(function()
while wait() do
if lop==true then break end
turn=turn+3
end end)()
for i=1,5 do wait()
rweld1.C1 = rweld1.C1*CFrame.Angles(0,-i/20,0)
rweld1.C1 = rweld1.C1+Vector3.new(.03,0,0)
rweld2.C1 = rweld2.C1*CFrame.Angles(0,-i/20,0)
rweld2.C1 = rweld2.C1+Vector3.new(.03,0,0)
end
end
function d()
if pl.Humanoid.Sit==false then return end
lop=false
coroutine.wrap(function()
while wait() do
if lop==true then break end
turn=turn-3
end end)()
for i=1,5 do wait()
rweld1.C1 = rweld1.C1*CFrame.Angles(0,i/20,0)
rweld1.C1 = rweld1.C1+Vector3.new(.03,0,0)
rweld2.C1 = rweld2.C1*CFrame.Angles(0,i/20,0)
rweld2.C1 = rweld2.C1+Vector3.new(.03,0,0)
end
end
function uw()
if pl.Humanoid.Sit==false then return end
bre=false
rotsped=124
psped=20
for i=1,80 do wait()
if bre==true then break end
speed=speed-1
end
move:stop()
idle:play()
end
function ua()
lop=true
if pl.Humanoid.Sit==false then return end
for i=1,5 do wait()
rweld1.C1 = rweld1.C1*CFrame.Angles(0,i/20,0)
rweld1.C1 = rweld1.C1-Vector3.new(.03,0,0)
rweld2.C1 = rweld2.C1*CFrame.Angles(0,i/20,0)
rweld2.C1 = rweld2.C1-Vector3.new(.03,0,0)
end
end
function ud()
if pl.Humanoid.Sit==false then return end
lop=true
for i=1,5 do wait()
rweld1.C1 = rweld1.C1*CFrame.Angles(0,-i/20,0)
rweld1.C1 = rweld1.C1-Vector3.new(.03,0,0)
rweld2.C1 = rweld2.C1*CFrame.Angles(0,-i/20,0)
rweld2.C1 = rweld2.C1-Vector3.new(.03,0,0)
end
end
function fix()
print'Returned'
if pl.Humanoid.Sit==false then se.Disabled=true se.Disabled=false end
rotsped=124
psped=20
speed=0
turn=0
rweld1.C1 = CFrame.new(-5.2,2.5,1)
rweld2.C1 = CFrame.new(-5.2,2.5,-1)
MAIN.CFrame=CFrame.new(-20,2,-40)
end
function f()
sb=false
if pl.Humanoid.Sit==false then return end
row:play()
for i=1,10 do wait(.1) rot=rot+1*i end
while wait(.1) do if sb==true then break end 
if heat>=1 then break end
shot:play()
heat=heat+.01
x= Part(.1,.1,1.5,'Bright yellow',0,true,false,workspace,0,0,0) x:BreakJoints()
y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge,math.huge,math.huge)
y.velocity = ya.CFrame.lookVector *200   
y.Parent = x
x.CFrame = ya.CFrame * CFrame.new(math.random(-.75,.75),math.random(-.75,.75),-1)
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid:TakeDamage(math.random(3,7))
end end x.Touched:connect(touch)
game.Debris:AddItem(x,1)
end
end
function uf()
if pl.Humanoid.Sit==false then return end
sb=true
for i=1,10 do wait(.1) rot=rot+1-i end
if heat>=.01 then for i=1,100 do wait()
heat=heat-0.01
end end
row:stop()
rot=0
end
Part = function(x,y,z,color,tr,cc,an,parent,xx,yy,zz)
local p = Instance.new('Part',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
p.CFrame=CFrame.new(xx,yy,zz)
return p end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return w end
Mesh = function(par,num,x,y,z)
local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
elseif num == 3 then msh = Instance.new("BlockMesh",par)
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
end msh.Scale = Vector3.new(x,y,z)return msh end
Seat = function(x,y,z,color,tr,cc,an,parent,xx,yy,zz)
local p = Instance.new('Seat',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
p.CFrame=CFrame.new(xx,yy,zz)
return p end
mouse = lp:GetMouse()
function onKeyDown(key)
key = key:lower()
if key == "w" then w()end
if key == "a" then a()end
if key == "d" then d()end 
if key == "r" then fix()end 
if key == "f" then f()end 
end function onKeyUp(key)
key = key:lower()
if key == "w" then uw()end
if key == "a" then ua()end
if key == "d" then ud()end 
if key == "f" then uf()end
end
--isaMachine
mo=Instance.new("Model",pl)
MAIN= Part(10,.5,5,'',0,true,false,mo,-20,2,-40)
for i=1,6 do 
pa= Part(1,1,1,'Really black',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,7-i*2,-.75,-2.5,0,0,0,mo)
m=Mesh(pa,2,3,2,2)
end for i=1,6 do 
pa= Part(1,1,1,'Really black',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,7-i*2,-.75,2.5,0,0,0,mo)
m=Mesh(pa,2,3,2,2)
end for i=1,2 do 
pa= Part(1,1,1,'Really black',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,5.75,-.75,3-i*2,0,0,0,mo)
m=Mesh(pa,2,2,2,3)end
pa= Part(1,5,.1,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-4,2.5,2,0,0,0,mo)
pa= Part(1,5,.1,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-4,2.5,-2,0,0,0,mo)
pa= Part(1,.1,4,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-4,4.9,0,0,0,0,mo)
pa= Part(.1,5,.5,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-3.6,2.5,-1,0,0,0,mo)
pa= Part(.1,5,.5,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-3.6,2.5,0,0,0,0,mo)
pa= Part(.1,5,.5,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-3.6,2.5,1,0,0,0,mo)
pa= Part(.1,2.5,.5,'',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-4.4,1.25,0,0,0,0,mo)
pa= Part(1,1,1,'',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-4.3,2.5,0,0,0,math.pi/2,mo)
m=Mesh(pa,1,.5,.5,.5)
spn= Part(1,1,1,'Really black',0,true,false,mo,0,0,0)
spweld= Weld(spn,MAIN,-4.2,2.5,0,0,0,math.pi/2,mo)
m=Mesh(spn,1,.51,.1,.51)
pa= Part(1,1,1,'Black',0,true,false,mo,0,0,0)
weld= Weld(pa,spn,1,0,0,0,0,math.pi/2,mo)
m=Mesh(pa,2,.1,1.8,.5)
pa= Part(1,1,1,'Black',0,true,false,mo,0,0,0)
weld= Weld(pa,spn,-.9,0,0,0,0,math.pi/2,mo)
m=Mesh(pa,2,.1,1.8,.5)
pa= Part(.1,.1,4.2,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-4.6,1.25,0,0,0,0,mo)
pa= Part(.1,.1,4.2,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-4.6,4,0,0,0,0,mo)
rotr1= Part(1,3.5,.1,'Really black',0,true,false,mo,0,0,0)
rweld1= Weld(rotr1,MAIN,-5.2,2.5,1,0,0,0,mo)
rotr2= Part(1,3.5,.1,'Really black',0,true,false,mo,0,0,0)
rweld2= Weld(rotr2,MAIN,-5.2,2.5,-1,0,0,0,mo)
se= Seat(2,.1,1,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(se,MAIN,0,.35,0,0,-math.pi/2,0,mo)
pa= Part(2.25,2,1,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,.5,.75,1.5,0,0,0,mo)
pa= Part(2.25,2,1,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,.5,.75,-1.5,0,0,0,mo)
pa= Part(2,.1,3,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,1,.25,0,0,-math.pi/2,0,mo)
pa= Part(1,3,4,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,-1,1.75,0,0,0,0,mo)
pa= Part(1,1,1,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,4,1,0,0,0,0,mo)
m=Mesh(pa,1,.3,2,.3)
pa= Part(1,1,1,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,3.5,1,.75,-math.pi/5,0,-math.pi/8,mo)
m=Mesh(pa,1,.3,2.5,.3)
pa= Part(1,1,1,'Dark stone grey',0,true,false,mo,0,0,0)
weld= Weld(pa,MAIN,3.5,1,-.75,math.pi/5,0,-math.pi/8,mo)
m=Mesh(pa,1,.3,2.5,.3)
tur= Part(.75,.75,.75,'Dark stone grey',0,true,false,mo,0,0,0)
turweld= Weld(tur,MAIN,4,1.75,0,0,0,0,mo)
spin= Part(1,1,1,'',0,true,false,mo,0,0,0)
spinweld= Weld(spin,tur,.4,0,0,0,0,math.pi/2,mo)
m=Mesh(spin,1,.75,.1,.75)
pa1= Part(1,1,1,'',0,true,false,mo,0,0,0)
weld= Weld(pa1,spin,.25,-.8,0,0,0,0,mo)
m=Mesh(pa1,1,.2,1.5,.2)
pa2= Part(1,1,1,'',0,true,false,mo,0,0,0)
weld= Weld(pa2,spin,-.25,-.8,0,0,0,0,mo)
m=Mesh(pa2,1,.2,1.5,.2)
pa3= Part(1,1,1,'',0,true,false,mo,0,0,0)
weld= Weld(pa3,spin,0,-.8,.25,0,0,0,mo)
m=Mesh(pa3,1,.2,1.5,.2)
pa4= Part(1,1,1,'',0,true,false,mo,0,0,0)
weld= Weld(pa4,spin,0,-.8,-.25,0,0,0,mo)
m=Mesh(pa4,1,.2,1.5,.2)
pa= Part(1,1,1,'',0,true,false,mo,0,0,0)
weld= Weld(pa,spin,0,-.6,0,0,0,0,mo)
m=Mesh(pa,1,.75,.1,.75)
pa= Part(1,1,1,'',0,true,false,mo,0,0,0)
weld= Weld(pa,spin,0,-1.25,0,0,0,0,mo)
m=Mesh(pa,1,.75,.1,.75)
ya= Part(1,1,1,'Really black',1,true,false,mo,0,0,0)
weld= Weld(ya,MAIN,6,1.75,0,0,-math.pi/2,0,mo)
bv=Instance.new("BodyVelocity",MAIN)
bv.maxForce=Vector3.new(1e1000,1e1000,1e1000)
bv.velocity=Vector3.new(0,0,0)
flo=Instance.new("BodyVelocity",MAIN)
flo.maxForce=Vector3.new(1e1000,1e1000,1e1000)
flo.velocity=Vector3.new(0,-100,0)
bg=Instance.new("BodyGyro",MAIN)
bg.maxTorque=Vector3.new(0,400000,0)
idle = Instance.new("Sound",MAIN)idle.SoundId = "http://www.roblox.com/asset/?id=146767821"idle.Looped=true
move = Instance.new("Sound",MAIN)move.SoundId = "http://www.roblox.com/asset/?id=142317661"move.Looped=true
shot = Instance.new("Sound",MAIN)shot.SoundId = "http://www.roblox.com/asset/?id=2692806"shot.Pitch=.8
hot = Instance.new("Sound",MAIN)hot.SoundId = "http://roblox.com/asset/?id=10209881"hot.Pitch=1.7
row = Instance.new("Sound",MAIN)row.SoundId = "http://www.roblox.com/asset/?id=2766581"row.Pitch=0.6 row.Looped=true
coroutine.wrap(function()
while wait() do
for i=1,rotsped do wait()
spweld.C1 = CFrame.new(-4.2,2.5,0)*CFrame.Angles(i/psped,0,math.pi/2)
end end end)()
coroutine.wrap(function()
while wait() do
bv.velocity = pl.Torso.CFrame.lookVector * speed
bg.cframe = CFrame.Angles(math.rad(0),math.rad(turn),math.rad(0))
spinweld.C1 = spinweld.C1*CFrame.Angles(0,math.rad(rot),0)
pa1.BrickColor=BrickColor.new(Color3.new(heat,0,0))
pa2.BrickColor=BrickColor.new(Color3.new(heat,0,0))
pa3.BrickColor=BrickColor.new(Color3.new(heat,0,0))
pa4.BrickColor=BrickColor.new(Color3.new(heat,0,0))
if heat>=1 then hot:play() end
row.Pitch = .6 + (.3 * (rot/40))
end end)()idle:play()
mouse.KeyDown:connect(onKeyDown)
mouse.KeyUp:connect(onKeyUp)