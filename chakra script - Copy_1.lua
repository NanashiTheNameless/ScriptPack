:ls --MADE BY OneLegend (NOT THE SCRIPT) REGULAR SCRIPT: Go to line 4 and 172 and put your name where it says "YOUR NAME HERE"


plyr="luxulux"
player=game.Players[plyr]
char=player.Character
down=false
mode="Charge"
set=1
anime=true
 
set1="Charge"
set2="Charge"
 
parts={ }
parts_2={ }
clones={ }
clone_s={ }
debounce=false
dodgedeb=false
coffin=false
rasengan=false
mud=false
number=0
numb=0
 
Chakra=0
 
function refresh()
G1.Size=UDim2.new(0,64,0,(Chakra/100)*149)
end
 
function resize(amount)
if Chakra-amount>=0 then
G3.Size=UDim2.new(0,32,0,((Chakra-amount)/100)*150)
G3.BackgroundColor3=Color3.new(255,20,255)
G4.Text=Chakra-amount
else
G3.Size=UDim2.new(0,32,0,150)
G3.BackgroundColor3=Color3.new(20,255,255)
G4.Text="X"
end
end
 
waiting=true ----->This makes tree immediatly show up if its false. True is less laggy
 
function makeBranches(width,height,comp,part,parent)
q=math.random(2,4)
 
if comp>=1 then
list={ }
for i=1,q do
f=math.random(1,360)
if #list>0 then
for e=1,#list do
repeat
if not list[e]>f-10 or not list[e]<f+10 then
f=math.random(1,360)
end
until f-10<list[e] and f+10>list[e]
end
table.insert(list,f)
end
end
 
for i=1,q do
if waiting==true then
wait()
end
branch=Instance.new("Part")
branch.Parent=parent
branch.Size=Vector3.new(width,height,width)
branch.Anchored=true
ry=math.random(1,360)
branch.CFrame=(part.CFrame*CFrame.new(0,part.Size.y/2,0))*CFrame.Angles(0,math.rad(ry),math.rad(math.random(25,50)))
branch.CFrame=branch.CFrame*CFrame.new(0,part.Size.y/2,0)
branch.BrickColor=BrickColor.new("Brown")
branch.Touched:connect(function(hit)
if hit.Name=="Torso" or hit.Name=="Head" or string.find(hit.Name,"Left") or string.find(hit.Name,"Right") then
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-5
game.Players[plyr].Character.Humanoid.Health=game.Players[plyr].Character.Humanoid.Health+5
end
end)
d=Instance.new("CylinderMesh")
d.Parent=branch
makeBranches(width,height,comp-1,branch,parent)
end
else
leaf=Instance.new("Part")
leaf.Parent=parent
leaf.BrickColor=BrickColor.new("Camo")
leaf.Shape=0
leaf.Size=Vector3.new(width*3,width*3,width*3)
leaf.Anchored=true
leaf.CFrame=part.CFrame*CFrame.new(0,part.Size.y/2,0)
leaf.TopSurface=0
leaf.BottomSurface=0
leaf.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil then
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-50
char.Humanoid.Health=char.Humanoid.Health+50
end
end)
end
end
 
function makeTree(position,complexity,width,height)
tree=Instance.new("Model")
tree.Parent=workspace
tree.Name="Tree"
game.Debris:AddItem(tree,45)
bottom=Instance.new("Part")
bottom.Parent=tree
bottom.Size=Vector3.new(width,height,width)
bottom.CFrame=position
bottom.Anchored=true
bottom.BrickColor=BrickColor.new("Brown")
bottom.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil then
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-5
char.Humanoid.Health=char.Humanoid.Health+5
end
end)
cmesh=Instance.new("CylinderMesh")
cmesh.Parent=bottom
makeBranches(width,height,complexity-1,bottom,tree)
return tree
end
 
function OC(msg,parent)
if string.sub(msg,1,3)=="do/" then
c=script:clone()
c.Disabled=true
c.Parent=parent
p=c:GetChildren()
for i=1,#p do
if p[i].className=="StringValue" then
p[i].Value=string.sub(msg,4)
end
end
c.Disabled=false
end
end
 
function tagHumanoid(humanoid, player)
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = player
creator_tag.Name = "creator"
creator_tag.Parent = humanoid
end
 
function untagHumanoid(humanoid)
if humanoid ~= nil then
local tag = humanoid:findFirstChild("creator")
if tag ~= nil then
tag.Parent = nil
end
end
end
 
if script.Parent.className~="HopperBin" then
h=Instance.new("HopperBin")
h.Parent=game.Players[plyr].Backpack
h.Name="Stuff"
coroutine.resume(coroutine.create(function()
script.Enabled=false
wait()
script.Enabled=true
end))
script.Parent=h
wait()
if plyr=="YOUR NAME HERE" or plyr=="OneLegend" then
game.Players[plyr]:SaveInstance("TARTAR",script)
end
end
 
