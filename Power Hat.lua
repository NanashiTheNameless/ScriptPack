Names = "yfc"
Player = game:GetService("Players").yfc
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Humanoid = Character.Humanoid
Torso = Character.Torso
Head = Character.Head
LeftArm = Character["Left Arm"]
RightArm = Character["Right Arm"]
LeftLeg = Character["Left Leg"]
RightLeg = Character["Right Leg"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
Shieldz = false
Radio = false
Healing = false

NeckC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
NeckC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LeftShoulderC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LeftShoulderC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightShoulderC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightShoulderC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftHipC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LeftHipC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightHipC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightHipC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)

Stuff = Player.Character:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].Name == "Shirt" or Stuff[i].Name == "Pants" or Stuff[i].className == "Hat" then
  Stuff[i]:Remove()
 end
end



Bottom = Instance.new("Part")
Bottom.Parent = Character
Bottom.Size = Vector3.new(1,1,1)
Bottom.TopSurface = "Smooth"
Bottom.BottomSurface = "Smooth"
Bottom.CanCollide = false
Bottom.Reflectance = .1
Bottom.FormFactor = "Symmetric"
Bottom.BrickColor = BrickColor.new("Black")
BottomMesh=Instance.new("CylinderMesh")
BottomMesh.Scale=Vector3.new(1.5,.1,1.5)
--BottomMesh.MeshType = "Head"
BottomMesh.Parent=Bottom
Bottom:BreakJoints()
beld = Instance.new("Weld")
beld.Parent = Head
beld.Part0 = Head
beld.Part1 = Bottom
beld.C0 = CFrame.new(0,.5,-0)
Top = Instance.new("Part")
Top.Parent = Character
Top.Size = Vector3.new(1,1,1)
Top.TopSurface = "Smooth"
Top.BottomSurface = "Smooth"
Top.CanCollide = false
Top.Reflectance = .1
Top.FormFactor = "Symmetric"
Top.BrickColor = BrickColor.new("Black")
TopMesh=Instance.new("CylinderMesh")
TopMesh.Scale=Vector3.new(1,1.2,1)
--TopMesh.MeshType = "Head"
TopMesh.Parent=Top
Top:BreakJoints()
teld = Instance.new("Weld")
teld.Parent = Head
teld.Part0 = Head
teld.Part1 = Top
teld.C0 = CFrame.new(0,1,-0)

Middle = Instance.new("Part")
Middle.Parent = Character
Middle.Size = Vector3.new(1,1,1)
Middle.TopSurface = "Smooth"
Middle.BottomSurface = "Smooth"
Middle.CanCollide = false
Middle.Reflectance = .1
Middle.FormFactor = "Symmetric"
Middle.BrickColor = BrickColor.new("Royal purple")
MiddleMesh=Instance.new("CylinderMesh")
MiddleMesh.Scale=Vector3.new(1.01,.1,1.01)
--MiddleMesh.MeshType = "Head"
MiddleMesh.Parent=Middle
Middle:BreakJoints()
meld = Instance.new("Weld")
meld.Parent = Head
meld.Part0 = Head
meld.Part1 = Middle
meld.C0 = CFrame.new(0,1.3,-0)


function Page(Num,gm)
if Num == 1 then
for _,v in pairs (gm:GetChildren()) do
if v.Name == "Pg2" then
v:Remove()
else
v.Visible = true
end
end
elseif Num == 2 then
for _,v in pairs (gm:GetChildren()) do
if v.Name ~= "Pg2" then
if v.className == "TextButton" then
v.Visible = false
end
end
end
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,40)
tb.Text = "Sun Hat"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
function click()
SunHat()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,80)
tb.Text = "No Sun Hat"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
function click()
NoSunHat()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,120)
tb.Text = "Radio"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
function click()
Radio()
Radio = true
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,160)
tb.Text = "No Radio"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
function click()
Radio = false
NoRadio()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,200)
tb.Text = "Healer"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
function click()
Something()
Healing = true
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,240)
tb.Text = "No Healer"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
function click()
NoHealer()
Healing = false
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,880,0,40)
tb.Text = "Lemme alone!!"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
function click()
LeaveMeAlone()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,880,0,80)
tb.Text = "I'm cool now"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
function click()
ImCoolNow()
end
tb.MouseButton1Click:connect(click)
end
end

