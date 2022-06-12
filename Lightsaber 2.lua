local health = 500
local speed = 20
local damage = 20

local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("Part")
o4 = Instance.new("Part")
o5 = Instance.new("Part")
o6 = Instance.new("Part")
o7 = Instance.new("Part")
o8 = Instance.new("Part")
o9 = Instance.new("Part")
o10 = Instance.new("Part")
o11 = Instance.new("Part")
o12 = Instance.new("Part")
o13 = Instance.new("Part")
o1.Name = "Saber"
o1.Parent = mas
o2.Name = "Handle"
o2.Parent = o1
o2.Material = Enum.Material.SmoothPlastic
o2.BrickColor = BrickColor.new("Dark stone grey")
o2.Position = Vector3.new(56, 5.11798573, 33.7409973)
o2.Rotation = Vector3.new(90.0000076, -90, 0)
o2.Anchored = true
o2.CanCollide = false
o2.Shape = Enum.PartType.Cylinder
o2.Size = Vector3.new(2, 0.5, 0.5)
o2.CFrame = CFrame.new(56, 5.11798573, 33.7409973, 1.50995831e-007, -1.50995774e-007, -1, -1, -1.50995817e-007, -1.50995803e-007, -1.50995788e-007, 1, -1.50995803e-007)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.388235, 0.372549, 0.384314)
o2.Position = Vector3.new(56, 5.11798573, 33.7409973)
o3.Parent = o1
o3.Material = Enum.Material.SmoothPlastic
o3.BrickColor = BrickColor.new("Smoky grey")
o3.Position = Vector3.new(56, 4.11000824, 33.7409973)
o3.Rotation = Vector3.new(90.0000076, -90, 0)
o3.Anchored = true
o3.CanCollide = false
o3.Shape = Enum.PartType.Cylinder
o3.Size = Vector3.new(0.200000003, 0.600000024, 0.600000024)
o3.CFrame = CFrame.new(56, 4.11000824, 33.7409973, 1.50995831e-007, -1.50995774e-007, -1, -1, -1.50995817e-007, -1.50995803e-007, -1.50995788e-007, 1, -1.50995803e-007)
o3.BottomSurface = Enum.SurfaceType.Smooth
o3.TopSurface = Enum.SurfaceType.Smooth
o3.Color = Color3.new(0.356863, 0.364706, 0.411765)
o3.Position = Vector3.new(56, 4.11000824, 33.7409973)
o4.Parent = o1
o4.Material = Enum.Material.SmoothPlastic
o4.BrickColor = BrickColor.new("Smoky grey")
o4.Position = Vector3.new(56, 6.01100636, 33.7409973)
o4.Rotation = Vector3.new(90.0000076, -90, 0)
o4.Anchored = true
o4.CanCollide = false
o4.Shape = Enum.PartType.Cylinder
o4.Size = Vector3.new(0.200000003, 0.600000024, 0.600000024)
o4.CFrame = CFrame.new(56, 6.01100636, 33.7409973, 1.50995831e-007, -1.50995774e-007, -1, -1, -1.50995817e-007, -1.50995803e-007, -1.50995788e-007, 1, -1.50995803e-007)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.356863, 0.364706, 0.411765)
o4.Position = Vector3.new(56, 6.01100636, 33.7409973)
o5.Parent = o1
o5.Material = Enum.Material.SmoothPlastic
o5.BrickColor = BrickColor.new("Really black")
o5.Position = Vector3.new(55.9981995, 6.02698612, 33.7367439)
o5.Rotation = Vector3.new(90, 90, 0)
o5.Anchored = true
o5.CanCollide = false
o5.Shape = Enum.PartType.Cylinder
o5.Size = Vector3.new(0.200000003, 0.400000006, 0.5)
o5.CFrame = CFrame.new(55.9981995, 6.02698612, 33.7367439, 0, 0, 1, 1, 0, 0, 0, 1, 0)
o5.BottomSurface = Enum.SurfaceType.Smooth
o5.TopSurface = Enum.SurfaceType.Smooth
o5.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o5.Position = Vector3.new(55.9981995, 6.02698612, 33.7367439)
o6.Name = "Blade"
o6.Parent = o1
o6.Material = Enum.Material.Neon
o6.BrickColor = BrickColor.new("Really red")
o6.Transparency = 1
o6.Position = Vector3.new(55.9981995, 7.85400581, 33.7367439)
o6.Rotation = Vector3.new(90, 90, 0)
o6.Anchored = true
o6.CanCollide = false
o6.Shape = Enum.PartType.Cylinder
o6.Size = Vector3.new(3.5, 0.400000006, 0.5)
o6.CFrame = CFrame.new(55.9981995, 7.85400581, 33.7367439, 0, 0, 1, 1, 0, 0, 0, 1, 0)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Position = Vector3.new(55.9981995, 7.85400581, 33.7367439)
o7.Parent = o1
o7.Material = Enum.Material.SmoothPlastic
o7.BrickColor = BrickColor.new("Black")
o7.Position = Vector3.new(56, 4.34401417, 33.7409973)
o7.Rotation = Vector3.new(90.0000076, -90, 0)
o7.Anchored = true
o7.CanCollide = false
o7.Shape = Enum.PartType.Cylinder
o7.Size = Vector3.new(0.200000003, 0.550000012, 0.600000024)
o7.CFrame = CFrame.new(56, 4.34401417, 33.7409973, -4.37113883e-008, 0, -1, -1, -1.62920685e-007, 4.37113883e-008, -1.62920685e-007, 1, 7.12148964e-015)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.105882, 0.164706, 0.207843)
o7.Position = Vector3.new(56, 4.34401417, 33.7409973)
o8.Parent = o1
o8.Material = Enum.Material.SmoothPlastic
o8.BrickColor = BrickColor.new("Black")
o8.Position = Vector3.new(56, 4.74401188, 33.7409973)
o8.Rotation = Vector3.new(90.0000076, -90, 0)
o8.Anchored = true
o8.CanCollide = false
o8.Shape = Enum.PartType.Cylinder
o8.Size = Vector3.new(0.200000003, 0.550000012, 0.600000024)
o8.CFrame = CFrame.new(56, 4.74401188, 33.7409973, -4.37113883e-008, 0, -1, -1, -1.62920685e-007, 4.37113883e-008, -1.62920685e-007, 1, 7.12148964e-015)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.105882, 0.164706, 0.207843)
o8.Position = Vector3.new(56, 4.74401188, 33.7409973)
o9.Parent = o1
o9.Material = Enum.Material.SmoothPlastic
o9.BrickColor = BrickColor.new("Black")
o9.Position = Vector3.new(56, 5.08402443, 33.7409973)
o9.Rotation = Vector3.new(90.0000076, -90, 0)
o9.Anchored = true
o9.CanCollide = false
o9.Shape = Enum.PartType.Cylinder
o9.Size = Vector3.new(0.200000003, 0.550000012, 0.600000024)
o9.CFrame = CFrame.new(56, 5.08402443, 33.7409973, -4.37113883e-008, 0, -1, -1, -1.62920685e-007, 4.37113883e-008, -1.62920685e-007, 1, 7.12148964e-015)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.105882, 0.164706, 0.207843)
o9.Position = Vector3.new(56, 5.08402443, 33.7409973)
o10.Parent = o1
o10.Material = Enum.Material.SmoothPlastic
o10.BrickColor = BrickColor.new("Black")
o10.Position = Vector3.new(56, 5.41400814, 33.7409973)
o10.Rotation = Vector3.new(90.0000076, -90, 0)
o10.Anchored = true
o10.CanCollide = false
o10.Shape = Enum.PartType.Cylinder
o10.Size = Vector3.new(0.200000003, 0.550000012, 0.600000024)
o10.CFrame = CFrame.new(56, 5.41400814, 33.7409973, -4.37113883e-008, 0, -1, -1, -1.62920685e-007, 4.37113883e-008, -1.62920685e-007, 1, 7.12148964e-015)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.105882, 0.164706, 0.207843)
o10.Position = Vector3.new(56, 5.41400814, 33.7409973)
o11.Parent = o1
o11.Material = Enum.Material.SmoothPlastic
o11.BrickColor = BrickColor.new("Smoky grey")
o11.Position = Vector3.new(56.0248947, 5.70129061, 33.5617981)
o11.Anchored = true
o11.CanCollide = false
o11.Size = Vector3.new(0.300000012, 0.300000012, 0.200000003)
o11.CFrame = CFrame.new(56.0248947, 5.70129061, 33.5617981, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.356863, 0.364706, 0.411765)
o11.Position = Vector3.new(56.0248947, 5.70129061, 33.5617981)
o12.Parent = o1
o12.Material = Enum.Material.SmoothPlastic
o12.BrickColor = BrickColor.new("Smoky grey")
o12.Position = Vector3.new(56, 5.70401382, 33.7409973)
o12.Rotation = Vector3.new(90.0000076, -90, 0)
o12.Anchored = true
o12.CanCollide = false
o12.Shape = Enum.PartType.Cylinder
o12.Size = Vector3.new(0.200000003, 0.550000012, 0.600000024)
o12.CFrame = CFrame.new(56, 5.70401382, 33.7409973, -4.37113883e-008, 0, -1, -1, -1.62920685e-007, 4.37113883e-008, -1.62920685e-007, 1, 7.12148964e-015)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.356863, 0.364706, 0.411765)
o12.Position = Vector3.new(56, 5.70401382, 33.7409973)
o13.Name = "Button"
o13.Parent = o1
o13.Material = Enum.Material.SmoothPlastic
o13.BrickColor = BrickColor.new("Really red")
o13.Position = Vector3.new(56.0299988, 5.69999981, 33.5109978)
o13.Rotation = Vector3.new(2.04905682e-005, -90, 0)
o13.Anchored = true
o13.CanCollide = false
o13.Shape = Enum.PartType.Cylinder
o13.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o13.CFrame = CFrame.new(56.0299988, 5.69999981, 33.5109978, -4.37113883e-008, 0, -1, -3.57627869e-007, 1, 1.56324098e-014, 1, 3.57627869e-007, -4.37113883e-008)
o13.BottomSurface = Enum.SurfaceType.Smooth
o13.TopSurface = Enum.SurfaceType.Smooth
o13.Color = Color3.new(1, 0, 0)
o13.Position = Vector3.new(56.0299988, 5.69999981, 33.5109978)
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end