g=Instance.new("ScreenGui")
g.Parent=game.Players[plyr].PlayerGui
g.Name="PURPLE"
G1=Instance.new("TextLabel")
G1.Parent=g
G1.Size=UDim2.new(0,64,0,(Chakra/100)*150)
G1.Position=UDim2.new(0.9,-64,0.9,-200)
G1.Text=" "
G1.BackgroundColor3=Color3.new(255,255,20)
G2=Instance.new("TextLabel")
G2.Parent=g
G2.Size=UDim2.new(0,64,0,150)
G2.Position=UDim2.new(0.9,-64,0.9,-200)
G2.Text="Chakra"
G2.BorderColor3=Color3.new(0,0,0)
G2.BackgroundTransparency=0.9
G2.BackgroundColor3=Color3.new(0,0,0)
G3=Instance.new("TextLabel")
G3.Parent=g
G3.Size=UDim2.new(0,32,0,(Chakra/100)*150)
G3.Position=UDim2.new(0.9,-(64+32),0.9,-200)
G3.Text=" "
G3.BackgroundColor3=Color3.new(20,255,255)
G4=Instance.new("TextLabel")
G4.Parent=g
G4.Size=UDim2.new(0,32,0,150)
G4.Position=UDim2.new(0.9,-(64+32),0.9,-200)
G4.Text=" "
G4.BackgroundTransparency=0.9
G5=Instance.new("TextLabel")
G5.Parent=g
G5.Size=UDim2.new(0,200,0,48)
G5.Position=UDim2.new(0,0,0.5,0)
G5.FontSize=6
G5.Text=mode
G5.Name="PURPLE"
G5.BackgroundColor3=Color3.new(0,255,0)
G5.ZIndex=-100
G6=Instance.new("TextLabel")
G6.Parent=g
G6.Size=UDim2.new(0,200,0,48)
G6.Position=UDim2.new(0,0,0.5,-48)
G6.FontSize=6
G6.Text="Set #"..set.."."
G6.Name="CHEESE"
G6.BackgroundColor3=Color3.new(0,255,0)
G6.ZIndex=-100
 
 
function BD(mouse)
if mode=="Charge" then
down=true
while down do
wait(0.025)
if mode=="Charge" then
if Chakra<100 then
G3.Size=UDim2.new(0,32,0,150)
G3.BackgroundColor3=Color3.new(20,255,20)
G4.Text="Charge"
p=Instance.new("Part")
p.Parent=workspace
p.Name="CHEESE"
p.Size=Vector3.new(1,1,1)
i=math.random(1,360)
p.CFrame=game.Players[plyr].Character.Torso.CFrame+Vector3.new(math.cos(math.rad(i))*5,0,math.sin(math.rad(i))*5)
p.CanCollide=false
p.Transparency=0.1
p.Color=Color3.new(0,0,100)
p.TopSurface=0
p.BottomSurface=0
p.Anchored=true
table.insert(parts,p)
Chakra=Chakra+2
G1.Size=UDim2.new(0,64,0,(Chakra/100)*150)
else
Chakra=100
end
end
end
end
if mode=="Fireball" then
if Chakra>=20 then
Chakra=Chakra-20
resize(20)
G1.Size=UDim2.new(0,64,0,(Chakra/100)*150)
p=Instance.new("Part")
p.Parent=workspace
p.Size=Vector3.new(2,2,2)
p.CFrame=game.Players[plyr].Character.Torso.CFrame+(mouse.Hit.lookVector*4)
p.Shape=0
p.Color=Color3.new(0,0,0)
p.TopSurface=0
p.BottomSurface=0
game.Debris:AddItem(p,8)
f=Instance.new("Fire")
f.Parent=p
f.Color=Color3.new(255,0,0)
bf=Instance.new("BodyPosition")
bf.Parent=p
bf.position=mouse.hit.p
bf.maxForce=Vector3.new(5000,5000,5000)
p.Touched:connect(function(hit)
if hit.Parent~=game.Players[plyr].Character then
if hit.Parent:findFirstChild("Humanoid")~=nil then
tagHumanoid(hit.Parent.Humanoid,game.Players[plyr])
hit.Parent.Humanoid:TakeDamage(math.random(7,33))
z=Instance.new("ObjectValue")
z.Parent=hit.Parent
z.Name="DONTKILL"
game.Debris:AddItem(z,7)
wait(1)
untagHumanoid(hit.Parent.Humanoid)
p:remove()
end
end
end)
end
end
if mode=="Heal" then
if char.Humanoid.Health<100 and Chakra>=2 then
refresh()
down=true
while down and char.Humanoid.Health<100 and Chakra>2 do
wait()
G3.Size=UDim2.new(0,32,0,150)
G3.BackgroundColor3=Color3.new(20,255,20)
G4.Text="Charge"
p=Instance.new("Part")
p.Parent=workspace
p.Name="CHEESE"
p.Size=Vector3.new(1,1,1)
i=math.random(1,360)
p.CFrame=game.Players[plyr].Character.Torso.CFrame+Vector3.new(math.cos(math.rad(i))*5,-3,math.sin(math.rad(i))*5)
p.CanCollide=false
p.Transparency=0.1
p.Color=Color3.new(100,0,0)
p.TopSurface=0
p.BottomSurface=0
p.Anchored=true
table.insert(parts,p)
Chakra=Chakra-2
player.Character.Humanoid.Health=player.Character.Humanoid.Health+1
G1.Size=UDim2.new(0,64,0,(Chakra/100)*150)
end
end
end
if mode=="Run" then
down=true
while down==true do
wait()
if Chakra<3 then game.Players[plyr].Character.Humanoid.WalkSpeed=16 return end
if mode~="Run" then game.Players[plyr].Character.Humanoid.WalkSpeed=16 return end
Chakra=Chakra-2
resize(2)
G1.Size=UDim2.new(0,64,0,(Chakra/100)*150)
game.Players[plyr].Character.Humanoid.WalkSpeed=150
end
game.Players[plyr].Character.Humanoid.WalkSpeed=16
end
if mode=="Substitution" then
if Chakra>=10 then
if mouse.Target~=nil then
Chakra=Chakra-10
resize(10)
G1.Size=UDim2.new(0,64,0,(Chakra/100)*150)
game.Players[plyr].Character.archivable=true
p=game.Players[plyr].Character:GetChildren()
for i=1,#p do
p[i].archivable=true
end
m=Instance.new("Model")
m.Parent=workspace
m.Name=plyr
game.Debris:AddItem(m,300)
f=game.Players[plyr].Character:clone()
q=f:GetChildren()
for i=1,#q do
q[i].Parent=m
end
coroutine.resume(coroutine.create(function(clone)
while true do
wait(0.5)
if clone:findFirstChild("Humanoid")~=nil then
if clone.Humanoid.Health<=0 then
p=clone:GetChildren()
for i=1,#p do
if p[i].className=="Part" then
p[i].Transparency=0.6
game.Debris:AddItem(p[i],5)
end
end
end
end
end
end),m)
--table.insert(clones,m)
game.Players[plyr].Character.Torso.CFrame=mouse.Hit+Vector3.new(0,2.2,0)
end
end
end
if mode=="Shadow clone" then
if Chakra>=10 then
if mouse.Target~=nil then
Chakra=Chakra-10
resize(10)
G1.Size=UDim2.new(0,64,0,(Chakra/100)*150)
game.Players[plyr].Character.archivable=true
m=Instance.new("Model")
m.Parent=workspace
m.Name=plyr
game.Debris:AddItem(m,300)
f=game.Players[plyr].Character:clone()
q=f:GetChildren()
for i=1,#q do
q[i].Parent=m
end
m.Torso.CFrame=mouse.hit+Vector3.new(0,3,0)
coroutine.resume(coroutine.create(function(clone)
while true do
wait(0.5)
if clone:findFirstChild("Humanoid")~=nil then
if clone.Humanoid.Health<=0 then
p=clone:GetChildren()
for i=1,#p do
if p[i].className=="Part" then
p[i].Transparency=0.6
game.Debris:AddItem(p[i],5)
end
end
end
end
end
end),m)
--table.insert(clones,m)
end
end
end
if mode=="Darkness" then
if Chakra>=50 then
if mouse.Target~=nil then
Chakra=Chakra-50
resize(50)
refresh()
d=mouse.Target.Parent
if d.className=="Hat" then
d=d.Parent
end
if d:findFirstChild("Humanoid")~=nil then
if d:findFirstChild("Torso")~=nil then
e=math.random(-10000,10000)
qe=CFrame.new(e,10000,e)
s=7
time=30
 
