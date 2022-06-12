Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

--[[ * Fire Handle * ]]--

pcall(function() Character.Gun:Remove() end)

Gun = Instance.new("Model")
Gun.Name = "Gun"
Gun.Parent = Character

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

--[[ * Arm Weld * ]]--

ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = Character["Torso"]
ArmWeldR.Part0 = ArmWeldR.Parent
ArmWeldR.Part1 = Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Neck Weld * ]]--

Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Handle * ]]--

Handle = Instance.new("Part")
Handle.formFactor = "Custom"
Handle.Locked = true
Handle.CanCollide = false
Handle.BrickColor = BrickColor.new("Medium stone grey")
Handle.Anchored = false
Handle.Size = Vector3.new(0.25,0.7,0.25)
Handle.TopSurface = 0
Handle.BottomSurface = 0
Handle.Parent = Gun
MeshA = Instance.new("BlockMesh",Handle)
WeldA = Instance.new("Weld")
WeldA.Parent = Handle
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = Handle
WeldA.C0 = CFrame.new(0,-1.1,-0.2) * CFrame.Angles(-math.pi/2-0.1,0,0)

--[[ * Cartrage * ]]--

Cartrage = Instance.new("Part")
Cartrage.formFactor = "Custom"
Cartrage.Locked = true
Cartrage.CanCollide = false
Cartrage.BrickColor = BrickColor.new("Really black")
Cartrage.Anchored = false
Cartrage.Size = Vector3.new(0.2,0.5,0.2)
Cartrage.TopSurface = 0
Cartrage.BottomSurface = 0
Cartrage.Parent = Gun
MeshB = Instance.new("BlockMesh",Cartrage)
WeldB = Instance.new("Weld")
WeldB.Parent = Cartrage
WeldB.Part0 = Handle
WeldB.Part1 = Cartrage
WeldB.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * Trigger * ]]--

Trigger = Instance.new("Part")
Trigger.formFactor = "Custom"
Trigger.Locked = true
Trigger.CanCollide = false
Trigger.BrickColor = BrickColor.new("Really black")
Trigger.Anchored = false
Trigger.Size = Vector3.new(0.2,0.4,0.4)
Trigger.TopSurface = 0
Trigger.BottomSurface = 0
Trigger.Parent = Gun
MeshB = Instance.new("BlockMesh",Trigger)
WeldB = Instance.new("Weld")
WeldB.Parent = Trigger
WeldB.Part0 = Handle
WeldB.Part1 = Trigger
WeldB.C0 = CFrame.new(0,0.21,-0.09) * CFrame.Angles(0,0,0)

--[[ * BWall * ]]--

BWall = Instance.new("Part")
BWall.formFactor = "Custom"
BWall.Locked = true
BWall.CanCollide = false
BWall.BrickColor = BrickColor.new("Medium stone grey")
BWall.Anchored = false
BWall.Size = Vector3.new(0.25,0.6,0.25)
BWall.TopSurface = 0
BWall.BottomSurface = 0
BWall.Parent = Gun
MeshB = Instance.new("BlockMesh",BWall)
WeldB = Instance.new("Weld")
WeldB.Parent = BWall
WeldB.Part0 = Handle
WeldB.Part1 = BWall
WeldB.C0 = CFrame.new(0,0.3,-0.3) * CFrame.Angles(math.pi/2+0.1,0,0)

--[[ * CWall * ]]--

CWall = Instance.new("Part")
CWall.formFactor = "Custom"
CWall.Locked = true
CWall.CanCollide = false
CWall.BrickColor = BrickColor.new("Really black")
CWall.Anchored = false
CWall.Size = Vector3.new(0.3,0.6,0.2)
CWall.TopSurface = 0
CWall.BottomSurface = 0
CWall.Parent = Gun
MeshB = Instance.new("BlockMesh",CWall)
WeldB = Instance.new("Weld")
WeldB.Parent = CWall
WeldB.Part0 = Handle
WeldB.Part1 = CWall
WeldB.C0 = CFrame.new(0,0.4,-0.3) * CFrame.Angles(math.pi/2+0.1,0,0)

