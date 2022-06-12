lp=game.Players.LocalPlayer
pl=lp.Character
tol=Instance.new("HopperBin",lp.Backpack)
tol.Name="J-B-C-V_Gauntlet"--jarredbcv


Sword=false
Staff=false
Gun=false

bool=false

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
s = Instance.new("Sound")
s.SoundId = "http://www.roblox.com/asset?id=131632972"s.Volume = 1
s.Pitch = 1 s.Looped = false s.PlayOnRemove = false s.archivable = false
s.Parent = pl.Torso
s2 = Instance.new("Sound")
s2.SoundId = "http://roblox.com/asset/?id=131072992"s2.Volume = 1
s2.Pitch = 1 s2.Looped = false s2.PlayOnRemove = false s2.archivable = false
s2.Parent = pl.Torso
s3 = Instance.new("Sound")
s3.SoundId = "http://www.roblox.com/asset/?id=30624262"s3.Volume = 1
s3.Pitch = .225 s3.Looped = false s3.PlayOnRemove = false s3.archivable = false
s3.Parent = pl.Torso
s4 = Instance.new("Sound")
s4.SoundId = "http://www.roblox.com/asset/?id=146025564"s4.Volume = 1
s4.Pitch = 1 s4.Looped = false s4.PlayOnRemove = false s4.archivable = false
s4.Parent = pl.Torso
s5 = Instance.new("Sound")
s5.SoundId = "http://www.roblox.com/asset/?id=99666816"s5.Volume = 1
s5.Pitch = 1 s5.Looped = false s5.PlayOnRemove = false s5.archivable = false
s5.Parent = pl.Torso
s6 = Instance.new("Sound")
s6.SoundId = "http://www.roblox.com/asset/?id=99666774"s6.Volume = 1
s6.Pitch = 1 s6.Looped = false s6.PlayOnRemove = false s6.archivable = false
s6.Parent = pl.Torso
s7 = Instance.new("Sound")
s7.SoundId = "http://www.roblox.com/asset/?id=99204415"s7.Volume = 1
s7.Pitch = 1 s7.Looped = false s7.PlayOnRemove = false s7.archivable = false
s7.Parent = pl.Torso
s8 = Instance.new("Sound")
s8.SoundId = "http://www.roblox.com/asset/?id=134966555"s7.Volume = 1
s8.Pitch = 1 s7.Looped = false s7.PlayOnRemove = false s7.archivable = false
s8.Parent = pl.Torso
s9 = Instance.new("Sound")
s9.SoundId = "http://www.roblox.com/asset/?id=134966529"s9.Volume = 1
s9.Pitch = 1 s9.Looped = false s9.PlayOnRemove = false s9.archivable = false
s9.Parent = pl.Torso
s10 = Instance.new("Sound")
s10.SoundId = "http://www.roblox.com/asset/?id=102544922"s10.Volume = 1
s10.Pitch = 1 s10.Looped = false s10.PlayOnRemove = false s10.archivable = false
s10.Parent = pl.Torso
s11 = Instance.new("Sound")
s11.SoundId = "http://www.roblox.com/asset/?id=10756118"s11.Volume = 1
s11.Pitch = 1 s11.Looped = false s11.PlayOnRemove = false s11.archivable = false
s11.Parent = pl.Torso
s12 = Instance.new("Sound")
s12.SoundId = "http://www.roblox.com/asset/?id=2974249"s12.Volume = 1
s12.Pitch = 1 s12.Looped = false s12.PlayOnRemove = false s12.archivable = false
s12.Parent = pl.Torso
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
dmg=0
Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
		local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
				function touch(hit) 
                if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent ~=pl then 
                hit.Parent.Humanoid:TakeDamage(dmg)
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