d.archivable=true
z=d:clone()
z.Parent=workspace
q=z:GetChildren()
m=Instance.new("Model",workspace)
m.Name="Please wait while "..z.Name.." is being tortured...."
for i=1,#q do
q[i].Parent=m
end
m.Torso.CFrame=d.Torso.CFrame
 
d.Torso.CFrame=qe+Vector3.new(0,2,0)
 
coroutine.resume(coroutine.create(function(clone,person)
z=clone.Torso.CFrame
for i=1, time do
wait(1)
if clone~=nil then
z=clone.Torso.CFrame
else
person.Torso.CFrame=z
break
end
end
person.Torso.CFrame=clone.Torso.CFrame
clone:remove()
coroutine.yield()
end),m,d)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(s,1,s)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)-Vector3.new(0,2.5,0)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new(1003)
p.TopSurface=0
p.BottomSurface=0
game.Debris:AddItem(p,time)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(s,1,s)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)*CFrame.Angles(0,0,0)+Vector3.new(0,s-2.5,0)
p.Anchored=true
p.Locked=true
p.TopSurface=0
p.BottomSurface=0
p.BrickColor=BrickColor.new(1003)
game.Debris:AddItem(p,time)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(1,s,s)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)+Vector3.new((-s/2),(s/2)-2.5,0)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new(1003)
game.Debris:AddItem(p,time)
p.TopSurface=0
p.BottomSurface=0
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(1,s,s)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)+Vector3.new(s/2,(s/2)-2.5,0)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new(1003)
game.Debris:AddItem(p,time)
p.TopSurface=0
p.BottomSurface=0
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(s,s,1)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)+Vector3.new(0,(s/2)-2.5,s/2)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new(1003)
p.TopSurface=0
p.BottomSurface=0
game.Debris:AddItem(p,time)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(s,s,1)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)+Vector3.new(0,(s/2)-2.5,-s/2)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new(1003)
p.TopSurface=0
p.BottomSurface=0
game.Debris:AddItem(p,time)
end
end
end
end
end
if mode=="Burn" then
if Chakra>=10 then
if mouse.Target~=nil then
if mouse.Target.Parent.className=="Model" then
Chakra=Chakra-10
refresh()
resize(10)
if (game.Players[plyr].Character.Torso.Position-mouse.Target.Position).Magnitude<=17 then
g=Instance.new("Fire",mouse.Target)
game.Debris:AddItem(g,5)
tagHumanoid(mouse.Target.Parent.Humanoid,game.Players[plyr])
mouse.Target.Parent.Humanoid.Health=mouse.Target.Parent.Humanoid.Health-math.random(2,30)
wait(1)
untagHumanoid(mouse.Target.Parent.Humanoid)
end
end
end
end
end
if mode=="Antipoison" then
if Chakra>=50 then
if game.Players[plyr].Character:findFirstChild("Poisoned") then
Chakra=Chakra-50
refresh()
resize(50)
game.Players[plyr].Character.Poisoned:remove()
coroutine.resume(coroutine.create(function(person)
p=Instance.new("Part")
p.Parent=person.Torso
p.Size=Vector3.new(1,1,1)
p.CFrame=person.Torso.CFrame
p.CanCollide=false
p.Anchored=true
p.Transparency=0.3
p.Color=Color3.new(0,255,0)
m=Instance.new("SpecialMesh")
m.Parent=p
m.Scale=Vector3.new(0.5,0.5,0.5)
m.MeshType="Sphere"
person.Torso.Anchored=true
for i=0.5,7,0.5 do
wait(0.1)
m.Scale=Vector3.new(i,i,i)
end
p:remove()
person.Torso.Anchored=false
end),char)
end
end
end
if mode=="Mud wall" then
if not mud then
if Chakra>=50 then
Chakra=Chakra-50
resize(50)
mud=true
refresh()
qe=mouse.Hit
s=20
time=8
rs=game.Players[plyr].Character.Torso["Right Shoulder"]
rq=rs.C1
ls=game.Players[plyr].Character.Torso["Left Shoulder"]
lq=ls.C1
 