function indicate(part,damagevar)
local clonepart = Instance.new("Part", workspace)
clonepart.Size = Vector3.new(1,1,1)
clonepart.CanCollide = false
clonepart.Anchored = true
clonepart.CFrame = part.CFrame
clonepart.Transparency = 1
local base1 = Instance.new("BillboardGui", clonepart)
base1.Name = "damage"
base1.ExtentsOffset = Vector3.new(-0.1,2,0)
base1.Size = UDim2.new(1,0,1,0)
base1.Adornee = clonepart
local indicator = Instance.new("TextLabel", base1)
indicator.Text = "-"..math.floor(damagevar)
indicator.TextScaled = false
indicator.TextWrapped = false
indicator.TextColor3 = Color3.new(1,0,0)
indicator.TextScaled = true
indicator.FontSize = 7
indicator.Size = UDim2.new(1,0,1,0)
indicator.BackgroundTransparency = 1
local change = coroutine.wrap(function(thing,thing2)
	for i=1, 20 do
	thing.TextTransparency = thing.TextTransparency + 0.05
	thing2.ExtentsOffset = thing2.ExtentsOffset + Vector3.new(0,0.1,0)
	wait(0.0001)
	end
	indicator.Parent.Parent:Remove()
end)
change(indicator,base1)
end