function onKeyDown(key)
key = key:lower()
if key == "e" then
if Staff==true then return end
if Gun==true then return end
if bool==true then return end
e = not e
if e == true then
bool=true
s5:play()
wait(.25)
s7:play()
main:remove()
Sword=true
dmg=15
wep=Instance.new("Model",pl)
wep1= Part(.1,.3,1.2,'',1,false,false,wep)
wepwl1= Weld(wep1,pl['Right Arm'],0,-1,0,0,0,0,wep)
wep2= Part(.3,.1,1.2,'Really black',1,false,false,wep)
wepwl2= Weld(wep2,pl['Right Arm'],0,-1,0,0,0,0,wep)
wep3= Part(.1,.1,.1,'Really black',1,false,false,wep)
wepwl3= Weld(wep3,pl['Right Arm'],0,-1,1.1,0,math.pi/2,0,wep)
wm= Mesh(wep3,'http://www.roblox.com/asset/?id=3270017',.9,.9,.9)
wep4= Part(.1,.1,.1,'',1,false,false,wep)
wepwl4= Weld(wep4,pl['Right Arm'],0,-1,1.1,0,math.pi/2,0,wep)
wm2= Mesh(wep4,'http://www.roblox.com/Asset/?id=9982590',.1,.1,.01)
wep5= Part(.1,.5,2,'',1,false,false,wep)
wepwl5= Weld(wep5,pl['Right Arm'],0,-1,-1.57,0,0,0,wep)
wep6= wPart(.1,.5,.1,'',1,false,false,wep)
wepwl6= Weld(wep6,pl['Right Arm'],0,-.855,-.4,math.pi/2,0,0,wep)
wep7= wPart(.1,.5,.1,'',1,false,false,wep)
wepwl7= Weld(wep7,pl['Right Arm'],0,-1.155,-.4,math.pi/2,math.pi/1,0,wep)
wep8= Part(.3,1,.1,'Really black',1,false,false,wep)
wepwl8= Weld(wep8,pl['Right Arm'],0,-1,-.7,0,0,0,wep)
wep9= Part(.3,.3,2,'Really black',1,false,false,wep)
wepwl9= Weld(wep9,pl['Right Arm'],0,-1,-1.57,0,0,0,wep)
wep10= wPart(.1,.25,.3,'',1,false,false,wep)
wepwl10= Weld(wep10,pl['Right Arm'],0,-.86,-2.72,0,0,0,wep)
wep11= wPart(.1,.25,.3,'',1,false,false,wep)
wepwl11= Weld(wep11,pl['Right Arm'],0,-1.1,-2.72,0,0,math.pi/1,wep)
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent ~=pl then 
hit.Parent.Humanoid:TakeDamage(dmg)
end end wep5.Touched:connect(touch) 
for angle = 0, 45, 5 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle/.3), math.rad(0), math.rad(0))wait()end
for i=1,10 do wait() for _,v in pairs(wep:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="WedgePart" then v.Transparency=v.Transparency-.1 end end end
for angle = 0, 45, 5 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))wait()end
bool=false
else
s6:play() bool=true Sword=false main:remove() 
fakel.C0 = CFrame.new(1.5, 0.5, 0)
for i=1,10 do wait()for _,v in pairs(wep:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="WedgePart" then v.Transparency=v.Transparency+.1 end end end
wep:remove()
for angle = 0, 45, 5 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))wait()end
main= Part(1,1,1,'Institutional white',.5,false,false,moe)
mainm= Mesh(main,'http://www.roblox.com/asset/?id=1033714',.5,1.5,.5)
main:BreakJoints()
mainw= Weld(main,pl['Right Arm'],0,0,-1,math.pi/2,0,0,moe)
bool=false
end
end