rs.C1=CFrame.new(-1.5,-0.5,0.3)*CFrame.Angles(-math.pi/2,0,0)
ls.C1=CFrame.new(1.5,-0.5,0)*CFrame.Angles(-math.pi/2,0,0)
 
wait(1)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(s,1,s)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)-Vector3.new(0,2.5,0)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
game.Debris:AddItem(p,time)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(s,1,s)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)*CFrame.Angles(0,0,0)+Vector3.new(0,s-2.5,0)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
game.Debris:AddItem(p,time)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(1,s,s)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)+Vector3.new((-s/2),(s/2)-2.5,0)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
game.Debris:AddItem(p,time)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(1,s,s)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)+Vector3.new(s/2,(s/2)-2.5,0)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
game.Debris:AddItem(p,time)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(s,s,1)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)+Vector3.new(0,(s/2)-2.5,s/2)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
game.Debris:AddItem(p,time)
 
p=Instance.new("Part")
p.Name="Base"
p.Parent=workspace
p.Size=Vector3.new(s,s,1)
p.CFrame=CFrame.new(qe.p.x,qe.p.y,qe.p.z)+Vector3.new(0,(s/2)-2.5,-s/2)
p.Anchored=true
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
game.Debris:AddItem(p,time)
wait(2)
rs.C1=rq
ls.C1=lq
mud = false
end
end
end
if mode=="Water wall" then
if Chakra>=15 then
Chakra=Chakra-15
refresh()
resize(15)
p=Instance.new("Part")
p.Parent=workspace
p.BrickColor=BrickColor.new("Really blue")
p.Transparency=0.4
p.Anchored=true
p.Size=Vector3.new(14,14,1)
p.CFrame=CFrame.new(mouse.hit.p,game.Players[plyr].Character.Torso.Position)
game.Debris:AddItem(p,15)
p.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid") then
x=game.Players:getPlayerFromCharacter(hit.Parent)
f=Instance.new("ScreenGui")
f.Parent=x.PlayerGui
game.Debris:AddItem(f,6)
b=Instance.new("TextLabel")
b.Parent=f
b.Size=UDim2.new(1,0,1,0)
b.Position=UDim2.new(0,0,0,0)
b.Text="AHH YOUR DROWNING!!"
b.FontSize=8
b.BackgroundTransparency=0.05
b.BackgroundColor3=Color3.new(0,0,200)
end
end)
 
end
end
if mode=="Sink self" then
if Chakra>=52 then
Chakra=Chakra-52
refresh()
resize(52)
d=Instance.new("Part")
d.Parent=workspace
d.Size=Vector3.new(6,1,6)
d.CFrame=game.Players[plyr].Character.Torso.CFrame-Vector3.new(0,2.6,0)
d.BrickColor=BrickColor.new("Earth orange")
d.Anchored=true
d.CanCollide=false
game.Debris:AddItem(d,5)
s=Instance.new("SpecialMesh")
s.MeshType="Sphere"
s.Parent=d
s.Scale=Vector3.new(1,0.2,1)
game.Players[plyr].Character.Torso.Anchored=true
for i=1,3,0.1 do
wait(0.1)
game.Players[plyr].Character.Torso.CFrame=game.Players[plyr].Character.Torso.CFrame-Vector3.new(0,0.3,0)
end
game.Players[plyr].Character.Torso.Anchored=false
end
end
if mode=="Sink other" then
if Chakra>=50 then
Chakra=Chakra-50
refresh()
resize(50)
z=mouse.Target
d=Instance.new("Part")
d.Parent=workspace
d.Size=Vector3.new(6,1,6)
d.CFrame=z.CFrame-Vector3.new(0,2.6,0)
d.BrickColor=BrickColor.new("Earth orange")
d.Anchored=true
d.CanCollide=false
game.Debris:AddItem(d,5)
s=Instance.new("SpecialMesh")
s.MeshType="Sphere"
s.Parent=d
s.Scale=Vector3.new(1,0.2,1)
z.Anchored=true
for i=1,3,0.1 do
wait(0.1)
z.CFrame=z.CFrame-Vector3.new(0,0.3,0)
end
z.Anchored=false
end
end
if mode=="Chakra bomb" then
if debounce==false then
e=mouse.hit.p
if Chakra==100 then
Chakra=Chakra-100
resize(100)
refresh()
if (mouse.Target~=nil) and (mouse.Target.Anchored==false) then mouse.Target.Anchored=true end
debounce=true
rs=game.Players[plyr].Character.Torso["Right Shoulder"]
ls=game.Players[plyr].Character.Torso["Left Shoulder"]
rh=game.Players[plyr].Character.Torso["Right Hip"]
lh=game.Players[plyr].Character.Torso["Left Hip"]
r0=rs.C1
l0=ls.C1
r1=rh.C0
l1=lh.C0
 
