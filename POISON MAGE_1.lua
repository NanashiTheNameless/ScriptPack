--Lets create a cool load-up animation.
Bp = game.Players.LocalPlayer.Backpack
jun = Bp.Parent

BlastRing = Instance.new("Part") --Creating the spike ball.
BlastRing.Parent = game.Lighting 
BlastRing.Name = "BlastRing" 
BlastRing.formFactor = "Symmetric" 
BlastRing.Size = Vector3.new(0, 0, 0) 
BlastRing.CanCollide = false 
BlastRing.TopSurface = "Smooth" 
BlastRing.BottomSurface = "Smooth" 
BlastRing.BrickColor = BrickColor.new("Forest green") 
BlastRing.Reflectance = 0 
BlastRing.Anchored = true 
Mesh2 = Instance.new("SpecialMesh") 
Mesh2.Parent = BlastRing 
Mesh2.MeshType = "FileMesh" 
Mesh2.MeshId = "http://www.roblox.com/Asset/?id=9982590" 
Mesh2.Scale = Vector3.new(1, 1, 1)

ExsplosionRing = Instance.new("Part") --Creating the ring.
ExsplosionRing.Parent = game.Lighting 
ExsplosionRing.Name = "Explosion Ring" 
ExsplosionRing.formFactor = "Symmetric" 
ExsplosionRing.Size = Vector3.new(0, 0, 0) 
ExsplosionRing.CanCollide = false 
ExsplosionRing.TopSurface = "Smooth" 
ExsplosionRing.BottomSurface = "Smooth" 
ExsplosionRing.BrickColor = BrickColor.new("Black") 
ExsplosionRing.Transparency = 0.3
ExsplosionRing.Reflectance = 0 
ExsplosionRing.Anchored = true 
Mesh3 = Instance.new("SpecialMesh") 
Mesh3.Parent = ExsplosionRing 
Mesh3.MeshType = "FileMesh" 
Mesh3.MeshId = "http://www.roblox.com/Asset/?id=20329976" 
Mesh3.Scale = Vector3.new(1, 1, 1)
Mesh3.Offset = Vector3.new(0,-2,0)


jun.Character.Humanoid.WalkSpeed = 0

blastring2 = BlastRing:clone() --Cloning spike ball out of lighting to surround player.
blastring2.Parent = jun.Character 
blastring2.Position = jun.Character.Torso.Position 
blastring2.BrickColor = BrickColor.new("Forest green") 
blastring2.Transparency = 0.5
blastring2.Reflectance = 0 

for i = 1, 50 do --Making the spike ball grow around the player.
wait(0.03)
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(0.1, 0.1, 0.1)
blastring2.Transparency = blastring2.Transparency + 0.01
end

blastring3 = ExsplosionRing:clone()  --Cloning the ring out of lighting to surround player.
blastring3.Parent = jun.Character 
blastring3.Position = jun.Character.Torso.Position 
blastring3.BrickColor = BrickColor.new("Black") 
blastring3.Transparency = 0.3
blastring3.Reflectance = 0

for i = 1, 50 do --Resizing the rin to grow around the players legs.
wait(0.03)
blastring3.Mesh.Scale = blastring3.Mesh.Scale + Vector3.new(0.1, 0.1, 0.1)
blastring3.Transparency = blastring3.Transparency + 0.01
end
blastring2:remove()
blastring3:Destroy()

jun.Character.Humanoid.WalkSpeed = 22
--End of animation.

--Lets start the actual Mage Script.
local lp = game.Players.LocalPlayer

--Set The Players Health As If Wearing Armor.
lp.Character.Humanoid.MaxHealth = lp.Character.Humanoid.MaxHealth+200
wait(0.03)
lp.Character.Humanoid.Health = lp.Character.Humanoid.MaxHealth
--End Armor Control

--Create the Model to place the armor in.
m = Instance.new("Model",lp.Character)
m.Name = "Scapters Armor"

