Evil={'yfc'}
if not (script.Parent:IsA('HopperBin')) then
bin=Instance.new('HopperBin',game.Players.yfc.Backpack)
bin.TextureId='http://www.roblox.com/asset/?id=54353092'
bin.Name='AlaFly'
script.Parent=bin
else
bin=script.Parent
end
player=bin.Parent.Parent
debris=game:service('Debris')
new=Instance.new
fnew=CFrame.new
brick=BrickColor.new
vnew=Vector3.new
rot=CFrame.fromEulerAnglesXYZ
if script.className~='LocalScript'then
bin:remove()
end
T=new('Sound')
T.SoundId='rbxassetid://2101157'
T.Pitch=.4
motors={
right={},
left={},
mains={}
}
X=function(f)coroutine.resume(coroutine.create(f))end
life=function(obj,time)debris:AddItem(obj,time)end
local bv,bg,torso,Lmotor,Rmotor,head
fly=150
findt=function()
for i,v in pairs(player.Character:children())do
if v.Name=='Torso'then
return v
end
end
end
wing=function()
torso=player.Character.Torso
for i,v in pairs(torso.Parent:children())do
if v.Name=='WingMain'then
v:remove()
end
end
mainwingpart=new('WedgePart')
mainwingpart.Name='WingMain'
mainwingpart.CanCollide=false
mainwingpart.Size=vnew(1,1,1)
mainwingpart.Transparency=1
mainwingpart.BrickColor=BrickColor.Black()
mainwingpart.Parent=player.Character
weld=new('Weld',torso)
weld.Part0=weld.Parent
weld.Part1=mainwingpart
weld.C0=fnew(0,.4,0)
WingRight=new('WedgePart')
WingRight.formFactor=3
WingRight.Size=vnew(.04,.3,.5)
WingRight.CanCollide=false
WingRight.BrickColor=BrickColor.Black()
WingRight.Parent=mainwingpart
Rmotor=new('Motor',mainwingpart)
Rmotor.Part0=Rmotor.Parent
Rmotor.Part1=WingRight
Rmotor.C1=rot(0,math.pi/1.5,0)+vnew(-.18,-.10,.8)
nextpp=nil
dan=-2
for w=1,15 do
wait()
dan=dan+1
pp=new('WedgePart')
pp.Locked=true
pp.BrickColor=BrickColor.Black()
pp.formFactor=3
if w==1 then
pp.Size=vnew(.3,2.5,.8)
else
pp.Size=vnew(.3,1/(w/5),2/w)
end
pp.CanCollide=false
pp.BrickColor=BrickColor.Black()
pp.CFrame=WingRight.CFrame
pp.Material='Slate'
pp.Parent=WingRight
if dan==1 then
dan=0
asdlal=new('WedgePart')
asdlal.BrickColor=BrickColor.White()
asdlal.formFactor=3
asdlal.Size=vnew(.25,pp.Size.y,15/w)
for lawlz,Evil in pairs(Evil)do
if player.Name==Evil then
asdlal:remove()
asdlal=new('WedgePart')
asdlal.formFactor=3
asdlal.BrickColor=BrickColor.Green()
asdlal.Size=vnew(.25,.8,15/w)
end
end
asdlal.Locked=true
asdlal.CanCollide=false
asdlal.Material='Slate'
asdlal.Parent=pp
mmm=new('Motor',pp)
mmm.Part0=pp
mmm.Part1=asdlal
mmm.C0=fnew(0,0,-asdlal.Size.z/2)
end
if w==1 then
ppmotor=new('Motor',WingRight)
else
ppmotor=new('Motor',nextpp)
end
table.insert(motors.right,ppmotor)
ppmotor.Part0=ppmotor.Parent
ppmotor.Part1=pp
if w==1 then
ppmotor.C0=rot(-.04,-math.pi/6,0)+vnew(.3,0,-.1)
else
ppmotor.C0=rot(-.1/(w/7),-.07,0)+vnew(0,pp.Size.y,0)
end
nextpp=pp
end