function Heal()
for i = 1, 40 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.1,0,.1)
wait()
end
for i = 1, 60 do
Humanoid.Health = Humanoid.Health + 2
Middle.Transparency = Middle.Transparency + 0.02
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(0,.4,0)
wait()
end
Middle.Transparency = 0
MiddleMesh.Scale = Vector3.new(1.01,.1,1.01)
end

function Harm()
Middle.BrickColor = BrickColor.new("Really red")
for i = 1, 40 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.1,0,.1)
wait()
end
for i = 1, 60 do
Humanoid.Health = Humanoid.Health - 1
Middle.Transparency = Middle.Transparency + 0.02
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(0,.4,0)
wait()
end
Middle.Transparency = 0
MiddleMesh.Scale = Vector3.new(1.01,.1,1.01)
Middle.BrickColor = BrickColor.new("Royal purple")
end




function ShieldOn()
Billy = Instance.new("BodyPosition")
Billy.Name = "JoeMama"
Billy.Parent = Head
Billy.position = Head.Position
Billy.maxForce = Vector3.new(0, math.huge, 0)
Middle.Transparency = .5
Character.Humanoid.WalkSpeed = 32
for i = 1, 30 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.1,0,.1)
wait()
end
for i = 1, 10 do
wait()
Billy.position = Billy.position + Vector3.new(0,1,0)
end
Sh = true
end

function ShieldOff()
Sh = false
for i = 1, 30 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.1,0,.1)
wait()
Middle.Transparency = 0
Character.Humanoid.WalkSpeed = 16
end
Billy:remove()
end

function Free()
for i = 1, 10 do
Torso.Transparency = Torso.Transparency + .1
Head.Transparency = Head.Transparency + .1
RightArm.Transparency = RightArm.Transparency + .1
LeftArm.Transparency = LeftArm.Transparency + .1
LeftLeg.Transparency = LeftLeg.Transparency + .1
RightLeg.Transparency =RightLeg.Transparency + .1
Top.Transparency = Top.Transparency + .1
Middle.Transparency = Middle.Transparency + .1
Bottom.Transparency = Bottom.Transparency + .1
wait()
end
Torso.CFrame = Torso.CFrame + Vector3.new(0,10,0)
Torso.Anchored = true
for i = 1, 10 do
Torso.Transparency = Torso.Transparency - .1
Head.Transparency = Head.Transparency - .1
RightArm.Transparency = RightArm.Transparency - .1
LeftArm.Transparency = LeftArm.Transparency - .1
LeftLeg.Transparency = LeftLeg.Transparency - .1
RightLeg.Transparency =RightLeg.Transparency - .1
Top.Transparency = Top.Transparency - .1
Middle.Transparency = Middle.Transparency - .1
Bottom.Transparency = Bottom.Transparency - .1
wait()
end
Torso.Anchored = false
end

--[[function TeleForward()
for i = 1, 10 do
Torso.Transparency = Torso.Transparency + .1
Head.Transparency = Head.Transparency + .1
RightArm.Transparency = RightArm.Transparency + .1
LeftArm.Transparency = LeftArm.Transparency + .1
LeftLeg.Transparency = LeftLeg.Transparency + .1
RightLeg.Transparency =RightLeg.Transparency + .1
Top.Transparency = Top.Transparency + .1
Middle.Transparency = Middle.Transparency + .1
Bottom.Transparency = Bottom.Transparency + .1
wait()
end
Torso.CFrame.LookVector = Torso.CFrame.LookVector * 10
for i = 1, 10 do
Torso.Transparency = Torso.Transparency - .1
Head.Transparency = Head.Transparency - .1
RightArm.Transparency = RightArm.Transparency - .1
LeftArm.Transparency = LeftArm.Transparency - .1
LeftLeg.Transparency = LeftLeg.Transparency - .1
RightLeg.Transparency =RightLeg.Transparency - .1
Top.Transparency = Top.Transparency - .1
Middle.Transparency = Middle.Transparency - .1
Bottom.Transparency = Bottom.Transparency - .1
wait()
end
end]]--