---------------------------------------------------------------------------------------------------



local saber = o1
local handle = o1:FindFirstChild("Handle")
local blade = o1:FindFirstChild("Blade")
local button = o1:FindFirstChild("Button")
local Player = game.Players.LocalPlayer
o1.Parent = Player.Character
local Mouse = Player:GetMouse()
local hitter = false
local animstate = -1
local equipped = false
local keyframe = 0
local cooled = true
local cooled2 = true
local cooled3 = true
local cooled4 = true
local attacking = false
local hits = {}
local combo = 0
local qtarget = nil
local animating = false
local indexer = 0
local ready = true
local ready1 = true
local ready2 = true

Player.Character.Humanoid.MaxHealth = health
wait()
Player.Character.Humanoid.Health = Player.Character.Humanoid.MaxHealth
Player.Character.Humanoid.WalkSpeed = speed

if script.Parent ~= Player.Backpack then
script.Parent = Player.Backpack
end
local Character = Player.Character
Character.Animate:remove()
Character.Humanoid.Animator:remove()

for _,v in pairs (saber:GetChildren()) do
	if v.Name ~= "Handle" then
	local NewWeld = Instance.new("Weld")
	NewWeld.Part0  = handle
	NewWeld.Part1  = v
	NewWeld.C0     = CFrame.new()
	NewWeld.C1     = v.CFrame:toObjectSpace(handle.CFrame)
	if v.Name == "Blade" then
	NewWeld.Name = "BladeWeld"	
	end
	NewWeld.Parent = handle
	end
	wait()
end
for _,v in pairs (saber:GetChildren()) do
	v.Anchored = false
	wait()
