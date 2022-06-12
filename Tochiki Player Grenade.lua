-- Caeso
-- TochigiGrenade

local function weldBetween(a, b)
   local weld = Instance.new("Motor6D")
   weld.Part0 = a
   weld.Part1 = b
   weld.C0 = CFrame.new()
   weld.C1 = b.CFrame:inverse()*a.CFrame
   weld.Parent = a
   return weld;
end

local function jointBetween(a, b, cfa, cfb)
   local weld = Instance.new("Motor6D")
   weld.Part0 = a
   weld.Part1 = b
   weld.C0 = cfa
   weld.C1 = cfb
   weld.Parent = a
   return weld;
end

local CharItems=game.Players:GetCharacterAppearanceAsync(8016111)
function CreateRig() -- lol thx animation editor
local parent = Instance.new("Model")
   
local Root = Instance.new("Part")
Root.Name = "HumanoidRootPart" 
Root.Anchored = true
Root.CanCollide = true
Root.Transparency = 1
Root.Size = Vector3.new(2, 2, 1)
Root.Parent = parent 
Root.CFrame = CFrame.new(0, 5.2, 4.5)
Root.BottomSurface = "Smooth"
Root.TopSurface = "Smooth"
parent.PrimaryPart = Root

local Torso = Instance.new("Part")
Torso.Name = "Torso"
Torso.Anchored = false
Torso.CanCollide = false
Torso.Size = Vector3.new(2, 2, 1)
Torso.Parent = parent
Torso.CFrame = CFrame.new(0, 5.2, 4.5)
Torso.BottomSurface = "Smooth"
Torso.TopSurface = "Smooth"

local RCA = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 )
local RCB = RCA
local RootHip = jointBetween(Root, Torso, RCA, RCB)
RootHip.Name = "Root Hip"
RootHip.MaxVelocity = 0.1


local LeftLeg = Instance.new("Part", parent)
LeftLeg.Name = "Left Leg"
LeftLeg.Anchored = false
LeftLeg.CanCollide = false
LeftLeg.Size = Vector3.new(1, 2, 1)
LeftLeg.CFrame = CFrame.new(0.5, 3.2, 4.5)
LeftLeg.BottomSurface = "Smooth"
LeftLeg.TopSurface = "Smooth"

local LHCA = CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
local LHCB = CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
local LeftHip = jointBetween(Torso, LeftLeg, LHCA, LHCB)
LeftHip.Name = "Left Hip"
LeftHip.MaxVelocity = 0.1


local RightLeg = Instance.new("Part", parent)
RightLeg.Name = "Right Leg"
RightLeg.Anchored = false
RightLeg.CanCollide = false
RightLeg.Size = Vector3.new(1, 2, 1)
RightLeg.CFrame = CFrame.new(-0.5, 3.2, 4.5)
RightLeg.BottomSurface = "Smooth"
RightLeg.TopSurface = "Smooth"


local RHCA = CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi/2)
local RHCB = CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi/2)
local RightHip = jointBetween(Torso, RightLeg, RHCA, RHCB)
RightHip.Name = "Right Hip"
RightHip.MaxVelocity = 0.1


local LeftArm = Instance.new("Part", parent)
LeftArm.Name = "Left Arm"
LeftArm.Anchored = false
LeftArm.CanCollide = false
LeftArm.Size = Vector3.new(1, 2, 1)
LeftArm.CFrame = CFrame.new(1.5, 5.2, 4.5)
LeftArm.BottomSurface = "Smooth"
LeftArm.TopSurface = "Smooth"


local LSCA = CFrame.new(-1.0, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
local LSCB = CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
local LeftShoulder = jointBetween(Torso, LeftArm, LSCA, LSCB)
LeftShoulder.Name = "Left Shoulder"
LeftShoulder.MaxVelocity = 0.1


local RightArm = Instance.new("Part", parent)
RightArm.Name = "Right Arm"
RightArm.Anchored = false
RightArm.CanCollide = false
RightArm.Size = Vector3.new(1, 2, 1)
RightArm.CFrame = CFrame.new(-1.5, 5.2, 4.5)
RightArm.BottomSurface = "Smooth"
RightArm.TopSurface = "Smooth"

local RSCA = CFrame.new(1.0, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi/2)
local RSCB = CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi/2)
local RightShoulder = jointBetween(Torso, RightArm, RSCA, RSCB)
RightShoulder.Name = "Right Shoulder"
RightShoulder.MaxVelocity = 0.1


local Head = Instance.new("Part", parent)
Head.Name = "Head"
Head.Anchored = false
Head.CanCollide = true
Head.Size = Vector3.new(2, 1, 1)
Head.CFrame = CFrame.new(0, 6.7, 4.5)
Head.BottomSurface = "Smooth"
Head.TopSurface = "Smooth"

local NCA = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local NCB = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local Neck = jointBetween(Torso, Head, NCA, NCB)
Neck.Name = "Neck"
Neck.MaxVelocity = 0.1

local Face = Instance.new("Decal", Head)
Face.Name = "Face"
Face.Texture = "rbxasset://textures/face.png"

Instance.new("SpecialMesh",Head).Scale=Vector3.new(1.25,1.25,1.25)

Instance.new("Humanoid", parent) 

return parent
end
local rig=CreateRig()
for _,v in pairs(CharItems:GetChildren()) do
if v:IsA("Accessory") or v:IsA("BodyColors") then
v.Parent=rig
end
end

local character=game.Players.LocalPlayer.Character
local humanoid=character:WaitForChild("Humanoid")
game:GetService("UserInputService").InputBegan:connect(function (input)
if input.UserInputType==Enum.UserInputType.MouseButton1 and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
local newrig=rig:clone()
newrig.Parent=workspace
newrig.Name="Tochigi Grenade"
newrig.HumanoidRootPart.Anchored=false
local targetPos = game.Players.LocalPlayer:GetMouse().Hit.p
local lookAt = (targetPos - character.Head.Position).unit
local spawnPos = character.PrimaryPart.Position
spawnPos  = spawnPos + (lookAt * 5)
newrig:MoveTo(spawnPos)
newrig.HumanoidRootPart.Velocity=lookAt*200+Vector3.new(0,50,0)
newrig.Humanoid.Touched:wait()
Instance.new("Explosion",workspace).Position=newrig.Torso.Position
wait(3)
newrig:Destroy()
end
end)