--[[ * ButA * ]]--

ButA = Instance.new("Part")
ButA.formFactor = "Custom"
ButA.Locked = true
ButA.CanCollide = false
ButA.BrickColor = BrickColor.new("Really black")
ButA.Anchored = false
ButA.Size = Vector3.new(0.3,0.6,0.3)
ButA.TopSurface = 0
ButA.BottomSurface = 0
ButA.Parent = Gun
MeshB = Instance.new("CylinderMesh",ButA)
WeldB = Instance.new("Weld")
WeldB.Parent = ButA
WeldB.Part0 = Handle
WeldB.Part1 = ButA
WeldB.C0 = CFrame.new(0.1,0.4,-0.3) * CFrame.Angles(math.pi/2+0.1,0,0)

--[[ * ButB * ]]--

ButB = Instance.new("Part")
ButB.formFactor = "Custom"
ButB.Locked = true
ButB.CanCollide = false
ButB.BrickColor = BrickColor.new("Really black")
ButB.Anchored = false
ButB.Size = Vector3.new(0.3,0.6,0.3)
ButB.TopSurface = 0
ButB.BottomSurface = 0
ButB.Parent = Gun
MeshB = Instance.new("CylinderMesh",ButB)
WeldB = Instance.new("Weld")
WeldB.Parent = ButB
WeldB.Part0 = Handle
WeldB.Part1 = ButB
WeldB.C0 = CFrame.new(-0.1,0.4,-0.3) * CFrame.Angles(math.pi/2+0.1,0,0)

--[[ * Hinge * ]]--

Hinge = Instance.new("Part")
Hinge.formFactor = "Custom"
Hinge.Locked = true
Hinge.CanCollide = false
Hinge.BrickColor = BrickColor.new("Medium stone grey")
Hinge.Anchored = false
Hinge.Size = Vector3.new(0.2,0.25,0.2)
Hinge.TopSurface = 0
Hinge.BottomSurface = 0
Hinge.Parent = Gun
MeshB = Instance.new("CylinderMesh",Hinge)
WeldQ = Instance.new("Weld")
WeldQ.Parent = Hinge
WeldQ.Part0 = Handle
WeldQ.Part1 = Hinge
WeldQ.C0 = CFrame.new(0,0.3,-0.6) * CFrame.Angles(math.pi/2+0.1,0,math.pi/2)

--[[ * HingeP * ]]--

HingeP = Instance.new("Part")
HingeP.formFactor = "Custom"
HingeP.Locked = true
HingeP.CanCollide = false
HingeP.BrickColor = BrickColor.new("Medium stone grey")
HingeP.Anchored = false
HingeP.Size = Vector3.new(0.2,0.5,0.2)
HingeP.TopSurface = 0
HingeP.BottomSurface = 0
HingeP.Parent = Gun
MeshB = Instance.new("CylinderMesh",HingeP)
WeldB = Instance.new("Weld")
WeldB.Parent = HingeP
WeldB.Part0 = Hinge
WeldB.Part1 = HingeP
WeldB.C0 = CFrame.new(-0.25,0,0) * CFrame.Angles(0,0,math.pi/2)

--[[ * BarrelA * ]]--

BarrelA = Instance.new("Part")
BarrelA.formFactor = "Custom"
BarrelA.Locked = true
BarrelA.CanCollide = false
BarrelA.BrickColor = BrickColor.new("Really black")
BarrelA.Anchored = false
BarrelA.Size = Vector3.new(0.3,1.5,0.3)
BarrelA.TopSurface = 0
BarrelA.BottomSurface = 0
BarrelA.Parent = Gun
MeshB = Instance.new("CylinderMesh",BarrelA)
WeldB = Instance.new("Weld")
WeldB.Parent = BarrelA
WeldB.Part0 = Hinge
WeldB.Part1 = BarrelA
WeldB.C0 = CFrame.new(-0.75,0.1,-0.125) * CFrame.Angles(0,0,math.pi/2)