end

handle.CFrame = Character:FindFirstChild("Right Arm").CFrame*CFrame.new(0,-1.2,-3)*CFrame.Angles(0,math.rad(270),math.rad(180))

local HandleWeld = Instance.new("Weld")
HandleWeld.Name = "HandleWeld"
HandleWeld.Part0  = Character:FindFirstChild("Right Arm")
HandleWeld.Part1  = handle
HandleWeld.C0     = CFrame.new(0,0,0)
HandleWeld.C1     = handle.CFrame:toObjectSpace(Character:FindFirstChild("Right Arm").CFrame)
HandleWeld.Parent = handle

numLerp=function(start,goal,alpha)
return(((goal-start)*alpha)+start);
end;
CFrameZero=function()
return CFrame.new(Vector3.new());
end;
local function a()
local t=tick();
local l=t%1*3;
local t=.5*math.pi*(l%1);
if l<1 then
return Color3.new(1,1-math.cos(t),1-math.sin(t));
elseif l<2 then
return Color3.new(1-math.sin(t),1,1-math.cos(t));
else
return Color3.new(1-math.cos(t),1-math.sin(t),1);
end;
end;
rad=function(value)
return math.rad(value);
end;
CFAngles=function(Vector)
return CFrame.Angles(rad(Vector.x),rad(Vector.y),rad(Vector.z));
end;
AnimStat={
lerpSpeed=.2;
lerpSpeed2=.35;
lerpTween=0;
}
Joints={
Character.HumanoidRootPart.RootJoint;
Character.Torso.Neck;
Character.Torso['Left Shoulder'];
Character.Torso['Right Shoulder'];
Character.Torso['Left Hip'];
Character.Torso['Right Hip'];
handle:FindFirstChild("HandleWeld")
}
local orig1 = Joints[1].C0
local orig2 = Joints[2].C0 
local orig3 = Joints[3].C0 
local orig4 = Joints[4].C0 
local orig5 = Joints[5].C0 
local orig6 = Joints[6].C0 
local orig7 = Joints[7].C0
JointTargets={
Character.HumanoidRootPart.RootJoint.C0;
Character.Torso.Neck.C0;
Character.Torso['Left Shoulder'].C0;
Character.Torso['Right Shoulder'].C0;
Character.Torso['Left Hip'].C0;
Character.Torso['Right Hip'].C0;
handle:FindFirstChild("HandleWeld").C0;
}
setJointCFrames=function(table)
for i=1,#table do
JointTargets[i]=table[i];
end
end
triWave=function(x)
local pi2=math.pi/2;
return math.abs((x/pi2)%4-2)-1;
end
setLerp=function(speed)
AnimStat.lerpSpeed=speed;
end;
setTween=function(tween)
AnimStat.lerpTween=tween;
end
local FPSLerp=AnimStat.lerpSpeed

local animator = coroutine.wrap(function()
while Player.Character do
	
if Player.Character.Humanoid.MoveDirection == Vector3.new(0,0,0) and not attacking and animstate ~= 0 then
ready = true
animstate = 0
keyframe = 0
elseif Player.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and not attacking and animstate ~= 1 then
ready = true
animstate = 1
keyframe = 0
end

if animstate == 0 and ready then
		
if keyframe == 0 then
ready = false
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(15));
orig2*CFrame.Angles(0,0,math.rad(-15));
orig3*CFrame.Angles(math.rad(40),math.rad(65),0);
orig4*CFrame.Angles(math.rad(40),math.rad(85),math.rad(20));
orig5*CFrame.Angles(math.rad(-15),0,0);
orig6*CFrame.Angles(math.rad(-5),math.rad(-15),0);
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 0 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
if animstate == 0 then
keyframe = 1
ready = true
end
end)
lerper(0.001)
elseif keyframe == 1 then
ready = false
JointTargets={
orig1*CFrame.new(0,0,0.05)*CFrame.Angles(0,0,math.rad(15));
orig2*CFrame.Angles(math.rad(3),0,math.rad(-15));
orig3*CFrame.Angles(math.rad(35),math.rad(60),0);
orig4*CFrame.Angles(math.rad(38),math.rad(83),math.rad(18));
orig5*CFrame.new(0,-0.05,-0.025)*CFrame.Angles(math.rad(-15),0,0);
orig6*CFrame.new(0,-0.05,-0.025)*CFrame.Angles(math.rad(-5),math.rad(-15),0);
Joints[7].C0;
}

