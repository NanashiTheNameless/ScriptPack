--[[mediafire gtfo password]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = game.Players.LocalPlayer
Character = Player.Character
Torso = Character.Torso
script.Parent = Character

--[[ * Fire Middle * ]]--

ColorABC = BrickColor.new("Medium stone grey")

pcall(function() Character.Wings:Remove() end)

Wings = Instance.new("Model")
Wings.Name = "Wings"
Wings.Parent = Character

Human = Instance.new("Humanoid")
Human.MaxHealth = 0
Human.Health = 0
Human.Parent = Wings

--[[ * Neck Weld * ]]--

Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Middle * ]]--

Middle = Instance.new("Part")
Middle.formFactor = "Custom"
Middle.Locked = true
Middle.CanCollide = false
Middle.BrickColor = ColorABC
Middle.Anchored = false
Middle.Size = Vector3.new(1.25,2,1.25)
Middle.TopSurface = 0
Middle.BottomSurface = 0
Middle.Reflectance = 0
Middle.Parent = Wings
Mesh = Instance.new("CylinderMesh",Middle)
Mesh.Bevel = 0.03
MidWeld = Instance.new("Weld")
MidWeld.Parent = Middle
MidWeld.Part0 = Character["Torso"]
MidWeld.Part1 = Middle
MidWeld.C0 = CFrame.new(0,0,0.5) * CFrame.Angles(0,0,0)

--[[ * Hole * ]]--

Hole = Instance.new("Part")
Hole.formFactor = "Custom"
Hole.Locked = true
Hole.CanCollide = false
Hole.BrickColor = BrickColor.new("Really black")
Hole.Anchored = false
Hole.Size = Vector3.new(1.2,2,1.2)
Hole.TopSurface = 0
Hole.BottomSurface = 0
Hole.Reflectance = 0
Hole.Parent = Wings
HMesh = Instance.new("CylinderMesh",Hole)
HMesh.Bevel = 0.03
HWeld = Instance.new("Weld")
HWeld.Parent = Hole
HWeld.Part0 = Middle
HWeld.Part1 = Hole
HWeld.C0 = CFrame.new(0,-0.01,0) * CFrame.Angles(0,0,0)

--[[ * WingA * ]]--

WingA = Instance.new("Part")
WingA.formFactor = "Custom"
WingA.Locked = true
WingA.CanCollide = false
WingA.BrickColor = ColorABC
WingA.Anchored = false
WingA.Size = Vector3.new(0.75,0.75,0.75/2)
WingA.TopSurface = 0
WingA.BottomSurface = 0
WingA.Reflectance = 0
WingA.Parent = Wings
MeshA = Instance.new("BlockMesh",WingA)
MeshA.Bevel = 0.03
WeldA = Instance.new("Weld")
WeldA.Parent = WingA
WeldA.Part0 = Middle
WeldA.Part1 = WingA
WeldA.C0 = CFrame.new(0.5,0.5,0.25) * CFrame.Angles(0,0,0)

--[[ * WingB * ]]--

WingB = Instance.new("Part")
WingB.formFactor = "Custom"
WingB.Locked = true
WingB.CanCollide = false
WingB.BrickColor = ColorABC
WingB.Anchored = false
WingB.Size = Vector3.new(0.75,0.75,0.75/2)
WingB.TopSurface = 0
WingB.BottomSurface = 0
WingB.Reflectance = 0
WingB.Parent = Wings
MeshB = Instance.new("BlockMesh",WingB)
MeshB.Bevel = 0.03
WeldB = Instance.new("Weld")
WeldB.Parent = WingB
WeldB.Part0 = Middle
WeldB.Part1 = WingB
WeldB.C0 = CFrame.new(-0.5,0.5,0.25) * CFrame.Angles(0,0,0)

--[[ * Fly Body Stuff * ]]--
gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
velo = Instance.new("BodyVelocity")
velo.maxForce = Vector3.new(math.huge,math.huge,math.huge)
velo.velocity = Vector3.new(0,0,0)

Wingz = false

