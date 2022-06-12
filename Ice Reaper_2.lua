local Name="yfc"
local player=game.Players[Name]
local char=player.Character
local Suit=false
Welds={}

if script.Parent.className~="HopperBin" then
local h=Instance.new("HopperBin")
h.Name="Ice reaper"
h.Parent=player.Backpack
script.Parent=h
end
pcall(function() char.Sword:remove() end)
pcall(function() char.Sheath:remove() end)
pcall(function() char.Suit:remove() end)
local m=Instance.new("Model")
m.Name="Sword"
m.Parent=char
local otherm=Instance.new("Model")
otherm.Name="Sheath"
otherm.Parent=char

--SWORD--
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Blue()
p.Reflectance=0.4
p.CanCollide=false
p.Parent=m
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,1.2,0.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=char.Torso
w.C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(150))
w.C1=CFrame.new(0,0.25,0)
local HoldWeld=w
local Blade=p
Welds["MAIN"]=HoldWeld
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Yellow()
p.Parent=m
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.02,1,0.21)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-.2,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.6,.2,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-1.45,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,.2,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0.4,-1.37,0)*CFrame.Angles(0,0,math.rad(30))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("White")
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.4,.2,.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(-0.4,-1.37,0)*CFrame.Angles(0,0,math.rad(-30))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor.new("Grey")
p.Parent=m
local mes=Instance.new("CylinderMesh")
mes.Parent=p
mes.Scale=Vector3.new(.2,1.25,.2)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-2,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Yellow()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("CylinderMesh")
mes.Parent=p
mes.Scale=Vector3.new(.21,.1,.21)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-2.75,0)
for i=1,10 do
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Black()
p.Parent=m
local mes=Instance.new("CylinderMesh")
mes.Parent=p
mes.Scale=Vector3.new(.21,.05,.21)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,-2.7+.9*(i/9),0)
end
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Blue()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.28,.24,.205)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Blade
w.C0=CFrame.new(0,1.45,0)*CFrame.Angles(0,0,math.rad(-45))
local Tip=p
--/SWORD--

--SHEATH--
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.Reflectance=0.4
p.BrickColor=BrickColor:Blue()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.6,1.2,0.3)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=char.Torso
w.C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(-30))
local Back=p
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(-0.1,-1.5,0)*CFrame.Angles(0,0,math.rad(45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0.1,-1.5,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(-0.1,1.29,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0.1,1.29,0)*CFrame.Angles(0,0,math.rad(45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,1.25,0.32)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0,-0.25/2.5,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Yellow()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.02,1.12,0.325)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0,0,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0.1,.25/2,0)*CFrame.Angles(0,0,math.rad(45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(-0.1,.25/2,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0.1,-.25/2,0)*CFrame.Angles(0,0,math.rad(-45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:White()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.1,.25,0.31)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(-0.1,-.25/2,0)*CFrame.Angles(0,0,math.rad(45))
local p=Instance.new("Part")
p.Size=Vector3.new(1,3,1)
p.BrickColor=BrickColor:Black()
p.Parent=otherm
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(0.55,.5,0.25)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0,.85,0)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=BrickColor:Blue()
p.Parent=m
p.Reflectance=0.4
local mes=Instance.new("BlockMesh")
mes.Parent=p
mes.Scale=Vector3.new(.42,.35,.305)
local w=Instance.new("Weld")
w.Parent=p
w.Part1=p
w.Part0=Back
w.C0=CFrame.new(0,-1.45,0)*CFrame.Angles(0,0,math.rad(-45))
for _,v in pairs(otherm:children()) do
v.CanCollide=false
end
--/SHEATH--

b=Instance.new("IntValue")
b.Value=0
b.Parent=char.Sword
function Click()
if b.Value~=0 then
pcall(function() DCLICK:disconnect() end)
wait(0.25)
Button()
wait()
DCLICK=b.Changed:connect(Click)
end
end
DCLICK=b.Changed:connect(Click)

Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}

function Button(mouse)
if b.Value==1 then
local rw=Welds["rw"]
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(4.5), math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.4,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0.1, 0)
end
wait()
for i=0,0.4,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, -0.1, 0)
end
for i=0,0.9,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-4.5), math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
b.Value=0
else
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,1,0.5 do
wait()
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,1,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.3,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
b.Value=0
end
end

