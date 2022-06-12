script.Parent = game.Lighting 
while true do 
wait() 
owner = game:GetService("Players").rigletto 
name="Zombie"
maxhealth=math.random(200,500)
walkspeed=5
mindamage=1
maxdamage=10
distance=1000
scale = 1
animate = true 
follow = false 
attacking = false 
attacking2 = false
touched1 = nil 
touched2 = nil 
meh = nil 
player = nil 
pose = "Standing" 
toolAnim = "None" 
toolAnimTime = 0 
climbExtra = 0 
Colors={BrickColor.new("New Yeller"),BrickColor.new("Really red")}
attacking2 = true 
coroutine.resume(coroutine.create(function() 
while attacking2 == true do 
wait() 
meh = findNearestTorso(Character.Torso.Position) 
end 
end)) 
w = Instance.new("Weld") 
dur=math.random(1,4)




function move(time) 
if animate == false then return end 
local amplitude 
local frequency 
if pose == "Jumping" then 
RightShoulder.MaxVelocity = 0.5 
LeftShoulder.MaxVelocity = 0.5 
RightShoulder.DesiredAngle = 3.14 
LeftShoulder.DesiredAngle = -3.14 
RightHip.DesiredAngle = 0 
LeftHip.DesiredAngle = 0 
return 
end 
if pose == "FreeFall" then 
RightShoulder.MaxVelocity = 0.5 
LeftShoulder.MaxVelocity = 0.5 
RightShoulder.DesiredAngle = 3.14 
LeftShoulder.DesiredAngle = -3.14 
RightHip.DesiredAngle = 0 
LeftHip.DesiredAngle = 0 
return 
end 
if pose == "Seated" then 
RightShoulder.MaxVelocity = 0.15 
LeftShoulder.MaxVelocity = 0.15 
RightShoulder.DesiredAngle = 3.14 / 2 
LeftShoulder.DesiredAngle = -3.14 / 2 
RightHip.DesiredAngle = 3.14 / 2 
LeftHip.DesiredAngle = -3.14 / 2 
return 
end 
if pose == "Running" then 
RightShoulder.MaxVelocity = 0.15 
LeftShoulder.MaxVelocity = 0.15 
amplitude = 1 
frequency = 9 
elseif pose == "climbExtra" then 
RightShoulder.MaxVelocity = 0.5 
LeftShoulder.MaxVelocity = 0.5 
amplitude = 1 
frequency = 9 
climbExtra = 3.14 
else 
amplitude = 0.1 
frequency = 1 
end 
desiredAngle = amplitude * math.sin(time * frequency) 
RightShoulder.DesiredAngle = desiredAngle + climbExtra 
LeftShoulder.DesiredAngle = desiredAngle - climbExtra 
RightHip.DesiredAngle = -desiredAngle 
LeftHip.DesiredAngle = -desiredAngle 
for _, Children in ipairs(Character:GetChildren()) do 
if Children.className == "Tool" then 
local tool = Children 
end 
end 
if tool then 
for _, Children in ipairs(Character:GetChildren()) do 
if Children.Name == "toolanim" and Children.className == "StringValue" then 
local animStringValueObject = Children 
end 
end 
if animStringValueObject then 
toolAnim = animStringValueObject.Value 
animStringValueObject.Parent = nil 
elseif time > toolAnimTime then 
toolAnimTime = 0 
end 
if toolAnim == "None" then 
RightShoulder.DesiredAngle = 1.57 
elseif toolAnim == "Slash" then 
RightShoulder.MaxVelocity = 0.5 
RightShoulder.DesiredAngle = 0 
elseif toolAnim == "Lunge" then 
RightShoulder.MaxVelocity = 0.5 
LeftShoulder.MaxVelocity = 0.5 
RightHip.MaxVelocity = 0.5 
LeftHip.MaxVelocity = 0.5 
RightShoulder.DesiredAngle = 1.57 
LeftShoulder.DesiredAngle = 1.0 
RightHip.DesiredAngle = 1.57 
LeftHip.DesiredAngle = 1.0 
end 
else 
toolAnim = "None" 
toolAnimTime = 0 
end 
end 


