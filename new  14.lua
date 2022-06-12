Name="acb227"
--[[Tribute to linerider64,I always rather liked his lance.
Started and completed,Nov 29,2010]]--
player=game.Players[Name]
char=player.Character
Weld=nil
Welds={}
Damage=5
Speed=55
Walk=char.Humanoid.WalkSpeed
pcall(function() char.Lance:remove() end)
Pl=player.PlayerGui
pcall(function() Pl.En:remove() end)
Gui=Instance.new("ScreenGui")
Gui.Parent=Pl
Gui.Name="En"

function XY(x,y)
if type(x)=="number" and type(y)=="number" then
return UDim2.new(x,0,y,0)
else
error("Invalide argument for XY")
end
end


Healing=false
function HealE()
Energy=Energy+1
Frame.Size=XY(0.025,-0.25*(Energy/Max))
end


Energy=100
Max=Energy
creat=Instance.new("ObjectValue")
creat.Name="creator"
creat.Value=player
Frame=Instance.new("Frame",Gui)
Frame.BorderSizePixel=0
Frame.Position=XY(0.05,.45)
Frame.Size=XY(0.025,-0.25*(Energy/Max))
Frame.BackgroundColor=BrickColor:Blue()
Tex=Instance.new("TextButton",Gui)
Tex.Position=Frame.Position+XY(0.01,0.02)
Tex.Text="Energy"
m=Instance.new("Model")
m.Parent=char
m.Name="Lance"
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
p.Material="Concrete"
p.Name="Cent"
p.Size=Vector3.new(1,3,1)
Cent=p
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.3,1.2,0.3)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C1=CFrame.new(0,0.25,0.75)*CFrame.Angles(0,0,math.rad(-35))
Weld=w
Welds["MAIN"]=Weld
p=Instance.new("Part")
p.Locked=true
p.Touched:connect(function(h) pcall(function() creat:clone().Parent=h.Parent.Humanoid h.Parent.Humanoid:TakeDamage(Damage) end) end)
p.BrickColor=BrickColor.new("Dark stone grey")
p.Material="Concrete" 
p.Name="Lan"
p.CanCollide=false
p.Size=Vector3.new(1,6,1)
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="FileMesh"
Mesh.Scale=Vector3.new(0.7,7.3,0.7)
Mesh.MeshId="http://roblox.com/asset/?id=1033714"
Mesh.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-4.2,0)*CFrame.Angles(math.rad(180),0,0)
if script.Parent.className~="HopperBin" then
Staff=Instance.new("HopperBin")
Staff.Name="Lance"
Staff.Parent=player.Backpack
script.Parent=Staff
end
Hop=script.Parent
Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}
De=0
Up=true
function EQUIP(mouse)
if De==0 and #game["LocalBackpack"]:children()>0 then
De=1
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
rs=char.Torso["Right Shoulder"]
p1=rs.Part1
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
pcall(function() Weld.Part1=char["Right Arm"]
Weld.C1=CFrame.new(0,0,0)
Weld.C0=CFrame.new(0,1,-0.5)*CFrame.Angles(math.rad(-40),0,math.rad(0)) end)
for i=0,1,0.5 do
wait(0.05)
rw.C1 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(67.5)*i , 0,0)
rw.C0 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
OrgW0=Weld.C0
OrgR0=rw.C0
OrgR1=rw.C1
local rw=rw
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() 
Up=false 
if p.Transparency==0 and Attack==false then
Healing=false
Attack=true
for i=1,11 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-1),0,0) 
rw.C0=CFrame.new(0,0.5,0)
p.Transparency=i/30
wait()
end
p.CanCollide=true
Damage=Damage*2
p.Transparency=0.5
local b=Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
b.velocity=char.Torso.CFrame.lookVector*Speed
b.Parent=char.Torso
repeat 
wait() 
Energy=Energy-1
Frame.Size=XY(0.025,-0.25*(Energy/Max))
b.velocity=char.Torso.CFrame.lookVector*Speed 
local blue=p:clone() 
blue.CanCollide=false 
blue.Anchored=true 
blue.CFrame=p.CFrame 
blue.BrickColor=BrickColor:Blue() 
blue.Parent=char.Lance 
Delay(0,function() 
local blue=blue 
for i=1,5 do 
blue.Transparency=blue.Transparency+1/20 
wait() 
end 
blue:remove() 
end)
until Up==true or Energy==0
b:remove()
char.Humanoid.WalkSpeed=Walk
for i=1,11 do
rw.C1=rw.C1*CFrame.Angles(math.rad(1),0,0) 
rw.C0=CFrame.new(0,0.5,0)
p.Transparency=0.33-i/30
wait(0.05)
end
p.CanCollide=false
p.Transparency=0
rw.C0=OrgR0
rw.C1=OrgR1
Up=true
Attack=false

Healing=true
Delay(0,function()
while Energy~=Max and Healing==true do
wait(0.04)
HealE()
end
end)

end
end)
wait()
De=0
mouse.Button1Up:connect(function() 
Up=true 
end)
Attack=false
mouse.KeyDown:connect(function(key)
if key=="r" and Attack==false and Energy>15 then
Attack=true
pcall(function()
Healing=false
end)
Damage=Damage*2
for i=1,10 do
rw.C1=rw.C1*CFrame.Angles(math.rad(-3.2),0,0) 
rw.C0=CFrame.new(0,0.5,0)
wait()
end
wait()
local b=Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
b.velocity=char.Torso.CFrame.lookVector*Speed/1.5
b.Parent=char.Torso
for i=1,10 do
rw.C1=rw.C1*CFrame.Angles(math.rad(5.5),0,0) 
rw.C0=CFrame.new(0,0.5,0)
b.velocity=char.Torso.CFrame.lookVector*Speed/1.5
if i%2==1 then
local blue=p:clone() 
blue.CanCollide=false 
blue.Anchored=true 
blue.CFrame=p.CFrame 
blue.BrickColor=BrickColor:Blue() 
blue.Parent=char.Lance 
Delay(0,function() 
local blue=blue 
for i=1,10 do 
blue.Transparency=blue.Transparency+1/40 
wait() 
end 
blue:remove() 
end)
end
wait()
end
b:remove()
Energy=Energy-16
Frame.Size=XY(0.025,-0.25*(Energy/Max))
Healing=true
Delay(0,function()
while Energy~=Max and Healing==true do
wait(0.04)
HealE()
end
end)
Damage=Damage/2
Attack=false
rw.C0=OrgR0
rw.C1=OrgR1
end
end)
end
end
setfenv(EQUIP,getfenv(0))
Hop.Selected:connect(function(mouse)
EQUIP(mouse)
end)