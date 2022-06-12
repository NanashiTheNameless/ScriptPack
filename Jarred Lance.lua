--[[    GunDuelist inspierd by fen
        made by jar nob 
        heehheh u hax
        dont leak nob
]]
lp=game.Players.LocalPlayer
pl=lp.Character
tol=Instance.new("HopperBin",lp.Backpack)
tol.Name="Shock Lance"--jarredbcv
function getAngles(cf)
local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
return math.atan2(-m12,m22),math.asin(m02),math.atan2(-m01,m00)end
cfoff=true
curnt="fire"
db=false
le=2
rng={}
Lerp = {Number = function(C1,C2,inc)
return C1 + (C2 - C1) * inc
end;CFrame = function(C1,C2,inc)
local x1,y1,z1 = getAngles(C1)
local x2,y2,z2 = getAngles(C2)
return CFrame.new(Lerp.Number(C1.X,C2.X,inc),Lerp.Number(C1.Y,C2.Y,inc), Lerp.Number(C1.Z,C2.Z,inc)) * CFrame.Angles(Lerp.Number(x1,x2,inc),Lerp.Number(y1,y2,inc),Lerp.Number(z1,z2,inc))
end;}
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
fir = function(n1,n2,n3,n4,n5,n6,hs,fs,parent)
local fi = Instance.new('Fire',parent or Weapon)
fi.Color=Color3.new(n1,n2,n3)
fi.Heat=hs
fi.SecondaryColor=Color3.new(n4,n5,n6)
fi.Size=fs
return fi end
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
elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
end msh.Scale = Vector3.new(x,y,z)
return msh end
function TweenCFrame(part,cframe,q)
local c0 = part.CFrame
for i = -90,90,q do
local r = ((math.sin(math.rad(i))+1)/2)
part.CFrame = CFrame.new(c0.p:lerp(cframe.p,r))
wait()end end
cube = function(pos,colr,hig,ra)
for i=1,6 do local ascube = Part(1,1,1,colr,0,false,true,mo)
ascube.CFrame= pos
coroutine.wrap(function()
TweenCFrame(ascube,pos+Vector3.new(math.random(-ra,ra),math.random(-hig,hig),math.random(-ra,ra)),10)
ascube.Anchored=false
game.Debris:AddItem(ascube,.5)
end)()end end
Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency) -- messy and bad
local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
for i=1,Times do 
li = Instance.new("Part",mo) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
if Times == i then 
local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
end
end
s1 = Instance.new("Sound",pl.Torso)s1.SoundId = "http://roblox.com/asset/?id=28445431"s1.Volume=100 s1.Pitch=20
s2 = Instance.new("Sound",pl.Torso)s2.SoundId = "http://roblox.com/asset/?id=131382140"s2.Pitch=10
s3 = Instance.new("Sound",pl.Torso)s3.SoundId = "http://www.roblox.com/asset/?id=130865054"s3.Pitch=1.5
s4 = Instance.new("Sound",pl.Torso)s4.SoundId = "http://www.roblox.com/asset/?id=25605551"
s5 = Instance.new("Sound",pl.Torso)s5.SoundId = "http://www.roblox.com/asset/?id=32656713"
s6 = Instance.new("Sound",pl.Torso)s6.SoundId = "http://www.roblox.com/asset/?id=32656754"
s7 = Instance.new("Sound",pl.Torso)s7.SoundId = "http://www.roblox.com/asset/?id=10756104"s7.Pitch=1.25
s8 = Instance.new("Sound",pl.Torso)s8.SoundId = "http://www.roblox.com/asset/?id=10756118"
s9 = Instance.new("Sound",pl.Torso)s9.SoundId = "http://www.roblox.com/asset/?id=142070127"
s10 = Instance.new("Sound",pl.Torso)s10.SoundId = "http://www.roblox.com/asset/?id=102546080"
s11 = Instance.new("Sound",pl.Torso)s11.SoundId = "http://www.roblox.com/asset/?id=30583931"s11.Pitch=.75
mo=Instance.new("Model",pl)
orign= Part(.23,4,.23,'',0,false,false,mo)
me=Mesh(orign,1,1,1,1)
owld= Weld(orign,pl.Torso,0,0,.5,0,math.pi/1,math.pi/1.25,mo)
adpa= Part(.1,2,.1,'Really black',0,false,false,mo)
me=Mesh(adpa,1,1,1,1)
wld= Weld(adpa,orign,0,-3,0,math.pi/1,0,0,mo)
for i=1,7 do le=le+.2
rpa= Part(.1,2,.1,'Sand red',0,false,false,mo)
me=Mesh(rpa,'http://www.roblox.com/asset/?id=3270017',.5,.5,.5)
wld= Weld(rpa,orign,0,-le,0,math.pi/2,0,0,mo)
table.insert(rng,rpa)
end for i=1,5 do
pa= Part(1,1,1,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,3,.1,.9,.1)
wld= Weld(pa,orign,0,-4,-.1,0,0,i/.2,mo)
end for i=1,5 do
pa= Part(1,1,1,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,3,.1,.9,.1)
wld= Weld(pa,orign,0,-4,.1,0,0,i/.2,mo)end
pa= Part(1,1,1,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,1,.7,.1,.7)
wld= Weld(pa,orign,0,-4,-.1,math.pi/2,0,0,mo)
pa= Part(1,1,1,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,1,.7,.1,.7)
wld= Weld(pa,orign,0,-4,.1,math.pi/2,0,0,mo)
pa= Part(1,1,1,'',0,false,false,mo)
me=Mesh(pa,'http://www.roblox.com/asset/?id=77353021',.7,.1,.7)
wld= Weld(pa,orign,.2,-4,0,math.pi/2,0,0,mo)
pa= Part(1,1,1,'',0,false,false,mo)
me=Mesh(pa,'http://www.roblox.com/asset/?id=77353021',.7,.1,.7)
wld= Weld(pa,orign,-.2,-4,0,math.pi/2,0,math.pi/1,mo)
pa= Part(.231,.75,.231,'Really black',0,false,false,mo)
me=Mesh(pa,1,1,1,1)
wld= Weld(pa,orign,0,0,0,0,0,0,mo)
pa= Part(.5,.75,.5,'Really black',0,false,false,mo)
me=Mesh(pa,1,1,1,1)
wld= Weld(pa,orign,0,0,-.2,0,0,0,mo)
pa= Part(.1,.7,.1,'Lime green',0,false,false,mo)
me=Mesh(pa,1,1,1,1)
wld= Weld(pa,orign,0,-0.05,-.3,0,0,0,mo)
pa= Part(.1,2,.1,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,1,.7,.7,.7)
wld= Weld(pa,orign,0,-1,-.3,0,0,0,mo)
pa= Part(.1,.6,.1,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,1,.7,.7,.7)
wld= Weld(pa,orign,0,-1.8,-.1837,-math.pi/5,0,0,mo)
pa= Part(.5,.1,.5,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,1,.7,.7,.7)
wld= Weld(pa,orign,0,2,0,0,0,0,mo)
pa= Part(.4,.1,.4,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,1,.7,.7,.7)
wld= Weld(pa,orign,0,2.1,0,0,0,0,mo)
pa= Part(.3,.1,.3,'Dark stone grey',0,false,false,mo)
me=Mesh(pa,1,.7,.7,.7)
wld= Weld(pa,orign,0,2.2,0,0,0,0,mo)
-- arm
mpa= Part(1.01,1.01,1.01,'Really black',0,false,false,mo) mpa:BreakJoints()
mwl= Weld(mpa,pl['Right Arm'],0,0,0,0,0,0,mo)
pa= Part(1.1,1.1,1.1,'Dark stone grey',0,false,false,mo)
m=Mesh(pa,'http://www.roblox.com/asset/?id=1778999',.3,.15,.3)
wl= Weld(pa,mpa,0,.3,-.5,0,0,0,mo)
pa= Part(1.1,1.1,1.1,'Dark stone grey',0,false,false,mo)
m=Mesh(pa,'http://www.roblox.com/asset/?id=1778999',.3,.15,.3)
wl= Weld(pa,mpa,0,-.3,-.5,math.pi/1,0,0,mo)
--[[pa= Part(1.1,1.1,1.1,'White',0,false,false,mo) -- UNWANTED RMDX PART
m=Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.75,.75,.75)
wl= Weld(pa,mpa,.5,0,0,0,math.pi/2,0,mo)
spa= Part(1.1,1.1,1.1,'Royal purple',0,false,false,mo)
spm=Mesh(spa,'http://www.roblox.com/asset/?id=47260990',.75,.75,.75)
spwl= Weld(spa,mpa,.5,0,0,0,math.pi/2,0,mo)]]
pa= Part(1.1,1.1,1.1,'White',0,false,false,mo)
m=Mesh(pa,'http://www.roblox.com/Asset/?id=10207677',.18,.01,.18)
wl= Weld(pa,mpa,0,0,.4088,math.pi/2,0,0,mo)
rot= Part(1,1,1,'',0,false,false,mo)
m=Mesh(rot,1,.4,.35,.4)
rotwl= Weld(rot,mpa,0,0,-.5,0,0,0,mo)
el1= Part(1,1,1,'Bright red',0,false,false,mo)
m=Mesh(el1,3,.11,.13,.11)
wl= Weld(el1,rot,0,0,-.16,0,0,0,mo)
el2= Part(1,1,1,'Bright green',0,false,false,mo)
m=Mesh(el2,3,.11,.13,.11)
wl= Weld(el2,rot,-.16,0,0,math.pi/2,0,0,mo)
el3= Part(1,1,1,'Bright yellow',0,false,false,mo)
m=Mesh(el3,3,.11,.13,.11)
wl= Weld(el3,rot,.16,0,0,math.pi/2,0,0,mo)
el4= Part(1,1,1,'Bright blue',0,false,false,mo)
m=Mesh(el4,3,.11,.13,.11)
wl= Weld(el4,rot,0,0,.16,0,0,0,mo)
function spin()
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-50),0) * CFrame.new(0.15,-0.2,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-90),math.rad(75),0) * CFrame.new(.2,-0.5,-1)
wait(.25)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-70),math.rad(75),0) * CFrame.new(.2,-0.5,-1)
if curnt=="fire" then
curnt="posion"
for i = 0,1,0.1 do wait()
s1:Play()
rotwl.C1=rotwl.C1 *CFrame.Angles(0,i*2-0.0005,0)
end LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)return end
if curnt=="posion" then
curnt="ice"
for i = 0,1,0.1 do wait()
s1:Play()
rotwl.C1=rotwl.C1 *CFrame.Angles(0,i*2-0.0005,0)
end LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(-.2,-0.1,-1)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)return end
if curnt=="ice" then
curnt="light"
for i = 0,1,0.1 do wait()
s1:Play()
rotwl.C1=rotwl.C1 *CFrame.Angles(0,i*2-0.0005,0)
end LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)return end
if curnt=="light" then
curnt="fire"
for i = 0,1,0.1 do wait()
s1:Play()
rotwl.C1=rotwl.C1 *CFrame.Angles(0,i*2-0.0005,0)
end LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)return end
end
function flame()
s2:Play()
for i,v in pairs(rng)do v.BrickColor=BrickColor.new("Bright red") end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(20),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-50),math.rad(65),0) * CFrame.new(.2,0,-1)
for i=1,10 do wait(.05)
fxpa= Part(.3,.3,.3,'Bright red',0.5,false,true,mo)
fxpa.CFrame= adpa.CFrame*CFrame.new(math.random(-100/math.random(100,150),100/math.random(100,150)),math.random(-100/math.random(100,150),100/math.random(100,150)),1)*CFrame.Angles(math.random(),math.random(),math.random())
game.Debris:AddItem(fxpa,.5) end
for i,v in pairs(rng)do v.BrickColor=BrickColor.new("Sand red") end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(30),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(65),0) * CFrame.new(.2,0,-1)
local firept= Part(.25,3,.25,'Bright red',0.5,false,false,mo)
m=Mesh(firept,'http://www.roblox.com/asset/?id=1323306',.2,2,.2)
wl= Weld(firept,adpa,0,2,0,0,0,0,mo)
local bm= Part(.25,3,.25,'Bright red',0.5,false,false,mo)
bmm=Mesh(bm,'http://www.roblox.com/asset/?id=3270017',0,0,0)
wl= Weld(bm,adpa,0,1,0,math.pi/2,0,0,mo)
s3:play()
for i=1,5 do wait()bmm.Scale=bmm.Scale+Vector3.new(1,1,1) firept.Transparency=firept.Transparency+.1 end
game.Debris:AddItem(firepart,.1)
game.Debris:AddItem(bm,.0000001)
wait(.1)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(20),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-50),math.rad(65),0) * CFrame.new(.2,0,-1)
for i=1,5 do wait(.1)
local bm= Part(1,1,1,'Bright red',0.5,false,true,mo)
local bmm=Mesh(bm,3,0,0,0)
local sfx = Instance.new("Sound",bm)sfx.SoundId = "http://www.roblox.com/asset/?id=32791565" sfx:play()
game.Debris:AddItem(sfx,.1)
bm.CFrame= pl.Torso.CFrame*CFrame.new(0,0,-5-i*8)*CFrame.Angles(math.random(),math.random(),math.random())
for i,v in pairs(workspace:children()) do
if v:IsA("Model") and v:findFirstChild("Humanoid") then
if v:findFirstChild("Head") and v:findFirstChild("Torso") then
if (v:findFirstChild("Torso").Position - bm.Position).magnitude < 10 and v.Name ~= pl.Name then
v:findFirstChild("Humanoid"):TakeDamage(20) local f=Instance.new("Fire",v.Torso)game.Debris:AddItem(f,7)
end end end end
cube(bm.CFrame,'Really red',6,6)
coroutine.wrap(function()
for i=1,10 do wait()bmm.Scale=bmm.Scale+Vector3.new(1,1,1) end game.Debris:AddItem(bm,.1) end)()
end
wait(.2)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
end
function pos()
s10:play()
for i,v in pairs(rng)do v.BrickColor=BrickColor.new("Bright green") end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(20),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-50),math.rad(65),0) * CFrame.new(.2,0,-1)
for i=1,10 do wait(.05)
fxpa= Part(.3,.3,.3,'Bright green',0.5,false,true,mo)
fxpa.CFrame= adpa.CFrame*CFrame.new(math.random(-100/math.random(100,150),100/math.random(100,150)),math.random(-100/math.random(100,150),100/math.random(100,150)),1)*CFrame.Angles(math.random(),math.random(),math.random())
game.Debris:AddItem(fxpa,.5) end
local erpt= Part(.25,3,.25,'Bright green',0.5,false,false,mo)
m=Mesh(erpt,'http://www.roblox.com/asset/?id=1323306',.2,2,.2)
wl= Weld(erpt,adpa,0,2,0,0,0,0,mo)
local bm= Part(.25,3,.25,'Bright green',0.5,false,false,mo)
bmm=Mesh(bm,'http://www.roblox.com/asset/?id=3270017',0,0,0)
wl= Weld(bm,adpa,0,1,0,math.pi/2,0,0,mo)
for i,v in pairs(rng)do v.BrickColor=BrickColor.new("Sand red") end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(30),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(65),0) * CFrame.new(.2,0,-1)
s11:play()
for i=1,5 do wait()bmm.Scale=bmm.Scale+Vector3.new(1,1,1) erpt.Transparency=erpt.Transparency+.1 end
game.Debris:AddItem(erpt,.1)
game.Debris:AddItem(bm,.0000001)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
wait(.125)
local kaz = Part(1,1,1,'Bright green',1,false,true,mo)
local bom= Part(.25,3,.25,'Bright green',0.5,false,true,mo)
m=Mesh(bom,'http://www.roblox.com/asset/?id=52603336',3,3,3)
bom.CFrame=adpa.CFrame
kaz.CFrame=pl.Torso.CFrame*CFrame.new(0,-1.5,-30)
coroutine.wrap(function()
for i=1,15 do wait()
local sfx= Part(.25,3,.25,'Bright green',0.5,false,true,mo)
local msf=Mesh(sfx,'http://www.roblox.com/asset/?id=52603336',3,3,3)
sfx.CFrame=bom.CFrame
coroutine.wrap(function()
for i=1,10 do wait()
msf.Scale=msf.Scale-Vector3.new(.3,.3,.3)
end game.Debris:AddItem(sfx,.001) end)()
end end)()
TweenCFrame(bom,kaz.CFrame,10)
game.Debris:AddItem(bom,.00000000001)
local spil= Part(.25,3,.25,'Bright green',0,false,true,mo)
spm=Mesh(spil,1,3,.1,3)
spil.CFrame=bom.CFrame*CFrame.new(0,-1.5,0)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
for i=1,10 do wait() spm.Scale=spm.Scale+Vector3.new(7.5,0,7.5) end
s12 = Instance.new("Sound",spil)s12.SoundId = "http://www.roblox.com/asset/?id=148008221"
s12:play()
for i,v in pairs(workspace:children()) do
if v:IsA("Model") and v:findFirstChild("Humanoid") then
if v:findFirstChild("Head") and v:findFirstChild("Torso") then
if (v:findFirstChild("Torso").Position - spil.Position).magnitude < 15 and v.Name ~= pl.Name then
local kl= v:findFirstChild("Humanoid")
kl:TakeDamage(15)
coroutine.wrap(function()
for i=1,10 do wait(1.5) 
kl:TakeDamage(8)
local sfx= Part(.25,3,.25,'Bright green',0.5,false,true,kl.Parent.Torso)
msf=Mesh(sfx,'http://www.roblox.com/asset/?id=52603336',1,1,1)
sfx.CFrame=kl.Parent.Torso.CFrame
coroutine.wrap(function()
for i=1,10 do wait()
sfx.CFrame=sfx.CFrame+Vector3.new(0,.3,0)
end game.Debris:AddItem(sfx,.0000000001)end)()
end end)() end end end end
for i=1,10 do wait(.25)
local sfx= Part(.25,3,.25,'Bright green',0.5,false,true,mo)
msf=Mesh(sfx,'http://www.roblox.com/asset/?id=52603336',1,1,1)
sfx.CFrame=spil.CFrame*CFrame.new(math.random(-7.5,7.5),.5,math.random(-7.5,7.5))
coroutine.wrap(function()
for i=1,10 do wait()
sfx.CFrame=sfx.CFrame+Vector3.new(0,.1,0)
end game.Debris:AddItem(sfx,.0000000001)end)()end 
for i=1,5 do wait()spil.Transparency=spil.Transparency+.2 end
game.Debris:AddItem(spil,.000000001)
end
function ice()
s4:play()
for i,v in pairs(rng)do v.BrickColor=BrickColor.new("Bright blue") end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(20),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-50),math.rad(65),0) * CFrame.new(.2,0,-1)
for i=1,10 do wait(.05)
fxpa= Part(.3,.3,.3,'Bright blue',0.5,false,true,mo)
fxpa.CFrame= adpa.CFrame*CFrame.new(math.random(-100/math.random(100,150),100/math.random(100,150)),math.random(-100/math.random(100,150),100/math.random(100,150)),1)*CFrame.Angles(math.random(),math.random(),math.random())
game.Debris:AddItem(fxpa,.5) end
local icept= Part(.25,3,.25,'Bright blue',0.5,false,false,mo)
m=Mesh(icept,'http://www.roblox.com/asset/?id=1323306',.2,2,.2)
wl= Weld(icept,adpa,0,2,0,0,0,0,mo)
local bm= Part(.25,3,.25,'Bright blue',0.5,false,false,mo)
bmm=Mesh(bm,'http://www.roblox.com/asset/?id=3270017',0,0,0)
wl= Weld(bm,adpa,0,1,0,math.pi/2,0,0,mo)
for i,v in pairs(rng)do v.BrickColor=BrickColor.new("Sand red") end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(30),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(65),0) * CFrame.new(.2,0,-1)
s5:play()
for i=1,5 do wait()bmm.Scale=bmm.Scale+Vector3.new(1,1,1) icept.Transparency=icept.Transparency+.1 end
game.Debris:AddItem(icept,.1)
game.Debris:AddItem(bm,.0000001)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
for i=1,7 do wait(.1)
local bm= Part(1,1,1,'Bright blue',0.2,false,true,mo)
local bmm=Mesh(bm,'http://www.roblox.com/asset/?id=1778999',0,0,0)
local sfx = Instance.new("Sound",bm)sfx.SoundId = "http://www.roblox.com/asset/?id=32656754" sfx:play()
game.Debris:AddItem(sfx,.1) 
bm.CFrame= pl.Torso.CFrame*CFrame.new(0,-1.5,-i*8)*CFrame.Angles(math.random(-50,50)/100,0,math.random(-50,50)/100)
for i,v in pairs(workspace:children()) do
if v:IsA("Model") and v:findFirstChild("Humanoid") then
if v:findFirstChild("Head") and v:findFirstChild("Torso") then
if (v:findFirstChild("Torso").Position - bm.Position).magnitude < 10 and v.Name ~= pl.Name then
v.Humanoid:TakeDamage(15)
local cur= v.Torso
cur.Anchored=true
coroutine.wrap(function()
for i=1,4 do wait() 
local new= Part(1,1,1,'Bright blue',0.2,false,true,mo)
local newm=Mesh(new,'http://www.roblox.com/asset/?id=1778999',1,3,1)
new.CFrame=cur.CFrame*CFrame.new(0,-2.5,0)*CFrame.Angles(math.random(-100,100)/100,0,math.random(-100,100)/100)
game.Debris:AddItem(new,3)
end wait(3)
local sfx = Instance.new("Sound",cur)sfx.SoundId = "http://www.roblox.com/Asset?ID=87015121" sfx:play()
game.Debris:AddItem(sfx,.1)
cur.Anchored=false end)() end end end end
coroutine.wrap(function()for i=1,10 do wait()bmm.Scale=bmm.Scale+Vector3.new(.5,1,.5) end
wait(1)
for i= 1,8 do wait()
bm.Transparency=bm.Transparency+.1
end
game.Debris:AddItem(bm,.1)
end)()
end
wait(.2)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
end
function light()
s7:play()
for i,v in pairs(rng)do v.BrickColor=BrickColor.new("Bright yellow") end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(30),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(65),0) * CFrame.new(.2,0,-1)
for i=1,10 do wait(.05)
fxpa= Part(.3,.3,.3,'Bright yellow',0.5,false,true,mo)
fxpa.CFrame= adpa.CFrame*CFrame.new(math.random(-100/math.random(100,150),100/math.random(100,150)),math.random(-100/math.random(100,150),100/math.random(100,150)),1)*CFrame.Angles(math.random(),math.random(),math.random())
game.Debris:AddItem(fxpa,.5) end
local lightpt= Part(.25,3,.25,'Bright yellow',0.5,false,false,mo)
m=Mesh(lightpt,'http://www.roblox.com/asset/?id=1323306',.2,2,.2)
wl= Weld(lightpt,adpa,0,2,0,0,0,0,mo)
local bm= Part(.25,3,.25,'Bright yellow',0.5,false,false,mo)
bmm=Mesh(bm,'http://www.roblox.com/asset/?id=3270017',0,0,0)
wl= Weld(bm,adpa,0,1,0,math.pi/2,0,0,mo)
for i,v in pairs(rng)do v.BrickColor=BrickColor.new("Sand red") end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(20),-math.rad(30),math.rad(20)) * CFrame.new(.2,-0.5,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(-50),math.rad(65),0) * CFrame.new(.2,0,-1)
s8:play()
for i=1,5 do wait()bmm.Scale=bmm.Scale+Vector3.new(1,1,1) lightpt.Transparency=lightpt.Transparency+.1 end
game.Debris:AddItem(lightpt,.1)
game.Debris:AddItem(bm,.0000001)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
wait(.125)
local angl= Part(0,0,0,'Bright yellow',1,false,true,mo)
angl.CFrame=pl.Torso.CFrame*CFrame.new(0,0,-25)
for i=1,10 do wait()Lightning(adpa.Position,angl.Position,math.random(5,10),math.random(-2.5,2.5),"Bright yellow",0.05,0.35)end 
local bm= Part(.25,3,.25,'Bright yellow',0.8,false,true,mo)
bmm=Mesh(bm,'http://www.roblox.com/asset/?id=52603336',0,0,0)
bm.CFrame=angl.CFrame
local bm2= Part(1,1,1,'Bright yellow',0,false,true,mo)
bmm2=Mesh(bm2,3,0,0,0)
bm2.CFrame=angl.CFrame*CFrame.Angles(math.random(),math.random(),math.random())
game.Debris:AddItem(angl,.1)
s9:Play()
for i=1,10 do wait()bmm.Scale=bmm.Scale+Vector3.new(2.5,2.5,2.5)
bmm2.Scale=bmm2.Scale+Vector3.new(1.5,1.5,1.5)
bm2.Transparency=bm2.Transparency+.09
end
for i,v in pairs(workspace:children()) do
if v:IsA("Model") and v:findFirstChild("Humanoid") then
if v:findFirstChild("Head") and v:findFirstChild("Torso") then
if (v:findFirstChild("Torso").Position - bm.Position).magnitude < 20 and v.Name ~= pl.Name then
local curnt= v
v.Humanoid:TakeDamage(35)
local x= curnt.Head.BrickColor
local y= curnt.Torso.BrickColor
local z= curnt['Left Arm'].BrickColor
local f= curnt['Right Arm'].BrickColor
local n= curnt['Left Leg'].BrickColor
local g= curnt['Right Leg'].BrickColor
coroutine.wrap(function()
for _,v in pairs(curnt:GetChildren()) do if v.ClassName=="Part" then v.BrickColor=BrickColor.new("Really black") end end
sm=Instance.new("Smoke",curnt.Torso)
game.Debris:AddItem(sm,2)
wait(3)
curnt.Head.BrickColor=x
curnt.Torso.BrickColor=y
curnt['Left Arm'].BrickColor=z
curnt['Right Arm'].BrickColor=f
curnt['Left Leg'].BrickColor=n
curnt['Right Leg'].BrickColor=g
end)() end end end end
game.Debris:AddItem(bm,.00000000000000000000000001)
game.Debris:AddItem(bm2,.00000000000000000000000001)
wait(.2)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
end





