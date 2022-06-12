--[[_(_Don't_Worry_About_It_)_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = game.Players.LocalPlayer
TColor = BrickColor.new(124) -- Team Color
DColor = BrickColor.new("Really black") -- Default Color

--[[ * Commands * ]]--

--[[ * Now onto the fun stuff * ]]--

Character = Player.Character
script.Parent = Character

--[[ * Fire StickA * ]]--

pcall(function() Character.Staff:Remove() end)

Staff = Instance.new("Model")
Staff.Name = "Staff"
Staff.Parent = Character

Lightning = Instance.new("Model")
Lightning.Name = "Lightning"
Lightning.Parent = Staff

ROFLBlade = Instance.new("Model")
ROFLBlade.Name = "ROFLBlade"
ROFLBlade.Parent = Staff

--[[ Fake Torso ]]--

FT = Instance.new("Part")
FT.formFactor = "Custom"
FT.Locked = true
FT.CanCollide = false
FT.Transparency = 1
FT.Anchored = false
FT.Size = Vector3.new(0.1,0.1,0.1)
FT.Parent = Character
FW = Instance.new("Weld")
FW.Parent = FT
FW.Part0 = FT
FW.Part1 = Character["Torso"]
FW.C0 = CFrame.new(0,0,0)

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = FT
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Arm Weld * ]]--

ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = FT
ArmWeldR.Part0 = ArmWeldR.Parent
ArmWeldR.Part1 = Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Neck Weld * ]]--

Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * StickA * ]]--

StickA = Instance.new("Part")
StickA.formFactor = "Custom"
StickA.Locked = true
StickA.CanCollide = false
StickA.BrickColor = DColor
StickA.Anchored = false
StickA.Size = Vector3.new(0.25,2,0.25)
StickA.TopSurface = 0
StickA.BottomSurface = 0
StickA.Parent = Staff
MeshA = Instance.new("CylinderMesh",StickA)
MeshA.Bevel = 0.03
WeldA = Instance.new("Weld")
WeldA.Parent = StickA
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = StickA
WeldA.C0 = CFrame.new(0,-1,-0) * CFrame.Angles(-math.pi/2,0,0)
SoundA = Instance.new("Sound")
SoundA.Parent = StickA

--[[ * StickB * ]]--

StickB = Instance.new("Part")
StickB.formFactor = "Custom"
StickB.Locked = true
StickB.CanCollide = false
StickB.BrickColor = DColor
StickB.Anchored = false
StickB.Size = Vector3.new(0.25,2,0.25)
StickB.TopSurface = 0
StickB.BottomSurface = 0
StickB.Parent = Staff
MeshB = Instance.new("CylinderMesh",StickB)
MeshB.Bevel = 0.03
WeldB = Instance.new("Weld")
WeldB.Parent = StickB
WeldB.Part0 = StickA
WeldB.Part1 = StickB
WeldB.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
SpaB = Instance.new("Sparkles",StickB)
SpaB.Enabled = false

--[[ * StickC * ]]--

StickC = Instance.new("Part")
StickC.formFactor = "Custom"
StickC.Locked = true
StickC.CanCollide = false
StickC.BrickColor = DColor
StickC.Anchored = false
StickC.Size = Vector3.new(0.25,2,0.25)
StickC.TopSurface = 0
StickC.BottomSurface = 0
StickC.Parent = Staff
MeshC = Instance.new("CylinderMesh",StickC)
MeshC.Bevel = 0.03
WeldC = Instance.new("Weld")
WeldC.Parent = StickC
WeldC.Part0 = StickA
WeldC.Part1 = StickC
WeldC.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * Flame * ]]--

Flame = Instance.new("Part")
Flame.formFactor = "Custom"
Flame.Locked = true
Flame.CanCollide = false
Flame.BrickColor = DColor
Flame.Anchored = false
Flame.Size = Vector3.new(0.25,2,0.25)
Flame.Transparency = 0.5
Flame.TopSurface = 0
Flame.BottomSurface = 0
Flame.Parent = Staff
MeshD = Instance.new("CylinderMesh",Flame)
MeshD.Bevel = 0.03
MeshD.Scale = Vector3.new(0,0,0)
WeldD = Instance.new("Weld")
WeldD.Parent = Flame
WeldD.Part0 = StickB
WeldD.Part1 = Flame
WeldD.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
Fire = Instance.new("Fire",Flame)
Fire.Enabled = false
Fire.Heat = 1000
Fire.Size = 0.1