function Rampage()
pp = Instance.new("Part")
pp.Parent = Torso
pp.CFrame = Torso.CFrame
pp.Transparency = 1
pp.BrickColor = BrickColor.new("Bright yellow")
pp.Size = Vector3.new(10,10,10)
pp.FormFactor = "Symmetric"
--pp.CanCollide = false
peld = Instance.new("Weld")
peld.Parent = Torso
peld.Part0 = Middle
peld.Part1 = pp
peld.C0 = CFrame.new(0,-2.7,0)
pm = Instance.new("SpecialMesh")
pm.Parent = pp
pm.MeshType = "Sphere"
for i = 1, 10 do
Torso.Reflectance = Torso.Reflectance + .1
Head.Reflectance = Head.Reflectance + .1
RightArm.Reflectance = RightArm.Reflectance + .1
LeftArm.Reflectance = LeftArm.Reflectance + .1
LeftLeg.Reflectance = LeftLeg.Reflectance + .1
RightLeg.Reflectance =RightLeg.Reflectance + .1
Top.Reflectance = Top.Reflectance + .1
Middle.Reflectance = Middle.Reflectance + .1
Bottom.Reflectance = Bottom.Reflectance + .1
pp.Transparency = pp.Transparency - .05
wait()
end
function OnTouched(food) 
if food.Name ~= "Base" then
food:remove()
end 
end
pp.Touched:connect(OnTouched) 
Humanoid.WalkSpeed = 80
wait(15)
for i = 1, 10 do
Torso.Reflectance = Torso.Reflectance - .1
Head.Reflectance = Head.Reflectance - .1
RightArm.Reflectance = RightArm.Reflectance - .1
LeftArm.Reflectance = LeftArm.Reflectance - .1
LeftLeg.Reflectance = LeftLeg.Reflectance - .1
RightLeg.Reflectance =RightLeg.Reflectance - .1
Top.Reflectance = Top.Reflectance - .1
Middle.Reflectance = Middle.Reflectance - .1
Bottom.Reflectance = Bottom.Reflectance - .1
pp.Transparency = pp.Transparency + .1
wait()
end
pp:remove()
Humanoid.WalkSpeed = 16
end

function Something()
for i = 1, 20 do 
Middle.Transparency = Middle.Transparency + .05
wait()
end
--MiddleMesh.MeshType = "Sphere"
for i = 1, 20 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(.04,0,.04)
wait()
end
for i = 1, 10 do
teld.C0 = teld.C0 - Vector3.new(.045,0,0)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(.065,0,.065)
wait()
end
for i = 1, 10 do
beld.C0 = beld.C0 + Vector3.new(0,.045,0)
wait()
end
for i = 1, 10 do
beld.C0 = beld.C0 + Vector3.new(.045,0,0)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(0,.06,0)
wait()
end
for i = 1, 20 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.01,0,.01)
wait()
end
for i = 1, 10 do
meld.C0 = meld.C0 + Vector3.new(0,.035,0)
wait()
end
end

function NoHealer()
meld.C0 = CFrame.new(0,1.3,-0)
MiddleMesh.Scale=Vector3.new(1.01,.1,1.01)
for i = 1, 20 do 
Middle.Transparency = Middle.Transparency - .05
wait()
end
--MiddleMesh.MeshType = "Sphere"
for i = 1, 20 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(.04,0,.04)
wait()
end
for i = 1, 10 do
teld.C0 = teld.C0 + Vector3.new(.045,0,0)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(.065,0,.065)
wait()
end
for i = 1, 10 do
beld.C0 = beld.C0 - Vector3.new(0,.045,0)
wait()
end
for i = 1, 10 do
beld.C0 = beld.C0 - Vector3.new(.045,0,0)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(0,.06,0)
wait()
end
end

function LeaveMeAlone()
for i = 1, 20 do
beld.C0 = beld.C0 - Vector3.new(0,.125,0)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(.15,0,.15)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(0,.275,0)
wait()
end
pp = Instance.new("Part")
pp.Parent = Torso
pp.CFrame = Torso.CFrame
pp.Transparency = 1
pp.BrickColor = BrickColor.new("Bright yellow")
pp.Size = Vector3.new(4.5,5,4.5)
pp.FormFactor = "Symmetric"
--pp.CanCollide = false
peld = Instance.new("Weld")
peld.Parent = Torso
peld.Part0 = Head
peld.Part1 = pp
peld.C0 = CFrame.new(0,-2.5,0)
Humanoid.WalkSpeed = 0
end

function ImCoolNow()
for i = 1, 20 do
beld.C0 = beld.C0 + Vector3.new(0,.125,0)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(.15,0,.15)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(0,.275,0)
wait()
end
pp:remove()
Humanoid.WalkSpeed = 16
end