if key == "x" then
if Staff==true then return end
if Sword==true then return end
if bool==true then return end
x = not x
if x == true then
bool=true
s5:play()
wait(.25)
s7:play()
main:remove()
dmg=100
Gun=true shotval=0
wep=Instance.new("Model",pl)
pa1= Part(.3,.3,1,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0,-1,0,0,0,0,wep)
pa1= Part(.3,.3,.4,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0,-1.2,-.5,-math.pi/5,0,0,wep)
pa1= Part(.3,2,.3,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0,-1.75,-.6,0,0,0,wep)
pa1= Part(.4,2,.4,'Dark stone grey',1,false,false,wep)--pa1.Material="Slate"
wl1= Weld(pa1,pl['Right Arm'],0.2,-2.25,-.6,0,0,0,wep)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.4,2,.4,'Dark stone grey',1,false,false,wep)--pa1.Material="Slate"
wl1= Weld(pa1,pl['Right Arm'],-0.2,-2.25,-.6,0,0,0,wep)
m1= Mesh(pa1,1,1,1,1)
shot2= Part(.3,2,.3,'Really black',1,false,false,wep)
wl1= Weld(shot2,pl['Right Arm'],0.2,-2.26,-.6,0,0,0,wep)
m1= Mesh(shot2,1,1,1,1)
shot1= Part(.3,2,.3,'Really black',1,false,false,wep)
wl1= Weld(shot1,pl['Right Arm'],-0.2,-2.26,-.6,0,0,0,wep)
m1= Mesh(shot1,1,1,1,1)
pa1= Part(.2,.5,.2,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],-0.2,-1.25,-.6,0,0,-math.pi/5,wep)
pa1= Part(.2,.5,.2,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0.2,-1.25,-.6,0,0,math.pi/5,wep)
pa1= Part(.3,.5,.3,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0.2,-1.2,-.7,-math.pi/5,0,0,wep)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.3,.5,.3,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],-0.2,-1.2,-.7,-math.pi/5,0,0,wep)
m1= Mesh(pa1,1,1,1,1)
lod2= Part(.2,.5,.2,'Really red',1,false,false,wep)
wl1= Weld(lod2,pl['Right Arm'],0.2,-1.15,-.75,-math.pi/5,0,0,wep)
m1= Mesh(lod2,1,1,1,1)
lod= Part(.2,.5,.2,'Really red',1,false,false,wep)
wl1= Weld(lod,pl['Right Arm'],-0.2,-1.15,-.75,-math.pi/5,0,0,wep)
m1= Mesh(lod,1,1,1,1)
pa1= Part(.4,.5,.5,'',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0,-2.75,-.3,0,0,0,wep)
pa1= Part(.3,.5,.3,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0,-2.8,0,0,0,0,wep)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.1,.1,.1,'Really red',1.75,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0,-5.55,0,0,0,0,wep)
m1= Mesh(pa1,1,.3,30,.3)
bb= Part(.1,.1,.1,'Bright red',1,false,false,wep)
wl1= Weld(bb,pl['Right Arm'],0,-2,0,-math.pi/3,0,0,wep)
m1= Mesh(bb,2,2.5,2.5,2.5)
pa1= Part(.5,1,.5,'Bright red',1,false,false,wep)
wl1= Weld(pa1,bb,0,-.5,0,0,0,0,wep)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.3,.65,.3,'',1,false,false,wep)
wl1= Weld(pa1,bb,0,.25,0,0,0,0,wep)
m1= Mesh(pa1,1,1,1,1)
pa1= Part(.3,.5,.3,'Dark stone grey',1,false,false,wep)
wl1= Weld(pa1,bb,0.1,-.74,0,0,0,0,wep)
pa1= Part(.1,.1,.1,'Really black',1,false,false,wep)
wl1= Weld(pa1,bb,0.25,-.74,0,0,0,0,wep)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.1,.1,.1,'Really black',1,false,false,wep)
wl1= Weld(pa1,bb,0.25,-.74,.05,0,0,0,wep)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.1,.1,.1,'Really black',1,false,false,wep)
wl1= Weld(pa1,bb,0.25,-.74,-.05,0,0,0,wep)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.1,.1,.1,'Really black',1,false,false,wep)
wl1= Weld(pa1,bb,0.25,-.74,.1,0,0,0,wep)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.1,.1,.1,'Really black',1,false,false,wep)
wl1= Weld(pa1,bb,0.25,-.74,-.1,0,0,0,wep)
m1= Mesh(pa1,3,.1,2,.1)
pa1= Part(.2,.6,.2,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0,-2.5,0,0,0,0,wep)
pa1= Part(.3,.3,1,'Really black',1,false,false,wep)
wl1= Weld(pa1,pl['Right Arm'],0,-1.2,0,math.pi/8,0,0,wep)
m1= Mesh(pa1,3,1,.1,1)
swep= Part(.1,.1,.1,'Dark stone grey',1,false,false,wep)
wl1= Weld(swep,bb,0.1,-.74,0,0,0,-math.pi/2,wep)
swepke=Instance.new("Smoke",swep)
swepke.Color=Color3.new(.85,0,2.55)
swepke.RiseVelocity=100
swepke.Enabled=false
coroutine.wrap(function()for angle = 0, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle),math.rad(angle/8),0)wait()end end)()
coroutine.wrap(function()for angle = 0, 30, 5 do fakel2.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-angle),math.rad(-angle/5),math.rad(-angle/5))wait()end end)()
for i=1,10 do wait() for _,v in pairs(wep:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="WedgePart" then v.Transparency=v.Transparency-.1 end end end
bool=false
else s6:play() bool=true Gun=false
for i=1,10 do wait()for _,v in pairs(wep:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="WedgePart" then v.Transparency=v.Transparency+.1 end end end
wep:remove()
fakel2.C0 = CFrame.new(-1.5, 0.5, 0)
for angle = 0, 45, 5 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))wait()end
main= Part(1,1,1,'Institutional white',.5,false,false,moe)
mainm= Mesh(main,'http://www.roblox.com/asset/?id=1033714',.5,1.5,.5)
main:BreakJoints()
mainw= Weld(main,pl['Right Arm'],0,0,-1,math.pi/2,0,0,moe)
bool=false
end
end

