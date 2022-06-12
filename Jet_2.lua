if (script.Parent.className ~= "HopperBin") then 
local h = Instance.new("HopperBin") 
h.Name = "Tool" 
h.Parent = game.Players.acb227.Backpack 
script.Parent = h 
script.Name = "Function" 
end 
Bin = script.Parent 
Person = game.Players.LocalPlayer 
PersonT = Person.Character.Torso 
Hold = false 
Lazer = false 
Grabbed = nil 
Debounce = false 
FDebounce = false 
Flight = false 
NormalHand = 1 --Change to your preffered hand 1 being "Right" and 2 begin "Left" 
NormalFoot = 3 --Change to your preffered foot 3 being "Right" and 4 begin "Left" 
Joints = {PersonT:findFirstChild("Right Shoulder"), PersonT:findFirstChild("Left Shoulder"), PersonT:findFirstChild("Right Hip"), PersonT:findFirstChild("Left Hip")} 
Limbs = {Person.Character:findFirstChild("Right Arm"), Person.Character:findFirstChild("Left Arm"), Person.Character:findFirstChild("Right Leg"), Person.Character:findFirstChild("Left Leg")} 
if (Person.Character:findFirstChild("Suit") ~= nil) then 
Person.Character.Suit:remove() 
end 
Suit = Instance.new("Model") 
Suit.Parent = Person.Character 
Suit.Name = "Suit" 
---Watch 
Band = Instance.new("Part") 
Band.Parent = Suit 
Band.Name = "Band" 
Band.CanCollide = false 
Band.formFactor = "Symmetric" 
Band.Size = Vector3.new(1, 1, 1) 
Band.BrickColor = BrickColor.new("Black") 
Band.TopSurface = 0 
Band.BottomSurface = 0 
BandM = Instance.new("SpecialMesh") 
BandM.MeshType = "Brick" 
BandM.Parent = Band 
BandM.Scale = Vector3.new(1.03, 0.2, 1.03) 
Band:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Band 
Weld.Part0 = Limbs[NormalHand] 
Weld.Part1 = Band 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 5, 0) 
Watch1 = Instance.new("Part") 
Watch1.Parent = Suit 
Watch1.Name = "Watch1" 
Watch1.CanCollide = false 
Watch1.formFactor = "Symmetric" 
Watch1.Size = Vector3.new(1, 1, 1) 
Watch1.BrickColor = BrickColor.new("Black") 
Watch1.TopSurface = 0 
Watch1.BottomSurface = 0 
Watch1M = Instance.new("CylinderMesh") 
Watch1M.Parent = Watch1 
Watch1M.Scale = Vector3.new(0.3, 0.2, 0.3) 
Watch1:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Watch1 
Weld.Part0 = Band 
Weld.Part1 = Watch1 
Weld.C0 = CFrame.new(0, 0, -0.41) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) 
Watch2 = Instance.new("Part") 
Watch2.Parent = Suit 
Watch2.Name = "Watch2" 
Watch2.CanCollide = false 
Watch2.formFactor = "Symmetric" 
Watch2.Size = Vector3.new(1, 1, 1) 
Watch2.BrickColor = BrickColor.new("White") 
Watch2.Shape = "Ball" 
Watch2.TopSurface = 0 
Watch2.BottomSurface = 0 
Watch2.Transparency = 1
--Watch2M = Instance.new("SpecialMesh") 
--Watch2M.MeshType = "Sphere"
--Watch2M.Parent = Watch2 
--Watch2M.Scale = Vector3.new(0.25, 0.2, 0.25) 
Watch2:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Watch2 
Weld.Part0 = Game.Workspace.acb227.Head 
Weld.Part1 = Watch2 
Weld.C0 = CFrame.new(0, 5, 0.5) * CFrame.fromEulerAnglesXYZ(1.57, -15, 0) 

