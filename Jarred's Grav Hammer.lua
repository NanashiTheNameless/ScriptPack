lp=game.Players.jarredbcv
pl=lp.Character mouse=lp:GetMouse()
rshr = Instance.new("Weld",pl.Torso)
rshr.Part0 = pl.Torso;rshr.Part1 = pl['Right Arm']
rshr.C1 = CFrame.new(-1.5,0,0)
LerpTo = CFrame.new(-1.5,0,0)
asds=false Parts={}
deb=false
function getAngles(cf)
local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
return math.atan2(-m12,m22),math.asin(m02),math.atan2(-m01,m00)end
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
return msh end function TweenCFrame(part,cframe,q)
local c0 = part.CFrame
for i = -90,90,q do
local r = ((math.sin(math.rad(i))+1)/2)
part.CFrame = CFrame.new(c0.p:lerp(cframe.p,r))
wait()end end
cube = function(pos)
for i=1,6 do local ascube = Part(1.5,1.5,1.5,'Teal',0,false,true,mo)
ascube.CFrame= pos table.insert(Parts,ascube)
coroutine.wrap(function()
TweenCFrame(ascube,pos+Vector3.new(math.random(-20,20),10,math.random(-20,20)),10)
ascube.Anchored=false
end)()end end
s1 = Instance.new("Sound",pl.Torso)s1.SoundId = "http://www.roblox.com/asset/?id=30299564"
s2 = Instance.new("Sound",pl.Torso)s2.SoundId = "http://www.roblox.com/asset/?id=30172281"
s3 = Instance.new("Sound",pl.Torso)s3.SoundId = "http://www.roblox.com/asset/?id=30172373"
s4 = Instance.new("Sound",pl.Torso)s4.SoundId = "http://www.roblox.com/asset/?id=32656754"
s5 = Instance.new("Sound",pl.Torso)s5.SoundId = "http://www.roblox.com/asset/?id=32656713"
s6 = Instance.new("Sound",pl.Torso)s6.SoundId = "http://www.roblox.com/asset/?id=31758934"
mo=Instance.new("Model",pl)
mpa= Part(.25,3,.25,'Really black',0,false,false,mo)
mwl= Weld(mpa,pl.Torso,0,.5,.5,0,0,math.pi/3.5,mo)
pa= Part(.4,1,.4,'Teal',0,false,false,mo)
wl= Weld(pa,mpa,0,-1,0,0,0,0,mo)
m= Mesh(pa,1,1,1,1)
pa= Part(.4,.5,.4,'Teal',0,false,false,mo)
wl= Weld(pa,mpa,0,1.25,0,0,0,0,mo)
m= Mesh(pa,1,1,1,1)
pa= Part(.5,.5,.5,'Teal',0,false,false,mo)
wl= Weld(pa,mpa,0,-1.5,0,math.pi/10,math.pi/4,0,mo)
pa= Part(.5,.5,.5,'Teal',0,false,false,mo)
wl= Weld(pa,mpa,0,-1.5,0,math.pi/5,math.pi/8,0,mo)
pa= Part(.4,.4,.4,'Teal',0,false,false,mo)
wl= Weld(pa,mpa,0,1.5,0,math.pi/10,math.pi/4,0,mo)
pa= Part(.4,.4,.4,'Teal',0,false,false,mo)
wl= Weld(pa,mpa,0,1.5,0,math.pi/5,math.pi/8,0,mo)
pa= Part(.75,.76,.75,'Dark stone grey',0,false,false,mo)
wl= Weld(pa,mpa,0,1.9,0,0,0,0,mo)
pa= Part(.75,.25,.75,'Teal',0,false,false,mo)
wl= Weld(pa,mpa,-.5,1.9,0,0,0,math.pi/2,mo)m= Mesh(pa,4,1,1,1)
pa= Part(.75,.5,.75,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,-.5,1.9,0,math.pi/2,0,math.pi/2,mo)m= Mesh(pa,4,1,1,1)
pa= wPart(.75,.2,.4,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,.2,2.375,0,0,math.pi/2,0,mo)
pa= wPart(.75,.2,.4,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,.2,1.9,.475,math.pi/2,math.pi/2,0,mo)
pa= wPart(.75,.2,.4,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,.2,1.9,-.475,-math.pi/2,math.pi/2,0,mo)
pa= wPart(.75,.2,.4,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,.2,1.425,0,math.pi/1,math.pi/2,0,mo)
asd= Part(.1,1.13,1.13,'Teal',0,false,false,mo)
wl= Weld(asd,mpa,.5,1.9,0,0,0,0,mo)
function eq()
s6:play()
LerpTo = CFrame.new(-1,0,0) * CFrame.Angles(-math.rad(-70),math.rad(70),0) * CFrame.new(-0.4,-0.5,-0.1)
wait(0.1)
mwl.Part1 = pl['Right Arm']
mwl.C1 = CFrame.new(0,-1,0)*CFrame.Angles(-math.pi/2,math.pi/2,0)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(40),math.rad(30),0) * CFrame.new(0,0.1,1)
seq=true end function dc() seq=false s6:play()
LerpTo = CFrame.new(-1,0,0) * CFrame.Angles(-math.rad(-70),math.rad(70),0) * CFrame.new(-0.4,-0.5,-0.1)
wait(0.1)
mwl.Part1 = pl.Torso
mwl.C1 = CFrame.new(0,.5,.5)*CFrame.Angles(0,0,math.pi/3.5)
LerpTo = CFrame.new(-1.5,0,0)end function hit()
asds=true wait(0.2) asds=false end
function grav() if seq==true then if deb==true then return end deb=true
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(115),0,-math.rad(30)) * CFrame.new(0,0,0.5)
s1:play()
wait(0.2)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(20),0,math.rad(30)) * CFrame.new(0,-.3,0.5)
wait(0.2)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(40),math.rad(30),0) * CFrame.new(0,0.1,1)
deb=false
hit()end end
function fly()
if seq==true then 
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(115),0,-math.rad(30)) * CFrame.new(0,0,0.5)
s1:play()
wait(0.2)
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(20),0,math.rad(30)) * CFrame.new(0,-.3,0.5)
wait(0.2)
expa= Part(.4,.5,.4,'Really black',0,false,true,mo)
spm= Mesh(expa,'http://www.roblox.com/asset/?id=3270017',0,0,0)
expa.CFrame=pl.Torso.CFrame*CFrame.Angles(math.pi/2,0,0)-Vector3.new(0,3,0)
s4:play()
for i=1,10 do wait() 
spm.Scale=spm.Scale+Vector3.new(5,5,2)
expa.Transparency=expa.Transparency +.1 end expa:remove()
cube(pl.Torso.CFrame)
v=game.Players:GetChildren() for i = 1, #v do
dist = (v[i].Character.Torso.Position - pl.Torso.Position).magnitude
if dist <= 20 and v[i].Character.Name ~= pl.Name then 
coroutine.wrap(function()
local bps=Instance.new("BodyPosition",v[i].Character.Torso)bps.position=v[i].Character.Torso.Position+Vector3.new(0,20,0) bps.maxForce=Vector3.new(1e1000,1e1000,1e1000)
wait(.5) bps:remove()
v[i].Character.Humanoid:TakeDamage(50)
end)() end end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(40),math.rad(30),0) * CFrame.new(0,0.1,1)
end
end
function onKeyDown(key)
key = key:lower()
if key == "e" then a=not a
if a then eq()else dc()end end 
if key == "q" then fly() end
if key == "r" then th() end end

