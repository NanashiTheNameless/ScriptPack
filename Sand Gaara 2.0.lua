--[[
Made by CadenSB
--]]
local player = game.Players.LocalPlayer
local char = player.Character
char.Animate.Disabled = true
char.Humanoid.Animator:Destroy()
local mouse = player:GetMouse()
local sine=0
local change=1
local ws = 30
local ts = game:GetService("TweenService")
char.Humanoid.WalkSpeed = ws
chr=player.Character
human=chr:FindFirstChild("Humanoid")
tors=chr["Torso"]
rarm=chr["Right Arm"]
larm=chr["Left Arm"]
rleg=chr["Right Leg"]
lleg=chr["Left Leg"]
hrp=chr["HumanoidRootPart"]
hed=chr["Head"]
cf=CFrame.new
ang=CFrame.Angles
rd=math.rad
rd2=math.random
-- Objects

local GaaraMoveGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Move1 = Instance.new("Frame")
local Bar1 = Instance.new("Frame")
local KeyButton = Instance.new("TextLabel")
local MoveName = Instance.new("TextLabel")
local Move2 = Instance.new("Frame")
local Bar2 = Instance.new("Frame")
local KeyButton_2 = Instance.new("TextLabel")
local MoveName_2 = Instance.new("TextLabel")
local Move3 = Instance.new("Frame")
local Bar3 = Instance.new("Frame")
local KeyButton_3 = Instance.new("TextLabel")
local MoveName_3 = Instance.new("TextLabel")
local Move4 = Instance.new("Frame")
local Bar4 = Instance.new("Frame")
local KeyButton_4 = Instance.new("TextLabel")
local MoveName_4 = Instance.new("TextLabel")

-- Properties

GaaraMoveGui.Name = "GaaraMoveGui"
GaaraMoveGui.Parent = player.PlayerGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = GaaraMoveGui
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(1, -283, 1, -355)
MainFrame.Size = UDim2.new(0, 253, 0, 355)

Move1.Name = "Move1"
Move1.Parent = MainFrame
Move1.BackgroundColor3 = Color3.new(0.847059, 0.784314, 0.521569)
Move1.BackgroundTransparency = 0.5
Move1.BorderColor3 = Color3.new(0.847059, 0.784314, 0.521569)
Move1.BorderSizePixel = 0
Move1.Size = UDim2.new(1, 0, 0, 80)
Move1.ZIndex = 5

Bar1.Name = "Bar1"
Bar1.Parent = Move1
Bar1.BackgroundColor3 = Color3.new(144/255, 120/255, 92/255)
Bar1.BorderSizePixel = 0
Bar1.Size = UDim2.new(0, 0, 1, 0)
Bar1.ZIndex = 6

KeyButton.Name = "KeyButton"
KeyButton.Parent = Move1
KeyButton.BackgroundColor3 = Color3.new(1, 1, 1)
KeyButton.BackgroundTransparency = 1
KeyButton.Size = UDim2.new(1, 0, 1, -40)
KeyButton.ZIndex = 7
KeyButton.Font = Enum.Font.SourceSansLight
KeyButton.FontSize = Enum.FontSize.Size48
KeyButton.Text = "[V]"
KeyButton.TextColor3 = Color3.new(1, 1, 1)
KeyButton.TextSize = 37
KeyButton.TextStrokeTransparency = 0
KeyButton.TextWrapped = true
KeyButton.TextYAlignment = Enum.TextYAlignment.Top

MoveName.Name = "MoveName"
MoveName.Parent = Move1
MoveName.BackgroundColor3 = Color3.new(1, 1, 1)
MoveName.BackgroundTransparency = 1
MoveName.Position = UDim2.new(0, 0, 0, 40)
MoveName.Size = UDim2.new(1, 0, 1, -40)
MoveName.ZIndex = 7
MoveName.Font = Enum.Font.SourceSansLight
MoveName.FontSize = Enum.FontSize.Size48
MoveName.Text = "Sand Binding Coffin"
MoveName.TextColor3 = Color3.new(1, 1, 1)
MoveName.TextSize = 37
MoveName.TextStrokeTransparency = 0
MoveName.TextWrapped = true
MoveName.TextYAlignment = Enum.TextYAlignment.Top

Move2.Name = "Move2"
Move2.Parent = MainFrame
Move2.BackgroundColor3 = Color3.new(0.847059, 0.784314, 0.521569)
Move2.BackgroundTransparency = 0.5
Move2.BorderColor3 = Color3.new(0.847059, 0.784314, 0.521569)
Move2.BorderSizePixel = 0
Move2.Position = UDim2.new(0, 0, 0, 90)
Move2.Size = UDim2.new(1, 0, 0, 80)
Move2.ZIndex = 5

Bar2.Name = "Bar2"
Bar2.Parent = Move2
Bar2.BackgroundColor3 = Color3.new(144/255, 120/255, 92/255)
Bar2.BorderSizePixel = 0
Bar2.Size = UDim2.new(1, 0, 1, 0)
Bar2.ZIndex = 6