function SetAngle(Joint, Angle) 
if (Joint == 1) or (Joint == 3) then 
Joints[Joint].DesiredAngle = Angle 
end 
if (Joint == 2) or (Joint == 4) then 
Joints[Joint].DesiredAngle = -Angle 
end 
end 
function DisableLimb(Limb) 
Joints[Limb]:remove() 

Joint = Instance.new("Motor") 
Joint.Parent = Person.Character.Torso 
Joint.Part0 = Person.Character.Torso 
Joint.Part1 = Limbs[Limb] 
Joint.MaxVelocity = 0.1 
if (Limb == 1) then 
C0 = CFrame.new(PersonT.Size.x/2 + Limbs[Limb].Size.x/2, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 5.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.Name = "Right Joint Top" 
elseif (Limb == 2) then 
C0 = CFrame.new(-PersonT.Size.x/2 - Limbs[Limb].Size.x/2, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.Name = "Left Joint Top" 
elseif (Limb == 3) then 
C0 = CFrame.new(Limbs[Limb].Size.x/2, -(Limbs[Limb].Size.y/4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.Name = "Right Joint Bottom" 
elseif(Limb == 4) then 
C0 = CFrame.new(-Limbs[Limb].Size.x/2, -(Limbs[Limb].Size.y/4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.Name = "Left Joint Bottom" 
end 
Joint.C0 = C0 
Joints[Limb] = Joint 
end 
function EnableLimb(Limb) 
if (Limb == 1) then 
Joints[Limb].Name = "Right Shoulder" 
elseif (Limb == 2) then 
Joints[Limb].Name = "Left Shoulder" 
elseif (Limb == 3) then 
Joints[Limb].Name = "Right Hip" 
elseif(Limb == 4) then 
Joints[Limb].Name = "Left Hip" 
end 
Anim = Person.Character.Animate:clone() 
Person.Character.Animate:remove() 
Anim.Parent = Person.Character 
end 
function Grab(Part) 
if (Grabbed == nil) then 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Player = game.Players:GetPlayerFromCharacter(Human.Parent) 
if (Player ~= nil) then 
if (Player ~= Person) then 
Human.Sit = true 
Weld = Instance.new("Weld") 
Weld.Name = "Grip" 
Weld.Parent = Person.Character.Torso 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = Player.Character.Torso 
Weld.C0 = CFrame.new(0, 2.5, 0) * CFrame.fromEulerAnglesXYZ(5.14/2, 0, 0) 
SetAngle(1, 3.14) 
SetAngle(2, 3.14) 
Grabbed = Player 
Human.Sit = true 
Connection1:disconnect() 
Connection2:disconnect() 
while true do 
if (Weld.Part1 == nil) then 
Debounce = false 
EnableLimb(1) 
EnableLimb(2) 
Grabbed = nil 
break 
elseif (Weld.Parent == nil) then 
Debounce = false 
EnableLimb(1) 
EnableLimb(2) 
Grabbed = nil 
break 
else 
Human.Sit = true 
end 
wait() 
end 
end 
end 
end 
end 
end 
end 
function Click(mouse) 
Hold = true 
if (Flight == true) then 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(0, 0, 0) 
Person.Character.Engine.BodyVelocity.maxForce = Vector3.new(4e+030, 4e+030, 4e+030) 
Position = Person.Character.Engine.Position 
Person.Character.Suit["Left Jet Barrel"].Smoke.Enabled = true 
Person.Character.Suit["Right Jet Barrel"].Smoke.Enabled = true 
Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(3.14/2, 0, 0) 
SetAngle(NormalHand, 3.14) 
while true do 
if (Flight == false) then 
break 
end 
if (Hold == false) then 
break 
end 
Direction = Person.Character.Engine.CFrame.lookVector 
Position = Position + 2 * 3 * Direction 
error = Position - Person.Character.Engine.Position 
Person.Character.Engine.BodyVelocity.velocity = 50 * error 
wait() 
end 
BodyP.position = Engine.Position 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(4e+050, 4e+050, 4e+050) 
Person.Character.Suit["Left Jet Barrel"].Smoke.Enabled = false 
Person.Character.Suit["Right Jet Barrel"].Smoke.Enabled = false 
Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
SetAngle(NormalHand, 0) 

end 

end 


function Release(mouse) 
Hold = false 
end 
function Direct(En, Target) 
local OriginCFrame = En:findFirstChild("BodyGyro").cframe 
local Direction = (Target - En.Position).unit 
local SpawnPosition = En.Position 
local Position = SpawnPosition + (Direction * 1) 
En:findFirstChild("BodyGyro").maxTorque = Vector3.new(9000, 9000, 9000) 
En:findFirstChild("BodyGyro").cframe = CFrame.new(Position, Position + Direction) 
end 
function PressKey(key, mouse) 


if (key == "H") then 
if (Debounce == false) then 
if (Lazer == false) then 
if (mouse.Target ~= nil) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 0.785) 
BP = Instance.new("BodyPosition") 
BP.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
BP.P = BP.P / 4 
BG = Instance.new("BodyGyro") 
BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local Hit = mouse.Target 
local _P = mouse.Hit.p 
local Mag = (Hit.Position-_P).magnitude 
local Pos = (Hit.Position-_P).unit * -Mag 
local CF = Hit.CFrame.lookVector 
while true do 
if (Lazer == false) then 
break 
end 
BP.Parent = PersonT 
BP.position = ((((CFrame.new(Hit.Position + Pos)) + (-CF)) + (Hit.CFrame.lookVector)) + (mouse.Hit.lookVector * -16)).p + Vector3.new(0, 5.7, 0) 
BG.Parent = PersonT 
BG.cframe = CFrame.new((PersonT.CFrame + (mouse.Hit.lookVector * -8)).p, (Hit.Position + Pos)) 
if (Hit.Parent == nil) or (Hit.Parent.Parent == Person.Character) then 
BP.Parent = nil 
BG.Parent = nil 
end 
local P = Instance.new("Part") 
P.Name = "Grapple Lazer" 
P.formFactor = 0 
P.Parent = Person.Character 
P.BrickColor = BrickColor.new("Hot pink") 
P.Anchored = true 
P.Transparency = 0.05 
P.Locked = true 
P.Reflectance = 0.025 
P.CanCollide = false 
P.Size = Vector3.new(1, 1, 1) 
local mesh = Instance.new("CylinderMesh") 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 

mesh.Scale = Vector3.new(0.1, (Place0.p - (Hit.Position + Pos)).magnitude, 0.1) 
mesh.Parent = P 
P.CFrame = CFrame.new((Place0.p + (Hit.Position + Pos))/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
wait() 
P:remove() 
end 
Debounce = false 
EnableLimb(NormalHand) 
BP.Parent = nil 
BG.Parent = nil 
end 
end 
end 
end 
if (key == "J") then 
if (Debounce == false) then 
if (Lazer == false) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 0.785) 
smokeBrick = Instance.new("Part") 
smokeBrick.CanCollide = false 
smokeBrick.Anchored = true 
smokeBrick.Transparency = 1 
smokeBrick.Locked = true 
smokeBrick.archivable = false 
smokeBrick.TopSurface = 0 
smokeBrick.BottomSurface = 0 
smoke = Instance.new("Smoke") 
smoke.Size = smoke.Size * 4 
while true do 
if (Lazer == false) then 
break 
end 
local Pos = mouse.Hit.p 
smokeBrick.Parent = Person.Character 
smokeBrick.CFrame = CFrame.new(Pos) 
if (mouse.Target) and (mouse.Target ~= nil) then 
smoke.Parent = smokeBrick 
local c = (mouse.Target.Color.r + mouse.Target.Color.g + mouse.Target.Color.b)/3 
smoke.Color = Color3.new(c, c, c) 
end 
local L = Instance.new("Part") 
L.Parent = Person.Character 
L.Name = "Kill Lazer" 
L.BrickColor = BrickColor.new("Pink") 
L.formFactor = 0 
L.Size = Vector3.new(1, 1, 1) 
L.Locked = true 
L.Anchored = true 
L.CanCollide = false 
L.Transparency = 0.05 
L.Reflectance = 0.1 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 
local Mesh = Instance.new("CylinderMesh") 
Mesh.Parent = L 
Mesh.Scale = Vector3.new(0.1, (Place0.p - Pos).magnitude, 0.1) 
L.CFrame = CFrame.new((Place0.p + Pos)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
if (mouse.Target ~= nil) then 
if (mouse.Target.Parent.Name:lower() == "") or ("" == "") then 
if ("" ~= "") then 
mouse.Target.Parent:BreakJoints() 
else 
mouse.Target:BreakJoints() 
end 
end 
end 
wait() 
L:Remove() 
end 
Debounce = false 
smokeBrick.Parent = nil 
EnableLimb(NormalHand) 
end 
end 
end 
if (key == "K") then 
if (Debounce == false) then 
if (Lazer == false) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 0.785) 
BP = Instance.new("BodyPosition") 
BP.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
BP.P = BP.P / 4 
BG = Instance.new("BodyGyro") 
BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local targ = nil 
local Mag = nil 
local Pos = nil 
while true do 
if (Lazer == false) then 
break 
end 
if (mouse.Target ~= nil) and (targ == nil) then 
if (mouse.Target.Anchored == false) then 
if ((mouse.Hit.p - Person.Character.Suit.Watch2.Position).magnitude <= 10000) then 
targ = mouse.Target 
BP.Parent = targ 
BG.Parent = targ 
Mag = (targ.Position - mouse.Hit.p).magnitude 
Pos = (targ.Position - mouse.Hit.p).unit * -Mag 
end 
end 
end 
local pop = mouse.Hit.p 
local G = Instance.new("Part") 
G.Parent = Person.Character 
G.Name = "Grab Lazer" 
G.Anchored = true 
G.Locked = true 
G.CanCollide = false 
G.formFactor = 0 
G.Size = Vector3.new(1, 1, 3) 
G.BrickColor = BrickColor.new("Hot pink") 
G.Reflectance = 0.05 
G.Transparency = 0.025 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 
local MeAsh = Instance.new("CylinderMesh") 
MeAsh.Parent = G 
if (targ == nil) or (targ.Anchored == true) then 
MeAsh.Scale = Vector3.new(0.1, (Place0.p-pop).magnitude, 0.1) 
G.CFrame = CFrame.new((Place0.p + pop)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
else 
BP.Parent = targ 
BP.position = (PersonT.CFrame + (mouse.Hit.lookVector * 8) + Pos).p + Vector3.new(0, 5.7, 0) 
BG.Parent = targ 
BG.cframe = CFrame.new(targ.Position, PersonT.Position) 
if (targ.Parent == nil) or (targ.Parent.Parent == Person.Character) then 
BP.Parent = nil 
BG.Parent = nil 
end 
MeAsh.Scale = Vector3.new(0.1, (Place0.p - targ.Position).magnitude, 0.1) 
G.CFrame = CFrame.new((Place0.p + (targ.Position + Pos))/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
end 
wait() 
G:Remove() 
end 
Debounce = false 
EnableLimb(NormalHand) 
BP.Parent = nil 
BG.Parent = nil 
end 
end 
end 

end 
function LiftKey(key, mouse) 
key = key:upper() 

if (key == "X") then 
if (Person.Character:findFirstChild(" Lazer") ~= nil) then 
Lazer = false 
end 
end 
end 
function Select(mouse) 
mouse.Button1Down:connect(function() Click(mouse) end) 
mouse.Button1Up:connect(function() Release(mouse) end) 
mouse.KeyDown:connect(function(key) PressKey(key, mouse) end) 
mouse.KeyUp:connect(function(key) LiftKey(key, mouse) end) 
end 
function Deselect(mouse) 
Hold = false 
Lazer = false 
Flight = false 
end 
Bin.Selected:connect(Select) 
Bin.Deselected:connect(Deselect) 