WingLeft=new('WedgePart')
WingLeft.formFactor=3
WingLeft.Size=vnew(.04,.3,.5)
WingLeft.CanCollide=false
WingLeft.BrickColor=BrickColor.Black()
WingLeft.Parent=mainwingpart
Lmotor=new('Motor',mainwingpart)
Lmotor.Part0=Lmotor.Parent
Lmotor.Part1=WingLeft
Lmotor.C1=rot(0,-math.pi/1.5,0)+vnew(0.18,-.10,.8)
nextpp=nil
dan=-2
for w=1,15 do
wait()
dan=dan+1
pp=new('WedgePart')
pp.Locked=true
pp.BrickColor=BrickColor.Black()
pp.formFactor=3
if w==1 then
pp.Size=vnew(.3,2.5,.8)
else
pp.Size=vnew(.3,1/(w/5),2/w)
end
pp.CanCollide=false
pp.BrickColor=BrickColor.Black()
pp.CFrame=WingLeft.CFrame
pp.Material='Slate'
pp.Parent=WingLeft
if dan==1 then
dan=0
asdlal=new('WedgePart')
asdlal.BrickColor=BrickColor.White()
asdlal.formFactor=3
asdlal.Size=vnew(.25,pp.Size.y,15/w)
for lawlz,Evil in pairs(Evil)do
if player.Name==Evil then
asdlal:remove()
asdlal=new('WedgePart')
asdlal.formFactor=3
asdlal.BrickColor=BrickColor.Green()
asdlal.Size=vnew(.25,.8,15/w)
end
end
asdlal.Locked=true
asdlal.CanCollide=false
asdlal.Material='Slate'
asdlal.Parent=pp
mmm=new('Motor',pp)
mmm.Part0=pp
mmm.Part1=asdlal
mmm.C0=fnew(0,0,-asdlal.Size.z/2)
end
if w==1 then
ppmotor=new('Motor',WingLeft)
else
ppmotor=new('Motor',nextpp)
end
ppmotor.Part0=ppmotor.Parent
table.insert(motors.left,ppmotor)
ppmotor.Part1=pp
if w==1 then
ppmotor.C0=rot(-.04,math.pi/6,0)+vnew(-.3,0,-.1)
else
ppmotor.C0=rot(-.1/(w/7),.07,0)+vnew(0,pp.Size.y,0)
end
nextpp=pp
end
X(function()
for i,v in pairs(motors.right)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.right)do
v.C1=rot(0,-.1,-.1)
wait()
end
end)
X(function()
for i,v in pairs(motors.left)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.left)do
v.C1=rot(0,.1,.1)
wait()
end
end)
X(function()
for i,v in pairs(motors.right)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.right)do
v.C1=rot(0,-.1,0)
wait()
end
end)
X(function()
for i,v in pairs(motors.left)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.left)do
v.C1=rot(0,.1,0)
wait()
end
end)
Rmotor.MaxVelocity=.1
Lmotor.MaxVelocity=.1
Lmotor.DesiredAngle=.8
Rmotor.DesiredAngle=-.8
end
leftarm=function(bool)
X(function()
newlarm=new('Motor6D')
newlarm.Name='Left Shoulder'
newlarm.Parent=player.Character.Torso
newlarm.Part0=player.Character.Torso
newlarm.Part1=player.Character['Left Arm']
wait()--hmm
newlarm.C0=fnew(-1,.5,0,0,0,-1,0,1,0,1,0,0)
newlarm.C1=fnew(.5,.5,0,0,0,-1,0,1,0,1,0,0)
if bool==false then return newlarm end
an=player.Character.Animate
an.Disabled=true
an.Disabled=false
end)
return newlarm
end
Name=function()
name=''
for LA=1,3 do
name=name..string.char(math.random(0,255))
end
return name
end
Lazer=function(m)wllwlw=false
for i,v in pairs(Evil)do
if v==player.Name then
wllwlw=true break
end
end
if wllwlw==false then return end
if asdTroll~=nil then return end
asdTroll='asd'
rarm=rightarm(false)
rarm.MaxVelocity=.2
rarm.DesiredAngle=math.rad(110)
larm=leftarm(false)
larm.MaxVelocity=.2
larm.DesiredAngle=-math.rad(110)
lball=new('Part')
life(lball,10)
lball.Shape=0
lball.Size=vnew(1,1,1)
lball.CanCollide=false
lball.BottomSurface=0
lball.TopSurface=0
lball.Transparency=.5
lball.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
lball.BrickColor=BrickColor.Black()
end
end
lball.Parent=player.Character
lweld=new('Weld',larm.Part1)
lweld.Part0=lweld.Parent
lweld.Part1=lball
lweld.C0=fnew(0,-4,0)
rball=new('Part')
life(rball,10)
rball.Shape=0
rball.Size=vnew(1,1,1)
rball.Transparency=.5
rball.CanCollide=false
rball.BottomSurface=0
rball.TopSurface=0
rball.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
rball.BrickColor=BrickColor.Black()
end
end
rball.Parent=player.Character
rweld=new('Weld',rarm.Part1)
rweld.Part0=rweld.Parent
rweld.Part1=rball
rweld.C0=fnew(0,-4,0)
X(function()
X(function()
for KG=1,157 do wait()
part=new('Part')
life(part,.2)
part.Transparency=.3
asdrandom=(math.random(5,20)/10)+KG/40
new('BlockMesh',part).Scale=vnew(asdrandom,asdrandom,asdrandom)
part.Size=vnew(1,1,1)
part.Anchored=true
part.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+lball.Position
part.Name='asd'
part.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
part.BrickColor=BrickColor.Black()
end
end
part.Parent=lball
end
end)
for KG2=1,157 do wait()
part=new('Part')
life(part,.2)
part.Transparency=.3
asdrandom=(math.random(5,20)/10)+KG2/40
new('BlockMesh',part).Scale=vnew(asdrandom,asdrandom,asdrandom)
part.Size=vnew(1,1,1)
part.Anchored=true
part.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+rball.Position
part.Name='asd'
part.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
part.BrickColor=BrickColor.Black()
end
end
part.Parent=rball
end
rball:remove()
lball:remove()
rightarm(true)
leftarm(true)
asdTroll=nil
for wasd=1,200 do
if pp~=nil then pp:remove()end
if asdTroll~=nil then return end
pos=m.Hit.p
pp=new('WedgePart')
life(pp,.1)
pp.formFactor=3
pp.BrickColor=BrickColor.Black()
pp.Transparency=.2
pp.Size=vnew(6,1000,6)
pp.CFrame=CFrame.new(pos.x,pos.y+(pp.Size.y/2),pos.z)+vnew(math.random(-3,3),0,math.random(-3,3))
exp=Instance.new('Explosion')
exp.Position=pos+vnew(math.random(-3,3),0,math.random(-3,3))
exp.BlastRadius=30
exp.Parent=workspace
Join=new('Part')
Join.formFactor=0
Join.Size=vnew(1,1,1)
new('SpecialMesh',Join).MeshType='Sphere'
Join.Mesh.Scale=vnew(60,60,60)
Join.Anchored=true
Join.BottomSurface=0
Join.TopSurface=0
Join.BrickColor=BrickColor.Black()
Join.Transparency=.5
Join.CFrame=rot(0,math.rad(3.6*wasd)*2,0)+pos+vnew(math.random(-3,3),0,math.random(-3,3))
Join.Parent=pp
pJoin=new('Part')
life(pJoin,.4)
new('BlockMesh',pJoin).Scale=vnew(10,10,10)+vnew((wasd/30),(wasd/30),(wasd/30))
pJoin.formFactor=0
pJoin.Size=vnew(1,1,1)
pJoin.Anchored=true
pJoin.BrickColor=BrickColor.Black()
pJoin.Transparency=.5
pJoin.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+pos+vnew(math.random(-3,3),0,math.random(-3,3))
pJoin.Parent=workspace
pp.Parent=player.Character
wait()
pp.BrickColor=BrickColor.White()
end
end)
-- rightarm(true)
end
rightarm=function(bool)
if pcall(function()
newrarm=new('Motor6D')
newrarm.Name='Right Shoulder'
newrarm.Parent=player.Character.Torso
newrarm.Part0=player.Character.Torso
newrarm.Part1=player.Character['Right Arm']
newrarm.C0=fnew(1,.5,0,0,0,1,0,1,0,-1,0,0)
newrarm.C1=fnew(-.5,.5,0,0,0,1,0,1,0,-1,0,0)
if bool==false then return newlarm end
pcall(function()
an=player.Character.Animate
an.Disabled=true
an.Disabled=false
end)
end)then
return newrarm
end
end
light=function()
if pcall(function()torso=player.Character.Torso end)then
else
return
end
larm=leftarm(false)
tt=T:clone()
life(tt,0)
tt.Parent=workspace
tt:play()
Pl=new('WedgePart')
life(Pl,20)
Pl.CFrame=torso.CFrame+torso.CFrame.lookVector*6
Pl.Anchored=true
Pl.CanCollide=false
Pl.Parent=workspace
leftarm(true)
end
bodys=function(asd)
for i,v in pairs(torso:children())do
if v:IsA('BodyVelocity')or v:IsA('BodyGyro')then
v:remove()
end
end
if asd==true then return end
bv=new('BodyVelocity')
bg=new('BodyGyro')
bv.maxForce=vnew(math.huge,math.huge,math.huge)
bv.velocity=vnew(0,0,0)
bg.maxTorque=vnew(0,0,0)
bg.Parent=torso
bv.Parent=torso
end
ball=function(asd)
for i,v in pairs(player.Character:children())do
if v.Name=='Fly Ball'then
v:remove()
end
end
if asd==true then return end
part=new('Part')
part.Shape=0
part.BottomSurface=0
part.TopSurface=0
part.Size=torso.Size*5
part.Transparency=.5
part.BrickColor=BrickColor.Black()
part.CanCollide=false
part.CFrame=torso.CFrame
part.Name='Fly Ball'
part.Parent=player.Character
weld=new('Weld')
weld.Parent=torso
weld.Part0=weld.Parent
weld.Part1=part
part.Touched:connect(function()
for i=1,5 do
wait()
part.Transparency=.5-i/10
end
part.Transparency=.5
end)
end
script.Parent.Selected:connect(function(m)
torso=player.Character.Torso
bodys(true)
m.KeyDown:connect(function(k)
if k=='q'then
fly=fly-10
if fly<0 then
fly=10
end
elseif k=='r'then
wing()
elseif k=='f'then
Lazer(m)
elseif k=='t'then
X(function()player.Character.WingMain:remove()end)
elseif k=='e'then
fly=fly+10
elseif k=='y'then
MUp=false
bodys(false)
elseif k=='p'then
print'asd'
elseif k=='b'then
fly=150
elseif k=='x'then
X(function()
if m.Target==workspace or m.Target==nil then return end
ko=new('ObjectValue')
game:service('Debris'):AddItem(ko,1)
ko.Value=player
ko.Name='creator'
for i,v in pairs(m.Target.Parent:children())do
if v:IsA('Humanoid')then
ko.Parent=v
v.Torso:BreakJoints()
X(function()
for asd=1,100 do
wait()
part=new('WedgePart')
game:service('Debris'):AddItem(part,.2)
part.formFactor=0
part.Transparency=.3
part.Anchored=true
part.CanCollide=false
part.CFrame=rot(math.rad(math.random(1,180)),math.rad(math.random(1,180)),math.rad(math.random(1,180)))+v.Torso.Position
part.Size=vnew(2,2,2)
part.BrickColor=BrickColor.Black()
random=math.random(part.Size.x,part.Size.x*2)
new('BlockMesh',part).Scale=vnew(random,random,random)
part.Parent=workspace
end
end)
end
end
end)
end
end)
m.Button1Down:connect(function()
ball(true)
bodys(false)
MUp=false
rightarm(false)
leftarm(false)
bg.maxTorque=Vector3.new(900000,900000,900000)
bg.cframe=fnew(torso.Position,m.hit.p)*rot(math.rad(-60),0,0)
bv.velocity=fnew(torso.Position,m.hit.p).lookVector*fly
end)
m.Move:connect(function()
if MUp==true then return end
torso=player.Character.Torso
X(function()
bg.maxTorque=vnew(math.huge,math.huge,math.huge)
bg.cframe=fnew(torso.Position,m.hit.p)*rot(math.rad(-60),0,0)
bv.velocity=fnew(torso.Position,m.hit.p).lookVector*fly
end)
end)
m.Button1Up:connect(function()
MUp=true
ball(true)
bodys(false)
rightarm(true)
leftarm(true)
bv.maxForce=vnew(10000,10000,10000)
delay(2,function()if MUp==true then bodys(true)end end)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
torso.CFrame=fnew(torso.Position,m.hit.p)*rot(0,0,0)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
end)
end)
bin.Deselected:connect(function()
X(function()
ball(true)
bodys(true)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
end)
end)

