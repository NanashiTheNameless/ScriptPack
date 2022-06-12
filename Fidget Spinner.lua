------------------
--FIJJET SPINNUH--
------------------
--By	 --
--CKbackup-
-----------

player = game.Players.LocalPlayer
chara = player.Character
debby = game.Debris
Mouse = player:GetMouse()
rs = game:GetService("RunService").RenderStepped
speedo = 20
mode = "Drop"

--Outfit--
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

SpinnerWeldBlock = New("Part",chara,"SpinnerWeldBlock",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.600000024, 0.200000003, 0.599999964),CFrame = CFrame.new(-27.7000008, 2.10000014, 9.10000038, 1, 0, 0, 0, 1, 0, 0, 0, 1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",SpinnerWeldBlock,"Weld",{Part0 = SpinnerWeldBlock,Part1 = chara["Right Arm"],C1 = CFrame.new(-0.200000763, -0.899999619, -0.600000143, 1, 0, 0, 0, 0, 1, -0, -1, -0),})
FIJJETSPINNUH = New("Part",chara,"FIJJETSPINNUH",{BrickColor = BrickColor.new("Bright red"),Size = Vector3.new(1.4000001, 0.200000003, 1.39999998),CFrame = CFrame.new(-27.7000008, 2.10000014, 9.10000038, 1, 0, 0, 0, 1, 0, 0, 0, 1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.768628, 0.156863, 0.109804),})
FidgetSpinnerMesh = New("SpecialMesh",FIJJETSPINNUH,"FidgetSpinnerMesh",{Offset = Vector3.new(0, 0, -0.135000005),Scale = Vector3.new(3.5, 6, 3.5),MeshId = "rbxassetid://785024366",MeshType = Enum.MeshType.FileMesh,})
SpinnerWeightOverlay = New("Decal",FIJJETSPINNUH,"SpinnerWeightOverlay",{Face = Enum.NormalId.Top,Texture = "rbxassetid://785492382",})
FIJJETSPINNUHWELD = New("ManualWeld",FIJJETSPINNUH,"FIJJETSPINNUHWELD",{Part0 = FIJJETSPINNUH,Part1 = SpinnerWeldBlock,})

ScreenGui = New("ScreenGui",player.PlayerGui,"ScreenGui",{})
Frame = New("Frame",ScreenGui,"Frame",{Size = UDim2.new(0, 150, 0, 200),Position = UDim2.new(1,0,.5,0),AnchorPoint = Vector2.new(1,0)})
ColourLabel = New("TextLabel",Frame,"ColourLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Size = UDim2.new(1, 0, 0.1, 0),Text = "Spinner BrickColor"})
BrickColorBox = New("TextBox",Frame,"BrickColorBox",{Size = UDim2.new(0.8, 0, 0.1, 0),Position = UDim2.new(.1,0,.1,0),Text = "(BrickColor here)"})
TextureBox = New("TextBox",Frame,"TextureBox",{Size = UDim2.new(0.8, 0, 0.1, 0),Position = UDim2.new(.1,0,.3,0),Text = "(Decal ID here)"})
TextureLabel = New("TextLabel",Frame,"TextureLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Size = UDim2.new(1, 0, 0.1, 0),Position = UDim2.new(0,0,.2,0),Text = "Spinner Texture"})
RefTraLabel = New("TextLabel",Frame,"RefTraLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Size = UDim2.new(1, 0, 0.1, 0),Position = UDim2.new(0,0,.4,0),Text = "Reflect/Transparent"})
ReflectBox = New("TextBox",Frame,"ReflectBox",{Size = UDim2.new(0.4, 0, 0.1, 0),Position = UDim2.new(.1,0,.5,0),Text = "0"})
TransBox = New("TextBox",Frame,"TransBox",{Size = UDim2.new(0.4, 0, 0.1, 0),Position = UDim2.new(.5,0,.5,0),Text = "0"})
SpeedLabel = New("TextLabel",Frame,"SpeedLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Size = UDim2.new(1, 0, 0.1, 0),Position = UDim2.new(0,0,.6,0),Text = "Spin Speed"})
SpeedBox = New("TextBox",Frame,"SpeedBox",{Size = UDim2.new(0.8, 0, 0.1, 0),Position = UDim2.new(.1,0,.7,0),Text = "20"})
ModeLabel = New("TextLabel",Frame,"ModeLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Size = UDim2.new(1, 0, 0.1, 0),Position = UDim2.new(0,0,.8,0),Text = "Mode (Switch with Q or E)"})
CurrentModeLabel = New("TextLabel",Frame,"CurrentModeLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Size = UDim2.new(1, 0, 0.1, 0),Position = UDim2.new(0,0,.9,0),Text = "Drop"})
CloseButton = New("TextButton",ScreenGui,"CloseButton",{Size = UDim2.new(0, 50, 0, 25),Position = UDim2.new(),AnchorPoint = Vector2.new(1,1),Position = UDim2.new(1,0,.5,0),Text = "Close"})

CloseButton.MouseButton1Click:connect(function()
if Frame.Visible == true then
Frame.Visible = false
CloseButton.Text = "Open"
elseif Frame.Visible == false then
Frame.Visible = true
CloseButton.Text = "Close"
end
end)

TextureBox.Changed:connect(function()
FidgetSpinnerMesh.TextureId = TextureBox.Text
end)

BrickColorBox.Changed:connect(function()
FIJJETSPINNUH.BrickColor = BrickColor.new(BrickColorBox.Text)
FidgetSpinnerMesh.TextureId = ""
end)

ReflectBox.Changed:connect(function()
FIJJETSPINNUH.Reflectance = ReflectBox.Text
end)

TransBox.Changed:connect(function()
FIJJETSPINNUH.Transparency = TransBox.Text
end)

SpeedBox.Changed:connect(function()
if SpeedBox.Text ~= "" then
speedo = SpeedBox.Text
end
end)

function CreateTrailObj(parent,color1,color2,ofsx,ofsz)
local Att1 =  New("Attachment",parent,"Att1",{Position = Vector3.new(ofsx,parent.Size.Y/2,ofsz)})
local Att2 =  New("Attachment",parent,"Att2",{Position = Vector3.new(ofsx,-(parent.Size.Y/2),ofsz)})
local TEff = New("Trail",parent,"TrailEff",{Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new(color1).Color),ColorSequenceKeypoint.new(1,BrickColor.new(color2).Color)}),Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,1)}),Attachment0 = Att1,Attachment1 = Att2,Enabled = false,Lifetime = .5,MinLength = .001})
return TEff
end

--Clerp Animations--
TC = chara.HumanoidRootPart.RootJoint
HC = chara.Torso.Neck
RAC = chara.Torso["Right Shoulder"]
LAC = chara.Torso["Left Shoulder"]
RLC = chara.Torso["Right Hip"]
LLC = chara.Torso["Left Hip"]
TCF = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
HCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
RACF = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LACF = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RLCF = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LLCF = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RWF = CFrame.new(-1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LWF = CFrame.new(1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RLWF = CFrame.new(-.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LLWF = CFrame.new(.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW = Instance.new("Weld",HC.Parent)
RW.Part1 = HC.Parent
RW.Part0 = chara["Right Arm"]
RW.C0 = RWF

function clerp(a,b,c)
return a:lerp(b,c)
end

--TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
--HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
--RW.C0 = (RWF + Vector3.new(1,2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
--LW.C0 = LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(2))

RW.C0 = RWF

--Idle Clerp--
IRWF = (RWF - Vector3.new(-.2,-.8,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-10),0)

function res()
RW.C0 = IRWF
end
res()

--Mouse Functions--
function onKeyDown(key)
if key == "q" then
mode = "Drop"
CurrentModeLabel.Text = mode
elseif key == "e" then
mode = "Throw"
CurrentModeLabel.Text = mode
end
end
function onButton1Down()
if mode == "Drop" then
local spinnah = FIJJETSPINNUH:Clone()
spinnah.Parent = workspace
spinnah.Position = FIJJETSPINNUH.Position
spinnah:BreakJoints()
local spinf = Instance.new("BodyAngularVelocity",spinnah)
spinf.AngularVelocity = Vector3.new(0,speedo,0)
spinf.MaxTorque = Vector3.new(speedo,speedo,speedo)
debby:AddItem(spinnah,60)
elseif mode == "Throw" then
local spinnah = FIJJETSPINNUH:Clone()
spinnah.Parent = workspace
spinnah.Position = FIJJETSPINNUH.Position + chara.HumanoidRootPart.CFrame.lookVector*5
spinnah:BreakJoints()
debby:AddItem(spinnah,60)
local spinf = Instance.new("BodyAngularVelocity",spinnah)
spinf.AngularVelocity = Vector3.new(0,speedo,0)
spinf.MaxTorque = Vector3.new(speedo,speedo,speedo)
local faws = Instance.new("BodyForce",spinnah)
faws.Force = Vector3.new(0,spinnah:GetMass()*workspace.Gravity,0)
spinnah.Velocity = chara.HumanoidRootPart.CFrame.lookVector*speedo
spinnah.Touched:connect(function(hit)
if hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid") and faws ~= nil then
faws:Destroy()
faws = nil
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(10,20))
spinf:Destroy()
wait(5)
for i = 0, 1, .1 do
wait(.01)
spinnah.Transparency = i
end
spinnah:Destroy()
end
end)
end
end

--Mouse Activation--
if Mouse then
Mouse.KeyDown:connect(onKeyDown)
Mouse.Button1Down:connect(onButton1Down)
end

--Loop--
while true do
rs:wait()
FIJJETSPINNUHWELD.C0 = FIJJETSPINNUHWELD.C0 * CFrame.fromEulerAnglesXYZ(0,math.rad(speedo),0)
end