function Charge()
local rw=Welds["rw"]
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(1), math.rad(6),math.rad(2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=1,6 do
wait()
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor:Blue()
Laz.Reflectance=0
Laz.Shape="Ball"
Laz.Transparency=1-i/9
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.Parent=char.Sword
w=Instance.new("Weld")
w.Part1=Laz
w.Part0=Blade
w.Parent=Laz
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,7,0.75 do
Me.Scale = Vector3.new(i/2.5,i,i/2.5) 
wait()
end
Laz:remove()
end
end

function SHOCK()
Charge()
wait()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
for i=1,35 do
p=Instance.new("Part")
p.Size=Vector3.new(1,9,7)
p.Transparency=0.2
p.BrickColor=BrickColor:Blue()
p.Reflectance=0.1
p.CanCollide=true
p.Velocity=Vector3.new(9000,300,0)
p.TopSurface="Smooth"
p.BottomSurface="Smooth"
p.Anchored=true
p.Parent=char
p.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(6+i,0,0)
Delay(0,function()
local p=p
for i=3,10 do
p.Transparency=i/10
wait()
end
p:remove()
end)
wait()
end
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
wait()
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-6),math.rad(-2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end

function GATE()
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,2,0.5 do
wait(0.06)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
local b=Instance.new("BodyPosition")
b.position=char.Torso.Position+Vector3.new(0,30,0)
b.maxForce=Vector3.new(200,999999999,200)
b.Parent=char.Torso
wait(0.75)
for i=0,2,0.5 do
wait(0.05)
local p=Blade:Clone()
p.Transparency=0.5
p.Reflectance=0
p.BrickColor=BrickColor:Blue()
p.Anchored=true
p.CanCollide=false
p.Parent=char
Delay(0.75,function() p:remove() end)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(-60)*i, 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
b:remove()
function Check(d)
for _,v in pairs(game.Players:children()) do
if v.Name~=Name and v.Character and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position-Star.Position).magnitude<d then
v.Character.Humanoid:TakeDamage(5)
v.Character.Humanoid.PlatformStand=true
v.Character.Torso.Velocity=(v.Character.Torso.Position-Star.Position).unit*120
end
end
end
wait(0.5)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Anchored=true
Tor.Transparency=1
Tor.CanCollide=false
Tor.Parent=char
Tor.TopSurface="Weld"
Star=Tor
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(3,1.2,3) 
Tor.CFrame=CFrame.new(char.Torso.Position.x,workspace.Base.Position.y,char.Torso.Position.z)
Delay(0.1,function()
for i=1,40 do
wait()
Mesh.Scale=Mesh.Scale+Vector3.new(1,0,1)
Star.Transparency=i/50
Dist=Mesh.Scale.x/2
Check(Dist)
end
Tor:remove()
end)
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end

function GHOST()
Charge()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
function Check(i)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - char.Torso.Position).magnitude < 7 and v.Parent~=char.Torso and v.Name~="Base" and v.Parent.Name~=Name and v.Parent.Parent.Name~=Name and v.Name~="Handle" then
Delay(0,function()
local bool=v.Anchored
v.Anchored=true
v.CanCollide=false
wait(0.25)
v.CanCollide=true
v.Anchored=bool
end)
if game.Players:getPlayerFromCharacter(v.Parent) then
v.Anchored=false
end
elseif v:children()[1]~=nil then
Check(v)
end
end
end
local B=Instance.new("BodyPosition")
B.Parent=char.Torso
B.maxForce=Vector3.new(0,9e99,0)
B.position=char.Torso.Position
local t=tick()
repeat Check(workspace) wait(0.17) until tick()-t>10
B:remove()
for i=0,0.7,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0)
rw.C0 = rw.C0*CFrame.new(0, 0, 0)
end
wait()
for i=0,1.2,0.1 do
wait()
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-6),math.rad(-2))
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end


function PORT(mouse)
local mouset=mouse.Target
local mouseh=mouse.Hit
if mouset then
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor:Blue()
Laz.Reflectance=0
Laz.Transparency=1
Laz.Shape="Ball"
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char.Torso
Laz.Transparency=1
w = Instance.new("Weld") 
w.Parent = Laz
w.Part0 = w.Parent 
w.Part1 = char.Torso
w.C0 = CFrame.new(0,0,0)
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Scale=Vector3.new(15,15,15) 
Me.Parent=Laz
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(-0.5,-0.5,-0.5)
Laz.Transparency=Laz.Transparency-1/20
wait()
end
char.Torso.CFrame=mouseh*CFrame.new(0,5,0)
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(0.5,0.5,0.5)
Laz.Transparency=i/20
wait()
end
Laz:remove()
end
end


function RUSH()
local rw=Welds["rw"]
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
for i=0,0.9,0.05 do
wait()
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(-60)*(i/1), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
wait()
local p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor:Blue()
p.Name="Lan"
p.CanCollide=false
p.Size=Vector3.new(1,6,1)
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="FileMesh"
Mesh.Scale=Vector3.new(0.7,7.3,0.7)
Mesh.MeshId="http://roblox.com/asset/?id=1033714"
Mesh.Parent=p
p.Parent=char
w=Instance.new("Weld")
w.Part1=Blade
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,1,0)
local b=Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
b.velocity=char.Torso.CFrame.lookVector*65
b.Parent=char.Torso
for i=1,20 do
b.velocity=char.Torso.CFrame.lookVector*65
local blue=p:clone() 
blue.CanCollide=false 
blue.Anchored=true 
blue.CFrame=p.CFrame 
blue.BrickColor=BrickColor:Blue() 
blue.Parent=char
Delay(0,function() 
local blue=blue 
for i=1,5 do 
blue.Transparency=blue.Transparency+1/20 
wait() 
end 
blue:remove() 
end)
wait()
end
wait(0.05)
p:remove()
b:remove()
wait()
for i=0,0.2,0.05 do
wait()
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(50)+math.rad(60)*(i/1), 0,0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
for i=0,0.3,0.1 do
wait(0.06)
rw.C1 = rw.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-6),0)
rw.C0 = CFrame.new(0, 0.5, 0)
end
rw.C0=OrgR0
rw.C1=OrgR1
end