Template = Instance.new("Part") 
Template.formFactor = "Symmetric" 
Template.Size = Vector3.new(scale, scale, scale) 
Template.BrickColor = BrickColor.new("New Yeller") 
Template.Locked = true 
leftarmcolor = Template.BrickColor 
rightarmcolor = Template.BrickColor 
leftlegcolor = Template.BrickColor 
rightarmcolor = Template.BrickColor 
torsocolor = Template.BrickColor 
--[[leftarmcolor = BrickColor.new(Color3.new(math.random(),math.random(),math.random())) 
rightarmcolor = leftarmcolor
leftlegcolor = BrickColor.new(Color3.new(math.random(),math.random(),math.random())) 
rightlegcolor = leftlegcolor
torsocolor = BrickColor.new(Color3.new(math.random(),math.random(),math.random())) ]]
leftarmcolor = BrickColor.new("Brick yellow")
rightarmcolor = leftarmcolor
leftlegcolor = BrickColor.new("Bright green")
rightlegcolor = leftlegcolor
torsocolor = BrickColor.new("Reddish brown")
headcolor = leftarmcolor
pos = game.workspace.Base.Position+Vector3.new(math.random(-5,5),20,math.random(150,200))
LeftArm = Template:Clone() 
LeftArm.formFactor = "Symmetric" 
LeftArm.Size = Vector3.new(scale, scale * 2, scale) 
LeftArm.Name = "Left Arm" 
LeftArm.BrickColor = leftarmcolor 
RightArm = Template:Clone() 
RightArm.Size = Vector3.new(scale, scale * 2, scale) 
RightArm.Name = "Right Arm" 
RightArm.BrickColor = rightarmcolor 
LeftLeg = Template:Clone() 
LeftLeg.Size = Vector3.new(scale, scale * 2, scale) 
LeftLeg.Name = "Left Leg" 
LeftLeg.BrickColor = leftlegcolor 
RightLeg = Template:Clone() 
RightLeg.Size = Vector3.new(scale, scale * 2, scale) 
RightLeg.Name = "Right Leg" 
RightLeg.BrickColor = rightlegcolor 
Torso = Template:Clone() 
Torso.Size = Vector3.new(scale * 2, scale * 2, scale) 
Torso.LeftSurface = "Weld" 
Torso.RightSurface = "Weld" 
Torso.Position = pos + Vector3.new(0, scale * 3.5, 0) 
Torso.Name = "Torso" 
Torso.BrickColor = torsocolor 
Head = Template:Clone() 
Head.Size = Vector3.new(scale * 2, scale, scale) 
Head.TopSurface = "Smooth" 
Head.BottomSurface = "Smooth" 
Head.Name = "Head" 
Head.BrickColor = headcolor 
Mesh = Instance.new("SpecialMesh") 
Mesh.MeshType = "Head" 
Mesh.Scale = Vector3.new(1.25, 1.25, 1.25) 
Mesh.Parent = Head 
--if Character:FindFirstChild("Head") ~= nil then 
if owner.Character.Head:FindFirstChild("face") ~= nil then 
local Face = Instance.new("Decal") 
--Face = owner.Character.Head.face:Clone() 
Face.Parent = Head 
asset="http://www.roblox.com/asset/?id="
id1="43970437"
id2="46991517"
id3="69387389"
id4="35455927"
print(dur)
if dur==1 then 
Face.Texture = asset .. id1
elseif dur==2 then
Face.Texture = asset .. id2
elseif dur==3 then
Face.Texture = asset .. id3
elseif dur==4 then
Face.Texture = asset .. id4
end 
--end 
Character = Instance.new("Model") 
Character.Name = name 
--script.Parent = Character 
Humanoid = Instance.new("Humanoid") 
Humanoid.WalkSpeed = walkspeed 
for i=0,20 do
Humanoid.MaxHealth = maxhealth
Humanoid.Health = maxhealth
end
LeftArm.Parent = Character 
RightArm.Parent = Character 
LeftLeg.Parent = Character 
RightLeg.Parent = Character 
Torso.Parent = Character 
Head.Parent = Character 
Humanoid.Parent = Character 
LeftShoulder = Instance.new("Motor") 
LeftShoulder.Parent = Torso 
LeftShoulder.Part0 = Torso 
LeftShoulder.Part1 = LeftArm 
LeftShoulder.MaxVelocity = 0.1 
LeftShoulder.C0 = CFrame.new(-Torso.Size.x / 2 - LeftArm.Size.x / 2, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftShoulder.C1 = CFrame.new(0, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftShoulder.Name = "Left Shoulder" 
RightShoulder = Instance.new("Motor") 
RightShoulder.Parent = Torso 
RightShoulder.Part0 = Torso 
RightShoulder.Part1 = RightArm 
RightShoulder.MaxVelocity = 0.1 
RightShoulder.C0 = CFrame.new(Torso.Size.x / 2 + RightArm.Size.x / 2, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightShoulder.C1 = CFrame.new(0, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightShoulder.Name = "Right Shoulder" 
LeftHip = Instance.new("Motor") 
LeftHip.Parent = Torso 
LeftHip.Part0 = Torso 
LeftHip.Part1 = LeftLeg 
LeftHip.MaxVelocity = 0.1 
LeftHip.C0 = CFrame.new(-LeftLeg.Size.x / 2, -(LeftLeg.Size.y / 4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftHip.C1 = CFrame.new(0, LeftLeg.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftHip.Name = "Left Hip" 
RightHip = Instance.new("Motor") 
RightHip.Parent = Torso 
RightHip.Part0 = Torso 
RightHip.Part1 = RightLeg 
RightHip.MaxVelocity = 0.1 
RightHip.C0 = CFrame.new(RightLeg.Size.x / 2, -(RightLeg.Size.y / 4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightHip.C1 = CFrame.new(0, RightLeg.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightHip.Name = "Right Hip" 
Neck = Instance.new("Weld") 
Neck.Name = "Neck" 
Neck.Part0 = Torso 
Neck.Part1 = Head 
Neck.C0 = CFrame.new(0, 1.5 * scale, 0) 
Neck.C1 = CFrame.new() 
Neck.Parent = Torso 
--Children = owner.Character:GetChildren() 
--[[for i = 1, #Children do 
if Children[i].className == "Shirt" or Children[i].className == "Pants" and scale == 1 then 
Children[i]:Clone().Parent = Character 
end 
if Children[i].className == "Hat" then 
if Children[i]:FindFirstChild("Handle") ~= nil then 
Hat = Instance.new("Hat") 
Children[i].Handle:Clone().Parent = Hat 
Hat.Handle.Size = Hat.Handle.Size * scale 
Hat.Handle.Mesh.Scale = Hat.Handle.Mesh.scale * scale 
if scale == 1 then TempScale = 1 else TempScale = scale * 1.5 end 
Hat.AttachmentPos = Children[i].AttachmentPos * TempScale 
Hat.AttachmentUp = Children[i].AttachmentUp 
Hat.AttachmentForward = Children[i].AttachmentForward 
Hat.AttachmentRight = Children[i].AttachmentRight 
Hat.Parent = Character 
end 
end 
end]]
--Torso.roblox:Remove()
Character.Parent = game:GetService("Workspace") 
--owner.Character.Sound:Clone().Parent = Character 
--owner.Character.Health:Clone().Parent = Character 
Humanoid.Died:connect(function() pose = "Dead" wait(5.5) if Character == nil then return end Character:Remove() end) 
Humanoid.Running:connect(function(speed) if speed > 0 then pose = "Running" else pose = "Standing" end end) 
Humanoid.Jumping:connect(function() pose = "Jumping" end) 
Humanoid.Climbing:connect(function() pose = "climbExtra" end) 
Humanoid.GettingUp:connect(function() pose = "GettingUp" end) 
Humanoid.FreeFalling:connect(function() pose = "FreeFall" end) 
Humanoid.FallingDown:connect(function() pose = "FallingDown" end) 
Humanoid.Seated:connect(function() pose = "Seated" end) 
Humanoid.PlatformStanding:connect(function() pose = "PlatformStanding" end) 
--owner.Chatted:connect(function(msg, recipient) onChatted(msg, recipient) end) 

attackdebounce=false
CRIT=false
Damagefunc1=function(hit,lowdamage,highdamage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
--			print(c.Value)
		Damage=math.random(lowdamage,highdamage)
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
		game:GetService("Debris"):AddItem(r,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("Really red")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

coroutine.resume(coroutine.create(function() 
local larm = Character:FindFirstChild("Left Arm")
local rarm = Character:FindFirstChild("Right Arm")

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = distance
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name~="Zombie") then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

wander=false
while true do
	wait(0.1)
	local target = meh 
	if target ~= nil then
		Character.Humanoid:MoveTo(target.Position, target)
		else
		if wander==false then
		wander=true
		Humanoid:MoveTo(game:GetService("Workspace").Base.Position + Vector3.new(math.random(-game:GetService("Workspace").Base.Size.x, game:GetService("Workspace").Base.Size.x), math.random(-game:GetService("Workspace").Base.Size.y, game:GetService("Workspace").Base.Size.y), math.random(-game:GetService("Workspace").Base.Size.z, game:GetService("Workspace").Base.Size.z)), game:GetService("Workspace").Base) 
--		Humanoid:MoveTo(game:GetService("Workspace").Base.Position, game:GetService("Workspace").Base) 
		for i=0,math.random(100,500) do
		if target==nil then
		wait()
		end
		end
		wander=false
		end
	end
end 
end)) 
coroutine.resume(coroutine.create(function() 
while true do
wait()
	local target = findNearestTorso(Character.Torso.Position)
	if target ~= nil then 
	if attacking2 == true then 
		local targ = target.Position - Torso.Position
		local magni = targ.magnitude 
		if magni<=10 then
	wait(math.random()-math.random()) 
	rand=math.random(1,2)
	if rand==1 then 
	local RSH = Torso["Right Shoulder"] 
	RSH.Parent = nil 
	local RW = Instance.new("Weld") 
	RW.Parent = RightArm 
	RW.Part0 = Torso 
	RW.Part1 = RightArm
	RW.C0 = CFrame.new((1.5)*scale, (0.5)*scale, 0) 
	RW.C1 = CFrame.new(0, (0.5)*scale, 0) 
	con1=RightArm.Touched:connect(function(hit) Damagefunc1(hit,mindamage,maxdamage,3) end) 
	for i = 0,1,0.2 do 
	wait() 
	RW.C0 = CFrame.new((1.5-0.5*i)*scale,(0.5)*scale,(-0.5*i)*scale)*CFrame.fromEulerAnglesXYZ(2*i,0,-0.5*i) 
	end 
	for i = 0,1,0.2 do 
	wait() 
	RW.C0 = CFrame.new((1.5-0.5+0.5*i)*scale,(0.5)*scale,(-0.5+0.5*i)*scale)*CFrame.fromEulerAnglesXYZ(2-2*i,0,-0.5+0.5*i) 
	end 
	con1:disconnect()
	RW.Parent = nil 
	RSH.Parent = Torso 
	elseif rand==2 then
	local LSH = Torso["Left Shoulder"] 
	LSH.Parent = nil 
	local LW = Instance.new("Weld") 
	LW.Parent = LeftArm
	LW.Part0 = Torso 
	LW.Part1 = LeftArm
	LW.C0 = CFrame.new((-1.5)*scale, (0.5)*scale, 0) 
	LW.C1 = CFrame.new(0, (0.5)*scale, 0) 
	con1=LeftArm.Touched:connect(function(hit) Damagefunc1(hit,mindamage,maxdamage,3) end) 
	for i = 0,1,0.2 do 
	wait() 
	LW.C0 = CFrame.new((-1.5+0.5*i)*scale,(0.5)*scale,(-0.5*i)*scale)*CFrame.fromEulerAnglesXYZ(2*i,0,0.5*i) 
	end 
	for i = 0,1,0.2 do 
	wait() 
	LW.C0 = CFrame.new((-1.5+0.5-0.5*i)*scale,(0.5)*scale,(-0.5+0.5*i)*scale)*CFrame.fromEulerAnglesXYZ(2-2*i,0,0.5-0.5*i) 
	end 
	con1:disconnect()
	LW.Parent = nil 
	LSH.Parent = Torso 
end
end 
end
end 
end 
end)) 
while Character.Parent ~= nil do 
move(game:GetService("Workspace").DistributedGameTime) 
if Character.Parent ~= nil then 
if Character.Humanoid.Sit == true then 
wait(math.random(0,3)) 
Character.Humanoid.Jump = true 
Character.Humanoid.Sit = false 
end 
if Character.Humanoid.PlatformStand == true then 
wait(math.random(0,3)) 
Character.Humanoid.PlatformStand = false 
end 
end 
wait(0.1) 
end 
end 
end 
-- lego mediafire