if indexer + 1 <= 22 then
indexer = indexer + 1
for p=1,#Joints do
if animstate == 0 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],indexer/50)
end
end

ready = true
else
	indexer = 0
	keyframe = 2
	ready = true
end
elseif keyframe == 2 then
ready = false
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(15));
orig2*CFrame.Angles(0,0,math.rad(-15));
orig3*CFrame.Angles(math.rad(40),math.rad(65),0);
orig4*CFrame.Angles(math.rad(40),math.rad(85),math.rad(20));
orig5*CFrame.Angles(math.rad(-15),0,0);
orig6*CFrame.Angles(math.rad(-5),math.rad(-15),0);
Joints[7].C0;
}

if indexer + 1 <= 22 then
indexer = indexer + 1
for p=1,#Joints do
if animstate == 0 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],indexer/50)
end
end

ready = true
else
	indexer = 0
	keyframe = 1
	ready = true
end
end

elseif animstate == 1 and ready then

if keyframe == 0 then
ready = false
JointTargets={
orig1;
orig2*CFrame.Angles(math.rad(15),0,0);
orig3*CFrame.Angles(math.rad(40),math.rad(65),0);
orig4*CFrame.Angles(math.rad(40),math.rad(-65),math.rad(90));
orig5*CFrame.Angles(0,0,math.rad(35));
orig6*CFrame.Angles(0,0,math.rad(35));
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 1 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
if animstate == 1 then
keyframe = 1
ready = true
end
end)
lerper(0.001)
elseif keyframe == 1 then
ready = false
JointTargets={
orig1;
orig2*CFrame.Angles(math.rad(15),0,0);
orig3*CFrame.Angles(math.rad(40),math.rad(65),0);
orig4*CFrame.Angles(math.rad(40),math.rad(-65),math.rad(90));
orig5*CFrame.Angles(0,0,math.rad(-35));
orig6*CFrame.Angles(0,0,math.rad(-35));
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 1 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
if animstate == 1 then
keyframe = 0
ready = true
end
end)
lerper(0.001)
end

elseif animstate == 2 and ready then
	
if combo == 1 then
if keyframe == 0 then
ready = false
cooled = false
animating = true
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(45));
orig2*CFrame.Angles(0,0,math.rad(-25));
orig3*CFrame.Angles(math.rad(-35),0,0);
orig4*CFrame.Angles(math.rad(65),0,math.rad(155));
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 5 do
for p=1,#Joints do
if animstate == 2 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.2*i)
end
end
wait(rate)
end
ready = true
keyframe = 1
end)
lerper(0)
elseif keyframe == 1 then
ready = false
hitter = true
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(85));
orig2*CFrame.Angles(0,0,math.rad(-65));
orig3*CFrame.Angles(math.rad(-35),0,0);
orig4*CFrame.Angles(math.rad(65),0,math.rad(65));
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 2 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
print(i)
wait(rate)
end
ready = true
hitter = false
attacking = false
animating = false
hits = {}
keyframe = 0
animstate = -1
local comboer = coroutine.wrap(function(limit)
cooled = true
wait(limit)
if animstate ~= 2 then
cooled = false
combo = 0
wait(0.35)
cooled = true
end
end)
comboer(0.3)
end)
lerper(0.0001)
end

elseif combo == 2 then
if keyframe == 0 then
ready = false
cooled = false
animating = true
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(85));
orig2*CFrame.Angles(0,0,math.rad(-65));
orig3*CFrame.Angles(math.rad(-45),0,0);
orig4*CFrame.Angles(math.rad(-50),0,math.rad(55));
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 5 do
for p=1,#Joints do
if animstate == 2 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.2*i)
end
end
wait(rate)
end
ready = true
keyframe = 1
end)
lerper(0)
elseif keyframe == 1 then
ready = false
hitter = true
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(15));
orig2*CFrame.Angles(0,0,math.rad(-5));
orig3*CFrame.Angles(math.rad(-35),0,0);
orig4*CFrame.Angles(math.rad(-65),0,math.rad(-55));
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 2 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
ready = true
hitter = false
attacking = false
animating = false
hits = {}
keyframe = 0
animstate = -1
local comboer = coroutine.wrap(function(limit)
cooled = true
wait(limit)
if animstate ~= 2 then
cooled = false
combo = 0
wait(0.35)
cooled = true
end
end)
comboer(0.3)
end)
lerper(0.001)
end