--[[ * Sound * ]]--

function sound(pitch,volume,id)
SoundA.SoundId = id
SoundA.Pitch = pitch
SoundA.Volume = volume
SoundA:Play()
end

--[[ * Spark * ]]--

function spark(A,B)
	Hit = A.CFrame
	local P = Instance.new("Part") 
	P.Name = "Guideline" 
	local Place0 = B.CFrame 
	P.formFactor = 0 
	P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
	P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
	P.Parent = Lightning
	P.BrickColor = BrickColor.Black()
	P.Anchored = true 
	P.CanCollide = false
	P.Transparency = 1
	m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1,0.1,1)
	m.Parent = P
	mh = A.CFrame
	for c1 = 1, 1 do
		oldHit = B.CFrame
		for count = 1, 10 do
			val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
			val2 = P.Size.z / 10
			val3 = P.CFrame.lookVector * -1
			val4 = count * val2
			val5 = val4 * val3
			val6 = B.CFrame.p
			Hit = CFrame.new(val5 + val1 + val6)
			local s = Instance.new("Part") 
			s.Name = "Spark" 
			local Place0 = oldHit
			s.formFactor = 0 
			s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
			s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
			s.Parent = Lightning
			s.BrickColor = BrickColor.White()
			s.Anchored = true 
			s.CanCollide = false
			m = Instance.new("BlockMesh")
			m.Scale = Vector3.new(0.1,0.1,1)
			m.Parent = s
			clone = s:clone()
			clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
			clone.BrickColor = BrickColor.Blue()
			clone.Transparency = 0.8
			clone.Parent = s.Parent
			oldHit = Hit
		end
		Hit = oldHit
		local s = Instance.new("Part") 
		s.Name = "Spark" 
		local Place0 = mh
		s.formFactor = 0 
		s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
		s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
		s.Parent = Lightning
		s.BrickColor = BrickColor.White()
		s.Anchored = true 
		s.CanCollide = false
		m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1,0.1,1)
		m.Parent = s
		clone = s:clone()
		clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
		clone.BrickColor = BrickColor.Blue()
		clone.Transparency = 0.8
		clone.Parent = s.Parent
		wait(0.5)
	end
	P:remove()
end

function PlaceL(BB)
coroutine.resume(coroutine.create(function()
local PA = Instance.new("Part")
PA.Anchored = true
PA.Locked = true
PA.CanCollide = false
PA.Transparency = 1
PA.Size = Vector3.new(0.1,0.1,0.1)
PA.Parent = Lightning
PA.CFrame = CFrame.new(BB.x,BB.y,BB.z)
spark(StickB,PA)
for i = 1,10 do wait()
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v.Transparency = v.Transparency + 0.1
end
end
end
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v:Remove()
end
end
end))
end

--[[ * Tool * ]]--

if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Staff"
Hopper.Parent = Player.Backpack
end

Blah = true
StaffOn = false
StaffStuff = false
Flying = false
Lighter = false

function EmExplode(a,e)
coroutine.resume(coroutine.create(function()
while true do wait()
if a.CFrame.y < Character.Torso.CFrame.y then
local Ex = Instance.new("Explosion")
Ex.BlastRadius = e
Ex.BlastPressure = 1000000
Ex.Position = a.Position
Ex.Parent = Character
Instance.new("ForceField",Character)
wait()
for i,v in pairs(Character:GetChildren()) do
if v.className == "ForceField" then v:Remove() end end
Molotov:Remove()
break
end
end
end))
end

function SwordOn()
if not StaffOn then
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.4,0)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.8,0)
MeshB.Scale = MeshB.Scale - Vector3.new(0.1,-0.01,0.1)
MeshC.Scale = MeshB.Scale
MeshD.Scale = MeshD.Scale + Vector3.new(0,0.42,0)
StickB.Reflectance = StickB.Reflectance + 0.2
StickC.Reflectance = StickB.Reflectance
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.075,0.025,0.05)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.125,-0.025,-0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2/2)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
StickB.BrickColor = TColor
StickC.BrickColor = TColor
Flame.BrickColor = TColor
StickB.Reflectance = StickB.Reflectance - 0.05
StickC.Reflectance = StickB.Reflectance
MeshD.Scale = MeshD.Scale + Vector3.new(0.1,0,0.1)
MeshA.Scale = MeshA.Scale + Vector3.new(0.01,0,0.01)
end
for i = 1,5 do wait()
FW.C0 = FW.C0 * CFrame.Angles(-math.pi/10/2,math.pi/10/2/2,0)
end
StaffOn = true
end
end