if key == "q" then
if Gun==true then return end
if Sword==true then return end
if bool==true then return end
q = not q
if q == true then
bool=true
s5:play()
wait(.25)
s7:play()
power=0
dmg=10
Staff=true
main:remove()
wep=Instance.new("Model",pl)
wep1= Part(.5,.5,3,'Really black',1,false,false,wep)
wepwl1= Weld(wep1,pl['Right Arm'],0,-1,0,0,0,0,wep)
wep2= Part(.3,.6,3,'Institutional white',1,false,false,wep)
wepwl2= Weld(wep2,pl['Right Arm'],0,-1,0,0,0,0,wep)
wep3= Part(.6,.3,3,'Institutional white',1,false,false,wep)
wepwl3= Weld(wep3,pl['Right Arm'],0,-1,0,0,0,0,wep)
wep4= Part(.75,.75,.75,'Really black',1,false,false,wep)
wepwl4= Weld(wep4,pl['Right Arm'],0,-1,1.5,-10,-10,0,wep)
wep5= Part(.75,.75,.75,'Institutional white',1,false,false,wep)
wepwl5= Weld(wep5,pl['Right Arm'],0,-1,1.5,0,-10,-10,wep)
wep6= Part(.75,.75,.75,'Institutional white',1,false,false,wep)
wepwl6= Weld(wep6,pl['Right Arm'],0,-1,-1.5,0,0,0,wep)
mes= Mesh(wep6,'http://www.roblox.com/Asset/?id=9982590',.5,.5,.5)
wep7= Part(.75,.75,.75,'Really black',1,false,false,wep)
wepwl7= Weld(wep7,pl['Right Arm'],0,-1,-1.5,0,0,0,wep)
mes= Mesh(wep7,'http://www.roblox.com/Asset/?id=9982590',.4,.4,.4)
wep8= Part(.75,.75,.75,'Really black',1,false,false,wep)
wepwl8= Weld(wep8,pl['Right Arm'],0,-1,-2.5,0,0,0,wep)
mes= Mesh(wep8,'http://www.roblox.com/Asset/?id=9756362',1,1,1.5)
for angle = 0, 45, 5 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle/.3), math.rad(0), math.rad(0))wait()end
for i=1,10 do wait()for _,v in pairs(wep:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="WedgePart" then v.Transparency=v.Transparency-.1 end end end 
wep6.Transparency=.5
for angle = 0, 45, 5 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle/.5), math.rad(0), math.rad(0))wait()end
gui=Instance.new("ScreenGui",lp.PlayerGui)
gui.Name="afr"
gut=Instance.new("TextLabel",gui)
gut.Name="r"
gut.Text="Energy: "..power.."/100"
gut.Position = UDim2.new(0.5, 0, 0.1, 0)
gut.FontSize="Size14"
gut.TextColor3=Color3.new(1,0,0)
gut.TextStrokeTransparency=0
gut.TextTransparency=0
bool=false
else
s6:play()
bool=true
main:remove()gut:remove()
Staff=false
fakel.C0 = CFrame.new(1.5, 0.5, 0)
for i=1,10 do wait()for _,v in pairs(wep:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="WedgePart" then v.Transparency=v.Transparency+.1 end end end
wep:remove()
for angle = 0, 45, 5 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))wait()end
main= Part(1,1,1,'Institutional white',.5,false,false,moe)
mainm= Mesh(main,'http://www.roblox.com/asset/?id=1033714',.5,1.5,.5)
main:BreakJoints()
mainw= Weld(main,pl['Right Arm'],0,0,-1,math.pi/2,0,0,moe)
bool=false
end
end