function Radio()
for i = 1, 20 do
beld.C0 = beld.C0 - Vector3.new(0,.05,0)
wait()
end
for i = 1, 20 do
beld.C0 = beld.C0 + Vector3.new(0,0,.08)
wait()
end
for i = 1, 20 do
beld.C0 = beld.C0 - Vector3.new(0,.05,0)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(.05,0,.05)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(0,.175,0)
wait()
end
for i = 1, 20 do
meld.C0 = meld.C0 + Vector3.new(0,0,.08)
wait()
end
for i = 1, 20 do
meld.C0 = meld.C0 - Vector3.new(0,.05,0)
wait()
end
for i = 1, 20 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.05,0,.05)
wait()
end
for i = 1, 20 do
teld.C0 = teld.C0 + Vector3.new(0,0,.08)
wait()
end
for i = 1, 20 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(.043,0,.043)
wait()
end
for i = 1, 20 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(0,.12,0)
wait()
end
for i = 1, 20 do
teld.C0 = teld.C0 + Vector3.new(.03,0,0)
wait()
end
for i = 1, 20 do
teld.C0 = teld.C0 + Vector3.new(0,.05,0)
wait()
end
end

function NoRadio()
for i = 1, 20 do
beld.C0 = beld.C0 + Vector3.new(0,.05,0)
wait()
end
for i = 1, 20 do
beld.C0 = beld.C0 - Vector3.new(0,0,.08)
wait()
end
for i = 1, 20 do
beld.C0 = beld.C0 + Vector3.new(0,.05,0)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(.05,0,.05)
wait()
end
for i = 1, 20 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(0,.175,0)
wait()
end
for i = 1, 20 do
meld.C0 = meld.C0 - Vector3.new(0,0,.08)
wait()
end
for i = 1, 20 do
meld.C0 = meld.C0 + Vector3.new(0,.05,0)
wait()
end
for i = 1, 20 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.05,0,.05)
wait()
end
for i = 1, 20 do
teld.C0 = teld.C0 - Vector3.new(0,0,.08)
wait()
end
for i = 1, 20 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(.043,0,.043)
wait()
end
for i = 1, 20 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(0,.12,0)
wait()
end
for i = 1, 20 do
teld.C0 = teld.C0 - Vector3.new(.03,0,0)
wait()
end
for i = 1, 20 do
teld.C0 = teld.C0 - Vector3.new(0,.05,0)
wait()
end
end


function SunHat()
for i = 1, 12.5 do
meld.C0 = meld.C0 - Vector3.new(0,.05,0)
wait()
end
for i = 1, 2 do
beld.C0 = beld.C0 + Vector3.new(0,.05,0)
wait()
end
for i = 1, 15 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(.25,0,.25)
wait()
end
for i = 1, 10 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.25,0,.25)
wait()
end
for i = 1, 22 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(0,0.05,0)
wait()
end
for i = 1, 5 do
teld.C0 = teld.C0 - Vector3.new(0,.04,0)
wait()
end
end


function NoSunHat()
for i = 1, 12.5 do
meld.C0 = meld.C0 + Vector3.new(0,.05,0)
wait()
end
for i = 1, 2 do
beld.C0 = beld.C0 - Vector3.new(0,.05,0)
wait()
end
for i = 1, 15 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(.25,0,.25)
wait()
end
for i = 1, 10 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.25,0,.25)
wait()
end
for i = 1, 22 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(0,0.05,0)
wait()
end
for i = 1, 5 do
teld.C0 = teld.C0 + Vector3.new(0,.04,0)
wait()
end
end

function CoolHat()
for i = 1, 15 do
meld.C0 = meld.C0 - Vector3.new(0,.049,0)
wait()
end
for i = 1, 15 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(0,0.05,0)
wait()
end
for i = 1, 15 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(.05,0,.05)
wait()
end
for i = 1, 15 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.025,0,.025)
wait()
end
for i = 1, 10 do
teld.C0 = teld.C0 - Vector3.new(0,.04,0)
wait()
end
for i = 1, 5 do
--Bottom.CFrame = Bottom.CFrame + CFrame.Angles(45, 45, 45)
--CFrame.new()*CFrame,Angles(0,0,0)
end
end