function SwordOff()
if StaffOn then
for i = 1,5 do wait()
FW.C0 = FW.C0 * CFrame.Angles(math.pi/10/2,-math.pi/10/2/2,0)
end
FW.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
for i = 1,10 do wait()
MeshA.Scale = MeshA.Scale - Vector3.new(0.01,0,0.01)
MeshD.Scale = MeshD.Scale - Vector3.new(0.1,0,0.1)
StickB.Reflectance = StickB.Reflectance + 0.05
StickC.Reflectance = StickB.Reflectance
StickB.BrickColor = DColor
StickC.BrickColor = DColor
Flame.BrickColor = DColor
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.125,-0.025,-0.05)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.075,0.025,0.05)
end
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
StickB.Reflectance = StickB.Reflectance - 0.2
StickC.Reflectance = StickB.Reflectance
MeshD.Scale = MeshD.Scale - Vector3.new(0,0.42,0)
MeshB.Scale = MeshB.Scale + Vector3.new(0.1,-0.01,0.1)
MeshC.Scale = MeshB.Scale
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.8,0)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.4,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
end
StaffOn = false
end
end

Pos = {3,4,5}

function Slash()
local sls = Pos[math.random(1,3)]
for i =  1, 5 do wait()
FW.C0 = FW.C0 * CFrame.Angles(sls/10,0,0) * CFrame.Angles(0,-0.1,0)
end
for i =  1, 5 do wait()
FW.C0 = FW.C0 * CFrame.Angles(0,0.1,0) * CFrame.Angles(-sls/10,0,0)
end
end

function Clicked(Mouse)
if Blah == true and Flying == false then
Blah = false
Flying = true

Slash()

Flying = false
Blah = true
end
end

VCZ = 0

Keys = {"/","0","f","c"}
PGyro = nil
Asin = false
Kni = false

function HRB(H)
if Kni then
H:BreakJoints()
end
end

function onKeyDown(key,Mouse)
if Blah == true and Flying == false then
Blah = false

Blah = true
return
end
end

function onKeyUp(key,Mouse)

end

function Selected(Mouse) 
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Mouse.KeyDown:connect(function(key) onKeyDown(key, Mouse) end) 
Mouse.KeyUp:connect(function(key) onKeyUp(key, Mouse) end) 
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 

coroutine.resume(coroutine.create(function()
repeat wait() until Blah
repeat wait() until not StaffOn
SwordOn()
end))

end 

function Deselected(Mouse)

coroutine.resume(coroutine.create(function()
repeat wait() until Blah
repeat wait() until StaffOn
SwordOff()
end))
end

function DeadGuy()
--pcall(function() Character.Head.face:Remove() end)
for i = 1,20 do
for i,v in pairs(Character:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
end
end
for i,v in pairs(Assassin:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
end
end
for i,v in pairs(Staff:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
end
end
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
end
end
end
wait(0.1)
end

Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 
Character.Humanoid.Died:connect(DeadGuy)
--[[

for i = 1,20 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.1,0)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.1,0)
end

]]

ABCDEFG = true

coroutine.resume(coroutine.create(function()
while true do wait()
if ABCDEFG then
if Flying == true then

for i,v in pairs(Staff:GetChildren()) do
if v:IsA("Part") then
a = v:Clone()
a.Anchored = true
a.Locked = true
a.CanCollide = false
a.Parent = ROFLBlade
a.Name = "Part"
a.CFrame = v.CFrame
end
end

end

if Molotov then
for i,v in pairs(Molotov:GetChildren()) do
if Molotov then
if v:IsA("Part") then
a = v:Clone()
a.Anchored = true
a.Locked = true
a.CanCollide = false
a.Parent = ROFLBlade
a.Name = "Part"
a.CFrame = v.CFrame
end
end
end
end

for i,v in pairs(ROFLBlade:GetChildren()) do
if v:IsA("Part") then
if v.Transparency < 1 then
v.Transparency = v.Transparency + 0.1
else
v:Remove()
end
end
end

end
end
end))