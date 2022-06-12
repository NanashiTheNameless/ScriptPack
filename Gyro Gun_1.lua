lp=game.Players.LocalPlayer
pl=lp.Character
tol=Instance.new("HopperBin",lp.Backpack)
tol.Name="Gyro_Gun"
for _,v in pairs(pl:GetChildren()) do if v.ClassName=="CharacterMesh" then v:remove() end end
Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
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
end
msh.Scale = Vector3.new(x,y,z)
return msh end
wPart = function(x,y,z,color,tr,cc,an,parent)
local wp = Instance.new('WedgePart',parent or Weapon)
wp.formFactor = 'Custom'
wp.Size = Vector3.new(x,y,z)
wp.BrickColor = BrickColor.new(color)
wp.CanCollide = cc
wp.Transparency = tr
wp.Anchored = an
wp.TopSurface,wp.BottomSurface = 0,0
return wp end

function c1(mouse)
f=true 
ft=false
lo=true
lop=false
speed=50
thro=1
dmg= Part(1,1,1,'',1,false,false,wep)
dmgwl= Weld(dmg,wep24,0,0,0,0,0,0,wep)
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent:BreakJoints()
end end
dmg.Touched:connect(touch)

coroutine.wrap(function()
for i=1,10 do wait()
ma.Scale=ma.Scale+Vector3.new(.2,.2,.2)
ma1.Scale=ma1.Scale+Vector3.new(.3,.3,.3)
end
end)()

coroutine.wrap(function()
while wait()do
for i=1,speed do wait()
if ft==true then break end
spin1w= Weld(spin1,pl['Right Arm'],0,-3,-.75,0,i/thro,0,wep)
spin2w= Weld(spin2,pl['Right Arm'],0,-3,-.75,i/thro,0,0,wep)
end
if ft==true then break end
end end)()
m=lp:GetMouse()
coroutine.wrap(function()
while wait(1) do
if lop==true then break end
bpos.position=m.Hit.p
wait(.5)
coroutine.wrap(function()
for i=1,10 do wait()
bpos.position=wep23.Position
end
end)()
end
end)()
end

function c2(mouse)
ft=true 
f=false
lo=false
lop=true
speed=360
thro=10
dmg:remove()

coroutine.wrap(function()
while wait()do
if lo==true then break end
bpos.position=wep23.Position
end end)()

coroutine.wrap(function()
for i=1,10 do wait()
ma.Scale=ma.Scale-Vector3.new(.2,.2,.2)
ma1.Scale=ma1.Scale-Vector3.new(.3,.3,.3)
end
end)()

coroutine.wrap(function()
while wait()do
for i=1,speed do wait()
if f==true then break end
spin1w= Weld(spin1,pl['Right Arm'],0,-3,-.75,0,i/thro,0,wep)
spin2w= Weld(spin2,pl['Right Arm'],0,-3,-.75,i/thro,0,0,wep)
end
if f==true then break end
end end)()
end