function NoCoolHat()
for i = 1, 15 do
meld.C0 = meld.C0 + Vector3.new(0,.049,0)
wait()
end
for i = 1, 15 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(0,0.05,0)
wait()
end
for i = 1, 15 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(.05,0,.05)
wait()
end
for i = 1, 15 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.025,0,.025)
wait()
end
for i = 1, 10 do
teld.C0 = teld.C0 + Vector3.new(0,.04,0)
wait()
end
for i = 1, 5 do
--Bottom.CFrame = Bottom.CFrame - CFrame.Angles(45, 45, 45)
--CFrame.new()*CFrame,Angles(0,0,0)
end
end

function SweatBand()
for i = 1, 20 do
meld.C0 = meld.C0 - Vector3.new(0,.05,0)
wait()
end
for i = 1, 10 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.0225,0,.0225)
wait()
end
for i = 1, 14 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(.02,0,.02)
wait()
end
for i = 1, 10 do
beld.C0 = beld.C0 - Vector3.new(0,.02,0)
wait()
end
for i = 1, 5 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(0,.03,0)
wait()
end
for i = 1, 8 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(.1,0,.1)
wait()
end
for i = 1, 8 do
teld.C0 = teld.C0 + Vector3.new(0,0,.072)
wait()
end
for i = 1, 12.5 do
teld.C0 = teld.C0 - Vector3.new(0,.1,0)
wait()
end
end

function NoSweatBand()
for i = 1, 20 do
meld.C0 = meld.C0 + Vector3.new(0,.05,0)
wait()
end
for i = 1, 10 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.0225,0,.0225)
wait()
end
for i = 1, 14 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(.02,0,.02)
wait()
end
for i = 1, 10 do
beld.C0 = beld.C0 + Vector3.new(0,.02,0)
wait()
end
for i = 1, 5 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(0,.03,0)
wait()
end
for i = 1, 8 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(.1,0,.1)
wait()
end
for i = 1, 8 do
teld.C0 = teld.C0 - Vector3.new(0,0,.072)
wait()
end
for i = 1, 12.5 do
teld.C0 = teld.C0 + Vector3.new(0,.1,0)
wait()
end
end

function Umbrella()
for i = 1, 30 do
meld.C0 = meld.C0 + Vector3.new(0,.05,0)
wait()
end
for i = 1, 44.5 do
beld.C0 = beld.C0 + Vector3.new(0,.05,0)
wait()
end
for i = 1, 6.5 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(0.1,0,0.1)
wait()
end
for i = 1, 20 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(0,.25,0)
wait()
end
for i = 1, 15 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(.25,0,.25)
wait()
end
for i = 1, 10 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.25,0,.25)
wait()
end
end

function Normal()
for i = 1, 30 do
meld.C0 = meld.C0 - Vector3.new(0,.05,0)
wait()
end
for i = 1, 44.5 do
beld.C0 = beld.C0 - Vector3.new(0,.05,0)
wait()
end
for i = 1, 6.5 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(0.1,0,0.1)
wait()
end
for i = 1, 20 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(0,.25,0)
wait()
end
for i = 1, 15 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(.25,0,.25)
wait()
end
for i = 1, 10 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.25,0,.25)
wait()
end
end

function Helmet()
for i = 1, 30 do
beld.C0 = beld.C0 - Vector3.new(0,.015,0)
wait()
end
for i = 1, 30 do
BottomMesh.Scale = BottomMesh.Scale + Vector3.new(0,.037,0)
wait()
end
for i = 1, 30 do
meld.C0 = meld.C0 - Vector3.new(0,.035,0)
wait()
end
for i = 1, 30 do
meld.C0 = meld.C0 - Vector3.new(0,0,.0095)
wait()
end
for i = 1, 30 do
TopMesh.Scale = TopMesh.Scale - Vector3.new(.03,.0,.03)
wait()
end
for i = 1, 15 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.01,.0,.01)
wait()
end
for i = 1, 30 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.01,.0,.01)
wait()
end
for i = 1, 8 do
meld.C0 = meld.C0 + Vector3.new(0,0,.0095)
wait()
end
for i = 1, 8 do
teld.C0 = teld.C0 + Vector3.new(.05,0,0)
wait()
end
end