KeyButton_2.Name = "KeyButton"
KeyButton_2.Parent = Move2
KeyButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
KeyButton_2.BackgroundTransparency = 1
KeyButton_2.Size = UDim2.new(1, 0, 1, -40)
KeyButton_2.ZIndex = 7
KeyButton_2.Font = Enum.Font.SourceSansLight
KeyButton_2.FontSize = Enum.FontSize.Size48
KeyButton_2.Text = "[C]"
KeyButton_2.TextColor3 = Color3.new(1, 1, 1)
KeyButton_2.TextSize = 37
KeyButton_2.TextStrokeTransparency = 0
KeyButton_2.TextWrapped = true
KeyButton_2.TextYAlignment = Enum.TextYAlignment.Top

MoveName_2.Name = "MoveName"
MoveName_2.Parent = Move2
MoveName_2.BackgroundColor3 = Color3.new(1, 1, 1)
MoveName_2.BackgroundTransparency = 1
MoveName_2.Position = UDim2.new(0, 0, 0, 40)
MoveName_2.Size = UDim2.new(1, 0, 1, -40)
MoveName_2.ZIndex = 7
MoveName_2.Font = Enum.Font.SourceSansLight
MoveName_2.FontSize = Enum.FontSize.Size48
MoveName_2.Text = "Sand Wave"
MoveName_2.TextColor3 = Color3.new(1, 1, 1)
MoveName_2.TextSize = 37
MoveName_2.TextStrokeTransparency = 0
MoveName_2.TextWrapped = true
MoveName_2.TextYAlignment = Enum.TextYAlignment.Top

Move3.Name = "Move3"
Move3.Parent = MainFrame
Move3.BackgroundColor3 = Color3.new(0.847059, 0.784314, 0.521569)
Move3.BackgroundTransparency = 0.5
Move3.BorderColor3 = Color3.new(0.847059, 0.784314, 0.521569)
Move3.BorderSizePixel = 0
Move3.Position = UDim2.new(0, 0, 0, 180)
Move3.Size = UDim2.new(1, 0, 0, 80)
Move3.ZIndex = 5

Bar3.Name = "Bar3"
Bar3.Parent = Move3
Bar3.BackgroundColor3 = Color3.new(144/255, 120/255, 92/255)
Bar3.BorderSizePixel = 0
Bar3.Size = UDim2.new(1, 0, 1, 0)
Bar3.ZIndex = 6

KeyButton_3.Name = "KeyButton"
KeyButton_3.Parent = Move3
KeyButton_3.BackgroundColor3 = Color3.new(1, 1, 1)
KeyButton_3.BackgroundTransparency = 1
KeyButton_3.Size = UDim2.new(1, 0, 1, -40)
KeyButton_3.ZIndex = 7
KeyButton_3.Font = Enum.Font.SourceSansLight
KeyButton_3.FontSize = Enum.FontSize.Size48
KeyButton_3.Text = "[X]"
KeyButton_3.TextColor3 = Color3.new(1, 1, 1)
KeyButton_3.TextSize = 37
KeyButton_3.TextStrokeTransparency = 0
KeyButton_3.TextWrapped = true
KeyButton_3.TextYAlignment = Enum.TextYAlignment.Top

MoveName_3.Name = "MoveName"
MoveName_3.Parent = Move3
MoveName_3.BackgroundColor3 = Color3.new(1, 1, 1)
MoveName_3.BackgroundTransparency = 1
MoveName_3.Position = UDim2.new(0, 0, 0, 40)
MoveName_3.Size = UDim2.new(1, 0, 1, -40)
MoveName_3.ZIndex = 7
MoveName_3.Font = Enum.Font.SourceSansLight
MoveName_3.FontSize = Enum.FontSize.Size48
MoveName_3.Text = "Sand Hail"
MoveName_3.TextColor3 = Color3.new(1, 1, 1)
MoveName_3.TextSize = 37
MoveName_3.TextStrokeTransparency = 0
MoveName_3.TextWrapped = true
MoveName_3.TextYAlignment = Enum.TextYAlignment.Top

Move4.Name = "Move4"
Move4.Parent = MainFrame
Move4.BackgroundColor3 = Color3.new(0.847059, 0.784314, 0.521569)
Move4.BackgroundTransparency = 0.5
Move4.BorderColor3 = Color3.new(0.847059, 0.784314, 0.521569)
Move4.BorderSizePixel = 0
Move4.Position = UDim2.new(0, 0, 0, 270)
Move4.Size = UDim2.new(1, 0, 0, 80)
Move4.ZIndex = 5

Bar4.Name = "Bar4"
Bar4.Parent = Move4
Bar4.BackgroundColor3 = Color3.new(144/255, 120/255, 92/255)
Bar4.BorderSizePixel = 0
Bar4.Size = UDim2.new(1, 0, 1, 0)
Bar4.ZIndex = 6

