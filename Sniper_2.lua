Name="yfc"
player=game.Players[Name]
char=player.Character
Color=BrickColor:Black()
Color2=BrickColor.new(2)
Debounce=1
BLAH={}
if script.Parent.className~="HopperBin" then
Gun = Instance.new("HopperBin")
Gun.Parent = game.Players[Name].Backpack
Gun.Name="Sniper"
script.Parent=Gun
script.Name="Not A QuickScript"
end

function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end

Gun=char

function Equip()
if Debounce==1 and Gun:findFirstChild("Trigger")==nil then
rshoulder = char.Torso["Right Shoulder"]
rshoulder.Parent = nil
rweld = Instance.new("Weld")
rweld.Parent = char
rweld.Name="Right Shoulder"
rweld.Part0 = char["Right Arm"]
rweld.Part1 = char.Torso
lshoulder = char.Torso["Left Shoulder"]
lshoulder.Parent = nil
lweld = Instance.new("Weld")
lweld.Parent = char
lweld.Name="Left Shoulder"
lweld.Part0 = char["Left Arm"]
lweld.Part1 = char.Torso
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,4)
Handle.Parent=Gun
Handle.BrickColor=Color
Handle.Name="Handle"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.5,0.5,0.9)
Weld=Instance.new("Weld")
Weld.Parent=char["Right Arm"]
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,-0.71,1)*CFrame.Angles(math.rad(90),0,0)
Debouce=0
Sight=Instance.new("Part")
Sight.BrickColor=Color2
Sight.Size=Vector3.new(1,1,1)
Sight.Parent=Gun
Sight.Name="Sight"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Sight
Mesh.Scale=Vector3.new(0.31,0.9,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Sight
Weld.C0=CFrame.new(0,-0.5,-0.37)*CFrame.Angles(math.rad(90),0,0)
Grip1=Instance.new("Part")
Grip1.BrickColor=Color
Grip1.Size=Vector3.new(1,1,1)
Grip1.Parent=Gun
Grip1.Name="Grip1"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Grip1
Mesh.Scale=Vector3.new(0.31,0.95,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Grip1
Weld.C0=CFrame.new(0,0.38,0)
Grip2=Instance.new("Part")
Grip2.BrickColor=Color
Grip2.Size=Vector3.new(1,1,1)
Grip2.Parent=Gun
Grip2.Name="Grip2"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Grip2
Mesh.Scale=Vector3.new(0.25,0.45,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Grip2
Weld.C1=CFrame.new(0,-0.45,-0.95)*CFrame.Angles(math.rad(30),0,0)
Lock1=Instance.new("Part")
Lock1.BrickColor=Color2
Lock1.Size=Vector3.new(1,1,1)
Lock1.Parent=Gun
Lock1.Name="Lock1"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Lock1
Mesh.Scale=Vector3.new(0.26,0.4,0.07)
Weld=Instance.new("Weld")
Weld.Parent=Grip2
Weld.Part1=Weld.Parent
Weld.Part0=Lock1
Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
SightCap1=Instance.new("Part")
SightCap1.BrickColor=Color
SightCap1.Size=Vector3.new(1,1,1)
SightCap1.Parent=Gun
SightCap1.Name="SightCap1"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=SightCap1
Mesh.Scale=Vector3.new(1,0.1,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=SightCap1
Weld.C0=CFrame.new(0,-1,-0.37)*CFrame.Angles(math.rad(90),0,0)
SightCap2=Instance.new("Part")
SightCap2.BrickColor=Color
SightCap2.Size=Vector3.new(1,1,1)
SightCap2.Parent=Gun
SightCap2.Name="SightCap2"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=SightCap2
Mesh.Scale=Vector3.new(1,0.1,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=SightCap2
Weld.C0=CFrame.new(0,0,-0.37)*CFrame.Angles(math.rad(90),0,0)
Barrel=Instance.new("Part")
Barrel.BrickColor=Color
Barrel.Size=Vector3.new(1,1,1)
Barrel.Parent=Gun
Barrel.Name="Barrel"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Barrel
Mesh.Scale=Vector3.new(0.31,1.4,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-2.3,0)*CFrame.Angles(math.rad(90),0,0)
CrossHair=Instance.new("Part")
CrossHair.BrickColor=Color2
CrossHair.Size=Vector3.new(1,1,1)
CrossHair.Parent=Gun
CrossHair.Name="CrossHair"
BLAH[1]=CrossHair
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=CrossHair
Mesh.Scale=Vector3.new(0.03,0.17,0.1)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=CrossHair
Weld.C0=CFrame.new(0,-0.2,3)*CFrame.Angles(0,0,0)
Trigger=Instance.new("Part")
Trigger.BrickColor=Color
Trigger.Size=Vector3.new(1,1,1)
Trigger.Parent=Gun
Trigger.Name="Trigger"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Trigger
Mesh.Scale=Vector3.new(0.05,0.15,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Trigger
Weld.C0=CFrame.new(0,0.17,0.47)*CFrame.Angles(math.rad(25),0,0)
GripRing=Instance.new("Part")
GripRing.BrickColor=Color2
GripRing.Size=Vector3.new(1,1,1)
GripRing.Parent=Gun
GripRing.Name="GripRing"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=GripRing
Mesh.Scale=Vector3.new(0.4,0.1,1.5)
Weld=Instance.new("Weld")
Weld.Parent=Grip1
Weld.Part1=Weld.Parent
Weld.Part0=GripRing
Weld.C0=CFrame.new(0,0,0)
for i=10,0,-0.5 do
rweld.C0 = CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0) 
lweld.C0=CFrame.new(-0.45, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))  --x=-0.5
wait()
end
wait(1)
Debounce=1
end
end --wow. looks really good for only 11 parts >.>

function Unequip()
rweld:remove()
lweld:remove()
rshoulder.Parent = char.Torso
lshoulder.Parent = char.Torso
animate = char.Animate
new = animate:Clone()
animate:Remove()
new.Parent = char
--[[for _,v in pairs(Gun:children()) do
if v~=script and v.Name~="Handle" then 
v:remove()
end
end]]
end

script.Parent.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png"
setfenv(onButton1Down,getfenv(Equip))
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
Equip()
end)
script.Parent.Deselected:connect(Unequiped)
-------------------------------------------------------------
local Tool=script.Parent

local char=game.Players[Name].Character
char.Humanoid.WalkSpeed=30
char.Humanoid.MaxHealth=math.huge
pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)

Debounce=1
Dar=nil
function onButton1Down(mouses)
local mouse={Hit=mouses.Hit,Target=mouses.Target}
if Debounce==1 and mouse.Target then
Debounce=0
CrossHair=BLAH[1]
if (mouse.Hit.p-char.Torso.Position).magnitude+2<105 then
for i=1,(mouse.Hit.p-char.Torso.Position).magnitude+2 do
if Dar and Dar.Name~="Base" then
local mouse={Hit=Dar.CFrame,Target=Dar}
break
else
Ray(CrossHair.Position+(CrossHair.Position-mouse.Hit.p).unit*-i,workspace)
end
end
end
if Dar and Dar.Name~="Base" then
mouse["Hit"]=Dar.CFrame
mouse["Target"]=Dar
end
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Yellow()
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,2)
Laz.CFrame=CFrame.new((CrossHair.Position+mouse.Hit.p)/2,mouse.Hit.p)
Laz.Parent=char
Laz.Transparency=0
if mouse.Target.Name=="Head" then
pcall(function()
mouse.Target.Parent.Torso.Name="Boom"
mouse.Target.Parent.Humanoid.PlatformStand=true
end)
else
pcall(function()
mouse.Target.Parent.Humanoid:TakeDamage(85)
mouse.Target.Parent.Humanoid.PlatformStand=true
mouse.Target.Parent.Torso.Velocity=(mouse.Target.Parent.Torso.Position-char.Torso.Position).unit*110
mouse.Target.Parent.Humanoid.PlatformStand=false
end)
end
local Me=Instance.new("BlockMesh")
Me.Scale = Vector3.new(.15,.15,(CrossHair.Position - mouse.Hit.p).magnitude/2) 
Me.Parent=Laz
Delay(0,function()
local Laz=Laz
for i=1,10 do
wait()
Laz.Transparency=i/10
end
end)
Shell=Instance.new("Part")
Shell.BrickColor=Color
Shell.Size=Vector3.new(1,1,1)
Shell.Velocity=(char["Left Leg"].Position-char["Right Leg"].Position).unit*-10
Shell.Position=char.Grip1.Position+Vector3.new(0,-0.5,0)
Shell.Parent=workspace
Shell.CanCollide=false
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(0.12,0.12,0.12) 
Mesh.Parent=Shell
coroutine.resume(coroutine.create(function()
for i, cam in ipairs(game.Workspace:GetChildren()) do
if cam.className == "Camera" then
if cam.CameraSubject == char:FindFirstChild("Humanoid") then
local time = 32
local seed = Vector3.new(math.random(100, 200) / 25000, math.random(100, 200) / 25000, 0)
if math.random(1, 2) == 1 then seed = Vector3.new(-seed.x, seed.y, 0) end
if math.random(1, 2) == 1 then seed = Vector3.new(seed.x, -seed.y, 0) end
cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(seed.x * time, seed.y * time, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
for i = 1, time do
cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(-seed.x, -seed.y, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
wait()
end
end
end
end
end))
Dar=nil
wait(0.3)
Debounce=1
end
end

function Ray(pos,tab)
for _,v in pairs(tab:children()) do
if v:IsA("Part") then
local vpos=v.CFrame.p
local sizex=v.Size.x
local sizey=v.Size.y
local sizez=v.Size.z
if pos.x<(vpos.x+sizex/2) and pos.x>(vpos.x-sizex/2) then
if pos.y<(vpos.y+sizey/2) and pos.y>(vpos.y-sizey/2) then
if pos.z<(vpos.z+sizez/2) and pos.z>(vpos.z-sizez/2) then
if v.Name~="Base" and v.Parent.Name~=Name then
Dar=v
end
end
end
end
elseif v:IsA("Model") and not Dar then
Ray(pos,v)
end
end
end