De=0
Equip=false
function EQUIP(mouse)
if De==0 and #game["LocalBackpack"]:children()>0 then
Equip=true
De=1
--pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
rs=char.Torso["Right Shoulder"]
p1=rs.Part1
p0=rs.Part0
rs.Part0=nil
rw=Instance.new("Weld")
rw.Parent=char
rw.Part1=char.Torso
rw.Part0=char["Right Arm"]
rw.C1=CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0)
R1=rw.C1
R0=rw.C0
Arms["rw"]=rw
Welds["rw"]=rw
Weld=Welds["MAIN"]
for i=0,1,0.1 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(270)*i, i,-i)
rw.C0 = CFrame.new(0, 0.5, 0)
end
pcall(function() Weld.Part0=char["Right Arm"]
Weld.C0=CFrame.new(0,-1.1,-2.35)*CFrame.Angles(math.rad(90),math.rad(90),math.rad(180)) 
Connec=Blade.Touched:connect(function(h)
if h.Parent and h.Parent:findFirstChild("Humanoid") and not h.Parent:findFirstChild("Ice") and h.Parent.Name~=Name then
h.Parent.Torso.Name="Ice"
h.Parent.Ice.Anchored=true
local i=Instance.new("Part")
i.Parent=h.Parent
i.Size=Vector3.new(5,7,5)
i.TopSurface="Smooth"
i.BottomSurface="Smooth"
i.Anchored=true
i.CFrame=h.Parent.Ice.CFrame
i.BrickColor=BrickColor:Blue()
i.Reflectance=0.4
i.Transparency=0.5
end
end)
end)
for i=0,1,0.5 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(135)-math.rad(67.5)*i, 0, math.rad(45-22.5*i))
rw.C0 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait()
for i=0,1,0.25 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-3.5),math.rad(-2),math.rad(-6))
wait(0.05)
end
Delay(0,function()
while Equip==true do
wait(0.08)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.Reflectance=0.3
p.BrickColor=BrickColor:Blue()
p.Anchored=true
p.CanCollide=false
p.Parent=char
p.CFrame=Blade.CFrame*CFrame.new(math.random(-1,1)*math.random(),math.random(-2,2)*math.random(),math.random(-1,1)*math.random())*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.15,0.15,0.15)
m.Parent=p
Delay(0,function()
local p=p
for i=1,3 do
wait(0.05)
p.Transparency=i/3
end
p:remove()
end)
end
end)
OrgR0=rw.C0
OrgR1=rw.C1
local rw=rw
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() b.Value=b.Value+1 end)
Attack=false
mouse.KeyDown:connect(function(key)
if Attack==false then
if key=="q" then
Attack=true
SHOCK()
Attack=false
elseif key=="e" then
Attack=true
GATE()
Attack=false
elseif key=="r" then
Attack=true
RUSH()
Attack=false
elseif key=="t" then
Attack=true
GHOST()
Attack=false
elseif key=="y" then
Attack=true
PORT(mouse)
Attack=false
end
end
end)
wait()
De=0
end
end
setfenv(EQUIP,getfenv(0))
script.Parent.Selected:connect(function(mouse)
EQUIP(mouse)
end)
script.Parent.Deselected:connect(function()
Equip=false
for i=0,1,0.1 do
rw.C1=rw.C1*CFrame.Angles(math.rad(17),math.rad(8),math.rad(4)) -- 6
wait(0.04)
end
Welds["MAIN"].Part0=char.Torso
Welds["MAIN"].C0=CFrame.new(0,0,0.65)*CFrame.Angles(0,0,math.rad(150))
Welds["MAIN"].C1=CFrame.new(0,0.25,0)
Connec:disconnect()
for i=0,1,0.1 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-19),math.rad(-3),math.rad(-6)) -- -1
wait(0.03)
end
pcall(function()
rs.Part0=p0
rs.Part1=p1
rs.Parent=char.Torso
rw:remove()
end)
end)
--Suit--
if Suit then
color=BrickColor:White()
color2=BrickColor.new("Dark stone grey")
pcall(function() char.Suit:remove() end)
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 
Tors=Instance.new("Part")
Tors.Size=char.Torso.Size
Tors.BrickColor=color
Tors.Reflectance=0.75
Tors.Transparency=0
Tors.CanCollide=false
Tors.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tors
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tors 
w.C0 = CFrame.new(0,0,0)
for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0.75
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.4,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.6,0)
end
end
Tor=Instance.new("Part") 
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,0.4,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.51)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)*CFrame.Angles(0,0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,.25,.25) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.27,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.27,0,-0.49)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.295,-0.49)*CFrame.Angles(0,0,math.rad(90))
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.295,-0.49)*CFrame.Angles(0,0,math.rad(90))
end
--/Suit--