elseif combo == 3 then
if keyframe == 0 then
ready = false
cooled = false
animating = true
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(125));
orig2*CFrame.Angles(0,0,math.rad(-105));
orig3*CFrame.Angles(math.rad(-35),0,0);
orig4*CFrame.Angles(math.rad(-50),0,math.rad(55));
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 5 do
for p=1,#Joints do
if animstate == 2 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.2*i)
end
end
wait(rate)
end
ready = true
keyframe = 1
end)
lerper(0)
elseif keyframe == 1 then
ready = false
hitter = true
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(-35));
orig2*CFrame.Angles(0,0,math.rad(-15));
orig3*CFrame.Angles(math.rad(-15),0,0);
orig4*CFrame.Angles(math.rad(65),0,math.rad(65));
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 2 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
print(i)
wait(rate)
end
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(125));
orig2*CFrame.Angles(0,0,math.rad(-105));
orig3*CFrame.Angles(math.rad(-45),0,0);
orig4*CFrame.Angles(math.rad(65),0,math.rad(65));
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}
local lerper2 = coroutine.wrap(function(rate2)
for o=1, 10 do
for y=1,#Joints do
Joints[y].C0=Joints[y].C0:lerp(JointTargets[y],0.1*o)
end
print(o)
wait(rate2)
end
ready = true
hitter = false
attacking = false
animating = false
hits = {}
keyframe = 0
animstate = -1
local comboer = coroutine.wrap(function()
combo = 0
wait(0.35)
cooled = true
end)
comboer()
end)
hits = {}
lerper2(0.00001)
end)
lerper(0.001)
end

end

elseif animstate == 3 and ready then
	
if keyframe == 0 then
Player.Character.Humanoid.WalkSpeed = 0
ready = false
cooled2 = false
animating = true
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(-85));
orig2*CFrame.Angles(0,0,math.rad(85));
orig3*CFrame.Angles(math.rad(-90),math.rad(90),0);
orig4*CFrame.Angles(math.rad(-35),0,0);
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}
local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 3 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
keyframe = 1
ready = true
end)
lerper(0.001)
elseif keyframe == 1 then
ready = false
local velocity = Instance.new("BodyVelocity",qtarget:FindFirstChild("Torso"))
velocity.Velocity = Vector3.new(0,1.5,0)
local lerper = coroutine.wrap(function(rate)
for i=1, 20 do
if animstate == 3 then
qtarget:FindFirstChild("Humanoid"):TakeDamage(damage*0.06)
indicate(qtarget:FindFirstChild("Head"),damage*0.06)
if i%2 == 0 then
local wave = Instance.new("Part", game.Workspace)
wave.FormFactor = 0
wave.Size = Vector3.new(5,5,1)
wave.Transparency = 0.6
wave.Anchored = true
wave.CanCollide = false
wave.CFrame = Player.Character.Torso.CFrame * CFrame.new(0,-2.75,0) * CFrame.Angles(0, -(3), 0)
wave.BrickColor = BrickColor.new("Institutional white")
local mesh = Instance.new("SpecialMesh", wave)
mesh.MeshType = 5
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(1,0.5,1)
local grow = coroutine.wrap(function(part)
game:GetService("Debris"):AddItem(part, 2)
for x = 1, 25 do
part.Mesh.Scale = part.Mesh.Scale + Vector3.new(0.5,0.25,0.5)
part.Transparency = part.Transparency + 0.02
wait()
end
part:Destroy()
end)
grow(wave)
end
end
wait(rate)
end
keyframe = 2
ready = true
velocity:remove()
end)
lerper(0.1)
elseif keyframe == 2 then
ready = false
attacking = false
animating = false
keyframe = 0
animstate = -1
local cooler = coroutine.wrap(function(limit)
wait(limit)
cooled2 = true
end)
cooler(8)
ready = true
Player.Character.Humanoid.WalkSpeed = speed
end

elseif animstate == 4 and ready then
	
