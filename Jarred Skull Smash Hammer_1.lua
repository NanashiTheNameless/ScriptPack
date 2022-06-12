lp=game.Players.LocalPlayer
pl=lp.Character
tol=Instance.new("HopperBin",lp.Backpack)
tol.Name="Skull_Smasher"--jarredbcv
asd=0
Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
return p
end
fir = function(n1,n2,n3,n4,n5,n6,hs,fs,parent)
local fi = Instance.new('Fire',parent or Weapon)
fi.Color=Color3.new(n1,n2,n3)
fi.Heat=hs
fi.SecondaryColor=Color3.new(n4,n5,n6)
fi.Size=fs
return fi
end
wPart = function(x,y,z,color,tr,cc,an,parent)
local wp = Instance.new('WedgePart',parent or Weapon)
wp.formFactor = 'Custom'
wp.Size = Vector3.new(x,y,z)
wp.BrickColor = BrickColor.new(color)
wp.CanCollide = cc
wp.Transparency = tr
wp.Anchored = an
wp.TopSurface,wp.BottomSurface = 0,0
return wp
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return w
end
Mesh = function(par,num,x,y,z)
local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
elseif num == 3 then msh = Instance.new("BlockMesh",par)
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
end
msh.Scale = Vector3.new(x,y,z)
return msh
end
function onKeyDown(key)
key = key:lower()
if key == "e" then
--for angle = 45, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/-1),  0)	wait()end
end
if key == "q" then
for angle = 45, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(0),  math.rad(angle/2))	wait()end
for angle = 95, 5, -20 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(0), 1)wait()end
for i=1,20 do wait()
partz= Part(15,15,15,'Really black',0,true,true,workspace)
partz.CFrame= CFrame.new(pl.Torso.Position+Vector3.new(0,0,10)) * CFrame.Angles(math.random()-.5,math.random()-.5,math.random()-.5) + Vector3.new(0,-8,0) + pl.Torso.CFrame.lookVector*(i+5)*3.5
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-10 end end
partz.Touched:connect(touch)
game.Debris:AddItem(partz,1)
end
for angle = 0, 45, 5 do wait()fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))end
end
end
function onClicked(mouse)
asd=10
for angle = 45, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), 0)wait()end
for angle = 95, 5, -20 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), 0)wait()end
for angle = 5, 45, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/angle - 5), 0)wait()end
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45), math.rad(10), 0)
asd=0
end
tol.Selected:connect(function(mouse)
mouse.Button1Down:connect(function() onClicked(mouse) end)
mouse.KeyDown:connect(onKeyDown)
mo=Instance.new("Model",pl)
bas = Part(1,1,1,'',1,false,false,mo)
bas:BreakJoints()
pa1= Part(.5,.5,3,'Really black',0,false,false,mo)
wl1= Weld(pa1,bas,0,-1.5,0,0,0,0,mo)
pa2= Part(.6,.1,1,'Institutional white',0,false,false,mo)
wl2= Weld(pa2,pa1,0,.1,-1,0,0,0,mo)
pa3= Part(.6,.1,1,'Institutional white',0,false,false,mo)
wl3= Weld(pa3,pa1,0,-.1,0,0,0,0,mo)
pa4= Part(.6,.1,1,'Institutional white',0,false,false,mo)
wl4= Weld(pa4,pa1,0,.1,1,0,0,0,mo)
pa5= Part(.1,.6,1,'Institutional white',0,false,false,mo)
wl5= Weld(pa5,pa1,.1,0,1,0,0,0,mo)
pa6= Part(.1,.6,1,'Institutional white',0,false,false,mo)
wl6= Weld(pa6,pa1,-.1,0,0,0,0,0,mo)
pa7= Part(.1,.6,1,'Institutional white',0,false,false,mo)
wl7= Weld(pa7,pa1,.1,0,-1,0,0,0,mo)
pa8= Part(.6,.1,.6,'Institutional white',0,false,false,mo)
wl8= Weld(pa8,pa1,0,0,-.6,1,0,0,mo)
pa9= Part(.6,.1,.6,'Institutional white',0,false,false,mo)
wl9= Weld(pa9,pa1,0,0,.6,-1,0,0,mo)
pa10= Part(.75,.75,.75,'Institutional white',0,false,false,mo)
wl10= Weld(pa10,pa1,0,0,1.75,1,1,1,mo)
pa11= Part(.75,.75,.75,'Really black',0,false,false,mo)
wl11= Weld(pa11,pa1,0,0,1.75,2,2,2,mo)
pa12= wPart(.5,.5,.5,'Really black',0,false,false,mo)
wl12= Weld(pa12,pa1,0,-.5,-1.75,0,0,0,mo)
pa13= wPart(.5,.5,.5,'Really black',0,false,false,mo)
wl13= Weld(pa13,pa1,0,.5,-1.75,0,0,math.pi/1,mo)
pa14= wPart(.5,.5,.5,'Really black',0,false,false,mo)
wl14= Weld(pa14,pa1,.5,0,-1.75,0,0,math.pi/2,mo)
pa15= wPart(.5,.5,.5,'Really black',0,false,false,mo)
wl15= Weld(pa15,pa1,-.5,0,-1.75,0,0,math.pi/-2,mo)
pa16= Part(1.1,.1,1.1,'Institutional white',0,false,false,mo)
mes1= Mesh(pa16,1,1,1,1)
wl16= Weld(pa16,pa1,0,0,-1.5,math.pi/2,0,0,mo)
pa17= Part(.75,.75,0,'Really black',0,false,false,mo)
wl17= Weld(pa17,pa1,0,0,-1.6,0,0,0,mo)
pa18= Part(0,0,0,'Really black',1,false,false,mo)
wl18= Weld(pa18,pa1,0,0,-2,0,0,0,mo)
firs= fir(1,1,1,1,1,1,0,0,pa18)
HAMER= Part(1,1,1,'Really black',0,false,false,mo)
mes2= Mesh(HAMER,3,2,3,2)
wl19= Weld(HAMER,pa1,0,0,-4,0,0,0,mo)
pa20= Part(1,1,1,'Institutional white',.4,false,false,mo)
mes3= Mesh(pa20,3,2.3,3.3,2.3)
wl20= Weld(pa20,HAMER,0,0,0,0,0,0,mo)
pa21= Part(0,0,0,'Institutional white',0,false,false,mo)
mes4= Mesh(pa21,'http://www.roblox.com/asset/?id=9982590',.3,.01,.3)
wl21= Weld(pa21,HAMER,0,0,1,math.pi/2,0,0,mo)
pa22= Part(0,0,0,'Institutional white',0,false,false,mo)
mes5= Mesh(pa22,'http://www.roblox.com/asset/?id=9982590',.3,.01,.3)
wl22= Weld(pa22,HAMER,0,0,-1,math.pi/2,0,0,mo)
pa23= Part(0,0,0,'Institutional white',0,false,false,mo)
mes6= Mesh(pa23,'http://www.roblox.com/asset/?id=9982590',.5,.01,.5)
wl23= Weld(pa23,HAMER,0,1.5,0,math.pi/1,0,0,mo)
pa24= Part(0,0,0,'Institutional white',0,false,false,mo)
mes7= Mesh(pa24,'http://www.roblox.com/asset/?id=9982590',.5,.01,.5)
wl24= Weld(pa24,HAMER,0,-1.5,0,math.pi/1,0,0,mo)
pa24= Part(0,0,0,'Institutional white',0,false,false,mo)
mes7= Mesh(pa24,'http://www.roblox.com/asset/?id=9982590',.5,.01,.5)
wl24= Weld(pa24,HAMER,0,-1.5,0,math.pi/1,0,0,mo)
pa25= Part(0,0,0,'Institutional white',0,false,false,mo)
mes8= Mesh(pa25,'http://www.roblox.com/asset/?id=4770583',3,3,.1)
wl25= Weld(pa25,HAMER,-1,0,0,math.pi/2,math.pi/2,math.pi/1,mo)
pa26= Part(0,0,0,'Institutional white',0,false,false,mo)
mes9= Mesh(pa26,'http://www.roblox.com/asset/?id=4770583',3,3,.1)
wl26= Weld(pa26,HAMER,1,0,0,math.pi/2,math.pi/-2,math.pi/1,mo)
pa27= Part(0,0,0,'Institutional white',0,false,false,mo)
mes10= Mesh(pa27,1,3,11,3)
wl27= Weld(pa27,HAMER,.5,1,0,math.pi/2,0,0,mo)
pa28= Part(0,0,0,'Institutional white',0,false,false,mo)
mes11= Mesh(pa28,1,3,11,3)
wl28= Weld(pa28,HAMER,-.5,1,0,math.pi/2,0,0,mo)
pa29= Part(0,0,0,'Institutional white',0,false,false,mo)
mes12= Mesh(pa29,1,3,11,3)
wl29= Weld(pa29,HAMER,.5,-1,0,math.pi/2,0,0,mo)
pa30= Part(0,0,0,'Institutional white',0,false,false,mo)
mes13= Mesh(pa30,1,3,11,3)
wl30= Weld(pa30,HAMER,-.5,-1,0,math.pi/2,0,0,mo)
pa31= Part(0,0,0,'Institutional white',0,false,false,mo)
mes14= Mesh(pa31,1,3,11,3)
wl31= Weld(pa31,HAMER,0,1,.5,0,0,math.pi/2,mo)
pa32= Part(0,0,0,'Institutional white',0,false,false,mo)
mes15= Mesh(pa32,1,3,11,3)
wl32= Weld(pa32,HAMER,0,1,-.5,0,0,math.pi/2,mo)
pa33= Part(0,0,0,'Institutional white',0,false,false,mo)
mes16= Mesh(pa33,1,3,11,3)
wl33= Weld(pa33,HAMER,0,-1,-.5,0,0,math.pi/2,mo)
pa34= Part(0,0,0,'Institutional white',0,false,false,mo)
mes17= Mesh(pa34,1,3,11,3)
wl34= Weld(pa34,HAMER,0,-1,.5,0,0,math.pi/2,mo)

function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-asd end end
HAMER.Touched:connect(touch)

fakel = Instance.new("Weld",mo)
fakel.Part0 = pl.Torso
fakel.Part1 = bas
coroutine.wrap(function()
for angle = 0, 45, 5 do
        if fakel == nil then return end
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))
wait()
end
end)()
welditbro = Instance.new("Weld", mo)
welditbro.C0 = CFrame.new(0, 0.5, 0)
welditbro.Part0 = pl['Right Arm']
welditbro.Part1 = bas
loop=false
coroutine.resume(coroutine.create(function(c)
local origc1 = wl19.C1
while wait() do
if loop == true then break end
for i=0,(2*math.pi)-(math.pi/90),math.pi/90 do wait()--omg
wl19.C1 = origc1-Vector3.new(0,0,(math.sin(i)*.5)+.4)
end end end))
end)
tol.Deselected:connect(function(mouse)
loop=true
mo:remove()
end)--nine hours. jarrebcv