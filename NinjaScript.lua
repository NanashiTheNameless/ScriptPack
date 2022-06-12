Player=game.Players.LocalPlayer
Character=Player.Character
Head=Character.Head
Torso=Character.Torso
HopperBin=Instance.new("HopperBin",Player.Backpack)
HopperBin.Name="Black Leg Style"
M=Instance.new("Model",Character)
M.Name="Parts & Welds"
C=function(f)
coroutine.resume(coroutine.create(function()
f()
end))
end
Weld=function(Part0,Part1,x,y,z,rx,ry,rz)
W=Instance.new("Weld",Part0)
W.Part0=W.Parent
W.Part1=Part1
W.C1=CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return W
end
Part=function(Bool,BoolB,sx,sy,sz,x,y,z,Color,T)
P=Instance.new("Part",M)
P.Friction=0
P.TopSurface="Smooth"
P.BottomSurface="Smooth"
P.Transparency=T
P.Anchored=Bool
P.CanCollide=BoolB
P.BrickColor=BrickColor.new(Color)
P.formFactor="Custom"
P.Size=Vector3.new(sx,sy,sz)
P.CFrame=CFrame.new(x,y,z)
return P
end
BallMesh=function(Parent,x,y,z)
SM=Instance.new("SpecialMesh",Parent)
SM.MeshType="Sphere"
SM.Scale=Vector3.new(x,y,z)
end
Compute=function(Position1,Position2)
NewPosition=Vector3.new(Position2.x,Position1.y,Position2.z)
return CFrame.new(Position1,NewPosition)
end
Chat=function(Msg)
game:GetService("Chat"):Chat(Head,Msg,"Red")
end
Arm={Character["Right Arm"],Character["Left Arm"]}
Leg={Character["Right Leg"],Character["Left Leg"]}
ArmP=nil
LegP=nil
ArmW=nil
LegW=nil
Debounce=true
DebounceB=false
Trail=function(Object)
C(function()
while DebounceB do
Old=Object.Position
wait()
New=Object.Position
if Object==New then return end
Magnitude=(Old-New).Magnitude
Distance=(Old+New)/2
Ray=Part(true,false,.1,.1,Magnitude+.2,0,0,0,Object.BrickColor.Color,.2)
Ray.CFrame=CFrame.new(Distance,Old)*CFrame.Angles(0,0,math.rad(90))
C(function()
for i,v in pairs(M:GetChildren()) do
if v==Ray then
for i=0,1,.2 do
wait()
v.Transparency=Vector3.new(i,i,Magnitude)
end
v:Destroy()
end
end
end)
end
end)
end

CollierShot=function(Mouse)
DebounceB=true
Trail(LegEP[1])
BG=Instance.new("BodyGyro",Torso)
BG.P=BG.P*5000
BG.cframe=Torso.CFrame*CFrame.Angles(math.rad(180),0,0)
BP=Instance.new("BodyPosition",Torso)
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=Mouse.Hit.p
BAV=Instance.new("BodyAngularVelocity",Torso)
BAV.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BAV.angularvelocity=Vector3.new(0,30,0)
for i=1,9 do
wait()
ArmW[1].C1=CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-20*i),0,0)
ArmW[2].C1=CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-20*i),0,0)
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(0,0,math.rad(10*i))
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(0,0,math.rad(-10*i))
end
for i=1,25 do
BP.position=BP.position+Vector3.new(math.random(-5,5),0,math.random(-5,5))
wait(.1)
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(0,0,math.rad(45))
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(0,0,math.rad(-90))
wait(.1)
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(0,0,math.rad(90))
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(0,0,math.rad(-45))
end
for i=1,9 do
wait()
ArmW[1].C1=CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-180-(-20*i)),0,0)
ArmW[2].C1=CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-180-(-20*i)),0,0)
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(0,0,math.rad(90-10*i))
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(0,0,math.rad((-90)-(-10*i)))
end
BP:Destroy()
BG:Destroy()
BAV:Destroy()
DebounceB=false
end