--Let's start creating the Left Arm.
la = Instance.new("Part",m)
la.Name = "Left Arm"
la.FormFactor = "Custom"
la.Material = "Concrete"
la.CanCollide = false
la.BrickColor = BrickColor.new("Forest green")
la.BottomSurface = "Smooth"
la.TopSurface = "Smooth"
la.Size = Vector3.new(1.05,1.05,1.05)
law = Instance.new("ManualWeld",la) --Weld the armor piece to the Left Arm.
law.Part0 = la
law.Part1 = lp.Character["Left Arm"]
law.C0 = CFrame.new(0,-0.5,0) --Positions the Left Arm.
--End Left Arm.

--Let's start creating the Right Arm.
ra = Instance.new("Part",m)
ra.Name = "Right Arm"
ra.FormFactor = "Custom"
ra.Material = "Concrete"
ra.CanCollide = false
ra.BrickColor = BrickColor.new("Forest green")
ra.BottomSurface = "Smooth"
ra.TopSurface = "Smooth"
ra.Size = Vector3.new(1.05,1.05,1.05)
raw = Instance.new("ManualWeld",ra) --Weld the armor piece to the Right Arm.
raw.Part0 = ra
raw.Part1 = lp.Character["Right Arm"]
raw.C0 = CFrame.new(0,-0.5,0) --Positions the Right Arm.
--End Right Arm.

--Let's start creating the Torso.
t = Instance.new("Part",m)
t.Name = "Torso"
t.FormFactor = "Custom"
t.CanCollide = false
t.Material = "Concrete"
t.BrickColor = BrickColor.new("Forest green")
t.BottomSurface = "Smooth"
t.TopSurface = "Smooth"
t.Size = Vector3.new(2.05,2.05,1.05)
tw = Instance.new("ManualWeld",t) --Weld the armor piece to the Torso.
tw.Part0 = t
tw.Part1 = lp.Character.Torso --Torso does not need to be positioned.
sg = Instance.new("SurfaceGui",t) --Creating a surfacegui to display health.(buggy)
f = Instance.new("Frame",sg)
f.BackgroundTransparency = 1
f.Size = UDim2.new(1,0,1,0)
tl = Instance.new("TextLabel",f)
tl.BackgroundTransparency = 1
tl.Size = UDim2.new(1,0,1,0)
tl.Font = "SourceSansBold"
tl.FontSize = "Size96"
tl.TextColor3 = Color3.new(0,0,0)
tl.TextStrokeColor3 = Color3.new(0,0,0)
tl.TextStrokeTransparency = 0
--End Torso.

--Let's start creating the Left Leg.
ll = Instance.new("Part",m)
ll.Name = "Left Leg"
ll.FormFactor = "Custom"
ll.Material = "Concrete"
ll.CanCollide = false
ll.BrickColor = BrickColor.new("Forest green")
ll.BottomSurface = "Smooth"
ll.TopSurface = "Smooth"
ll.Size = Vector3.new(1.05,1.65,1.05)
llw = Instance.new("ManualWeld",ll) --Weld the armor piece to the Left Leg.
llw.Part0 = ll
llw.Part1 = lp.Character["Left Leg"]
llw.C0 = CFrame.new(0,-0.2,0) --Positions the Left Leg.
--End Left Leg.

--Let's start creating the Right Leg.
rl = Instance.new("Part",m)
rl.Name = "Right Leg"
rl.FormFactor = "Custom"
rl.Material = "Concrete"
rl.CanCollide = false
rl.BrickColor = BrickColor.new("Forest green")
rl.BottomSurface = "Smooth"
rl.TopSurface = "Smooth"
rl.Size = Vector3.new(1.05,1.65,1.05)
rlw = Instance.new("ManualWeld",rl) --Weld the armor piece to the Right Leg.
rlw.Part0 = rl
rlw.Part1 = lp.Character["Right Leg"]
rlw.C0 = CFrame.new(0,-0.2,0) --Positions the Right Leg.
--End Right Leg.