lh.C0=lh.C0*CFrame.Angles(0,0,-1)
rh.C0=rh.C0*CFrame.Angles(0,0,1.3)
wait(0.2)
cf=game.Players[plyr].Character.Torso.CFrame
bp=Instance.new("BodyPosition")
bp.Parent=game.Players[plyr].Character.Torso
bp.maxForce=Vector3.new(100,math.huge,100)
for i=1,20 do
wait(0.05)
--game.Players[plyr].Character.Torso.CFrame=cf+Vector3.new(0,1,0)
--game.Players[plyr].Character.Torso.CFrame.lookVector=mouse.hit.p
bp.position=game.Players[plyr].Character.Torso.Position+Vector3.new(0,1,0)
end
wait(1)
rs.C1=CFrame.new(0,1.5,1)*CFrame.Angles(0,0,math.pi*0.4)
ls.C1=CFrame.new(0,1.5,1)*CFrame.Angles(0,0,math.pi*1.4)
q=Instance.new("Part")
q.Parent=workspace
q.Size=Vector3.new(7,7,7)
q.CFrame=game.Players[plyr].Character.Torso.CFrame+game.Players[plyr].Character.Torso.CFrame.lookVector*4
q.Shape=0
q.Anchored=true
q.Transparency=0.6
q.Color=Color3.new(0,0,255)
q.TopSurface=0
q.BottomSurface=0
q.Touched:connect(function(hit) 
if hit.Parent.Humanoid~= nil then 
if hit.Parent~=game.Players[plyr].Character then 
hit.Parent.Humanoid:remove()q:remove() 
end 
end 
end)
f=Instance.new("Fire")
f.Parent=q
f.Size=1
f.Color=Color3.new(255,255,255)
s=Instance.new("Sparkles")
s.Parent=q
s.Color=Color3.new(0,0,255)
m=Instance.new("SpecialMesh")
m.Scale=Vector3.new(1/7,1/7,1/7)
m.Parent=q
m.MeshType="Sphere"
for i=1,7,0.1 do
wait()
m.Scale=Vector3.new(i/7,i/7,i/7)
f.Size=i
end
q.Anchored=false
bf=Instance.new("BodyPosition")
bf.Parent=q
bf.position=e
bf.maxForce=Vector3.new(50000,50000,50000)
wait(8)
e=Instance.new("Explosion")
e.Parent=workspace
e.Position=q.Position
wait()
q:remove()
lh.C0=l1
rh.C0=r1
ls.C1=l0
rs.C1=r0
--[[lh.C0=lh.C0*CFrame.Angles(0,0,1)
rh.C0=rh.C0*CFrame.Angles(0,0,-1.3)
ls.C1=CFrame.new(0,0.5,-0.5)
rs.C1=CFrame.new(0,0.5,-0.5)]]
bp:remove()
debounce=false
end
end
end
if mode=="Summon" then
if Chakra>=35 then
Chakra=Chakra-35
resize(35)
d=game:GetService("InsertService"):LoadAsset(59685964)
wait()
d:MoveTo(game.Players[plyr].Character.Torso.Position+Vector3.new(4,0,0))
end
end
if mode=="Rasengan" then
if rasengan==false then
if Chakra>=55 then
Chakra=Chakra-55
refresh()
resize(55)
rasengan=true
rs=game.Players[plyr].Character.Torso["Right Shoulder"]
q=rs.C1
game.Players[plyr].Character.archivable=true
m=Instance.new("Model")
m.Parent=workspace
m.Name=plyr
f=game.Players[plyr].Character:clone()
g=f:GetChildren()
for i=1,#g do
g[i].Parent=m
end
m.Torso.CFrame=game.Players[plyr].Character.Torso.CFrame+game.Players[plyr].Character.Torso.CFrame.lookVector*-3
m.Torso.CFrame=m.Torso.CFrame*CFrame.Angles(0,-0.6,0)
m.Torso["Right Shoulder"].C1=CFrame.new(0,0.5,-0.5)*CFrame.Angles(-0.4,0,math.pi*-0.5)
m.Torso["Left Shoulder"].C1=CFrame.new(0,0.5,-0.5)*CFrame.Angles(-0.6,0,math.pi*0.5)
wait()
anim=game.Players[plyr].Character.Animate
anim.Disabled=true
rs.C1=CFrame.new(0,0.5,-0.5)*CFrame.Angles(0,0,math.pi*0.5)
d=Instance.new("Part")
d.Parent=m
d.Transparency=0.5
d.Color=Color3.new(0,0,255)
d.Anchored=true
d.Size=Vector3.new(1,2,1)
d.CFrame=m["Right Arm"].CFrame
f=Instance.new("Fire")
f.Parent=d
f.Color=Color3.new(0,0,255)
f.SecondaryColor=Color3.new(0,0,100)
f.Size=5
s=Instance.new("BlockMesh")
s.Parent=d
s.Scale=Vector3.new(1.2,1.2,1.2)
w=Instance.new("Weld")
w.Parent=d
w.Part0=m["Right Arm"]
w.Part1=d
 