if key == "r" then
if Gun==true then
if shotval>=2 then
shotval=-10900
lod.BrickColor=BrickColor.new("Really red")s2:play()
wait(.75)
lod2.BrickColor=BrickColor.new("Really red")s2:play()
wait(1)
swepke.Enabled=true
s3:play()
wait(1.5)
swepke.Enabled=false
shotval=0 
end end end
if key == "z" then
mouse=lp:GetMouse()
if Staff==true then
if power>=10 then
coroutine.wrap(function()
for i=1,10 do wait()
power=power-1
gut.Text="Energy: "..power.."/100"
end end)()
s11:play()
for i=1,5 do
Lightning(wep8.Position,mouse.Hit.p,math.random(5,10),math.random(-2.5,2.5),"White",0.05,0.35)end
end
end
end
if key == "f" then
if Staff==true then
if power>=25 then
coroutine.wrap(function()
for i=1,25 do wait()
power=power-1
gut.Text="Energy: "..power.."/100"
end end)()
for angle = 45, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(0),  math.rad(angle/2))	wait()end
for angle = 95, 5, -20 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(0), 1)wait()end
for i=1,20 do wait()s10:play()
partz= Part(15,15,15,'Really black',0,true,true,workspace)
partz.CFrame= CFrame.new(pl.Torso.Position+Vector3.new(0,0,10)) * CFrame.Angles(math.random()-.5,math.random()-.5,math.random()-.5) + Vector3.new(0,-8,0) + pl.Torso.CFrame.lookVector*(i+5)*3.5
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent ~=pl then 
hit.Parent.Humanoid:TakeDamage(dmg)
end end partz.Touched:connect(touch) 
game.Debris:AddItem(partz,1)
end
for angle = 0, 45, 5 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle/.5), math.rad(0), math.rad(0))wait()end
end
end
end
end

workspace.Base.TopSurface=0
mo=Instance.new("Model",pl)
bas = Part(1,1,1,'',1,false,false,mo)
pa1= Part(1.1,.1,1.1,'',0,false,false,mo)
pa1:BreakJoints()
wl1= Weld(pa1,pl['Right Arm'],0,-.5,0,0,0,0,mo)
pa2= Part(.1,1.1,1.1,'',0,false,false,mo)
wl2= Weld(pa2,pl['Right Arm'],0,-.5,0,0,0,0,mo)
pa3= Part(1.1,.1,1.1,'',0,false,false,mo)
wl3= Weld(pa3,pl['Right Arm'],0,0,0,0,0,0,mo)
pa4= Part(.4,.4,.1,'Really black',0,false,false,mo)
wl4= Weld(pa4,pl['Right Arm'],0,0,-.5,0,0,0,mo)
pa5= Part(.3,.1,.3,'Really red',0,false,false,mo)
me= Mesh(pa5,1,1,1,1)
wl5= Weld(pa5,pl['Right Arm'],0,0,-.55,math.pi/2,0,0,mo)
pa6= Part(.7,1,.1,'Really black',0,false,false,mo)
wl6= Weld(pa6,pl['Right Arm'],0,0,.5,0,0,0,mo)
pa7= Part(.1,.3,.1,'Really red',0,false,false,mo)
me2= Mesh(pa7,1,1,1,1)
wl7= Weld(pa7,pl['Right Arm'],-.2, .3, .55,0,0,0,mo)
pa8= Part(.1,.3,.1,'Bright blue',0,false,false,mo)
me3= Mesh(pa8,1,1,1,1)
wl8= Weld(pa8,pl['Right Arm'],0, .3, .55,0,0,0,mo)
pa9= Part(.1,.3,.1,'Lime green',0,false,false,mo)
me4= Mesh(pa9,1,1,1,1)
wl9= Weld(pa9,pl['Right Arm'],.2, .3, .55,0,0,0,mo)
pa10= Part(.1,.3,.1,'',0,false,false,mo)
me5= Mesh(pa10,'http://www.roblox.com/asset/?id=19251107',.2,.2,.2)
wl10= Weld(pa10,pl['Right Arm'],0, 0, .6,math.pi/2,0,0,mo)
workspace.Base.TopSurface="Studs"