--Let's make it so elasticity and friction are set to a high value to prevent stutters.
for i,v in ipairs(m:GetChildren()) do
v.Friction = 2000
v.Elasticity = 2000
end
--End stutter provention.

local color1 = Color3.new(0, 85, 0)
local color2 = Color3.new(0,0,0)
local sequence = ColorSequence.new(color1,color2)

--Let's create the staff.
t = Instance.new("Tool", lp.Backpack) --Creating the tool for the staff to be put into.
t.Name = "Scapters Staff"
t.GripPos = Vector3.new(0,0.65,0)
t.ToolTip = "Whome-ever wields this staff is a true legend."
t.CanBeDropped = false
s = Instance.new("Part",t) --This will be the base part of the staff(the part the player holds).
s.Name = "Handle"
s.BrickColor = BrickColor.new("Burnt Sienna")
s.FormFactor = "Custom"
s.Size = Vector3.new(0.32,5.64,0.28)
s.Material = "Wood"
b = Instance.new("Part",t) --Lets create the tip of the staff.
b.Material = "Concrete"
b.BrickColor = BrickColor.new("Forest green")
b.Shape = "Ball"
b.Size = Vector3.new(1,1,1)
b.TopSurface = "Smooth"
b.BottomSurface = "Smooth"
bw = Instance.new("ManualWeld",rl) --Weld the tip to the staff.
bw.Part0 = s
bw.Part1 = b
bw.C0 = CFrame.new(0,2.5,0) --Positions the tip.
pe = Instance.new("ParticleEmitter",b) -- Lets create the fancy looking particles
pe.Color = sequence
pe.Texture = "http://www.roblox.com/asset/?id=242292318"
pe.LightEmission = 1
pe.Lifetime = NumberRange.new(1,1)
pe.Rotation = NumberRange.new(360,360)
pe.RotSpeed = NumberRange.new(360,360)
pe.Speed = NumberRange.new(1,1)
pe.LockedToPart = true
sk = Instance.new("Part",t)--Let's create the skull
sk.BrickColor = BrickColor.new("Forest green")
sk.Material = "Concrete"
sm = Instance.new("SpecialMesh",sk)
sm.MeshId = "http://www.roblox.com/asset/?id=6552202"
sm.Scale = Vector3.new(3.2,3.2,3.2)
skw = Instance.new("ManualWeld",rl) --Weld the skull to the staff.
skw.Part0 = s
skw.Part1 = sk
skw.C0 = CFrame.new(0,2.5,0) --Positions the skull.
game.Players.LocalPlayer.Character.Humanoid:EquipTool(t) --Auto-Equip the staff.
--End staff creation.

--Backup
t.Equipped:connect(function()
local bww = Instance.new("ManualWeld",rl) --Weld the tip to the staff.
bww.Part0 = s
bww.Part1 = b
bww.C0 = CFrame.new(0,2.5,0) --Positions the tip.
local skww = Instance.new("ManualWeld",rl) --Weld the skull to the staff.
skww.Part0 = s
skww.Part1 = sk
skww.C0 = CFrame.new(0,2.5,0) --Positions the skull.
end)

local mouse = game.Players.LocalPlayer:GetMouse()

--Lighting Attack
mouse.Button1Down:connect(function()
local hit = mouse.Target -- This is where the lightning will go.

end)