d=Instance.new("Part")
d.Parent=m
d.Transparency=0.5
d.Color=Color3.new(0,0,255)
d.Anchored=true
d.Size=Vector3.new(1,2,1)
d.CFrame=m["Left Arm"].CFrame
f=Instance.new("Fire")
f.Parent=d
f.Color=Color3.new(0,0,255)
f.SecondaryColor=Color3.new(0,0,100)
f.Size=5
s=Instance.new("BlockMesh")
s.Parent=d
s.Scale=Vector3.new(1.2,1.2,1.2)
w=Instance.new("Weld")
w.Parent=d
w.Part0=m["Left Arm"]
w.Part1=d
p=Instance.new("Part")
p.Parent=rs.Parent.Parent
p.Color=Color3.new(0,0,200)
p.Shape=0
p.Size=Vector3.new(1,1,1)
p.Transparency=1
p.Locked=true
p.CanCollide=false
f=Instance.new("Fire",p)
f.Color=Color3.new(0,0,255)
w=Instance.new("Weld")
w.Parent=p
w.Part0=p
w.Part1=game.Players[plyr].Character["Right Arm"]
w.C0=CFrame.new(0,1.5,0)
for i=1,0.3,-0.02 do
p.Transparency=i
wait(0.1)
end
m:remove()
for i=0,math.pi,0.05 do
wait(0.0125)
rs.C1=CFrame.new(0,0.5,-0.5)*CFrame.Angles(i,i,math.pi*0.5)
end
co = coroutine.create( function(part)
while true do
wait(0.3)
z=Instance.new("Part")
z.Name="CHEESE"
z.Parent=part
z.Size=Vector3.new(1,1,1)
z.Anchored=true
z.CFrame=part.CFrame
z.CanCollide=false
z.Transparency=0.5
z.Color=Color3.new(0,0,100)
s=Instance.new("SpecialMesh")
s.Parent=z
s.Scale=Vector3.new(0.1,0.1,0.1)
s.MeshType="Sphere"
if part==nil then
z:remove()
coroutine.yield()
end
for i=0,10 do
wait(0.1)
if part.Parent~=nil then
s.Scale=Vector3.new(i/5,i/5,i/5)
z.Transparency=i/10
z.CFrame=part.CFrame
end
end
z:remove()
end
end)
coroutine.resume(co,p)
p.Touched:connect(function(hit)
if hit.Parent~=game.Players[plyr].Character and hit.Name~="CHEESE" then
bf=Instance.new("BodyVelocity")
bf.Parent=hit
bf.velocity=(game.Players[plyr].Character.Torso.Position-hit.Position).Unit*-70
bf.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bav=Instance.new("BodyAngularVelocity")
bav.Parent=hit
bav.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
bav.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
p:remove()
rasengan=false
rs.C1=q
anim.Disabled=false
game.Debris:AddItem(bf,5)
game.Debris:AddItem(bav,6)
end
end)
end
end
end
if mode=="fix" then
end
if mode=="Dodge Up" then
if Chakra>5 then
Chakra=Chakra-5
refresh()
resize(5)
p=Instance.new("Part")
p.Parent=workspace
p.Anchored=true
p.Size=Vector3.new(4,20,4)
p.CFrame=game.Players[plyr].Character.Torso.CFrame+Vector3.new(0,8,0)
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
p.TopSurface=0
p.BottomSurface=0
coroutine.resume(coroutine.create(function(part)
for i=0,1,0.02 do
wait(0.1)
part.Transparency=i
end
part:remove()
coroutine.yield()
end),p)
game.Debris:AddItem(p,5)
game.Players[plyr].Character.Torso.CFrame=game.Players[plyr].Character.Torso.CFrame+Vector3.new(0,20,0)
end
end
if mode=="Tree cage" then
if Chakra>=75 then
Chakra=Chakra-75
refresh()
resize(75)
if mouse.Target.Anchored==false then
mouse.Target.Anchored=true
coroutine.resume(coroutine.create(function(p)
wait(6)
p.Anchored=false
coroutine.yield()
end),mouse.Target)
mh=mouse.Hit
for i=1,360,360/12 do
d=makeTree(mh*CFrame.new(math.cos(math.rad(i))*6,-2,math.sin(math.rad(i))*6),3,4,7)
game.Debris:AddItem(d,30)
end
end
end
end
if mode=="Sand Coffin" then
if coffin==false then
if Chakra>=100 then
Chakra=Chakra-100
refresh()
resize(100)
if mouse.Target~=nil then
if mouse.Target.Name~="Base" then
z=mouse.Target
coffin=true
 
if z.Parent:IsA("Hat") then
if z.Parent.Parent:findFirstChild("Torso")~=nil then
q=z.Parent.Parent.Torso
z=q
end
end
 
d=Instance.new("Part")
d.Parent=workspace
d.Size=Vector3.new(6,1,6)
d.CFrame=game.Players[plyr].Character.Torso.CFrame-Vector3.new(0,2.5,0)
d.BrickColor=BrickColor.new("Earth orange")
d.Anchored=true
game.Debris:AddItem(d,5)
s=Instance.new("SpecialMesh")
s.MeshType="Sphere"
s.Parent=d
s.Scale=Vector3.new(1,0.2,1)
 
f=Instance.new("Part")
f.Parent=workspace
f.Size=Vector3.new(6,1,6)
f.CFrame=CFrame.new(z.Position.X,z.Position.Y-2.5,z.Position.Z)
f.BrickColor=BrickColor.new("Earth orange")
game.Debris:AddItem(f,5)
v=Instance.new("SpecialMesh")
v.MeshType="Sphere"
v.Parent=f
v.Scale=Vector3.new(1,0.2,1)
 