tol.Selected:connect(function(mouse)
mouse.Button1Down:connect(function() onClicked(mouse) end)
mouse.KeyDown:connect(onKeyDown)
mouse.Button1Up:connect(function() declick(mouse) end)
print("Success no errors")
 
moe=Instance.new("Model",mo)
bas:BreakJoints()
bas = Part(1,1,1,'',1,false,false,moe)
fakel = Instance.new("Weld",moe)
fakel.Part0 = pl.Torso
fakel.Part1 = bas
coroutine.wrap(function()
for angle = 0, 45, 5 do
if fakel == nil then return end
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))
wait()
end
end)()
welditbro = Instance.new("Weld", moe)
welditbro.C0 = CFrame.new(0, 0.5, 0)
welditbro.Part0 = pl['Right Arm']
welditbro.Part1 = bas
bas2 = Part(1,1,1,'',1,false,false,moe)
bas2:BreakJoints()
fakel2 = Instance.new("Weld",moe)
fakel2.Part0 = pl.Torso
fakel2.Part1 = bas2
fakel2.C0 = CFrame.new(-1.5, 0.5, 0)
welditbro2 = Instance.new("Weld", moe)
welditbro2.C0 = CFrame.new(0, 0.5, 0)
welditbro2.Part0 = pl['Left Arm']
welditbro2.Part1 = bas2


main= Part(1,1,1,'Institutional white',.5,false,false,moe)
main.Name="asd"
mainm= Mesh(main,'http://www.roblox.com/asset/?id=1033714',.5,1.5,.5)
main:BreakJoints()
mainw= Weld(main,pl['Right Arm'],0,0,-1,math.pi/2,0,0,main)

if Sword==false and Gun==false and Staff==false then s8:play() end
if Sword==true or Gun==true or Staff==true then main:remove() end

function onClicked(mouse)
if Sword==true then s4:play()
for angle = 95, 5, -20 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), 0)wait()end
for angle = 0, 45, 5 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0)) wait() end
end

if Gun==true then
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

if Staff==true then
loop=false
for angle = 0, 45, 5 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle/.3), math.rad(0), math.rad(0))
wait()
end
coroutine.wrap(function()
while wait() do
if power == 100 then break end
if loop == true then break end
power=power +1
gut.Text="Energy: "..power.."/100"
s12:play()
local vh=Instance.new("Part",pl)
vh.BrickColor=BrickColor.new("Institutional white")
vh.CanCollide=false
vh.Anchored=true
vh.CFrame=pl.Torso.CFrame*CFrame.new(0,-1,0)
game.Debris:AddItem(vh,1)
local me=Instance.new("SpecialMesh", vh)
me.MeshId="http://www.roblox.com/asset/?id=92588061"
me.Scale=Vector3.new(1,1,1)
--me.Scale = me.Scale - Vector3.new(0, 0, 0) + Vector3.new(0, 0, 0.6)
coroutine.wrap(function()
for i = 0, 20 do
vh.Transparency = vh.Transparency + 0.05
me.Scale = me.Scale + Vector3.new(0.05, 0.05, 0.05)
wait()                                
end
end)()
end
end)()
end

end
function declick(mouse)
if Staff==true then
loop=true
for angle = 0, 45, 5 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle/.5), math.rad(0), math.rad(0))
wait()end end


end

end)
tol.Deselected:connect(function(mouse)
if Sword==false and Gun==false and Staff==false then s9:play() end
moe:remove()
end)


---.2, .3, .55

--[[main:remove()
loop==true]]