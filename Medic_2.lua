local Owner = script.Parent.Parent 
local Me = Owner.Character 
script.Parent = Me 
local Head = Me.Head 
local Torso = Me.Torso 
local LeftArm = Me["Left Arm"] 
local LeftLeg = Me["Left Leg"] 
local RightArm = Me["Right Arm"] 
local RightLeg = Me["Right Leg"] 
Target = Me 
TargetTorso = Torso 
pose = "Standing" 
animate = true 
toolAnim = "None" 
toolAnimTime = 0 
climbExtra = 0 
UBERCHARGE = 0 
CHARGEREADY = false 
CHARGED = false 
maxhealthdebounce = 0 
idledebounce = false 
healing = false 
walking = false 
Mode = "Medigun" 
chatcon = nil 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
EnterMedic = {"Medic here!", "Los Weiter!", "Raus Raus!", "Horrido!", "Prepare for your examination.", "Hello, Frauleins!"} 
WalkingMedic = {"Move! Schnell!", "Mach shnell!", "Los Weiter!", "Forward!", "Good to go!", "Come over here, I promise I will heal you!"} 
DamagedMedic = {"Help!", "I require assistance!", "Assistance bitte!"} 
ChargeReadyMedic = {"I am fully charged!", "I am charged!", "Ready for ze charge, Herr doctor."} 
ChargedMedic = {"Charge me, Herr doctor.", "Now is ze time Herr doctor.", "Oktoberfest!", "I am ze Ubermensh!", "Schnell! Go get zem!", "Now go!", "Yah."} 
IdleMedic = {"That was doctor-assisted homicide!", "All I can tell you about this next procedure is that it will be... excruciating!", "Turn your head and cough.", "Achtung! Spy!", "Defend ze point!", "Another successful procedure.", "I healed the man who will kill you", "Hold still, Schweinhunds. This will only sting for a moment."}  
ChargedIdleMedic = {"I am ze Ubermensh!", "Oktoberfest!", "Standing near the point does nothing. Get on the point Dummkopfs!", "Haha, what a bloodbath!", "The healing is not as rewarding as the hurting!", "That was doctor-assisted homicide!", "Nein."}

--[[function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 1000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Rock Thrower") and (temp2.Name ~= "yfc") then
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

coroutine.resume(coroutine.create(function() 
while true do
	wait(1) 
	Target = findNearestTorso(Character.Torso.Position) 
	TargetTorso = findNearestTorso(Character.Torso.Position) 
end 
end)) ]]

local decoy = Instance.new("Model") 
decoy.Parent = workspace 
decoy.Name = "Medic" 

local decoyhead = Head:Clone() 
decoyhead.Parent = decoy 

local decoytorso = Torso:Clone() 
decoytorso.Parent = decoy 
if decoytorso:findFirstChild("roblox") ~= nil then 
decoytorso.roblox.Parent = nil 
end 

local decoyleftarm = LeftArm:Clone() 
decoyleftarm.Parent = decoy 

local decoyrightarm = RightArm:Clone() 
decoyrightarm.Parent = decoy 

local decoyleftleg = LeftLeg:Clone() 
decoyleftleg.Parent = decoy 

local decoyrightleg = RightLeg:Clone() 
decoyrightleg.Parent = decoy 

local hair = Instance.new("Hat") 
hair.Name = "BoySceneHair" 
local hairpart = Instance.new("Part") 
hairpart.Parent = decoy 
hairpart.Size = Vector3.new(1,1,2) 
hairpart.Name = "Handle" 
hairpart.formFactor = 0
hairpart.BottomSurface = 0 
hairpart.TopSurface = 0 
hairpart.Locked = true 
hairpart.Position = decoyhead.Position 
local hairweld = Instance.new("Weld") 
hairweld.Parent = decoyhead 
hairweld.Part1 = decoyhead 
hairweld.Part0 = hairpart 
hairweld.C1 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
local hairmesh = Instance.new("SpecialMesh") 
hairmesh.Parent = hairpart 
hairmesh.MeshId = "http://www.roblox.com/asset/?id=29880227" 
hairmesh.TextureId = "http://www.roblox.com/asset/?id=29880238" 
hair.Parent = decoy 
hair.AttachmentForward = Vector3.new(0, 0, -1) 
hair.AttachmentPos = Vector3.new(0, 0.1, -0.05) 
hair.AttachmentRight = Vector3.new(1, 0, 0) 
hair.AttachmentUp = Vector3.new(0, 1, 0) 