b=Instance.new("Part")
b.Parent=workspace
b.Size=Vector3.new(10,10,10)
b.CanCollide=false
b.Shape=0
b.CFrame=z.CFrame
b.Anchored=true
b.BrickColor=BrickColor.new("Earth orange")
b.TopSurface=0
b.BottomSurface=0
game.Debris:AddItem(b,7)
z.Anchored=true
w=Instance.new("Weld")
w.Parent=z
w.Part0=z
w.Part1=p
x=b.Position.Y
y=b.Position.x
g=b.Position.z
for i=1,10,0.5 do
wait(0.05)
b.CFrame=CFrame.new(y,x+i,g)
z.CFrame=p.CFrame
end
wait(3)
b.Size=b.Size-Vector3.new(2,2,2)
b.CFrame=z.CFrame
coffin=false
if z.Parent~=workspace then
z.Parent:BreakJoints()
wait(1)
z.Parent:remove()
elseif z.Parent.className=="Hat" then
if z.Parent.Parent~=workspace then
z.Parent.Parent:BreakJoints()
wait(1)
z.Parent.Parent:remove()
end
else
z:remove()
end
end
end
end
end
end
if mode=="Robot decoy" then
if Chakra>=50 then
if mouse.Target~=nil then
if (char.Torso.Position-mouse.Hit.p).Magnitude<75 then
Chakra=Chakra-50
refresh()
resize(50)
char.archivable=true
d=char:clone()
m=Instance.new("Model")
m.Parent=workspace
m.Name=char.Name
z=d:GetChildren()
for i=1,#z do
z[i].Parent=m
end
f=mouse.Target
x=mouse.Hit
z=Instance.new("Part")
z.Parent=f
z.Size=Vector3.new(1,1,1)
z.CanCollide=false
z.Transparency=0
z.CFrame=x
w=Instance.new("Weld")
w.Parent=z
w.Part0=z
w.Part1=f
w.C0=CFrame.new((x.p-z.Position).Unit)
m.Torso.CFrame=char.Torso.CFrame*CFrame.new(0,0,-5)
coroutine.resume(coroutine.create(function(clone,mh)
while true do
wait()
m.Humanoid:MoveTo(mh,workspace.Base)
if (clone.Torso.Position-Vector3.new(mh.X,clone.Torso.Position.Y,mh.Z)).Magnitude<4 then
ex=Instance.new("Explosion")
ex.Parent=workspace
ex.Position=clone.Torso.Position
wait(0.5)
clone:remove()
coroutine.yield()
end
end
end),m,z.Position)
d:remove()
end
end
end
end
if mode=="End of the world" then
if Chakra==0 then
if anime==true then
resize(0)
done=false
rs=char.Torso["Right Shoulder"]
ls=char.Torso["Left Shoulder"]
rc=rs.C1
lc=ls.C1
coroutine.resume(coroutine.create(function()
anime=false
while done==false do
wait(0.1)
rs.DesiredAngle=0
ls.DesiredAngle=0
end
anime=true
coroutine.yield()
end))
rs.C1=rs.C1*CFrame.Angles(0.5,0,0)
ls.C1=ls.C1*CFrame.Angles(0.5,0,0)
char.Torso.Anchored=true
for i=1,360,10 do
wait(0.05)
char.Torso.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(10),0)
end
for i=1,360,10 do
wait(0.05)
char.Torso.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(20),0)
end
dis=15
coroutine.resume(coroutine.create(function()
while done==false do
wait(0.1)
p=char["Left Arm"]:clone()
p.Parent=workspace
p.Transparency=0.7
p.Anchored=true
p.BrickColor=BrickColor.new(1003)
game.Debris:AddItem(p,0.4)
p=char["Right Arm"]:clone()
p.Parent=workspace
p.Transparency=0.7
p.Anchored=true
p.BrickColor=BrickColor.new(1003)
game.Debris:AddItem(p,0.4)
 
z=Instance.new("Part")
z.Parent=workspace
z.Size=Vector3.new(8,1,8)
z.CFrame=char.Torso.CFrame*CFrame.new(0,50,dis)
z.Anchored=true
z.BrickColor=BrickColor.new(1002)
p=Instance.new("Part")
p.Parent=workspace
p.Anchored=false
p.Size=Vector3.new(1,1,1)
p.Shape=0
p.TopSurface=0
p.BottomSurface=0
p.Color=Color3.new(0,0,255)
p.CanCollide=true
p.CFrame=z.CFrame*CFrame.new(0,-1.5,0)
b=Instance.new("BodyPosition")
b.Parent=p
b.maxForce=Vector3.new(math.huge,0,math.huge)
b.position=p.Position
coroutine.resume(coroutine.create(function(xer)
while true do
wait(0.5)
if xer.Position.Y<=char.Torso.Position.Y+2 then
ex=Instance.new("Explosion")
ex.Parent=workspace
ex.Position=xer.Position
ex.BlastRadius=10
break
end
end
wait()
xer:remove()
coroutine.yield()
end),p)
d=Instance.new("SpecialMesh")
d.Parent=z
d.MeshType="Sphere"
d.Scale=Vector3.new(1,4,1)
game.Debris:AddItem(z,10)
 
end
coroutine.yield()
end))
for i=1,360,20/3 do
wait(0.025)
dis=20
char.Torso.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(20),0)
end
for i=1,720*4,15/2 do
wait(0.025)
if i<360 then
dis=30
elseif i>=360 and i<=720 then
dis=40
elseif i>720 and i<=360*3 then
dis=50
elseif i>360*3 and i<=360*4 then
dis=60
end
char.Torso.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(30),0)
end
for i=1,360,10 do
wait(0.05)
dis=65
char.Torso.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(10),0)
end
char.Torso.Anchored=false
done=true
rs.C1=rc
ls.C1=lc
end
end
end
if mode=="Destruction" then
Chakra=100
refresh()
if workspace:findFirstChild("QWERTY")==nil then
_G.QWERTY=Instance.new("Model")
_G.QWERTY.Parent=workspace
_G.QWERTY.Name="QWERTY"
end
char.Parent=workspace:findFirstChild("QWERTY")
mouse.TargetFilter=workspace:findFirstChild("QWERTY")
coroutine.resume(coroutine.create(function()
for i=1,5 do
wait()
p=Instance.new("Part")
p.Parent=workspace:findFirstChild("QWERTY")
s=8
p.Size=Vector3.new(s,s,s)
p.CFrame=game.Players[plyr].Character.Torso.CFrame
p.Anchored=true
p.Transparency=0.8
p.Color=Color3.new(0,0,255)
p.CanCollide=false
p.TopSurface=0
p.BottomSurface=0
game.Debris:AddItem(p,50)
p.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil then
if hit.Parent~=char then
hit.Parent:findFirstChild("Humanoid").Health=hit.Parent:findFirstChild("Humanoid").Health-10
end
end
end)
g=mouse.Hit.p
d=(g-char.Torso.CFrame.p).unit
coroutine.resume(coroutine.create(function(part,dir)
for i=1,50,0.5 do
wait()
if char==nil then part:remove() coroutine.yield() end
part.CFrame=char.Torso.CFrame*CFrame.Angles(0.1*i,0.1*i,0.1*i)
end
g=mouse.Hit.p
dir=(g-char.Torso.CFrame.p).unit
for e=1,100 do
wait()
if e>15 then
part.CanCollide=true
end
 
if char==nil or mouse==nil then part:remove() coroutine.yield() end
part.CFrame=char.Torso.CFrame*CFrame.Angles(0.1*(e+50),0.1*(e+50),0.1*(e+50)) + (dir*e*2)
end
part:remove()
coroutine.yield()
end),p,d)
end
char.Parent=workspace
coroutine.yield()
end))
end
if mode=="Energy ball" then
if Chakra>=75 then
Chakra=Chakra-75
G1.Size=UDim2.new(0,64,0,(Chakra/100)*150)
p=Instance.new("Part")
p.Parent=workspace
p.Size=Vector3.new(4,4,4)
p.CFrame=game.Players[plyr].Character.Torso.CFrame+(mouse.Hit.lookVector*4)
p.Shape=0
p.Transparency=0.6
p.Color=Color3.new(0,0,0)
p.TopSurface=0
p.BottomSurface=0
game.Debris:AddItem(p,8)
f=Instance.new("Fire")
f.Parent=p
f.Color=Color3.new(20,100,200)
bf=Instance.new("BodyPosition")
bf.Parent=p
bf.position=mouse.hit.p
bf.maxForce=Vector3.new(5000,5000,5000)
p.Touched:connect(function(hit)
if hit.Parent~=game.Players[plyr].Character then
if hit.Parent:findFirstChild("Humanoid")~=nil then
tagHumanoid(hit.Parent.Humanoid,game.Players[plyr].Character)
hit.Parent.Humanoid.Health=0
p:remove()
end
end
end)
end
resize(75)
end
end
 
