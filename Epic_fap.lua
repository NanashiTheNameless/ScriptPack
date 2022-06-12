lp = game.Players.LocalPlayer
person = lp.Name
char = lp.Character
torso = char:findFirstChild("Torso")
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
if anim then
anim:Destroy()
end
local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0) *CFrame.Angles(0, 0, 0) 
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0) *CFrame.Angles(0, 0, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0
rootc0 = rj.C0
key = nil
local count = 0
local countspeed = 0.70
color = "Pastel brown"
pcall(function() game.Players[person].Character["Nice thing"]:Remove() end)
D = Instance.new("Model",workspace[person])
D.Name = "Nice thing"
bg = Instance.new("BodyGyro",workspace[person].Torso)
d = Instance.new("Part")
d.TopSurface = 0
d.BottomSurface = 0
d.Name = "Main"
d.Parent = workspace[person]["Nice thing"]
d.formFactor = 3
d.Size = Vector3.new(0.6,2.5,0.6)
d.BrickColor = BrickColor.new(color)
d.Position = workspace[person].Head.Position
d.CanCollide = false
local cy = Instance.new("CylinderMesh")
cy.Parent = d
w = Instance.new("Weld")
w.Parent = workspace[person].Head
w.Part0 = d
w.Part1 = workspace[person].Head
w.C0 = CFrame.new(0,0.25,2.1)*CFrame.Angles(math.rad(45),0,0)
local c = Instance.new("Part")
c.Name = "Mush"
c.BottomSurface = 0
c.TopSurface = 0
c.FormFactor = 3
c.Size = Vector3.new(0.6,0.6,0.6)
c.CFrame = CFrame.new(d.Position)
c.BrickColor = BrickColor.new("Pink")
c.CanCollide = false
c.Parent = workspace[person]["Nice thing"]
local msm = Instance.new("SpecialMesh")
msm.Parent = c
msm.MeshType = "Sphere"
local cw = Instance.new("Weld")
cw.Parent = c
cw.Part0 = d
cw.Part1 = c
cw.C0 = CFrame.new(0,1.3,0)
local ball1 = Instance.new("Part")
ball1.Parent = workspace[person]["Nice thing"]
ball1.Name = "Left Ball"
ball1.BottomSurface = 0
ball1.TopSurface = 0
ball1.CanCollide = false
ball1.formFactor = 3
ball1.Size = Vector3.new(1,1,1)
ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position)
ball1.BrickColor = BrickColor.new(color)
local bsm = Instance.new("SpecialMesh")
bsm.Parent = ball1
bsm.MeshType = "Sphere"
local b1w = Instance.new("Weld")
b1w.Parent = ball1
b1w.Part0 = workspace[person]["Left Leg"]
b1w.Part1 = ball1
b1w.C0 = CFrame.new(0,0.5,-.5)
local ball2 = Instance.new("Part")
ball2.Parent = workspace[person]["Nice thing"]
ball2.Name = "Right Ball"
ball2.BottomSurface = 0
ball2.CanCollide = false
ball2.TopSurface = 0
ball2.formFactor = 3
ball2.Size = Vector3.new(1,1,1)
ball2.CFrame = CFrame.new(workspace[person]["Right Leg"].Position)
ball2.BrickColor = BrickColor.new(color)
local b2sm = Instance.new("SpecialMesh")
b2sm.Parent = ball2
b2sm.MeshType = "Sphere"
local b2w = Instance.new("Weld")
b2w.Parent = ball2
b2w.Part0 = workspace[person]["Right Leg"]
b2w.Part1 = ball2
b2w.C0 = CFrame.new(0,0.5,-.5)
lp:GetMouse().KeyDown:connect(function(kai)
	if kai == "f" then
		key = "f"
	end
end)
lp:GetMouse().KeyUp:connect(function(kai)
	if kai == "f" then
		key = nil
	end
end)
while wait(1/60) do
	count = (count % 100) + countspeed
	angle = math.pi * math.sin(math.pi*2/100*count)
	if key == "f" then
		countspeed = 15 --this is the speed xD
		lm.C0 = lsc0 * CFrame.new(.6,-.4,0) * CFrame.Angles((-angle*0.100)+0.1, math.rad(45), math.rad(45)) 
	end
end
print("Thanks to aleksa12432 for making this")