local glasses = Instance.new("Hat") 
glasses.Name = "bunnyears" 
local glassespart = Instance.new("Part") 
glassespart.Parent = decoy 
glassespart.Size = Vector3.new(2,1,1) 
glassespart.Name = "Handle" 
glassespart.formFactor = 0
glassespart.BottomSurface = 0 
glassespart.TopSurface = 0 
glassespart.Locked = true 
glassespart.Position = decoyhead.Position 
local glassesweld = Instance.new("Weld") 
glassesweld.Parent = decoyhead 
glassesweld.Part1 = decoyhead 
glassesweld.Part0 = glassespart 
glassesweld.C1 = CFrame.new(0, 0.2, -0.2, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
local glassesmesh = Instance.new("SpecialMesh") 
glassesmesh.Parent = glassespart 
glassesmesh.MeshId = "http://www.roblox.com/asset/?id=11419729" 
glassesmesh.TextureId = "http://www.roblox.com/asset/?id=11419678" 
glasses.Parent = decoy 
glasses.AttachmentForward = Vector3.new(0, 0, -1) 
glasses.AttachmentPos = Vector3.new(0, 0.3, 0.2) 
glasses.AttachmentRight = Vector3.new(1, 0, 0) 
glasses.AttachmentUp = Vector3.new(0, 1, 0) 

local decoyhumanoid = Instance.new("Humanoid") 
decoyhumanoid.Parent = decoy 

decoytorso.Position = Torso.Position + Vector3.new(0,5,0) 
LeftShoulder = Instance.new("Motor") 
LeftShoulder.Parent = decoytorso 
LeftShoulder.Part0 = decoytorso 
LeftShoulder.Part1 = decoyleftarm 
LeftShoulder.MaxVelocity = 0.1 
LeftShoulder.C0 = CFrame.new(-decoytorso.Size.x / 2 - decoyleftarm.Size.x / 2, decoyleftarm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftShoulder.C1 = CFrame.new(0, decoyleftarm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftShoulder.Name = "Left Shoulder" 
RightShoulder = Instance.new("Motor") 
RightShoulder.Parent = decoytorso 
RightShoulder.Part0 = decoytorso 
RightShoulder.Part1 = decoyrightarm 
RightShoulder.MaxVelocity = 0.1 
RightShoulder.C0 = CFrame.new(decoytorso.Size.x / 2 + decoyrightarm.Size.x / 2, decoyrightarm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightShoulder.C1 = CFrame.new(0, decoyrightarm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightShoulder.Name = "Right Shoulder" 
LeftHip = Instance.new("Motor") 
LeftHip.Parent = decoytorso 
LeftHip.Part0 = decoytorso 
LeftHip.Part1 = decoyleftleg 
LeftHip.MaxVelocity = 0.1 
LeftHip.C0 = CFrame.new(-decoyleftleg.Size.x / 2, -(decoyleftleg.Size.y / 4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftHip.C1 = CFrame.new(0, decoyleftleg.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftHip.Name = "Left Hip" 
RightHip = Instance.new("Motor") 
RightHip.Parent = decoytorso 
RightHip.Part0 = decoytorso 
RightHip.Part1 = decoyrightleg 
RightHip.MaxVelocity = 0.1 
RightHip.C0 = CFrame.new(decoyrightleg.Size.x / 2, -(decoyrightleg.Size.y / 4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightHip.C1 = CFrame.new(0, decoyrightleg.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightHip.Name = "Right Hip" 
Neck = Instance.new("Weld") 
Neck.Name = "Neck" 
Neck.Part0 = decoytorso 
Neck.Part1 = decoyhead 
Neck.C0 = CFrame.new(0, 1.5 * 1, 0) 
Neck.C1 = CFrame.new() 
Neck.Parent = decoytorso 
local GUI = Instance.new("BillboardGui") 
GUI.Adornee = decoytorso 
GUI.Parent = decoytorso 
GUI.Active = true 
GUI.Enabled = true 
GUI.Size = UDim2.new(1, 0, 1, 0) 
GUI.StudsOffset = Vector3.new(0, 4, 0) 
local Chat = Instance.new("TextLabel") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.Position = UDim2.new(0.599999964, 0, 0, 0) 
Chat.Visible = true 
Chat.Text = " " 

if Me:FindFirstChild("Animate") ~= nil then 
local decoyanimate = Me.Animate:Clone() 
decoyanimate.Parent = decoy 
end 

local decoyshirt = Instance.new("Shirt") 
decoyshirt.Parent = decoy 
decoyshirt.ShirtTemplate = "http://www.roblox.com/asset/?id=23869061" 
local decoypants = Instance.new("Pants") 
decoypants.Parent = decoy 
decoypants.PantsTemplate = "http://www.roblox.com/asset/?id=23869182" 

local medigun = Instance.new("Model") 
medigun.Parent = decoy 
medigun.Name = "Medigun" 
local medipart1 = Instance.new("Part") 
medipart1.Parent = medigun 
medipart1.BrickColor = BrickColor.new("Medium stone grey") 
medipart1.Name = "H1" 
medipart1.TopSurface = "Smooth" 
medipart1.BottomSurface = "Smooth" 
medipart1.Size = Vector3.new(1,1,1) 
medipart1.CanCollide = false 
medipart1.Position = decoyleftarm.Position 
local medipart2 = medipart1:Clone() 
medipart2.Parent = medigun 
medipart2.Name = "H2" 
local medipart3 = medipart1:Clone() 
medipart3.Parent = medigun 
medipart3.Name = "H3" 
local medipart4 = medipart1:Clone() 
medipart4.Parent = medigun 
medipart4.Name = "H4" 
local medipart5 = medipart1:Clone() 
medipart5.Parent = medigun 
medipart5.Name = "H5" 
local medipart6 = medipart1:Clone() 
medipart6.Parent = medigun 
medipart6.Name = "H6" 
local medipart7 = medipart1:Clone() 
medipart7.Parent = medigun 
medipart7.Name = "H7" 
local medipart8 = medipart1:Clone() 
medipart8.Parent = medigun 
medipart8.Name = "H8" 
local medipart9 = medipart1:Clone() 
medipart9.Parent = medigun 
medipart9.Name = "H9" 
local medipart10 = medipart1:Clone() 
medipart10.Parent = medigun 
medipart10.Name = "H10" 
local medipart11 = medipart1:Clone() 
medipart11.Parent = medigun 
medipart11.Name = "H11" 
local medihandle = medipart1:Clone() 
medihandle.Parent = medigun 
medihandle.Name = "Handle" 
medihandle.BrickColor = BrickColor.new("Bright blue") 
local beam = Instance.new("Part")
beam.formFactor = 0
beam.Transparency = 0.3
beam.CanCollide = false
beam.Anchored = true
beam.Locked = true
beam.Name = "Beam"
beam.Size = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh")
m.Parent = beam

local medimesh1 = Instance.new("SpecialMesh") 
medimesh1.Parent = medipart1 
medimesh1.MeshType = "Head" 
medimesh1.Scale = Vector3.new(0.75, 1.25, 0.75) 
local medimesh2 = Instance.new("SpecialMesh") 
medimesh2.Parent = medipart2 
medimesh2.MeshType = "Head" 
medimesh2.Scale = Vector3.new(0.35, 1.75, 0.35) 
local medimesh3 = Instance.new("SpecialMesh") 
medimesh3.Parent = medipart3 
medimesh3.MeshType = "Head" 
medimesh3.Scale = Vector3.new(0.25, 1.5, 0.25) 
local medimesh4 = Instance.new("SpecialMesh") 
medimesh4.Parent = medipart4 
medimesh4.MeshType = "Head" 
medimesh4.Scale = Vector3.new(0.25, 1.5, 0.25) 
local medimesh5 = Instance.new("SpecialMesh") 
medimesh5.Parent = medipart5 
medimesh5.MeshType = "Head" 
medimesh5.Scale = Vector3.new(0.25, 1.5, 0.25) 
local medimesh6 = Instance.new("SpecialMesh") 
medimesh6.Parent = medipart6 
medimesh6.MeshType = "Head" 
medimesh6.Scale = Vector3.new(1.25, 0.75, 1.25) 
local medimesh7 = Instance.new("SpecialMesh") 
medimesh7.Parent = medipart7 
medimesh7.MeshType = "Head" 
medimesh7.Scale = Vector3.new(0.85, 1.5, 0.85) 
local medimesh8 = Instance.new("SpecialMesh") 
medimesh8.Parent = medipart8 
medimesh8.MeshType = "Head" 
medimesh8.Scale = Vector3.new(1.15, 0.65, 1.15) 
local medimesh9 = Instance.new("SpecialMesh") 
medimesh9.Parent = medipart9 
medimesh9.MeshType = "Brick" 
medimesh9.Scale = Vector3.new(0.35, 1, 0.5) 
local medimesh10 = Instance.new("SpecialMesh") 
medimesh10.Parent = medipart10 
medimesh10.MeshType = "Brick" 
medimesh10.Scale = Vector3.new(0.35, 0.25, 0.75) 
local medimesh11 = Instance.new("SpecialMesh") 
medimesh11.Parent = medipart11 
medimesh11.MeshType = "Head" 
medimesh11.Scale = Vector3.new(0.86, 1.5, 0.86) 
local medimesh1 = Instance.new("SpecialMesh") 
medimesh1.Parent = medipart1 
medimesh1.MeshType = "Head" 
medimesh1.Scale = Vector3.new(0.75, 1.25, 0.75) 
local hand = medihandle
local h1 = medipart1
local h2 = medipart2
local h3 = medipart3
local h4 = medipart4
local h5 = medipart5
local h6 = medipart6
local h7 = medipart7
local h8 = medipart8
local h9 = medipart9
local h10 = medipart10
local h11 = medipart11
local medipack = Instance.new("Part")
medipack.formFactor = 0
medipack.TopSurface = 0
medipack.BottomSurface = 0
medipack.Size = Vector3.new(2,2,1)
medipack.BrickColor = BrickColor.new(1)
medipack.Name = "Medipack"
medipack.Locked = true
local decal = Instance.new("Decal")
decal.Face = "Back"
decal.Texture = "http://www.roblox.com/asset/?id=5235213"
decal.Parent = medipack
	wait() 
	local w1 = Instance.new("Weld")
	w1.Parent = decoyleftarm
	w1.Part0 = decoyleftarm
	w1.Part1 = h1
	w1.C0 = CFrame.new(0,-0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) 
	local w = Instance.new("Weld")
	w.Parent = decoytorso
	w.Part0 = w.Parent
	w.Part1 = medipack
	w.C0 = CFrame.new(0,0,1)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h1
	w.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.57)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h2
	w.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.57)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h3
	w.C0 = CFrame.new(0.75,0.5,0.5) * CFrame.fromEulerAnglesXYZ(0.8,0,0)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h4
	w.C0 = CFrame.new(-0.75,0.5,0.5) * CFrame.fromEulerAnglesXYZ(0.8,0,0)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h5
	w.C0 = CFrame.new(0,0.95,0.95) * CFrame.fromEulerAnglesXYZ(0,0,1.57)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h6
	w.C0 = CFrame.new(0,0,-0.6) * CFrame.fromEulerAnglesXYZ(1.57,0,0)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h7
	w.C0 = CFrame.new(0,0,-1.5) * CFrame.fromEulerAnglesXYZ(1.57,0,0)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h8
	w.C0 = CFrame.new(0,0,-2) * CFrame.fromEulerAnglesXYZ(1.57,0,0)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h9
	w.C0 = CFrame.new(0,-0.75,-0.45) * CFrame.fromEulerAnglesXYZ(-0.4,0,0)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h10
	w.C0 = CFrame.new(0,-1.35,-0.3) * CFrame.fromEulerAnglesXYZ(-0.4,0,0)
	local w = Instance.new("Weld")
	w.Parent = hand
	w.Part0 = hand
	w.Part1 = h11
	w.C0 = CFrame.new(0,0,0.5) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
wait() 

function EnterMedicChat() 
if decoyhumanoid.Health ~= 0 then 
coroutine.resume(coroutine.create(function() 
Chat.Text = EnterMedic[math.random(1,#EnterMedic)] 
wait(5) 
Chat.Text = " " 
end)) 
end 
end 

function WalkingMedicChat() 
if decoyhumanoid.Health ~= 0 then 
coroutine.resume(coroutine.create(function() 
Chat.Text = WalkingMedic[math.random(1,#WalkingMedic)] 
wait(5) 
Chat.Text = " " 
end)) 
end 
end 

function DamagedMedicChat() 
coroutine.resume(coroutine.create(function() 
Chat.Text = DamagedMedic[math.random(1,#DamagedMedic)] 
wait(5) 
Chat.Text = " " 
end)) 
end 

function ChargeReadyMedicChat() 
if decoyhumanoid.Health ~= 0 then 
coroutine.resume(coroutine.create(function() 
Chat.Text = ChargeReadyMedic[math.random(1,#ChargeReadyMedic)] 
wait(5) 
Chat.Text = " " 
end)) 
end 
end 

function ChargedMedicChat() 
if decoyhumanoid.Health ~= 0 then 
coroutine.resume(coroutine.create(function() 
Chat.Text = ChargedMedic[math.random(1,#ChargedMedic)] 
wait(5) 
Chat.Text = " " 
end)) 
end 
end 

function IdleMedicChat() 
if decoyhumanoid.Health ~= 0 then 
coroutine.resume(coroutine.create(function() 
if CHARGED ~= true then 
Chat.Text = IdleMedic[math.random(1,#IdleMedic)] 
else 
Chat.Text = ChargedIdleMedic[math.random(1,#ChargedIdleMedic)] 
end 
wait(5) 
Chat.Text = " " 
end)) 
end 
end 

EnterMedicChat() 

function onChatted2(msg, recipient) 
if msg == "CHARGE NAO DOKTAR" or msg == "CHARGE ME" then 
if CHARGEREADY == true then 
ChargedMedicChat() 
CHARGED = true 
CHARGEREADY = false 
UBERCHARGE = 0 
local chargeff = Instance.new("ForceField") 
chargeff.Parent = Target 
local chargeff2 = Instance.new("ForceField") 
chargeff2.Parent = decoy 
for i = 0,500 do 
wait() 
if (Torso.Position - medipart8.Position).magnitude <= 30 then 
chargeff.Parent = Target 
chargeff2.Parent = decoy 
else 
chargeff.Parent = nil 
end 
UBERCHARGE = 0 
end 
CHARGED = false 
chargeff.Parent = nil 
chargeff2.Parent = nil 
end 
end 
end 

function onChatted(msg, recipient) 
if string.sub(msg, 0, 5) == "heal/" then 
for i, v in pairs(game.Players:GetChildren()) do 
if v.Character ~= nil then 
if string.sub(msg,6) ~= "" and string.lower(string.sub(v.Name, 1, string.len(string.sub(msg, 6)))) == string.lower(string.sub(msg, 6)) then 
if v.Character:FindFirstChild("Torso") ~= nil then 
Target = v.Character 
TargetTorso = v.Character.Torso 
if chatcon ~= nil then 
chatcon:disconnect() 
chatcon=v.Chatted:connect(function(msg, recipient) onChatted2(msg, recipient) end) 
end 
end 
end 
end 
end 
end 
--[[if string.find(msg, "heal/") then 
c = game.Players:GetChildren() 
for blawg = 1, #c do 
if string.find(msg, c[blawg].Name) then 
Target = c[blawg].Character 
TargetTorso = Target.Torso 
else 
wait() 
end 
end 
end ]]
end 

chatcon=Owner.Chatted:connect(function(msg, recipient) onChatted2(msg, recipient) end) 

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
for _, Children in ipairs(decoy:GetChildren()) do 
if Children.className == "Tool" then 
local tool = Children 
end 
end 
if tool then 
for _, Children in ipairs(decoy:GetChildren()) do 
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
decoyhumanoid.Died:connect(function() pose = "Dead" wait(5.5) if decoy == nil then return end decoy:Remove() end) 
decoyhumanoid.Running:connect(function(speed) if speed > 0 then pose = "Running" else pose = "Standing" end end) 
decoyhumanoid.Jumping:connect(function() pose = "Jumping" end) 
decoyhumanoid.Climbing:connect(function() pose = "climbExtra" end) 
decoyhumanoid.GettingUp:connect(function() pose = "GettingUp" end) 
decoyhumanoid.FreeFalling:connect(function() pose = "FreeFall" end) 
decoyhumanoid.FallingDown:connect(function() pose = "FallingDown" end) 
decoyhumanoid.Seated:connect(function() pose = "Seated" end) 
decoyhumanoid.PlatformStanding:connect(function() pose = "PlatformStanding" end) 
Owner.Chatted:connect(function(msg, recipient) onChatted(msg, recipient) end) 

RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RightShoulder.Parent = nil 
LeftShoulder.Parent = nil 
RW.Part0 = decoytorso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = decoyrightarm 
RW.Parent = decoytorso 
_G.R = RW 
LW.Part0 = decoytorso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = decoyleftarm 
LW.Parent = decoytorso 
_G.L = LW 
wait(1) 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) 
LW.C0 = CFrame.new(-1.5+1.6*i, 0.5-0.3*i, -1*i) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,-0.8*i) 
w1.C0 = CFrame.new(0.7*i,-0.5,-0.5+0.1*i) * CFrame.fromEulerAnglesXYZ(-math.rad(90)+0.75*i,0.75*i,math.rad(90)-0.5*i) 
end 
wait(1) 
local b = Instance.new("BodyGyro") 
b.P=18000
b.D=600
b.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000 
b.Parent = decoyhead 
coroutine.resume(coroutine.create(function() 
lhh = decoyhumanoid.Health 
while true do 
wait() 
if decoyhumanoid.Health < lhh then
DamagedMedicChat() 
lhh = decoyhumanoid.Health 
end 
decoyhumanoid.PlatformStand = false 
decoyhumanoid.Sit = false 
if healing ~= true and Mode == "Medigun" then 
WalkingMedicChat() 
decoyhumanoid:MoveTo(TargetTorso.Position + Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30)), TargetTorso) 
wait(3) 
else 
for i = 0,100 do 
if healing == true and idledebounce == false then 
wait() 
end 
if healing == true then 
coroutine.resume(coroutine.create(function() 
if idledebounce == false then 
idledebounce = true 
IdleMedicChat() 
wait(10) 
idledebounce = false 
end 
end)) 
end 
end 
end 
end 
end)) 
coroutine.resume(coroutine.create(function() 
while true do
for i = 0,5 do 
wait(0.1) 
beam.Reflectance = beam.Reflectance + 0.2 
m.Scale = m.Scale + Vector3.new(0.1,0,0.1) 
end 
for i = 0,5 do 
wait(0.1) 
beam.Reflectance = beam.Reflectance - 0.2 
m.Scale = m.Scale - Vector3.new(0.1,0,0.1) 
end 
end
end)) 
while true do 
wait(0) 
move(game:GetService("Workspace").DistributedGameTime) 
if (TargetTorso.Position - medipart8.Position).magnitude <= 30 then 
healing = true 
beam.BrickColor = TargetTorso.BrickColor 
beam.Parent = decoy 
beam.CFrame = CFrame.new((TargetTorso.Position + medipart8.Position) / 2, TargetTorso.Position) * CFrame.fromEulerAnglesXYZ(1.57,0,0)
m.Scale = (m.Scale - Vector3.new(0,m.Scale.y,0)) + Vector3.new(0,1,0)
m.Scale = m.Scale + Vector3.new(0,(TargetTorso.Position - medipart8.Position).magnitude - 1,0)
Target.Humanoid.Health = Target.Humanoid.Health + 0.3 
decoyhumanoid.Health = decoyhumanoid.Health + 0.1 
--[[offset=(decoytorso.Position.y-TargetTorso.Position.y)/60
mag=(decoytorso.Position-TargetTorso.Position).magnitude/80
offset=offset/mag 
decoytorso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-offset,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,-offset,0.9) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7-offset,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) 
LW.C0 = CFrame.new(-1.5+1.6, 0.5-0.3, -1) * CFrame.fromEulerAnglesXYZ(1,-offset,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,-0.8) ]]
if UBERCHARGE <= 1000 then 
--if UBERCHARGE <= 50 then 
UBERCHARGE = UBERCHARGE + 1 
elseif CHARGEREADY == false then 
ChargeReadyMedicChat() 
CHARGEREADY = true  
local s = Instance.new("Sparkles") 
s.Parent = medipart8 
coroutine.resume(coroutine.create(function() 
wait(5) 
s.Parent = nil 
end)) 
end 
else 
healing = false 
beam.Parent = nil
end 
local dir = (TargetTorso.Position - decoytorso.Position).unit 
local spawnpos = decoytorso.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos,  pos + dir) 
if Target.Parent == nil and Target == Me then 
decoy:BreakJoints() 
end 
if Target:findFirstChild("Humanoid") ~= nil then 
if Target.Humanoid.Health == 0 and Target == Me then 
decoy:BreakJoints() 
end 
else 
Target = Me 
TargetTorso = Torso 
end 
end 
-- mediafire