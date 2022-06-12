-- a shotgun gun used to edit velocity and use vectors and working freezeing c02
lp=game.Players.kash5
pl=lp.Character
tol=Instance.new("HopperBin",lp.Backpack)
tol.Name="L_Shotgun"--ContentDownloader
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
s = Instance.new("Sound")s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset?id=131632972"s.Volume = 1
s.Pitch = 1 s.Looped = false s.PlayOnRemove = false s.archivable = false
s.Parent = pl.Torso
s2 = Instance.new("Sound")s.Name = "Sound"
s2.SoundId = "http://roblox.com/asset/?id=131072992"s2.Volume = 1
s2.Pitch = 1 s2.Looped = false s2.PlayOnRemove = false s2.archivable = false
s2.Parent = pl.Torso
s3 = Instance.new("Sound")s.Name = "Sound"
s3.SoundId = "http://www.roblox.com/asset/?id=30624262"s3.Volume = 1
s3.Pitch = .225 s3.Looped = false s3.PlayOnRemove = false s3.archivable = false
s3.Parent = pl.Torso
Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
                local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
                                function touch(hit) 
                if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent ~=pl then 
                hit.Parent:BreakJoints()
                end end li.Touched:connect(touch) 
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
shotval=0
function onClicked(mouse) 
Debounce = true 
if shotval==2 then print("out") return end
if shotval==0 then print("1") 
lod.BrickColor=BrickColor.new("")s:play()
for i=1,5 do
Lightning(shot1.Position,mouse.Hit.p,math.random(5,10),math.random(-2.5,2.5),"Royal purple",0.05,0.35)end end
if shotval==1 then print("2")
lod2.BrickColor=BrickColor.new("")s:play()
for i=1,5 do
Lightning(shot2.Position,mouse.Hit.p,math.random(5,10),math.random(-2.5,2.5),"Royal purple",0.05,0.35)end end
shotval=shotval+1
end
function onKeyDown(key)
key = key:lower()
if key == "r" then
if shotval>=2 then
shotval=-10900
lod.BrickColor=BrickColor.new("Really red")s2:play()
wait(.75)
lod2.BrickColor=BrickColor.new("Really red")s2:play()
wait(1)
smoke.Enabled=true
s3:play()
wait(1.5)
smoke.Enabled=false
shotval=0 
end end end
tol.Selected:connect(function(mouse)
mouse.Button1Down:connect(function() onClicked(mouse) end)
mouse.KeyDown:connect(onKeyDown)
mo=Instance.new("Model",pl)
pa1= Part(.3,.3,1,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0,-1,0,0,0,0,mo)
pa1= Part(.3,.3,.4,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0,-1.2,-.5,-math.pi/5,0,0,mo)
pa1= Part(.3,2,.3,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0,-1.75,-.6,0,0,0,mo)
pa1= Part(.4,2,.4,'Dark stone grey',0,false,false,mo)--pa1.Material="Neon"
wl1= Weld(pa1,pl['Right Arm'],0.2,-2.25,-.6,0,0,0,mo)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.4,2,.4,'Dark stone grey',0,false,false,mo)--pa1.Material="Neon"
wl1= Weld(pa1,pl['Right Arm'],-0.2,-2.25,-.6,0,0,0,mo)
m1= Mesh(pa1,1,1,1,1)
shot2= Part(.3,2,.3,'Really black',0,false,false,mo)
wl1= Weld(shot2,pl['Right Arm'],0.2,-2.26,-.6,0,0,0,mo)
m1= Mesh(shot2,1,1,1,1)
shot1= Part(.3,2,.3,'Really black',0,false,false,mo)
wl1= Weld(shot1,pl['Right Arm'],-0.2,-2.26,-.6,0,0,0,mo)
m1= Mesh(shot1,1,1,1,1)
pa1= Part(.2,.5,.2,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],-0.2,-1.25,-.6,0,0,-math.pi/5,mo)
pa1= Part(.2,.5,.2,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0.2,-1.25,-.6,0,0,math.pi/5,mo)
pa1= Part(.3,.5,.3,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0.2,-1.2,-.7,-math.pi/5,0,0,mo)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.3,.5,.3,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],-0.2,-1.2,-.7,-math.pi/5,0,0,mo)
m1= Mesh(pa1,1,1,1,1)
lod2= Part(.2,.5,.2,'Really red',0,false,false,mo)
wl1= Weld(lod2,pl['Right Arm'],0.2,-1.15,-.75,-math.pi/5,0,0,mo)
m1= Mesh(lod2,1,1,1,1)
lod= Part(.2,.5,.2,'Really red',0,false,false,mo)
wl1= Weld(lod,pl['Right Arm'],-0.2,-1.15,-.75,-math.pi/5,0,0,mo)
m1= Mesh(lod,1,1,1,1)
pa1= Part(.4,.5,.5,'',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0,-2.75,-.3,0,0,0,mo)
pa1= Part(.3,.5,.3,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0,-2.8,0,0,0,0,mo)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.1,.1,.1,'Really red',0.75,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0,-5.55,0,0,0,0,mo)
m1= Mesh(pa1,1,.3,30,.3)
bb= Part(.1,.1,.1,'Bright red',0,false,false,mo)
wl1= Weld(bb,pl['Right Arm'],0,-2,0,-math.pi/3,0,0,mo)
m1= Mesh(bb,2,2.5,2.5,2.5)
pa1= Part(.5,1,.5,'Bright red',0,false,false,mo)
wl1= Weld(pa1,bb,0,-.5,0,0,0,0,mo)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.3,.65,.3,'',0,false,false,mo)
wl1= Weld(pa1,bb,0,.25,0,0,0,0,mo)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.3,.5,.3,'Dark stone grey',0,false,false,mo)
wl1= Weld(pa1,bb,0.1,-.74,0,0,0,0,mo)
pa1= Part(.1,.1,.1,'Really black',0,false,false,mo)
wl1= Weld(pa1,bb,0.25,-.74,0,0,0,0,mo)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.1,.1,.1,'Really black',0,false,false,mo)
wl1= Weld(pa1,bb,0.25,-.74,.05,0,0,0,mo)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.1,.1,.1,'Really black',0,false,false,mo)
wl1= Weld(pa1,bb,0.25,-.74,-.05,0,0,0,mo)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.1,.1,.1,'Really black',0,false,false,mo)
wl1= Weld(pa1,bb,0.25,-.74,.1,0,0,0,mo)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.1,.1,.1,'Really black',0,false,false,mo)
wl1= Weld(pa1,bb,0.25,-.74,-.1,0,0,0,mo)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.2,.6,.2,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0,-2.5,0,0,0,0,mo)
pa1= Part(.3,.3,1,'Really black',0,false,false,mo)
wl1= Weld(pa1,pl['Right Arm'],0,-1.2,0,math.pi/8,0,0,mo)
m1= Mesh(pa1,3,1,.1,1)
smo= Part(.1,.1,.1,'Dark stone grey',1,false,false,mo)
wl1= Weld(smo,bb,0.1,-.74,0,0,0,-math.pi/2,mo)
smoke=Instance.new("Smoke",smo)
smoke.Color=Color3.new(.85,0,2.55)
smoke.RiseVelocity=100
smoke.Enabled=false




--
bas = Part(1,1,1,'',1,false,false,mo)
bas:BreakJoints()
fakel = Instance.new("Weld",mo)
fakel.Part0 = pl.Torso
fakel.Part1 = bas
coroutine.wrap(function()
for angle = 0, 95, 10 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle),math.rad(angle/8),0)
wait()
end
end)()
welditbro = Instance.new("Weld", mo)
welditbro.C0 = CFrame.new(0, 0.5, 0)
welditbro.Part0 = pl['Right Arm']
welditbro.Part1 = bas
bas2 = Part(1,1,1,'',1,false,false,mo)
bas2:BreakJoints()
fakel2 = Instance.new("Weld",mo)
fakel2.Part0 = pl.Torso
fakel2.Part1 = bas2
coroutine.wrap(function()
for angle = 0, 30, 5 do
fakel2.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-angle),math.rad(-angle/5),math.rad(-angle/5))
wait()
end
end)()
welditbro2 = Instance.new("Weld", mo)
welditbro2.C0 = CFrame.new(0, 0.5, 0)
welditbro2.Part0 = pl['Left Arm']
welditbro2.Part1 = bas2
end)
tol.Deselected:connect(function(mouse)
loop=true
mo:remove()
end)