function onClicked() grav() end
game:service'RunService'.RenderStepped:connect(function()
rshr.C1 = Lerp.CFrame(rshr.C1,LerpTo,0.2)end)
mouse.KeyDown:connect(onKeyDown)
mouse.Button1Down:connect(function() onClicked(mouse) end)
function touch(hit) if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if asds==false then return end deb=true asds=false s2:play()
expa= Part(.4,.5,.4,'Really black',0,false,true,mo)
spm= Mesh(expa,'http://www.roblox.com/asset/?id=3270017',0,0,0)
expa.CFrame=pl.Torso.CFrame*CFrame.Angles(math.pi/2,0,0)-Vector3.new(0,3,0)
expa2= Part(.4,.5,.4,'Teal',0,false,true,mo)
spm2= Mesh(expa2,'http://www.roblox.com/asset/?id=1185246',0,0,0)
expa2.CFrame=pl.Torso.CFrame
for i=1,10 do wait()for _,v in pairs(mo:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="WedgePart" then v.Transparency=v.Transparency+.1 end end 
expa2.CFrame=pl.Torso.CFrame*CFrame.Angles(0,i,0)
spm.Scale=spm.Scale+Vector3.new(4,4,4)
spm2.Scale=spm2.Scale+Vector3.new(2,2,2)
end expa:remove()expa2:remove()
LerpTo = CFrame.new(-1.5,0,0)bps=Instance.new("BodyPosition",pl.Torso)bps.position=pl.Torso.Position+Vector3.new(0,20,0) bps.maxForce=Vector3.new(1e1000,1e1000,1e1000)
dds=bps:Clone() dds.Parent=hit.Parent.Torso dds.position=pl.Torso.Position+Vector3.new(0,40,0)
wait(.5) s3:play()
for i=1,6 do
expa= Part(.4,.5,.4,'Really black',0,false,true,mo)
spm= Mesh(expa,'http://www.roblox.com/asset/?id=3270017',0,0,0)
expa2= Part(.4,.5,.4,'Teal',0,false,true,mo)
spm2= Mesh(expa2,'http://www.roblox.com/asset/?id=1185246',0,0,0)
expa2.CFrame=pl.Torso.CFrame+Vector3.new(0,7,0)
cube(expa2.CFrame) s5:play()
for i=1,10 do wait() 
expa.CFrame=pl.Torso.CFrame*CFrame.Angles(0,math.rad(i*10),math.rad(i*10))+Vector3.new(0,7,0)
spm.Scale=spm.Scale+Vector3.new(2,2,2)
spm2.Scale=spm2.Scale+Vector3.new(2,2,2) 
expa.Transparency=expa.Transparency +.1
expa2.Transparency=expa2.Transparency +.1
end wait(.1)
for i,v in pairs(Parts)do
coroutine.wrap(function()
TweenCFrame(v,CFrame.new(hit.Parent.Torso.Position),30)
v:remove()
end)()end wait(.1)
hit.Parent.Humanoid:TakeDamage(10)Parts={}
expa:remove()expa2:remove()
end
bps:remove()dds:remove()
for i=1,10 do wait()for _,v in pairs(mo:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="WedgePart" then v.Transparency=v.Transparency-.1 end end end
LerpTo = CFrame.new(-1.5,0,0) * CFrame.Angles(-math.rad(40),math.rad(30),0) * CFrame.new(0,0.1,1)
deb=false
end end asd.Touched:connect(touch)