function GWings()
for i = 1,10 do wait()
WingA.Size = WingA.Size + Vector3.new(0.3,0.1,0)
WingB.Size = WingA.Size
WeldA.Parent = WingA
WeldA.Part0 = Middle
WeldA.Part1 = WingA
WeldB.Parent = WingB
WeldB.Part0 = Middle
WeldB.Part1 = WingB
WeldB.C0 = WeldB.C0 - Vector3.new(0.115,0.05,-0.085)
WeldB.C0 = WeldB.C0 * CFrame.Angles(0,0.05,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0.115,-0.05,0.085)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,-0.05,0)
end
end

function RWings()
for i = 1,10 do wait()
WingA.Size = WingA.Size - Vector3.new(0.3,0.1,0)
WingB.Size = WingA.Size
WeldA.Parent = WingA
WeldA.Part0 = Middle
WeldA.Part1 = WingA
WeldB.Parent = WingB
WeldB.Part0 = Middle
WeldB.Part1 = WingB
WeldB.C0 = WeldB.C0 + Vector3.new(0.115,0.05,-0.085)
WeldB.C0 = WeldB.C0 * CFrame.Angles(0,-0.05,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0.115,-0.05,0.085)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0.05,0)
end
end

function Flap(PP)
for i = 1,5 do wait()
Character.Torso["Right Shoulder"].DesiredAngle = math.pi
Character.Torso["Left Shoulder"].DesiredAngle = -math.pi
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0.2,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(0,-0.2,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0,0.15*2)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0,0.15*2)
gyro.cframe = CFrame.new(Torso.Position,PP) 
velo.velocity = gyro.cframe.lookVector * 100
end
for i = 1,5 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,-0.2,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(0,0.2,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0,0.15*2)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0,0.15*2)
Character.Torso["Right Shoulder"].DesiredAngle = math.pi
Character.Torso["Left Shoulder"].DesiredAngle = -math.pi
gyro.cframe = CFrame.new(Torso.Position,PP) 
velo.velocity = gyro.cframe.lookVector * 100
end
end

function Jet(PP)
Character.Torso["Right Shoulder"].DesiredAngle = math.pi
Character.Torso["Left Shoulder"].DesiredAngle = -math.pi
gyro.cframe = CFrame.new(Torso.Position,PP) 
velo.velocity = gyro.cframe.lookVector * 100
end

--[[ * Tool * ]]--

if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Wings"
Hopper.Parent = Player.Backpack
end

Blah = true

function Clicked(Mouse)
if Blah == true then
Blah = false

Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
Flying = true
gyro.Parent = Character.Head
velo.Parent = Character.Head
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
while Flying do
PP = Mouse.hit.p
if Wingz then Flap(PP) elseif not Wingz then Jet(PP) end
wait()
end

Blah = true
return
end
end

function UnClicked(Mouse)
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
velo.velocity = Vector3.new(0,0,0)
gyro.maxTorque = Vector3.new(0,0,0)
gyro.Parent = nil
velo.Parent = nil
Flying = false
end

function onKeyDown(key)
if Blah == true then
Blah = false

if key == "p" then
if Wingz == false then
GWings()
Wingz = true
elseif Wingz == true then
RWings()
Wingz = false
end
end

Blah = true
return
end
end

function DeathCheck()
if CC == 2 and SodaFun == true then
Blah = false
wait()
pcall(function() face.Parent = Character.Head end)
for i = 1,20 do wait()
for i,v in pairs(Character:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency + 0.05 end end
for i,v in pairs(Wings:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency + 0.05 end end
for i,v in pairs(Character:GetChildren()) do if v.className == "Hat" then pcall(function() v.Handle.Transparency = v.Handle.Transparency + 0.05 end) end end
end
end
end

function Selected(Mouse) 
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.KeyDown:connect(onKeyDown)
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
	Mouse.Button1Up:connect(function()UnClicked(Mouse)end) 
end 

function Deselected(Mouse)
end

Character.Humanoid.Died:connect(DeathCheck)
Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 