PartyTable=function(Mouse)
DebounceB=true
Trail(LegEP[1])
BG=Instance.new("BodyGyro",Torso)
BG.P=BG.P*5000
BG.cframe=Torso.CFrame*CFrame.Angles(math.rad(180),0,0)
BP=Instance.new("BodyPosition",Torso)
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=Mouse.Hit.p
BAV=Instance.new("BodyAngularVelocity",Torso)
BAV.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BAV.angularvelocity=Vector3.new(0,30,0)
for i=1,9 do
wait()
ArmW[1].C1=CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-20*i),0,0)
ArmW[2].C1=CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-20*i),0,0)
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(0,0,math.rad(10*i))
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(0,0,math.rad(-10*i))
end
for i=1,25 do
wait(.1)
BP.position=BP.position+Vector3.new(math.random(-5,5),0,math.random(-5,5))
end
for i=1,9 do
wait()
ArmW[1].C1=CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-180-(-20*i)),0,0)
ArmW[2].C1=CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-180-(-20*i)),0,0)
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(0,0,math.rad(90-10*i))
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(0,0,math.rad((-90)-(-10*i)))
end
BP:Destroy()
BG:Destroy()
BAV:Destroy()
DebounceB=false
end

MuttonShot=function(Mouse)
DebounceB=true
Trail(LegEP[1])
Com=Compute(Character.Torso.Position,Mouse.Hit.p)
BG=Instance.new("BodyGyro",Torso)
BG.P=BG.P*5000
BG.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BG.cframe=Com*CFrame.Angles(0,math.rad(90),0)
BP=Instance.new("BodyPosition",Torso)
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=Mouse.Hit.p+Vector3.new(0,2,0)
for i=1,9 do
wait()
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(0,0,math.rad(10*i))
end
wait(2)
for i=1,9 do
wait()
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(0,0,math.rad(90-10*i))
end
BG:Destroy()
BP:Destroy()
DebounceB=false
end

AntiMannerKickCourse=function(Mouse)
DebounceB=true
Trail(LegEP[1])
Com=Compute(Character.Torso.Position,Mouse.Hit.p)
BG=Instance.new("BodyGyro",Torso)
BG.P=BG.P*5000
BG.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BG.cframe=Mouse.Hit*CFrame.Angles(0,math.rad(90),math.rad(90))
BP=Instance.new("BodyPosition",Torso)
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=Mouse.Hit.p+Vector3.new(0,2,0)
BAV=Instance.new("BodyAngularVelocity",Torso)
BAV.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BAV.angularvelocity=Vector3.new(0,30,0)
LegW[1].C1=CFrame.new(.5,-1.5,0)
LegW[2].C1=CFrame.new(-.5,-1,0)
wait(2)
LegW[1].C1=CFrame.new(.5,-1.5,0)
LegW[2].C1=CFrame.new(-.5,-1.5,0)
BAV:Destroy()
BG:Destroy()
BP:Destroy()
DebounceB=false
end

DiableJambe=function()
DebounceB=true
Trail(LegEP[1])
BP=Instance.new("BodyPosition",Torso)
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=Torso.Position
BAV=Instance.new("BodyAngularVelocity",Torso)
BAV.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BAV.angularvelocity=Vector3.new(0,30,0)
for i=1,9 do
wait()
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(math.rad(5*i),0,0)
LegW[1].C1=CFrame.new(.5,-1.5,0)
end
for i=1,50 do
Fire=Instance.new("Fire",LegEP[1])
Fire.Size=2
Fire.Heat=0
end
LegEP[1].BrickColor=BrickColor.new("Bright orange")
Character.Humanoid.WalkSpeed=Character.Humanoid.WalkSpeed*2
wait(5)
for i=1,9 do
wait()
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(math.rad(45-5*i),0,0)
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(math.rad(5*i),0,0)
end
BP:Destroy()
BAV:Destroy()
DebounceB=false
end