if keyframe == 0 then
ready = false
cooled3 = false
animating = true
JointTargets={
orig1*CFrame.Angles(math.rad(15),0,0);
orig2*CFrame.Angles(math.rad(-15),0,0);
orig3*CFrame.Angles(math.rad(-10),0,math.rad(20));
orig4*CFrame.Angles(math.rad(-10),0,math.rad(-20));
orig5*CFrame.Angles(math.rad(-5),0,0);
orig6*CFrame.Angles(math.rad(-5),0,0);
Joints[7].C0
}
local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 4 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
keyframe = 1
ready = true
end)
lerper(0)
local wave = Instance.new("Part", game.Workspace)
wave.FormFactor = 0
wave.Size = Vector3.new(5,5,1)
wave.Transparency = 0.6
wave.Anchored = true
wave.CanCollide = false
wave.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,1) * CFrame.Angles(math.rad(90), -(3), 0)
wave.BrickColor = BrickColor.new("Institutional white")
local mesh = Instance.new("SpecialMesh", wave)
mesh.MeshType = 5
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(1,0.5,1)
local grow = coroutine.wrap(function(part)
game:GetService("Debris"):AddItem(part, 2)
for x = 1, 25 do
part.Mesh.Scale = part.Mesh.Scale + Vector3.new(0.25,0.125,0.25)
part.Transparency = part.Transparency + 0.02
wait()
end
part:Destroy()
end)
grow(wave)

Player.Character.HumanoidRootPart.Velocity = Player.Character.HumanoidRootPart.CFrame.lookVector*200

elseif keyframe == 1 then
ready = false
local cooler = coroutine.wrap(function()
wait(2)
cooled3 = true
end)
cooler()
wait(0.01)
ready = true
attacking = false
animating = false
keyframe = 0
animstate = -1
end

elseif animstate == 5 and ready then
	
if keyframe == 0 then
Player.Character.Humanoid.WalkSpeed = 0
ready = false
cooled4 = false
animating = true
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(-45));
orig2*CFrame.Angles(0,0,math.rad(45));
orig3*CFrame.Angles(math.rad(-45),math.rad(40),0);
orig4*CFrame.new(0,-0.5,0.5)*CFrame.Angles(math.rad(-90),0,0);
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}

local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 5 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
keyframe = 1
ready = true
end)
lerper(0.00001)
elseif keyframe == 1 then
ready = false
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(90));
orig2*CFrame.Angles(0,0,math.rad(-90));
orig3*CFrame.Angles(math.rad(-25),0,0);
orig4*CFrame.new(0,-0.25,0.5)*CFrame.Angles(math.rad(-90),0,0);
Joints[5].C0;
Joints[6].C0;
Joints[7].C0;
}

local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 5 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
keyframe = 2
ready = true
end)
lerper(0)
elseif keyframe == 2 then
ready = false
local hitter2 = true
local hits2 = {}
local throwbox = Instance.new("Part",workspace)
throwbox.Size = Vector3.new(1,9,1)
throwbox.CanCollide = false
throwbox.Anchored = false
throwbox.Transparency = 1
throwbox.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(90))
throwbox.Name = "hitbox"

throwbox.Touched:connect(function(hit)
if hitter2 and hit ~= nil and hit.Parent ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil then
local humanoid = hit.Parent:findFirstChild("Humanoid")
if humanoid ~= nil and humanoid ~= Character.Humanoid and Character.Humanoid ~= nil then
local donthit = false
for _,v in pairs (hits2) do
if v == hit.Parent.Name then
donthit = true
end
end
if not donthit then		
local sound = Instance.new("Sound", hit.Parent:FindFirstChild("Torso"))
sound.SoundId = "rbxassetid://526719128"
sound.Volume = 0.7
sound.PlayOnRemove = true
sound:Remove()
humanoid:TakeDamage(damage)
indicate(hit.Parent:FindFirstChild("Head"),damage)
table.insert(hits2,hit.Parent.Name)				
end
end
end
end)

JointTargets={
Joints[1].C0;
Joints[2].C0;
Joints[3].C0;
Joints[4].C0;
Joints[5].C0;
Joints[6].C0;
orig7*CFrame.new(0,-35,0)*CFrame.Angles(math.rad(180),0,0);
}

local lerper = coroutine.wrap(function(rate)
for i=1, 20 do
for p=1,#Joints do
if animstate == 5 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.05*i)
throwbox.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(90))
end
end
wait(rate)
end
hits2 = {}

JointTargets={
Joints[1].C0;
Joints[2].C0;
Joints[3].C0;
Joints[4].C0;
Joints[5].C0;
Joints[6].C0;
orig7;
}

local lerper2 = coroutine.wrap(function(rate2)
for y=1, 20 do
for o=1,#Joints do
if animstate == 5 then
Joints[o].C0=Joints[o].C0:lerp(JointTargets[o],0.05*y)
throwbox.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(90))
end
end
wait(rate2)
end
ready = true
hitter2 = false
attacking = false
animating = false
hits2 = {}
keyframe = 0
animstate = -1
throwbox:Remove()
Player.Character.Humanoid.WalkSpeed = speed
local cooler = coroutine.wrap(function()
wait(10)
cooled4 = true
end)
cooler()
end)
lerper2(0.001)
end)
lerper(0.001)
end