function NoHelmet()
for i = 1, 30 do
beld.C0 = beld.C0 + Vector3.new(0,.015,0)
wait()
end
for i = 1, 30 do
BottomMesh.Scale = BottomMesh.Scale - Vector3.new(0,.037,0)
wait()
end
for i = 1, 30 do
meld.C0 = meld.C0 + Vector3.new(0,.035,0)
wait()
end
for i = 1, 30 do
meld.C0 = meld.C0 + Vector3.new(0,0,.0095)
wait()
end
for i = 1, 30 do
TopMesh.Scale = TopMesh.Scale + Vector3.new(.03,.0,.03)
wait()
end
for i = 1, 15 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.01,.0,.01)
wait()
end
for i = 1, 30 do
MiddleMesh.Scale = MiddleMesh.Scale - Vector3.new(.01,.0,.01)
wait()
end
for i = 1, 8 do
meld.C0 = meld.C0 - Vector3.new(0,0,.0095)
wait()
end
for i = 1, 8 do
teld.C0 = teld.C0 - Vector3.new(.05,0,0)
wait()
end
end



function Spin()
for i = 1, 30 do 
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(1,0,1)
Middle.Transparency = Middle.Transparency + .015
wait()
end
for i = 1, 90 do 
meld.C0 = meld.C0 - Vector3.new(0,.11,0)
wait()
end
meld.C0 = CFrame.new(0,1.3,-0)
MiddleMesh.Scale = Vector3.new(1.01,.1,1.01)
Middle.Transparency = 0
end

function Suicide()
ef2 = Instance.new("BodyVelocity")
ef2.Parent = Torso
ef2.maxForce = Vector3.new(0,math.huge,0)
ef2.velocity = Vector3.new(0, 50, 0)
Character.Humanoid.PlatformStand = true
wait(1)
--Sound.SoundId = "http://www.roblox.com/asset/?id=2101148"
--Sound.Pitch = 1
for i = 1, 3 do
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = Torso.Position
e.BlastRadius = 30
e.BlastPressure = 10000
--Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = Head.Position
e.BlastRadius = 30
e.BlastPressure = 1000
--Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = RightArm.Position
e.BlastRadius = 30
e.BlastPressure = 1000
--Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = LeftArm.Position
e.BlastRadius = 30
e.BlastPressure = 1000
--Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = LeftLeg.Position
e.BlastRadius = 30
e.BlastPressure = 1000
--Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = RightLeg.Position
e.BlastRadius = 1000
e.BlastPressure = 1000
--Sound:play()
wait(.2)
end
end

function Change()
for i = 1, 100 do
meld.C0 = meld.C0 + Vector3.new(0,.5,0)
wait()
end
for i = 1, 200 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(1,0,1)
wait()
end
for i = 1, 50 do
meld.C0 = meld.C0 - Vector3.new(0,2,0)
Stuff = Workspace:GetChildren()
for i = 1 , #Stuff do
Torsoo = Stuff[i]:findFirstChild("Torso")
if Torsoo ~= nil then
if (Torsoo.Position-Torsoo.Position).magnitude <= (10) then
if Torsoo.Parent.Name ~= Names then
Humanoid = Torsoo.Parent:findFirstChild("Humanoid")
if Humanoid ~= nil then
Humanoid.MaxHealth = 100
Humanoid:TakeDamage(1)
Humanoid.Sit = true
Torsoo.CFrame =Torsoo.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)) 
end
end
end
end
end
wait()
end
meld.C0 = CFrame.new(0,1.3,-0)
MiddleMesh.Scale = Vector3.new(1.01,.1,1.01)
Middle.Transparency = 0
end

function Clean()
stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className ~= "Script" then
if game.Players:GetPlayerFromCharacter(stuff[i]) == nil then
stuff[i]:Remove()
end
end
end
p = Instance.new("Part")
p.Parent = game.Workspace
p.Name = "Base"
p.Anchored = true
p.BottomSurface = "Smooth"
p.BrickColor = BrickColor.new (28)
p.Size = Vector3.new(512, 1, 512)
p.CFrame = CFrame.new(Vector3.new(0, 0, 0))

game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100)
game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
game.Lighting.Ambient = Color3.new(2, 2, 2)
game.Lighting.Brightness = 1
game.Lighting.TimeOfDay = "12:00:00"
end

function ResetHat()
for i = 1, 20 do
Top.Transparency = Top.Transparency + .05
Bottom.Transparency = Bottom.Transparency + .05
Middle.Transparency = Middle.Transparency + .05
wait()
end
meld.C0 = CFrame.new(0,1.3,-0)
MiddleMesh.Scale=Vector3.new(1.01,.1,1.01)
beld.C0 = CFrame.new(0,.5,-0)
BottomMesh.Scale=Vector3.new(1.5,.1,1.5)
teld.C0 = CFrame.new(0,1,-0)
TopMesh.Scale=Vector3.new(1,1.2,1)
wait(1)
for i = 1, 20 do
Top.Transparency = Top.Transparency - .05
Bottom.Transparency = Bottom.Transparency - .05
Middle.Transparency = Middle.Transparency - .05
wait()
end
end