Concasse=function(Mouse)
DebounceB=true
Trail(LegEP[1])
Com=Compute(Character.Torso.Position,Mouse.Hit.p)
BG=Instance.new("BodyGyro",Torso)
BG.P=BG.P*5000
BG.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BG.cframe=Com
BP=Instance.new("BodyPosition",Torso)
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=Mouse.Hit.p+Vector3.new(0,20,0)
BAV=Instance.new("BodyAngularVelocity",Torso)
BAV.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BAV.angularvelocity=Vector3.new(30,0,0)
for i=1,9 do
wait()
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(math.rad(10*i),0,0)
end
wait(.1)
BP.position=BP.position-Vector3.new(0,20,0)
for i=1,9 do
wait()
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(math.rad(90-10*i),0,0)
end
BG:Destroy()
BP:Destroy()
BAV:Destroy()
DebounceB=false
end

ViscousShot=function(Mouse)
DebounceB=true
Trail(LegEP[1])
Trail(LegEP[2])
Com=Compute(Character.Torso.Position,Mouse.Hit.p)
BG=Instance.new("BodyGyro",Torso)
BG.P=BG.P*5000
BG.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BG.cframe=Com*CFrame.Angles(0,math.rad(90),math.rad(90))
BP=Instance.new("BodyPosition",Torso)
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=Mouse.Hit.p+Vector3.new(0,2,0)
for i=1,25 do
wait(.1)
LegW[1].C1=CFrame.new(.5,-1,0)
LegW[2].C1=CFrame.new(-.5,-1.5,0)
wait(.1)
LegW[1].C1=CFrame.new(.5,-1.5,0)
LegW[2].C1=CFrame.new(-.5,-1,0)
end
LegW[1].C1=CFrame.new(.5,-1.5,0)
LegW[2].C1=CFrame.new(-.5,-1.5,0)
BG:Destroy()
BP:Destroy()
DebounceB=false
end

HellMemories=function()
DebounceB=true
Chat("HeLL MEMORIES!")
Mode=Instance.new("Model",Workspace)
Mode.Name="H3ll Fire"
BG=Instance.new("BodyGyro",Torso)
BG.P=BG.P*5000
BG.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BP=Instance.new("BodyPosition",Torso)
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=Torso.Position+Vector3.new(0,10,0)
for i=1,9 do
wait()
ArmW[1].C1=CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(25*i),0,math.rad(5*i))
ArmW[2].C1=CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(25*i),0,math.rad(-5*i))
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(math.rad(-5*i),0,math.rad(5*i))
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(math.rad(-5*i),0,math.rad(-5*i))
end
for i=1,35 do
wait()
Ball=Part(true,false,1,1,1,0,0,0,"Bright orange",.8)
Ball.Parent=Mode
Ball.CFrame=Torso.CFrame
Mesh=BallMesh(Ball,i*20,i*20,i*20)
end
for i,v in pairs(game.Players:GetPlayers()) do
if v~=Player and v~=nil then 
v.Character:BreakJoints()
end end
for i,v in pairs(Mode:GetChildren()) do
wait()
v:Destroy()
end
for i=1,9 do
wait()
ArmW[1].C1=CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(225-25*i),0,math.rad(45-5*i))
ArmW[2].C1=CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(225-25*i),0,math.rad(-45-(-5*i)))
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(math.rad(-45-(-5*i)),0,math.rad(45-5*i))
LegW[2].C1=CFrame.new(-.5,-1.5,0)*CFrame.Angles(math.rad(-45-(-5*i)),0,math.rad(-45-(-5*i)))
end
Mode:Destroy()
BG:Destroy()
BP:Destroy()
DebounceB=false
end