elseif animstate == 6 and ready then
	
if keyframe == 0 then
Player.Character.Humanoid.WalkSpeed = 0
ready = false
JointTargets={
orig1*CFrame.Angles(0,0,math.rad(90));
orig2*CFrame.Angles(0,0,math.rad(-90));
orig3*CFrame.Angles(math.rad(-25),math.rad(-10),0);
orig4*CFrame.new(0,-0.5,0.5)*CFrame.Angles(math.rad(-90),0,0);
Joints[5].C0;
Joints[6].C0;
orig7*CFrame.Angles(0,math.rad(-90),0);
}

local lerper = coroutine.wrap(function(rate)
for i=1, 10 do
for p=1,#Joints do
if animstate == 6 then
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],0.1*i)
end
end
wait(rate)
end
keyframe = 1
ready = true
end)
lerper(0)
elseif keyframe == 1 then
ready = false
local bladeweld = handle:FindFirstChild("BladeWeld")
if not equipped then
bladeweld.C0 = bladeweld.C0*CFrame.new(Vector3.new(3.5,0,0))
end
local grower = coroutine.wrap(function()
for i=1, 20 do
	if not equipped then
	if i == 10 then
		blade.Transparency = blade.Transparency - 0.5
	end
	if i > 10 then
	blade.Transparency = blade.Transparency - 0.05
	end
	bladeweld.C0 = bladeweld.C0*CFrame.new(Vector3.new(-(0.35/2),0,0))
	else
	blade.Transparency = blade.Transparency + 0.05
	end
	wait(0.001)
end
if not equipped then
	equipped = true
else
	equipped = false
end
JointTargets={
Joints[1].C0;
Joints[2].C0;
Joints[3].C0;
Joints[4].C0;
Joints[5].C0;
Joints[6].C0;
orig7;
}

local lerper = coroutine.wrap(function(rate)
for p=1,#Joints do
Joints[p].C0=Joints[p].C0:lerp(JointTargets[p],1)
end
Player.Character.Humanoid.WalkSpeed = speed
ready = true
attacking = false
animating = false
animstate = -1
keyframe = 0
end)
lerper()
end)
grower()
end

end
wait()
end
end)
animator()

Mouse.KeyDown:connect(function(key) 
if key == 'f' and not attacking and not animating then
if not equipped then
animating = true
attacking = true
button.BrickColor = BrickColor.new("Black")
ready = true
keyframe = 0
animstate = 6
elseif equipped then
animating = true
attacking = true
button.BrickColor = BrickColor.new("Really red")
ready = true
keyframe = 0
animstate = 6
end
elseif key=='e' and equipped and not animating and cooled and combo < 3 then
print("epress")
attacking = true
ready = true
animstate = 2
keyframe = 0
combo = combo + 1
print(combo)
elseif key=='q' and not animating and not attacking and cooled2 and Mouse.Target and Mouse.Target.Parent and Mouse.Target.Parent:FindFirstChild("Humanoid") and Mouse.Target.Parent ~= Player.Character and (Player.Character.Torso.Position-Mouse.Target.Parent:FindFirstChild("Torso").Position).magnitude <= 45 then
print("qpress")
attacking = true
qtarget = Mouse.Target.Parent
ready = true
animstate = 3
keyframe = 0
elseif key=='r' and not animating and cooled3 then
print("rpress")
attacking = true
ready = true
animstate = 4
keyframe = 0
elseif key=='t' and not animating and cooled4 and equipped and not attacking then
print("tpress")
attacking = true
ready = true
animstate = 5
keyframe = 0
end
end)

blade.Touched:connect(function(hit)
if hitter and hit ~= nil and hit.Parent ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil then
local humanoid = hit.Parent:findFirstChild("Humanoid")
if humanoid ~= nil and humanoid ~= Character.Humanoid and Character.Humanoid ~= nil then
local donthit = false
for _,v in pairs (hits) do
if v == hit.Parent.Name then
donthit = true
end
end
if not donthit then		
local sound = Instance.new("Sound", hit.Parent:FindFirstChild("Torso"))
sound.SoundId = "rbxassetid://526719128"
sound.Volume = 0.7
sound.PlayOnRemove = true
sound:Remove()
humanoid:TakeDamage(damage)
indicate(hit.Parent:FindFirstChild("Head"),damage)
table.insert(hits,hit.Parent.Name)				
end
end
end
end)