--[[ * BarrelB * ]]--

BarrelB = Instance.new("Part")
BarrelB.formFactor = "Custom"
BarrelB.Locked = true
BarrelB.CanCollide = false
BarrelB.BrickColor = BrickColor.new("Really black")
BarrelB.Anchored = false
BarrelB.Size = Vector3.new(0.3,1.5,0.3)
BarrelB.TopSurface = 0
BarrelB.BottomSurface = 0
BarrelB.Parent = Gun
MeshB = Instance.new("CylinderMesh",BarrelB)
WeldB = Instance.new("Weld")
WeldB.Parent = BarrelB
WeldB.Part0 = Hinge
WeldB.Part1 = BarrelB
WeldB.C0 = CFrame.new(-0.75,-0.1,-0.125) * CFrame.Angles(0,0,math.pi/2)

--[[ * Variables * ]]--

Head = false
Ammo = 2
Arms = false
Hopper = Instance.new("HopperBin")

function TName()
Hopper.Name = "Gun: "..Ammo
end

--[[ * Animation * ]]--

function ArmsOn()
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-math.pi/11/2/2,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.1,0.05,-0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.05,0,0.09)
end
end

function ArmsOff()
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,math.pi/11/2/2,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05,0,0.09)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2/2)
end
for i = 1,3 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,0.05)
end
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end

function SuicideYes()
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,math.pi/11,0)
end
end

function SuicideNo()
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,-math.pi/11,0)
end
end

function Reload()
if Ammo == 0 then
if Head == true then SuicideNo() end
NewSoundI("http://www.roblox.com/Asset/?id=2761842",10,1,Handle,1.2)
if Arms == false then
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-math.pi/11/2/2,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.1,0.05,-0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.05,0,0.09)
end
end
for i = 1,10 do wait()
WeldQ.C0 = WeldQ.C0 * CFrame.Angles(0,math.pi/10/2/2,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2/2/2,0,0)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2/2/2,0,0)
end
for i = 1,9 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,math.pi/11/2/2,-math.pi/10/2/2)
end
for i = 1,3 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,math.pi/11/2/2,math.pi/10/2/2)
end
for i = 1,3 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-math.pi/11/2/2,-math.pi/10/2/2)
end
for i = 1,9 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-math.pi/11/2/2,math.pi/10/2/2)
end
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/4/2/2/2,0,0)
end
Ammo = 1
TName()
NewSound("http://www.roblox.com/Asset/?id=13510352",2,10,Handle)
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/4/2/2/2,0,0)
end
NewSound("http://www.roblox.com/Asset/?id=13510352",2,10,Handle)
for i = 1,9 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,math.pi/11/2/2,-math.pi/10/2/2)
end
for i = 1,3 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,math.pi/11/2/2,math.pi/10/2/2)
end
for i = 1,3 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-math.pi/11/2/2,-math.pi/10/2/2)
end
for i = 1,9 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.1,0.05,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-math.pi/11/2/2,math.pi/10/2/2)
end
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/4/2/2/2,0,0)
end
Ammo = 2
TName()
NewSound("http://www.roblox.com/Asset/?id=13510352",2,10,Handle)
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/4/2/2/2,0,0)
end
NewSound("http://www.roblox.com/Asset/?id=13510352",2,10,Handle)
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,math.pi/11/2/2,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.1,0.05,-0.05)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05,0,0.09)
end
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
NewSound("http://www.roblox.com/Asset/?id=10209881",10,0.9,Handle)
for i = 1,5 do wait()
WeldQ.C0 = WeldQ.C0 * CFrame.Angles(0,-math.pi/5/2/2,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0,-0.1) * CFrame.Angles(math.pi/5/2/2,0,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0) * CFrame.new(0,0,0.05)
end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
Ammo = 2
TName()
if Head == true then SuicideYes() end
if Arms == true then ArmsOn() end
elseif Ammo ~= 0 then
if Arms == false then ArmsOn() end
wait(0.1)
NewSound("http://www.roblox.com/Asset/?id=10209881",10,1,Handle)
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0,0.1)
end
--Ammo = Ammo - 1
TName()
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,0,0.1)
end
if Arms == false then ArmsOff() end
end
end

