--script.Parent = game.Lighting 
wait() 
name = "Rock Thrower" 
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
pos = Vector3.new(0, 10, 0) 
leftarmcolor = BrickColor.new("Sand green") 
rightarmcolor = BrickColor.new("Sand green") 
leftlegcolor = BrickColor.new("Sand green") 
rightlegcolor = BrickColor.new("Sand green") 
torsocolor = BrickColor.new("Dark stone grey") 
headcolor = BrickColor.new("Dark stone grey") 
LeftArm = Template:Clone() 
LeftArm.formFactor = "Symmetric" 
LeftArm.Size = Vector3.new(scale, scale * 2, scale) 
LeftArm.Name = "Left Arm" 
LeftArm.BrickColor = leftarmcolor 
RightArm = Template:Clone() 
RightArm.Size = Vector3.new(scale, scale * 2, scale) 
RightArm.Name = "Right Arm" 
RightArm.BrickColor = rightarmcolor 
local rock = Instance.new("Part") 
rock.Size = Vector3.new(3,3,3) 
rock.BrickColor = rightarmcolor 
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
Face = Instance.new("Decal") 
Face.Parent = Head 
Face.Name = "face"
if math.random(1,2) == 1 then 
Face.Texture = "http://www.roblox.com/asset/?id=25547935" 
else 
Face.Texture = "http://www.roblox.com/asset/?id=32333940"
end 
Character = Instance.new("Model") 
Character.Name = name 
 
--script.Parent = Character 
Humanoid = Instance.new("Humanoid") 
Humanoid.WalkSpeed = 13 
LeftArm.Parent = Character 
RightArm.Parent = Character 
rock.Parent = Character 
LeftLeg.Parent = Character 
RightLeg.Parent = Character 
Torso.Parent = Character 
Head.Parent = Character 
Humanoid.Parent = Character 
local weld = Instance.new("Weld") 
weld.Parent = rock 
weld.Part0 = rock 
weld.Part1 = RightArm 
weld.C0 = CFrame.new(0,1,0) 
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
--[[Children = owner.Character:GetChildren() 
for i = 1, #Children do 
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
Character.Parent = game:GetService("Workspace") 
Humanoid.Died:connect(function() pose = "Dead" wait(5.5) if Character == nil then script:Remove() return end Character:Remove() script:Remove() end) 
Humanoid.Running:connect(function(speed) if speed > 0 then pose = "Running" else pose = "Standing" end end) 
Humanoid.Jumping:connect(function() pose = "Jumping" end) 
Humanoid.Climbing:connect(function() pose = "climbExtra" end) 
Humanoid.GettingUp:connect(function() pose = "GettingUp" end) 
Humanoid.FreeFalling:connect(function() pose = "FreeFall" end) 
Humanoid.FallingDown:connect(function() pose = "FallingDown" end) 
Humanoid.Seated:connect(function() pose = "Seated" end) 
Humanoid.PlatformStanding:connect(function() pose = "PlatformStanding" end) 

function kill(hit) 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= "Rock Thrower" then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 1 
end 
end 

Torso.Touched:connect(function(hit) kill(hit) end) 

coroutine.resume(coroutine.create(function() 
local larm = Character:FindFirstChild("Left Arm")
local rarm = Character:FindFirstChild("Right Arm")

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 1000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Rock Thrower") then
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

while true do
	wait(0.1)
	local target = meh 
	if target ~= nil then
		Character.Humanoid:MoveTo(target.Position, target)
	end
end 
end)) 
coroutine.resume(coroutine.create(function() 
while true do
	wait(1) 
	local target = findNearestTorso(Character.Torso.Position)
	if target ~= nil then 
	if attacking2 == true then 
	local RSH = Torso["Right Shoulder"] 
	RSH.Parent = nil 
	local RW = Instance.new("Weld") 
	RW.Parent = RightArm 
	RW.Part0 = Torso 
	RW.Part1 = RightArm
	RW.C0 = CFrame.new(1.5, 0.5, 0) 
	RW.C1 = CFrame.new(0, 0.5, 0) 
--	if math.random(1,2) == 1 then 
	wait(4) 
	for i = 0,1,0.1 do 
	wait() 
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(200)*i,0,0) 
	end 
	wait(0.3) 
	for i = 0,1,0.2 do 
	wait() 
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(120)*i+math.rad(200),0,0) 
	end 
	Character.Humanoid.WalkSpeed = 16 
	rock:BreakJoints() 
	rock.Velocity = Torso.CFrame.lookVector * 300 
	rockhit = 0 
	rock.Touched:connect(function(hit) kill(b,hit) end) 

	function kill(brick,hit) 
	if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= "Rock Thrower" then 
	if rockhit == 0 then 
	rockhit = 1 
	local p = Instance.new("Part") 
	p.Parent = game.workspace 
	p.CFrame = rock.CFrame 
	p.Name = "tinyrock" 
	p.Size = Vector3.new(1,1,1) 
	p.BrickColor = rightarmcolor 
	p:BreakJoints() 
	local p2 = p:Clone() 
	p2.Parent = workspace 
	p2.Name = "tinyrock" 
	p2:BreakJoints() 
	p3 = p2:Clone() 
	p3.Parent = workspace 
	p3.Name = "tinyrock" 
	p3:BreakJoints() 
	p4 = p2:Clone() 
	p4.Parent = workspace 
	p4.Name = "tinyrock" 
	p4:BreakJoints() 
	rock.Parent = nil 
	hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 30 
	hit.Parent.Humanoid.PlatformStand = true 
	wait(0.5) 
	hit.Parent.Humanoid.PlatformStand = false 
	wait(4) 
	p:Remove() 
	p2:Remove() 
	p3:Remove() 
	p4:Remove() 
	end 
	end 
	end 
	wait(1) 
	RW.Parent = nil 
	RSH.Parent = Torso 
	wait(3) 
	Humanoid.WalkSpeed = 13 
	rock.Parent = Character 
	local weld = Instance.new("Weld") 
	weld.Parent = rock 
	weld.Part0 = rock 
	weld.Part1 = RightArm 
	weld.C0 = CFrame.new(0,1,0) 
--[[	else 
	local LSH = Torso["Left Shoulder"] 
	LSH.Parent = nil 
	local LW = Instance.new("Weld") 
	LW.Parent = RightArm 
	LW.Part0 = Torso 
	LW.Part1 = RightArm
	LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(120),0,0) 
	LW.C1 = CFrame.new(0, 0.5, 0) 
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(120),0,0) 
end]] 
end 
end 
end 
end)) 
while Character.Parent ~= nil do 
wait(0.1) 
move(game:GetService("Workspace").DistributedGameTime) 
if Character.Parent ~= nil then 
if Character.Humanoid.Sit == true then 
wait(math.random(0,3)) 
Character.Humanoid.Jump = true 
Character.Humanoid.Sit = false 
end 
end 
if Character.Parent ~= nil then 
if Character.Humanoid.PlatformStand == true then 
wait(math.random(0,3)) 
Character.Humanoid.PlatformStand = false 
end 
end 
end 
-- lego blockland This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2011 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 