KeyButton_4.Name = "KeyButton"
KeyButton_4.Parent = Move4
KeyButton_4.BackgroundColor3 = Color3.new(1, 1, 1)
KeyButton_4.BackgroundTransparency = 1
KeyButton_4.Size = UDim2.new(1, 0, 1, -40)
KeyButton_4.ZIndex = 7
KeyButton_4.Font = Enum.Font.SourceSansLight
KeyButton_4.FontSize = Enum.FontSize.Size48
KeyButton_4.Text = "[Z]"
KeyButton_4.TextColor3 = Color3.new(1, 1, 1)
KeyButton_4.TextSize = 37
KeyButton_4.TextStrokeTransparency = 0
KeyButton_4.TextWrapped = true
KeyButton_4.TextYAlignment = Enum.TextYAlignment.Top

MoveName_4.Name = "MoveName"
MoveName_4.Parent = Move4
MoveName_4.BackgroundColor3 = Color3.new(1, 1, 1)
MoveName_4.BackgroundTransparency = 1
MoveName_4.Position = UDim2.new(0, 0, 0, 40)
MoveName_4.Size = UDim2.new(1, 0, 1, -40)
MoveName_4.ZIndex = 7
MoveName_4.Font = Enum.Font.SourceSansLight
MoveName_4.FontSize = Enum.FontSize.Size48
MoveName_4.Text = "Sand Defence"
MoveName_4.TextColor3 = Color3.new(1, 1, 1)
MoveName_4.TextSize = 37
MoveName_4.TextStrokeTransparency = 0
MoveName_4.TextWrapped = true
MoveName_4.TextYAlignment = Enum.TextYAlignment.Top
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Weld")
o5 = Instance.new("Part")
o6 = Instance.new("Decal")
o7 = Instance.new("SpecialMesh")
o8 = Instance.new("Weld")
o9 = Instance.new("Part")
o10 = Instance.new("SpecialMesh")
o11 = Instance.new("Weld")
o12 = Instance.new("Part")
o13 = Instance.new("Decal")
o14 = Instance.new("SpecialMesh")
o15 = Instance.new("Weld")
o16 = Instance.new("Part")
o17 = Instance.new("SpecialMesh")
o18 = Instance.new("Weld")
o19 = Instance.new("Part")
o20 = Instance.new("Part")
o21 = Instance.new("Weld")
o1.Name = "GaaraGourd"
o1.Parent = mas
o2.Name = "Clothe"
o2.Parent = o1
o2.Material = Enum.Material.Fabric
o2.BrickColor = BrickColor.new("Really red")
o2.Position = Vector3.new(15.886075, -398.4841, -74.409996)
o2.Rotation = Vector3.new(0, 0, 60)
o2.Velocity = Vector3.new(0, -421.831573, 0)
o2.CanCollide = false
o2.Size = Vector3.new(1.13999987, 0.587368369, 1.41999996)
o2.CFrame = CFrame.new(15.886075, -398.4841, -74.409996, 0.500004709, -0.866032958, 0, 0.866032958, 0.500004709, 0, 0, 0, 1)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(1, 0, 0)
o2.Position = Vector3.new(15.886075, -398.4841, -74.409996)
o3.Parent = o2
o3.Scale = Vector3.new(1.5, 1.5, 1.5)
o3.MeshType = Enum.MeshType.Sphere
o4.Name = "Clothe"
o4.Parent = o2
o4.C0 = CFrame.new(-0.113934517, 0.165898561, 1.09000397, 0.500004709, -0.866032958, 0, 0.866032958, 0.500004709, 0, 0, 0, 1)
o4.Part0 = o19
o4.Part1 = o2
o5.Name = "PotPart"
o5.Parent = o1
o5.Material = Enum.Material.Sand
o5.BrickColor = BrickColor.new("Pastel brown")
o5.Position = Vector3.new(16.6000042, -398.899994, -74.2699966)
o5.Velocity = Vector3.new(0, -421.831573, 0)
o5.CanCollide = false
o5.Size = Vector3.new(2.20000005, 2.20000005, 2.20000005)
o5.CFrame = CFrame.new(16.6000042, -398.899994, -74.2699966, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o5.BottomSurface = Enum.SurfaceType.Smooth
o5.TopSurface = Enum.SurfaceType.Smooth
o5.Color = Color3.new(1, 0.8, 0.6)
o5.Position = Vector3.new(16.6000042, -398.899994, -74.2699966)
o6.Parent = o5
o6.Texture = "http://www.roblox.com/asset/?id=880087137"
o6.Face = Enum.NormalId.Back
o7.Parent = o5
o7.MeshType = Enum.MeshType.Sphere
o8.Name = "PotPart"
o8.Parent = o5
o8.C0 = CFrame.new(0.599994659, -0.249986887, 1.23000336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o8.Part0 = o19
o8.Part1 = o5
o9.Name = "PotPart"
o9.Parent = o1
o9.Material = Enum.Material.Sand
o9.BrickColor = BrickColor.new("Pastel brown")
o9.Position = Vector3.new(14.5799007, -397.624969, -74.3699951)
o9.Rotation = Vector3.new(0, 0, -30)
o9.CanCollide = false
o9.Size = Vector3.new(0.5, 0.5, 0.5)
o9.CFrame = CFrame.new(14.5799007, -397.624969, -74.3699951, 0.866028786, 0.500001431, 0, -0.500001431, 0.866028786, 0, 0, 0, 1)
o9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Color = Color3.new(1, 0.8, 0.6)
o9.Position = Vector3.new(14.5799007, -397.624969, -74.3699951)
o10.Parent = o9
o10.MeshType = Enum.MeshType.Cylinder
o11.Name = "PotPart"
o11.Parent = o9
o11.C0 = CFrame.new(-1.4201088, 1.02501559, 1.13000488, 0.866028786, 0.500001431, 0, -0.500001431, 0.866028786, 0, 0, 0, 1)
o11.Part0 = o19
o11.Part1 = o9
o12.Name = "PotPart"
o12.Parent = o1
o12.Material = Enum.Material.Sand
o12.BrickColor = BrickColor.new("Pastel brown")
o12.Position = Vector3.new(15.2999992, -398.049988, -74.2699966)
o12.Velocity = Vector3.new(0, -421.831573, 0)
o12.CanCollide = false
o12.Size = Vector3.new(1.89999998, 1.89999998, 1.89999998)
o12.CFrame = CFrame.new(15.2999992, -398.049988, -74.2699966, 1.00000238, 0, 0, 0, 1.00000238, 0, 0, 0, 1)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(1, 0.8, 0.6)
o12.Position = Vector3.new(15.2999992, -398.049988, -74.2699966)
o13.Parent = o12
o13.Texture = "http://www.roblox.com/asset/?id=880087137"
o13.Face = Enum.NormalId.Top
o14.Parent = o12
o14.MeshType = Enum.MeshType.Sphere
o15.Name = "PotPart"
o15.Parent = o12
o15.C0 = CFrame.new(-0.7000103, 0.600013494, 1.23000336, 1.00000238, 0, 0, 0, 1.00000238, 0, 0, 0, 1)
o15.Part0 = o19
o15.Part1 = o12
o16.Name = "PotPart"
o16.Parent = o1
o16.Material = Enum.Material.SmoothPlastic
o16.BrickColor = BrickColor.new("Really black")
o16.Position = Vector3.new(14.3900938, -397.504974, -74.3649673)
o16.Rotation = Vector3.new(0, 0, -30)
o16.Velocity = Vector3.new(0, -421.831573, 0)
o16.CanCollide = false
o16.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o16.CFrame = CFrame.new(14.3900938, -397.504974, -74.3649673, 0.866028786, 0.500001431, 0, -0.500001431, 0.866028786, 0, 0, 0, 1)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o16.Position = Vector3.new(14.3900938, -397.504974, -74.3649673)
o17.Parent = o16
o17.Scale = Vector3.new(0.300000012, 2, 2)
o17.MeshType = Enum.MeshType.Cylinder
o18.Name = "PotPart"
o18.Parent = o16
o18.C0 = CFrame.new(-1.60991573, 1.14501595, 1.13503265, 0.866028786, 0.500001431, 0, -0.500001431, 0.866028786, 0, 0, 0, 1)
o18.Part0 = o19
o18.Part1 = o16
o19.Name = "Handle"
o19.Parent = o1
o19.BrickColor = BrickColor.new("Institutional white")
o19.Transparency = 1
o19.Position = Vector3.new(16.0000095, -398.649994, -75.5)
o19.Velocity = Vector3.new(0, -421.831573, 0)
o19.CanCollide = false
o19.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o19.CFrame = CFrame.new(16.0000095, -398.649994, -75.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o19.LeftSurface = Enum.SurfaceType.Weld
o19.RightSurface = Enum.SurfaceType.Weld
o19.Color = Color3.new(0.972549, 0.972549, 0.972549)
o19.Position = Vector3.new(16.0000095, -398.649994, -75.5)
o20.Name = "CastPart"
o20.Parent = o1
o20.Material = Enum.Material.Sand
o20.BrickColor = BrickColor.new("Pastel brown")
o20.Transparency = 1
o20.Position = Vector3.new(14.3000011, -397.464996, -74.3800125)
o20.Velocity = Vector3.new(0, -421.831573, 0)
o20.CanCollide = false
o20.Size = Vector3.new(0.5, 0.5, 0.5)
o20.CFrame = CFrame.new(14.3000011, -397.464996, -74.3800125, 1.00000477, 0, 0, 0, 1.00000477, 0, 0, 0, 1)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(1, 0.8, 0.6)
o20.Position = Vector3.new(14.3000011, -397.464996, -74.3800125)
o21.Name = "CastPart"
o21.Parent = o20
o21.C0 = CFrame.new(-1.70000839, 1.18500566, 1.11998749, 1.00000477, 0, 0, 0, 1.00000477, 0, 0, 0, 1)
o21.Part0 = o19
o21.Part1 = o20
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = char 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

local w1 = Instance.new("Weld", o19)
w1.Part0 = tors
w1.Part1 = o19
w1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

--------------------------------------------------------------
--CFrame.new(0, 0 + 0.1 * math.cos(sine/10), 0)
RS=tors:FindFirstChild("Right Shoulder")
LS=tors:FindFirstChild("Left Shoulder")
RH=tors:FindFirstChild("Right Hip")
LH=tors:FindFirstChild("Left Hip")
RJ=hrp:FindFirstChild("RootJoint")
N=tors:FindFirstChild("Neck")
--------------------------------------
RSC0=CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
LSC0=CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0=CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
LHC0=CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
NC0=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RJC0=CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
--------------------------------------
function lerpz(joint,prop,cfrmz,alp)
        joint[prop]=joint[prop]:lerp(cfrmz,alp)
end
function RemoveItem(obj,tim)
local RemoveItem2 = coroutine.wrap(function(object,howlong)
	wait(howlong)
	object:Remove()
end)
RemoveItem2(obj,tim)
end
local walk = false
local idle = false
local jump = false
local jumpCheck = false
local fall = false
local AnimDisable = false
game:GetService("RunService").RenderStepped:connect(function()
sine=sine+change
if AnimDisable == false then
if jumpCheck == true then
idle = false
walk = false
fall = false
jump = true
elseif human.MoveDirection ~= Vector3.new(0,0,0) then
fall = false
walk = true
jump = false
idle = false
elseif human.MoveDirection == Vector3.new(0,0,0) then
walk = false
fall = false
jump = false
idle = true
end
else
walk = false
fall = false
jump = false
idle = false
end
end)
human.StateChanged:connect(function(state)
	if state == Enum.HumanoidStateType.Jumping then
		jumpCheck = true
	else
		jumpCheck = false
	end
end)
local playanims = coroutine.wrap(function()
while wait() do
if idle == true then
human.JumpPower = 60
lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(-12)+rd(5)*math.cos(sine/14),rd(0),rd(-20)),0.3)
lerpz(RS,'C0',RSC0*cf(0,0.07*math.cos(sine/14),0)*ang(rd(10)*math.cos(sine/14),rd(0),rd(0)),0.3)
lerpz(LS,'C0',LSC0*cf(0,0.07*math.cos(sine/14),0)*ang(rd(10)*math.cos(sine/14),rd(0),rd(0)),0.3)
lerpz(RH,'C0',RHC0*cf(0.5,0.1-0.1*math.cos(sine/14),0)*ang(rd(-5),rd(0),rd(20)),0.3)
lerpz(LH,'C0',LHC0*cf(0,-0.1-0.1*math.cos(sine/14),0)*ang(rd(5),rd(0),rd(0)),0.3)
lerpz(RJ,'C0',RJC0*cf(0,0,0.07+0.1*math.cos(sine/14))*ang(rd(15),rd(0),rd(20)),0.3)
elseif walk ==  true then
for i = 1,2 do wait()
if walk ==  true then
lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(-35),rd(10)*math.cos(sine/4),rd(0)),0.3)
lerpz(RS,'C0',RSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(-27)+rd(5)*math.cos(sine/5)),0.3)
lerpz(LS,'C0',LSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(27)-rd(5)*math.cos(sine/5)),0.3)
lerpz(RH,'C0',RHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)+rd(60)*math.cos(sine/4)),0.3)
lerpz(LH,'C0',LHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)+rd(60)*math.cos(sine/4)),0.3)
lerpz(RJ,'C0',RJC0*cf(0,0,-0.2)*ang(rd(35),rd(0),rd(10)*math.cos(sine/4)),0.3)
else break
end
end
for i = 1,2 do wait()
if walk ==  true then
lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(-35),rd(10)*math.cos(sine/4),rd(0)),0.3)
lerpz(RS,'C0',RSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(-27)+rd(5)*math.cos(sine/5)),0.3)
lerpz(LS,'C0',LSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(27)-rd(5)*math.cos(sine/5)),0.3)
lerpz(RH,'C0',RHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)+rd(60)*math.cos(sine/4)),0.3)
lerpz(LH,'C0',LHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)+rd(60)*math.cos(sine/4)),0.3)
lerpz(RJ,'C0',RJC0*cf(0,0,-0.2)*ang(rd(35),rd(0),rd(10)*math.cos(sine/4)),0.3)
else break
end
end
elseif jump ==  true then
for i = 1,10 do wait()
if jump ==  true then
lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(-20),rd(0),rd(0)),0.5)
lerpz(RS,'C0',RSC0*cf(0,0,0)*ang(rd(-20),rd(0),rd(-19)),0.5)
lerpz(LS,'C0',LSC0*cf(0,0,0)*ang(rd(-20),rd(0),rd(19)),0.5)
lerpz(RH,'C0',RHC0*cf(0.4,0.6,0)*ang(rd(0),rd(0),rd(0)),0.5)
lerpz(LH,'C0',LHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.5)
lerpz(RJ,'C0',RJC0*cf(0,0,0)*ang(rd(20),rd(0),rd(0)),0.5)
else break
end
end
end
end
end)
playanims()
local movenum1 = {0,1000/40}
local movenum2 = {0,1000/20}
local movenum3 = {0,1000/10}
local movenum4 = {0,1000/10}
local max = 1000
local disable = false
local regenMove = coroutine.wrap(function(timer)
	while true do
		if movenum1[1] < max then
			movenum1[1] = movenum1[1]+movenum1[2]
		end
		if movenum2[1] < max then
			movenum2[1] = movenum2[1]+movenum2[2]
		end
		if movenum3[1] < max then
			movenum3[1] = movenum3[1]+movenum3[2]
		end
		if movenum4[1] < max then
			movenum4[1] = movenum4[1]+movenum4[2]
		end
		wait(timer)
	end
end)
regenMove(1)
local BarChanger = coroutine.wrap(function()
while true do
	Bar1:TweenSize(UDim2.new(0,(movenum1[1]/max*MainFrame.Size.X.Offset),1,0),"Out","Quad",0.5,true)
	Bar2:TweenSize(UDim2.new(0,(movenum2[1]/max*MainFrame.Size.X.Offset),1,0),"Out","Quad",0.5,true)
	Bar3:TweenSize(UDim2.new(0,(movenum3[1]/max*MainFrame.Size.X.Offset),1,0),"Out","Quad",0.5,true)
	Bar4:TweenSize(UDim2.new(0,(movenum4[1]/max*MainFrame.Size.X.Offset),1,0),"Out","Quad",0.5,true)
	wait(0.25)
	end
end)
BarChanger()
mouse.KeyDown:connect(function(key)
	key = key:lower()
	if disable == false then
	if key == "z" and movenum4[1]>=max then
		disable = true
		AnimDisable = true
		local active1 = true
		char.Humanoid.WalkSpeed = 0
		movenum4[1] = 0
		for i = 1,10 do wait()
		lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(15),rd(0),rd(0)),0.25)
		lerpz(RS,'C0',RSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(-180)),0.1)
		lerpz(LS,'C0',LSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(180)),0.1)
		lerpz(RH,'C0',RHC0*cf(0,0,0)*ang(rd(-10),rd(0),rd(-15)),0.25)
		lerpz(LH,'C0',LHC0*cf(0,0,0)*ang(rd(-10),rd(0),rd(15)),0.25)
		lerpz(RJ,'C0',RJC0*cf(0,0,0)*ang(rd(-15),rd(0),rd(0)),0.25)
		end
	local c = Instance.new("Part",char)
	c.Size =  Vector3.new(20,1,20)
	c.BrickColor = BrickColor.new("Pastel brown")
	c.Material = "Sand"
	c.CanCollide = false
	c.Anchored = true
	c.BottomSurface = "Smooth"
	c.TopSurface = "Smooth"
	c.CFrame = hrp.CFrame*CFrame.new(0,-4,0)
	c.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name == "Right Leg" and hit.Parent ~= char then
			hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
			hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
			wait(2)
			hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
		end
	end)
	local sandEff = coroutine.wrap(function()
		while active1 == true do wait()
			local sand = Instance.new("Part",char)
			local sandSize = math.random(0.5,1)
			sand.Name = "Sand"
			sand.BrickColor = BrickColor.new("Pastel brown")
			sand.Material = "Sand"
			sand.CanCollide = false
			sand.Anchored = true
			sand.Size = Vector3.new(sandSize,sandSize,sandSize)
			sand.CFrame = c.CFrame*CFrame.new(math.random(-10,10),math.random(-0.5,0.5),math.random(-10,10))
			sand.CFrame = sand.CFrame*CFrame.Angles(rd(math.random(1,360)),rd(math.random(1,360)),rd(math.random(1,360)))
			RemoveItem(sand,2)
			local sander = coroutine.wrap(function()
			for i = 1,10 do wait()
				sand.Size = sand.Size+Vector3.new(-0.1,-0.1,-0.1)
				sand.Transparency = sand.Transparency+0.1
			end
			end)
			sander()
		end
	end)
	sandEff()
	local mesh = Instance.new("SpecialMesh",c)
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(1.35, 1.35, 1.35)
	for i = 1,25 do wait()
		local createSand = coroutine.wrap(function()
			local b = Instance.new("Part",char)
			b.BrickColor = BrickColor.new("Pastel brown")
			b.Material = "Sand"
			b.CanCollide = false
			b.Size = Vector3.new(math.random(0.2,0.5),math.random(0.2,0.5),math.random(0.2,0.5))
			b.Position = o20.Position
			RemoveItem(b,1)
		end)
		createSand()
		lerpz(RS,'C0',RSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(-180)),0.1)
		lerpz(LS,'C0',LSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(180)),0.1)
	c.CFrame = c.CFrame*CFrame.new(0,0.04,0)
	end
	char.Humanoid.WalkSpeed = ws
	AnimDisable = false
	wait(4)
	for i = 1,25 do wait()
	c.CFrame = c.CFrame*CFrame.new(0,-0.04,0)
	end
	active1 = false
	RemoveItem(c,0)
	disable = false
	elseif key == "x" and movenum3[1]>=max then
		disable = true
		AnimDisable = true
		local active1 = true
		char.Humanoid.WalkSpeed = 0
		movenum3[1] = 0
		for i = 1,30 do wait()
		lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(35),rd(0),rd(0)),0.3)
		lerpz(RS,'C0',RSC0*cf(0,0,0)*ang(rd(0),rd(-20),rd(-60)),0.3)
		lerpz(LS,'C0',LSC0*cf(0,0,0)*ang(rd(20),rd(0),rd(-60)),0.3)
		lerpz(RH,'C0',RHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(-20)),0.3)
		lerpz(LH,'C0',LHC0*cf(-0.2,1,0)*ang(rd(0),rd(0),rd(0)),0.3)
		lerpz(RJ,'C0',RJC0*cf(0,0,-1.7)*ang(rd(60),rd(0),rd(0)),0.3)
		end
		function idek(part)
		local sandEffect = coroutine.wrap(function()
			while active1 == true do wait()
			local createff = coroutine.wrap(function()
			local sand = Instance.new("Part",char)
			local sandSize = math.random(0.5,1)
			sand.Name = "Sand"
			sand.BrickColor = BrickColor.new("Pastel brown")
			sand.Material = "Sand"
			sand.CanCollide = false
			sand.Anchored = true
			sand.Size = Vector3.new(sandSize,sandSize,sandSize)
			sand.CFrame = part.CFrame*CFrame.new(0,-1,0)
			sand.CFrame = sand.CFrame*CFrame.Angles(rd(math.random(1,360)),rd(math.random(1,360)),rd(math.random(1,360)))
			RemoveItem(sand,2)
			for i = 1,10 do wait()
				sand.Size = sand.Size+Vector3.new(-0.1,-0.1,-0.1)
				sand.Transparency = sand.Transparency+0.1
			end
			end)
			createff()
			end
		end)
		sandEffect()
		end
		idek(larm)
		idek(rarm)
		for i = 1,15 do wait()
		lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.2)
		lerpz(RS,'C0',RSC0*cf(0,0,0.7)*ang(rd(-120),rd(0),rd(0)),0.2)
		lerpz(LS,'C0',LSC0*cf(0,0,0.7)*ang(rd(-120),rd(0),rd(0)),0.2)
		lerpz(RH,'C0',RHC0*cf(0.2,0.5,0)*ang(rd(0),rd(0),rd(-10)),0.2)
		lerpz(LH,'C0',LHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.2)
		lerpz(RJ,'C0',RJC0*cf(0,0,4)*ang(rd(0),rd(0),rd(0)),0.2)
		end
		local waiter = true
		function creator(part)
		local createHail = coroutine.wrap(function()
		local hail = Instance.new("Part",char)
		hail.Shape = "Ball"
		hail.BottomSurface = "Smooth"
		hail.TopSurface = "Smooth"
		hail.Size = Vector3.new(0.2,0.2,0.2)
		hail.Transparency = 1
		hail.Name = "Sanderb"
		hail.Material = "Sand"
		hail.CanCollide = false
		hail.Anchored = true
		hail.BrickColor = BrickColor.new("Pastel brown")
		hail.CFrame = part.CFrame*CFrame.new(0,-4,0)
		RemoveItem(hail,20)
		local debunk = false
		for i = 1,10 do wait()
			hail.Size = hail.Size+Vector3.new(0.2,0.2,0.2)
			hail.Transparency = hail.Transparency-0.1
		end
		hail.Touched:connect(function(hit)
			if debunk == false and hit.Name ~= "Sanderb" then
				debunk = true
				for i = 1,5 do wait()
				hail.Transparency = hail.Transparency+0.2
				end
				hail:Remove()
			end
		end)
		local mag = (hrp.Position - mouse.Hit.p).magnitude
		local waiter = mag/30
		local ti = TweenInfo.new(waiter,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)
		local pp = {CFrame = CFrame.new((mouse.Hit.p.X),(mouse.Hit.p.Y),(mouse.Hit.p.Z))}
		local tween = ts:Create(hail,ti,pp)
		tween:Play()
		local lol = coroutine.wrap(function()
			wait(waiter)
			for i = 1,5 do wait()
				hail.Transparency = hail.Transparency+0.2
			end
			hail:Remove()
		end)
		lol()
		end)
		createHail()
		end
		for i = 1,5 do wait(0.2)
		creator(larm)
		creator(rarm)
		end
		waiter = false
		-----------------------------------------------

	repeat wait() until waiter == false
		char.Humanoid.WalkSpeed = ws
		disable = false
		active1 = false
		AnimDisable = false
	elseif key == "c" and movenum2[1]>=max then
		local hrpcframe = hrp.CFrame
		local num = 0
		local chain = 3
		local big = 0
		local height = 0
		char.Humanoid.WalkSpeed = 0
		disable = true
		AnimDisable = true
		movenum2[1] = 0
		for i = 1,15 do wait()
		lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.2)
		lerpz(RS,'C0',RSC0*cf(0,0,0)*ang(rd(-20),rd(0),rd(0)),0.2)
		lerpz(LS,'C0',LSC0*cf(0,0,0)*ang(rd(-20),rd(0),rd(0)),0.2)
		lerpz(RH,'C0',RHC0*cf(0.2,0.8,0)*ang(rd(0),rd(0),rd(0)),0.2)
		lerpz(LH,'C0',LHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.2)
		lerpz(RJ,'C0',RJC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.2)
		end
		for i = 1,8 do wait()
		lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(-12)+rd(5),rd(0),rd(-20)),0.5)
		lerpz(RS,'C0',RSC0*cf(0,0.07,0)*ang(rd(0),rd(0),rd(-30)),0.5)
		lerpz(LS,'C0',LSC0*cf(0,0.07,0)*ang(rd(0),rd(0),rd(30)),0.5)
		lerpz(RH,'C0',RHC0*cf(0.5,0.1,0)*ang(rd(-5),rd(0),rd(20)),0.5)
		lerpz(LH,'C0',LHC0*cf(0,-0.1,0)*ang(rd(5),rd(0),rd(0)),0.5)
		lerpz(RJ,'C0',RJC0*cf(0,0,0.07)*ang(rd(15),rd(0),rd(20)),0.5)
		end
		local createWave = coroutine.wrap(function()
		for i = 1,30 do wait()
		local wave = Instance.new("Part",char)
		wave.BottomSurface = "Smooth"
		wave.TopSurface = "Smooth"
		wave.Size = Vector3.new(4+big,1,chain)
		wave.Transparency = 0
		wave.Material = "Sand"
		wave.CanCollide = false
		wave.Anchored = true
		wave.BrickColor = BrickColor.new("Pastel brown")
		wave.CFrame = hrpcframe*CFrame.new(0,-3,-chain-num-1)
		local randomnum = math.random(2.0,3.1)
		local sandPath1 = Instance.new("Part",char)
		sandPath1.BottomSurface = "Smooth"
		sandPath1.TopSurface = "Smooth"
		sandPath1.Size = Vector3.new(randomnum,randomnum,randomnum)
		sandPath1.Transparency = 0
		sandPath1.Material = "Sand"
		sandPath1.CanCollide = false
		sandPath1.Anchored = true
		sandPath1.BrickColor = BrickColor.new("Pastel brown")
		sandPath1.CFrame = wave.CFrame*CFrame.new((wave.Size.X/2),0,0)
		sandPath1.CFrame = sandPath1.CFrame*CFrame.Angles(rd(math.random(1,360)),rd(math.random(1,360)),rd(math.random(1,360)))
		RemoveItem(sandPath1,4)
		local sandPath2 = Instance.new("Part",char)
		sandPath2.BottomSurface = "Smooth"
		sandPath2.TopSurface = "Smooth"
		sandPath2.Size = Vector3.new(randomnum,randomnum,randomnum)
		sandPath2.Transparency = 0
		sandPath2.Material = "Sand"
		sandPath2.CanCollide = false
		sandPath2.Anchored = true
		sandPath2.BrickColor = BrickColor.new("Pastel brown")
		sandPath2.CFrame = wave.CFrame*CFrame.new(-(wave.Size.X/2),0,0)
		sandPath2.CFrame = sandPath2.CFrame*CFrame.Angles(rd(math.random(1,360)),rd(math.random(1,360)),rd(math.random(1,360)))
		RemoveItem(sandPath2,4)
		wave.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name == "Right Leg" and hit.Parent ~= char then
			local bv = Instance.new("BodyPosition", hit)
			game.Debris:AddItem(bv,0.1)
			bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bv.Position = wave.CFrame*CFrame.new(0,20,0).p
			hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
			hit.Parent:FindFirstChild("Humanoid"):TakeDamage(49)
			wait(3/2)
			hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
		end
	end)
		RemoveItem(wave,0.6)
		num=num+chain
		big=big+0.5
		local trans = coroutine.wrap(function()
			for i = 1,10 do wait()
				wave.Transparency = wave.Transparency+0.1
				--wave.Size = wave.Size+Vector3.new(-0.1,-0.1,-0.1)
			end
			RemoveItem(wave,0)
		end)
		trans()
		end
		end)
		createWave()
		char.Humanoid.WalkSpeed = ws
		disable = false
		AnimDisable = false
	elseif key == "v" and movenum1[1]>=max then
		movenum1[1] = 0
	end
	end
end)
local sandEffect = coroutine.wrap(function()
			while true do wait(0.25)
			local createff = coroutine.wrap(function()
			local sand = Instance.new("Part",char)
			local sandpos = math.random(0.5,-0.5)
			sand.Name = "SandGourdEff"
			sand.BrickColor = BrickColor.new("Pastel brown")
			sand.Material = "Sand"
			sand.CanCollide = false
			sand.Anchored = true
			sand.Size = Vector3.new(0.2,0.2,0.2)
			sand.CFrame = o20.CFrame*CFrame.new(math.random(0.5,-0.5),math.random(0.5,-0.5),math.random(0.5,-0.5))
			sand.CFrame = sand.CFrame*CFrame.Angles(rd(math.random(1,360)),rd(math.random(1,360)),rd(math.random(1,360)))
			game.Debris:AddItem(sand,1)
			for i = 1,10 do wait()
				sand.Transparency = sand.Transparency+0.1
			end
			end)
			createff()
			end
		end)
		sandEffect()