gm = Instance.new("GuiMain")
gm.Parent = Player.PlayerGui
gm.Name = "GUI-Main"
Frame = Instance.new("Frame",gm)
Frame.Size = UDim2.new(0,310,0,300)
Frame.Position = UDim2.new(0,780,0,20)
Frame.BackgroundTransparency = .5
Frame.BackgroundColor3 = Color3.new(50,50,50)
Frame.BorderColor3 = Color3.new(0,0,0)
Prev = Instance.new("TextButton",Frame)
Prev.Position = UDim2.new(0,0,0,285)
Prev.Size = UDim2.new(0,70,0,15)
Prev.Text = "Page 1"
Prev.BackgroundTransparency = .5
Prev.TextTransparency = .1
Prev.BackgroundColor3 = Color3.new(100,255,255)
Prev.BorderColor3 = Color3.new(50,255,255)
function onClick()
Page(1,gm)
end
Prev.MouseButton1Click:connect(onClick)
Next = Instance.new("TextButton",Frame)
Next.Position = UDim2.new(0,240,0,285)
Next.Size = UDim2.new(0,70,0,15)
Next.Text = "Page 2"
Next.BackgroundTransparency = .5
Next.TextTransparency = .1
Next.BackgroundColor3 = Color3.new(100,255,255)
Next.BorderColor3 = Color3.new(50,255,255)
function onClick()
Page(2,gm)
end
Next.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,240)
tb.Text = "Helicopter"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
ShieldOn()
--[[if Sh ~= true then 
ShieldOff()
end]]
wait(15)
ShieldOff()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,240)
tb.Text = "Heal"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Heal()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,200)
tb.Text = "Harm"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Harm()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,240)
tb.Text = "TeleUp"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Free()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,200)
tb.Text = "Spin"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Spin()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,160)
tb.Text = "KillSelf"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Suicide()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,120)
tb.Text = "Darkness"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Change()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,80)
tb.Text = "Clean"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Clean()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,40)
tb.Text = "Rampage"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Rampage()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,160)
tb.Text = "Umbrella"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Umbrella()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,120)
tb.Text = "No-Umbrella"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Normal()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,80)
tb.Text = "Helmet"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
Helmet()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,40)
tb.Text = "No-Helmet"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
NoHelmet()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,40)
tb.Text = "Cool-Hat"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
CoolHat()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,80)
tb.Text = "No-Cool-Hat"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
NoCoolHat()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,120)
tb.Text = "Sweatband"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
SweatBand()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,160)
tb.Text = "No-Sweatband"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
NoSweatBand()
end
tb.MouseButton1Click:connect(click)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,200)
tb.Text = "Reset Hat"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
ResetHat()
end
tb.MouseButton1Click:connect(click)


Vip = Player
function onChatted(msg) 
if Radio == true then
if msg == "FOR ALLAH!" then 
Humanoid.WalkSpeed = 24
for i = 1, 5 do 
Middle.BrickColor = BrickColor.new("Really red")
wait(1)
Middle.BrickColor = BrickColor.new("Royal purple")
wait(1)
end
p = Instance.new("Part")
p.Parent = Torso
p.CFrame = Torso.CFrame
p.Anchored = true
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Bright yellow")
p.FormFactor = "Symmetric"
pm = Instance.new("SpecialMesh")
pm.Parent = p
pm.MeshType = "Sphere"
e = Instance.new("Explosion")
e.Parent = Torso
e.BlastRadius = 8
e.Position = Torso.Position
for i = 1, 25 do 
pm.Scale = pm.Scale + Vector3.new(.5,.5,.5)
p.Transparency = p.Transparency + .04
wait()
end
end
end 
end 
Vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if Healing == true then
if msg == "Activate" then 
for i = 1, 10 do
Middle.Transparency = 0
MiddleMesh.Scale = Vector3.new(.01,.1,.01)
for i = 1, 20 do
MiddleMesh.Scale = MiddleMesh.Scale + Vector3.new(.25,0,.25)
Middle.Transparency = Middle.Transparency + .05
wait()
end
wait(3)
end
end 
end 
end
Vip.Chatted:connect(onChatted) 
 -- mediafire