function KeyDown(Key,Mouse)
Key:lower()
if Debounce==false then return end
if Key=="q" then
Debounce=false
LegEP[1].Touched:connect(LegTouched)
LegEP[2].Touched:connect(LegTouched)
PartyTable(Mouse)
Debounce=true
end
if Key=="e" then
Debounce=false
LegEP[1].Touched:connect(LegTouched)
MuttonShot(Mouse)
Debounce=true
end
if Key=="r" then
Debounce=false
LegEP[1].Touched:connect(LegTouched)
AntiMannerKickCourse(Mouse)
Debounce=true
end
if Key=="t" then
Debounce=false
LegEP[1].Touched:connect(LegTouched)
DiableJambe(Mouse)
Debounce=true
end
if Key=="y" then
Debounce=false
LegEP[1].Touched:connect(LegTouched)
Concasse(Mouse)
Debounce=true
end
if Key=="u" then
Debounce=false
LegEP[1].Touched:connect(LegTouched)
LegEP[2].Touched:connect(LegTouched)
ViscousShot(Mouse)
Debounce=true
end
if Key=="f" then
Debounce=false
HellMemories(Mouse)
Debounce=true
end
if Key=="g" then
Debounce=false
CollierShot(Mouse)
Debounce=true
end
end

function LegTouched(Hit)
Humanoid=Hit.Parent:FindFirstChild("Humanoid")
TorsoH=Hit.Parent:FindFirstChild("Torso")
Deb=false
if Deb==false then
if Humanoid then
Deb=true
Humanoid.Sit=true
TorsoH.Velocity=TorsoH.CFrame.lookVector*-200
D=math.random(.5,5)
Humanoid:TakeDamage(D)
Damage=Instance.new("Model",Workspace)
Damage.Name=math.floor(D)
Head=Part(true,false,.8,.2,.8,0,0,0,"Bright red",.2)
Head.CFrame=Hit.CFrame
Head.Parent=Damage
Head.Name="Head"
FakeH=Instance.new("Humanoid",Damage)
FakeH.Name="EPICFAILNOOB"
FakeH.Health=0
FakeH.MaxHealth=0
for i,v in pairs(Workspace:GetChildren()) do
if v==Damage then
wait(1)
v:Destroy()
end
end
wait(1)
TorsoH.Velocity=TorsoH.CFrame.lookVector*0
Deb=false
end
end
end

function Selected(Mouse)
HopperBin:Remove()
Character.Humanoid.MaxHealth=math.huge
LegEP={Part(false,false,1,.2,1,0,0,0,"Institutional white",1),Part
(false,false,1,.2,1,0,0,0,"Institutional white",1)}
ArmP={Part(false,false,1,1,1,0,0,0,"Institutional white",1),Part
(false,true,1,1,1,0,0,0,"Institutional white",1)}
LegP={Part(false,false,1,1,1,0,0,0,"Institutional white",1),Part
(false,false,1,1,1,0,0,0,"Institutional white",1)}
ArmW={Weld(ArmP[1],Torso,1.5,.5,0,0,0,0),Weld(ArmP[2],Torso,-1.5,.5,0,0,0,0)}
LegW={Weld(LegP[1],Torso,.5,-1.5,0,0,0,0),Weld(LegP[2],Torso,-.5,-1.5,0,0,0,0)}
OtherWeld={Weld(LegEP[1],Leg[1],0,-1.2,0,0,0,0),
Weld(LegEP[2],Leg[2],0,-1.2,0,0,0,0),
Weld(Arm[1],ArmP[1],0,-.5,0,0,0,0),
Weld(Arm[2],ArmP[2],0,-.5,0,0,0,0),
Weld(Leg[1],LegP[1],0,-.5,0,0,0,0),
Weld(Leg[2],LegP[2],0,-.5,0,0,0,0)}
for i=1,9 do
wait()
ArmW[1].C1=CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(15*i),0,math.rad(-5*i))
ArmW[2].C1=CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(15*i),0,math.rad(5*i))
LegW[1].C1=CFrame.new(.5,-1.5,0)*CFrame.Angles(math.rad(5*i),0,0)
end
Mouse.KeyDown:connect(function(Key) KeyDown(Key,Mouse) end)
end

HopperBin.Selected:connect(Selected)