tol.Selected:connect(function(mouse)
mouse.Button1Down:connect(function() c1(mouse) end)
mouse.Button1Up:connect(function() c2(mouse) end)
f=false
lo=false
wep=Instance.new("Model",pl)
bas = Part(1,1,1,'',1,false,false,wep)
bas:BreakJoints()
wep1= Part(.1,.3,1,'Really black',0,false,false,wep)
wl1= Weld(wep1,pl['Right Arm'],0,-1,0,0,0,0,wep)
wep2= Part(.5,2,.5,'Really black',0,false,false,wep)
wl2= Weld(wep2,pl['Right Arm'],0,-1,-.75,0,0,0,wep)
wep3= Part(.1,.2,1.5,'Really black',0,false,false,wep)
wl3= Weld(wep3,pl['Right Arm'],0,-1.5,-.25,-math.pi/5,0,0,wep)
wep4= Part(.3,1,.3,'Institutional white',0,false,false,wep)m=Mesh(wep4,1,1,1,1)
wl4= Weld(wep4,pl['Right Arm'],0,-2,-.75,0,0,0,wep)
wep5= Part(.2,.35,.2,'Really black',0,false,false,wep)m=Mesh(wep5,1,1,1,1)
wl5= Weld(wep5,pl['Right Arm'],0,-2.25,-.75,math.pi/2,0,0,wep)
wep6= Part(.2,.35,.2,'Really black',0,false,false,wep)m=Mesh(wep6,1,1,1,1)
wl6= Weld(wep6,pl['Right Arm'],0,-2.25,-.75,math.pi/2,0,math.pi/2,wep)
wep7= Part(.2,.2,.2,'Really black',0,false,false,wep)
m=Mesh(wep7,'http://www.roblox.com/asset/?id=3270017',2.25,2.25,.1)
wl7= Weld(wep7,pl['Right Arm'],0,-3,-.75,0,math.pi/3,0,wep)
--spinners--
spin1= Part(.2,.2,.2,'Institutional white',0,false,false,wep)
m=Mesh(spin1,'http://www.roblox.com/asset/?id=3270017',1.75,1.75,.1)
spin2= Part(.2,.2,.2,'Really black',0,false,false,wep)
m=Mesh(spin2,'http://www.roblox.com/asset/?id=3270017',1.25,1.25,.1)
--derrize
wep8= Part(1,1,1,'Really black',0,false,false,wep)
m=Mesh(wep8,1,.1,2,.1)
wl8= Weld(wep8,pl['Right Arm'],0,-3,-.75,0,math.pi/3,0,wep)
wep8= Part(1,1,1,'Really black',0,false,false,wep)
m=Mesh(wep8,1,.3,1,.3)
wl8= Weld(wep8,pl['Right Arm'],0,-3,-.75,0,math.pi/3,0,wep)
wep8.Material='Granite'
wep9= Part(1,1,1,'Lime green',0,false,false,wep)
m=Mesh(wep9,1,.4,.3,.4)
wl9= Weld(wep9,pl['Right Arm'],0,-3,-.75,0,math.pi/3,0,wep)
wep9.Material='Granite'
wep9= Part(1,1,1,'Really black',0,false,false,wep)
m=Mesh(wep9,1,.41,.27,.41)
wl9= Weld(wep9,pl['Right Arm'],0,-3,-.75,0,math.pi/3,0,wep)
wep9.Material='Granite'
wep10= Part(1,1,1,'Really black',0,false,false,wep)
m=Mesh(wep10,1,.2,.5,.2)
wl10= Weld(wep10,pl['Right Arm'],0,-4,-.75,0,math.pi/3,0,wep)
wep11= Part(1,1,1,'Institutional white',0,false,false,wep)
m=Mesh(wep11,1,.2,.5,.2)
wl11= Weld(wep11,pl['Right Arm'],0,-4.5,-.75,0,math.pi/3,0,wep)
wep12= Part(.2,.35,.2,'Really black',0,false,false,wep)m=Mesh(wep12,1,1,1,1)
wl12= Weld(wep12,pl['Right Arm'],0,-4.25,-.75,math.pi/2,0,0,wep)
wep13= Part(.2,.35,.2,'Really black',0,false,false,wep)m=Mesh(wep13,1,1,1,1)
wl13= Weld(wep13,pl['Right Arm'],0,-4.25,-.75,math.pi/2,0,math.pi/2,wep)
wep14= Part(.2,.35,.2,'Really black',0,false,false,wep)m=Mesh(wep14,1,1,1,1)
wl14= Weld(wep14,pl['Right Arm'],0,-4.5,-.75,math.pi/2,0,0,wep)
wep15= Part(.2,.35,.2,'Really black',0,false,false,wep)m=Mesh(wep15,1,1,1,1)
wl15= Weld(wep15,pl['Right Arm'],0,-4.5,-.75,math.pi/2,0,math.pi/2,wep)
wep16= Part(1,1,1,'Really black',0,false,false,wep) m=Mesh(wep16,3,2,.1,.1)
wl16= Weld(wep16,pl['Right Arm'],0,-4.7,-.75,math.pi/2,0,0,wep)
wep17= Part(1,1,1,'Really black',0,false,false,wep) m=Mesh(wep17,3,.1,2,.1)
wl17= Weld(wep17,pl['Right Arm'],0,-4.7,-.75,math.pi/2,0,0,wep)
wep18= Part(1,1,1,'Really black',0,false,false,wep) m=Mesh(wep18,3,.1,1,.1)
wl18= Weld(wep18,pl['Right Arm'],0,-5.1,-2,math.pi/5,0,0,wep)
wep19= Part(1,1,1,'Really black',0,false,false,wep) m=Mesh(wep19,3,.1,1,.1)
wl19= Weld(wep19,pl['Right Arm'],0,-5.1,.5,-math.pi/5,0,0,wep)
wep20= Part(1,1,1,'Really black',0,false,false,wep) m=Mesh(wep20,3,1,.1,.1)
wl20= Weld(wep20,pl['Right Arm'],1.35,-5,-.75,0,0,-math.pi/5,wep)
wep21= Part(1,1,1,'Really black',0,false,false,wep) m=Mesh(wep21,3,1,.1,.1)
wl21= Weld(wep21,pl['Right Arm'],-1.35,-5,-.75,0,0,math.pi/5,wep)
wep22= Part(1,1,1,'Really black',0,false,false,wep) m=Mesh(wep22,'http://www.roblox.com/asset/?id=95387759',5,5,5)
wl22= Weld(wep22,pl['Right Arm'],0,-4.7,-.75,-math.pi/2,0,0,wep)

wep23= Part(.1,.1,.1,'Really black',1,false,false,wep)
wl23= Weld(wep23,pl['Right Arm'],0,-6,-.75,-math.pi/2,0,0,wep)

wep24= Part(.1,.1,.1,'Camo',0,false,false,wep)
ma=Mesh(wep24,'http://www.roblox.com/asset/?id=1185246',0,0,0)

wep25= Part(.1,.1,.1,'Lime green',.5,false,false,wep)
ma1=Mesh(wep25,'http://www.roblox.com/asset/?id=1185246',0,0,0)
wl25= Weld(wep25,wep24,0,0,0,-0,0,0,wep)

bpos=Instance.new("BodyPosition",wep24)
bpos.maxForce=Vector3.new(1e1000,1e1000,1e1000)
coroutine.wrap(function()
while wait()do
if lo==true then break end
bpos.position=wep23.Position
end end)()

la1= Part(.1,.1,.1,'Lime green',.6,false,true,wep)
coroutine.wrap(function()
while wait() do
Pos1 = wep18.Position
Pos2 = wep24.Position
Dist = (Pos1-Pos2).magnitude
la1.Size = Vector3.new(0.1,0.1,Dist)
la1.CFrame = CFrame.new(Pos1,Pos2)*CFrame.new(0,0,-Dist/2)
end end)()
la2= Part(.1,.1,.1,'Lime green',.6,false,true,wep)
coroutine.wrap(function()
while wait() do
Pos1 = wep19.Position
Pos2 = wep24.Position
Dist = (Pos1-Pos2).magnitude
la2.Size = Vector3.new(0.1,0.1,Dist)
la2.CFrame = CFrame.new(Pos1,Pos2)*CFrame.new(0,0,-Dist/2)
end end)()
la3= Part(.1,.1,.1,'Lime green',.6,false,true,wep)
coroutine.wrap(function()
while wait() do
Pos1 = wep20.Position
Pos2 = wep24.Position
Dist = (Pos1-Pos2).magnitude
la3.Size = Vector3.new(0.1,0.1,Dist)
la3.CFrame = CFrame.new(Pos1,Pos2)*CFrame.new(0,0,-Dist/2)
end end)()
la4= Part(.1,.1,.1,'Lime green',.6,false,true,wep)
coroutine.wrap(function()
while wait() do
Pos1 = wep21.Position
Pos2 = wep24.Position
Dist = (Pos1-Pos2).magnitude
la4.Size = Vector3.new(0.1,0.1,Dist)
la4.CFrame = CFrame.new(Pos1,Pos2)*CFrame.new(0,0,-Dist/2)
end end)()

speed=360
thro=10
coroutine.wrap(function()
while wait()do
for i=1,speed do wait()
if f==true then break end
spin1w= Weld(spin1,pl['Right Arm'],0,-3,-.75,0,i/thro,0,wep)
spin2w= Weld(spin2,pl['Right Arm'],0,-3,-.75,i/thro,0,0,wep)
end
if ft==true then break end
end
end)()

fakel = Instance.new("Weld",wep)
fakel.Part0 = pl.Torso
fakel.Part1 = bas
coroutine.wrap(function()
for angle = 0, 45, 5 do
        if fakel == nil then return end
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle*2), math.rad(0--[[angle*.3]]), math.rad(0))
wait()
end
end)()
welditbro = Instance.new("Weld", wep)
welditbro.C0 = CFrame.new(0, 0.5, 0)
welditbro.Part0 = pl['Right Arm']
welditbro.Part1 = bas
end)

tol.Deselected:connect(function(_)
f=true
lo=true
wep:remove()
end)