function Shoot()
NewSound("http://www.roblox.com/Asset/?id=2691586",10,1,Handle)
if Arms == false then
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0,-0.1) * CFrame.Angles(math.pi/5/2/2,0,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0.2,0,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0) * CFrame.new(0,0,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-0.1,0,0)
end
if Arms == false then ArmsOn() end
wait(0.05)
NewSound("http://www.roblox.com/Asset/?id=10209881",10,1,Handle)
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0,0.2)
end
Ammo = Ammo - 1 TName()
wait(0.1)
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,0,0.2)
end
if Arms == false then ArmsOff() end
elseif Arms == true then
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/4/2/2/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,0.2,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0,-0.1) * CFrame.Angles(math.pi/5/2/2,0,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0.2,0,0)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/8/2/2/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0.1,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0) * CFrame.new(0,0,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-0.1,0,0)
end
NewSound("http://www.roblox.com/Asset/?id=10209881",10,1,Handle)
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0,0.2)
end
Ammo = Ammo - 1 TName()
wait(0.1)
for i = 1,5 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,0,0.2)
end
end
end

--[[ * Sound * ]]--

function NewSound(ID,V,P,N)
coroutine.resume(coroutine.create(function()
local SoundD = Instance.new("Sound")
SoundD.SoundId = ID
SoundD.Volume = V
SoundD.Pitch = P
SoundD.Parent = N
SoundD:Play()
while SoundD.IsPlaying do wait() end
SoundD:Remove()
end))
end

function NewSoundI(ID,V,P,N,I)
coroutine.resume(coroutine.create(function()
local SoundD = Instance.new("Sound")
SoundD.SoundId = ID
SoundD.Volume = V
SoundD.Pitch = P
SoundD.Parent = N
SoundD:Play()
wait(I)
SoundD:Stop()
wait()
SoundD:Remove()
end))
end

--[[ * Tool * ]]--

if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Gun"
Hopper.Parent = Player.Backpack
end

Blah = true
ABC = BarrelA.CFrame

function Clicked(Mouse)
if Blah == true then
Blah = false
if Ammo == 0 then
Reload()
else
if Head == true then Character.Head:BreakJoints() return end
coroutine.resume(coroutine.create(function()
Mouse.Target:BreakJoints()
end))
Shoot()
end
Blah = true
return
end
end

function onKeyDown(key)
if Blah == true then
Blah = false

if key == "p" then
NewSound("",10,0.5,Handle)
end

if key == "0" or key == "/" then
if not Head then
if Arms == false then
ArmsOn()
Arms = true
elseif Arms == true then
ArmsOff()
Arms = false
end
end
end

if key == "" then
if not Head then
if Arms then ArmsOff() Arms = false end
SuicideYes()
Head = true
elseif Head then
SuicideNo()
if Arms then ArmsOn() end
Head = false
end
end

if key == "r" then
Reload()
end

Blah = true
return
end
end

function Selected(Mouse) 
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.KeyDown:connect(onKeyDown)
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
	TName()
	if Blah then
	Blah = false
	if not Arms then
	ArmsOn()
	Arms = true
	end
	Blah = true
	end
end 

function Deselected(Mouse)
	if Blah then
	Blah = false
	if Arms then
	ArmsOff()
	Arms = false
	end
	Blah = true
	end
end

function Dead()
for i,v in pairs(Character:GetChildren()) do
pcall(function() v.Anchored = true end)
if v.Name == "Head" then v.Anchored = false v.Velocity = Vector3.new(10,0,10) end
for i,a in pairs(v:GetChildren()) do pcall(function() a.Anchored = true end) end
end
end

Character.Humanoid.Died:connect(Dead)
Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 