function onKeyDown(key)
key = key:lower()
if key == "e" then
if db==true then return end
db=true
spin()
db=false
end end

function onClicked()
if db==true then return end
db=true
if curnt=="fire" then flame()end
if curnt=="posion" then pos()end
if curnt=="ice" then ice()end
if curnt=="light" then light()end
db=false
end

tol.Selected:connect(function(mouse)
mouse.KeyDown:connect(onKeyDown)
mouse.Button1Down:connect(function() onClicked(mouse) end)
rshr = Instance.new("Weld",pl.Torso)
rshr.Part0 = pl.Torso;rshr.Part1 = pl['Right Arm']
rshr.C1 = CFrame.new(-1.5,0,0)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),0) * CFrame.new(0.15,-0.2,0)
lshl = Instance.new("Weld",pl.Torso)
lshl.Part0 = pl.Torso;lshl.Part1 = pl['Left Arm']
lshl.C1 = CFrame.new(1.5,0,0)
LerpTo2 = CFrame.new(1.5,0,0) * CFrame.Angles(-math.rad(-40),math.rad(30),0) * CFrame.new(.2,-0.1,-1)
owld.Part1 = pl['Right Arm']
owld.C1 = CFrame.new(0,-1.1,0.2)*CFrame.Angles(math.pi/2,math.pi/1,0)
cfoff=false
end)
tol.Deselected:connect(function(mouse)
cfoff=true
rshr:remove()
lshl:remove()
end)


game:service'RunService'.RenderStepped:connect(function()
if cfoff==true then return end
rshr.C1 = Lerp.CFrame(rshr.C1,LerpTo,0.2)
lshl.C1 = Lerp.CFrame(lshl.C1,LerpTo2,0.2)
end)