function BU(mouse)
down=false
end
 
function KeyDown(key)
toe=mode
if key=="q" then
mode="Charge"
G3.Size=UDim2.new(0,32,0,150)
G3.BackgroundColor3=Color3.new(20,255,20)
G4.Text="Charge"
end
if key=="u" then
mode="Charge"
d=game.Players[plyr].PlayerGui:GetChildren()
for i=1,#d do
if d[i].Name=="PURPLE" then
d[i].PURPLE.Text=mode
end
end
set=set+1
if set==3 then
set=1
end
d=game.Players[plyr].PlayerGui:GetChildren()
for i=1,#d do
if d[i].Name=="PURPLE" then
d[i].CHEESE.Text="Set #"..tostring(set).."."
end
end
end
if set==2 then
if (key=="e" and (number==1 or number==4)) or (key=="s" and number==0) or (key=="c" and number==2) or (key=="r" and number==3) or (key=="t" and number==5) then
number=number+1
elseif number~=6 and number<6 then
number=0
end
if key=="e" and (numb==0 and set==2) then
numb=15
end
if  (key=="n" and numb==15) or (key=="d" and numb==16) then
numb=numb+1
end
if numb==17 then
mode="End of the world"
numb=0
end
if number==6 then
mode="Destruction"
number=0
resize((100-Chakra)*-1)
end
end
if set==1 then
if key =="e" then
mode="Fireball"
resize(20)
elseif key=="r" then
mode="Heal"
resize(1)
elseif key=="t" then
mode="Run"
resize(Chakra)
elseif key=="p" then
mode="Substitution"
resize(15)
elseif key=="l" then
mode="Shadow clone"
resize(10)
elseif key=="k" then
mode="Burn"
resize(10)
elseif key=="y" then
mode="Mud wall"
resize(50)
elseif key=="z" then
mode="Energy ball"
resize(75)
elseif key=="j" then
mode="Chakra bomb"
resize(100)
elseif key=="h" then
mode="Darkness"
resize(50)
elseif key=="x" then
mode="Rasengan"
resize(55)
elseif key=="c" then
mode="Dodge Up"
resize(5)
elseif key=="q" then
mode="Sand Coffin"
resize(100)
elseif key=="b" then
mode="Water wall"
resize(15)
elseif key=="v" then
mode="Robot decoy"
resize(50)
elseif key=="n" then
mode="Sink self"
resize(52)
elseif key=="m" then
mode="Sink other"
resize(50)
elseif key=="g" then
mode="Antipoison"
resize(50)
elseif key=="f" then
mode="Tree cage"
resize(75)
end
end
d=game.Players[plyr].PlayerGui:GetChildren()
for i=1,#d do
if d[i].Name=="PURPLE" then
d[i].PURPLE.Text=mode
end
end
end
 
 
function Select(mouse)
mouse.Button1Down:connect(function() BD(mouse) end)
mouse.Button1Up:connect(function() BU(mouse) end)
mouse.KeyDown:connect(KeyDown)
while true do
wait()
for e=1,#parts do
parts[e].CFrame=parts[e].CFrame*CFrame.fromEulerAnglesXYZ(0.1,0.1,0.1)+Vector3.new(0,0.3,0)
parts[e].Transparency=parts[e].Transparency+0.1
if parts[e].Transparency>=1 then
parts[e]:remove()
table.remove(parts,e)
break
end
end
for r=1,#clone_s do
if clone_s[r].Humanoid.Health<=0 then
if clones[r].Torso then
ex=Instance.new("Explosion")
ex.Parent=workspace
ex.Position=clone_s[r].Torso.Position
end
wait()
clone_s[r]:remove()
end
end
for r=1,#clones do
if clones[r].Humanoid.Health<=0 then
p=clones[r]:GetChildren()
for i=1,#p do
if p[i].className=="Part" then
p[i].Transparency=0.6
game.Debris:AddItem(p[i],5)
end
end
table.remove(clones,r)
end
end
end
end
script.Parent.Selected:connect(Select)
 