--Poison Attack
mouse.Button2Down:connect(function() --Creating the event to detect where the ball will be placed.
local hit = mouse.Target --This is where it gets the players position.
if hit.Parent:FindFirstChild("Torso") then
local h = Instance.new("Part", game.Workspace)
h.Shape = "Ball"
h.Size = Vector3.new(1,1,1)
h.BrickColor = BrickColor.new("Forest green")
h.Material = "Concrete"
h.Anchored = true
h.CanCollide = false
pe = Instance.new("ParticleEmitter",h) --Make the ball look fancy.
pe.Color = sequence
pe.Texture = "http://www.roblox.com/asset/?id=242292318"
pe.LightEmission = 1
pe.Lifetime = NumberRange.new(1,1)
pe.Rotation = NumberRange.new(360,360)
pe.RotSpeed = NumberRange.new(360,360)
pe.Speed = NumberRange.new(1,1)
h.CFrame = hit.Parent.HumanoidRootPart.CFrame --Changes the balls position to the hit players HumanoidRootPart.
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health-25
wait(1)
h:Destroy()
for i = 1, 8 do
hit.Parent.Head.BrickColor = BrickColor.new("Sea green") --Set player to poison colors.
hit.Parent["Left Arm"].BrickColor = BrickColor.new("Sea green")
hit.Parent["Right Arm"].BrickColor = BrickColor.new("Sea green")
hit.Parent["Left Leg"].BrickColor = BrickColor.new("Sea green")
hit.Parent["Right Leg"].BrickColor = BrickColor.new("Sea green")
hit.Parent.Torso.BrickColor = BrickColor.new("Sea green")
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health-5
lp.Character.Humanoid.Health = lp.Character.Humanoid.Health+5 --Life steal.
pe = Instance.new("ParticleEmitter",hit.Parent.Torso) --Make the poison effect look fancy.
pe.Color = sequence
pe.Texture = "http://www.roblox.com/asset/?id=242292318"
pe.LightEmission = 1
pe.Lifetime = NumberRange.new(1,1)
pe.Rotation = NumberRange.new(360,360)
pe.RotSpeed = NumberRange.new(360,360)
pe.Speed = NumberRange.new(1,1)
wait(0.8)
pe:Destroy() 
hit.Parent.Head.BrickColor = hit.Parent["Body Colors"].HeadColor --Set player colors back to normal.
hit.Parent["Left Arm"].BrickColor = hit.Parent["Body Colors"].LeftArmColor
hit.Parent["Right Arm"].BrickColor = hit.Parent["Body Colors"].RightArmColor
hit.Parent["Left Leg"].BrickColor = hit.Parent["Body Colors"].LeftLegColor
hit.Parent["Right Leg"].BrickColor = hit.Parent["Body Colors"].RightLegColor
hit.Parent.Torso.BrickColor = hit.Parent["Body Colors"].TorsoColor
wait(0.8)
end 
end
end)

--Let's create a forcefield event.
local color1 = Color3.new(0, 170, 0)
local color2 = Color3.new(0, 170, 0)
local sequence = ColorSequence.new(color1,color2)
mouse1 = game.Players.LocalPlayer:GetMouse()

mouse1.KeyDown:connect(function(key)
if key == "f" then
pe = Instance.new("ParticleEmitter",m.Torso)
pe.Rate = 1
wait(0.03)
pe.Rate = 0
pe.LightEmission = 0.5
pe.Size = NumberSequence.new(5,5)
pe.Texture = "http://www.roblox.com/asset/?id=147741899"
pe.Color = sequence
pe.Lifetime = NumberRange.new(100e100,100e100)
pe.Rotation = NumberRange.new(360,360)
pe.RotSpeed = NumberRange.new(40,40)
pe.LockedToPart = true
pe.Speed = NumberRange.new(0,0)
pe:Emit(1)
lp.Character.Humanoid.MaxHealth = math.huge
wait(0.03)
lp.Character.Humanoid.Health = math.huge
wait(25)
lp.Character.Humanoid.MaxHealth = 300
wait(0.03)
lp.Character.Humanoid.Health = 300
pe:Destroy()
end
end)
--End forcefield event.

while wait(0) do --Create the loop to constantly make the textlabel update with health.(buggy)
tl.Text = "Heath: "..math.floor(lp.Character.Humanoid.Health).."/"..lp.Character.Humanoid.MaxHealth
end